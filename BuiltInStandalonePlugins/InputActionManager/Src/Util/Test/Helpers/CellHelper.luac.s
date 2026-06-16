PROTO_0:
        0 LOADK                            R4 K0 ["binding-cell-%*-%*-dropdown"]
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 3 1
        6 MOVE                             R3 R4
        7 LOADK                            R5 K2 ["%*--control"]
        8 MOVE                             R7 R3
        9 NAMECALL                         R5 R5 K1 ["format"]
       11 CALL                             R5 2 1
       12 MOVE                             R4 R5
       13 GETUPVAL                         R5 0
       14 MOVE                             R6 R0
       15 MOVE                             R7 R4
       16 CALL                             R5 2 1
       17 LOADK                            R9 K3 ["Dropdown control '%*' not found from binding root"]
       18 MOVE                             R11 R4
       19 NAMECALL                         R9 R9 K1 ["format"]
       21 CALL                             R9 2 1
       22 MOVE                             R8 R9
       23 FASTCALL2                        ASSERT R5 R8 ; [+4]
       25 MOVE                             R7 R5
       26 GETIMPORT                        R6 K5 [assert]
       28 CALL                             R6 2 0
       29 LOADK                            R8 K6 ["Text"]
       30 LOADB                            R9 1
       31 NAMECALL                         R6 R5 K7 ["FindFirstChild"]
       33 CALL                             R6 3 1
       34 LOADK                            R10 K8 ["No label text found under '%*'"]
       35 MOVE                             R12 R4
       36 NAMECALL                         R10 R10 K1 ["format"]
       38 CALL                             R10 2 1
       39 MOVE                             R9 R10
       40 FASTCALL2                        ASSERT R6 R9 ; [+4]
       42 MOVE                             R8 R6
       43 GETIMPORT                        R7 K5 [assert]
       45 CALL                             R7 2 0
       46 GETIMPORT                        R7 K11 [Enum.KeyCode]
       48 GETTABLEKS                       R9 R6 K6 ["Text"]
       50 NAMECALL                         R7 R7 K12 ["FromName"]
       52 CALL                             R7 2 1
       53 LOADK                            R11 K13 ["Invalid key code name: '%*'"]
       54 GETTABLEKS                       R13 R6 K6 ["Text"]
       56 NAMECALL                         R11 R11 K1 ["format"]
       58 CALL                             R11 2 1
       59 MOVE                             R10 R11
       60 FASTCALL2                        ASSERT R7 R10 ; [+4]
       62 MOVE                             R9 R7
       63 GETIMPORT                        R8 K5 [assert]
       65 CALL                             R8 2 0
       66 RETURN                           R7 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["binding-cell-keyCode-Touch-selector"]
        3 CALL                             R1 2 1
        4 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K1 ["UIButton cell 'binding-cell-keyCode-Touch-selector' not found from binding root"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 LOADK                            R4 K4 ["Text"]
       12 LOADB                            R5 1
       13 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       15 CALL                             R2 3 1
       16 MOVE                             R4 R2
       17 JUMPIFNOT                        R4 ; [+4]
       18 LOADK                            R6 K6 ["TextLabel"]
       19 NAMECALL                         R4 R2 K7 ["IsA"]
       21 CALL                             R4 2 1
       22 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       24 LOADK                            R5 K8 ["No label text found under 'binding-cell-keyCode-Touch-selector'"]
       25 GETIMPORT                        R3 K3 [assert]
       27 CALL                             R3 2 0
       28 GETTABLEKS                       R3 R2 K4 ["Text"]
       30 RETURN                           R3 1

PROTO_2:
        0 LOADK                            R5 K0 ["binding-cell-%*-%*-dropdown"]
        1 MOVE                             R7 R1
        2 MOVE                             R8 R2
        3 NAMECALL                         R5 R5 K1 ["format"]
        5 CALL                             R5 3 1
        6 MOVE                             R4 R5
        7 GETUPVAL                         R5 0
        8 MOVE                             R6 R0
        9 MOVE                             R7 R4
       10 CALL                             R5 2 1
       11 LOADK                            R9 K2 ["Binding cell '%*' not found from binding root"]
       12 MOVE                             R11 R4
       13 NAMECALL                         R9 R9 K1 ["format"]
       15 CALL                             R9 2 1
       16 MOVE                             R8 R9
       17 FASTCALL2                        ASSERT R5 R8 ; [+4]
       19 MOVE                             R7 R5
       20 GETIMPORT                        R6 K4 [assert]
       22 CALL                             R6 2 0
       23 LOADK                            R7 K5 ["%*--control"]
       24 MOVE                             R9 R4
       25 NAMECALL                         R7 R7 K1 ["format"]
       27 CALL                             R7 2 1
       28 MOVE                             R6 R7
       29 GETUPVAL                         R7 1
       30 MOVE                             R8 R5
       31 MOVE                             R9 R6
       32 CALL                             R7 2 1
       33 LOADK                            R11 K6 ["Dropdown control '%*' not found from binding root"]
       34 MOVE                             R13 R6
       35 NAMECALL                         R11 R11 K1 ["format"]
       37 CALL                             R11 2 1
       38 MOVE                             R10 R11
       39 FASTCALL2                        ASSERT R7 R10 ; [+4]
       41 MOVE                             R9 R7
       42 GETIMPORT                        R8 K4 [assert]
       44 CALL                             R8 2 0
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R8 R8 K7 ["click"]
       48 MOVE                             R9 R7
       49 CALL                             R8 1 0
       50 GETUPVAL                         R8 3
       51 CALL                             R8 0 0
       52 GETUPVAL                         R8 4
       53 CALL                             R8 0 0
       54 GETUPVAL                         R8 3
       55 CALL                             R8 0 0
       56 LOADK                            R9 K8 ["%*--menu"]
       57 MOVE                             R11 R4
       58 NAMECALL                         R9 R9 K1 ["format"]
       60 CALL                             R9 2 1
       61 MOVE                             R8 R9
       62 GETUPVAL                         R9 5
       63 GETUPVAL                         R10 6
       64 MOVE                             R11 R8
       65 CALL                             R9 2 1
       66 LOADNIL                          R10
       67 MOVE                             R11 R9
       68 LOADNIL                          R12
       69 LOADNIL                          R13
       70 FORGPREP                         R11
       71 GETTABLEKS                       R16 R15 K9 ["AbsolutePosition"]
       73 GETTABLEKS                       R16 R16 K10 ["X"]
       75 JUMPIFEQKN                       R16 K11 [0] ; [+9]
       77 GETTABLEKS                       R16 R15 K9 ["AbsolutePosition"]
       79 GETTABLEKS                       R16 R16 K12 ["Y"]
       81 JUMPIFEQKN                       R16 K11 [0] ; [+3]
       83 MOVE                             R10 R15
       84 JUMP                             ; [+2]
       85 FORGLOOP                         R11 2 ; [-15]
       87 LOADK                            R14 K13 ["Dropdown menu '%*' not found from binding root"]
       88 MOVE                             R16 R8
       89 NAMECALL                         R14 R14 K1 ["format"]
       91 CALL                             R14 2 1
       92 MOVE                             R13 R14
       93 FASTCALL2                        ASSERT R10 R13 ; [+4]
       95 MOVE                             R12 R10
       96 GETIMPORT                        R11 K4 [assert]
       98 CALL                             R11 2 0
       99 LOADK                            R13 K14 ["ScrollingFrame"]
      100 LOADB                            R14 1
      101 NAMECALL                         R11 R10 K15 ["FindFirstChildWhichIsA"]
      103 CALL                             R11 3 1
      104 LOADK                            R15 K16 ["ScrollingFrame not found under '%*'"]
      105 MOVE                             R17 R8
      106 NAMECALL                         R15 R15 K1 ["format"]
      108 CALL                             R15 2 1
      109 MOVE                             R14 R15
      110 FASTCALL2                        ASSERT R11 R14 ; [+4]
      112 MOVE                             R13 R11
      113 GETIMPORT                        R12 K4 [assert]
      115 CALL                             R12 2 0
      116 GETIMPORT                        R13 K20 [Enum.KeyCode.Unknown]
      118 JUMPIFNOTEQ                      R3 R13 ; [+3]
      120 LOADK                            R12 K21 ["None"]
      121 JUMP                             ; [+2]
      122 GETTABLEKS                       R12 R3 K22 ["Name"]
      124 GETUPVAL                         R13 7
      125 MOVE                             R14 R10
      126 MOVE                             R15 R12
      127 CALL                             R13 2 1
      128 LOADK                            R16 K23 ["GuiButton"]
      129 NAMECALL                         R14 R13 K24 ["FindFirstAncestorWhichIsA"]
      131 CALL                             R14 2 1
      132 LOADK                            R18 K25 ["Button not found under '%*'"]
      133 MOVE                             R20 R8
      134 NAMECALL                         R18 R18 K1 ["format"]
      136 CALL                             R18 2 1
      137 MOVE                             R17 R18
      138 FASTCALL2                        ASSERT R14 R17 ; [+4]
      140 MOVE                             R16 R14
      141 GETIMPORT                        R15 K4 [assert]
      143 CALL                             R15 2 0
      144 GETTABLEKS                       R16 R14 K9 ["AbsolutePosition"]
      146 GETTABLEKS                       R17 R11 K9 ["AbsolutePosition"]
      148 SUB                              R15 R16 R17
      149 GETIMPORT                        R16 K28 [Vector2.new]
      151 LOADN                            R17 0
      152 GETTABLEKS                       R18 R15 K12 ["Y"]
      154 CALL                             R16 2 1
      155 SETTABLEKS                       R16 R11 K29 ["CanvasPosition"]
      157 GETUPVAL                         R17 3
      158 CALL                             R17 0 0
      159 SETTABLEKS                       R16 R11 K29 ["CanvasPosition"]
      161 GETUPVAL                         R17 3
      162 CALL                             R17 0 0
      163 SETTABLEKS                       R16 R11 K29 ["CanvasPosition"]
      165 GETUPVAL                         R17 3
      166 CALL                             R17 0 0
      167 GETUPVAL                         R17 2
      168 GETTABLEKS                       R17 R17 K7 ["click"]
      170 MOVE                             R18 R14
      171 CALL                             R17 1 0
      172 GETUPVAL                         R17 3
      173 CALL                             R17 0 0
      174 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["binding-cell-keyCode-Touch-selector"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["Binding cell 'binding-cell-keyCode-Touch-selector' not found from binding root"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 1
       12 CALL                             R3 0 0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["click"]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 1
       19 CALL                             R3 0 0
       20 GETUPVAL                         R3 3
       21 NEWTABLE                         R5 0 1
       23 MOVE                             R6 R1
       24 SETLIST                          R5 R6 1 [1]
       26 NAMECALL                         R3 R3 K5 ["Set"]
       28 CALL                             R3 2 0
       29 GETUPVAL                         R3 1
       30 CALL                             R3 0 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mouseEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["binding-cell-keyCode-Touch-selector"]
        3 CALL                             R1 2 1
        4 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K1 ["UIButton cell 'binding-cell-keyCode-Touch-selector' not found from binding root"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 1
       12 CALL                             R2 0 0
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 0
       15 GETUPVAL                         R2 3
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 2
       21 CALL                             R2 0 0
       22 GETUPVAL                         R2 5
       23 MOVE                             R3 R0
       24 LOADK                            R4 K4 ["remove-button"]
       25 CALL                             R2 2 1
       26 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       28 MOVE                             R4 R2
       29 LOADK                            R5 K5 ["Remove button not found"]
       30 GETIMPORT                        R3 K3 [assert]
       32 CALL                             R3 2 0
       33 GETUPVAL                         R3 3
       34 NEWCLOSURE                       R4 P1
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R2
       37 CALL                             R3 1 0
       38 GETUPVAL                         R3 2
       39 CALL                             R3 0 0
       40 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mouseEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        2 MOVE                             R5 R1
        3 LOADK                            R6 K0 ["property cell element is required"]
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 2 0
        7 GETUPVAL                         R4 0
        8 MOVE                             R5 R1
        9 LOADK                            R6 K3 ["status"]
       10 CALL                             R4 2 1
       11 FASTCALL2K                       ASSERT R4 K4 ; [+5]
       13 MOVE                             R6 R4
       14 LOADK                            R7 K4 ["Status anchor not found in property cell"]
       15 GETIMPORT                        R5 K2 [assert]
       17 CALL                             R5 2 0
       18 GETUPVAL                         R5 1
       19 CALL                             R5 0 0
       20 GETUPVAL                         R5 2
       21 CALL                             R5 0 0
       22 GETUPVAL                         R5 3
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R4
       26 CALL                             R5 1 0
       27 GETUPVAL                         R5 2
       28 CALL                             R5 0 0
       29 GETUPVAL                         R5 1
       30 CALL                             R5 0 0
       31 GETUPVAL                         R5 2
       32 CALL                             R5 0 0
       33 GETUPVAL                         R5 5
       34 MOVE                             R6 R2
       35 MOVE                             R7 R3
       36 CALL                             R5 2 1
       37 GETUPVAL                         R9 6
       38 MOVE                             R10 R0
       39 GETTABLEKS                       R11 R5 K5 ["Title"]
       41 CALL                             R9 2 1
       42 LENGTH                           R8 R9
       43 LOADN                            R9 0
       44 JUMPIFLT                         R9 R8 ; [+2]
       46 LOADB                            R7 0 +1
       47 LOADB                            R7 1
       48 LOADK                            R9 K6 ["Status title '%*' not found"]
       49 GETTABLEKS                       R11 R5 K5 ["Title"]
       51 NAMECALL                         R9 R9 K7 ["format"]
       53 CALL                             R9 2 1
       54 MOVE                             R8 R9
       55 FASTCALL2                        ASSERT R7 R8 ; [+3]
       57 GETIMPORT                        R6 K2 [assert]
       59 CALL                             R6 2 0
       60 GETUPVAL                         R9 6
       61 MOVE                             R10 R0
       62 GETTABLEKS                       R11 R5 K8 ["Message"]
       64 CALL                             R9 2 1
       65 LENGTH                           R8 R9
       66 LOADN                            R9 0
       67 JUMPIFLT                         R9 R8 ; [+2]
       69 LOADB                            R7 0 +1
       70 LOADB                            R7 1
       71 LOADK                            R9 K9 ["Status message '%*' not found"]
       72 GETTABLEKS                       R11 R5 K8 ["Message"]
       74 NAMECALL                         R9 R9 K7 ["format"]
       76 CALL                             R9 2 1
       77 MOVE                             R8 R9
       78 FASTCALL2                        ASSERT R7 R8 ; [+3]
       80 GETIMPORT                        R6 K2 [assert]
       82 CALL                             R6 2 0
       83 RETURN                           R0 0

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
       28 GETTABLEKS                       R5 R2 K11 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["Dev"]
       32 GETTABLEKS                       R5 R5 K14 ["ReactTestingLibrary"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R2 K15 ["Src"]
       39 GETTABLEKS                       R6 R6 K16 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R2 K15 ["Src"]
       46 GETTABLEKS                       R7 R7 K17 ["Util"]
       48 GETTABLEKS                       R7 R7 K18 ["Binding"]
       50 GETTABLEKS                       R7 R7 K19 ["createStatusEntry"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K10 [require]
       55 GETIMPORT                        R8 K6 [script]
       57 GETTABLEKS                       R8 R8 K20 ["Parent"]
       59 GETTABLEKS                       R8 R8 K21 ["TestHelper"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R7 K22 ["awaitDeferAsync"]
       64 GETTABLEKS                       R9 R7 K23 ["updateStyling"]
       66 GETTABLEKS                       R10 R4 K24 ["act"]
       68 GETTABLEKS                       R11 R4 K25 ["fireEvent"]
       70 GETTABLEKS                       R12 R4 K26 ["getByTestId"]
       72 GETTABLEKS                       R13 R4 K27 ["getByText"]
       74 GETTABLEKS                       R14 R4 K28 ["getAllByText"]
       76 GETTABLEKS                       R15 R4 K29 ["queryByTestId"]
       78 GETTABLEKS                       R16 R4 K30 ["queryAllByTestId"]
       80 NEWTABLE                         R17 8 0
       82 DUPCLOSURE                       R18 K31 [PROTO_0]
       83 CAPTURE                          VAL R15
       84 SETTABLEKS                       R18 R17 K32 ["GetDisplayedKeycode"]
       86 DUPCLOSURE                       R18 K33 [PROTO_1]
       87 CAPTURE                          VAL R15
       88 SETTABLEKS                       R18 R17 K34 ["GetDisplayedButton"]
       90 DUPCLOSURE                       R18 K35 [PROTO_2]
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R13
       99 SETTABLEKS                       R18 R17 K36 ["ChangeProperty"]
      101 DUPCLOSURE                       R18 K37 [PROTO_3]
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R1
      106 SETTABLEKS                       R18 R17 K38 ["ChangeButton"]
      108 DUPCLOSURE                       R18 K39 [PROTO_6]
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R12
      115 SETTABLEKS                       R18 R17 K40 ["DeleteButton"]
      117 DUPCLOSURE                       R18 K41 [PROTO_8]
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R14
      125 SETTABLEKS                       R18 R17 K42 ["CheckStatus"]
      127 RETURN                           R17 1
