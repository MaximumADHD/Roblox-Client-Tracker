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
       16 CALL                             R5 2 1
       17 LOADK                            R9 K3 ["No label text found matching test id '%*'"]
       18 MOVE                             R11 R4
       19 NAMECALL                         R9 R9 K1 ["format"]
       21 CALL                             R9 2 1
       22 MOVE                             R8 R9
       23 FASTCALL2                        ASSERT R5 R8 ; [+4]
       25 MOVE                             R7 R5
       26 GETIMPORT                        R6 K5 [assert]
       28 CALL                             R6 2 0
       29 LOADK                            R9 K6 ["TextLabel"]
       30 NAMECALL                         R7 R5 K7 ["IsA"]
       32 CALL                             R7 2 1
       33 FASTCALL2K                       ASSERT R7 K8 ; [+4]
       35 LOADK                            R8 K8 ["Incorrect element type for Text"]
       36 GETIMPORT                        R6 K5 [assert]
       38 CALL                             R6 2 0
       39 GETIMPORT                        R6 K11 [Enum.KeyCode]
       41 GETTABLEKS                       R8 R5 K12 ["Text"]
       43 NAMECALL                         R6 R6 K13 ["FromName"]
       45 CALL                             R6 2 1
       46 LOADK                            R10 K14 ["Invalid key code name: '%*'"]
       47 GETTABLEKS                       R12 R5 K12 ["Text"]
       49 NAMECALL                         R10 R10 K1 ["format"]
       51 CALL                             R10 2 1
       52 MOVE                             R9 R10
       53 FASTCALL2                        ASSERT R6 R9 ; [+4]
       55 MOVE                             R8 R6
       56 GETIMPORT                        R7 K5 [assert]
       58 CALL                             R7 2 0
       59 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["keyCode-Touch-Instance"]
        3 CALL                             R1 2 1
        4 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K1 ["UIButton cell 'keyCode-Touch-Instance' not found from binding root"]
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
       24 LOADK                            R5 K8 ["No label text found under 'keyCode-Touch-Instance'"]
       25 GETIMPORT                        R3 K3 [assert]
       27 CALL                             R3 2 0
       28 GETTABLEKS                       R3 R2 K4 ["Text"]
       30 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K1 ["change"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R4 K0 ["%*--filter--internal-text-input--textbox"]
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 MOVE                             R3 R4
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R0
        8 MOVE                             R6 R3
        9 CALL                             R4 2 1
       10 LOADK                            R8 K2 ["Dropdown filter input '%*' not found from binding root"]
       11 MOVE                             R10 R3
       12 NAMECALL                         R8 R8 K1 ["format"]
       14 CALL                             R8 2 1
       15 MOVE                             R7 R8
       16 FASTCALL2                        ASSERT R4 R7 ; [+4]
       18 MOVE                             R6 R4
       19 GETIMPORT                        R5 K4 [assert]
       21 CALL                             R5 2 0
       22 GETUPVAL                         R5 1
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U2
       27 CALL                             R5 1 0
       28 GETUPVAL                         R5 3
       29 CALL                             R5 0 0
       30 RETURN                           R0 0

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
       16 CALL                             R7 2 1
       17 LOADK                            R11 K3 ["Dropdown control '%*' not found from binding root"]
       18 MOVE                             R13 R6
       19 NAMECALL                         R11 R11 K1 ["format"]
       21 CALL                             R11 2 1
       22 MOVE                             R10 R11
       23 FASTCALL2                        ASSERT R7 R10 ; [+4]
       25 MOVE                             R9 R7
       26 GETIMPORT                        R8 K5 [assert]
       28 CALL                             R8 2 0
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K6 ["click"]
       32 MOVE                             R9 R7
       33 CALL                             R8 1 0
       34 GETUPVAL                         R8 2
       35 CALL                             R8 0 0
       36 GETUPVAL                         R8 3
       37 CALL                             R8 0 0
       38 GETUPVAL                         R8 2
       39 CALL                             R8 0 0
       40 JUMPIFNOT                        R4 ; [+5]
       41 GETUPVAL                         R8 4
       42 MOVE                             R9 R0
       43 MOVE                             R10 R5
       44 MOVE                             R11 R4
       45 CALL                             R8 3 0
       46 LOADK                            R9 K7 ["%*--content"]
       47 MOVE                             R11 R5
       48 NAMECALL                         R9 R9 K1 ["format"]
       50 CALL                             R9 2 1
       51 MOVE                             R8 R9
       52 GETUPVAL                         R9 5
       53 GETUPVAL                         R10 6
       54 MOVE                             R11 R8
       55 CALL                             R9 2 1
       56 LOADNIL                          R10
       57 MOVE                             R11 R9
       58 LOADNIL                          R12
       59 LOADNIL                          R13
       60 FORGPREP                         R11
       61 GETTABLEKS                       R16 R15 K8 ["AbsolutePosition"]
       63 GETTABLEKS                       R16 R16 K9 ["X"]
       65 JUMPIFEQKN                       R16 K10 [0] ; [+9]
       67 GETTABLEKS                       R16 R15 K8 ["AbsolutePosition"]
       69 GETTABLEKS                       R16 R16 K11 ["Y"]
       71 JUMPIFEQKN                       R16 K10 [0] ; [+3]
       73 MOVE                             R10 R15
       74 JUMP                             ; [+2]
       75 FORGLOOP                         R11 2 ; [-15]
       77 LOADK                            R14 K12 ["Dropdown menu '%*' not found from binding root"]
       78 MOVE                             R16 R8
       79 NAMECALL                         R14 R14 K1 ["format"]
       81 CALL                             R14 2 1
       82 MOVE                             R13 R14
       83 FASTCALL2                        ASSERT R10 R13 ; [+4]
       85 MOVE                             R12 R10
       86 GETIMPORT                        R11 K5 [assert]
       88 CALL                             R11 2 0
       89 LOADK                            R13 K13 ["ScrollingFrame"]
       90 LOADB                            R14 1
       91 NAMECALL                         R11 R10 K14 ["FindFirstChildWhichIsA"]
       93 CALL                             R11 3 1
       94 LOADK                            R15 K15 ["ScrollingFrame not found under '%*'"]
       95 MOVE                             R17 R8
       96 NAMECALL                         R15 R15 K1 ["format"]
       98 CALL                             R15 2 1
       99 MOVE                             R14 R15
      100 FASTCALL2                        ASSERT R11 R14 ; [+4]
      102 MOVE                             R13 R11
      103 GETIMPORT                        R12 K5 [assert]
      105 CALL                             R12 2 0
      106 GETIMPORT                        R13 K19 [Enum.KeyCode.Unknown]
      108 JUMPIFNOTEQ                      R3 R13 ; [+3]
      110 LOADK                            R12 K20 ["None"]
      111 JUMP                             ; [+2]
      112 GETTABLEKS                       R12 R3 K21 ["Name"]
      114 GETUPVAL                         R13 7
      115 MOVE                             R14 R10
      116 MOVE                             R15 R12
      117 CALL                             R13 2 1
      118 LOADK                            R16 K22 ["GuiButton"]
      119 NAMECALL                         R14 R13 K23 ["FindFirstAncestorWhichIsA"]
      121 CALL                             R14 2 1
      122 LOADK                            R18 K24 ["Button not found under '%*'"]
      123 MOVE                             R20 R8
      124 NAMECALL                         R18 R18 K1 ["format"]
      126 CALL                             R18 2 1
      127 MOVE                             R17 R18
      128 FASTCALL2                        ASSERT R14 R17 ; [+4]
      130 MOVE                             R16 R14
      131 GETIMPORT                        R15 K5 [assert]
      133 CALL                             R15 2 0
      134 GETTABLEKS                       R16 R14 K8 ["AbsolutePosition"]
      136 GETTABLEKS                       R17 R11 K8 ["AbsolutePosition"]
      138 SUB                              R15 R16 R17
      139 GETIMPORT                        R16 K27 [Vector2.new]
      141 LOADN                            R17 0
      142 GETTABLEKS                       R18 R15 K11 ["Y"]
      144 CALL                             R16 2 1
      145 SETTABLEKS                       R16 R11 K28 ["CanvasPosition"]
      147 GETUPVAL                         R17 2
      148 CALL                             R17 0 0
      149 SETTABLEKS                       R16 R11 K28 ["CanvasPosition"]
      151 GETUPVAL                         R17 2
      152 CALL                             R17 0 0
      153 SETTABLEKS                       R16 R11 K28 ["CanvasPosition"]
      155 GETUPVAL                         R17 2
      156 CALL                             R17 0 0
      157 GETUPVAL                         R17 1
      158 GETTABLEKS                       R17 R17 K6 ["click"]
      160 MOVE                             R18 R14
      161 CALL                             R17 1 0
      162 GETUPVAL                         R17 2
      163 CALL                             R17 0 0
      164 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["keyDown"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"key"}]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["key"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K3 ["keyUp"]
       12 GETUPVAL                         R1 1
       13 DUPTABLE                         R2 K2 [{"key"}]
       14 GETUPVAL                         R3 2
       15 SETTABLEKS                       R3 R2 K1 ["key"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R6 K0 ["%*-%*-Dropdown"]
        1 MOVE                             R8 R2
        2 MOVE                             R9 R3
        3 NAMECALL                         R6 R6 K1 ["format"]
        5 CALL                             R6 3 1
        6 MOVE                             R5 R6
        7 GETUPVAL                         R6 0
        8 MOVE                             R7 R0
        9 MOVE                             R8 R5
       10 CALL                             R6 2 1
       11 LOADK                            R10 K2 ["Dropdown cell '%*' not found from binding root"]
       12 MOVE                             R12 R5
       13 NAMECALL                         R10 R10 K1 ["format"]
       15 CALL                             R10 2 1
       16 MOVE                             R9 R10
       17 FASTCALL2                        ASSERT R6 R9 ; [+4]
       19 MOVE                             R8 R6
       20 GETIMPORT                        R7 K4 [assert]
       22 CALL                             R7 2 0
       23 GETUPVAL                         R7 1
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R6
       27 CALL                             R7 1 0
       28 GETUPVAL                         R7 3
       29 CALL                             R7 0 0
       30 GETUPVAL                         R7 4
       31 CALL                             R7 0 0
       32 GETUPVAL                         R7 3
       33 CALL                             R7 0 0
       34 GETUPVAL                         R7 5
       35 MOVE                             R8 R1
       36 LOADK                            R9 K5 ["root"]
       37 CALL                             R7 2 1
       38 FASTCALL2K                       ASSERT R7 K6 ; [+5]
       40 MOVE                             R9 R7
       41 LOADK                            R10 K6 ["Input Action Manager root not found"]
       42 GETIMPORT                        R8 K4 [assert]
       44 CALL                             R8 2 0
       45 GETUPVAL                         R8 1
       46 NEWCLOSURE                       R9 P1
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R4
       50 CALL                             R8 1 0
       51 GETUPVAL                         R8 3
       52 CALL                             R8 0 0
       53 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["keyCode-Touch-Instance"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["Binding cell 'keyCode-Touch-Instance' not found from binding root"]
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mouseEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["keyCode-Touch-Instance"]
        3 CALL                             R1 2 1
        4 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K1 ["UIButton cell 'keyCode-Touch-Instance' not found from binding root"]
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
       24 LOADK                            R4 K4 ["keyCode-Touch-Instance--remove"]
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mouseEnter"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        2 MOVE                             R6 R1
        3 LOADK                            R7 K0 ["property cell element is required"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R5 0
        8 MOVE                             R6 R1
        9 LOADK                            R7 K3 ["status"]
       10 CALL                             R5 2 1
       11 FASTCALL2K                       ASSERT R5 K4 ; [+5]
       13 MOVE                             R7 R5
       14 LOADK                            R8 K4 ["Status anchor not found in property cell"]
       15 GETIMPORT                        R6 K2 [assert]
       17 CALL                             R6 2 0
       18 GETUPVAL                         R6 1
       19 CALL                             R6 0 0
       20 GETUPVAL                         R6 2
       21 CALL                             R6 0 0
       22 GETUPVAL                         R6 3
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R5
       26 CALL                             R6 1 0
       27 GETUPVAL                         R6 2
       28 CALL                             R6 0 0
       29 GETUPVAL                         R6 1
       30 CALL                             R6 0 0
       31 GETUPVAL                         R6 2
       32 CALL                             R6 0 0
       33 GETUPVAL                         R6 5
       34 GETUPVAL                         R7 6
       35 MOVE                             R8 R2
       36 MOVE                             R9 R3
       37 MOVE                             R10 R4
       38 CALL                             R6 4 1
       39 GETUPVAL                         R10 7
       40 MOVE                             R11 R0
       41 GETTABLEKS                       R12 R6 K5 ["Title"]
       43 CALL                             R10 2 1
       44 LENGTH                           R9 R10
       45 LOADN                            R10 0
       46 JUMPIFLT                         R10 R9 ; [+2]
       48 LOADB                            R8 0 +1
       49 LOADB                            R8 1
       50 LOADK                            R10 K6 ["Status title '%*' not found"]
       51 GETTABLEKS                       R12 R6 K5 ["Title"]
       53 NAMECALL                         R10 R10 K7 ["format"]
       55 CALL                             R10 2 1
       56 MOVE                             R9 R10
       57 FASTCALL2                        ASSERT R8 R9 ; [+3]
       59 GETIMPORT                        R7 K2 [assert]
       61 CALL                             R7 2 0
       62 GETUPVAL                         R10 7
       63 MOVE                             R11 R0
       64 GETTABLEKS                       R12 R6 K8 ["Message"]
       66 CALL                             R10 2 1
       67 LENGTH                           R9 R10
       68 LOADN                            R10 0
       69 JUMPIFLT                         R10 R9 ; [+2]
       71 LOADB                            R8 0 +1
       72 LOADB                            R8 1
       73 LOADK                            R10 K9 ["Status message '%*' not found"]
       74 GETTABLEKS                       R12 R6 K8 ["Message"]
       76 NAMECALL                         R10 R10 K7 ["format"]
       78 CALL                             R10 2 1
       79 MOVE                             R9 R10
       80 FASTCALL2                        ASSERT R8 R9 ; [+3]
       82 GETIMPORT                        R7 K2 [assert]
       84 CALL                             R7 2 0
       85 RETURN                           R0 0

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
       44 GETTABLEKS                       R7 R2 K11 ["Packages"]
       46 GETTABLEKS                       R7 R7 K17 ["StudioFoundation"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R6 K18 ["Contexts"]
       51 GETTABLEKS                       R7 R7 K19 ["Localization"]
       53 GETTABLEKS                       R8 R2 K15 ["Src"]
       55 GETTABLEKS                       R8 R8 K20 ["Resources"]
       57 GETTABLEKS                       R8 R8 K19 ["Localization"]
       59 GETTABLEKS                       R8 R8 K21 ["SourceStrings"]
       61 GETTABLEKS                       R9 R2 K15 ["Src"]
       63 GETTABLEKS                       R9 R9 K20 ["Resources"]
       65 GETTABLEKS                       R9 R9 K19 ["Localization"]
       67 GETTABLEKS                       R9 R9 K22 ["LocalizedStrings"]
       69 GETIMPORT                        R10 K10 [require]
       71 GETTABLEKS                       R11 R2 K15 ["Src"]
       73 GETTABLEKS                       R11 R11 K23 ["Util"]
       75 GETTABLEKS                       R11 R11 K24 ["Binding"]
       77 GETTABLEKS                       R11 R11 K25 ["createStatusEntry"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K10 [require]
       82 GETIMPORT                        R12 K6 [script]
       84 GETTABLEKS                       R12 R12 K26 ["Parent"]
       86 GETTABLEKS                       R12 R12 K27 ["TestHelper"]
       88 CALL                             R11 1 1
       89 GETTABLEKS                       R12 R11 K28 ["awaitDeferAsync"]
       91 GETTABLEKS                       R13 R11 K29 ["updateStyling"]
       93 GETTABLEKS                       R14 R4 K30 ["act"]
       95 GETTABLEKS                       R15 R4 K31 ["fireEvent"]
       97 GETTABLEKS                       R16 R4 K32 ["getByTestId"]
       99 GETTABLEKS                       R17 R4 K33 ["getByText"]
      101 GETTABLEKS                       R18 R4 K34 ["getAllByText"]
      103 GETTABLEKS                       R19 R4 K35 ["queryByTestId"]
      105 GETTABLEKS                       R20 R4 K36 ["queryAllByTestId"]
      107 GETTABLEKS                       R21 R7 K19 ["Localization"]
      109 GETTABLEKS                       R21 R21 K37 ["new"]
      111 DUPTABLE                         R22 K42 [{"stringResourceTable", "translationResourceTable", "pluginName", "overrideLocaleId"}]
      112 SETTABLEKS                       R8 R22 K38 ["stringResourceTable"]
      114 SETTABLEKS                       R9 R22 K39 ["translationResourceTable"]
      116 LOADK                            R23 K7 ["InputActionManager"]
      117 SETTABLEKS                       R23 R22 K40 ["pluginName"]
      119 LOADK                            R23 K43 ["en-us"]
      120 SETTABLEKS                       R23 R22 K41 ["overrideLocaleId"]
      122 CALL                             R21 1 1
      123 NEWTABLE                         R22 8 0
      125 DUPCLOSURE                       R23 K44 [PROTO_0]
      126 CAPTURE                          VAL R19
      127 SETTABLEKS                       R23 R22 K45 ["GetDisplayedKeycode"]
      129 DUPCLOSURE                       R23 K46 [PROTO_1]
      130 CAPTURE                          VAL R19
      131 SETTABLEKS                       R23 R22 K47 ["GetDisplayedButton"]
      133 DUPCLOSURE                       R23 K48 [PROTO_3]
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R12
      138 DUPCLOSURE                       R24 K49 [PROTO_4]
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R23
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R17
      147 SETTABLEKS                       R24 R22 K50 ["ChangeProperty"]
      149 DUPCLOSURE                       R24 K51 [PROTO_7]
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R19
      156 SETTABLEKS                       R24 R22 K52 ["CaptureKeycode"]
      158 DUPCLOSURE                       R24 K53 [PROTO_8]
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R1
      163 SETTABLEKS                       R24 R22 K54 ["ChangeButton"]
      165 DUPCLOSURE                       R24 K55 [PROTO_11]
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R14
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R16
      172 SETTABLEKS                       R24 R22 K56 ["DeleteButton"]
      174 DUPCLOSURE                       R24 K57 [PROTO_13]
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R21
      182 CAPTURE                          VAL R18
      183 SETTABLEKS                       R24 R22 K58 ["CheckStatus"]
      185 RETURN                           R22 1
