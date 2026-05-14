PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R5 K0 ["action-%*"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 CALL                             R2 2 1
        9 LOADK                            R6 K2 ["Action '$%*' not found"]
       10 MOVE                             R8 R1
       11 NAMECALL                         R6 R6 K1 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 FASTCALL2                        ASSERT R2 R5 ; [+4]
       17 MOVE                             R4 R2
       18 GETIMPORT                        R3 K4 [assert]
       20 CALL                             R3 2 0
       21 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R5 K0 ["key-code-binding-%*"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 CALL                             R2 2 1
        9 LOADK                            R6 K2 ["KeyCodeBinding at index %* not found"]
       10 MOVE                             R8 R1
       11 NAMECALL                         R6 R6 K1 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 FASTCALL2                        ASSERT R2 R5 ; [+4]
       17 MOVE                             R4 R2
       18 GETIMPORT                        R3 K4 [assert]
       20 CALL                             R3 2 0
       21 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R5 K0 ["compound-direction-binding-%*"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 CALL                             R2 2 1
        9 LOADK                            R6 K2 ["CompoundDirectionBinding at index %* not found"]
       10 MOVE                             R8 R1
       11 NAMECALL                         R6 R6 K1 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 FASTCALL2                        ASSERT R2 R5 ; [+4]
       17 MOVE                             R4 R2
       18 GETIMPORT                        R3 K4 [assert]
       20 CALL                             R3 2 0
       21 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R4 K0 ["binding-cell-%*-%*"]
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

PROTO_4:
        0 LOADK                            R5 K0 ["binding-cell-%*-%*"]
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
       62 GETUPVAL                         R9 0
       63 GETUPVAL                         R10 5
       64 MOVE                             R11 R8
       65 CALL                             R9 2 1
       66 LOADK                            R13 K9 ["Dropdown menu '%*' not found from binding root"]
       67 MOVE                             R15 R8
       68 NAMECALL                         R13 R13 K1 ["format"]
       70 CALL                             R13 2 1
       71 MOVE                             R12 R13
       72 FASTCALL2                        ASSERT R9 R12 ; [+4]
       74 MOVE                             R11 R9
       75 GETIMPORT                        R10 K4 [assert]
       77 CALL                             R10 2 0
       78 LOADK                            R12 K10 ["ScrollingFrame"]
       79 LOADB                            R13 1
       80 NAMECALL                         R10 R9 K11 ["FindFirstChildWhichIsA"]
       82 CALL                             R10 3 1
       83 LOADK                            R14 K12 ["ScrollingFrame not found under '%*'"]
       84 MOVE                             R16 R8
       85 NAMECALL                         R14 R14 K1 ["format"]
       87 CALL                             R14 2 1
       88 MOVE                             R13 R14
       89 FASTCALL2                        ASSERT R10 R13 ; [+4]
       91 MOVE                             R12 R10
       92 GETIMPORT                        R11 K4 [assert]
       94 CALL                             R11 2 0
       95 GETIMPORT                        R12 K16 [Enum.KeyCode.Unknown]
       97 JUMPIFNOTEQ                      R3 R12 ; [+3]
       99 LOADK                            R11 K17 ["None"]
      100 JUMP                             ; [+2]
      101 GETTABLEKS                       R11 R3 K18 ["Name"]
      103 GETUPVAL                         R12 6
      104 MOVE                             R13 R9
      105 MOVE                             R14 R11
      106 CALL                             R12 2 1
      107 LOADK                            R15 K19 ["GuiButton"]
      108 NAMECALL                         R13 R12 K20 ["FindFirstAncestorWhichIsA"]
      110 CALL                             R13 2 1
      111 LOADK                            R17 K21 ["Button not found under '%*'"]
      112 MOVE                             R19 R8
      113 NAMECALL                         R17 R17 K1 ["format"]
      115 CALL                             R17 2 1
      116 MOVE                             R16 R17
      117 FASTCALL2                        ASSERT R13 R16 ; [+4]
      119 MOVE                             R15 R13
      120 GETIMPORT                        R14 K4 [assert]
      122 CALL                             R14 2 0
      123 GETTABLEKS                       R15 R13 K22 ["AbsolutePosition"]
      125 GETTABLEKS                       R16 R10 K22 ["AbsolutePosition"]
      127 SUB                              R14 R15 R16
      128 GETIMPORT                        R15 K25 [Vector2.new]
      130 LOADN                            R16 0
      131 GETTABLEKS                       R17 R14 K26 ["Y"]
      133 CALL                             R15 2 1
      134 SETTABLEKS                       R15 R10 K27 ["CanvasPosition"]
      136 GETUPVAL                         R16 3
      137 CALL                             R16 0 0
      138 SETTABLEKS                       R15 R10 K27 ["CanvasPosition"]
      140 GETUPVAL                         R16 3
      141 CALL                             R16 0 0
      142 SETTABLEKS                       R15 R10 K27 ["CanvasPosition"]
      144 GETUPVAL                         R16 3
      145 CALL                             R16 0 0
      146 GETUPVAL                         R16 2
      147 GETTABLEKS                       R16 R16 K7 ["click"]
      149 MOVE                             R17 R13
      150 CALL                             R16 1 0
      151 GETUPVAL                         R16 3
      152 CALL                             R16 0 0
      153 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Dev"]
       26 GETTABLEKS                       R4 R4 K13 ["ReactTestingLibrary"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K14 ["Src"]
       33 GETTABLEKS                       R5 R5 K15 ["Types"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETIMPORT                        R6 K5 [script]
       40 GETTABLEKS                       R6 R6 K16 ["Parent"]
       42 GETTABLEKS                       R6 R6 K17 ["TestHelper"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R6 R5 K18 ["awaitDeferAsync"]
       47 GETTABLEKS                       R7 R5 K19 ["updateStyling"]
       49 GETTABLEKS                       R8 R3 K20 ["fireEvent"]
       51 GETTABLEKS                       R9 R3 K21 ["getByTestId"]
       53 GETTABLEKS                       R10 R3 K22 ["getByText"]
       55 GETTABLEKS                       R11 R3 K23 ["queryByTestId"]
       57 NEWTABLE                         R12 8 0
       59 DUPCLOSURE                       R13 K24 [PROTO_0]
       60 CAPTURE                          VAL R11
       61 SETTABLEKS                       R13 R12 K25 ["GetAction"]
       63 DUPCLOSURE                       R13 K26 [PROTO_1]
       64 CAPTURE                          VAL R11
       65 SETTABLEKS                       R13 R12 K27 ["GetKeyBind"]
       67 DUPCLOSURE                       R13 K28 [PROTO_2]
       68 CAPTURE                          VAL R11
       69 SETTABLEKS                       R13 R12 K29 ["GetCompoundDirection"]
       71 DUPCLOSURE                       R13 K30 [PROTO_3]
       72 CAPTURE                          VAL R11
       73 SETTABLEKS                       R13 R12 K31 ["GetDisplayedKeyCode"]
       75 DUPCLOSURE                       R13 K32 [PROTO_4]
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R10
       83 SETTABLEKS                       R13 R12 K33 ["ChangeProperty"]
       85 RETURN                           R12 1
