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
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

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
       17 JUMPIFNOTEQKS                    R8 K4 ["User"] ; [+24]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R9 R7 K5 ["paletteKey"]
       22 CALL                             R8 1 1
       23 JUMPIFEQKNIL                     R8 ; [+18]
       25 DUPTABLE                         R11 K8 [{"item", "palette"}]
       26 DUPTABLE                         R12 K11 [{"source", "marketplaceItem"}]
       27 LOADK                            R13 K12 ["marketplace"]
       28 SETTABLEKS                       R13 R12 K9 ["source"]
       30 SETTABLEKS                       R6 R12 K10 ["marketplaceItem"]
       32 SETTABLEKS                       R12 R11 K6 ["item"]
       34 SETTABLEKS                       R8 R11 K7 ["palette"]
       36 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       38 MOVE                             R10 R1
       39 GETIMPORT                        R9 K15 [table.insert]
       41 CALL                             R9 2 0
       42 FORGLOOP                         R3 2 ; [-28]
       44 RETURN                           R1 1

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
       10 JUMPIFNOTEQKS                    R6 K2 ["Group"] ; [+24]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R7 R5 K3 ["paletteKey"]
       15 CALL                             R6 1 1
       16 JUMPIFEQKNIL                     R6 ; [+18]
       18 DUPTABLE                         R9 K6 [{"item", "palette"}]
       19 DUPTABLE                         R10 K9 [{"source", "marketplaceItem"}]
       20 LOADK                            R11 K10 ["marketplace"]
       21 SETTABLEKS                       R11 R10 K7 ["source"]
       23 SETTABLEKS                       R4 R10 K8 ["marketplaceItem"]
       25 SETTABLEKS                       R10 R9 K4 ["item"]
       27 SETTABLEKS                       R6 R9 K5 ["palette"]
       29 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       31 MOVE                             R8 R0
       32 GETIMPORT                        R7 K13 [table.insert]
       34 CALL                             R7 2 0
       35 FORGLOOP                         R1 2 ; [-28]
       37 RETURN                           R0 1

PROTO_32:
        0 JUMPIFEQKS                       R2 K0 ["AvatarLook"] ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 DUPTABLE                         R4 K7 [{"assets", "lookType", "name", "description", "avatarProperties", "groupId"}]
        5 NEWTABLE                         R5 0 0
        7 SETTABLEKS                       R5 R4 K1 ["assets"]
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADK                            R5 K8 ["Avatar"]
       11 JUMP                             ; [+1]
       12 LOADK                            R5 K9 ["Makeup"]
       13 SETTABLEKS                       R5 R4 K2 ["lookType"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K10 ["VALID_NAME"]
       18 SETTABLEKS                       R5 R4 K3 ["name"]
       20 LOADK                            R5 K11 [""]
       21 SETTABLEKS                       R5 R4 K4 ["description"]
       23 DUPTABLE                         R5 K15 [{"playerAvatarType", "bodyColor3s", "scale"}]
       24 LOADK                            R6 K16 ["R15"]
       25 SETTABLEKS                       R6 R5 K12 ["playerAvatarType"]
       27 DUPTABLE                         R6 K23 [{"headColor3", "leftArmColor3", "leftLegColor3", "rightArmColor3", "rightLegColor3", "torsoColor3"}]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K24 ["DEFAULT_SKIN_TONE"]
       31 NAMECALL                         R7 R7 K25 ["ToHex"]
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R6 K17 ["headColor3"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K24 ["DEFAULT_SKIN_TONE"]
       39 NAMECALL                         R7 R7 K25 ["ToHex"]
       41 CALL                             R7 1 1
       42 SETTABLEKS                       R7 R6 K18 ["leftArmColor3"]
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K24 ["DEFAULT_SKIN_TONE"]
       47 NAMECALL                         R7 R7 K25 ["ToHex"]
       49 CALL                             R7 1 1
       50 SETTABLEKS                       R7 R6 K19 ["leftLegColor3"]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K24 ["DEFAULT_SKIN_TONE"]
       55 NAMECALL                         R7 R7 K25 ["ToHex"]
       57 CALL                             R7 1 1
       58 SETTABLEKS                       R7 R6 K20 ["rightArmColor3"]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K24 ["DEFAULT_SKIN_TONE"]
       63 NAMECALL                         R7 R7 K25 ["ToHex"]
       65 CALL                             R7 1 1
       66 SETTABLEKS                       R7 R6 K21 ["rightLegColor3"]
       68 GETUPVAL                         R7 1
       69 GETTABLEKS                       R7 R7 K24 ["DEFAULT_SKIN_TONE"]
       71 NAMECALL                         R7 R7 K25 ["ToHex"]
       73 CALL                             R7 1 1
       74 SETTABLEKS                       R7 R6 K22 ["torsoColor3"]
       76 SETTABLEKS                       R6 R5 K13 ["bodyColor3s"]
       78 DUPTABLE                         R6 K32 [{"bodyType", "depth", "head", "height", "proportion", "width"}]
       79 LOADN                            R7 1
       80 SETTABLEKS                       R7 R6 K26 ["bodyType"]
       82 LOADN                            R7 1
       83 SETTABLEKS                       R7 R6 K27 ["depth"]
       85 LOADN                            R7 1
       86 SETTABLEKS                       R7 R6 K28 ["head"]
       88 LOADN                            R7 1
       89 SETTABLEKS                       R7 R6 K29 ["height"]
       91 LOADN                            R7 1
       92 SETTABLEKS                       R7 R6 K30 ["proportion"]
       94 LOADN                            R7 1
       95 SETTABLEKS                       R7 R6 K31 ["width"]
       97 SETTABLEKS                       R6 R5 K14 ["scale"]
       99 SETTABLEKS                       R5 R4 K5 ["avatarProperties"]
      101 JUMPIFNOTEQKS                    R0 K33 ["Group"] ; [+9]
      103 GETUPVAL                         R6 0
      104 GETTABLEKS                       R6 R6 K34 ["GROUP_ID"]
      106 FASTCALL1                        TOSTRING R6 ; [+2]
      107 GETIMPORT                        R5 K36 [tostring]
      109 CALL                             R5 1 1
      110 JUMP                             ; [+1]
      111 LOADNIL                          R5
      112 SETTABLEKS                       R5 R4 K6 ["groupId"]
      114 NEWTABLE                         R5 0 0
      116 JUMPIFNOT                        R3 ; [+4]
      117 GETUPVAL                         R6 0
      118 GETTABLEKS                       R6 R6 K37 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
      120 JUMP                             ; [+3]
      121 GETUPVAL                         R6 0
      122 GETTABLEKS                       R6 R6 K38 ["MOCK_ITEM_DATA"]
      124 LOADNIL                          R7
      125 JUMPIFNOT                        R1 ; [+16]
      126 NEWTABLE                         R7 0 0
      128 MOVE                             R8 R1
      129 LOADNIL                          R9
      130 LOADNIL                          R10
      131 FORGPREP                         R8
      132 GETTABLE                         R15 R6 R12
      133 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      135 MOVE                             R14 R7
      136 GETIMPORT                        R13 K41 [table.insert]
      138 CALL                             R13 2 0
      139 FORGLOOP                         R8 2 ; [-8]
      141 JUMP                             ; [+1]
      142 MOVE                             R7 R6
      143 MOVE                             R8 R7
      144 LOADNIL                          R9
      145 LOADNIL                          R10
      146 FORGPREP                         R8
      147 GETTABLEKS                       R13 R12 K42 ["creatorType"]
      149 JUMPIFNOTEQ                      R13 R0 ; [+67]
      151 DUPTABLE                         R13 K45 [{"id", "meta"}]
      152 GETTABLEKS                       R14 R12 K43 ["id"]
      154 SETTABLEKS                       R14 R13 K43 ["id"]
      156 DUPTABLE                         R14 K49 [{"order", "puffiness", "version"}]
      157 LOADN                            R15 0
      158 SETTABLEKS                       R15 R14 K46 ["order"]
      160 LOADN                            R15 1
      161 SETTABLEKS                       R15 R14 K47 ["puffiness"]
      163 LOADN                            R15 1
      164 SETTABLEKS                       R15 R14 K48 ["version"]
      166 SETTABLEKS                       R14 R13 K44 ["meta"]
      168 GETTABLEKS                       R14 R12 K50 ["bundleId"]
      170 JUMPIFNOT                        R14 ; [+4]
      171 GETTABLEKS                       R14 R12 K50 ["bundleId"]
      173 SETTABLEKS                       R14 R13 K50 ["bundleId"]
      175 JUMPIF                           R3 ; [+33]
      176 GETTABLEKS                       R14 R12 K51 ["assetType"]
      178 GETIMPORT                        R15 K55 [Enum.AssetType.FaceMakeup]
      180 GETTABLEKS                       R15 R15 K56 ["Value"]
      182 JUMPIFEQ                         R14 R15 ; [+17]
      184 GETTABLEKS                       R14 R12 K51 ["assetType"]
      186 GETIMPORT                        R15 K58 [Enum.AssetType.LipMakeup]
      188 GETTABLEKS                       R15 R15 K56 ["Value"]
      190 JUMPIFEQ                         R14 R15 ; [+9]
      192 GETTABLEKS                       R14 R12 K51 ["assetType"]
      194 GETIMPORT                        R15 K60 [Enum.AssetType.EyeMakeup]
      196 GETTABLEKS                       R15 R15 K56 ["Value"]
      198 JUMPIFNOTEQ                      R14 R15 ; [+10]
      200 LOADN                            R16 1
      201 FASTCALL3                        TABLE_INSERT R5 R16 R13
      203 MOVE                             R15 R5
      204 MOVE                             R17 R13
      205 GETIMPORT                        R14 K41 [table.insert]
      207 CALL                             R14 3 0
      208 JUMP                             ; [+8]
      209 GETTABLEKS                       R15 R4 K1 ["assets"]
      211 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
      213 MOVE                             R16 R13
      214 GETIMPORT                        R14 K41 [table.insert]
      216 CALL                             R14 2 0
      217 FORGLOOP                         R8 2 ; [-71]
      219 JUMPIFNOT                        R3 ; [+1]
      220 JUMP                             ; [+13]
      221 GETUPVAL                         R8 2
      222 GETTABLEKS                       R8 R8 K61 ["reverse"]
      224 GETUPVAL                         R9 2
      225 GETTABLEKS                       R9 R9 K62 ["append"]
      227 GETTABLEKS                       R10 R4 K1 ["assets"]
      229 MOVE                             R11 R5
      230 CALL                             R9 2 -1
      231 CALL                             R8 -1 1
      232 SETTABLEKS                       R8 R4 K1 ["assets"]
      234 LOADN                            R8 1
      235 GETTABLEKS                       R9 R4 K1 ["assets"]
      237 LOADNIL                          R10
      238 LOADNIL                          R11
      239 FORGPREP                         R9
      240 GETTABLEKS                       R14 R13 K44 ["meta"]
      242 SETTABLEKS                       R8 R14 K46 ["order"]
      244 ADDK                             R8 R8 K63 [1]
      245 FORGLOOP                         R9 2 ; [-6]
      247 RETURN                           R4 1

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
       27 DUPTABLE                         R4 K7 [{"id", "look"}]
       28 LOADN                            R5 1
       29 SETTABLEKS                       R5 R4 K5 ["id"]
       31 DUPTABLE                         R5 K9 [{"items"}]
       32 SETTABLEKS                       R3 R5 K8 ["items"]
       34 SETTABLEKS                       R5 R4 K6 ["look"]
       36 NEWTABLE                         R5 0 0
       38 GETTABLEKS                       R6 R2 K10 ["assets"]
       40 LOADNIL                          R7
       41 LOADNIL                          R8
       42 FORGPREP                         R6
       43 GETTABLEKS                       R12 R10 K5 ["id"]
       45 GETUPVAL                         R14 3
       46 GETTABLEKS                       R14 R14 K11 ["MOCK_ITEM_DATA"]
       48 GETTABLE                         R13 R14 R12
       49 JUMPIFNOT                        R13 ; [+2]
       50 MOVE                             R11 R13
       51 JUMP                             ; [+4]
       52 GETUPVAL                         R14 3
       53 GETTABLEKS                       R14 R14 K12 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
       55 GETTABLE                         R11 R14 R12
       56 GETTABLEKS                       R12 R10 K13 ["bundleId"]
       58 JUMPIF                           R12 ; [+4]
       59 MOVE                             R12 R11
       60 JUMPIFNOT                        R12 ; [+2]
       61 GETTABLEKS                       R12 R11 K13 ["bundleId"]
       63 JUMPIFNOT                        R12 ; [+61]
       64 GETTABLE                         R13 R5 R12
       65 JUMPIF                           R13 ; [+59]
       66 GETUPVAL                         R14 3
       67 GETTABLEKS                       R14 R14 K14 ["MOCK_AVATAR_LOOK_BUNDLE_DATA"]
       69 GETTABLE                         R13 R14 R12
       70 GETTABLEKS                       R14 R13 K15 ["creatorType"]
       72 DUPTABLE                         R17 K22 [{"id", "name", "itemType", "bundleType", "assetsInBundle", "creator", "priceInRobux"}]
       73 SETTABLEKS                       R12 R17 K5 ["id"]
       75 GETTABLEKS                       R18 R13 K16 ["name"]
       77 SETTABLEKS                       R18 R17 K16 ["name"]
       79 LOADK                            R18 K23 ["Bundle"]
       80 SETTABLEKS                       R18 R17 K17 ["itemType"]
       82 GETTABLEKS                       R18 R13 K18 ["bundleType"]
       84 SETTABLEKS                       R18 R17 K18 ["bundleType"]
       86 GETTABLEKS                       R18 R13 K19 ["assetsInBundle"]
       88 SETTABLEKS                       R18 R17 K19 ["assetsInBundle"]
       90 DUPTABLE                         R18 K26 [{"id", "name", "type", "hasVerifiedBadge"}]
       91 JUMPIFNOTEQKS                    R14 K27 ["User"] ; [+6]
       93 GETUPVAL                         R19 4
       94 GETTABLEKS                       R19 R19 K28 ["getUserId"]
       96 CALL                             R19 0 1
       97 JUMP                             ; [+3]
       98 GETUPVAL                         R19 3
       99 GETTABLEKS                       R19 R19 K29 ["GROUP_ID"]
      101 SETTABLEKS                       R19 R18 K5 ["id"]
      103 LOADK                            R19 K30 ["Test Creator"]
      104 SETTABLEKS                       R19 R18 K16 ["name"]
      106 SETTABLEKS                       R14 R18 K24 ["type"]
      108 LOADB                            R19 0
      109 SETTABLEKS                       R19 R18 K25 ["hasVerifiedBadge"]
      111 SETTABLEKS                       R18 R17 K20 ["creator"]
      113 LOADN                            R18 30
      114 SETTABLEKS                       R18 R17 K21 ["priceInRobux"]
      116 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
      118 MOVE                             R16 R3
      119 GETIMPORT                        R15 K33 [table.insert]
      121 CALL                             R15 2 0
      122 LOADB                            R15 1
      123 SETTABLE                         R15 R5 R12
      124 JUMP                             ; [+57]
      125 JUMPIF                           R12 ; [+56]
      126 GETTABLEKS                       R13 R11 K34 ["assetType"]
      128 GETTABLEKS                       R14 R11 K15 ["creatorType"]
      130 DUPTABLE                         R17 K35 [{"id", "name", "itemType", "creator", "assetType", "priceInRobux"}]
      131 GETTABLEKS                       R18 R10 K5 ["id"]
      133 SETTABLEKS                       R18 R17 K5 ["id"]
      135 LOADK                            R19 K36 ["Test Item"]
      136 GETTABLEKS                       R21 R10 K5 ["id"]
      138 FASTCALL1                        TOSTRING R21 ; [+2]
      139 GETIMPORT                        R20 K38 [tostring]
      141 CALL                             R20 1 1
      142 CONCAT                           R18 R19 R20
      143 SETTABLEKS                       R18 R17 K16 ["name"]
      145 LOADK                            R18 K39 ["Asset"]
      146 SETTABLEKS                       R18 R17 K17 ["itemType"]
      148 DUPTABLE                         R18 K26 [{"id", "name", "type", "hasVerifiedBadge"}]
      149 JUMPIFNOTEQKS                    R14 K27 ["User"] ; [+6]
      151 GETUPVAL                         R19 4
      152 GETTABLEKS                       R19 R19 K28 ["getUserId"]
      154 CALL                             R19 0 1
      155 JUMP                             ; [+3]
      156 GETUPVAL                         R19 3
      157 GETTABLEKS                       R19 R19 K29 ["GROUP_ID"]
      159 SETTABLEKS                       R19 R18 K5 ["id"]
      161 LOADK                            R19 K30 ["Test Creator"]
      162 SETTABLEKS                       R19 R18 K16 ["name"]
      164 SETTABLEKS                       R14 R18 K24 ["type"]
      166 LOADB                            R19 0
      167 SETTABLEKS                       R19 R18 K25 ["hasVerifiedBadge"]
      169 SETTABLEKS                       R18 R17 K20 ["creator"]
      171 SETTABLEKS                       R13 R17 K34 ["assetType"]
      173 LOADN                            R18 30
      174 SETTABLEKS                       R18 R17 K21 ["priceInRobux"]
      176 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
      178 MOVE                             R16 R3
      179 GETIMPORT                        R15 K33 [table.insert]
      181 CALL                             R15 2 0
      182 FORGLOOP                         R6 2 ; [-140]
      184 MOVE                             R6 R0
      185 DUPTABLE                         R7 K40 [{"Body"}]
      186 GETUPVAL                         R8 1
      187 MOVE                             R10 R4
      188 NAMECALL                         R8 R8 K41 ["JSONEncode"]
      190 CALL                             R8 2 1
      191 SETTABLEKS                       R8 R7 K0 ["Body"]
      193 CALL                             R6 1 0
      194 RETURN                           R0 0

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
       20 JUMPIFNOTEQ                      R3 R4 ; [+24]
       22 GETTABLEKS                       R3 R2 K4 ["validationType"]
       24 JUMPIFNOTEQKS                    R3 K5 ["filterUnsupportedTypes"] ; [+20]
       26 MOVE                             R3 R0
       27 DUPTABLE                         R4 K6 [{"Body"}]
       28 GETUPVAL                         R5 1
       29 DUPTABLE                         R7 K9 [{"errorDescription", "errorCode"}]
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R8 R8 K10 ["LOOK_PREVIEW_FAILURE_MESSAGE"]
       33 SETTABLEKS                       R8 R7 K7 ["errorDescription"]
       35 LOADN                            R8 1
       36 SETTABLEKS                       R8 R7 K8 ["errorCode"]
       38 NAMECALL                         R5 R5 K11 ["JSONEncode"]
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K0 ["Body"]
       43 CALL                             R3 1 0
       44 RETURN                           R0 0
       45 MOVE                             R3 R0
       46 GETUPVAL                         R4 4
       47 GETUPVAL                         R5 0
       48 CALL                             R4 1 -1
       49 CALL                             R3 -1 0
       50 RETURN                           R0 0

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
       20 JUMPIFNOTEQ                      R3 R4 ; [+24]
       22 GETTABLEKS                       R3 R2 K4 ["validationType"]
       24 JUMPIFNOTEQKS                    R3 K5 ["default"] ; [+20]
       26 MOVE                             R3 R0
       27 DUPTABLE                         R4 K6 [{"Body"}]
       28 GETUPVAL                         R5 1
       29 DUPTABLE                         R7 K9 [{"errorDescription", "errorCode"}]
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R8 R8 K10 ["LOOK_VALIDATION_FAILURE_MESSAGE"]
       33 SETTABLEKS                       R8 R7 K7 ["errorDescription"]
       35 LOADN                            R8 1
       36 SETTABLEKS                       R8 R7 K8 ["errorCode"]
       38 NAMECALL                         R5 R5 K11 ["JSONEncode"]
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K0 ["Body"]
       43 CALL                             R3 1 0
       44 RETURN                           R0 0
       45 MOVE                             R3 R0
       46 GETUPVAL                         R4 4
       47 GETUPVAL                         R5 0
       48 CALL                             R4 1 -1
       49 CALL                             R3 -1 0
       50 RETURN                           R0 0

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
        7 JUMPIFNOTEQ                      R2 R3 ; [+20]
        9 MOVE                             R2 R0
       10 DUPTABLE                         R3 K3 [{"Body"}]
       11 GETUPVAL                         R4 2
       12 DUPTABLE                         R6 K6 [{"errorDescription", "errorCode"}]
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R7 R7 K7 ["LOOK_CREATION_FAILURE_MESSAGE"]
       16 SETTABLEKS                       R7 R6 K4 ["errorDescription"]
       18 LOADN                            R7 1
       19 SETTABLEKS                       R7 R6 K5 ["errorCode"]
       21 NAMECALL                         R4 R4 K8 ["JSONEncode"]
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K2 ["Body"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0
       28 MOVE                             R2 R0
       29 GETUPVAL                         R3 4
       30 GETUPVAL                         R4 0
       31 CALL                             R3 1 -1
       32 CALL                             R2 -1 0
       33 RETURN                           R0 0

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
        9 DUPTABLE                         R2 K6 [{"canCreateLook"}]
       10 LOADB                            R3 1
       11 SETTABLEKS                       R3 R2 K5 ["canCreateLook"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K7 ["withPreviewerAndLizard"]
       16 NEWCLOSURE                       R4 P2
       17 CAPTURE                          VAL R0
       18 DUPTABLE                         R5 K9 [{"wrapAppContexts"}]
       19 NEWTABLE                         R6 0 2
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K10 ["createElement"]
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R8 R8 K11 ["Provider"]
       27 DUPTABLE                         R9 K13 [{"value"}]
       28 SETTABLEKS                       R1 R9 K12 ["value"]
       30 CALL                             R7 2 1
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R8 R8 K10 ["createElement"]
       34 GETUPVAL                         R9 4
       35 GETTABLEKS                       R9 R9 K14 ["Context"]
       37 GETTABLEKS                       R9 R9 K11 ["Provider"]
       39 DUPTABLE                         R10 K13 [{"value"}]
       40 SETTABLEKS                       R2 R10 K12 ["value"]
       42 CALL                             R8 2 1
       43 SETLIST                          R6 R7 2 [1]
       45 SETTABLEKS                       R6 R5 K8 ["wrapAppContexts"]
       47 CALL                             R3 2 -1
       48 RETURN                           R3 -1

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 16
        2 SETTABLEKS                       R1 R0 K0 ["ZIndex"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R0 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_54:
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

PROTO_55:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Size"]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R0 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_60:
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
       31 LOADN                            R1 248
       32 SETTABLEKS                       R1 R0 K13 ["ZIndex"]
       34 GETUPVAL                         R1 2
       35 GETTABLEKS                       R1 R1 K14 ["act"]
       37 NEWCLOSURE                       R2 P0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R0
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 16
        2 SETTABLEKS                       R1 R0 K0 ["ZIndex"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R0 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_63:
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

PROTO_64:
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
      138 GETTABLEKS                       R18 R4 K32 ["TestHelpers"]
      140 GETTABLEKS                       R18 R18 K33 ["provideMockContext"]
      142 GETIMPORT                        R19 K10 [require]
      144 GETTABLEKS                       R20 R2 K27 ["RhodiumTests"]
      146 GETTABLEKS                       R20 R20 K34 ["createMockContext"]
      148 CALL                             R19 1 1
      149 NEWTABLE                         R20 64 0
      151 LOADK                            R21 K35 ["Something unexpected went wrong with the look preview request, please try again later or file a bug report."]
      152 SETTABLEKS                       R21 R20 K36 ["LOOK_PREVIEW_FAILURE_MESSAGE"]
      154 LOADK                            R21 K37 ["Some items are not valid."]
      155 SETTABLEKS                       R21 R20 K38 ["LOOK_VALIDATION_FAILURE_MESSAGE"]
      157 LOADK                            R21 K39 ["Your look creation failed because the text was moderated."]
      158 SETTABLEKS                       R21 R20 K40 ["LOOK_CREATION_FAILURE_MESSAGE"]
      160 LOADK                            R21 K41 ["TestGroupName"]
      161 SETTABLEKS                       R21 R20 K42 ["DEFAULT_GROUP_NAME"]
      163 LOADK                            R21 K43 ["Test Name"]
      164 SETTABLEKS                       R21 R20 K44 ["VALID_NAME"]
      166 LOADK                            R21 K45 [122333]
      167 SETTABLEKS                       R21 R20 K46 ["GROUP_ID"]
      169 NEWTABLE                         R21 0 5
      171 LOADN                            R22 111
      172 LOADN                            R23 222
      173 LOADN                            R24 77
      174 LOADN                            R25 188
      175 LOADN                            R26 43
      176 SETLIST                          R21 R22 5 [1]
      178 SETTABLEKS                       R21 R20 K47 ["USER_ASSET_IDS"]
      180 NEWTABLE                         R21 0 5
      182 LOADN                            R22 154
      183 LOADN                            R23 9
      184 LOADN                            R24 120
      185 LOADN                            R25 231
      186 LOADN                            R26 0
      187 SETLIST                          R21 R22 5 [1]
      189 SETTABLEKS                       R21 R20 K48 ["GROUP_ASSET_IDS"]
      191 LOADN                            R21 87
      192 SETTABLEKS                       R21 R20 K49 ["AVATAR_LOOK_ASSET_ID"]
      194 LOADN                            R21 60
      195 SETTABLEKS                       R21 R20 K50 ["AVATAR_LOOK_BUNDLE_ID"]
      197 NEWTABLE                         R21 0 6
      199 LOADN                            R22 209
      200 LOADN                            R23 210
      201 LOADN                            R24 211
      202 LOADN                            R25 212
      203 LOADN                            R26 213
      204 LOADN                            R27 214
      205 SETLIST                          R21 R22 6 [1]
      207 SETTABLEKS                       R21 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      209 NEWTABLE                         R21 16 0
      211 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      213 GETTABLEN                        R22 R23 1
      214 DUPTABLE                         R23 K56 [{"creatorType", "assetType", "paletteKey", "id"}]
      215 LOADK                            R24 K57 ["User"]
      216 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      218 GETIMPORT                        R24 K61 [Enum.AssetType.EyebrowAccessory]
      220 GETTABLEKS                       R24 R24 K62 ["Value"]
      222 SETTABLEKS                       R24 R23 K53 ["assetType"]
      224 LOADK                            R24 K63 ["Eyebrows"]
      225 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      227 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      229 GETTABLEN                        R24 R25 1
      230 SETTABLEKS                       R24 R23 K55 ["id"]
      232 SETTABLE                         R23 R21 R22
      233 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      235 GETTABLEN                        R22 R23 2
      236 DUPTABLE                         R23 K56 [{"creatorType", "assetType", "paletteKey", "id"}]
      237 LOADK                            R24 K57 ["User"]
      238 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      240 GETIMPORT                        R24 K65 [Enum.AssetType.EyelashAccessory]
      242 GETTABLEKS                       R24 R24 K62 ["Value"]
      244 SETTABLEKS                       R24 R23 K53 ["assetType"]
      246 LOADK                            R24 K66 ["Eyelashes"]
      247 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      249 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      251 GETTABLEN                        R24 R25 2
      252 SETTABLEKS                       R24 R23 K55 ["id"]
      254 SETTABLE                         R23 R21 R22
      255 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      257 GETTABLEN                        R22 R23 3
      258 DUPTABLE                         R23 K56 [{"creatorType", "assetType", "paletteKey", "id"}]
      259 LOADK                            R24 K57 ["User"]
      260 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      262 GETIMPORT                        R24 K68 [Enum.AssetType.FaceMakeup]
      264 GETTABLEKS                       R24 R24 K62 ["Value"]
      266 SETTABLEKS                       R24 R23 K53 ["assetType"]
      268 LOADK                            R24 K67 ["FaceMakeup"]
      269 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      271 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      273 GETTABLEN                        R24 R25 3
      274 SETTABLEKS                       R24 R23 K55 ["id"]
      276 SETTABLE                         R23 R21 R22
      277 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      279 GETTABLEN                        R22 R23 4
      280 DUPTABLE                         R23 K56 [{"creatorType", "assetType", "paletteKey", "id"}]
      281 LOADK                            R24 K57 ["User"]
      282 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      284 GETIMPORT                        R24 K70 [Enum.AssetType.LipMakeup]
      286 GETTABLEKS                       R24 R24 K62 ["Value"]
      288 SETTABLEKS                       R24 R23 K53 ["assetType"]
      290 LOADK                            R24 K69 ["LipMakeup"]
      291 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      293 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      295 GETTABLEN                        R24 R25 4
      296 SETTABLEKS                       R24 R23 K55 ["id"]
      298 SETTABLE                         R23 R21 R22
      299 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      301 GETTABLEN                        R22 R23 5
      302 DUPTABLE                         R23 K56 [{"creatorType", "assetType", "paletteKey", "id"}]
      303 LOADK                            R24 K57 ["User"]
      304 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      306 GETIMPORT                        R24 K72 [Enum.AssetType.EyeMakeup]
      308 GETTABLEKS                       R24 R24 K62 ["Value"]
      310 SETTABLEKS                       R24 R23 K53 ["assetType"]
      312 LOADK                            R24 K71 ["EyeMakeup"]
      313 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      315 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      317 GETTABLEN                        R24 R25 5
      318 SETTABLEKS                       R24 R23 K55 ["id"]
      320 SETTABLE                         R23 R21 R22
      321 GETTABLEKS                       R23 R20 K48 ["GROUP_ASSET_IDS"]
      323 GETTABLEN                        R22 R23 1
      324 DUPTABLE                         R23 K56 [{"creatorType", "assetType", "paletteKey", "id"}]
      325 LOADK                            R24 K73 ["Group"]
      326 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      328 GETIMPORT                        R24 K61 [Enum.AssetType.EyebrowAccessory]
      330 GETTABLEKS                       R24 R24 K62 ["Value"]
      332 SETTABLEKS                       R24 R23 K53 ["assetType"]
      334 LOADK                            R24 K63 ["Eyebrows"]
      335 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      337 GETTABLEKS                       R25 R20 K48 ["GROUP_ASSET_IDS"]
      339 GETTABLEN                        R24 R25 1
      340 SETTABLEKS                       R24 R23 K55 ["id"]
      342 SETTABLE                         R23 R21 R22
      343 GETTABLEKS                       R23 R20 K48 ["GROUP_ASSET_IDS"]
      345 GETTABLEN                        R22 R23 2
      346 DUPTABLE                         R23 K56 [{"creatorType", "assetType", "paletteKey", "id"}]
      347 LOADK                            R24 K73 ["Group"]
      348 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      350 GETIMPORT                        R24 K65 [Enum.AssetType.EyelashAccessory]
      352 GETTABLEKS                       R24 R24 K62 ["Value"]
      354 SETTABLEKS                       R24 R23 K53 ["assetType"]
      356 LOADK                            R24 K66 ["Eyelashes"]
      357 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      359 GETTABLEKS                       R25 R20 K48 ["GROUP_ASSET_IDS"]
      361 GETTABLEN                        R24 R25 2
      362 SETTABLEKS                       R24 R23 K55 ["id"]
      364 SETTABLE                         R23 R21 R22
      365 GETTABLEKS                       R23 R20 K48 ["GROUP_ASSET_IDS"]
      367 GETTABLEN                        R22 R23 3
      368 DUPTABLE                         R23 K56 [{"creatorType", "assetType", "paletteKey", "id"}]
      369 LOADK                            R24 K73 ["Group"]
      370 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      372 GETIMPORT                        R24 K68 [Enum.AssetType.FaceMakeup]
      374 GETTABLEKS                       R24 R24 K62 ["Value"]
      376 SETTABLEKS                       R24 R23 K53 ["assetType"]
      378 LOADK                            R24 K67 ["FaceMakeup"]
      379 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      381 GETTABLEKS                       R25 R20 K48 ["GROUP_ASSET_IDS"]
      383 GETTABLEN                        R24 R25 3
      384 SETTABLEKS                       R24 R23 K55 ["id"]
      386 SETTABLE                         R23 R21 R22
      387 GETTABLEKS                       R23 R20 K48 ["GROUP_ASSET_IDS"]
      389 GETTABLEN                        R22 R23 4
      390 DUPTABLE                         R23 K56 [{"creatorType", "assetType", "paletteKey", "id"}]
      391 LOADK                            R24 K73 ["Group"]
      392 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      394 GETIMPORT                        R24 K70 [Enum.AssetType.LipMakeup]
      396 GETTABLEKS                       R24 R24 K62 ["Value"]
      398 SETTABLEKS                       R24 R23 K53 ["assetType"]
      400 LOADK                            R24 K71 ["EyeMakeup"]
      401 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      403 GETTABLEKS                       R25 R20 K48 ["GROUP_ASSET_IDS"]
      405 GETTABLEN                        R24 R25 4
      406 SETTABLEKS                       R24 R23 K55 ["id"]
      408 SETTABLE                         R23 R21 R22
      409 GETTABLEKS                       R23 R20 K48 ["GROUP_ASSET_IDS"]
      411 GETTABLEN                        R22 R23 5
      412 DUPTABLE                         R23 K56 [{"creatorType", "assetType", "paletteKey", "id"}]
      413 LOADK                            R24 K73 ["Group"]
      414 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      416 GETIMPORT                        R24 K72 [Enum.AssetType.EyeMakeup]
      418 GETTABLEKS                       R24 R24 K62 ["Value"]
      420 SETTABLEKS                       R24 R23 K53 ["assetType"]
      422 LOADK                            R24 K69 ["LipMakeup"]
      423 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      425 GETTABLEKS                       R25 R20 K48 ["GROUP_ASSET_IDS"]
      427 GETTABLEN                        R24 R25 5
      428 SETTABLEKS                       R24 R23 K55 ["id"]
      430 SETTABLE                         R23 R21 R22
      431 SETTABLEKS                       R21 R20 K74 ["MOCK_ITEM_DATA"]
      433 NEWTABLE                         R21 16 0
      435 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      437 GETTABLEN                        R22 R23 1
      438 DUPTABLE                         R23 K81 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      439 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      441 GETTABLEN                        R24 R25 1
      442 SETTABLEKS                       R24 R23 K75 ["Id"]
      444 LOADK                            R24 K82 ["User Asset 1"]
      445 SETTABLEKS                       R24 R23 K76 ["Name"]
      447 GETIMPORT                        R24 K61 [Enum.AssetType.EyebrowAccessory]
      449 GETTABLEKS                       R24 R24 K76 ["Name"]
      451 SETTABLEKS                       R24 R23 K59 ["AssetType"]
      453 LOADN                            R24 1
      454 SETTABLEKS                       R24 R23 K77 ["CreatorTargetId"]
      456 LOADK                            R24 K57 ["User"]
      457 SETTABLEKS                       R24 R23 K78 ["CreatorType"]
      459 LOADK                            R24 K83 ["Username"]
      460 SETTABLEKS                       R24 R23 K79 ["CreatorName"]
      462 LOADB                            R24 1
      463 SETTABLEKS                       R24 R23 K80 ["CreatorHasVerifiedBadge"]
      465 SETTABLE                         R23 R21 R22
      466 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      468 GETTABLEN                        R22 R23 2
      469 DUPTABLE                         R23 K81 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      470 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      472 GETTABLEN                        R24 R25 2
      473 SETTABLEKS                       R24 R23 K75 ["Id"]
      475 LOADK                            R24 K84 ["User Asset 2"]
      476 SETTABLEKS                       R24 R23 K76 ["Name"]
      478 GETIMPORT                        R24 K65 [Enum.AssetType.EyelashAccessory]
      480 GETTABLEKS                       R24 R24 K76 ["Name"]
      482 SETTABLEKS                       R24 R23 K59 ["AssetType"]
      484 LOADN                            R24 1
      485 SETTABLEKS                       R24 R23 K77 ["CreatorTargetId"]
      487 LOADK                            R24 K57 ["User"]
      488 SETTABLEKS                       R24 R23 K78 ["CreatorType"]
      490 LOADK                            R24 K83 ["Username"]
      491 SETTABLEKS                       R24 R23 K79 ["CreatorName"]
      493 LOADB                            R24 1
      494 SETTABLEKS                       R24 R23 K80 ["CreatorHasVerifiedBadge"]
      496 SETTABLE                         R23 R21 R22
      497 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      499 GETTABLEN                        R22 R23 3
      500 DUPTABLE                         R23 K81 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      501 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      503 GETTABLEN                        R24 R25 3
      504 SETTABLEKS                       R24 R23 K75 ["Id"]
      506 LOADK                            R24 K85 ["User Asset 3"]
      507 SETTABLEKS                       R24 R23 K76 ["Name"]
      509 GETIMPORT                        R24 K68 [Enum.AssetType.FaceMakeup]
      511 GETTABLEKS                       R24 R24 K76 ["Name"]
      513 SETTABLEKS                       R24 R23 K59 ["AssetType"]
      515 LOADN                            R24 1
      516 SETTABLEKS                       R24 R23 K77 ["CreatorTargetId"]
      518 LOADK                            R24 K57 ["User"]
      519 SETTABLEKS                       R24 R23 K78 ["CreatorType"]
      521 LOADK                            R24 K83 ["Username"]
      522 SETTABLEKS                       R24 R23 K79 ["CreatorName"]
      524 LOADB                            R24 1
      525 SETTABLEKS                       R24 R23 K80 ["CreatorHasVerifiedBadge"]
      527 SETTABLE                         R23 R21 R22
      528 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      530 GETTABLEN                        R22 R23 4
      531 DUPTABLE                         R23 K81 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      532 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      534 GETTABLEN                        R24 R25 4
      535 SETTABLEKS                       R24 R23 K75 ["Id"]
      537 LOADK                            R24 K86 ["User Asset 4"]
      538 SETTABLEKS                       R24 R23 K76 ["Name"]
      540 GETIMPORT                        R24 K70 [Enum.AssetType.LipMakeup]
      542 GETTABLEKS                       R24 R24 K76 ["Name"]
      544 SETTABLEKS                       R24 R23 K59 ["AssetType"]
      546 LOADN                            R24 1
      547 SETTABLEKS                       R24 R23 K77 ["CreatorTargetId"]
      549 LOADK                            R24 K57 ["User"]
      550 SETTABLEKS                       R24 R23 K78 ["CreatorType"]
      552 LOADK                            R24 K83 ["Username"]
      553 SETTABLEKS                       R24 R23 K79 ["CreatorName"]
      555 LOADB                            R24 1
      556 SETTABLEKS                       R24 R23 K80 ["CreatorHasVerifiedBadge"]
      558 SETTABLE                         R23 R21 R22
      559 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      561 GETTABLEN                        R22 R23 5
      562 DUPTABLE                         R23 K81 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      563 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      565 GETTABLEN                        R24 R25 5
      566 SETTABLEKS                       R24 R23 K75 ["Id"]
      568 LOADK                            R24 K87 ["User Asset 5"]
      569 SETTABLEKS                       R24 R23 K76 ["Name"]
      571 GETIMPORT                        R24 K72 [Enum.AssetType.EyeMakeup]
      573 GETTABLEKS                       R24 R24 K76 ["Name"]
      575 SETTABLEKS                       R24 R23 K59 ["AssetType"]
      577 LOADN                            R24 1
      578 SETTABLEKS                       R24 R23 K77 ["CreatorTargetId"]
      580 LOADK                            R24 K57 ["User"]
      581 SETTABLEKS                       R24 R23 K78 ["CreatorType"]
      583 LOADK                            R24 K83 ["Username"]
      584 SETTABLEKS                       R24 R23 K79 ["CreatorName"]
      586 LOADB                            R24 1
      587 SETTABLEKS                       R24 R23 K80 ["CreatorHasVerifiedBadge"]
      589 SETTABLE                         R23 R21 R22
      590 GETTABLEKS                       R22 R20 K49 ["AVATAR_LOOK_ASSET_ID"]
      592 DUPTABLE                         R23 K81 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      593 GETTABLEKS                       R24 R20 K49 ["AVATAR_LOOK_ASSET_ID"]
      595 SETTABLEKS                       R24 R23 K75 ["Id"]
      597 LOADK                            R24 K88 ["Avatar Look Asset 1"]
      598 SETTABLEKS                       R24 R23 K76 ["Name"]
      600 GETIMPORT                        R24 K90 [Enum.AssetType.ShirtAccessory]
      602 GETTABLEKS                       R24 R24 K76 ["Name"]
      604 SETTABLEKS                       R24 R23 K59 ["AssetType"]
      606 LOADN                            R24 1
      607 SETTABLEKS                       R24 R23 K77 ["CreatorTargetId"]
      609 LOADK                            R24 K57 ["User"]
      610 SETTABLEKS                       R24 R23 K78 ["CreatorType"]
      612 LOADK                            R24 K83 ["Username"]
      613 SETTABLEKS                       R24 R23 K79 ["CreatorName"]
      615 LOADB                            R24 1
      616 SETTABLEKS                       R24 R23 K80 ["CreatorHasVerifiedBadge"]
      618 SETTABLE                         R23 R21 R22
      619 GETTABLEKS                       R23 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      621 GETTABLEN                        R22 R23 1
      622 DUPTABLE                         R23 K81 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      623 GETTABLEKS                       R25 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      625 GETTABLEN                        R24 R25 1
      626 SETTABLEKS                       R24 R23 K75 ["Id"]
      628 LOADK                            R24 K91 ["Avatar Look Bundle Asset 1"]
      629 SETTABLEKS                       R24 R23 K76 ["Name"]
      631 GETIMPORT                        R24 K93 [Enum.AssetType.DynamicHead]
      633 GETTABLEKS                       R24 R24 K76 ["Name"]
      635 SETTABLEKS                       R24 R23 K59 ["AssetType"]
      637 LOADN                            R24 1
      638 SETTABLEKS                       R24 R23 K77 ["CreatorTargetId"]
      640 LOADK                            R24 K57 ["User"]
      641 SETTABLEKS                       R24 R23 K78 ["CreatorType"]
      643 LOADK                            R24 K83 ["Username"]
      644 SETTABLEKS                       R24 R23 K79 ["CreatorName"]
      646 LOADB                            R24 1
      647 SETTABLEKS                       R24 R23 K80 ["CreatorHasVerifiedBadge"]
      649 SETTABLE                         R23 R21 R22
      650 GETTABLEKS                       R23 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      652 GETTABLEN                        R22 R23 2
      653 DUPTABLE                         R23 K81 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      654 GETTABLEKS                       R25 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      656 GETTABLEN                        R24 R25 2
      657 SETTABLEKS                       R24 R23 K75 ["Id"]
      659 LOADK                            R24 K94 ["Avatar Look Bundle Asset 2"]
      660 SETTABLEKS                       R24 R23 K76 ["Name"]
      662 GETIMPORT                        R24 K96 [Enum.AssetType.Torso]
      664 GETTABLEKS                       R24 R24 K76 ["Name"]
      666 SETTABLEKS                       R24 R23 K59 ["AssetType"]
      668 LOADN                            R24 1
      669 SETTABLEKS                       R24 R23 K77 ["CreatorTargetId"]
      671 LOADK                            R24 K57 ["User"]
      672 SETTABLEKS                       R24 R23 K78 ["CreatorType"]
      674 LOADK                            R24 K83 ["Username"]
      675 SETTABLEKS                       R24 R23 K79 ["CreatorName"]
      677 LOADB                            R24 1
      678 SETTABLEKS                       R24 R23 K80 ["CreatorHasVerifiedBadge"]
      680 SETTABLE                         R23 R21 R22
      681 GETTABLEKS                       R23 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      683 GETTABLEN                        R22 R23 3
      684 DUPTABLE                         R23 K81 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      685 GETTABLEKS                       R25 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      687 GETTABLEN                        R24 R25 3
      688 SETTABLEKS                       R24 R23 K75 ["Id"]
      690 LOADK                            R24 K97 ["Avatar Look Bundle Asset 3"]
      691 SETTABLEKS                       R24 R23 K76 ["Name"]
      693 GETIMPORT                        R24 K99 [Enum.AssetType.LeftArm]
      695 GETTABLEKS                       R24 R24 K76 ["Name"]
      697 SETTABLEKS                       R24 R23 K59 ["AssetType"]
      699 LOADN                            R24 1
      700 SETTABLEKS                       R24 R23 K77 ["CreatorTargetId"]
      702 LOADK                            R24 K57 ["User"]
      703 SETTABLEKS                       R24 R23 K78 ["CreatorType"]
      705 LOADK                            R24 K83 ["Username"]
      706 SETTABLEKS                       R24 R23 K79 ["CreatorName"]
      708 LOADB                            R24 1
      709 SETTABLEKS                       R24 R23 K80 ["CreatorHasVerifiedBadge"]
      711 SETTABLE                         R23 R21 R22
      712 GETTABLEKS                       R23 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      714 GETTABLEN                        R22 R23 4
      715 DUPTABLE                         R23 K81 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      716 GETTABLEKS                       R25 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      718 GETTABLEN                        R24 R25 4
      719 SETTABLEKS                       R24 R23 K75 ["Id"]
      721 LOADK                            R24 K100 ["Avatar Look Bundle Asset 4"]
      722 SETTABLEKS                       R24 R23 K76 ["Name"]
      724 GETIMPORT                        R24 K102 [Enum.AssetType.LeftLeg]
      726 GETTABLEKS                       R24 R24 K76 ["Name"]
      728 SETTABLEKS                       R24 R23 K59 ["AssetType"]
      730 LOADN                            R24 1
      731 SETTABLEKS                       R24 R23 K77 ["CreatorTargetId"]
      733 LOADK                            R24 K57 ["User"]
      734 SETTABLEKS                       R24 R23 K78 ["CreatorType"]
      736 LOADK                            R24 K83 ["Username"]
      737 SETTABLEKS                       R24 R23 K79 ["CreatorName"]
      739 LOADB                            R24 1
      740 SETTABLEKS                       R24 R23 K80 ["CreatorHasVerifiedBadge"]
      742 SETTABLE                         R23 R21 R22
      743 GETTABLEKS                       R23 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      745 GETTABLEN                        R22 R23 5
      746 DUPTABLE                         R23 K81 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      747 GETTABLEKS                       R25 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      749 GETTABLEN                        R24 R25 5
      750 SETTABLEKS                       R24 R23 K75 ["Id"]
      752 LOADK                            R24 K103 ["Avatar Look Bundle Asset 5"]
      753 SETTABLEKS                       R24 R23 K76 ["Name"]
      755 GETIMPORT                        R24 K105 [Enum.AssetType.RightArm]
      757 GETTABLEKS                       R24 R24 K76 ["Name"]
      759 SETTABLEKS                       R24 R23 K59 ["AssetType"]
      761 LOADN                            R24 1
      762 SETTABLEKS                       R24 R23 K77 ["CreatorTargetId"]
      764 LOADK                            R24 K57 ["User"]
      765 SETTABLEKS                       R24 R23 K78 ["CreatorType"]
      767 LOADK                            R24 K83 ["Username"]
      768 SETTABLEKS                       R24 R23 K79 ["CreatorName"]
      770 LOADB                            R24 1
      771 SETTABLEKS                       R24 R23 K80 ["CreatorHasVerifiedBadge"]
      773 SETTABLE                         R23 R21 R22
      774 GETTABLEKS                       R23 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      776 GETTABLEN                        R22 R23 6
      777 DUPTABLE                         R23 K81 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      778 GETTABLEKS                       R25 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      780 GETTABLEN                        R24 R25 6
      781 SETTABLEKS                       R24 R23 K75 ["Id"]
      783 LOADK                            R24 K106 ["Avatar Look Bundle Asset 6"]
      784 SETTABLEKS                       R24 R23 K76 ["Name"]
      786 GETIMPORT                        R24 K108 [Enum.AssetType.RightLeg]
      788 GETTABLEKS                       R24 R24 K76 ["Name"]
      790 SETTABLEKS                       R24 R23 K59 ["AssetType"]
      792 LOADN                            R24 1
      793 SETTABLEKS                       R24 R23 K77 ["CreatorTargetId"]
      795 LOADK                            R24 K57 ["User"]
      796 SETTABLEKS                       R24 R23 K78 ["CreatorType"]
      798 LOADK                            R24 K83 ["Username"]
      799 SETTABLEKS                       R24 R23 K79 ["CreatorName"]
      801 LOADB                            R24 1
      802 SETTABLEKS                       R24 R23 K80 ["CreatorHasVerifiedBadge"]
      804 SETTABLE                         R23 R21 R22
      805 SETTABLEKS                       R21 R20 K109 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
      807 NEWTABLE                         R21 1 0
      809 GETTABLEKS                       R22 R20 K50 ["AVATAR_LOOK_BUNDLE_ID"]
      811 DUPTABLE                         R23 K111 [{"Id", "Name", "CreatorName", "CreatorHasVerifiedBadge", "BundledItems"}]
      812 GETTABLEKS                       R24 R20 K50 ["AVATAR_LOOK_BUNDLE_ID"]
      814 SETTABLEKS                       R24 R23 K75 ["Id"]
      816 LOADK                            R25 K112 ["Test Bundle"]
      817 GETTABLEKS                       R27 R20 K50 ["AVATAR_LOOK_BUNDLE_ID"]
      819 FASTCALL1                        TOSTRING R27 ; [+2]
      820 GETIMPORT                        R26 K114 [tostring]
      822 CALL                             R26 1 1
      823 CONCAT                           R24 R25 R26
      824 SETTABLEKS                       R24 R23 K76 ["Name"]
      826 LOADK                            R24 K83 ["Username"]
      827 SETTABLEKS                       R24 R23 K79 ["CreatorName"]
      829 LOADB                            R24 1
      830 SETTABLEKS                       R24 R23 K80 ["CreatorHasVerifiedBadge"]
      832 NEWTABLE                         R24 0 6
      834 DUPTABLE                         R25 K115 [{"Id"}]
      835 GETTABLEKS                       R27 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      837 GETTABLEN                        R26 R27 1
      838 SETTABLEKS                       R26 R25 K75 ["Id"]
      840 DUPTABLE                         R26 K115 [{"Id"}]
      841 GETTABLEKS                       R28 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      843 GETTABLEN                        R27 R28 2
      844 SETTABLEKS                       R27 R26 K75 ["Id"]
      846 DUPTABLE                         R27 K115 [{"Id"}]
      847 GETTABLEKS                       R29 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      849 GETTABLEN                        R28 R29 3
      850 SETTABLEKS                       R28 R27 K75 ["Id"]
      852 DUPTABLE                         R28 K115 [{"Id"}]
      853 GETTABLEKS                       R30 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      855 GETTABLEN                        R29 R30 4
      856 SETTABLEKS                       R29 R28 K75 ["Id"]
      858 DUPTABLE                         R29 K115 [{"Id"}]
      859 GETTABLEKS                       R31 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      861 GETTABLEN                        R30 R31 5
      862 SETTABLEKS                       R30 R29 K75 ["Id"]
      864 DUPTABLE                         R30 K115 [{"Id"}]
      865 GETTABLEKS                       R32 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      867 GETTABLEN                        R31 R32 6
      868 SETTABLEKS                       R31 R30 K75 ["Id"]
      870 SETLIST                          R24 R25 6 [1]
      872 SETTABLEKS                       R24 R23 K110 ["BundledItems"]
      874 SETTABLE                         R23 R21 R22
      875 SETTABLEKS                       R21 R20 K116 ["MOCK_AVATAR_EDITOR_SERVICE_BUNDLE_DETAILS"]
      877 NEWTABLE                         R21 8 0
      879 GETTABLEKS                       R22 R20 K49 ["AVATAR_LOOK_ASSET_ID"]
      881 DUPTABLE                         R23 K56 [{"creatorType", "assetType", "paletteKey", "id"}]
      882 LOADK                            R24 K57 ["User"]
      883 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      885 GETIMPORT                        R24 K90 [Enum.AssetType.ShirtAccessory]
      887 GETTABLEKS                       R24 R24 K62 ["Value"]
      889 SETTABLEKS                       R24 R23 K53 ["assetType"]
      891 LOADK                            R24 K117 ["Shirts"]
      892 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      894 GETTABLEKS                       R24 R20 K49 ["AVATAR_LOOK_ASSET_ID"]
      896 SETTABLEKS                       R24 R23 K55 ["id"]
      898 SETTABLE                         R23 R21 R22
      899 GETTABLEKS                       R23 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      901 GETTABLEN                        R22 R23 1
      902 DUPTABLE                         R23 K119 [{"creatorType", "assetType", "paletteKey", "id", "bundleId"}]
      903 LOADK                            R24 K57 ["User"]
      904 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      906 GETIMPORT                        R24 K93 [Enum.AssetType.DynamicHead]
      908 GETTABLEKS                       R24 R24 K62 ["Value"]
      910 SETTABLEKS                       R24 R23 K53 ["assetType"]
      912 LOADK                            R24 K120 ["HeadBodyPart"]
      913 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      915 GETTABLEKS                       R25 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      917 GETTABLEN                        R24 R25 1
      918 SETTABLEKS                       R24 R23 K55 ["id"]
      920 GETTABLEKS                       R24 R20 K50 ["AVATAR_LOOK_BUNDLE_ID"]
      922 SETTABLEKS                       R24 R23 K118 ["bundleId"]
      924 SETTABLE                         R23 R21 R22
      925 GETTABLEKS                       R23 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      927 GETTABLEN                        R22 R23 2
      928 DUPTABLE                         R23 K119 [{"creatorType", "assetType", "paletteKey", "id", "bundleId"}]
      929 LOADK                            R24 K57 ["User"]
      930 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      932 GETIMPORT                        R24 K96 [Enum.AssetType.Torso]
      934 GETTABLEKS                       R24 R24 K62 ["Value"]
      936 SETTABLEKS                       R24 R23 K53 ["assetType"]
      938 LOADK                            R24 K95 ["Torso"]
      939 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      941 GETTABLEKS                       R25 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      943 GETTABLEN                        R24 R25 2
      944 SETTABLEKS                       R24 R23 K55 ["id"]
      946 GETTABLEKS                       R24 R20 K50 ["AVATAR_LOOK_BUNDLE_ID"]
      948 SETTABLEKS                       R24 R23 K118 ["bundleId"]
      950 SETTABLE                         R23 R21 R22
      951 GETTABLEKS                       R23 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      953 GETTABLEN                        R22 R23 3
      954 DUPTABLE                         R23 K119 [{"creatorType", "assetType", "paletteKey", "id", "bundleId"}]
      955 LOADK                            R24 K57 ["User"]
      956 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      958 GETIMPORT                        R24 K99 [Enum.AssetType.LeftArm]
      960 GETTABLEKS                       R24 R24 K62 ["Value"]
      962 SETTABLEKS                       R24 R23 K53 ["assetType"]
      964 LOADK                            R24 K98 ["LeftArm"]
      965 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      967 GETTABLEKS                       R25 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      969 GETTABLEN                        R24 R25 3
      970 SETTABLEKS                       R24 R23 K55 ["id"]
      972 GETTABLEKS                       R24 R20 K50 ["AVATAR_LOOK_BUNDLE_ID"]
      974 SETTABLEKS                       R24 R23 K118 ["bundleId"]
      976 SETTABLE                         R23 R21 R22
      977 GETTABLEKS                       R23 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      979 GETTABLEN                        R22 R23 4
      980 DUPTABLE                         R23 K119 [{"creatorType", "assetType", "paletteKey", "id", "bundleId"}]
      981 LOADK                            R24 K57 ["User"]
      982 SETTABLEKS                       R24 R23 K52 ["creatorType"]
      984 GETIMPORT                        R24 K102 [Enum.AssetType.LeftLeg]
      986 GETTABLEKS                       R24 R24 K62 ["Value"]
      988 SETTABLEKS                       R24 R23 K53 ["assetType"]
      990 LOADK                            R24 K101 ["LeftLeg"]
      991 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
      993 GETTABLEKS                       R25 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      995 GETTABLEN                        R24 R25 4
      996 SETTABLEKS                       R24 R23 K55 ["id"]
      998 GETTABLEKS                       R24 R20 K50 ["AVATAR_LOOK_BUNDLE_ID"]
     1000 SETTABLEKS                       R24 R23 K118 ["bundleId"]
     1002 SETTABLE                         R23 R21 R22
     1003 GETTABLEKS                       R23 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1005 GETTABLEN                        R22 R23 5
     1006 DUPTABLE                         R23 K119 [{"creatorType", "assetType", "paletteKey", "id", "bundleId"}]
     1007 LOADK                            R24 K57 ["User"]
     1008 SETTABLEKS                       R24 R23 K52 ["creatorType"]
     1010 GETIMPORT                        R24 K105 [Enum.AssetType.RightArm]
     1012 GETTABLEKS                       R24 R24 K62 ["Value"]
     1014 SETTABLEKS                       R24 R23 K53 ["assetType"]
     1016 LOADK                            R24 K104 ["RightArm"]
     1017 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
     1019 GETTABLEKS                       R25 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1021 GETTABLEN                        R24 R25 5
     1022 SETTABLEKS                       R24 R23 K55 ["id"]
     1024 GETTABLEKS                       R24 R20 K50 ["AVATAR_LOOK_BUNDLE_ID"]
     1026 SETTABLEKS                       R24 R23 K118 ["bundleId"]
     1028 SETTABLE                         R23 R21 R22
     1029 GETTABLEKS                       R23 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1031 GETTABLEN                        R22 R23 6
     1032 DUPTABLE                         R23 K119 [{"creatorType", "assetType", "paletteKey", "id", "bundleId"}]
     1033 LOADK                            R24 K57 ["User"]
     1034 SETTABLEKS                       R24 R23 K52 ["creatorType"]
     1036 GETIMPORT                        R24 K108 [Enum.AssetType.RightLeg]
     1038 GETTABLEKS                       R24 R24 K62 ["Value"]
     1040 SETTABLEKS                       R24 R23 K53 ["assetType"]
     1042 LOADK                            R24 K107 ["RightLeg"]
     1043 SETTABLEKS                       R24 R23 K54 ["paletteKey"]
     1045 GETTABLEKS                       R25 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1047 GETTABLEN                        R24 R25 6
     1048 SETTABLEKS                       R24 R23 K55 ["id"]
     1050 GETTABLEKS                       R24 R20 K50 ["AVATAR_LOOK_BUNDLE_ID"]
     1052 SETTABLEKS                       R24 R23 K118 ["bundleId"]
     1054 SETTABLE                         R23 R21 R22
     1055 SETTABLEKS                       R21 R20 K121 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
     1057 NEWTABLE                         R21 1 0
     1059 GETTABLEKS                       R22 R20 K50 ["AVATAR_LOOK_BUNDLE_ID"]
     1061 DUPTABLE                         R23 K125 [{"id", "name", "bundleType", "creatorType", "assetsInBundle"}]
     1062 GETTABLEKS                       R24 R20 K50 ["AVATAR_LOOK_BUNDLE_ID"]
     1064 SETTABLEKS                       R24 R23 K55 ["id"]
     1066 LOADK                            R25 K112 ["Test Bundle"]
     1067 GETTABLEKS                       R27 R20 K50 ["AVATAR_LOOK_BUNDLE_ID"]
     1069 FASTCALL1                        TOSTRING R27 ; [+2]
     1070 GETIMPORT                        R26 K114 [tostring]
     1072 CALL                             R26 1 1
     1073 CONCAT                           R24 R25 R26
     1074 SETTABLEKS                       R24 R23 K122 ["name"]
     1076 LOADN                            R24 1
     1077 SETTABLEKS                       R24 R23 K123 ["bundleType"]
     1079 LOADK                            R24 K57 ["User"]
     1080 SETTABLEKS                       R24 R23 K52 ["creatorType"]
     1082 NEWTABLE                         R24 0 6
     1084 DUPTABLE                         R25 K127 [{"assetType", "id", "isIncluded"}]
     1085 GETIMPORT                        R26 K93 [Enum.AssetType.DynamicHead]
     1087 GETTABLEKS                       R26 R26 K62 ["Value"]
     1089 SETTABLEKS                       R26 R25 K53 ["assetType"]
     1091 GETTABLEKS                       R27 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1093 GETTABLEN                        R26 R27 1
     1094 SETTABLEKS                       R26 R25 K55 ["id"]
     1096 LOADB                            R26 1
     1097 SETTABLEKS                       R26 R25 K126 ["isIncluded"]
     1099 DUPTABLE                         R26 K127 [{"assetType", "id", "isIncluded"}]
     1100 GETIMPORT                        R27 K96 [Enum.AssetType.Torso]
     1102 GETTABLEKS                       R27 R27 K62 ["Value"]
     1104 SETTABLEKS                       R27 R26 K53 ["assetType"]
     1106 GETTABLEKS                       R28 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1108 GETTABLEN                        R27 R28 2
     1109 SETTABLEKS                       R27 R26 K55 ["id"]
     1111 LOADB                            R27 1
     1112 SETTABLEKS                       R27 R26 K126 ["isIncluded"]
     1114 DUPTABLE                         R27 K127 [{"assetType", "id", "isIncluded"}]
     1115 GETIMPORT                        R28 K99 [Enum.AssetType.LeftArm]
     1117 GETTABLEKS                       R28 R28 K62 ["Value"]
     1119 SETTABLEKS                       R28 R27 K53 ["assetType"]
     1121 GETTABLEKS                       R29 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1123 GETTABLEN                        R28 R29 3
     1124 SETTABLEKS                       R28 R27 K55 ["id"]
     1126 LOADB                            R28 1
     1127 SETTABLEKS                       R28 R27 K126 ["isIncluded"]
     1129 DUPTABLE                         R28 K127 [{"assetType", "id", "isIncluded"}]
     1130 GETIMPORT                        R29 K102 [Enum.AssetType.LeftLeg]
     1132 GETTABLEKS                       R29 R29 K62 ["Value"]
     1134 SETTABLEKS                       R29 R28 K53 ["assetType"]
     1136 GETTABLEKS                       R30 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1138 GETTABLEN                        R29 R30 4
     1139 SETTABLEKS                       R29 R28 K55 ["id"]
     1141 LOADB                            R29 1
     1142 SETTABLEKS                       R29 R28 K126 ["isIncluded"]
     1144 DUPTABLE                         R29 K127 [{"assetType", "id", "isIncluded"}]
     1145 GETIMPORT                        R30 K105 [Enum.AssetType.RightArm]
     1147 GETTABLEKS                       R30 R30 K62 ["Value"]
     1149 SETTABLEKS                       R30 R29 K53 ["assetType"]
     1151 GETTABLEKS                       R31 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1153 GETTABLEN                        R30 R31 5
     1154 SETTABLEKS                       R30 R29 K55 ["id"]
     1156 LOADB                            R30 1
     1157 SETTABLEKS                       R30 R29 K126 ["isIncluded"]
     1159 DUPTABLE                         R30 K127 [{"assetType", "id", "isIncluded"}]
     1160 GETIMPORT                        R31 K108 [Enum.AssetType.RightLeg]
     1162 GETTABLEKS                       R31 R31 K62 ["Value"]
     1164 SETTABLEKS                       R31 R30 K53 ["assetType"]
     1166 GETTABLEKS                       R32 R20 K51 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1168 GETTABLEN                        R31 R32 6
     1169 SETTABLEKS                       R31 R30 K55 ["id"]
     1171 LOADB                            R31 1
     1172 SETTABLEKS                       R31 R30 K126 ["isIncluded"]
     1174 SETLIST                          R24 R25 6 [1]
     1176 SETTABLEKS                       R24 R23 K124 ["assetsInBundle"]
     1178 SETTABLE                         R23 R21 R22
     1179 SETTABLEKS                       R21 R20 K128 ["MOCK_AVATAR_LOOK_BUNDLE_DATA"]
     1181 DUPCLOSURE                       R21 K129 [PROTO_0]
     1182 CAPTURE                          VAL R0
     1183 SETTABLEKS                       R21 R20 K130 ["findTextInCoreGui"]
     1185 DUPCLOSURE                       R21 K131 [PROTO_1]
     1186 CAPTURE                          VAL R20
     1187 SETTABLEKS                       R21 R20 K132 ["isConfirmItemsStage"]
     1189 DUPCLOSURE                       R21 K133 [PROTO_2]
     1190 CAPTURE                          VAL R20
     1191 SETTABLEKS                       R21 R20 K134 ["isEditInfoStage"]
     1193 DUPCLOSURE                       R21 K135 [PROTO_3]
     1194 CAPTURE                          VAL R20
     1195 SETTABLEKS                       R21 R20 K136 ["isFailureStage"]
     1197 DUPCLOSURE                       R21 K137 [PROTO_4]
     1198 CAPTURE                          VAL R20
     1199 SETTABLEKS                       R21 R20 K138 ["isSuccessStage"]
     1201 GETIMPORT                        R21 K141 [UDim2.fromOffset]
     1203 LOADN                            R22 40
     1204 LOADN                            R23 40
     1205 CALL                             R21 2 1
     1206 GETIMPORT                        R22 K141 [UDim2.fromOffset]
     1208 LOADN                            R23 144
     1209 LOADN                            R24 88
     1210 CALL                             R22 2 1
     1211 DUPCLOSURE                       R23 K142 [PROTO_5]
     1212 CAPTURE                          VAL R22
     1213 DUPCLOSURE                       R24 K143 [PROTO_6]
     1214 DUPCLOSURE                       R25 K144 [PROTO_8]
     1215 CAPTURE                          VAL R0
     1216 CAPTURE                          VAL R21
     1217 CAPTURE                          VAL R6
     1218 CAPTURE                          VAL R7
     1219 SETTABLEKS                       R25 R20 K145 ["clickContinueButton"]
     1221 DUPCLOSURE                       R25 K146 [PROTO_10]
     1222 CAPTURE                          VAL R0
     1223 CAPTURE                          VAL R21
     1224 CAPTURE                          VAL R6
     1225 CAPTURE                          VAL R7
     1226 SETTABLEKS                       R25 R20 K147 ["clickBackButton"]
     1228 DUPCLOSURE                       R25 K148 [PROTO_13]
     1229 CAPTURE                          VAL R0
     1230 CAPTURE                          VAL R7
     1231 CAPTURE                          VAL R22
     1232 CAPTURE                          VAL R23
     1233 CAPTURE                          VAL R21
     1234 CAPTURE                          VAL R6
     1235 SETTABLEKS                       R25 R20 K149 ["changeCreator"]
     1237 DUPCLOSURE                       R25 K150 [PROTO_15]
     1238 CAPTURE                          VAL R20
     1239 CAPTURE                          VAL R0
     1240 CAPTURE                          VAL R7
     1241 CAPTURE                          VAL R23
     1242 CAPTURE                          VAL R21
     1243 CAPTURE                          VAL R6
     1244 SETTABLEKS                       R25 R20 K151 ["toggleItem"]
     1246 DUPCLOSURE                       R25 K152 [PROTO_16]
     1247 CAPTURE                          VAL R0
     1248 CAPTURE                          VAL R23
     1249 CAPTURE                          VAL R21
     1250 CAPTURE                          VAL R7
     1251 SETTABLEKS                       R25 R20 K153 ["changeColor"]
     1253 DUPCLOSURE                       R25 K154 [PROTO_20]
     1254 CAPTURE                          VAL R20
     1255 CAPTURE                          VAL R0
     1256 CAPTURE                          VAL R6
     1257 CAPTURE                          VAL R21
     1258 CAPTURE                          VAL R7
     1259 SETTABLEKS                       R25 R20 K155 ["enterName"]
     1261 DUPCLOSURE                       R25 K156 [PROTO_21]
     1262 CAPTURE                          VAL R20
     1263 SETTABLEKS                       R25 R20 K157 ["checkErrorBannerText"]
     1265 DUPCLOSURE                       R25 K158 [PROTO_22]
     1266 CAPTURE                          VAL R7
     1267 CAPTURE                          VAL R0
     1268 SETTABLEKS                       R25 R20 K159 ["queryErrorBannerCloseButton"]
     1270 DUPCLOSURE                       R25 K160 [PROTO_24]
     1271 CAPTURE                          VAL R20
     1272 CAPTURE                          VAL R23
     1273 CAPTURE                          VAL R0
     1274 CAPTURE                          VAL R21
     1275 CAPTURE                          VAL R6
     1276 CAPTURE                          VAL R7
     1277 SETTABLEKS                       R25 R20 K161 ["clickErrorBannerDismiss"]
     1279 DUPCLOSURE                       R25 K162 [PROTO_26]
     1280 CAPTURE                          VAL R0
     1281 CAPTURE                          VAL R21
     1282 CAPTURE                          VAL R6
     1283 CAPTURE                          VAL R7
     1284 SETTABLEKS                       R25 R20 K163 ["openErrorDialog"]
     1286 DUPCLOSURE                       R25 K164 [PROTO_27]
     1287 CAPTURE                          VAL R20
     1288 SETTABLEKS                       R25 R20 K165 ["checkErrorDialogText"]
     1290 DUPCLOSURE                       R25 K166 [PROTO_28]
     1291 CAPTURE                          VAL R20
     1292 SETTABLEKS                       R25 R20 K167 ["isItemInDetailsList"]
     1294 DUPCLOSURE                       R25 K168 [PROTO_29]
     1295 CAPTURE                          VAL R20
     1296 CAPTURE                          VAL R14
     1297 SETTABLEKS                       R25 R20 K169 ["getUserEquippedItems"]
     1299 DUPCLOSURE                       R25 K170 [PROTO_30]
     1300 CAPTURE                          VAL R20
     1301 SETTABLEKS                       R25 R20 K171 ["getMixedCreatorMakeupLookEquippedItems"]
     1303 DUPCLOSURE                       R25 K172 [PROTO_31]
     1304 CAPTURE                          VAL R20
     1305 CAPTURE                          VAL R14
     1306 SETTABLEKS                       R25 R20 K173 ["getGroupEquippedItems"]
     1308 DUPCLOSURE                       R25 K174 [PROTO_32]
     1309 CAPTURE                          VAL R20
     1310 CAPTURE                          VAL R12
     1311 CAPTURE                          VAL R9
     1312 SETTABLEKS                       R25 R20 K175 ["getExpectedLook"]
     1314 LOADNIL                          R25
     1315 SETTABLEKS                       R25 R20 K176 ["lookCreationInfo"]
     1317 DUPCLOSURE                       R25 K177 [PROTO_33]
     1318 CAPTURE                          VAL R20
     1319 DUPCLOSURE                       R26 K178 [PROTO_35]
     1320 CAPTURE                          VAL R8
     1321 CAPTURE                          VAL R1
     1322 CAPTURE                          VAL R11
     1323 CAPTURE                          VAL R20
     1324 CAPTURE                          VAL R13
     1325 DUPCLOSURE                       R27 K179 [PROTO_37]
     1326 CAPTURE                          VAL R8
     1327 CAPTURE                          VAL R1
     1328 CAPTURE                          VAL R11
     1329 CAPTURE                          VAL R20
     1330 CAPTURE                          VAL R26
     1331 DUPCLOSURE                       R28 K180 [PROTO_39]
     1332 CAPTURE                          VAL R8
     1333 DUPCLOSURE                       R29 K181 [PROTO_41]
     1334 CAPTURE                          VAL R8
     1335 CAPTURE                          VAL R1
     1336 CAPTURE                          VAL R11
     1337 CAPTURE                          VAL R20
     1338 CAPTURE                          VAL R26
     1339 DUPCLOSURE                       R30 K182 [PROTO_43]
     1340 CAPTURE                          VAL R8
     1341 CAPTURE                          VAL R11
     1342 CAPTURE                          VAL R1
     1343 CAPTURE                          VAL R20
     1344 CAPTURE                          VAL R26
     1345 DUPCLOSURE                       R31 K183 [PROTO_44]
     1346 CAPTURE                          VAL R13
     1347 CAPTURE                          VAL R27
     1348 CAPTURE                          VAL R28
     1349 CAPTURE                          VAL R29
     1350 CAPTURE                          VAL R30
     1351 CAPTURE                          VAL R26
     1352 SETTABLEKS                       R31 R20 K184 ["createMockLookComposerRequestInternal"]
     1354 DUPCLOSURE                       R31 K185 [PROTO_47]
     1355 CAPTURE                          VAL R0
     1356 CAPTURE                          VAL R19
     1357 CAPTURE                          VAL R5
     1358 CAPTURE                          VAL R3
     1359 CAPTURE                          VAL R18
     1360 CAPTURE                          VAL R6
     1361 CAPTURE                          VAL R7
     1362 SETTABLEKS                       R31 R20 K186 ["createLookComposerDialogTest"]
     1364 DUPCLOSURE                       R31 K187 [PROTO_51]
     1365 CAPTURE                          VAL R20
     1366 CAPTURE                          VAL R15
     1367 CAPTURE                          VAL R5
     1368 CAPTURE                          VAL R16
     1369 CAPTURE                          VAL R17
     1370 SETTABLEKS                       R31 R20 K188 ["lookCreationTest"]
     1372 DUPCLOSURE                       R31 K189 [PROTO_54]
     1373 CAPTURE                          VAL R0
     1374 CAPTURE                          VAL R7
     1375 CAPTURE                          VAL R6
     1376 SETTABLEKS                       R31 R20 K190 ["openAssetImportDialog"]
     1378 DUPCLOSURE                       R31 K191 [PROTO_58]
     1379 CAPTURE                          VAL R0
     1380 CAPTURE                          VAL R6
     1381 CAPTURE                          VAL R21
     1382 CAPTURE                          VAL R7
     1383 SETTABLEKS                       R31 R20 K192 ["addAssetIdsToImportDialog"]
     1385 DUPCLOSURE                       R31 K193 [PROTO_60]
     1386 CAPTURE                          VAL R0
     1387 CAPTURE                          VAL R21
     1388 CAPTURE                          VAL R6
     1389 CAPTURE                          VAL R7
     1390 SETTABLEKS                       R31 R20 K194 ["clickAddItemsButtonImportDialog"]
     1392 DUPCLOSURE                       R31 K195 [PROTO_63]
     1393 CAPTURE                          VAL R0
     1394 CAPTURE                          VAL R7
     1395 CAPTURE                          VAL R6
     1396 SETTABLEKS                       R31 R20 K196 ["openLookComposerDialog"]
     1398 DUPCLOSURE                       R31 K197 [PROTO_64]
     1399 CAPTURE                          VAL R20
     1400 SETTABLEKS                       R31 R20 K198 ["importMarketplaceItems"]
     1402 RETURN                           R20 1
