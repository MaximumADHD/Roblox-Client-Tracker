PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetDescendants"]
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 LOADK                            R8 K1 ["TextLabel"]
        6 NAMECALL                         R6 R5 K2 ["IsA"]
        8 CALL                             R6 2 1
        9 JUMPIF                           R6 ; [+5]
       10 LOADK                            R8 K3 ["TextButton"]
       11 NAMECALL                         R6 R5 K2 ["IsA"]
       13 CALL                             R6 2 1
       14 JUMPIFNOT                        R6 ; [+11]
       15 GETTABLEKS                       R6 R5 K4 ["Text"]
       17 JUMPIFNOT                        R6 ; [+8]
       18 MOVE                             R9 R0
       19 LOADN                            R10 1
       20 LOADB                            R11 1
       21 NAMECALL                         R7 R6 K5 ["find"]
       23 CALL                             R7 4 1
       24 JUMPIFNOT                        R7 ; [+1]
       25 RETURN                           R5 1
       26 FORGLOOP                         R1 2 ; [-22]
       28 LOADNIL                          R1
       29 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findTextInCoreGui"]
        3 LOADK                            R1 K1 ["LookComposerDialog.LookDetails"]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findTextInCoreGui"]
        3 LOADK                            R1 K1 ["LookComposerDialog.Name"]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findTextInCoreGui"]
        3 LOADK                            R1 K1 ["LookComposerDialog.CreateLookFailedTitle"]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findTextInCoreGui"]
        3 LOADK                            R1 K1 ["Studio.Test.LookComposerDialog.CreateLookSuccessTitle"]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 JUMPIFNOT                        R3 ; [+41]
        4 JUMPIFEQ                         R3 R1 ; [+40]
        6 LOADK                            R6 K0 ["GuiObject"]
        7 NAMECALL                         R4 R3 K1 ["IsA"]
        9 CALL                             R4 2 1
       10 JUMPIFNOT                        R4 ; [+31]
       11 MOVE                             R4 R3
       12 GETTABLEKS                       R5 R4 K2 ["AbsoluteSize"]
       14 GETTABLEKS                       R5 R5 K3 ["X"]
       16 LOADN                            R6 1
       17 JUMPIFLT                         R5 R6 ; [+8]
       19 GETTABLEKS                       R5 R4 K2 ["AbsoluteSize"]
       21 GETTABLEKS                       R5 R5 K4 ["Y"]
       23 LOADN                            R6 1
       24 JUMPIFNOTLT                      R5 R6 ; [+17]
       26 DUPTABLE                         R7 K7 [{"gui", "old"}]
       27 SETTABLEKS                       R4 R7 K5 ["gui"]
       29 GETTABLEKS                       R8 R4 K8 ["Size"]
       31 SETTABLEKS                       R8 R7 K6 ["old"]
       33 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       35 MOVE                             R6 R2
       36 GETIMPORT                        R5 K11 [table.insert]
       38 CALL                             R5 2 0
       39 GETUPVAL                         R5 0
       40 SETTABLEKS                       R5 R4 K8 ["Size"]
       42 GETTABLEKS                       R3 R3 K12 ["Parent"]
       44 JUMPBACK                         ; [-42]
       45 RETURN                           R2 1

PROTO_6:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["gui"]
        6 GETTABLEKS                       R6 R6 K1 ["Parent"]
        8 JUMPIFNOT                        R6 ; [+6]
        9 GETTABLEKS                       R6 R5 K0 ["gui"]
       11 GETTABLEKS                       R7 R5 K2 ["old"]
       13 SETTABLEKS                       R7 R6 K3 ["Size"]
       15 FORGLOOP                         R1 2 ; [-12]
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PrimaryButton"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 JUMPIFEQKNIL                     R0 ; [+6]
        8 LOADK                            R3 K2 ["ImageButton"]
        9 NAMECALL                         R1 R0 K3 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+4]
       13 GETIMPORT                        R1 K5 [error]
       15 LOADK                            R2 K6 ["Continue button not found"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 1
       18 SETTABLEKS                       R1 R0 K7 ["Size"]
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R1 K8 ["act"]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SecondaryButton"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 JUMPIFEQKNIL                     R0 ; [+6]
        8 LOADK                            R3 K2 ["ImageButton"]
        9 NAMECALL                         R1 R0 K3 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+4]
       13 GETIMPORT                        R1 K5 [error]
       15 LOADK                            R2 K6 ["Back button not found"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 1
       18 SETTABLEKS                       R1 R0 K7 ["Size"]
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R1 K8 ["act"]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["CreatorDropdown"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+5]
        8 GETIMPORT                        R2 K3 [error]
       10 LOADK                            R3 K4 ["CreatorDropdown not found"]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K5 ["within"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K6 ["getByTestId"]
       19 LOADK                            R3 K7 ["--foundation-dropdown--control"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 0
       22 LOADK                            R5 K8 ["Overlay"]
       23 LOADB                            R6 1
       24 NAMECALL                         R3 R3 K1 ["FindFirstChild"]
       26 CALL                             R3 3 1
       27 JUMPIFNOTEQKNIL                  R3 ; [+5]
       29 GETIMPORT                        R4 K3 [error]
       31 LOADK                            R5 K9 ["Overlay not found"]
       32 CALL                             R4 1 0
       33 LOADK                            R6 K10 ["GuiObject"]
       34 NAMECALL                         R4 R3 K11 ["IsA"]
       36 CALL                             R4 2 1
       37 JUMPIFNOT                        R4 ; [+3]
       38 GETUPVAL                         R4 2
       39 SETTABLEKS                       R4 R3 K12 ["Size"]
       41 GETUPVAL                         R4 3
       42 MOVE                             R5 R2
       43 GETUPVAL                         R6 0
       44 CALL                             R4 2 1
       45 GETUPVAL                         R5 4
       46 SETTABLEKS                       R5 R2 K12 ["Size"]
       48 GETUPVAL                         R5 5
       49 GETTABLEKS                       R5 R5 K13 ["act"]
       51 NEWCLOSURE                       R6 P0
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R2
       54 CALL                             R5 1 0
       55 MOVE                             R5 R4
       56 LOADNIL                          R6
       57 LOADNIL                          R7
       58 FORGPREP                         R5
       59 GETTABLEKS                       R10 R9 K14 ["gui"]
       61 GETTABLEKS                       R10 R10 K15 ["Parent"]
       63 JUMPIFNOT                        R10 ; [+6]
       64 GETTABLEKS                       R10 R9 K14 ["gui"]
       66 GETTABLEKS                       R11 R9 K16 ["old"]
       68 SETTABLEKS                       R11 R10 K12 ["Size"]
       70 FORGLOOP                         R5 2 ; [-12]
       72 GETUPVAL                         R5 1
       73 GETTABLEKS                       R5 R5 K5 ["within"]
       75 MOVE                             R6 R3
       76 CALL                             R5 1 1
       77 GETTABLEKS                       R5 R5 K17 ["getAllByTestId"]
       79 LOADK                            R6 K18 ["--foundation-menu-item"]
       80 CALL                             R5 1 1
       81 MOVE                             R6 R5
       82 LOADNIL                          R7
       83 LOADNIL                          R8
       84 FORGPREP                         R6
       85 GETUPVAL                         R11 1
       86 GETTABLEKS                       R11 R11 K5 ["within"]
       88 MOVE                             R12 R10
       89 CALL                             R11 1 1
       90 GETTABLEKS                       R12 R11 K19 ["queryByText"]
       92 MOVE                             R13 R0
       93 CALL                             R12 1 1
       94 JUMPIFNOT                        R12 ; [+43]
       95 LOADK                            R16 K20 ["TextButton"]
       96 NAMECALL                         R14 R10 K11 ["IsA"]
       98 CALL                             R14 2 1
       99 JUMPIF                           R14 ; [+5]
      100 LOADK                            R16 K21 ["ImageButton"]
      101 NAMECALL                         R14 R10 K11 ["IsA"]
      103 CALL                             R14 2 1
      104 JUMPIFNOT                        R14 ; [+2]
      105 MOVE                             R13 R10
      106 JUMP                             ; [+11]
      107 LOADK                            R15 K20 ["TextButton"]
      108 LOADB                            R16 1
      109 NAMECALL                         R13 R10 K22 ["FindFirstChildWhichIsA"]
      111 CALL                             R13 3 1
      112 JUMPIF                           R13 ; [+5]
      113 LOADK                            R15 K21 ["ImageButton"]
      114 LOADB                            R16 1
      115 NAMECALL                         R13 R10 K22 ["FindFirstChildWhichIsA"]
      117 CALL                             R13 3 1
      118 JUMPIFNOTEQKNIL                  R13 ; [+8]
      120 GETIMPORT                        R14 K3 [error]
      122 LOADK                            R16 K23 ["No clickable button found in menu item for '"]
      123 MOVE                             R17 R0
      124 LOADK                            R18 K24 ["'"]
      125 CONCAT                           R15 R16 R18
      126 CALL                             R14 1 0
      127 GETUPVAL                         R14 4
      128 SETTABLEKS                       R14 R13 K12 ["Size"]
      130 GETUPVAL                         R14 5
      131 GETTABLEKS                       R14 R14 K13 ["act"]
      133 NEWCLOSURE                       R15 P1
      134 CAPTURE                          UPVAL U1
      135 CAPTURE                          VAL R13
      136 CALL                             R14 1 0
      137 RETURN                           R0 0
      138 FORGLOOP                         R6 2 ; [-54]
      140 GETIMPORT                        R6 K3 [error]
      142 LOADK                            R8 K25 ["Menu item with text '"]
      143 MOVE                             R9 R0
      144 LOADK                            R10 K26 ["' not found in dropdown"]
      145 CONCAT                           R7 R8 R10
      146 CALL                             R6 1 0
      147 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findTextInCoreGui"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+8]
        7 GETIMPORT                        R2 K2 [error]
        9 LOADK                            R4 K3 ["Item with name '"]
       10 MOVE                             R5 R0
       11 LOADK                            R6 K4 ["' not found"]
       12 CONCAT                           R3 R4 R6
       13 CALL                             R2 1 0
       14 MOVE                             R2 R1
       15 JUMPIFNOT                        R2 ; [+66]
       16 GETTABLEKS                       R3 R2 K5 ["Parent"]
       18 JUMPIFNOT                        R3 ; [+63]
       19 GETTABLEKS                       R3 R2 K5 ["Parent"]
       21 GETUPVAL                         R4 1
       22 JUMPIFEQ                         R3 R4 ; [+59]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K6 ["within"]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R3 R3 K7 ["queryByTestId"]
       31 LOADK                            R4 K8 ["--foundation-checkbox"]
       32 CALL                             R3 1 1
       33 JUMPIFNOT                        R3 ; [+45]
       34 LOADK                            R6 K9 ["ImageButton"]
       35 LOADB                            R7 1
       36 NAMECALL                         R4 R3 K10 ["FindFirstChildWhichIsA"]
       38 CALL                             R4 3 1
       39 JUMPIF                           R4 ; [+7]
       40 LOADK                            R6 K11 ["TextButton"]
       41 LOADB                            R7 1
       42 NAMECALL                         R4 R3 K10 ["FindFirstChildWhichIsA"]
       44 CALL                             R4 3 1
       45 JUMPIF                           R4 ; [+1]
       46 MOVE                             R4 R3
       47 GETUPVAL                         R5 3
       48 MOVE                             R6 R4
       49 GETUPVAL                         R7 1
       50 CALL                             R5 2 1
       51 GETUPVAL                         R6 4
       52 SETTABLEKS                       R6 R4 K12 ["Size"]
       54 GETUPVAL                         R6 5
       55 GETTABLEKS                       R6 R6 K13 ["act"]
       57 NEWCLOSURE                       R7 P0
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          VAL R4
       60 CALL                             R6 1 0
       61 MOVE                             R6 R5
       62 LOADNIL                          R7
       63 LOADNIL                          R8
       64 FORGPREP                         R6
       65 GETTABLEKS                       R11 R10 K14 ["gui"]
       67 GETTABLEKS                       R11 R11 K5 ["Parent"]
       69 JUMPIFNOT                        R11 ; [+6]
       70 GETTABLEKS                       R11 R10 K14 ["gui"]
       72 GETTABLEKS                       R12 R10 K15 ["old"]
       74 SETTABLEKS                       R12 R11 K12 ["Size"]
       76 FORGLOOP                         R6 2 ; [-12]
       78 RETURN                           R0 0
       79 GETTABLEKS                       R2 R2 K5 ["Parent"]
       81 JUMPBACK                         ; [-67]
       82 GETIMPORT                        R3 K2 [error]
       84 LOADK                            R5 K16 ["Checkbox not found for item '"]
       85 MOVE                             R6 R0
       86 LOADK                            R7 K17 ["'"]
       87 CONCAT                           R4 R5 R7
       88 CALL                             R3 1 0
       89 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ColorLabel"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+5]
        8 GETIMPORT                        R2 K3 [error]
       10 LOADK                            R3 K4 ["ColorLabel not found"]
       11 CALL                             R2 1 0
       12 LOADK                            R4 K5 ["TextBox"]
       13 LOADB                            R5 1
       14 NAMECALL                         R2 R1 K6 ["FindFirstChildWhichIsA"]
       16 CALL                             R2 3 1
       17 JUMPIFNOTEQKNIL                  R2 ; [+5]
       19 GETIMPORT                        R3 K3 [error]
       21 LOADK                            R4 K7 ["Hex TextBox not found inside ColorLabel"]
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 1
       24 MOVE                             R4 R2
       25 GETUPVAL                         R5 0
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 2
       28 SETTABLEKS                       R4 R2 K8 ["Size"]
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K9 ["fireEvent"]
       33 MOVE                             R5 R2
       34 LOADK                            R6 K10 ["clickWithoutValidation"]
       35 CALL                             R4 2 0
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R4 R4 K9 ["fireEvent"]
       39 GETTABLEKS                       R4 R4 K11 ["change"]
       41 MOVE                             R5 R2
       42 DUPTABLE                         R6 K13 [{"target"}]
       43 DUPTABLE                         R7 K15 [{"Text"}]
       44 SETTABLEKS                       R0 R7 K14 ["Text"]
       46 SETTABLEKS                       R7 R6 K12 ["target"]
       48 CALL                             R4 2 0
       49 GETUPVAL                         R4 3
       50 GETTABLEKS                       R4 R4 K9 ["fireEvent"]
       52 GETTABLEKS                       R4 R4 K16 ["keyDown"]
       54 MOVE                             R5 R2
       55 DUPTABLE                         R6 K18 [{"key"}]
       56 GETIMPORT                        R7 K22 [Enum.KeyCode.Return]
       58 SETTABLEKS                       R7 R6 K17 ["key"]
       60 CALL                             R4 2 0
       61 GETUPVAL                         R4 3
       62 GETTABLEKS                       R4 R4 K9 ["fireEvent"]
       64 GETTABLEKS                       R4 R4 K23 ["keyUp"]
       66 MOVE                             R5 R2
       67 DUPTABLE                         R6 K18 [{"key"}]
       68 GETIMPORT                        R7 K22 [Enum.KeyCode.Return]
       70 SETTABLEKS                       R7 R6 K17 ["key"]
       72 CALL                             R4 2 0
       73 MOVE                             R4 R3
       74 LOADNIL                          R5
       75 LOADNIL                          R6
       76 FORGPREP                         R4
       77 GETTABLEKS                       R9 R8 K24 ["gui"]
       79 GETTABLEKS                       R9 R9 K25 ["Parent"]
       81 JUMPIFNOT                        R9 ; [+6]
       82 GETTABLEKS                       R9 R8 K24 ["gui"]
       84 GETTABLEKS                       R10 R8 K26 ["old"]
       86 SETTABLEKS                       R10 R9 K8 ["Size"]
       88 FORGLOOP                         R4 2 ; [-12]
       90 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Size"]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETUPVAL                         R1 0
        8 LOADK                            R2 K2 ["clickWithoutValidation"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["change"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K3 [{"target"}]
        7 DUPTABLE                         R3 K5 [{"Text"}]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K4 ["Text"]
       11 SETTABLEKS                       R3 R2 K2 ["target"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["keyDown"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K3 [{"key"}]
        7 GETIMPORT                        R3 K7 [Enum.KeyCode.Return]
        9 SETTABLEKS                       R3 R2 K2 ["key"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
       15 GETTABLEKS                       R0 R0 K8 ["keyUp"]
       17 GETUPVAL                         R1 1
       18 DUPTABLE                         R2 K3 [{"key"}]
       19 GETIMPORT                        R3 K7 [Enum.KeyCode.Return]
       21 SETTABLEKS                       R3 R2 K2 ["key"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_20:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["VALID_NAME"]
        5 GETUPVAL                         R2 1
        6 LOADK                            R4 K1 ["Name"]
        7 LOADB                            R5 1
        8 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
       10 CALL                             R2 3 1
       11 JUMPIFNOTEQKNIL                  R2 ; [+5]
       13 GETIMPORT                        R3 K4 [error]
       15 LOADK                            R4 K5 ["Name input not found"]
       16 CALL                             R3 1 0
       17 LOADK                            R5 K6 ["TextBox"]
       18 LOADB                            R6 1
       19 NAMECALL                         R3 R2 K7 ["FindFirstChildWhichIsA"]
       21 CALL                             R3 3 1
       22 JUMPIFEQKNIL                     R3 ; [+6]
       24 LOADK                            R6 K6 ["TextBox"]
       25 NAMECALL                         R4 R3 K8 ["IsA"]
       27 CALL                             R4 2 1
       28 JUMPIF                           R4 ; [+4]
       29 GETIMPORT                        R4 K4 [error]
       31 LOADK                            R5 K9 ["Name text box not found"]
       32 CALL                             R4 1 0
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K10 ["act"]
       36 NEWCLOSURE                       R5 P0
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U4
       40 CALL                             R4 1 0
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K10 ["act"]
       44 NEWCLOSURE                       R5 P1
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 CALL                             R4 1 0
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K10 ["act"]
       52 NEWCLOSURE                       R5 P2
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R3
       55 CALL                             R4 1 0
       56 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findTextInCoreGui"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["within"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R0 R0 K1 ["queryByTestId"]
        7 LOADK                            R1 K2 ["--foundation-system-banner--close"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["queryErrorBannerCloseButton"]
        3 CALL                             R0 0 1
        4 LOADB                            R2 0
        5 JUMPIFEQKNIL                     R0 ; [+5]
        7 LOADK                            R4 K1 ["GuiObject"]
        8 NAMECALL                         R2 R0 K2 ["IsA"]
       10 CALL                             R2 2 1
       11 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       13 LOADK                            R3 K3 ["Error banner close button not found"]
       14 GETIMPORT                        R1 K5 [assert]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 1
       18 MOVE                             R2 R0
       19 GETUPVAL                         R3 2
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 3
       22 SETTABLEKS                       R2 R0 K6 ["Size"]
       24 GETUPVAL                         R2 4
       25 GETTABLEKS                       R2 R2 K7 ["act"]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R0
       30 CALL                             R2 1 0
       31 MOVE                             R2 R1
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETTABLEKS                       R7 R6 K8 ["gui"]
       37 GETTABLEKS                       R7 R7 K9 ["Parent"]
       39 JUMPIFNOT                        R7 ; [+6]
       40 GETTABLEKS                       R7 R6 K8 ["gui"]
       42 GETTABLEKS                       R8 R6 K10 ["old"]
       44 SETTABLEKS                       R8 R7 K6 ["Size"]
       46 FORGLOOP                         R2 2 ; [-12]
       48 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ErrorBannerContent"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+5]
        8 GETIMPORT                        R1 K3 [error]
       10 LOADK                            R2 K4 ["Error banner content not found"]
       11 CALL                             R1 1 0
       12 LOADK                            R3 K5 ["ActionButton1"]
       13 LOADB                            R4 1
       14 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
       16 CALL                             R1 3 1
       17 JUMPIFEQKNIL                     R1 ; [+6]
       19 LOADK                            R4 K6 ["ImageButton"]
       20 NAMECALL                         R2 R1 K7 ["IsA"]
       22 CALL                             R2 2 1
       23 JUMPIF                           R2 ; [+4]
       24 GETIMPORT                        R2 K3 [error]
       26 LOADK                            R3 K8 ["See details button not found"]
       27 CALL                             R2 1 0
       28 GETUPVAL                         R2 1
       29 SETTABLEKS                       R2 R1 K9 ["Size"]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K10 ["act"]
       34 NEWCLOSURE                       R3 P0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R1
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findTextInCoreGui"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findTextInCoreGui"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_29:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOTEQKS                    R0 K0 ["AvatarLook"] ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
        7 JUMP                             ; [+3]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["MOCK_ITEM_DATA"]
       11 MOVE                             R3 R2
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETTABLEKS                       R8 R7 K3 ["creatorType"]
       17 JUMPIFNOTEQKS                    R8 K4 ["User"] ; [+21]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R9 R7 K5 ["paletteKey"]
       22 CALL                             R8 1 1
       23 JUMPIFEQKNIL                     R8 ; [+15]
       25 DUPTABLE                         R11 K8 [{"item", "palette"}]
       26 DUPTABLE                         R12 K12 [{["source"] = "marketplace", ["marketplaceItem"]}]
       27 SETTABLEKS                       R6 R12 K11 ["marketplaceItem"]
       29 SETTABLEKS                       R12 R11 K6 ["item"]
       31 SETTABLEKS                       R8 R11 K7 ["palette"]
       33 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       35 MOVE                             R10 R1
       36 GETIMPORT                        R9 K15 [table.insert]
       38 CALL                             R9 2 0
       39 FORGLOOP                         R3 2 ; [-25]
       41 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserEquippedItems"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["getGroupEquippedItems"]
        7 CALL                             R1 0 1
        8 LOADB                            R3 0
        9 LENGTH                           R4 R0
       10 LOADN                            R5 3
       11 JUMPIFNOTLE                      R5 R4 ; [+7]
       13 LENGTH                           R4 R1
       14 LOADN                            R5 2
       15 JUMPIFLE                         R5 R4 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       21 LOADK                            R4 K2 ["mock item data must include 3 user and 2 group makeup items"]
       22 GETIMPORT                        R2 K4 [assert]
       24 CALL                             R2 2 0
       25 NEWTABLE                         R2 0 5
       27 GETTABLEN                        R3 R0 1
       28 GETTABLEN                        R4 R0 2
       29 GETTABLEN                        R5 R0 3
       30 GETTABLEN                        R6 R1 1
       31 GETTABLEN                        R7 R1 2
       32 SETLIST                          R2 R3 5 [1]
       34 RETURN                           R2 1

PROTO_31:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["MOCK_ITEM_DATA"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["creatorType"]
       10 JUMPIFNOTEQKS                    R6 K2 ["Group"] ; [+21]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R7 R5 K3 ["paletteKey"]
       15 CALL                             R6 1 1
       16 JUMPIFEQKNIL                     R6 ; [+15]
       18 DUPTABLE                         R9 K6 [{"item", "palette"}]
       19 DUPTABLE                         R10 K10 [{["source"] = "marketplace", ["marketplaceItem"]}]
       20 SETTABLEKS                       R4 R10 K9 ["marketplaceItem"]
       22 SETTABLEKS                       R10 R9 K4 ["item"]
       24 SETTABLEKS                       R6 R9 K5 ["palette"]
       26 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       28 MOVE                             R8 R0
       29 GETIMPORT                        R7 K13 [table.insert]
       31 CALL                             R7 2 0
       32 FORGLOOP                         R1 2 ; [-25]
       34 RETURN                           R0 1

PROTO_32:
        0 JUMPIFEQKS                       R2 K0 ["AvatarLook"] ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 DUPTABLE                         R4 K8 [{["assets"], ["lookType"], ["name"], ["description"] = "", ["avatarProperties"], ["groupId"]}]
        5 NEWTABLE                         R5 0 0
        7 SETTABLEKS                       R5 R4 K1 ["assets"]
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADK                            R5 K9 ["Avatar"]
       11 JUMP                             ; [+1]
       12 LOADK                            R5 K10 ["Makeup"]
       13 SETTABLEKS                       R5 R4 K2 ["lookType"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K11 ["VALID_NAME"]
       18 SETTABLEKS                       R5 R4 K3 ["name"]
       20 DUPTABLE                         R5 K16 [{["playerAvatarType"] = "R15", ["bodyColor3s"], ["scale"]}]
       21 DUPTABLE                         R6 K23 [{"headColor3", "leftArmColor3", "leftLegColor3", "rightArmColor3", "rightLegColor3", "torsoColor3"}]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K24 ["DEFAULT_SKIN_TONE"]
       25 NAMECALL                         R7 R7 K25 ["ToHex"]
       27 CALL                             R7 1 1
       28 SETTABLEKS                       R7 R6 K17 ["headColor3"]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K24 ["DEFAULT_SKIN_TONE"]
       33 NAMECALL                         R7 R7 K25 ["ToHex"]
       35 CALL                             R7 1 1
       36 SETTABLEKS                       R7 R6 K18 ["leftArmColor3"]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K24 ["DEFAULT_SKIN_TONE"]
       41 NAMECALL                         R7 R7 K25 ["ToHex"]
       43 CALL                             R7 1 1
       44 SETTABLEKS                       R7 R6 K19 ["leftLegColor3"]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K24 ["DEFAULT_SKIN_TONE"]
       49 NAMECALL                         R7 R7 K25 ["ToHex"]
       51 CALL                             R7 1 1
       52 SETTABLEKS                       R7 R6 K20 ["rightArmColor3"]
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R7 R7 K24 ["DEFAULT_SKIN_TONE"]
       57 NAMECALL                         R7 R7 K25 ["ToHex"]
       59 CALL                             R7 1 1
       60 SETTABLEKS                       R7 R6 K21 ["rightLegColor3"]
       62 GETUPVAL                         R7 1
       63 GETTABLEKS                       R7 R7 K24 ["DEFAULT_SKIN_TONE"]
       65 NAMECALL                         R7 R7 K25 ["ToHex"]
       67 CALL                             R7 1 1
       68 SETTABLEKS                       R7 R6 K22 ["torsoColor3"]
       70 SETTABLEKS                       R6 R5 K14 ["bodyColor3s"]
       72 DUPTABLE                         R6 K33 [{["bodyType"] = 1, ["depth"] = 1, ["head"] = 1, ["height"] = 1, ["proportion"] = 1, ["width"] = 1}]
       73 SETTABLEKS                       R6 R5 K15 ["scale"]
       75 SETTABLEKS                       R5 R4 K6 ["avatarProperties"]
       77 JUMPIFNOTEQKS                    R0 K34 ["Group"] ; [+9]
       79 GETUPVAL                         R6 0
       80 GETTABLEKS                       R6 R6 K35 ["GROUP_ID"]
       82 FASTCALL1                        TOSTRING R6 ; [+2]
       83 GETIMPORT                        R5 K37 [tostring]
       85 CALL                             R5 1 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R5
       88 SETTABLEKS                       R5 R4 K7 ["groupId"]
       90 NEWTABLE                         R5 0 0
       92 JUMPIFNOT                        R3 ; [+4]
       93 GETUPVAL                         R6 0
       94 GETTABLEKS                       R6 R6 K38 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
       96 JUMP                             ; [+3]
       97 GETUPVAL                         R6 0
       98 GETTABLEKS                       R6 R6 K39 ["MOCK_ITEM_DATA"]
      100 LOADNIL                          R7
      101 JUMPIFNOT                        R1 ; [+16]
      102 NEWTABLE                         R7 0 0
      104 MOVE                             R8 R1
      105 LOADNIL                          R9
      106 LOADNIL                          R10
      107 FORGPREP                         R8
      108 GETTABLE                         R15 R6 R12
      109 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      111 MOVE                             R14 R7
      112 GETIMPORT                        R13 K42 [table.insert]
      114 CALL                             R13 2 0
      115 FORGLOOP                         R8 2 ; [-8]
      117 JUMP                             ; [+1]
      118 MOVE                             R7 R6
      119 MOVE                             R8 R7
      120 LOADNIL                          R9
      121 LOADNIL                          R10
      122 FORGPREP                         R8
      123 GETTABLEKS                       R13 R12 K43 ["creatorType"]
      125 JUMPIFNOTEQ                      R13 R0 ; [+58]
      127 DUPTABLE                         R13 K46 [{"id", "meta"}]
      128 GETTABLEKS                       R14 R12 K44 ["id"]
      130 SETTABLEKS                       R14 R13 K44 ["id"]
      132 DUPTABLE                         R14 K51 [{["order"] = 0, ["puffiness"] = 1, ["version"] = 1}]
      133 SETTABLEKS                       R14 R13 K45 ["meta"]
      135 GETTABLEKS                       R14 R12 K52 ["bundleId"]
      137 JUMPIFNOT                        R14 ; [+4]
      138 GETTABLEKS                       R14 R12 K52 ["bundleId"]
      140 SETTABLEKS                       R14 R13 K52 ["bundleId"]
      142 JUMPIF                           R3 ; [+33]
      143 GETTABLEKS                       R14 R12 K53 ["assetType"]
      145 GETIMPORT                        R15 K57 [Enum.AssetType.FaceMakeup]
      147 GETTABLEKS                       R15 R15 K58 ["Value"]
      149 JUMPIFEQ                         R14 R15 ; [+17]
      151 GETTABLEKS                       R14 R12 K53 ["assetType"]
      153 GETIMPORT                        R15 K60 [Enum.AssetType.LipMakeup]
      155 GETTABLEKS                       R15 R15 K58 ["Value"]
      157 JUMPIFEQ                         R14 R15 ; [+9]
      159 GETTABLEKS                       R14 R12 K53 ["assetType"]
      161 GETIMPORT                        R15 K62 [Enum.AssetType.EyeMakeup]
      163 GETTABLEKS                       R15 R15 K58 ["Value"]
      165 JUMPIFNOTEQ                      R14 R15 ; [+10]
      167 LOADN                            R16 1
      168 FASTCALL3                        TABLE_INSERT R5 R16 R13
      170 MOVE                             R15 R5
      171 MOVE                             R17 R13
      172 GETIMPORT                        R14 K42 [table.insert]
      174 CALL                             R14 3 0
      175 JUMP                             ; [+8]
      176 GETTABLEKS                       R15 R4 K1 ["assets"]
      178 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
      180 MOVE                             R16 R13
      181 GETIMPORT                        R14 K42 [table.insert]
      183 CALL                             R14 2 0
      184 FORGLOOP                         R8 2 ; [-62]
      186 JUMPIFNOT                        R3 ; [+1]
      187 JUMP                             ; [+13]
      188 GETUPVAL                         R8 2
      189 GETTABLEKS                       R8 R8 K63 ["reverse"]
      191 GETUPVAL                         R9 2
      192 GETTABLEKS                       R9 R9 K64 ["append"]
      194 GETTABLEKS                       R10 R4 K1 ["assets"]
      196 MOVE                             R11 R5
      197 CALL                             R9 2 -1
      198 CALL                             R8 -1 1
      199 SETTABLEKS                       R8 R4 K1 ["assets"]
      201 LOADN                            R8 1
      202 GETTABLEKS                       R9 R4 K1 ["assets"]
      204 LOADNIL                          R10
      205 LOADNIL                          R11
      206 FORGPREP                         R9
      207 GETTABLEKS                       R14 R13 K45 ["meta"]
      209 SETTABLEKS                       R8 R14 K47 ["order"]
      211 ADDK                             R8 R8 K27 [1]
      212 FORGLOOP                         R9 2 ; [-6]
      214 RETURN                           R4 1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MOCK_ITEM_DATA"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
        9 GETTABLE                         R2 R3 R0
       10 RETURN                           R2 1

PROTO_34:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Body"]
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["Body"]
        8 NAMECALL                         R2 R2 K1 ["JSONDecode"]
       10 CALL                             R2 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["Url"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K3 ["lookCreateUrl"]
       19 CALL                             R4 0 1
       20 JUMPIFNOTEQ                      R3 R4 ; [+4]
       22 GETUPVAL                         R3 3
       23 SETTABLEKS                       R2 R3 K4 ["lookCreationInfo"]
       25 NEWTABLE                         R3 0 0
       27 DUPTABLE                         R4 K8 [{["id"] = 1, ["look"]}]
       28 DUPTABLE                         R5 K10 [{"items"}]
       29 SETTABLEKS                       R3 R5 K9 ["items"]
       31 SETTABLEKS                       R5 R4 K7 ["look"]
       33 NEWTABLE                         R5 0 0
       35 GETTABLEKS                       R6 R2 K11 ["assets"]
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 FORGPREP                         R6
       40 GETTABLEKS                       R12 R10 K5 ["id"]
       42 GETUPVAL                         R14 3
       43 GETTABLEKS                       R14 R14 K12 ["MOCK_ITEM_DATA"]
       45 GETTABLE                         R13 R14 R12
       46 JUMPIFNOT                        R13 ; [+2]
       47 MOVE                             R11 R13
       48 JUMP                             ; [+4]
       49 GETUPVAL                         R14 3
       50 GETTABLEKS                       R14 R14 K13 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
       52 GETTABLE                         R11 R14 R12
       53 GETTABLEKS                       R12 R10 K14 ["bundleId"]
       55 JUMPIF                           R12 ; [+4]
       56 MOVE                             R12 R11
       57 JUMPIFNOT                        R12 ; [+2]
       58 GETTABLEKS                       R12 R11 K14 ["bundleId"]
       60 JUMPIFNOT                        R12 ; [+49]
       61 GETTABLE                         R13 R5 R12
       62 JUMPIF                           R13 ; [+47]
       63 GETUPVAL                         R14 3
       64 GETTABLEKS                       R14 R14 K15 ["MOCK_AVATAR_LOOK_BUNDLE_DATA"]
       66 GETTABLE                         R13 R14 R12
       67 GETTABLEKS                       R14 R13 K16 ["creatorType"]
       69 DUPTABLE                         R17 K25 [{["id"], ["name"], ["itemType"] = "Bundle", ["bundleType"], ["assetsInBundle"], ["creator"], ["priceInRobux"] = 30}]
       70 SETTABLEKS                       R12 R17 K5 ["id"]
       72 GETTABLEKS                       R18 R13 K17 ["name"]
       74 SETTABLEKS                       R18 R17 K17 ["name"]
       76 GETTABLEKS                       R18 R13 K20 ["bundleType"]
       78 SETTABLEKS                       R18 R17 K20 ["bundleType"]
       80 GETTABLEKS                       R18 R13 K21 ["assetsInBundle"]
       82 SETTABLEKS                       R18 R17 K21 ["assetsInBundle"]
       84 DUPTABLE                         R18 K30 [{["id"], ["name"] = "Test Creator", ["type"], ["hasVerifiedBadge"] = False}]
       85 JUMPIFNOTEQKS                    R14 K31 ["User"] ; [+6]
       87 GETUPVAL                         R19 4
       88 GETTABLEKS                       R19 R19 K32 ["getUserId"]
       90 CALL                             R19 0 1
       91 JUMP                             ; [+3]
       92 GETUPVAL                         R19 3
       93 GETTABLEKS                       R19 R19 K33 ["GROUP_ID"]
       95 SETTABLEKS                       R19 R18 K5 ["id"]
       97 SETTABLEKS                       R14 R18 K27 ["type"]
       99 SETTABLEKS                       R18 R17 K22 ["creator"]
      101 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
      103 MOVE                             R16 R3
      104 GETIMPORT                        R15 K36 [table.insert]
      106 CALL                             R15 2 0
      107 LOADB                            R15 1
      108 SETTABLE                         R15 R5 R12
      109 JUMP                             ; [+45]
      110 JUMPIF                           R12 ; [+44]
      111 GETTABLEKS                       R13 R11 K37 ["assetType"]
      113 GETTABLEKS                       R14 R11 K16 ["creatorType"]
      115 DUPTABLE                         R17 K39 [{["id"], ["name"], ["itemType"] = "Asset", ["creator"], ["assetType"], ["priceInRobux"] = 30}]
      116 GETTABLEKS                       R18 R10 K5 ["id"]
      118 SETTABLEKS                       R18 R17 K5 ["id"]
      120 LOADK                            R19 K40 ["Test Item"]
      121 GETTABLEKS                       R21 R10 K5 ["id"]
      123 FASTCALL1                        TOSTRING R21 ; [+2]
      124 GETIMPORT                        R20 K42 [tostring]
      126 CALL                             R20 1 1
      127 CONCAT                           R18 R19 R20
      128 SETTABLEKS                       R18 R17 K17 ["name"]
      130 DUPTABLE                         R18 K30 [{["id"], ["name"] = "Test Creator", ["type"], ["hasVerifiedBadge"] = False}]
      131 JUMPIFNOTEQKS                    R14 K31 ["User"] ; [+6]
      133 GETUPVAL                         R19 4
      134 GETTABLEKS                       R19 R19 K32 ["getUserId"]
      136 CALL                             R19 0 1
      137 JUMP                             ; [+3]
      138 GETUPVAL                         R19 3
      139 GETTABLEKS                       R19 R19 K33 ["GROUP_ID"]
      141 SETTABLEKS                       R19 R18 K5 ["id"]
      143 SETTABLEKS                       R14 R18 K27 ["type"]
      145 SETTABLEKS                       R18 R17 K22 ["creator"]
      147 SETTABLEKS                       R13 R17 K37 ["assetType"]
      149 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
      151 MOVE                             R16 R3
      152 GETIMPORT                        R15 K36 [table.insert]
      154 CALL                             R15 2 0
      155 FORGLOOP                         R6 2 ; [-116]
      157 MOVE                             R6 R0
      158 DUPTABLE                         R7 K43 [{"Body"}]
      159 GETUPVAL                         R8 1
      160 MOVE                             R10 R4
      161 NAMECALL                         R8 R8 K44 ["JSONEncode"]
      163 CALL                             R8 2 1
      164 SETTABLEKS                       R8 R7 K0 ["Body"]
      166 CALL                             R6 1 0
      167 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_36:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Body"]
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["Body"]
        8 NAMECALL                         R2 R2 K1 ["JSONDecode"]
       10 CALL                             R2 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["Url"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K3 ["lookPreviewUrl"]
       19 CALL                             R4 0 1
       20 JUMPIFNOTEQ                      R3 R4 ; [+21]
       22 GETTABLEKS                       R3 R2 K4 ["validationType"]
       24 JUMPIFNOTEQKS                    R3 K5 ["filterUnsupportedTypes"] ; [+17]
       26 MOVE                             R3 R0
       27 DUPTABLE                         R4 K6 [{"Body"}]
       28 GETUPVAL                         R5 1
       29 DUPTABLE                         R7 K10 [{["errorDescription"], ["errorCode"] = 1}]
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R8 R8 K11 ["LOOK_PREVIEW_FAILURE_MESSAGE"]
       33 SETTABLEKS                       R8 R7 K7 ["errorDescription"]
       35 NAMECALL                         R5 R5 K12 ["JSONEncode"]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K0 ["Body"]
       40 CALL                             R3 1 0
       41 RETURN                           R0 0
       42 MOVE                             R3 R0
       43 GETUPVAL                         R4 4
       44 GETUPVAL                         R5 0
       45 CALL                             R4 1 -1
       46 CALL                             R3 -1 0
       47 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_38:
        0 MOVE                             R2 R1
        1 CALL                             R2 0 -1
        2 RETURN                           R2 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPCLOSURE                       R2 K1 [PROTO_38]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_40:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Body"]
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["Body"]
        8 NAMECALL                         R2 R2 K1 ["JSONDecode"]
       10 CALL                             R2 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["Url"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K3 ["lookPreviewUrl"]
       19 CALL                             R4 0 1
       20 JUMPIFNOTEQ                      R3 R4 ; [+21]
       22 GETTABLEKS                       R3 R2 K4 ["validationType"]
       24 JUMPIFNOTEQKS                    R3 K5 ["default"] ; [+17]
       26 MOVE                             R3 R0
       27 DUPTABLE                         R4 K6 [{"Body"}]
       28 GETUPVAL                         R5 1
       29 DUPTABLE                         R7 K10 [{["errorDescription"], ["errorCode"] = 1}]
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R8 R8 K11 ["LOOK_VALIDATION_FAILURE_MESSAGE"]
       33 SETTABLEKS                       R8 R7 K7 ["errorDescription"]
       35 NAMECALL                         R5 R5 K12 ["JSONEncode"]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K0 ["Body"]
       40 CALL                             R3 1 0
       41 RETURN                           R0 0
       42 MOVE                             R3 R0
       43 GETUPVAL                         R4 4
       44 GETUPVAL                         R5 0
       45 CALL                             R4 1 -1
       46 CALL                             R3 -1 0
       47 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Url"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["lookCreateUrl"]
        6 CALL                             R3 0 1
        7 JUMPIFNOTEQ                      R2 R3 ; [+17]
        9 MOVE                             R2 R0
       10 DUPTABLE                         R3 K3 [{"Body"}]
       11 GETUPVAL                         R4 2
       12 DUPTABLE                         R6 K7 [{["errorDescription"], ["errorCode"] = 1}]
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R7 R7 K8 ["LOOK_CREATION_FAILURE_MESSAGE"]
       16 SETTABLEKS                       R7 R6 K4 ["errorDescription"]
       18 NAMECALL                         R4 R4 K9 ["JSONEncode"]
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R3 K2 ["Body"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 MOVE                             R2 R0
       26 GETUPVAL                         R3 4
       27 GETUPVAL                         R4 0
       28 CALL                             R3 1 -1
       29 CALL                             R2 -1 0
       30 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["failPreview"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestInternal"]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K2 ["failPreviewUnlocalized"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETUPVAL                         R1 0
       12 GETUPVAL                         R2 2
       13 SETTABLEKS                       R2 R1 K1 ["requestInternal"]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R1 R0 K3 ["failValidation"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETUPVAL                         R1 0
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K1 ["requestInternal"]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R1 R0 K4 ["failCreation"]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETUPVAL                         R1 0
       28 GETUPVAL                         R2 4
       29 SETTABLEKS                       R2 R1 K1 ["requestInternal"]
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 0
       33 GETUPVAL                         R2 5
       34 SETTABLEKS                       R2 R1 K1 ["requestInternal"]
       36 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["FoundationProvider"]
        6 DUPTABLE                         R2 K3 [{"theme"}]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K4 ["Enums"]
       10 GETTABLEKS                       R3 R3 K5 ["Theme"]
       12 GETTABLEKS                       R3 R3 K6 ["Dark"]
       14 SETTABLEKS                       R3 R2 K2 ["theme"]
       16 DUPTABLE                         R3 K8 [{"Content"}]
       17 GETUPVAL                         R4 2
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K9 ["context"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K0 ["createElement"]
       24 GETUPVAL                         R7 4
       25 DUPTABLE                         R8 K13 [{"equippedItems", "dialogLookType", "onClose"}]
       26 GETUPVAL                         R9 5
       27 SETTABLEKS                       R9 R8 K10 ["equippedItems"]
       29 GETUPVAL                         R9 6
       30 SETTABLEKS                       R9 R8 K11 ["dialogLookType"]
       32 GETUPVAL                         R9 7
       33 SETTABLEKS                       R9 R8 K12 ["onClose"]
       35 CALL                             R6 2 -1
       36 CALL                             R4 -1 1
       37 SETTABLEKS                       R4 R3 K7 ["Content"]
       39 CALL                             R0 3 -1
       40 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["render"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_47:
        0 GETIMPORT                        R4 K2 [Instance.new]
        2 LOADK                            R5 K3 ["ScreenGui"]
        3 CALL                             R4 1 1
        4 LOADK                            R5 K4 ["TestContainer"]
        5 SETTABLEKS                       R5 R4 K5 ["Name"]
        7 GETUPVAL                         R5 0
        8 SETTABLEKS                       R5 R4 K6 ["Parent"]
       10 GETUPVAL                         R5 1
       11 CALL                             R5 0 1
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R5
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R3
       21 GETUPVAL                         R7 5
       22 GETTABLEKS                       R7 R7 K7 ["act"]
       24 NEWCLOSURE                       R8 P1
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R6
       28 CALL                             R7 1 0
       29 RETURN                           R4 1

PROTO_48:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R10 0
        7 GETTABLEKS                       R10 R10 K0 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
        9 GETTABLE                         R9 R10 R6
       10 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       12 MOVE                             R8 R1
       13 GETIMPORT                        R7 K3 [table.insert]
       15 CALL                             R7 2 0
       16 FORGLOOP                         R2 2 ; [-11]
       18 RETURN                           R1 1

PROTO_49:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K0 ["MOCK_AVATAR_EDITOR_SERVICE_BUNDLE_DETAILS"]
        9 GETTABLE                         R7 R8 R6
       10 JUMPIFNOT                        R7 ; [+10]
       11 GETUPVAL                         R10 0
       12 GETTABLEKS                       R10 R10 K0 ["MOCK_AVATAR_EDITOR_SERVICE_BUNDLE_DETAILS"]
       14 GETTABLE                         R9 R10 R6
       15 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       17 MOVE                             R8 R1
       18 GETIMPORT                        R7 K3 [table.insert]
       20 CALL                             R7 2 0
       21 FORGLOOP                         R2 2 ; [-16]
       23 RETURN                           R1 1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_51:
        0 DUPTABLE                         R1 K2 [{"getBatchAssetDetailsAsync", "getBatchBundleDetailsAsync"}]
        1 DUPCLOSURE                       R2 K3 [PROTO_48]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R2 R1 K0 ["getBatchAssetDetailsAsync"]
        5 DUPCLOSURE                       R2 K4 [PROTO_49]
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R2 R1 K1 ["getBatchBundleDetailsAsync"]
        9 DUPTABLE                         R2 K11 [{["showLookSaveMenu"] = True, ["showCreateAvatarLook"] = True, ["showCreateMakeupLook"] = True, ["canCreateAvatarLook"] = True, ["canCreateMakeupLook"] = True}]
       10 DUPTABLE                         R3 K13 [{["canCreateLook"] = True}]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K14 ["withPreviewerAndLizard"]
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          VAL R0
       16 DUPTABLE                         R6 K16 [{"wrapAppContexts"}]
       17 NEWTABLE                         R7 0 3
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R8 R8 K17 ["createElement"]
       22 GETUPVAL                         R9 3
       23 GETTABLEKS                       R9 R9 K18 ["Provider"]
       25 DUPTABLE                         R10 K20 [{"value"}]
       26 SETTABLEKS                       R1 R10 K19 ["value"]
       28 CALL                             R8 2 1
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R9 R9 K17 ["createElement"]
       32 GETUPVAL                         R10 4
       33 GETTABLEKS                       R10 R10 K21 ["Context"]
       35 GETTABLEKS                       R10 R10 K18 ["Provider"]
       37 DUPTABLE                         R11 K20 [{"value"}]
       38 SETTABLEKS                       R2 R11 K19 ["value"]
       40 CALL                             R9 2 1
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R10 R10 K17 ["createElement"]
       44 GETUPVAL                         R11 5
       45 GETTABLEKS                       R11 R11 K21 ["Context"]
       47 GETTABLEKS                       R11 R11 K18 ["Provider"]
       49 DUPTABLE                         R12 K20 [{"value"}]
       50 SETTABLEKS                       R3 R12 K19 ["value"]
       52 CALL                             R10 2 -1
       53 SETLIST                          R7 R8 -1 [1]
       55 SETTABLEKS                       R7 R6 K15 ["wrapAppContexts"]
       57 CALL                             R4 2 -1
       58 RETURN                           R4 -1

PROTO_52:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R10 0
        7 GETTABLEKS                       R10 R10 K0 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
        9 GETTABLE                         R9 R10 R6
       10 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       12 MOVE                             R8 R1
       13 GETIMPORT                        R7 K3 [table.insert]
       15 CALL                             R7 2 0
       16 FORGLOOP                         R2 2 ; [-11]
       18 RETURN                           R1 1

PROTO_53:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K0 ["MOCK_AVATAR_EDITOR_SERVICE_BUNDLE_DETAILS"]
        9 GETTABLE                         R7 R8 R6
       10 JUMPIFNOT                        R7 ; [+10]
       11 GETUPVAL                         R10 0
       12 GETTABLEKS                       R10 R10 K0 ["MOCK_AVATAR_EDITOR_SERVICE_BUNDLE_DETAILS"]
       14 GETTABLE                         R9 R10 R6
       15 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       17 MOVE                             R8 R1
       18 GETIMPORT                        R7 K3 [table.insert]
       20 CALL                             R7 2 0
       21 FORGLOOP                         R2 2 ; [-16]
       23 RETURN                           R1 1

PROTO_54:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_55:
        0 DUPTABLE                         R1 K2 [{"getBatchAssetDetailsAsync", "getBatchBundleDetailsAsync"}]
        1 DUPCLOSURE                       R2 K3 [PROTO_52]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R2 R1 K0 ["getBatchAssetDetailsAsync"]
        5 DUPCLOSURE                       R2 K4 [PROTO_53]
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R2 R1 K1 ["getBatchBundleDetailsAsync"]
        9 DUPTABLE                         R2 K11 [{["showLookSaveMenu"] = True, ["showCreateAvatarLook"] = True, ["showCreateMakeupLook"] = True, ["canCreateAvatarLook"] = True, ["canCreateMakeupLook"] = True}]
       10 DUPTABLE                         R3 K13 [{["canCreateLook"] = True}]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K14 ["withTestPreviewer"]
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          VAL R0
       16 DUPTABLE                         R6 K16 [{"wrapAppContexts"}]
       17 NEWTABLE                         R7 0 3
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R8 R8 K17 ["createElement"]
       22 GETUPVAL                         R9 3
       23 GETTABLEKS                       R9 R9 K18 ["Provider"]
       25 DUPTABLE                         R10 K20 [{"value"}]
       26 SETTABLEKS                       R1 R10 K19 ["value"]
       28 CALL                             R8 2 1
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R9 R9 K17 ["createElement"]
       32 GETUPVAL                         R10 4
       33 GETTABLEKS                       R10 R10 K21 ["Context"]
       35 GETTABLEKS                       R10 R10 K18 ["Provider"]
       37 DUPTABLE                         R11 K20 [{"value"}]
       38 SETTABLEKS                       R2 R11 K19 ["value"]
       40 CALL                             R9 2 1
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R10 R10 K17 ["createElement"]
       44 GETUPVAL                         R11 5
       45 GETTABLEKS                       R11 R11 K21 ["Context"]
       47 GETTABLEKS                       R11 R11 K18 ["Provider"]
       49 DUPTABLE                         R12 K20 [{"value"}]
       50 SETTABLEKS                       R3 R12 K19 ["value"]
       52 CALL                             R10 2 -1
       53 SETLIST                          R7 R8 -1 [1]
       55 SETTABLEKS                       R7 R6 K15 ["wrapAppContexts"]
       57 CALL                             R4 2 -1
       58 RETURN                           R4 -1

PROTO_56:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AddAssetId"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+5]
        8 GETIMPORT                        R1 K3 [error]
       10 LOADK                            R2 K4 ["AddAssetId button not found on SimpleSelectScreen"]
       11 CALL                             R1 1 0
       12 LOADNIL                          R1
       13 LOADK                            R4 K5 ["ImageButton"]
       14 NAMECALL                         R2 R0 K6 ["IsA"]
       16 CALL                             R2 2 1
       17 JUMPIF                           R2 ; [+5]
       18 LOADK                            R4 K7 ["TextButton"]
       19 NAMECALL                         R2 R0 K6 ["IsA"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+2]
       23 MOVE                             R1 R0
       24 JUMP                             ; [+12]
       25 LOADK                            R4 K5 ["ImageButton"]
       26 LOADB                            R5 1
       27 NAMECALL                         R2 R0 K8 ["FindFirstChildWhichIsA"]
       29 CALL                             R2 3 1
       30 JUMPIF                           R2 ; [+5]
       31 LOADK                            R4 K7 ["TextButton"]
       32 LOADB                            R5 1
       33 NAMECALL                         R2 R0 K8 ["FindFirstChildWhichIsA"]
       35 CALL                             R2 3 1
       36 MOVE                             R1 R2
       37 JUMPIFNOTEQKNIL                  R1 ; [+5]
       39 GETIMPORT                        R2 K3 [error]
       41 LOADK                            R3 K9 ["Clickable button not found inside AddAssetId node"]
       42 CALL                             R2 1 0
       43 MOVE                             R2 R1
       44 GETUPVAL                         R3 1
       45 MOVE                             R4 R2
       46 GETUPVAL                         R5 0
       47 CALL                             R3 2 1
       48 GETUPVAL                         R4 2
       49 SETTABLEKS                       R4 R2 K10 ["Size"]
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K11 ["act"]
       54 NEWCLOSURE                       R5 P0
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          VAL R2
       57 CALL                             R4 1 0
       58 MOVE                             R4 R3
       59 LOADNIL                          R5
       60 LOADNIL                          R6
       61 FORGPREP                         R4
       62 GETTABLEKS                       R9 R8 K12 ["gui"]
       64 GETTABLEKS                       R9 R9 K13 ["Parent"]
       66 JUMPIFNOT                        R9 ; [+6]
       67 GETTABLEKS                       R9 R8 K12 ["gui"]
       69 GETTABLEKS                       R10 R8 K14 ["old"]
       71 SETTABLEKS                       R10 R9 K10 ["Size"]
       73 FORGLOOP                         R4 2 ; [-12]
       75 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 10000
        2 SETTABLEKS                       R1 R0 K0 ["ZIndex"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R0 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SplitButtonContainer"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+5]
        8 GETIMPORT                        R1 K3 [error]
       10 LOADK                            R2 K4 ["SplitButtonContainer not found"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K5 ["within"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 GETTABLEKS                       R1 R1 K6 ["getByTestId"]
       19 LOADK                            R2 K7 ["--foundation-popover--anchor"]
       20 CALL                             R1 1 1
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K5 ["within"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 1
       26 GETTABLEKS                       R2 R2 K6 ["getByTestId"]
       28 LOADK                            R3 K8 ["--foundation-icon-button"]
       29 CALL                             R2 1 1
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R3 R3 K9 ["act"]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R2
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K5 ["within"]
       40 GETUPVAL                         R4 0
       41 CALL                             R3 1 1
       42 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
       44 LOADK                            R4 K10 ["--foundation-popover--content"]
       45 CALL                             R3 1 1
       46 JUMPIFNOTEQKNIL                  R3 ; [+5]
       48 GETIMPORT                        R4 K3 [error]
       50 LOADK                            R5 K11 ["PopoverContent not found"]
       51 CALL                             R4 1 0
       52 LOADK                            R6 K12 ["AssetIdOption"]
       53 LOADB                            R7 1
       54 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
       56 CALL                             R4 3 1
       57 JUMPIFNOTEQKNIL                  R4 ; [+5]
       59 GETIMPORT                        R5 K3 [error]
       61 LOADK                            R6 K13 ["AssetIdOption not found in menu"]
       62 CALL                             R5 1 0
       63 GETUPVAL                         R5 2
       64 GETTABLEKS                       R5 R5 K9 ["act"]
       66 NEWCLOSURE                       R6 P1
       67 CAPTURE                          VAL R4
       68 CAPTURE                          UPVAL U1
       69 CALL                             R5 1 0
       70 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Size"]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R0 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["change"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K3 [{"target"}]
        7 DUPTABLE                         R3 K5 [{"Text"}]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K4 ["Text"]
       11 SETTABLEKS                       R3 R2 K2 ["target"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["keyDown"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K3 [{"key"}]
        7 GETIMPORT                        R3 K7 [Enum.KeyCode.Return]
        9 SETTABLEKS                       R3 R2 K2 ["key"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
       15 GETTABLEKS                       R0 R0 K8 ["keyUp"]
       17 GETUPVAL                         R1 1
       18 DUPTABLE                         R2 K3 [{"key"}]
       19 GETIMPORT                        R3 K7 [Enum.KeyCode.Return]
       21 SETTABLEKS                       R3 R2 K2 ["key"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_64:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TOSTRING R6 ; [+3]
        7 MOVE                             R10 R6
        8 GETIMPORT                        R9 K1 [tostring]
       10 CALL                             R9 1 1
       11 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       13 MOVE                             R8 R1
       14 GETIMPORT                        R7 K4 [table.insert]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 2 ; [-12]
       19 GETIMPORT                        R2 K6 [table.concat]
       21 MOVE                             R3 R1
       22 LOADK                            R4 K7 [","]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 0
       25 LOADK                            R5 K8 ["ItemIdInput"]
       26 LOADB                            R6 1
       27 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
       29 CALL                             R3 3 1
       30 JUMPIFNOTEQKNIL                  R3 ; [+5]
       32 GETIMPORT                        R4 K11 [error]
       34 LOADK                            R5 K12 ["ItemIdInput not found"]
       35 CALL                             R4 1 0
       36 LOADK                            R6 K13 ["TextBox"]
       37 LOADB                            R7 1
       38 NAMECALL                         R4 R3 K14 ["FindFirstChildWhichIsA"]
       40 CALL                             R4 3 1
       41 JUMPIFNOTEQKNIL                  R4 ; [+5]
       43 GETIMPORT                        R5 K11 [error]
       45 LOADK                            R6 K15 ["TextBox not found inside ItemIdInput"]
       46 CALL                             R5 1 0
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R5 R5 K16 ["act"]
       50 NEWCLOSURE                       R6 P0
       51 CAPTURE                          VAL R4
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U3
       54 CALL                             R5 1 0
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R5 R5 K16 ["act"]
       58 NEWCLOSURE                       R6 P1
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R2
       62 CALL                             R5 1 0
       63 GETUPVAL                         R5 1
       64 GETTABLEKS                       R5 R5 K16 ["act"]
       66 NEWCLOSURE                       R6 P2
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R4
       69 CALL                             R5 1 0
       70 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AddItemsButton"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+5]
        8 GETIMPORT                        R1 K3 [error]
       10 LOADK                            R2 K4 ["AddItemsButton not found"]
       11 CALL                             R1 1 0
       12 LOADK                            R3 K5 ["ImageButton"]
       13 NAMECALL                         R1 R0 K6 ["IsA"]
       15 CALL                             R1 2 1
       16 JUMPIF                           R1 ; [+4]
       17 GETIMPORT                        R1 K3 [error]
       19 LOADK                            R2 K7 ["AddItemsButton is not an ImageButton"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 1
       22 SETTABLEKS                       R1 R0 K8 ["Size"]
       24 GETIMPORT                        R1 K11 [UDim2.fromOffset]
       26 LOADN                            R2 50
       27 LOADN                            R3 50
       28 CALL                             R1 2 1
       29 SETTABLEKS                       R1 R0 K12 ["Position"]
       31 LOADN                            R1 11000
       32 SETTABLEKS                       R1 R0 K13 ["ZIndex"]
       34 GETUPVAL                         R1 2
       35 GETTABLEKS                       R1 R1 K14 ["act"]
       37 NEWCLOSURE                       R2 P0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R0
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 10000
        2 SETTABLEKS                       R1 R0 K0 ["ZIndex"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R0 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["StageSelect"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+5]
        8 GETIMPORT                        R2 K3 [error]
       10 LOADK                            R3 K4 ["StageSelect not found"]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K5 ["within"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K6 ["getByTestId"]
       19 LOADK                            R3 K7 ["--foundation-popover--anchor"]
       20 CALL                             R2 1 1
       21 LOADK                            R5 K8 ["ImageButton"]
       22 LOADB                            R6 1
       23 NAMECALL                         R3 R2 K9 ["FindFirstChildWhichIsA"]
       25 CALL                             R3 3 1
       26 JUMPIF                           R3 ; [+5]
       27 LOADK                            R5 K10 ["TextButton"]
       28 LOADB                            R6 1
       29 NAMECALL                         R3 R2 K9 ["FindFirstChildWhichIsA"]
       31 CALL                             R3 3 1
       32 JUMPIFNOTEQKNIL                  R3 ; [+5]
       34 GETIMPORT                        R4 K3 [error]
       36 LOADK                            R5 K11 ["Publish button not found inside popover anchor"]
       37 CALL                             R4 1 0
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K12 ["act"]
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R3
       44 CALL                             R4 1 0
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R4 R4 K5 ["within"]
       48 GETUPVAL                         R5 0
       49 CALL                             R4 1 1
       50 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
       52 LOADK                            R5 K13 ["--foundation-popover--content"]
       53 CALL                             R4 1 1
       54 JUMPIFNOTEQKNIL                  R4 ; [+5]
       56 GETIMPORT                        R5 K3 [error]
       58 LOADK                            R6 K14 ["LookSaveMenu PopoverContent not found"]
       59 CALL                             R5 1 0
       60 JUMPIFNOTEQKS                    R0 K15 ["AvatarLook"] ; [+3]
       62 LOADK                            R5 K16 ["CreateAvatarLook"]
       63 JUMP                             ; [+1]
       64 LOADK                            R5 K17 ["CreateMakeupLook"]
       65 LOADNIL                          R6
       66 NAMECALL                         R7 R4 K18 ["GetDescendants"]
       68 CALL                             R7 1 3
       69 FORGPREP                         R7
       70 LOADK                            R14 K10 ["TextButton"]
       71 NAMECALL                         R12 R11 K19 ["IsA"]
       73 CALL                             R12 2 1
       74 JUMPIFNOT                        R12 ; [+10]
       75 GETTABLEKS                       R12 R11 K20 ["Text"]
       77 GETIMPORT                        R13 K23 [string.find]
       79 MOVE                             R14 R12
       80 MOVE                             R15 R5
       81 CALL                             R13 2 1
       82 JUMPIFNOT                        R13 ; [+2]
       83 MOVE                             R6 R11
       84 JUMP                             ; [+2]
       85 FORGLOOP                         R7 2 ; [-16]
       87 JUMPIFNOTEQKNIL                  R6 ; [+7]
       89 GETIMPORT                        R7 K3 [error]
       91 MOVE                             R9 R5
       92 LOADK                            R10 K24 [" button not found in LookSaveMenu popover"]
       93 CONCAT                           R8 R9 R10
       94 CALL                             R7 1 0
       95 LOADK                            R9 K10 ["TextButton"]
       96 NAMECALL                         R7 R6 K19 ["IsA"]
       98 CALL                             R7 2 1
       99 JUMPIF                           R7 ; [+6]
      100 GETIMPORT                        R7 K3 [error]
      102 MOVE                             R9 R5
      103 LOADK                            R10 K25 [" button is not a button"]
      104 CONCAT                           R8 R9 R10
      105 CALL                             R7 1 0
      106 GETUPVAL                         R7 2
      107 GETTABLEKS                       R7 R7 K12 ["act"]
      109 NEWCLOSURE                       R8 P1
      110 CAPTURE                          REF R6
      111 CAPTURE                          UPVAL U1
      112 CALL                             R7 1 0
      113 CLOSEUPVALS                      R6
      114 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["openAssetImportDialog"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["addAssetIdsToImportDialog"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["clickAddItemsButtonImportDialog"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AvatarCompatibilityPreviewer"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K11 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["Framework"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K11 ["Packages"]
       37 GETTABLEKS                       R6 R6 K14 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R2 K11 ["Packages"]
       44 GETTABLEKS                       R7 R7 K15 ["ReactRoblox"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R2 K11 ["Packages"]
       51 GETTABLEKS                       R8 R8 K16 ["Dev"]
       53 GETTABLEKS                       R8 R8 K17 ["ReactTestingLibrary"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R2 K11 ["Packages"]
       60 GETTABLEKS                       R9 R9 K18 ["Promise"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R10 R2 K11 ["Packages"]
       67 GETTABLEKS                       R10 R10 K19 ["Dash"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETTABLEKS                       R11 R2 K20 ["Src"]
       74 GETTABLEKS                       R11 R11 K21 ["Types"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K10 [require]
       79 GETTABLEKS                       R12 R2 K20 ["Src"]
       81 GETTABLEKS                       R12 R12 K22 ["Util"]
       83 GETTABLEKS                       R12 R12 K23 ["Url"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R13 R2 K20 ["Src"]
       90 GETTABLEKS                       R13 R13 K22 ["Util"]
       92 GETTABLEKS                       R13 R13 K24 ["Constants"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K10 [require]
       97 GETTABLEKS                       R14 R2 K20 ["Src"]
       99 GETTABLEKS                       R14 R14 K22 ["Util"]
      101 GETTABLEKS                       R14 R14 K25 ["LookComposerUtils"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K10 [require]
      106 GETTABLEKS                       R15 R2 K20 ["Src"]
      108 GETTABLEKS                       R15 R15 K22 ["Util"]
      110 GETTABLEKS                       R15 R15 K26 ["getPaletteFromKey"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K10 [require]
      115 GETTABLEKS                       R16 R2 K27 ["RhodiumTests"]
      117 GETTABLEKS                       R16 R16 K28 ["RhodiumTestHelpers"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K10 [require]
      122 GETTABLEKS                       R17 R2 K20 ["Src"]
      124 GETTABLEKS                       R17 R17 K29 ["Components"]
      126 GETTABLEKS                       R17 R17 K30 ["AvatarEditorServiceContext"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K10 [require]
      131 GETTABLEKS                       R18 R2 K20 ["Src"]
      133 GETTABLEKS                       R18 R18 K29 ["Components"]
      135 GETTABLEKS                       R18 R18 K31 ["LookContext"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K10 [require]
      140 GETTABLEKS                       R19 R2 K20 ["Src"]
      142 GETTABLEKS                       R19 R19 K29 ["Components"]
      144 GETTABLEKS                       R19 R19 K32 ["DEPRECATED_LookContext"]
      146 CALL                             R18 1 1
      147 GETTABLEKS                       R19 R4 K33 ["TestHelpers"]
      149 GETTABLEKS                       R19 R19 K34 ["provideMockContext"]
      151 GETIMPORT                        R20 K10 [require]
      153 GETTABLEKS                       R21 R2 K27 ["RhodiumTests"]
      155 GETTABLEKS                       R21 R21 K35 ["createMockContext"]
      157 CALL                             R20 1 1
      158 NEWTABLE                         R21 64 0
      160 LOADK                            R22 K36 ["Something unexpected went wrong with the look preview request, please try again later or file a bug report."]
      161 SETTABLEKS                       R22 R21 K37 ["LOOK_PREVIEW_FAILURE_MESSAGE"]
      163 LOADK                            R22 K38 ["Some items are not valid."]
      164 SETTABLEKS                       R22 R21 K39 ["LOOK_VALIDATION_FAILURE_MESSAGE"]
      166 LOADK                            R22 K40 ["Your look creation failed because the text was moderated."]
      167 SETTABLEKS                       R22 R21 K41 ["LOOK_CREATION_FAILURE_MESSAGE"]
      169 LOADK                            R22 K42 ["TestGroupName"]
      170 SETTABLEKS                       R22 R21 K43 ["DEFAULT_GROUP_NAME"]
      172 LOADK                            R22 K44 ["Test Name"]
      173 SETTABLEKS                       R22 R21 K45 ["VALID_NAME"]
      175 LOADK                            R22 K46 [122333]
      176 SETTABLEKS                       R22 R21 K47 ["GROUP_ID"]
      178 NEWTABLE                         R22 0 5
      180 LOADN                            R23 111
      181 LOADN                            R24 222
      182 LOADN                            R25 333
      183 LOADN                            R26 444
      184 LOADN                            R27 555
      185 SETLIST                          R22 R23 5 [1]
      187 SETTABLEKS                       R22 R21 K48 ["USER_ASSET_IDS"]
      189 NEWTABLE                         R22 0 5
      191 LOADN                            R23 666
      192 LOADN                            R24 777
      193 LOADN                            R25 888
      194 LOADN                            R26 999
      195 LOADN                            R27 0
      196 SETLIST                          R22 R23 5 [1]
      198 SETTABLEKS                       R22 R21 K49 ["GROUP_ASSET_IDS"]
      200 LOADN                            R22 1111
      201 SETTABLEKS                       R22 R21 K50 ["AVATAR_LOOK_ASSET_ID"]
      203 LOADN                            R22 60
      204 SETTABLEKS                       R22 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      206 NEWTABLE                         R22 0 6
      208 LOADN                            R23 2001
      209 LOADN                            R24 2002
      210 LOADN                            R25 2003
      211 LOADN                            R26 2004
      212 LOADN                            R27 2005
      213 LOADN                            R28 2006
      214 SETLIST                          R22 R23 6 [1]
      216 SETTABLEKS                       R22 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      218 NEWTABLE                         R22 16 0
      220 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      222 GETTABLEN                        R23 R24 1
      223 DUPTABLE                         R24 K59 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Eyebrows", ["id"]}]
      224 GETIMPORT                        R25 K63 [Enum.AssetType.EyebrowAccessory]
      226 GETTABLEKS                       R25 R25 K64 ["Value"]
      228 SETTABLEKS                       R25 R24 K55 ["assetType"]
      230 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      232 GETTABLEN                        R25 R26 1
      233 SETTABLEKS                       R25 R24 K58 ["id"]
      235 SETTABLE                         R24 R22 R23
      236 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      238 GETTABLEN                        R23 R24 2
      239 DUPTABLE                         R24 K66 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Eyelashes", ["id"]}]
      240 GETIMPORT                        R25 K68 [Enum.AssetType.EyelashAccessory]
      242 GETTABLEKS                       R25 R25 K64 ["Value"]
      244 SETTABLEKS                       R25 R24 K55 ["assetType"]
      246 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      248 GETTABLEN                        R25 R26 2
      249 SETTABLEKS                       R25 R24 K58 ["id"]
      251 SETTABLE                         R24 R22 R23
      252 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      254 GETTABLEN                        R23 R24 3
      255 DUPTABLE                         R24 K70 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "FaceMakeup", ["id"]}]
      256 GETIMPORT                        R25 K71 [Enum.AssetType.FaceMakeup]
      258 GETTABLEKS                       R25 R25 K64 ["Value"]
      260 SETTABLEKS                       R25 R24 K55 ["assetType"]
      262 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      264 GETTABLEN                        R25 R26 3
      265 SETTABLEKS                       R25 R24 K58 ["id"]
      267 SETTABLE                         R24 R22 R23
      268 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      270 GETTABLEN                        R23 R24 4
      271 DUPTABLE                         R24 K73 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LipMakeup", ["id"]}]
      272 GETIMPORT                        R25 K74 [Enum.AssetType.LipMakeup]
      274 GETTABLEKS                       R25 R25 K64 ["Value"]
      276 SETTABLEKS                       R25 R24 K55 ["assetType"]
      278 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      280 GETTABLEN                        R25 R26 4
      281 SETTABLEKS                       R25 R24 K58 ["id"]
      283 SETTABLE                         R24 R22 R23
      284 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      286 GETTABLEN                        R23 R24 5
      287 DUPTABLE                         R24 K76 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "EyeMakeup", ["id"]}]
      288 GETIMPORT                        R25 K77 [Enum.AssetType.EyeMakeup]
      290 GETTABLEKS                       R25 R25 K64 ["Value"]
      292 SETTABLEKS                       R25 R24 K55 ["assetType"]
      294 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      296 GETTABLEN                        R25 R26 5
      297 SETTABLEKS                       R25 R24 K58 ["id"]
      299 SETTABLE                         R24 R22 R23
      300 GETTABLEKS                       R24 R21 K49 ["GROUP_ASSET_IDS"]
      302 GETTABLEN                        R23 R24 1
      303 DUPTABLE                         R24 K79 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "Eyebrows", ["id"]}]
      304 GETIMPORT                        R25 K63 [Enum.AssetType.EyebrowAccessory]
      306 GETTABLEKS                       R25 R25 K64 ["Value"]
      308 SETTABLEKS                       R25 R24 K55 ["assetType"]
      310 GETTABLEKS                       R26 R21 K49 ["GROUP_ASSET_IDS"]
      312 GETTABLEN                        R25 R26 1
      313 SETTABLEKS                       R25 R24 K58 ["id"]
      315 SETTABLE                         R24 R22 R23
      316 GETTABLEKS                       R24 R21 K49 ["GROUP_ASSET_IDS"]
      318 GETTABLEN                        R23 R24 2
      319 DUPTABLE                         R24 K80 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "Eyelashes", ["id"]}]
      320 GETIMPORT                        R25 K68 [Enum.AssetType.EyelashAccessory]
      322 GETTABLEKS                       R25 R25 K64 ["Value"]
      324 SETTABLEKS                       R25 R24 K55 ["assetType"]
      326 GETTABLEKS                       R26 R21 K49 ["GROUP_ASSET_IDS"]
      328 GETTABLEN                        R25 R26 2
      329 SETTABLEKS                       R25 R24 K58 ["id"]
      331 SETTABLE                         R24 R22 R23
      332 GETTABLEKS                       R24 R21 K49 ["GROUP_ASSET_IDS"]
      334 GETTABLEN                        R23 R24 3
      335 DUPTABLE                         R24 K81 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "FaceMakeup", ["id"]}]
      336 GETIMPORT                        R25 K71 [Enum.AssetType.FaceMakeup]
      338 GETTABLEKS                       R25 R25 K64 ["Value"]
      340 SETTABLEKS                       R25 R24 K55 ["assetType"]
      342 GETTABLEKS                       R26 R21 K49 ["GROUP_ASSET_IDS"]
      344 GETTABLEN                        R25 R26 3
      345 SETTABLEKS                       R25 R24 K58 ["id"]
      347 SETTABLE                         R24 R22 R23
      348 GETTABLEKS                       R24 R21 K49 ["GROUP_ASSET_IDS"]
      350 GETTABLEN                        R23 R24 4
      351 DUPTABLE                         R24 K82 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "EyeMakeup", ["id"]}]
      352 GETIMPORT                        R25 K74 [Enum.AssetType.LipMakeup]
      354 GETTABLEKS                       R25 R25 K64 ["Value"]
      356 SETTABLEKS                       R25 R24 K55 ["assetType"]
      358 GETTABLEKS                       R26 R21 K49 ["GROUP_ASSET_IDS"]
      360 GETTABLEN                        R25 R26 4
      361 SETTABLEKS                       R25 R24 K58 ["id"]
      363 SETTABLE                         R24 R22 R23
      364 GETTABLEKS                       R24 R21 K49 ["GROUP_ASSET_IDS"]
      366 GETTABLEN                        R23 R24 5
      367 DUPTABLE                         R24 K83 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "LipMakeup", ["id"]}]
      368 GETIMPORT                        R25 K77 [Enum.AssetType.EyeMakeup]
      370 GETTABLEKS                       R25 R25 K64 ["Value"]
      372 SETTABLEKS                       R25 R24 K55 ["assetType"]
      374 GETTABLEKS                       R26 R21 K49 ["GROUP_ASSET_IDS"]
      376 GETTABLEN                        R25 R26 5
      377 SETTABLEKS                       R25 R24 K58 ["id"]
      379 SETTABLE                         R24 R22 R23
      380 SETTABLEKS                       R22 R21 K84 ["MOCK_ITEM_DATA"]
      382 NEWTABLE                         R22 16 0
      384 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      386 GETTABLEN                        R23 R24 1
      387 DUPTABLE                         R24 K95 [{["Id"], ["Name"] = "User Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      388 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      390 GETTABLEN                        R25 R26 1
      391 SETTABLEKS                       R25 R24 K85 ["Id"]
      393 GETIMPORT                        R25 K63 [Enum.AssetType.EyebrowAccessory]
      395 GETTABLEKS                       R25 R25 K86 ["Name"]
      397 SETTABLEKS                       R25 R24 K61 ["AssetType"]
      399 SETTABLE                         R24 R22 R23
      400 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      402 GETTABLEN                        R23 R24 2
      403 DUPTABLE                         R24 K97 [{["Id"], ["Name"] = "User Asset 2", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      404 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      406 GETTABLEN                        R25 R26 2
      407 SETTABLEKS                       R25 R24 K85 ["Id"]
      409 GETIMPORT                        R25 K68 [Enum.AssetType.EyelashAccessory]
      411 GETTABLEKS                       R25 R25 K86 ["Name"]
      413 SETTABLEKS                       R25 R24 K61 ["AssetType"]
      415 SETTABLE                         R24 R22 R23
      416 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      418 GETTABLEN                        R23 R24 3
      419 DUPTABLE                         R24 K99 [{["Id"], ["Name"] = "User Asset 3", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      420 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      422 GETTABLEN                        R25 R26 3
      423 SETTABLEKS                       R25 R24 K85 ["Id"]
      425 GETIMPORT                        R25 K71 [Enum.AssetType.FaceMakeup]
      427 GETTABLEKS                       R25 R25 K86 ["Name"]
      429 SETTABLEKS                       R25 R24 K61 ["AssetType"]
      431 SETTABLE                         R24 R22 R23
      432 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      434 GETTABLEN                        R23 R24 4
      435 DUPTABLE                         R24 K101 [{["Id"], ["Name"] = "User Asset 4", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      436 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      438 GETTABLEN                        R25 R26 4
      439 SETTABLEKS                       R25 R24 K85 ["Id"]
      441 GETIMPORT                        R25 K74 [Enum.AssetType.LipMakeup]
      443 GETTABLEKS                       R25 R25 K86 ["Name"]
      445 SETTABLEKS                       R25 R24 K61 ["AssetType"]
      447 SETTABLE                         R24 R22 R23
      448 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      450 GETTABLEN                        R23 R24 5
      451 DUPTABLE                         R24 K103 [{["Id"], ["Name"] = "User Asset 5", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      452 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      454 GETTABLEN                        R25 R26 5
      455 SETTABLEKS                       R25 R24 K85 ["Id"]
      457 GETIMPORT                        R25 K77 [Enum.AssetType.EyeMakeup]
      459 GETTABLEKS                       R25 R25 K86 ["Name"]
      461 SETTABLEKS                       R25 R24 K61 ["AssetType"]
      463 SETTABLE                         R24 R22 R23
      464 GETTABLEKS                       R23 R21 K50 ["AVATAR_LOOK_ASSET_ID"]
      466 DUPTABLE                         R24 K105 [{["Id"], ["Name"] = "Avatar Look Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      467 GETTABLEKS                       R25 R21 K50 ["AVATAR_LOOK_ASSET_ID"]
      469 SETTABLEKS                       R25 R24 K85 ["Id"]
      471 GETIMPORT                        R25 K107 [Enum.AssetType.ShirtAccessory]
      473 GETTABLEKS                       R25 R25 K86 ["Name"]
      475 SETTABLEKS                       R25 R24 K61 ["AssetType"]
      477 SETTABLE                         R24 R22 R23
      478 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      480 GETTABLEN                        R23 R24 1
      481 DUPTABLE                         R24 K109 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      482 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      484 GETTABLEN                        R25 R26 1
      485 SETTABLEKS                       R25 R24 K85 ["Id"]
      487 GETIMPORT                        R25 K111 [Enum.AssetType.DynamicHead]
      489 GETTABLEKS                       R25 R25 K86 ["Name"]
      491 SETTABLEKS                       R25 R24 K61 ["AssetType"]
      493 SETTABLE                         R24 R22 R23
      494 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      496 GETTABLEN                        R23 R24 2
      497 DUPTABLE                         R24 K113 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 2", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      498 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      500 GETTABLEN                        R25 R26 2
      501 SETTABLEKS                       R25 R24 K85 ["Id"]
      503 GETIMPORT                        R25 K115 [Enum.AssetType.Torso]
      505 GETTABLEKS                       R25 R25 K86 ["Name"]
      507 SETTABLEKS                       R25 R24 K61 ["AssetType"]
      509 SETTABLE                         R24 R22 R23
      510 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      512 GETTABLEN                        R23 R24 3
      513 DUPTABLE                         R24 K117 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 3", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      514 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      516 GETTABLEN                        R25 R26 3
      517 SETTABLEKS                       R25 R24 K85 ["Id"]
      519 GETIMPORT                        R25 K119 [Enum.AssetType.LeftArm]
      521 GETTABLEKS                       R25 R25 K86 ["Name"]
      523 SETTABLEKS                       R25 R24 K61 ["AssetType"]
      525 SETTABLE                         R24 R22 R23
      526 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      528 GETTABLEN                        R23 R24 4
      529 DUPTABLE                         R24 K121 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 4", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      530 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      532 GETTABLEN                        R25 R26 4
      533 SETTABLEKS                       R25 R24 K85 ["Id"]
      535 GETIMPORT                        R25 K123 [Enum.AssetType.LeftLeg]
      537 GETTABLEKS                       R25 R25 K86 ["Name"]
      539 SETTABLEKS                       R25 R24 K61 ["AssetType"]
      541 SETTABLE                         R24 R22 R23
      542 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      544 GETTABLEN                        R23 R24 5
      545 DUPTABLE                         R24 K125 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 5", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      546 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      548 GETTABLEN                        R25 R26 5
      549 SETTABLEKS                       R25 R24 K85 ["Id"]
      551 GETIMPORT                        R25 K127 [Enum.AssetType.RightArm]
      553 GETTABLEKS                       R25 R25 K86 ["Name"]
      555 SETTABLEKS                       R25 R24 K61 ["AssetType"]
      557 SETTABLE                         R24 R22 R23
      558 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      560 GETTABLEN                        R23 R24 6
      561 DUPTABLE                         R24 K129 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 6", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      562 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      564 GETTABLEN                        R25 R26 6
      565 SETTABLEKS                       R25 R24 K85 ["Id"]
      567 GETIMPORT                        R25 K131 [Enum.AssetType.RightLeg]
      569 GETTABLEKS                       R25 R25 K86 ["Name"]
      571 SETTABLEKS                       R25 R24 K61 ["AssetType"]
      573 SETTABLE                         R24 R22 R23
      574 SETTABLEKS                       R22 R21 K132 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
      576 NEWTABLE                         R22 1 0
      578 GETTABLEKS                       R23 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      580 DUPTABLE                         R24 K134 [{["Id"], ["Name"], ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["BundledItems"]}]
      581 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      583 SETTABLEKS                       R25 R24 K85 ["Id"]
      585 LOADK                            R26 K135 ["Test Bundle"]
      586 GETTABLEKS                       R28 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      588 FASTCALL1                        TOSTRING R28 ; [+2]
      589 GETIMPORT                        R27 K137 [tostring]
      591 CALL                             R27 1 1
      592 CONCAT                           R25 R26 R27
      593 SETTABLEKS                       R25 R24 K86 ["Name"]
      595 NEWTABLE                         R25 0 6
      597 DUPTABLE                         R26 K138 [{"Id"}]
      598 GETTABLEKS                       R28 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      600 GETTABLEN                        R27 R28 1
      601 SETTABLEKS                       R27 R26 K85 ["Id"]
      603 DUPTABLE                         R27 K138 [{"Id"}]
      604 GETTABLEKS                       R29 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      606 GETTABLEN                        R28 R29 2
      607 SETTABLEKS                       R28 R27 K85 ["Id"]
      609 DUPTABLE                         R28 K138 [{"Id"}]
      610 GETTABLEKS                       R30 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      612 GETTABLEN                        R29 R30 3
      613 SETTABLEKS                       R29 R28 K85 ["Id"]
      615 DUPTABLE                         R29 K138 [{"Id"}]
      616 GETTABLEKS                       R31 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      618 GETTABLEN                        R30 R31 4
      619 SETTABLEKS                       R30 R29 K85 ["Id"]
      621 DUPTABLE                         R30 K138 [{"Id"}]
      622 GETTABLEKS                       R32 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      624 GETTABLEN                        R31 R32 5
      625 SETTABLEKS                       R31 R30 K85 ["Id"]
      627 DUPTABLE                         R31 K138 [{"Id"}]
      628 GETTABLEKS                       R33 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      630 GETTABLEN                        R32 R33 6
      631 SETTABLEKS                       R32 R31 K85 ["Id"]
      633 SETLIST                          R25 R26 6 [1]
      635 SETTABLEKS                       R25 R24 K133 ["BundledItems"]
      637 SETTABLE                         R24 R22 R23
      638 SETTABLEKS                       R22 R21 K139 ["MOCK_AVATAR_EDITOR_SERVICE_BUNDLE_DETAILS"]
      640 NEWTABLE                         R22 8 0
      642 GETTABLEKS                       R23 R21 K50 ["AVATAR_LOOK_ASSET_ID"]
      644 DUPTABLE                         R24 K141 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Shirts", ["id"]}]
      645 GETIMPORT                        R25 K107 [Enum.AssetType.ShirtAccessory]
      647 GETTABLEKS                       R25 R25 K64 ["Value"]
      649 SETTABLEKS                       R25 R24 K55 ["assetType"]
      651 GETTABLEKS                       R25 R21 K50 ["AVATAR_LOOK_ASSET_ID"]
      653 SETTABLEKS                       R25 R24 K58 ["id"]
      655 SETTABLE                         R24 R22 R23
      656 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      658 GETTABLEN                        R23 R24 1
      659 DUPTABLE                         R24 K144 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "HeadBodyPart", ["id"], ["bundleId"]}]
      660 GETIMPORT                        R25 K111 [Enum.AssetType.DynamicHead]
      662 GETTABLEKS                       R25 R25 K64 ["Value"]
      664 SETTABLEKS                       R25 R24 K55 ["assetType"]
      666 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      668 GETTABLEN                        R25 R26 1
      669 SETTABLEKS                       R25 R24 K58 ["id"]
      671 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      673 SETTABLEKS                       R25 R24 K143 ["bundleId"]
      675 SETTABLE                         R24 R22 R23
      676 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      678 GETTABLEN                        R23 R24 2
      679 DUPTABLE                         R24 K145 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Torso", ["id"], ["bundleId"]}]
      680 GETIMPORT                        R25 K115 [Enum.AssetType.Torso]
      682 GETTABLEKS                       R25 R25 K64 ["Value"]
      684 SETTABLEKS                       R25 R24 K55 ["assetType"]
      686 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      688 GETTABLEN                        R25 R26 2
      689 SETTABLEKS                       R25 R24 K58 ["id"]
      691 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      693 SETTABLEKS                       R25 R24 K143 ["bundleId"]
      695 SETTABLE                         R24 R22 R23
      696 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      698 GETTABLEN                        R23 R24 3
      699 DUPTABLE                         R24 K146 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LeftArm", ["id"], ["bundleId"]}]
      700 GETIMPORT                        R25 K119 [Enum.AssetType.LeftArm]
      702 GETTABLEKS                       R25 R25 K64 ["Value"]
      704 SETTABLEKS                       R25 R24 K55 ["assetType"]
      706 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      708 GETTABLEN                        R25 R26 3
      709 SETTABLEKS                       R25 R24 K58 ["id"]
      711 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      713 SETTABLEKS                       R25 R24 K143 ["bundleId"]
      715 SETTABLE                         R24 R22 R23
      716 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      718 GETTABLEN                        R23 R24 4
      719 DUPTABLE                         R24 K147 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LeftLeg", ["id"], ["bundleId"]}]
      720 GETIMPORT                        R25 K123 [Enum.AssetType.LeftLeg]
      722 GETTABLEKS                       R25 R25 K64 ["Value"]
      724 SETTABLEKS                       R25 R24 K55 ["assetType"]
      726 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      728 GETTABLEN                        R25 R26 4
      729 SETTABLEKS                       R25 R24 K58 ["id"]
      731 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      733 SETTABLEKS                       R25 R24 K143 ["bundleId"]
      735 SETTABLE                         R24 R22 R23
      736 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      738 GETTABLEN                        R23 R24 5
      739 DUPTABLE                         R24 K148 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "RightArm", ["id"], ["bundleId"]}]
      740 GETIMPORT                        R25 K127 [Enum.AssetType.RightArm]
      742 GETTABLEKS                       R25 R25 K64 ["Value"]
      744 SETTABLEKS                       R25 R24 K55 ["assetType"]
      746 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      748 GETTABLEN                        R25 R26 5
      749 SETTABLEKS                       R25 R24 K58 ["id"]
      751 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      753 SETTABLEKS                       R25 R24 K143 ["bundleId"]
      755 SETTABLE                         R24 R22 R23
      756 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      758 GETTABLEN                        R23 R24 6
      759 DUPTABLE                         R24 K149 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "RightLeg", ["id"], ["bundleId"]}]
      760 GETIMPORT                        R25 K131 [Enum.AssetType.RightLeg]
      762 GETTABLEKS                       R25 R25 K64 ["Value"]
      764 SETTABLEKS                       R25 R24 K55 ["assetType"]
      766 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      768 GETTABLEN                        R25 R26 6
      769 SETTABLEKS                       R25 R24 K58 ["id"]
      771 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      773 SETTABLEKS                       R25 R24 K143 ["bundleId"]
      775 SETTABLE                         R24 R22 R23
      776 SETTABLEKS                       R22 R21 K150 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
      778 NEWTABLE                         R22 1 0
      780 GETTABLEKS                       R23 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      782 DUPTABLE                         R24 K154 [{["id"], ["name"], ["bundleType"] = 1, ["creatorType"] = "User", ["assetsInBundle"]}]
      783 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      785 SETTABLEKS                       R25 R24 K58 ["id"]
      787 LOADK                            R26 K135 ["Test Bundle"]
      788 GETTABLEKS                       R28 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      790 FASTCALL1                        TOSTRING R28 ; [+2]
      791 GETIMPORT                        R27 K137 [tostring]
      793 CALL                             R27 1 1
      794 CONCAT                           R25 R26 R27
      795 SETTABLEKS                       R25 R24 K151 ["name"]
      797 NEWTABLE                         R25 0 6
      799 DUPTABLE                         R26 K156 [{["assetType"], ["id"], ["isIncluded"] = True}]
      800 GETIMPORT                        R27 K111 [Enum.AssetType.DynamicHead]
      802 GETTABLEKS                       R27 R27 K64 ["Value"]
      804 SETTABLEKS                       R27 R26 K55 ["assetType"]
      806 GETTABLEKS                       R28 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      808 GETTABLEN                        R27 R28 1
      809 SETTABLEKS                       R27 R26 K58 ["id"]
      811 DUPTABLE                         R27 K156 [{["assetType"], ["id"], ["isIncluded"] = True}]
      812 GETIMPORT                        R28 K115 [Enum.AssetType.Torso]
      814 GETTABLEKS                       R28 R28 K64 ["Value"]
      816 SETTABLEKS                       R28 R27 K55 ["assetType"]
      818 GETTABLEKS                       R29 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      820 GETTABLEN                        R28 R29 2
      821 SETTABLEKS                       R28 R27 K58 ["id"]
      823 DUPTABLE                         R28 K156 [{["assetType"], ["id"], ["isIncluded"] = True}]
      824 GETIMPORT                        R29 K119 [Enum.AssetType.LeftArm]
      826 GETTABLEKS                       R29 R29 K64 ["Value"]
      828 SETTABLEKS                       R29 R28 K55 ["assetType"]
      830 GETTABLEKS                       R30 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      832 GETTABLEN                        R29 R30 3
      833 SETTABLEKS                       R29 R28 K58 ["id"]
      835 DUPTABLE                         R29 K156 [{["assetType"], ["id"], ["isIncluded"] = True}]
      836 GETIMPORT                        R30 K123 [Enum.AssetType.LeftLeg]
      838 GETTABLEKS                       R30 R30 K64 ["Value"]
      840 SETTABLEKS                       R30 R29 K55 ["assetType"]
      842 GETTABLEKS                       R31 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      844 GETTABLEN                        R30 R31 4
      845 SETTABLEKS                       R30 R29 K58 ["id"]
      847 DUPTABLE                         R30 K156 [{["assetType"], ["id"], ["isIncluded"] = True}]
      848 GETIMPORT                        R31 K127 [Enum.AssetType.RightArm]
      850 GETTABLEKS                       R31 R31 K64 ["Value"]
      852 SETTABLEKS                       R31 R30 K55 ["assetType"]
      854 GETTABLEKS                       R32 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      856 GETTABLEN                        R31 R32 5
      857 SETTABLEKS                       R31 R30 K58 ["id"]
      859 DUPTABLE                         R31 K156 [{["assetType"], ["id"], ["isIncluded"] = True}]
      860 GETIMPORT                        R32 K131 [Enum.AssetType.RightLeg]
      862 GETTABLEKS                       R32 R32 K64 ["Value"]
      864 SETTABLEKS                       R32 R31 K55 ["assetType"]
      866 GETTABLEKS                       R33 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      868 GETTABLEN                        R32 R33 6
      869 SETTABLEKS                       R32 R31 K58 ["id"]
      871 SETLIST                          R25 R26 6 [1]
      873 SETTABLEKS                       R25 R24 K153 ["assetsInBundle"]
      875 SETTABLE                         R24 R22 R23
      876 SETTABLEKS                       R22 R21 K157 ["MOCK_AVATAR_LOOK_BUNDLE_DATA"]
      878 DUPCLOSURE                       R22 K158 [PROTO_0]
      879 CAPTURE                          VAL R0
      880 SETTABLEKS                       R22 R21 K159 ["findTextInCoreGui"]
      882 DUPCLOSURE                       R22 K160 [PROTO_1]
      883 CAPTURE                          VAL R21
      884 SETTABLEKS                       R22 R21 K161 ["isConfirmItemsStage"]
      886 DUPCLOSURE                       R22 K162 [PROTO_2]
      887 CAPTURE                          VAL R21
      888 SETTABLEKS                       R22 R21 K163 ["isEditInfoStage"]
      890 DUPCLOSURE                       R22 K164 [PROTO_3]
      891 CAPTURE                          VAL R21
      892 SETTABLEKS                       R22 R21 K165 ["isFailureStage"]
      894 DUPCLOSURE                       R22 K166 [PROTO_4]
      895 CAPTURE                          VAL R21
      896 SETTABLEKS                       R22 R21 K167 ["isSuccessStage"]
      898 GETIMPORT                        R22 K170 [UDim2.fromOffset]
      900 LOADN                            R23 40
      901 LOADN                            R24 40
      902 CALL                             R22 2 1
      903 GETIMPORT                        R23 K170 [UDim2.fromOffset]
      905 LOADN                            R24 400
      906 LOADN                            R25 600
      907 CALL                             R23 2 1
      908 DUPCLOSURE                       R24 K171 [PROTO_5]
      909 CAPTURE                          VAL R23
      910 DUPCLOSURE                       R25 K172 [PROTO_6]
      911 DUPCLOSURE                       R26 K173 [PROTO_8]
      912 CAPTURE                          VAL R0
      913 CAPTURE                          VAL R22
      914 CAPTURE                          VAL R6
      915 CAPTURE                          VAL R7
      916 SETTABLEKS                       R26 R21 K174 ["clickContinueButton"]
      918 DUPCLOSURE                       R26 K175 [PROTO_10]
      919 CAPTURE                          VAL R0
      920 CAPTURE                          VAL R22
      921 CAPTURE                          VAL R6
      922 CAPTURE                          VAL R7
      923 SETTABLEKS                       R26 R21 K176 ["clickBackButton"]
      925 DUPCLOSURE                       R26 K177 [PROTO_13]
      926 CAPTURE                          VAL R0
      927 CAPTURE                          VAL R7
      928 CAPTURE                          VAL R23
      929 CAPTURE                          VAL R24
      930 CAPTURE                          VAL R22
      931 CAPTURE                          VAL R6
      932 SETTABLEKS                       R26 R21 K178 ["changeCreator"]
      934 DUPCLOSURE                       R26 K179 [PROTO_15]
      935 CAPTURE                          VAL R21
      936 CAPTURE                          VAL R0
      937 CAPTURE                          VAL R7
      938 CAPTURE                          VAL R24
      939 CAPTURE                          VAL R22
      940 CAPTURE                          VAL R6
      941 SETTABLEKS                       R26 R21 K180 ["toggleItem"]
      943 DUPCLOSURE                       R26 K181 [PROTO_16]
      944 CAPTURE                          VAL R0
      945 CAPTURE                          VAL R24
      946 CAPTURE                          VAL R22
      947 CAPTURE                          VAL R7
      948 SETTABLEKS                       R26 R21 K182 ["changeColor"]
      950 DUPCLOSURE                       R26 K183 [PROTO_20]
      951 CAPTURE                          VAL R21
      952 CAPTURE                          VAL R0
      953 CAPTURE                          VAL R6
      954 CAPTURE                          VAL R22
      955 CAPTURE                          VAL R7
      956 SETTABLEKS                       R26 R21 K184 ["enterName"]
      958 DUPCLOSURE                       R26 K185 [PROTO_21]
      959 CAPTURE                          VAL R21
      960 SETTABLEKS                       R26 R21 K186 ["checkErrorBannerText"]
      962 DUPCLOSURE                       R26 K187 [PROTO_22]
      963 CAPTURE                          VAL R7
      964 CAPTURE                          VAL R0
      965 SETTABLEKS                       R26 R21 K188 ["queryErrorBannerCloseButton"]
      967 DUPCLOSURE                       R26 K189 [PROTO_24]
      968 CAPTURE                          VAL R21
      969 CAPTURE                          VAL R24
      970 CAPTURE                          VAL R0
      971 CAPTURE                          VAL R22
      972 CAPTURE                          VAL R6
      973 CAPTURE                          VAL R7
      974 SETTABLEKS                       R26 R21 K190 ["clickErrorBannerDismiss"]
      976 DUPCLOSURE                       R26 K191 [PROTO_26]
      977 CAPTURE                          VAL R0
      978 CAPTURE                          VAL R22
      979 CAPTURE                          VAL R6
      980 CAPTURE                          VAL R7
      981 SETTABLEKS                       R26 R21 K192 ["openErrorDialog"]
      983 DUPCLOSURE                       R26 K193 [PROTO_27]
      984 CAPTURE                          VAL R21
      985 SETTABLEKS                       R26 R21 K194 ["checkErrorDialogText"]
      987 DUPCLOSURE                       R26 K195 [PROTO_28]
      988 CAPTURE                          VAL R21
      989 SETTABLEKS                       R26 R21 K196 ["isItemInDetailsList"]
      991 DUPCLOSURE                       R26 K197 [PROTO_29]
      992 CAPTURE                          VAL R21
      993 CAPTURE                          VAL R14
      994 SETTABLEKS                       R26 R21 K198 ["getUserEquippedItems"]
      996 DUPCLOSURE                       R26 K199 [PROTO_30]
      997 CAPTURE                          VAL R21
      998 SETTABLEKS                       R26 R21 K200 ["getMixedCreatorMakeupLookEquippedItems"]
     1000 DUPCLOSURE                       R26 K201 [PROTO_31]
     1001 CAPTURE                          VAL R21
     1002 CAPTURE                          VAL R14
     1003 SETTABLEKS                       R26 R21 K202 ["getGroupEquippedItems"]
     1005 DUPCLOSURE                       R26 K203 [PROTO_32]
     1006 CAPTURE                          VAL R21
     1007 CAPTURE                          VAL R12
     1008 CAPTURE                          VAL R9
     1009 SETTABLEKS                       R26 R21 K204 ["getExpectedLook"]
     1011 LOADNIL                          R26
     1012 SETTABLEKS                       R26 R21 K205 ["lookCreationInfo"]
     1014 DUPCLOSURE                       R26 K206 [PROTO_33]
     1015 CAPTURE                          VAL R21
     1016 DUPCLOSURE                       R27 K207 [PROTO_35]
     1017 CAPTURE                          VAL R8
     1018 CAPTURE                          VAL R1
     1019 CAPTURE                          VAL R11
     1020 CAPTURE                          VAL R21
     1021 CAPTURE                          VAL R13
     1022 DUPCLOSURE                       R28 K208 [PROTO_37]
     1023 CAPTURE                          VAL R8
     1024 CAPTURE                          VAL R1
     1025 CAPTURE                          VAL R11
     1026 CAPTURE                          VAL R21
     1027 CAPTURE                          VAL R27
     1028 DUPCLOSURE                       R29 K209 [PROTO_39]
     1029 CAPTURE                          VAL R8
     1030 DUPCLOSURE                       R30 K210 [PROTO_41]
     1031 CAPTURE                          VAL R8
     1032 CAPTURE                          VAL R1
     1033 CAPTURE                          VAL R11
     1034 CAPTURE                          VAL R21
     1035 CAPTURE                          VAL R27
     1036 DUPCLOSURE                       R31 K211 [PROTO_43]
     1037 CAPTURE                          VAL R8
     1038 CAPTURE                          VAL R11
     1039 CAPTURE                          VAL R1
     1040 CAPTURE                          VAL R21
     1041 CAPTURE                          VAL R27
     1042 DUPCLOSURE                       R32 K212 [PROTO_44]
     1043 CAPTURE                          VAL R13
     1044 CAPTURE                          VAL R28
     1045 CAPTURE                          VAL R29
     1046 CAPTURE                          VAL R30
     1047 CAPTURE                          VAL R31
     1048 CAPTURE                          VAL R27
     1049 SETTABLEKS                       R32 R21 K213 ["createMockLookComposerRequestInternal"]
     1051 DUPCLOSURE                       R32 K214 [PROTO_47]
     1052 CAPTURE                          VAL R0
     1053 CAPTURE                          VAL R20
     1054 CAPTURE                          VAL R5
     1055 CAPTURE                          VAL R3
     1056 CAPTURE                          VAL R19
     1057 CAPTURE                          VAL R6
     1058 CAPTURE                          VAL R7
     1059 SETTABLEKS                       R32 R21 K215 ["createLookComposerDialogTest"]
     1061 DUPCLOSURE                       R32 K216 [PROTO_51]
     1062 CAPTURE                          VAL R21
     1063 CAPTURE                          VAL R15
     1064 CAPTURE                          VAL R5
     1065 CAPTURE                          VAL R16
     1066 CAPTURE                          VAL R17
     1067 CAPTURE                          VAL R18
     1068 SETTABLEKS                       R32 R21 K217 ["lookCreationTest"]
     1070 DUPCLOSURE                       R32 K218 [PROTO_55]
     1071 CAPTURE                          VAL R21
     1072 CAPTURE                          VAL R15
     1073 CAPTURE                          VAL R5
     1074 CAPTURE                          VAL R16
     1075 CAPTURE                          VAL R17
     1076 CAPTURE                          VAL R18
     1077 SETTABLEKS                       R32 R21 K219 ["lookCreationStartFromAssetIdTest"]
     1079 DUPCLOSURE                       R32 K220 [PROTO_57]
     1080 CAPTURE                          VAL R0
     1081 CAPTURE                          VAL R24
     1082 CAPTURE                          VAL R22
     1083 CAPTURE                          VAL R6
     1084 CAPTURE                          VAL R7
     1085 SETTABLEKS                       R32 R21 K221 ["clickAddAssetIdButton"]
     1087 DUPCLOSURE                       R32 K222 [PROTO_60]
     1088 CAPTURE                          VAL R0
     1089 CAPTURE                          VAL R7
     1090 CAPTURE                          VAL R6
     1091 SETTABLEKS                       R32 R21 K223 ["openAssetImportDialog"]
     1093 DUPCLOSURE                       R32 K224 [PROTO_64]
     1094 CAPTURE                          VAL R0
     1095 CAPTURE                          VAL R6
     1096 CAPTURE                          VAL R22
     1097 CAPTURE                          VAL R7
     1098 SETTABLEKS                       R32 R21 K225 ["addAssetIdsToImportDialog"]
     1100 DUPCLOSURE                       R32 K226 [PROTO_66]
     1101 CAPTURE                          VAL R0
     1102 CAPTURE                          VAL R22
     1103 CAPTURE                          VAL R6
     1104 CAPTURE                          VAL R7
     1105 SETTABLEKS                       R32 R21 K227 ["clickAddItemsButtonImportDialog"]
     1107 DUPCLOSURE                       R32 K228 [PROTO_69]
     1108 CAPTURE                          VAL R0
     1109 CAPTURE                          VAL R7
     1110 CAPTURE                          VAL R6
     1111 SETTABLEKS                       R32 R21 K229 ["openLookComposerDialog"]
     1113 DUPCLOSURE                       R32 K230 [PROTO_70]
     1114 CAPTURE                          VAL R21
     1115 SETTABLEKS                       R32 R21 K231 ["importMarketplaceItems"]
     1117 RETURN                           R21 1
