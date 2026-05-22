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
        9 DUPTABLE                         R2 K10 [{"showLookSaveMenu", "showCreateAvatarLook", "showCreateMakeupLook", "canCreateAvatarLook", "canCreateMakeupLook"}]
       10 LOADB                            R3 1
       11 SETTABLEKS                       R3 R2 K5 ["showLookSaveMenu"]
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R2 K6 ["showCreateAvatarLook"]
       16 LOADB                            R3 1
       17 SETTABLEKS                       R3 R2 K7 ["showCreateMakeupLook"]
       19 LOADB                            R3 1
       20 SETTABLEKS                       R3 R2 K8 ["canCreateAvatarLook"]
       22 LOADB                            R3 1
       23 SETTABLEKS                       R3 R2 K9 ["canCreateMakeupLook"]
       25 DUPTABLE                         R3 K12 [{"canCreateLook"}]
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R3 K11 ["canCreateLook"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K13 ["withPreviewerAndLizard"]
       32 NEWCLOSURE                       R5 P2
       33 CAPTURE                          VAL R0
       34 DUPTABLE                         R6 K15 [{"wrapAppContexts"}]
       35 NEWTABLE                         R7 0 3
       37 GETUPVAL                         R8 2
       38 GETTABLEKS                       R8 R8 K16 ["createElement"]
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R9 R9 K17 ["Provider"]
       43 DUPTABLE                         R10 K19 [{"value"}]
       44 SETTABLEKS                       R1 R10 K18 ["value"]
       46 CALL                             R8 2 1
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R9 R9 K16 ["createElement"]
       50 GETUPVAL                         R10 4
       51 GETTABLEKS                       R10 R10 K20 ["Context"]
       53 GETTABLEKS                       R10 R10 K17 ["Provider"]
       55 DUPTABLE                         R11 K19 [{"value"}]
       56 SETTABLEKS                       R2 R11 K18 ["value"]
       58 CALL                             R9 2 1
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R10 R10 K16 ["createElement"]
       62 GETUPVAL                         R11 5
       63 GETTABLEKS                       R11 R11 K20 ["Context"]
       65 GETTABLEKS                       R11 R11 K17 ["Provider"]
       67 DUPTABLE                         R12 K19 [{"value"}]
       68 SETTABLEKS                       R3 R12 K18 ["value"]
       70 CALL                             R10 2 1
       71 SETLIST                          R7 R8 3 [1]
       73 SETTABLEKS                       R7 R6 K14 ["wrapAppContexts"]
       75 CALL                             R4 2 -1
       76 RETURN                           R4 -1

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
      182 LOADN                            R25 77
      183 LOADN                            R26 188
      184 LOADN                            R27 43
      185 SETLIST                          R22 R23 5 [1]
      187 SETTABLEKS                       R22 R21 K48 ["USER_ASSET_IDS"]
      189 NEWTABLE                         R22 0 5
      191 LOADN                            R23 154
      192 LOADN                            R24 9
      193 LOADN                            R25 120
      194 LOADN                            R26 231
      195 LOADN                            R27 0
      196 SETLIST                          R22 R23 5 [1]
      198 SETTABLEKS                       R22 R21 K49 ["GROUP_ASSET_IDS"]
      200 LOADN                            R22 87
      201 SETTABLEKS                       R22 R21 K50 ["AVATAR_LOOK_ASSET_ID"]
      203 LOADN                            R22 60
      204 SETTABLEKS                       R22 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      206 NEWTABLE                         R22 0 6
      208 LOADN                            R23 209
      209 LOADN                            R24 210
      210 LOADN                            R25 211
      211 LOADN                            R26 212
      212 LOADN                            R27 213
      213 LOADN                            R28 214
      214 SETLIST                          R22 R23 6 [1]
      216 SETTABLEKS                       R22 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      218 NEWTABLE                         R22 16 0
      220 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      222 GETTABLEN                        R23 R24 1
      223 DUPTABLE                         R24 K57 [{"creatorType", "assetType", "paletteKey", "id"}]
      224 LOADK                            R25 K58 ["User"]
      225 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      227 GETIMPORT                        R25 K62 [Enum.AssetType.EyebrowAccessory]
      229 GETTABLEKS                       R25 R25 K63 ["Value"]
      231 SETTABLEKS                       R25 R24 K54 ["assetType"]
      233 LOADK                            R25 K64 ["Eyebrows"]
      234 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      236 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      238 GETTABLEN                        R25 R26 1
      239 SETTABLEKS                       R25 R24 K56 ["id"]
      241 SETTABLE                         R24 R22 R23
      242 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      244 GETTABLEN                        R23 R24 2
      245 DUPTABLE                         R24 K57 [{"creatorType", "assetType", "paletteKey", "id"}]
      246 LOADK                            R25 K58 ["User"]
      247 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      249 GETIMPORT                        R25 K66 [Enum.AssetType.EyelashAccessory]
      251 GETTABLEKS                       R25 R25 K63 ["Value"]
      253 SETTABLEKS                       R25 R24 K54 ["assetType"]
      255 LOADK                            R25 K67 ["Eyelashes"]
      256 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      258 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      260 GETTABLEN                        R25 R26 2
      261 SETTABLEKS                       R25 R24 K56 ["id"]
      263 SETTABLE                         R24 R22 R23
      264 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      266 GETTABLEN                        R23 R24 3
      267 DUPTABLE                         R24 K57 [{"creatorType", "assetType", "paletteKey", "id"}]
      268 LOADK                            R25 K58 ["User"]
      269 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      271 GETIMPORT                        R25 K69 [Enum.AssetType.FaceMakeup]
      273 GETTABLEKS                       R25 R25 K63 ["Value"]
      275 SETTABLEKS                       R25 R24 K54 ["assetType"]
      277 LOADK                            R25 K68 ["FaceMakeup"]
      278 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      280 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      282 GETTABLEN                        R25 R26 3
      283 SETTABLEKS                       R25 R24 K56 ["id"]
      285 SETTABLE                         R24 R22 R23
      286 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      288 GETTABLEN                        R23 R24 4
      289 DUPTABLE                         R24 K57 [{"creatorType", "assetType", "paletteKey", "id"}]
      290 LOADK                            R25 K58 ["User"]
      291 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      293 GETIMPORT                        R25 K71 [Enum.AssetType.LipMakeup]
      295 GETTABLEKS                       R25 R25 K63 ["Value"]
      297 SETTABLEKS                       R25 R24 K54 ["assetType"]
      299 LOADK                            R25 K70 ["LipMakeup"]
      300 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      302 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      304 GETTABLEN                        R25 R26 4
      305 SETTABLEKS                       R25 R24 K56 ["id"]
      307 SETTABLE                         R24 R22 R23
      308 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      310 GETTABLEN                        R23 R24 5
      311 DUPTABLE                         R24 K57 [{"creatorType", "assetType", "paletteKey", "id"}]
      312 LOADK                            R25 K58 ["User"]
      313 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      315 GETIMPORT                        R25 K73 [Enum.AssetType.EyeMakeup]
      317 GETTABLEKS                       R25 R25 K63 ["Value"]
      319 SETTABLEKS                       R25 R24 K54 ["assetType"]
      321 LOADK                            R25 K72 ["EyeMakeup"]
      322 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      324 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      326 GETTABLEN                        R25 R26 5
      327 SETTABLEKS                       R25 R24 K56 ["id"]
      329 SETTABLE                         R24 R22 R23
      330 GETTABLEKS                       R24 R21 K49 ["GROUP_ASSET_IDS"]
      332 GETTABLEN                        R23 R24 1
      333 DUPTABLE                         R24 K57 [{"creatorType", "assetType", "paletteKey", "id"}]
      334 LOADK                            R25 K74 ["Group"]
      335 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      337 GETIMPORT                        R25 K62 [Enum.AssetType.EyebrowAccessory]
      339 GETTABLEKS                       R25 R25 K63 ["Value"]
      341 SETTABLEKS                       R25 R24 K54 ["assetType"]
      343 LOADK                            R25 K64 ["Eyebrows"]
      344 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      346 GETTABLEKS                       R26 R21 K49 ["GROUP_ASSET_IDS"]
      348 GETTABLEN                        R25 R26 1
      349 SETTABLEKS                       R25 R24 K56 ["id"]
      351 SETTABLE                         R24 R22 R23
      352 GETTABLEKS                       R24 R21 K49 ["GROUP_ASSET_IDS"]
      354 GETTABLEN                        R23 R24 2
      355 DUPTABLE                         R24 K57 [{"creatorType", "assetType", "paletteKey", "id"}]
      356 LOADK                            R25 K74 ["Group"]
      357 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      359 GETIMPORT                        R25 K66 [Enum.AssetType.EyelashAccessory]
      361 GETTABLEKS                       R25 R25 K63 ["Value"]
      363 SETTABLEKS                       R25 R24 K54 ["assetType"]
      365 LOADK                            R25 K67 ["Eyelashes"]
      366 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      368 GETTABLEKS                       R26 R21 K49 ["GROUP_ASSET_IDS"]
      370 GETTABLEN                        R25 R26 2
      371 SETTABLEKS                       R25 R24 K56 ["id"]
      373 SETTABLE                         R24 R22 R23
      374 GETTABLEKS                       R24 R21 K49 ["GROUP_ASSET_IDS"]
      376 GETTABLEN                        R23 R24 3
      377 DUPTABLE                         R24 K57 [{"creatorType", "assetType", "paletteKey", "id"}]
      378 LOADK                            R25 K74 ["Group"]
      379 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      381 GETIMPORT                        R25 K69 [Enum.AssetType.FaceMakeup]
      383 GETTABLEKS                       R25 R25 K63 ["Value"]
      385 SETTABLEKS                       R25 R24 K54 ["assetType"]
      387 LOADK                            R25 K68 ["FaceMakeup"]
      388 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      390 GETTABLEKS                       R26 R21 K49 ["GROUP_ASSET_IDS"]
      392 GETTABLEN                        R25 R26 3
      393 SETTABLEKS                       R25 R24 K56 ["id"]
      395 SETTABLE                         R24 R22 R23
      396 GETTABLEKS                       R24 R21 K49 ["GROUP_ASSET_IDS"]
      398 GETTABLEN                        R23 R24 4
      399 DUPTABLE                         R24 K57 [{"creatorType", "assetType", "paletteKey", "id"}]
      400 LOADK                            R25 K74 ["Group"]
      401 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      403 GETIMPORT                        R25 K71 [Enum.AssetType.LipMakeup]
      405 GETTABLEKS                       R25 R25 K63 ["Value"]
      407 SETTABLEKS                       R25 R24 K54 ["assetType"]
      409 LOADK                            R25 K72 ["EyeMakeup"]
      410 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      412 GETTABLEKS                       R26 R21 K49 ["GROUP_ASSET_IDS"]
      414 GETTABLEN                        R25 R26 4
      415 SETTABLEKS                       R25 R24 K56 ["id"]
      417 SETTABLE                         R24 R22 R23
      418 GETTABLEKS                       R24 R21 K49 ["GROUP_ASSET_IDS"]
      420 GETTABLEN                        R23 R24 5
      421 DUPTABLE                         R24 K57 [{"creatorType", "assetType", "paletteKey", "id"}]
      422 LOADK                            R25 K74 ["Group"]
      423 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      425 GETIMPORT                        R25 K73 [Enum.AssetType.EyeMakeup]
      427 GETTABLEKS                       R25 R25 K63 ["Value"]
      429 SETTABLEKS                       R25 R24 K54 ["assetType"]
      431 LOADK                            R25 K70 ["LipMakeup"]
      432 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      434 GETTABLEKS                       R26 R21 K49 ["GROUP_ASSET_IDS"]
      436 GETTABLEN                        R25 R26 5
      437 SETTABLEKS                       R25 R24 K56 ["id"]
      439 SETTABLE                         R24 R22 R23
      440 SETTABLEKS                       R22 R21 K75 ["MOCK_ITEM_DATA"]
      442 NEWTABLE                         R22 16 0
      444 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      446 GETTABLEN                        R23 R24 1
      447 DUPTABLE                         R24 K82 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      448 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      450 GETTABLEN                        R25 R26 1
      451 SETTABLEKS                       R25 R24 K76 ["Id"]
      453 LOADK                            R25 K83 ["User Asset 1"]
      454 SETTABLEKS                       R25 R24 K77 ["Name"]
      456 GETIMPORT                        R25 K62 [Enum.AssetType.EyebrowAccessory]
      458 GETTABLEKS                       R25 R25 K77 ["Name"]
      460 SETTABLEKS                       R25 R24 K60 ["AssetType"]
      462 LOADN                            R25 1
      463 SETTABLEKS                       R25 R24 K78 ["CreatorTargetId"]
      465 LOADK                            R25 K58 ["User"]
      466 SETTABLEKS                       R25 R24 K79 ["CreatorType"]
      468 LOADK                            R25 K84 ["Username"]
      469 SETTABLEKS                       R25 R24 K80 ["CreatorName"]
      471 LOADB                            R25 1
      472 SETTABLEKS                       R25 R24 K81 ["CreatorHasVerifiedBadge"]
      474 SETTABLE                         R24 R22 R23
      475 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      477 GETTABLEN                        R23 R24 2
      478 DUPTABLE                         R24 K82 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      479 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      481 GETTABLEN                        R25 R26 2
      482 SETTABLEKS                       R25 R24 K76 ["Id"]
      484 LOADK                            R25 K85 ["User Asset 2"]
      485 SETTABLEKS                       R25 R24 K77 ["Name"]
      487 GETIMPORT                        R25 K66 [Enum.AssetType.EyelashAccessory]
      489 GETTABLEKS                       R25 R25 K77 ["Name"]
      491 SETTABLEKS                       R25 R24 K60 ["AssetType"]
      493 LOADN                            R25 1
      494 SETTABLEKS                       R25 R24 K78 ["CreatorTargetId"]
      496 LOADK                            R25 K58 ["User"]
      497 SETTABLEKS                       R25 R24 K79 ["CreatorType"]
      499 LOADK                            R25 K84 ["Username"]
      500 SETTABLEKS                       R25 R24 K80 ["CreatorName"]
      502 LOADB                            R25 1
      503 SETTABLEKS                       R25 R24 K81 ["CreatorHasVerifiedBadge"]
      505 SETTABLE                         R24 R22 R23
      506 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      508 GETTABLEN                        R23 R24 3
      509 DUPTABLE                         R24 K82 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      510 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      512 GETTABLEN                        R25 R26 3
      513 SETTABLEKS                       R25 R24 K76 ["Id"]
      515 LOADK                            R25 K86 ["User Asset 3"]
      516 SETTABLEKS                       R25 R24 K77 ["Name"]
      518 GETIMPORT                        R25 K69 [Enum.AssetType.FaceMakeup]
      520 GETTABLEKS                       R25 R25 K77 ["Name"]
      522 SETTABLEKS                       R25 R24 K60 ["AssetType"]
      524 LOADN                            R25 1
      525 SETTABLEKS                       R25 R24 K78 ["CreatorTargetId"]
      527 LOADK                            R25 K58 ["User"]
      528 SETTABLEKS                       R25 R24 K79 ["CreatorType"]
      530 LOADK                            R25 K84 ["Username"]
      531 SETTABLEKS                       R25 R24 K80 ["CreatorName"]
      533 LOADB                            R25 1
      534 SETTABLEKS                       R25 R24 K81 ["CreatorHasVerifiedBadge"]
      536 SETTABLE                         R24 R22 R23
      537 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      539 GETTABLEN                        R23 R24 4
      540 DUPTABLE                         R24 K82 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      541 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      543 GETTABLEN                        R25 R26 4
      544 SETTABLEKS                       R25 R24 K76 ["Id"]
      546 LOADK                            R25 K87 ["User Asset 4"]
      547 SETTABLEKS                       R25 R24 K77 ["Name"]
      549 GETIMPORT                        R25 K71 [Enum.AssetType.LipMakeup]
      551 GETTABLEKS                       R25 R25 K77 ["Name"]
      553 SETTABLEKS                       R25 R24 K60 ["AssetType"]
      555 LOADN                            R25 1
      556 SETTABLEKS                       R25 R24 K78 ["CreatorTargetId"]
      558 LOADK                            R25 K58 ["User"]
      559 SETTABLEKS                       R25 R24 K79 ["CreatorType"]
      561 LOADK                            R25 K84 ["Username"]
      562 SETTABLEKS                       R25 R24 K80 ["CreatorName"]
      564 LOADB                            R25 1
      565 SETTABLEKS                       R25 R24 K81 ["CreatorHasVerifiedBadge"]
      567 SETTABLE                         R24 R22 R23
      568 GETTABLEKS                       R24 R21 K48 ["USER_ASSET_IDS"]
      570 GETTABLEN                        R23 R24 5
      571 DUPTABLE                         R24 K82 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      572 GETTABLEKS                       R26 R21 K48 ["USER_ASSET_IDS"]
      574 GETTABLEN                        R25 R26 5
      575 SETTABLEKS                       R25 R24 K76 ["Id"]
      577 LOADK                            R25 K88 ["User Asset 5"]
      578 SETTABLEKS                       R25 R24 K77 ["Name"]
      580 GETIMPORT                        R25 K73 [Enum.AssetType.EyeMakeup]
      582 GETTABLEKS                       R25 R25 K77 ["Name"]
      584 SETTABLEKS                       R25 R24 K60 ["AssetType"]
      586 LOADN                            R25 1
      587 SETTABLEKS                       R25 R24 K78 ["CreatorTargetId"]
      589 LOADK                            R25 K58 ["User"]
      590 SETTABLEKS                       R25 R24 K79 ["CreatorType"]
      592 LOADK                            R25 K84 ["Username"]
      593 SETTABLEKS                       R25 R24 K80 ["CreatorName"]
      595 LOADB                            R25 1
      596 SETTABLEKS                       R25 R24 K81 ["CreatorHasVerifiedBadge"]
      598 SETTABLE                         R24 R22 R23
      599 GETTABLEKS                       R23 R21 K50 ["AVATAR_LOOK_ASSET_ID"]
      601 DUPTABLE                         R24 K82 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      602 GETTABLEKS                       R25 R21 K50 ["AVATAR_LOOK_ASSET_ID"]
      604 SETTABLEKS                       R25 R24 K76 ["Id"]
      606 LOADK                            R25 K89 ["Avatar Look Asset 1"]
      607 SETTABLEKS                       R25 R24 K77 ["Name"]
      609 GETIMPORT                        R25 K91 [Enum.AssetType.ShirtAccessory]
      611 GETTABLEKS                       R25 R25 K77 ["Name"]
      613 SETTABLEKS                       R25 R24 K60 ["AssetType"]
      615 LOADN                            R25 1
      616 SETTABLEKS                       R25 R24 K78 ["CreatorTargetId"]
      618 LOADK                            R25 K58 ["User"]
      619 SETTABLEKS                       R25 R24 K79 ["CreatorType"]
      621 LOADK                            R25 K84 ["Username"]
      622 SETTABLEKS                       R25 R24 K80 ["CreatorName"]
      624 LOADB                            R25 1
      625 SETTABLEKS                       R25 R24 K81 ["CreatorHasVerifiedBadge"]
      627 SETTABLE                         R24 R22 R23
      628 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      630 GETTABLEN                        R23 R24 1
      631 DUPTABLE                         R24 K82 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      632 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      634 GETTABLEN                        R25 R26 1
      635 SETTABLEKS                       R25 R24 K76 ["Id"]
      637 LOADK                            R25 K92 ["Avatar Look Bundle Asset 1"]
      638 SETTABLEKS                       R25 R24 K77 ["Name"]
      640 GETIMPORT                        R25 K94 [Enum.AssetType.DynamicHead]
      642 GETTABLEKS                       R25 R25 K77 ["Name"]
      644 SETTABLEKS                       R25 R24 K60 ["AssetType"]
      646 LOADN                            R25 1
      647 SETTABLEKS                       R25 R24 K78 ["CreatorTargetId"]
      649 LOADK                            R25 K58 ["User"]
      650 SETTABLEKS                       R25 R24 K79 ["CreatorType"]
      652 LOADK                            R25 K84 ["Username"]
      653 SETTABLEKS                       R25 R24 K80 ["CreatorName"]
      655 LOADB                            R25 1
      656 SETTABLEKS                       R25 R24 K81 ["CreatorHasVerifiedBadge"]
      658 SETTABLE                         R24 R22 R23
      659 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      661 GETTABLEN                        R23 R24 2
      662 DUPTABLE                         R24 K82 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      663 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      665 GETTABLEN                        R25 R26 2
      666 SETTABLEKS                       R25 R24 K76 ["Id"]
      668 LOADK                            R25 K95 ["Avatar Look Bundle Asset 2"]
      669 SETTABLEKS                       R25 R24 K77 ["Name"]
      671 GETIMPORT                        R25 K97 [Enum.AssetType.Torso]
      673 GETTABLEKS                       R25 R25 K77 ["Name"]
      675 SETTABLEKS                       R25 R24 K60 ["AssetType"]
      677 LOADN                            R25 1
      678 SETTABLEKS                       R25 R24 K78 ["CreatorTargetId"]
      680 LOADK                            R25 K58 ["User"]
      681 SETTABLEKS                       R25 R24 K79 ["CreatorType"]
      683 LOADK                            R25 K84 ["Username"]
      684 SETTABLEKS                       R25 R24 K80 ["CreatorName"]
      686 LOADB                            R25 1
      687 SETTABLEKS                       R25 R24 K81 ["CreatorHasVerifiedBadge"]
      689 SETTABLE                         R24 R22 R23
      690 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      692 GETTABLEN                        R23 R24 3
      693 DUPTABLE                         R24 K82 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      694 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      696 GETTABLEN                        R25 R26 3
      697 SETTABLEKS                       R25 R24 K76 ["Id"]
      699 LOADK                            R25 K98 ["Avatar Look Bundle Asset 3"]
      700 SETTABLEKS                       R25 R24 K77 ["Name"]
      702 GETIMPORT                        R25 K100 [Enum.AssetType.LeftArm]
      704 GETTABLEKS                       R25 R25 K77 ["Name"]
      706 SETTABLEKS                       R25 R24 K60 ["AssetType"]
      708 LOADN                            R25 1
      709 SETTABLEKS                       R25 R24 K78 ["CreatorTargetId"]
      711 LOADK                            R25 K58 ["User"]
      712 SETTABLEKS                       R25 R24 K79 ["CreatorType"]
      714 LOADK                            R25 K84 ["Username"]
      715 SETTABLEKS                       R25 R24 K80 ["CreatorName"]
      717 LOADB                            R25 1
      718 SETTABLEKS                       R25 R24 K81 ["CreatorHasVerifiedBadge"]
      720 SETTABLE                         R24 R22 R23
      721 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      723 GETTABLEN                        R23 R24 4
      724 DUPTABLE                         R24 K82 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      725 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      727 GETTABLEN                        R25 R26 4
      728 SETTABLEKS                       R25 R24 K76 ["Id"]
      730 LOADK                            R25 K101 ["Avatar Look Bundle Asset 4"]
      731 SETTABLEKS                       R25 R24 K77 ["Name"]
      733 GETIMPORT                        R25 K103 [Enum.AssetType.LeftLeg]
      735 GETTABLEKS                       R25 R25 K77 ["Name"]
      737 SETTABLEKS                       R25 R24 K60 ["AssetType"]
      739 LOADN                            R25 1
      740 SETTABLEKS                       R25 R24 K78 ["CreatorTargetId"]
      742 LOADK                            R25 K58 ["User"]
      743 SETTABLEKS                       R25 R24 K79 ["CreatorType"]
      745 LOADK                            R25 K84 ["Username"]
      746 SETTABLEKS                       R25 R24 K80 ["CreatorName"]
      748 LOADB                            R25 1
      749 SETTABLEKS                       R25 R24 K81 ["CreatorHasVerifiedBadge"]
      751 SETTABLE                         R24 R22 R23
      752 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      754 GETTABLEN                        R23 R24 5
      755 DUPTABLE                         R24 K82 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      756 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      758 GETTABLEN                        R25 R26 5
      759 SETTABLEKS                       R25 R24 K76 ["Id"]
      761 LOADK                            R25 K104 ["Avatar Look Bundle Asset 5"]
      762 SETTABLEKS                       R25 R24 K77 ["Name"]
      764 GETIMPORT                        R25 K106 [Enum.AssetType.RightArm]
      766 GETTABLEKS                       R25 R25 K77 ["Name"]
      768 SETTABLEKS                       R25 R24 K60 ["AssetType"]
      770 LOADN                            R25 1
      771 SETTABLEKS                       R25 R24 K78 ["CreatorTargetId"]
      773 LOADK                            R25 K58 ["User"]
      774 SETTABLEKS                       R25 R24 K79 ["CreatorType"]
      776 LOADK                            R25 K84 ["Username"]
      777 SETTABLEKS                       R25 R24 K80 ["CreatorName"]
      779 LOADB                            R25 1
      780 SETTABLEKS                       R25 R24 K81 ["CreatorHasVerifiedBadge"]
      782 SETTABLE                         R24 R22 R23
      783 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      785 GETTABLEN                        R23 R24 6
      786 DUPTABLE                         R24 K82 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      787 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      789 GETTABLEN                        R25 R26 6
      790 SETTABLEKS                       R25 R24 K76 ["Id"]
      792 LOADK                            R25 K107 ["Avatar Look Bundle Asset 6"]
      793 SETTABLEKS                       R25 R24 K77 ["Name"]
      795 GETIMPORT                        R25 K109 [Enum.AssetType.RightLeg]
      797 GETTABLEKS                       R25 R25 K77 ["Name"]
      799 SETTABLEKS                       R25 R24 K60 ["AssetType"]
      801 LOADN                            R25 1
      802 SETTABLEKS                       R25 R24 K78 ["CreatorTargetId"]
      804 LOADK                            R25 K58 ["User"]
      805 SETTABLEKS                       R25 R24 K79 ["CreatorType"]
      807 LOADK                            R25 K84 ["Username"]
      808 SETTABLEKS                       R25 R24 K80 ["CreatorName"]
      810 LOADB                            R25 1
      811 SETTABLEKS                       R25 R24 K81 ["CreatorHasVerifiedBadge"]
      813 SETTABLE                         R24 R22 R23
      814 SETTABLEKS                       R22 R21 K110 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
      816 NEWTABLE                         R22 1 0
      818 GETTABLEKS                       R23 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      820 DUPTABLE                         R24 K112 [{"Id", "Name", "CreatorName", "CreatorHasVerifiedBadge", "BundledItems"}]
      821 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      823 SETTABLEKS                       R25 R24 K76 ["Id"]
      825 LOADK                            R26 K113 ["Test Bundle"]
      826 GETTABLEKS                       R28 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      828 FASTCALL1                        TOSTRING R28 ; [+2]
      829 GETIMPORT                        R27 K115 [tostring]
      831 CALL                             R27 1 1
      832 CONCAT                           R25 R26 R27
      833 SETTABLEKS                       R25 R24 K77 ["Name"]
      835 LOADK                            R25 K84 ["Username"]
      836 SETTABLEKS                       R25 R24 K80 ["CreatorName"]
      838 LOADB                            R25 1
      839 SETTABLEKS                       R25 R24 K81 ["CreatorHasVerifiedBadge"]
      841 NEWTABLE                         R25 0 6
      843 DUPTABLE                         R26 K116 [{"Id"}]
      844 GETTABLEKS                       R28 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      846 GETTABLEN                        R27 R28 1
      847 SETTABLEKS                       R27 R26 K76 ["Id"]
      849 DUPTABLE                         R27 K116 [{"Id"}]
      850 GETTABLEKS                       R29 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      852 GETTABLEN                        R28 R29 2
      853 SETTABLEKS                       R28 R27 K76 ["Id"]
      855 DUPTABLE                         R28 K116 [{"Id"}]
      856 GETTABLEKS                       R30 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      858 GETTABLEN                        R29 R30 3
      859 SETTABLEKS                       R29 R28 K76 ["Id"]
      861 DUPTABLE                         R29 K116 [{"Id"}]
      862 GETTABLEKS                       R31 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      864 GETTABLEN                        R30 R31 4
      865 SETTABLEKS                       R30 R29 K76 ["Id"]
      867 DUPTABLE                         R30 K116 [{"Id"}]
      868 GETTABLEKS                       R32 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      870 GETTABLEN                        R31 R32 5
      871 SETTABLEKS                       R31 R30 K76 ["Id"]
      873 DUPTABLE                         R31 K116 [{"Id"}]
      874 GETTABLEKS                       R33 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      876 GETTABLEN                        R32 R33 6
      877 SETTABLEKS                       R32 R31 K76 ["Id"]
      879 SETLIST                          R25 R26 6 [1]
      881 SETTABLEKS                       R25 R24 K111 ["BundledItems"]
      883 SETTABLE                         R24 R22 R23
      884 SETTABLEKS                       R22 R21 K117 ["MOCK_AVATAR_EDITOR_SERVICE_BUNDLE_DETAILS"]
      886 NEWTABLE                         R22 8 0
      888 GETTABLEKS                       R23 R21 K50 ["AVATAR_LOOK_ASSET_ID"]
      890 DUPTABLE                         R24 K57 [{"creatorType", "assetType", "paletteKey", "id"}]
      891 LOADK                            R25 K58 ["User"]
      892 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      894 GETIMPORT                        R25 K91 [Enum.AssetType.ShirtAccessory]
      896 GETTABLEKS                       R25 R25 K63 ["Value"]
      898 SETTABLEKS                       R25 R24 K54 ["assetType"]
      900 LOADK                            R25 K118 ["Shirts"]
      901 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      903 GETTABLEKS                       R25 R21 K50 ["AVATAR_LOOK_ASSET_ID"]
      905 SETTABLEKS                       R25 R24 K56 ["id"]
      907 SETTABLE                         R24 R22 R23
      908 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      910 GETTABLEN                        R23 R24 1
      911 DUPTABLE                         R24 K120 [{"creatorType", "assetType", "paletteKey", "id", "bundleId"}]
      912 LOADK                            R25 K58 ["User"]
      913 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      915 GETIMPORT                        R25 K94 [Enum.AssetType.DynamicHead]
      917 GETTABLEKS                       R25 R25 K63 ["Value"]
      919 SETTABLEKS                       R25 R24 K54 ["assetType"]
      921 LOADK                            R25 K121 ["HeadBodyPart"]
      922 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      924 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      926 GETTABLEN                        R25 R26 1
      927 SETTABLEKS                       R25 R24 K56 ["id"]
      929 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      931 SETTABLEKS                       R25 R24 K119 ["bundleId"]
      933 SETTABLE                         R24 R22 R23
      934 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      936 GETTABLEN                        R23 R24 2
      937 DUPTABLE                         R24 K120 [{"creatorType", "assetType", "paletteKey", "id", "bundleId"}]
      938 LOADK                            R25 K58 ["User"]
      939 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      941 GETIMPORT                        R25 K97 [Enum.AssetType.Torso]
      943 GETTABLEKS                       R25 R25 K63 ["Value"]
      945 SETTABLEKS                       R25 R24 K54 ["assetType"]
      947 LOADK                            R25 K96 ["Torso"]
      948 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      950 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      952 GETTABLEN                        R25 R26 2
      953 SETTABLEKS                       R25 R24 K56 ["id"]
      955 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      957 SETTABLEKS                       R25 R24 K119 ["bundleId"]
      959 SETTABLE                         R24 R22 R23
      960 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      962 GETTABLEN                        R23 R24 3
      963 DUPTABLE                         R24 K120 [{"creatorType", "assetType", "paletteKey", "id", "bundleId"}]
      964 LOADK                            R25 K58 ["User"]
      965 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      967 GETIMPORT                        R25 K100 [Enum.AssetType.LeftArm]
      969 GETTABLEKS                       R25 R25 K63 ["Value"]
      971 SETTABLEKS                       R25 R24 K54 ["assetType"]
      973 LOADK                            R25 K99 ["LeftArm"]
      974 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
      976 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      978 GETTABLEN                        R25 R26 3
      979 SETTABLEKS                       R25 R24 K56 ["id"]
      981 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
      983 SETTABLEKS                       R25 R24 K119 ["bundleId"]
      985 SETTABLE                         R24 R22 R23
      986 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      988 GETTABLEN                        R23 R24 4
      989 DUPTABLE                         R24 K120 [{"creatorType", "assetType", "paletteKey", "id", "bundleId"}]
      990 LOADK                            R25 K58 ["User"]
      991 SETTABLEKS                       R25 R24 K53 ["creatorType"]
      993 GETIMPORT                        R25 K103 [Enum.AssetType.LeftLeg]
      995 GETTABLEKS                       R25 R25 K63 ["Value"]
      997 SETTABLEKS                       R25 R24 K54 ["assetType"]
      999 LOADK                            R25 K102 ["LeftLeg"]
     1000 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
     1002 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1004 GETTABLEN                        R25 R26 4
     1005 SETTABLEKS                       R25 R24 K56 ["id"]
     1007 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
     1009 SETTABLEKS                       R25 R24 K119 ["bundleId"]
     1011 SETTABLE                         R24 R22 R23
     1012 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1014 GETTABLEN                        R23 R24 5
     1015 DUPTABLE                         R24 K120 [{"creatorType", "assetType", "paletteKey", "id", "bundleId"}]
     1016 LOADK                            R25 K58 ["User"]
     1017 SETTABLEKS                       R25 R24 K53 ["creatorType"]
     1019 GETIMPORT                        R25 K106 [Enum.AssetType.RightArm]
     1021 GETTABLEKS                       R25 R25 K63 ["Value"]
     1023 SETTABLEKS                       R25 R24 K54 ["assetType"]
     1025 LOADK                            R25 K105 ["RightArm"]
     1026 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
     1028 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1030 GETTABLEN                        R25 R26 5
     1031 SETTABLEKS                       R25 R24 K56 ["id"]
     1033 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
     1035 SETTABLEKS                       R25 R24 K119 ["bundleId"]
     1037 SETTABLE                         R24 R22 R23
     1038 GETTABLEKS                       R24 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1040 GETTABLEN                        R23 R24 6
     1041 DUPTABLE                         R24 K120 [{"creatorType", "assetType", "paletteKey", "id", "bundleId"}]
     1042 LOADK                            R25 K58 ["User"]
     1043 SETTABLEKS                       R25 R24 K53 ["creatorType"]
     1045 GETIMPORT                        R25 K109 [Enum.AssetType.RightLeg]
     1047 GETTABLEKS                       R25 R25 K63 ["Value"]
     1049 SETTABLEKS                       R25 R24 K54 ["assetType"]
     1051 LOADK                            R25 K108 ["RightLeg"]
     1052 SETTABLEKS                       R25 R24 K55 ["paletteKey"]
     1054 GETTABLEKS                       R26 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1056 GETTABLEN                        R25 R26 6
     1057 SETTABLEKS                       R25 R24 K56 ["id"]
     1059 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
     1061 SETTABLEKS                       R25 R24 K119 ["bundleId"]
     1063 SETTABLE                         R24 R22 R23
     1064 SETTABLEKS                       R22 R21 K122 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
     1066 NEWTABLE                         R22 1 0
     1068 GETTABLEKS                       R23 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
     1070 DUPTABLE                         R24 K126 [{"id", "name", "bundleType", "creatorType", "assetsInBundle"}]
     1071 GETTABLEKS                       R25 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
     1073 SETTABLEKS                       R25 R24 K56 ["id"]
     1075 LOADK                            R26 K113 ["Test Bundle"]
     1076 GETTABLEKS                       R28 R21 K51 ["AVATAR_LOOK_BUNDLE_ID"]
     1078 FASTCALL1                        TOSTRING R28 ; [+2]
     1079 GETIMPORT                        R27 K115 [tostring]
     1081 CALL                             R27 1 1
     1082 CONCAT                           R25 R26 R27
     1083 SETTABLEKS                       R25 R24 K123 ["name"]
     1085 LOADN                            R25 1
     1086 SETTABLEKS                       R25 R24 K124 ["bundleType"]
     1088 LOADK                            R25 K58 ["User"]
     1089 SETTABLEKS                       R25 R24 K53 ["creatorType"]
     1091 NEWTABLE                         R25 0 6
     1093 DUPTABLE                         R26 K128 [{"assetType", "id", "isIncluded"}]
     1094 GETIMPORT                        R27 K94 [Enum.AssetType.DynamicHead]
     1096 GETTABLEKS                       R27 R27 K63 ["Value"]
     1098 SETTABLEKS                       R27 R26 K54 ["assetType"]
     1100 GETTABLEKS                       R28 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1102 GETTABLEN                        R27 R28 1
     1103 SETTABLEKS                       R27 R26 K56 ["id"]
     1105 LOADB                            R27 1
     1106 SETTABLEKS                       R27 R26 K127 ["isIncluded"]
     1108 DUPTABLE                         R27 K128 [{"assetType", "id", "isIncluded"}]
     1109 GETIMPORT                        R28 K97 [Enum.AssetType.Torso]
     1111 GETTABLEKS                       R28 R28 K63 ["Value"]
     1113 SETTABLEKS                       R28 R27 K54 ["assetType"]
     1115 GETTABLEKS                       R29 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1117 GETTABLEN                        R28 R29 2
     1118 SETTABLEKS                       R28 R27 K56 ["id"]
     1120 LOADB                            R28 1
     1121 SETTABLEKS                       R28 R27 K127 ["isIncluded"]
     1123 DUPTABLE                         R28 K128 [{"assetType", "id", "isIncluded"}]
     1124 GETIMPORT                        R29 K100 [Enum.AssetType.LeftArm]
     1126 GETTABLEKS                       R29 R29 K63 ["Value"]
     1128 SETTABLEKS                       R29 R28 K54 ["assetType"]
     1130 GETTABLEKS                       R30 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1132 GETTABLEN                        R29 R30 3
     1133 SETTABLEKS                       R29 R28 K56 ["id"]
     1135 LOADB                            R29 1
     1136 SETTABLEKS                       R29 R28 K127 ["isIncluded"]
     1138 DUPTABLE                         R29 K128 [{"assetType", "id", "isIncluded"}]
     1139 GETIMPORT                        R30 K103 [Enum.AssetType.LeftLeg]
     1141 GETTABLEKS                       R30 R30 K63 ["Value"]
     1143 SETTABLEKS                       R30 R29 K54 ["assetType"]
     1145 GETTABLEKS                       R31 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1147 GETTABLEN                        R30 R31 4
     1148 SETTABLEKS                       R30 R29 K56 ["id"]
     1150 LOADB                            R30 1
     1151 SETTABLEKS                       R30 R29 K127 ["isIncluded"]
     1153 DUPTABLE                         R30 K128 [{"assetType", "id", "isIncluded"}]
     1154 GETIMPORT                        R31 K106 [Enum.AssetType.RightArm]
     1156 GETTABLEKS                       R31 R31 K63 ["Value"]
     1158 SETTABLEKS                       R31 R30 K54 ["assetType"]
     1160 GETTABLEKS                       R32 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1162 GETTABLEN                        R31 R32 5
     1163 SETTABLEKS                       R31 R30 K56 ["id"]
     1165 LOADB                            R31 1
     1166 SETTABLEKS                       R31 R30 K127 ["isIncluded"]
     1168 DUPTABLE                         R31 K128 [{"assetType", "id", "isIncluded"}]
     1169 GETIMPORT                        R32 K109 [Enum.AssetType.RightLeg]
     1171 GETTABLEKS                       R32 R32 K63 ["Value"]
     1173 SETTABLEKS                       R32 R31 K54 ["assetType"]
     1175 GETTABLEKS                       R33 R21 K52 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1177 GETTABLEN                        R32 R33 6
     1178 SETTABLEKS                       R32 R31 K56 ["id"]
     1180 LOADB                            R32 1
     1181 SETTABLEKS                       R32 R31 K127 ["isIncluded"]
     1183 SETLIST                          R25 R26 6 [1]
     1185 SETTABLEKS                       R25 R24 K125 ["assetsInBundle"]
     1187 SETTABLE                         R24 R22 R23
     1188 SETTABLEKS                       R22 R21 K129 ["MOCK_AVATAR_LOOK_BUNDLE_DATA"]
     1190 DUPCLOSURE                       R22 K130 [PROTO_0]
     1191 CAPTURE                          VAL R0
     1192 SETTABLEKS                       R22 R21 K131 ["findTextInCoreGui"]
     1194 DUPCLOSURE                       R22 K132 [PROTO_1]
     1195 CAPTURE                          VAL R21
     1196 SETTABLEKS                       R22 R21 K133 ["isConfirmItemsStage"]
     1198 DUPCLOSURE                       R22 K134 [PROTO_2]
     1199 CAPTURE                          VAL R21
     1200 SETTABLEKS                       R22 R21 K135 ["isEditInfoStage"]
     1202 DUPCLOSURE                       R22 K136 [PROTO_3]
     1203 CAPTURE                          VAL R21
     1204 SETTABLEKS                       R22 R21 K137 ["isFailureStage"]
     1206 DUPCLOSURE                       R22 K138 [PROTO_4]
     1207 CAPTURE                          VAL R21
     1208 SETTABLEKS                       R22 R21 K139 ["isSuccessStage"]
     1210 GETIMPORT                        R22 K142 [UDim2.fromOffset]
     1212 LOADN                            R23 40
     1213 LOADN                            R24 40
     1214 CALL                             R22 2 1
     1215 GETIMPORT                        R23 K142 [UDim2.fromOffset]
     1217 LOADN                            R24 144
     1218 LOADN                            R25 88
     1219 CALL                             R23 2 1
     1220 DUPCLOSURE                       R24 K143 [PROTO_5]
     1221 CAPTURE                          VAL R23
     1222 DUPCLOSURE                       R25 K144 [PROTO_6]
     1223 DUPCLOSURE                       R26 K145 [PROTO_8]
     1224 CAPTURE                          VAL R0
     1225 CAPTURE                          VAL R22
     1226 CAPTURE                          VAL R6
     1227 CAPTURE                          VAL R7
     1228 SETTABLEKS                       R26 R21 K146 ["clickContinueButton"]
     1230 DUPCLOSURE                       R26 K147 [PROTO_10]
     1231 CAPTURE                          VAL R0
     1232 CAPTURE                          VAL R22
     1233 CAPTURE                          VAL R6
     1234 CAPTURE                          VAL R7
     1235 SETTABLEKS                       R26 R21 K148 ["clickBackButton"]
     1237 DUPCLOSURE                       R26 K149 [PROTO_13]
     1238 CAPTURE                          VAL R0
     1239 CAPTURE                          VAL R7
     1240 CAPTURE                          VAL R23
     1241 CAPTURE                          VAL R24
     1242 CAPTURE                          VAL R22
     1243 CAPTURE                          VAL R6
     1244 SETTABLEKS                       R26 R21 K150 ["changeCreator"]
     1246 DUPCLOSURE                       R26 K151 [PROTO_15]
     1247 CAPTURE                          VAL R21
     1248 CAPTURE                          VAL R0
     1249 CAPTURE                          VAL R7
     1250 CAPTURE                          VAL R24
     1251 CAPTURE                          VAL R22
     1252 CAPTURE                          VAL R6
     1253 SETTABLEKS                       R26 R21 K152 ["toggleItem"]
     1255 DUPCLOSURE                       R26 K153 [PROTO_16]
     1256 CAPTURE                          VAL R0
     1257 CAPTURE                          VAL R24
     1258 CAPTURE                          VAL R22
     1259 CAPTURE                          VAL R7
     1260 SETTABLEKS                       R26 R21 K154 ["changeColor"]
     1262 DUPCLOSURE                       R26 K155 [PROTO_20]
     1263 CAPTURE                          VAL R21
     1264 CAPTURE                          VAL R0
     1265 CAPTURE                          VAL R6
     1266 CAPTURE                          VAL R22
     1267 CAPTURE                          VAL R7
     1268 SETTABLEKS                       R26 R21 K156 ["enterName"]
     1270 DUPCLOSURE                       R26 K157 [PROTO_21]
     1271 CAPTURE                          VAL R21
     1272 SETTABLEKS                       R26 R21 K158 ["checkErrorBannerText"]
     1274 DUPCLOSURE                       R26 K159 [PROTO_22]
     1275 CAPTURE                          VAL R7
     1276 CAPTURE                          VAL R0
     1277 SETTABLEKS                       R26 R21 K160 ["queryErrorBannerCloseButton"]
     1279 DUPCLOSURE                       R26 K161 [PROTO_24]
     1280 CAPTURE                          VAL R21
     1281 CAPTURE                          VAL R24
     1282 CAPTURE                          VAL R0
     1283 CAPTURE                          VAL R22
     1284 CAPTURE                          VAL R6
     1285 CAPTURE                          VAL R7
     1286 SETTABLEKS                       R26 R21 K162 ["clickErrorBannerDismiss"]
     1288 DUPCLOSURE                       R26 K163 [PROTO_26]
     1289 CAPTURE                          VAL R0
     1290 CAPTURE                          VAL R22
     1291 CAPTURE                          VAL R6
     1292 CAPTURE                          VAL R7
     1293 SETTABLEKS                       R26 R21 K164 ["openErrorDialog"]
     1295 DUPCLOSURE                       R26 K165 [PROTO_27]
     1296 CAPTURE                          VAL R21
     1297 SETTABLEKS                       R26 R21 K166 ["checkErrorDialogText"]
     1299 DUPCLOSURE                       R26 K167 [PROTO_28]
     1300 CAPTURE                          VAL R21
     1301 SETTABLEKS                       R26 R21 K168 ["isItemInDetailsList"]
     1303 DUPCLOSURE                       R26 K169 [PROTO_29]
     1304 CAPTURE                          VAL R21
     1305 CAPTURE                          VAL R14
     1306 SETTABLEKS                       R26 R21 K170 ["getUserEquippedItems"]
     1308 DUPCLOSURE                       R26 K171 [PROTO_30]
     1309 CAPTURE                          VAL R21
     1310 SETTABLEKS                       R26 R21 K172 ["getMixedCreatorMakeupLookEquippedItems"]
     1312 DUPCLOSURE                       R26 K173 [PROTO_31]
     1313 CAPTURE                          VAL R21
     1314 CAPTURE                          VAL R14
     1315 SETTABLEKS                       R26 R21 K174 ["getGroupEquippedItems"]
     1317 DUPCLOSURE                       R26 K175 [PROTO_32]
     1318 CAPTURE                          VAL R21
     1319 CAPTURE                          VAL R12
     1320 CAPTURE                          VAL R9
     1321 SETTABLEKS                       R26 R21 K176 ["getExpectedLook"]
     1323 LOADNIL                          R26
     1324 SETTABLEKS                       R26 R21 K177 ["lookCreationInfo"]
     1326 DUPCLOSURE                       R26 K178 [PROTO_33]
     1327 CAPTURE                          VAL R21
     1328 DUPCLOSURE                       R27 K179 [PROTO_35]
     1329 CAPTURE                          VAL R8
     1330 CAPTURE                          VAL R1
     1331 CAPTURE                          VAL R11
     1332 CAPTURE                          VAL R21
     1333 CAPTURE                          VAL R13
     1334 DUPCLOSURE                       R28 K180 [PROTO_37]
     1335 CAPTURE                          VAL R8
     1336 CAPTURE                          VAL R1
     1337 CAPTURE                          VAL R11
     1338 CAPTURE                          VAL R21
     1339 CAPTURE                          VAL R27
     1340 DUPCLOSURE                       R29 K181 [PROTO_39]
     1341 CAPTURE                          VAL R8
     1342 DUPCLOSURE                       R30 K182 [PROTO_41]
     1343 CAPTURE                          VAL R8
     1344 CAPTURE                          VAL R1
     1345 CAPTURE                          VAL R11
     1346 CAPTURE                          VAL R21
     1347 CAPTURE                          VAL R27
     1348 DUPCLOSURE                       R31 K183 [PROTO_43]
     1349 CAPTURE                          VAL R8
     1350 CAPTURE                          VAL R11
     1351 CAPTURE                          VAL R1
     1352 CAPTURE                          VAL R21
     1353 CAPTURE                          VAL R27
     1354 DUPCLOSURE                       R32 K184 [PROTO_44]
     1355 CAPTURE                          VAL R13
     1356 CAPTURE                          VAL R28
     1357 CAPTURE                          VAL R29
     1358 CAPTURE                          VAL R30
     1359 CAPTURE                          VAL R31
     1360 CAPTURE                          VAL R27
     1361 SETTABLEKS                       R32 R21 K185 ["createMockLookComposerRequestInternal"]
     1363 DUPCLOSURE                       R32 K186 [PROTO_47]
     1364 CAPTURE                          VAL R0
     1365 CAPTURE                          VAL R20
     1366 CAPTURE                          VAL R5
     1367 CAPTURE                          VAL R3
     1368 CAPTURE                          VAL R19
     1369 CAPTURE                          VAL R6
     1370 CAPTURE                          VAL R7
     1371 SETTABLEKS                       R32 R21 K187 ["createLookComposerDialogTest"]
     1373 DUPCLOSURE                       R32 K188 [PROTO_51]
     1374 CAPTURE                          VAL R21
     1375 CAPTURE                          VAL R15
     1376 CAPTURE                          VAL R5
     1377 CAPTURE                          VAL R16
     1378 CAPTURE                          VAL R17
     1379 CAPTURE                          VAL R18
     1380 SETTABLEKS                       R32 R21 K189 ["lookCreationTest"]
     1382 DUPCLOSURE                       R32 K190 [PROTO_54]
     1383 CAPTURE                          VAL R0
     1384 CAPTURE                          VAL R7
     1385 CAPTURE                          VAL R6
     1386 SETTABLEKS                       R32 R21 K191 ["openAssetImportDialog"]
     1388 DUPCLOSURE                       R32 K192 [PROTO_58]
     1389 CAPTURE                          VAL R0
     1390 CAPTURE                          VAL R6
     1391 CAPTURE                          VAL R22
     1392 CAPTURE                          VAL R7
     1393 SETTABLEKS                       R32 R21 K193 ["addAssetIdsToImportDialog"]
     1395 DUPCLOSURE                       R32 K194 [PROTO_60]
     1396 CAPTURE                          VAL R0
     1397 CAPTURE                          VAL R22
     1398 CAPTURE                          VAL R6
     1399 CAPTURE                          VAL R7
     1400 SETTABLEKS                       R32 R21 K195 ["clickAddItemsButtonImportDialog"]
     1402 DUPCLOSURE                       R32 K196 [PROTO_63]
     1403 CAPTURE                          VAL R0
     1404 CAPTURE                          VAL R7
     1405 CAPTURE                          VAL R6
     1406 SETTABLEKS                       R32 R21 K197 ["openLookComposerDialog"]
     1408 DUPCLOSURE                       R32 K198 [PROTO_64]
     1409 CAPTURE                          VAL R21
     1410 SETTABLEKS                       R32 R21 K199 ["importMarketplaceItems"]
     1412 RETURN                           R21 1
