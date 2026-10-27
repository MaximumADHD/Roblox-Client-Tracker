PROTO_0:
        0 LOADK                            R3 K0 ["%*-%*-Dropdown"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 LOADK                            R4 K2 ["%*--text"]
        7 MOVE                             R6 R3
        8 NAMECALL                         R4 R4 K1 ["format"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 0
       12 MOVE                             R6 R0
       13 MOVE                             R7 R4
       14 LOADK                            R8 K3 ["No label text found matching test id '%*'"]
       15 MOVE                             R10 R4
       16 NAMECALL                         R8 R8 K1 ["format"]
       18 CALL                             R8 2 1
       19 CALL                             R5 3 1
       20 LOADK                            R9 K4 ["TextLabel"]
       21 NAMECALL                         R7 R5 K5 ["IsA"]
       23 CALL                             R7 2 1
       24 FASTCALL2K                       ASSERT R7 K6 ; [+4]
       26 LOADK                            R8 K6 ["Incorrect element type for Text"]
       27 GETIMPORT                        R6 K8 [assert]
       29 CALL                             R6 2 0
       30 GETIMPORT                        R6 K11 [Enum.KeyCode]
       32 GETTABLEKS                       R8 R5 K12 ["Text"]
       34 NAMECALL                         R6 R6 K13 ["FromName"]
       36 CALL                             R6 2 1
       37 LOADK                            R9 K14 ["Invalid key code name: '%*'"]
       38 GETTABLEKS                       R11 R5 K12 ["Text"]
       40 NAMECALL                         R9 R9 K1 ["format"]
       42 CALL                             R9 2 1
       43 FASTCALL2                        ASSERT R6 R9 ; [+4]
       45 MOVE                             R8 R6
       46 GETIMPORT                        R7 K8 [assert]
       48 CALL                             R7 2 0
       49 RETURN                           R6 1

PROTO_1:
        0 LOADK                            R2 K0 ["%*-Touch-Instance"]
        1 ORK                              R4 R1 K1 ["keyCode"]
        2 NAMECALL                         R2 R2 K2 ["format"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 MOVE                             R5 R2
        8 LOADK                            R6 K3 ["UIButton cell '%*' not found from binding root"]
        9 MOVE                             R8 R2
       10 NAMECALL                         R6 R6 K2 ["format"]
       12 CALL                             R6 2 1
       13 CALL                             R3 3 1
       14 LOADK                            R6 K4 ["Text"]
       15 LOADB                            R7 1
       16 NAMECALL                         R4 R3 K5 ["FindFirstChild"]
       18 CALL                             R4 3 1
       19 MOVE                             R6 R4
       20 JUMPIFNOT                        R6 ; [+4]
       21 LOADK                            R8 K6 ["TextLabel"]
       22 NAMECALL                         R6 R4 K7 ["IsA"]
       24 CALL                             R6 2 1
       25 LOADK                            R7 K8 ["No label text found under '%*'"]
       26 MOVE                             R9 R2
       27 NAMECALL                         R7 R7 K2 ["format"]
       29 CALL                             R7 2 1
       30 FASTCALL2                        ASSERT R6 R7 ; [+3]
       32 GETIMPORT                        R5 K10 [assert]
       34 CALL                             R5 2 0
       35 GETTABLEKS                       R5 R4 K4 ["Text"]
       37 RETURN                           R5 1

PROTO_2:
        0 LOADK                            R3 K0 ["%*-%*-Dropdown--text"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R0
        8 MOVE                             R6 R3
        9 LOADK                            R7 K2 ["No label text found matching test id '%*'"]
       10 MOVE                             R9 R3
       11 NAMECALL                         R7 R7 K1 ["format"]
       13 CALL                             R7 2 1
       14 CALL                             R4 3 1
       15 LOADK                            R8 K3 ["TextLabel"]
       16 NAMECALL                         R6 R4 K4 ["IsA"]
       18 CALL                             R6 2 1
       19 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       21 LOADK                            R7 K5 ["Incorrect element type for Text"]
       22 GETIMPORT                        R5 K7 [assert]
       24 CALL                             R5 2 0
       25 GETTABLEKS                       R5 R4 K8 ["Text"]
       27 RETURN                           R5 1

PROTO_3:
        0 LOADK                            R3 K0 ["%*-%*-Dropdown"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R0
        8 MOVE                             R6 R3
        9 LOADK                            R7 K2 ["Cell '%*' not found from binding root"]
       10 MOVE                             R9 R3
       11 NAMECALL                         R7 R7 K1 ["format"]
       13 CALL                             R7 2 1
       14 CALL                             R4 3 1
       15 GETUPVAL                         R5 0
       16 MOVE                             R6 R4
       17 LOADK                            R7 K3 ["display-image"]
       18 LOADK                            R8 K4 ["Display image not found under '%*'"]
       19 MOVE                             R10 R3
       20 NAMECALL                         R8 R8 K1 ["format"]
       22 CALL                             R8 2 1
       23 CALL                             R5 3 1
       24 LOADK                            R9 K5 ["ImageLabel"]
       25 NAMECALL                         R7 R5 K6 ["IsA"]
       27 CALL                             R7 2 1
       28 FASTCALL2K                       ASSERT R7 K7 ; [+4]
       30 LOADK                            R8 K7 ["Incorrect element type for display image"]
       31 GETIMPORT                        R6 K9 [assert]
       33 CALL                             R6 2 0
       34 GETTABLEKS                       R6 R5 K10 ["Image"]
       36 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R3 K0 ["%*--filter--internal-text-input--textbox"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K1 ["format"]
        4 CALL                             R3 2 1
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R0
        7 MOVE                             R6 R3
        8 LOADK                            R7 K2 ["Dropdown filter input '%*' not found from binding root"]
        9 MOVE                             R9 R3
       10 NAMECALL                         R7 R7 K1 ["format"]
       12 CALL                             R7 2 1
       13 CALL                             R4 3 1
       14 GETUPVAL                         R5 1
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R2
       18 CALL                             R5 1 0
       19 GETUPVAL                         R5 2
       20 MOVE                             R6 R4
       21 CALL                             R5 1 0
       22 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R5 K0 ["%*-%*-Dropdown"]
        1 MOVE                             R7 R1
        2 MOVE                             R8 R2
        3 NAMECALL                         R5 R5 K1 ["format"]
        5 CALL                             R5 3 1
        6 LOADK                            R6 K2 ["%*--control"]
        7 MOVE                             R8 R5
        8 NAMECALL                         R6 R6 K1 ["format"]
       10 CALL                             R6 2 1
       11 GETUPVAL                         R7 0
       12 MOVE                             R8 R0
       13 MOVE                             R9 R6
       14 LOADK                            R10 K3 ["Dropdown control '%*' not found from binding root"]
       15 MOVE                             R12 R6
       16 NAMECALL                         R10 R10 K1 ["format"]
       18 CALL                             R10 2 1
       19 CALL                             R7 3 1
       20 GETUPVAL                         R8 1
       21 MOVE                             R9 R7
       22 CALL                             R8 1 0
       23 GETUPVAL                         R8 2
       24 CALL                             R8 0 0
       25 JUMPIFNOT                        R4 ; [+5]
       26 GETUPVAL                         R8 3
       27 MOVE                             R9 R0
       28 MOVE                             R10 R5
       29 MOVE                             R11 R4
       30 CALL                             R8 3 0
       31 LOADK                            R8 K4 ["%*--content"]
       32 MOVE                             R10 R5
       33 NAMECALL                         R8 R8 K1 ["format"]
       35 CALL                             R8 2 1
       36 GETUPVAL                         R9 4
       37 GETUPVAL                         R10 5
       38 MOVE                             R11 R8
       39 CALL                             R9 2 1
       40 LOADNIL                          R10
       41 MOVE                             R11 R9
       42 LOADNIL                          R12
       43 LOADNIL                          R13
       44 FORGPREP                         R11
       45 GETTABLEKS                       R16 R15 K5 ["AbsolutePosition"]
       47 GETTABLEKS                       R16 R16 K6 ["X"]
       49 JUMPIFEQKN                       R16 K7 [0] ; [+9]
       51 GETTABLEKS                       R16 R15 K5 ["AbsolutePosition"]
       53 GETTABLEKS                       R16 R16 K8 ["Y"]
       55 JUMPIFEQKN                       R16 K7 [0] ; [+3]
       57 MOVE                             R10 R15
       58 JUMP                             ; [+2]
       59 FORGLOOP                         R11 2 ; [-15]
       61 LOADK                            R13 K9 ["Dropdown menu '%*' not found from binding root"]
       62 MOVE                             R15 R8
       63 NAMECALL                         R13 R13 K1 ["format"]
       65 CALL                             R13 2 1
       66 FASTCALL2                        ASSERT R10 R13 ; [+4]
       68 MOVE                             R12 R10
       69 GETIMPORT                        R11 K11 [assert]
       71 CALL                             R11 2 0
       72 LOADK                            R13 K12 ["ScrollingFrame"]
       73 LOADB                            R14 1
       74 NAMECALL                         R11 R10 K13 ["FindFirstChildWhichIsA"]
       76 CALL                             R11 3 1
       77 LOADK                            R14 K14 ["ScrollingFrame not found under '%*'"]
       78 MOVE                             R16 R8
       79 NAMECALL                         R14 R14 K1 ["format"]
       81 CALL                             R14 2 1
       82 FASTCALL2                        ASSERT R11 R14 ; [+4]
       84 MOVE                             R13 R11
       85 GETIMPORT                        R12 K11 [assert]
       87 CALL                             R12 2 0
       88 GETIMPORT                        R13 K18 [Enum.KeyCode.None]
       90 JUMPIFNOTEQ                      R3 R13 ; [+3]
       92 LOADK                            R12 K17 ["None"]
       93 JUMP                             ; [+2]
       94 GETTABLEKS                       R12 R3 K19 ["Name"]
       96 GETUPVAL                         R13 6
       97 MOVE                             R14 R10
       98 MOVE                             R15 R12
       99 CALL                             R13 2 1
      100 LOADK                            R16 K20 ["GuiButton"]
      101 NAMECALL                         R14 R13 K21 ["FindFirstAncestorWhichIsA"]
      103 CALL                             R14 2 1
      104 LOADK                            R17 K22 ["Button not found under '%*'"]
      105 MOVE                             R19 R8
      106 NAMECALL                         R17 R17 K1 ["format"]
      108 CALL                             R17 2 1
      109 FASTCALL2                        ASSERT R14 R17 ; [+4]
      111 MOVE                             R16 R14
      112 GETIMPORT                        R15 K11 [assert]
      114 CALL                             R15 2 0
      115 GETTABLEKS                       R16 R14 K5 ["AbsolutePosition"]
      117 GETTABLEKS                       R17 R11 K5 ["AbsolutePosition"]
      119 SUB                              R15 R16 R17
      120 GETIMPORT                        R16 K25 [Vector2.new]
      122 LOADN                            R17 0
      123 GETTABLEKS                       R18 R15 K8 ["Y"]
      125 CALL                             R16 2 1
      126 SETTABLEKS                       R16 R11 K26 ["CanvasPosition"]
      128 GETUPVAL                         R17 7
      129 CALL                             R17 0 0
      130 SETTABLEKS                       R16 R11 K26 ["CanvasPosition"]
      132 GETUPVAL                         R17 7
      133 CALL                             R17 0 0
      134 SETTABLEKS                       R16 R11 K26 ["CanvasPosition"]
      136 GETUPVAL                         R17 7
      137 CALL                             R17 0 0
      138 GETUPVAL                         R17 1
      139 MOVE                             R18 R14
      140 CALL                             R17 1 0
      141 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R3 K0 ["%*-Touch-Instance"]
        1 ORK                              R5 R2 K1 ["keyCode"]
        2 NAMECALL                         R3 R3 K2 ["format"]
        4 CALL                             R3 2 1
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R0
        7 MOVE                             R6 R3
        8 LOADK                            R7 K3 ["Binding cell '%*' not found from binding root"]
        9 MOVE                             R9 R3
       10 NAMECALL                         R7 R7 K2 ["format"]
       12 CALL                             R7 2 1
       13 CALL                             R4 3 1
       14 GETUPVAL                         R5 1
       15 MOVE                             R6 R4
       16 CALL                             R5 1 0
       17 GETUPVAL                         R5 2
       18 NEWTABLE                         R7 0 1
       20 MOVE                             R8 R1
       21 SETLIST                          R7 R8 1 [1]
       23 NAMECALL                         R5 R5 K4 ["Set"]
       25 CALL                             R5 2 0
       26 GETUPVAL                         R5 3
       27 CALL                             R5 0 0
       28 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R2 K0 ["%*-Touch-Instance"]
        1 ORK                              R4 R1 K1 ["keyCode"]
        2 NAMECALL                         R2 R2 K2 ["format"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 MOVE                             R5 R2
        8 LOADK                            R6 K3 ["UIButton cell '%*' not found from binding root"]
        9 MOVE                             R8 R2
       10 NAMECALL                         R6 R6 K2 ["format"]
       12 CALL                             R6 2 1
       13 CALL                             R3 3 1
       14 GETUPVAL                         R4 1
       15 CALL                             R4 0 0
       16 GETUPVAL                         R4 2
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 GETUPVAL                         R4 0
       20 MOVE                             R5 R0
       21 LOADK                            R6 K4 ["%*--remove"]
       22 MOVE                             R8 R2
       23 NAMECALL                         R6 R6 K2 ["format"]
       25 CALL                             R6 2 1
       26 LOADK                            R7 K5 ["Remove button not found"]
       27 CALL                             R4 3 1
       28 GETUPVAL                         R5 3
       29 MOVE                             R6 R4
       30 CALL                             R5 1 0
       31 RETURN                           R0 0

PROTO_9:
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
       29 LOADK                            R10 K6 ["Status title '%*' not found"]
       30 GETTABLEKS                       R12 R6 K5 ["Title"]
       32 NAMECALL                         R10 R10 K7 ["format"]
       34 CALL                             R10 2 1
       35 CALL                             R7 3 0
       36 GETUPVAL                         R7 5
       37 MOVE                             R8 R0
       38 GETTABLEKS                       R9 R6 K8 ["Message"]
       40 LOADK                            R10 K9 ["Status message '%*' not found"]
       41 GETTABLEKS                       R12 R6 K8 ["Message"]
       43 NAMECALL                         R10 R10 K7 ["format"]
       45 CALL                             R10 2 1
       46 CALL                             R7 3 0
       47 RETURN                           R0 0

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
      114 SETTABLEKS                       R23 R22 K44 ["getDisplayedKeycode"]
      116 DUPCLOSURE                       R23 K45 [PROTO_1]
      117 CAPTURE                          VAL R17
      118 SETTABLEKS                       R23 R22 K46 ["getDisplayedButton"]
      120 DUPCLOSURE                       R23 K47 [PROTO_2]
      121 CAPTURE                          VAL R17
      122 SETTABLEKS                       R23 R22 K48 ["getDisplayedText"]
      124 DUPCLOSURE                       R23 K49 [PROTO_3]
      125 CAPTURE                          VAL R17
      126 SETTABLEKS                       R23 R22 K50 ["getDisplayedImage"]
      128 DUPCLOSURE                       R23 K51 [PROTO_5]
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R15
      132 DUPCLOSURE                       R24 K52 [PROTO_6]
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R23
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R19
      140 CAPTURE                          VAL R12
      141 SETTABLEKS                       R24 R22 K53 ["changeProperty"]
      143 DUPCLOSURE                       R24 K54 [PROTO_7]
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R12
      148 SETTABLEKS                       R24 R22 K55 ["changeButton"]
      150 DUPCLOSURE                       R24 K56 [PROTO_8]
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R14
      155 SETTABLEKS                       R24 R22 K57 ["deleteButton"]
      157 DUPCLOSURE                       R24 K58 [PROTO_9]
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R20
      164 SETTABLEKS                       R24 R22 K59 ["checkStatus"]
      166 RETURN                           R22 1
