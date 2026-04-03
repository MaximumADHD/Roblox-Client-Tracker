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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["findTextInCoreGui"]
        3 LOADK                            R1 K1 ["LookComposerDialog.LookDetails"]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["findTextInCoreGui"]
        3 LOADK                            R1 K1 ["LookComposerDialog.Name"]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["findTextInCoreGui"]
        3 LOADK                            R1 K1 ["LookComposerDialog.CreateLookFailedTitle"]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["findTextInCoreGui"]
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
       12 GETTABLEKS                       R6 R4 K2 ["AbsoluteSize"]
       14 GETTABLEKS                       R5 R6 K3 ["X"]
       16 LOADN                            R6 1
       17 JUMPIFLT                         R5 R6 ; [+8]
       19 GETTABLEKS                       R6 R4 K2 ["AbsoluteSize"]
       21 GETTABLEKS                       R5 R6 K4 ["Y"]
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
        4 GETTABLEKS                       R7 R5 K0 ["gui"]
        6 GETTABLEKS                       R6 R7 K1 ["Parent"]
        8 JUMPIFNOT                        R6 ; [+6]
        9 GETTABLEKS                       R6 R5 K0 ["gui"]
       11 GETTABLEKS                       R7 R5 K2 ["old"]
       13 SETTABLEKS                       R7 R6 K3 ["Size"]
       15 FORGLOOP                         R1 2 ; [-12]
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fireEvent"]
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
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R1 R2 K8 ["act"]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fireEvent"]
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
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R1 R2 K8 ["act"]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fireEvent"]
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
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K5 ["within"]
       15 MOVE                             R4 R1
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R2 R3 K6 ["getByTestId"]
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
       48 GETUPVAL                         R6 5
       49 GETTABLEKS                       R5 R6 K13 ["act"]
       51 NEWCLOSURE                       R6 P0
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R2
       54 CALL                             R5 1 0
       55 MOVE                             R5 R4
       56 LOADNIL                          R6
       57 LOADNIL                          R7
       58 FORGPREP                         R5
       59 GETTABLEKS                       R11 R9 K14 ["gui"]
       61 GETTABLEKS                       R10 R11 K15 ["Parent"]
       63 JUMPIFNOT                        R10 ; [+6]
       64 GETTABLEKS                       R10 R9 K14 ["gui"]
       66 GETTABLEKS                       R11 R9 K16 ["old"]
       68 SETTABLEKS                       R11 R10 K12 ["Size"]
       70 FORGLOOP                         R5 2 ; [-12]
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R6 R7 K5 ["within"]
       75 MOVE                             R7 R3
       76 CALL                             R6 1 1
       77 GETTABLEKS                       R5 R6 K17 ["getAllByTestId"]
       79 LOADK                            R6 K18 ["--foundation-menu-item"]
       80 CALL                             R5 1 1
       81 MOVE                             R6 R5
       82 LOADNIL                          R7
       83 LOADNIL                          R8
       84 FORGPREP                         R6
       85 GETUPVAL                         R12 1
       86 GETTABLEKS                       R11 R12 K5 ["within"]
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
      130 GETUPVAL                         R15 5
      131 GETTABLEKS                       R14 R15 K13 ["act"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["findTextInCoreGui"]
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
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R4 R5 K6 ["within"]
       27 MOVE                             R5 R2
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R3 R4 K7 ["queryByTestId"]
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
       54 GETUPVAL                         R7 5
       55 GETTABLEKS                       R6 R7 K13 ["act"]
       57 NEWCLOSURE                       R7 P0
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          VAL R4
       60 CALL                             R6 1 0
       61 MOVE                             R6 R5
       62 LOADNIL                          R7
       63 LOADNIL                          R8
       64 FORGPREP                         R6
       65 GETTABLEKS                       R12 R10 K14 ["gui"]
       67 GETTABLEKS                       R11 R12 K5 ["Parent"]
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
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R4 R5 K9 ["fireEvent"]
       33 MOVE                             R5 R2
       34 LOADK                            R6 K10 ["clickWithoutValidation"]
       35 CALL                             R4 2 0
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R5 R6 K9 ["fireEvent"]
       39 GETTABLEKS                       R4 R5 K11 ["change"]
       41 MOVE                             R5 R2
       42 DUPTABLE                         R6 K13 [{"target"}]
       43 DUPTABLE                         R7 K15 [{"Text"}]
       44 SETTABLEKS                       R0 R7 K14 ["Text"]
       46 SETTABLEKS                       R7 R6 K12 ["target"]
       48 CALL                             R4 2 0
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R5 R6 K9 ["fireEvent"]
       52 GETTABLEKS                       R4 R5 K16 ["keyDown"]
       54 MOVE                             R5 R2
       55 DUPTABLE                         R6 K18 [{"key"}]
       56 GETIMPORT                        R7 K22 [Enum.KeyCode.Return]
       58 SETTABLEKS                       R7 R6 K17 ["key"]
       60 CALL                             R4 2 0
       61 GETUPVAL                         R6 3
       62 GETTABLEKS                       R5 R6 K9 ["fireEvent"]
       64 GETTABLEKS                       R4 R5 K23 ["keyUp"]
       66 MOVE                             R5 R2
       67 DUPTABLE                         R6 K18 [{"key"}]
       68 GETIMPORT                        R7 K22 [Enum.KeyCode.Return]
       70 SETTABLEKS                       R7 R6 K17 ["key"]
       72 CALL                             R4 2 0
       73 MOVE                             R4 R3
       74 LOADNIL                          R5
       75 LOADNIL                          R6
       76 FORGPREP                         R4
       77 GETTABLEKS                       R10 R8 K24 ["gui"]
       79 GETTABLEKS                       R9 R10 K25 ["Parent"]
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
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K1 ["fireEvent"]
        7 GETUPVAL                         R1 0
        8 LOADK                            R2 K2 ["clickWithoutValidation"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R1 K1 ["change"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K3 [{"target"}]
        7 DUPTABLE                         R3 K5 [{"Text"}]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K4 ["Text"]
       11 SETTABLEKS                       R3 R2 K2 ["target"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R1 K1 ["keyDown"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K3 [{"key"}]
        7 GETIMPORT                        R3 K7 [Enum.KeyCode.Return]
        9 SETTABLEKS                       R3 R2 K2 ["key"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K0 ["fireEvent"]
       15 GETTABLEKS                       R0 R1 K8 ["keyUp"]
       17 GETUPVAL                         R1 1
       18 DUPTABLE                         R2 K3 [{"key"}]
       19 GETIMPORT                        R3 K7 [Enum.KeyCode.Return]
       21 SETTABLEKS                       R3 R2 K2 ["key"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_20:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+3]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["VALID_NAME"]
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
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R4 R5 K10 ["act"]
       36 NEWCLOSURE                       R5 P0
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U4
       40 CALL                             R4 1 0
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R4 R5 K10 ["act"]
       44 NEWCLOSURE                       R5 P1
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 CALL                             R4 1 0
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R4 R5 K10 ["act"]
       52 NEWCLOSURE                       R5 P2
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R3
       55 CALL                             R4 1 0
       56 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["findTextInCoreGui"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_23:
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
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R2 R3 K10 ["act"]
       34 NEWCLOSURE                       R3 P0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R1
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["findTextInCoreGui"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_25:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["MOCK_ITEM_DATA"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["creatorType"]
       10 JUMPIFNOTEQKS                    R6 K2 ["User"] ; [+24]
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

PROTO_26:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["MOCK_ITEM_DATA"]
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

PROTO_27:
        0 DUPTABLE                         R2 K6 [{"assets", "lookType", "name", "description", "avatarProperties", "groupId"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["assets"]
        5 LOADK                            R3 K7 ["Makeup"]
        6 SETTABLEKS                       R3 R2 K1 ["lookType"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K8 ["VALID_NAME"]
       11 SETTABLEKS                       R3 R2 K2 ["name"]
       13 LOADK                            R3 K9 [""]
       14 SETTABLEKS                       R3 R2 K3 ["description"]
       16 DUPTABLE                         R3 K13 [{"playerAvatarType", "bodyColor3s", "scale"}]
       17 LOADK                            R4 K14 ["R15"]
       18 SETTABLEKS                       R4 R3 K10 ["playerAvatarType"]
       20 DUPTABLE                         R4 K21 [{"headColor3", "leftArmColor3", "leftLegColor3", "rightArmColor3", "rightLegColor3", "torsoColor3"}]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K22 ["DEFAULT_SKIN_TONE"]
       24 NAMECALL                         R5 R5 K23 ["ToHex"]
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R5 R4 K15 ["headColor3"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R5 R6 K22 ["DEFAULT_SKIN_TONE"]
       32 NAMECALL                         R5 R5 K23 ["ToHex"]
       34 CALL                             R5 1 1
       35 SETTABLEKS                       R5 R4 K16 ["leftArmColor3"]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R5 R6 K22 ["DEFAULT_SKIN_TONE"]
       40 NAMECALL                         R5 R5 K23 ["ToHex"]
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R5 R4 K17 ["leftLegColor3"]
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R5 R6 K22 ["DEFAULT_SKIN_TONE"]
       48 NAMECALL                         R5 R5 K23 ["ToHex"]
       50 CALL                             R5 1 1
       51 SETTABLEKS                       R5 R4 K18 ["rightArmColor3"]
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R5 R6 K22 ["DEFAULT_SKIN_TONE"]
       56 NAMECALL                         R5 R5 K23 ["ToHex"]
       58 CALL                             R5 1 1
       59 SETTABLEKS                       R5 R4 K19 ["rightLegColor3"]
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R5 R6 K22 ["DEFAULT_SKIN_TONE"]
       64 NAMECALL                         R5 R5 K23 ["ToHex"]
       66 CALL                             R5 1 1
       67 SETTABLEKS                       R5 R4 K20 ["torsoColor3"]
       69 SETTABLEKS                       R4 R3 K11 ["bodyColor3s"]
       71 DUPTABLE                         R4 K30 [{"bodyType", "depth", "head", "height", "proportion", "width"}]
       72 LOADN                            R5 1
       73 SETTABLEKS                       R5 R4 K24 ["bodyType"]
       75 LOADN                            R5 1
       76 SETTABLEKS                       R5 R4 K25 ["depth"]
       78 LOADN                            R5 1
       79 SETTABLEKS                       R5 R4 K26 ["head"]
       81 LOADN                            R5 1
       82 SETTABLEKS                       R5 R4 K27 ["height"]
       84 LOADN                            R5 1
       85 SETTABLEKS                       R5 R4 K28 ["proportion"]
       87 LOADN                            R5 1
       88 SETTABLEKS                       R5 R4 K29 ["width"]
       90 SETTABLEKS                       R4 R3 K12 ["scale"]
       92 SETTABLEKS                       R3 R2 K4 ["avatarProperties"]
       94 JUMPIFNOTEQKS                    R0 K31 ["Group"] ; [+9]
       96 GETUPVAL                         R5 0
       97 GETTABLEKS                       R4 R5 K32 ["GROUP_ID"]
       99 FASTCALL1                        TOSTRING R4 ; [+2]
      100 GETIMPORT                        R3 K34 [tostring]
      102 CALL                             R3 1 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R3
      105 SETTABLEKS                       R3 R2 K5 ["groupId"]
      107 NEWTABLE                         R3 0 0
      109 LOADNIL                          R4
      110 JUMPIFNOT                        R1 ; [+19]
      111 NEWTABLE                         R4 0 0
      113 MOVE                             R5 R1
      114 LOADNIL                          R6
      115 LOADNIL                          R7
      116 FORGPREP                         R5
      117 GETUPVAL                         R14 0
      118 GETTABLEKS                       R13 R14 K35 ["MOCK_ITEM_DATA"]
      120 GETTABLE                         R12 R13 R9
      121 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
      123 MOVE                             R11 R4
      124 GETIMPORT                        R10 K38 [table.insert]
      126 CALL                             R10 2 0
      127 FORGLOOP                         R5 2 ; [-11]
      129 JUMP                             ; [+3]
      130 GETUPVAL                         R5 0
      131 GETTABLEKS                       R4 R5 K35 ["MOCK_ITEM_DATA"]
      133 MOVE                             R5 R4
      134 LOADNIL                          R6
      135 LOADNIL                          R7
      136 FORGPREP                         R5
      137 GETTABLEKS                       R10 R9 K39 ["creatorType"]
      139 JUMPIFNOTEQ                      R10 R0 ; [+59]
      141 DUPTABLE                         R10 K42 [{"id", "meta"}]
      142 GETTABLEKS                       R11 R9 K40 ["id"]
      144 SETTABLEKS                       R11 R10 K40 ["id"]
      146 DUPTABLE                         R11 K46 [{"order", "puffiness", "version"}]
      147 LOADN                            R12 0
      148 SETTABLEKS                       R12 R11 K43 ["order"]
      150 LOADN                            R12 1
      151 SETTABLEKS                       R12 R11 K44 ["puffiness"]
      153 LOADN                            R12 1
      154 SETTABLEKS                       R12 R11 K45 ["version"]
      156 SETTABLEKS                       R11 R10 K41 ["meta"]
      158 GETTABLEKS                       R11 R9 K47 ["assetType"]
      160 GETIMPORT                        R13 K51 [Enum.AssetType.FaceMakeup]
      162 GETTABLEKS                       R12 R13 K52 ["Value"]
      164 JUMPIFEQ                         R11 R12 ; [+17]
      166 GETTABLEKS                       R11 R9 K47 ["assetType"]
      168 GETIMPORT                        R13 K54 [Enum.AssetType.LipMakeup]
      170 GETTABLEKS                       R12 R13 K52 ["Value"]
      172 JUMPIFEQ                         R11 R12 ; [+9]
      174 GETTABLEKS                       R11 R9 K47 ["assetType"]
      176 GETIMPORT                        R13 K56 [Enum.AssetType.EyeMakeup]
      178 GETTABLEKS                       R12 R13 K52 ["Value"]
      180 JUMPIFNOTEQ                      R11 R12 ; [+10]
      182 LOADN                            R13 1
      183 FASTCALL3                        TABLE_INSERT R3 R13 R10
      185 MOVE                             R12 R3
      186 MOVE                             R14 R10
      187 GETIMPORT                        R11 K38 [table.insert]
      189 CALL                             R11 3 0
      190 JUMP                             ; [+8]
      191 GETTABLEKS                       R12 R2 K0 ["assets"]
      193 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
      195 MOVE                             R13 R10
      196 GETIMPORT                        R11 K38 [table.insert]
      198 CALL                             R11 2 0
      199 FORGLOOP                         R5 2 ; [-63]
      201 GETUPVAL                         R6 2
      202 GETTABLEKS                       R5 R6 K57 ["reverse"]
      204 GETUPVAL                         R7 2
      205 GETTABLEKS                       R6 R7 K58 ["append"]
      207 GETTABLEKS                       R7 R2 K0 ["assets"]
      209 MOVE                             R8 R3
      210 CALL                             R6 2 -1
      211 CALL                             R5 -1 1
      212 SETTABLEKS                       R5 R2 K0 ["assets"]
      214 LOADN                            R5 1
      215 GETTABLEKS                       R6 R2 K0 ["assets"]
      217 LOADNIL                          R7
      218 LOADNIL                          R8
      219 FORGPREP                         R6
      220 GETTABLEKS                       R11 R10 K41 ["meta"]
      222 SETTABLEKS                       R5 R11 K43 ["order"]
      224 ADDK                             R5 R5 K59 [1]
      225 FORGLOOP                         R6 2 ; [-6]
      227 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Body"]
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["Body"]
        8 NAMECALL                         R2 R2 K1 ["JSONDecode"]
       10 CALL                             R2 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K2 ["Url"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R4 R5 K3 ["lookCreateUrl"]
       19 CALL                             R4 0 1
       20 JUMPIFNOTEQ                      R3 R4 ; [+4]
       22 GETUPVAL                         R3 3
       23 SETTABLEKS                       R2 R3 K4 ["lookCreationInfo"]
       25 DUPTABLE                         R3 K7 [{"id", "look"}]
       26 LOADN                            R4 1
       27 SETTABLEKS                       R4 R3 K5 ["id"]
       29 DUPTABLE                         R4 K9 [{"items"}]
       30 NEWTABLE                         R5 0 0
       32 SETTABLEKS                       R5 R4 K8 ["items"]
       34 SETTABLEKS                       R4 R3 K6 ["look"]
       36 GETTABLEKS                       R4 R2 K10 ["assets"]
       38 LOADNIL                          R5
       39 LOADNIL                          R6
       40 FORGPREP                         R4
       41 GETUPVAL                         R12 3
       42 GETTABLEKS                       R11 R12 K11 ["MOCK_ITEM_DATA"]
       44 GETTABLEKS                       R12 R8 K5 ["id"]
       46 GETTABLE                         R10 R11 R12
       47 GETTABLEKS                       R9 R10 K12 ["assetType"]
       49 GETUPVAL                         R13 3
       50 GETTABLEKS                       R12 R13 K11 ["MOCK_ITEM_DATA"]
       52 GETTABLEKS                       R13 R8 K5 ["id"]
       54 GETTABLE                         R11 R12 R13
       55 GETTABLEKS                       R10 R11 K13 ["creatorType"]
       57 GETTABLEKS                       R13 R3 K6 ["look"]
       59 GETTABLEKS                       R12 R13 K8 ["items"]
       61 DUPTABLE                         R13 K17 [{"id", "name", "creator", "assetType", "priceInRobux"}]
       62 GETTABLEKS                       R14 R8 K5 ["id"]
       64 SETTABLEKS                       R14 R13 K5 ["id"]
       66 LOADK                            R15 K18 ["Test Item"]
       67 GETTABLEKS                       R17 R8 K5 ["id"]
       69 FASTCALL1                        TOSTRING R17 ; [+2]
       70 GETIMPORT                        R16 K20 [tostring]
       72 CALL                             R16 1 1
       73 CONCAT                           R14 R15 R16
       74 SETTABLEKS                       R14 R13 K14 ["name"]
       76 DUPTABLE                         R14 K23 [{"id", "name", "type", "hasVerifiedBadge"}]
       77 JUMPIFNOTEQKS                    R10 K24 ["User"] ; [+6]
       79 GETUPVAL                         R16 4
       80 GETTABLEKS                       R15 R16 K25 ["getUserId"]
       82 CALL                             R15 0 1
       83 JUMP                             ; [+3]
       84 GETUPVAL                         R16 3
       85 GETTABLEKS                       R15 R16 K26 ["GROUP_ID"]
       87 SETTABLEKS                       R15 R14 K5 ["id"]
       89 LOADK                            R15 K27 ["Test Creator"]
       90 SETTABLEKS                       R15 R14 K14 ["name"]
       92 SETTABLEKS                       R10 R14 K21 ["type"]
       94 LOADB                            R15 0
       95 SETTABLEKS                       R15 R14 K22 ["hasVerifiedBadge"]
       97 SETTABLEKS                       R14 R13 K15 ["creator"]
       99 SETTABLEKS                       R9 R13 K12 ["assetType"]
      101 LOADN                            R14 30
      102 SETTABLEKS                       R14 R13 K16 ["priceInRobux"]
      104 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      106 GETIMPORT                        R11 K30 [table.insert]
      108 CALL                             R11 2 0
      109 FORGLOOP                         R4 2 ; [-69]
      111 MOVE                             R4 R0
      112 DUPTABLE                         R5 K31 [{"Body"}]
      113 GETUPVAL                         R6 1
      114 MOVE                             R8 R3
      115 NAMECALL                         R6 R6 K32 ["JSONEncode"]
      117 CALL                             R6 2 1
      118 SETTABLEKS                       R6 R5 K0 ["Body"]
      120 CALL                             R4 1 0
      121 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Body"]
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["Body"]
        8 NAMECALL                         R2 R2 K1 ["JSONDecode"]
       10 CALL                             R2 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K2 ["Url"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R4 R5 K3 ["lookPreviewUrl"]
       19 CALL                             R4 0 1
       20 JUMPIFNOTEQ                      R3 R4 ; [+24]
       22 GETTABLEKS                       R3 R2 K4 ["validationType"]
       24 JUMPIFNOTEQKS                    R3 K5 ["filterUnsupportedTypes"] ; [+20]
       26 MOVE                             R3 R0
       27 DUPTABLE                         R4 K6 [{"Body"}]
       28 GETUPVAL                         R5 1
       29 DUPTABLE                         R7 K9 [{"errorDescription", "errorCode"}]
       30 GETUPVAL                         R9 3
       31 GETTABLEKS                       R8 R9 K10 ["LOOK_PREVIEW_FAILURE_MESSAGE"]
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

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_32:
        0 MOVE                             R2 R1
        1 CALL                             R2 0 -1
        2 RETURN                           R2 -1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 DUPCLOSURE                       R2 K1 [PROTO_32]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_34:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Body"]
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["Body"]
        8 NAMECALL                         R2 R2 K1 ["JSONDecode"]
       10 CALL                             R2 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K2 ["Url"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R4 R5 K3 ["lookPreviewUrl"]
       19 CALL                             R4 0 1
       20 JUMPIFNOTEQ                      R3 R4 ; [+24]
       22 GETTABLEKS                       R3 R2 K4 ["validationType"]
       24 JUMPIFNOTEQKS                    R3 K5 ["default"] ; [+20]
       26 MOVE                             R3 R0
       27 DUPTABLE                         R4 K6 [{"Body"}]
       28 GETUPVAL                         R5 1
       29 DUPTABLE                         R7 K9 [{"errorDescription", "errorCode"}]
       30 GETUPVAL                         R9 3
       31 GETTABLEKS                       R8 R9 K10 ["LOOK_VALIDATION_FAILURE_MESSAGE"]
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

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
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
        1 GETTABLEKS                       R2 R3 K0 ["Url"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["lookCreateUrl"]
        6 CALL                             R3 0 1
        7 JUMPIFNOTEQ                      R2 R3 ; [+20]
        9 MOVE                             R2 R0
       10 DUPTABLE                         R3 K3 [{"Body"}]
       11 GETUPVAL                         R4 2
       12 DUPTABLE                         R6 K6 [{"errorDescription", "errorCode"}]
       13 GETUPVAL                         R8 3
       14 GETTABLEKS                       R7 R8 K7 ["LOOK_CREATION_FAILURE_MESSAGE"]
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

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["FoundationProvider"]
        6 DUPTABLE                         R2 K3 [{"theme"}]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K4 ["Enums"]
       10 GETTABLEKS                       R4 R5 K5 ["Theme"]
       12 GETTABLEKS                       R3 R4 K6 ["Dark"]
       14 SETTABLEKS                       R3 R2 K2 ["theme"]
       16 DUPTABLE                         R3 K8 [{"Content"}]
       17 GETUPVAL                         R4 2
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R5 R6 K9 ["context"]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K0 ["createElement"]
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

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["render"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["createElement"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_41:
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
       21 GETUPVAL                         R8 5
       22 GETTABLEKS                       R7 R8 K7 ["act"]
       24 NEWCLOSURE                       R8 P1
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R6
       28 CALL                             R7 1 0
       29 RETURN                           R4 1

PROTO_42:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R11 0
        7 GETTABLEKS                       R10 R11 K0 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
        9 GETTABLE                         R9 R10 R6
       10 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       12 MOVE                             R8 R1
       13 GETIMPORT                        R7 K3 [table.insert]
       15 CALL                             R7 2 0
       16 FORGLOOP                         R2 2 ; [-11]
       18 RETURN                           R1 1

PROTO_43:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_44:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_45:
        0 DUPTABLE                         R1 K2 [{"getBatchAssetDetailsAsync", "getBatchBundleDetailsAsync"}]
        1 DUPCLOSURE                       R2 K3 [PROTO_42]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R2 R1 K0 ["getBatchAssetDetailsAsync"]
        5 DUPCLOSURE                       R2 K4 [PROTO_43]
        6 SETTABLEKS                       R2 R1 K1 ["getBatchBundleDetailsAsync"]
        8 DUPTABLE                         R2 K6 [{"canCreateLook"}]
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K5 ["canCreateLook"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K7 ["withPreviewerAndLizard"]
       15 NEWCLOSURE                       R4 P2
       16 CAPTURE                          VAL R0
       17 DUPTABLE                         R5 K9 [{"wrapAppContexts"}]
       18 NEWTABLE                         R6 0 2
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R7 R8 K10 ["createElement"]
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R8 R9 K11 ["Provider"]
       26 DUPTABLE                         R9 K13 [{"value"}]
       27 SETTABLEKS                       R1 R9 K12 ["value"]
       29 CALL                             R7 2 1
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R8 R9 K10 ["createElement"]
       33 GETUPVAL                         R11 4
       34 GETTABLEKS                       R10 R11 K14 ["Context"]
       36 GETTABLEKS                       R9 R10 K11 ["Provider"]
       38 DUPTABLE                         R10 K13 [{"value"}]
       39 SETTABLEKS                       R2 R10 K12 ["value"]
       41 CALL                             R8 2 1
       42 SETLIST                          R6 R7 2 [1]
       44 SETTABLEKS                       R6 R5 K8 ["wrapAppContexts"]
       46 CALL                             R3 2 -1
       47 RETURN                           R3 -1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R1 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 16
        2 SETTABLEKS                       R1 R0 K0 ["ZIndex"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R1 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SplitButtonContainer"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+5]
        8 GETIMPORT                        R1 K3 [error]
       10 LOADK                            R2 K4 ["SplitButtonContainer not found"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K5 ["within"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R1 R2 K6 ["getByTestId"]
       19 LOADK                            R2 K7 ["--foundation-popover--anchor"]
       20 CALL                             R1 1 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R3 R4 K5 ["within"]
       24 MOVE                             R4 R1
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R2 R3 K6 ["getByTestId"]
       28 LOADK                            R3 K8 ["--foundation-icon-button"]
       29 CALL                             R2 1 1
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R3 R4 K9 ["act"]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R2
       36 CALL                             R3 1 0
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R4 R5 K5 ["within"]
       40 GETUPVAL                         R5 0
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R3 R4 K6 ["getByTestId"]
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
       63 GETUPVAL                         R6 2
       64 GETTABLEKS                       R5 R6 K9 ["act"]
       66 NEWCLOSURE                       R6 P1
       67 CAPTURE                          VAL R4
       68 CAPTURE                          UPVAL U1
       69 CALL                             R5 1 0
       70 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Size"]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R1 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R1 K1 ["change"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K3 [{"target"}]
        7 DUPTABLE                         R3 K5 [{"Text"}]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K4 ["Text"]
       11 SETTABLEKS                       R3 R2 K2 ["target"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R1 K1 ["keyDown"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K3 [{"key"}]
        7 GETIMPORT                        R3 K7 [Enum.KeyCode.Return]
        9 SETTABLEKS                       R3 R2 K2 ["key"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K0 ["fireEvent"]
       15 GETTABLEKS                       R0 R1 K8 ["keyUp"]
       17 GETUPVAL                         R1 1
       18 DUPTABLE                         R2 K3 [{"key"}]
       19 GETIMPORT                        R3 K7 [Enum.KeyCode.Return]
       21 SETTABLEKS                       R3 R2 K2 ["key"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_52:
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
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R5 R6 K16 ["act"]
       50 NEWCLOSURE                       R6 P0
       51 CAPTURE                          VAL R4
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U3
       54 CALL                             R5 1 0
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R5 R6 K16 ["act"]
       58 NEWCLOSURE                       R6 P1
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R2
       62 CALL                             R5 1 0
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R5 R6 K16 ["act"]
       66 NEWCLOSURE                       R6 P2
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R4
       69 CALL                             R5 1 0
       70 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R1 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_54:
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
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R1 R2 K14 ["act"]
       37 NEWCLOSURE                       R2 P0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R0
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R1 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 16
        2 SETTABLEKS                       R1 R0 K0 ["ZIndex"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R1 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StageSelect"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+5]
        8 GETIMPORT                        R1 K3 [error]
       10 LOADK                            R2 K4 ["StageSelect not found"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K5 ["within"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R1 R2 K6 ["getByTestId"]
       19 LOADK                            R2 K7 ["--foundation-popover--anchor"]
       20 CALL                             R1 1 1
       21 LOADK                            R4 K8 ["ImageButton"]
       22 LOADB                            R5 1
       23 NAMECALL                         R2 R1 K9 ["FindFirstChildWhichIsA"]
       25 CALL                             R2 3 1
       26 JUMPIF                           R2 ; [+5]
       27 LOADK                            R4 K10 ["TextButton"]
       28 LOADB                            R5 1
       29 NAMECALL                         R2 R1 K9 ["FindFirstChildWhichIsA"]
       31 CALL                             R2 3 1
       32 JUMPIFNOTEQKNIL                  R2 ; [+5]
       34 GETIMPORT                        R3 K3 [error]
       36 LOADK                            R4 K11 ["Publish button not found inside popover anchor"]
       37 CALL                             R3 1 0
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R3 R4 K12 ["act"]
       41 NEWCLOSURE                       R4 P0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R2
       44 CALL                             R3 1 0
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R4 R5 K5 ["within"]
       48 GETUPVAL                         R5 0
       49 CALL                             R4 1 1
       50 GETTABLEKS                       R3 R4 K6 ["getByTestId"]
       52 LOADK                            R4 K13 ["--foundation-popover--content"]
       53 CALL                             R3 1 1
       54 JUMPIFNOTEQKNIL                  R3 ; [+5]
       56 GETIMPORT                        R4 K3 [error]
       58 LOADK                            R5 K14 ["LookSaveMenu PopoverContent not found"]
       59 CALL                             R4 1 0
       60 LOADNIL                          R4
       61 NAMECALL                         R5 R3 K15 ["GetDescendants"]
       63 CALL                             R5 1 3
       64 FORGPREP                         R5
       65 LOADK                            R12 K10 ["TextButton"]
       66 NAMECALL                         R10 R9 K16 ["IsA"]
       68 CALL                             R10 2 1
       69 JUMPIFNOT                        R10 ; [+10]
       70 GETTABLEKS                       R10 R9 K17 ["Text"]
       72 GETIMPORT                        R11 K20 [string.find]
       74 MOVE                             R12 R10
       75 LOADK                            R13 K21 ["CreateMakeupLook"]
       76 CALL                             R11 2 1
       77 JUMPIFNOT                        R11 ; [+2]
       78 MOVE                             R4 R9
       79 JUMP                             ; [+2]
       80 FORGLOOP                         R5 2 ; [-16]
       82 JUMPIFNOTEQKNIL                  R4 ; [+5]
       84 GETIMPORT                        R5 K3 [error]
       86 LOADK                            R6 K22 ["CreateMakeupLook button not found in LookSaveMenu popover"]
       87 CALL                             R5 1 0
       88 LOADK                            R7 K10 ["TextButton"]
       89 NAMECALL                         R5 R4 K16 ["IsA"]
       91 CALL                             R5 2 1
       92 JUMPIF                           R5 ; [+4]
       93 GETIMPORT                        R5 K3 [error]
       95 LOADK                            R6 K23 ["CreateMakeupLook button is not a button"]
       96 CALL                             R5 1 0
       97 GETUPVAL                         R6 2
       98 GETTABLEKS                       R5 R6 K12 ["act"]
      100 NEWCLOSURE                       R6 P1
      101 CAPTURE                          REF R4
      102 CAPTURE                          UPVAL U1
      103 CALL                             R5 1 0
      104 CLOSEUPVALS                      R4
      105 RETURN                           R0 0

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
       21 GETTABLEKS                       R5 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R5 K12 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R2 K11 ["Packages"]
       30 GETTABLEKS                       R5 R6 K13 ["Framework"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R7 R2 K11 ["Packages"]
       37 GETTABLEKS                       R6 R7 K14 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R8 R2 K11 ["Packages"]
       44 GETTABLEKS                       R7 R8 K15 ["ReactRoblox"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R10 R2 K11 ["Packages"]
       51 GETTABLEKS                       R9 R10 K16 ["Dev"]
       53 GETTABLEKS                       R8 R9 K17 ["ReactTestingLibrary"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R10 R2 K11 ["Packages"]
       60 GETTABLEKS                       R9 R10 K18 ["Promise"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R11 R2 K11 ["Packages"]
       67 GETTABLEKS                       R10 R11 K19 ["Dash"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETTABLEKS                       R12 R2 K20 ["Src"]
       74 GETTABLEKS                       R11 R12 K21 ["Types"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K10 [require]
       79 GETTABLEKS                       R14 R2 K20 ["Src"]
       81 GETTABLEKS                       R13 R14 K22 ["Util"]
       83 GETTABLEKS                       R12 R13 K23 ["Url"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R15 R2 K20 ["Src"]
       90 GETTABLEKS                       R14 R15 K22 ["Util"]
       92 GETTABLEKS                       R13 R14 K24 ["Constants"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K10 [require]
       97 GETTABLEKS                       R16 R2 K20 ["Src"]
       99 GETTABLEKS                       R15 R16 K22 ["Util"]
      101 GETTABLEKS                       R14 R15 K25 ["LookComposerUtils"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K10 [require]
      106 GETTABLEKS                       R17 R2 K20 ["Src"]
      108 GETTABLEKS                       R16 R17 K22 ["Util"]
      110 GETTABLEKS                       R15 R16 K26 ["getPaletteFromKey"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K10 [require]
      115 GETTABLEKS                       R17 R2 K27 ["RhodiumTests"]
      117 GETTABLEKS                       R16 R17 K28 ["RhodiumTestHelpers"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K10 [require]
      122 GETTABLEKS                       R19 R2 K20 ["Src"]
      124 GETTABLEKS                       R18 R19 K29 ["Components"]
      126 GETTABLEKS                       R17 R18 K30 ["AvatarEditorServiceContext"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K10 [require]
      131 GETTABLEKS                       R20 R2 K20 ["Src"]
      133 GETTABLEKS                       R19 R20 K29 ["Components"]
      135 GETTABLEKS                       R18 R19 K31 ["LookContext"]
      137 CALL                             R17 1 1
      138 GETTABLEKS                       R19 R4 K32 ["TestHelpers"]
      140 GETTABLEKS                       R18 R19 K33 ["provideMockContext"]
      142 GETIMPORT                        R19 K10 [require]
      144 GETTABLEKS                       R21 R2 K27 ["RhodiumTests"]
      146 GETTABLEKS                       R20 R21 K34 ["createMockContext"]
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
      191 NEWTABLE                         R21 16 0
      193 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      195 GETTABLEN                        R22 R23 1
      196 DUPTABLE                         R23 K53 [{"creatorType", "assetType", "paletteKey", "id"}]
      197 LOADK                            R24 K54 ["User"]
      198 SETTABLEKS                       R24 R23 K49 ["creatorType"]
      200 GETIMPORT                        R25 K58 [Enum.AssetType.EyebrowAccessory]
      202 GETTABLEKS                       R24 R25 K59 ["Value"]
      204 SETTABLEKS                       R24 R23 K50 ["assetType"]
      206 LOADK                            R24 K60 ["Eyebrows"]
      207 SETTABLEKS                       R24 R23 K51 ["paletteKey"]
      209 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      211 GETTABLEN                        R24 R25 1
      212 SETTABLEKS                       R24 R23 K52 ["id"]
      214 SETTABLE                         R23 R21 R22
      215 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      217 GETTABLEN                        R22 R23 2
      218 DUPTABLE                         R23 K53 [{"creatorType", "assetType", "paletteKey", "id"}]
      219 LOADK                            R24 K54 ["User"]
      220 SETTABLEKS                       R24 R23 K49 ["creatorType"]
      222 GETIMPORT                        R25 K62 [Enum.AssetType.EyelashAccessory]
      224 GETTABLEKS                       R24 R25 K59 ["Value"]
      226 SETTABLEKS                       R24 R23 K50 ["assetType"]
      228 LOADK                            R24 K63 ["Eyelashes"]
      229 SETTABLEKS                       R24 R23 K51 ["paletteKey"]
      231 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      233 GETTABLEN                        R24 R25 2
      234 SETTABLEKS                       R24 R23 K52 ["id"]
      236 SETTABLE                         R23 R21 R22
      237 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      239 GETTABLEN                        R22 R23 3
      240 DUPTABLE                         R23 K53 [{"creatorType", "assetType", "paletteKey", "id"}]
      241 LOADK                            R24 K54 ["User"]
      242 SETTABLEKS                       R24 R23 K49 ["creatorType"]
      244 GETIMPORT                        R25 K65 [Enum.AssetType.FaceMakeup]
      246 GETTABLEKS                       R24 R25 K59 ["Value"]
      248 SETTABLEKS                       R24 R23 K50 ["assetType"]
      250 LOADK                            R24 K64 ["FaceMakeup"]
      251 SETTABLEKS                       R24 R23 K51 ["paletteKey"]
      253 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      255 GETTABLEN                        R24 R25 3
      256 SETTABLEKS                       R24 R23 K52 ["id"]
      258 SETTABLE                         R23 R21 R22
      259 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      261 GETTABLEN                        R22 R23 4
      262 DUPTABLE                         R23 K53 [{"creatorType", "assetType", "paletteKey", "id"}]
      263 LOADK                            R24 K54 ["User"]
      264 SETTABLEKS                       R24 R23 K49 ["creatorType"]
      266 GETIMPORT                        R25 K67 [Enum.AssetType.LipMakeup]
      268 GETTABLEKS                       R24 R25 K59 ["Value"]
      270 SETTABLEKS                       R24 R23 K50 ["assetType"]
      272 LOADK                            R24 K66 ["LipMakeup"]
      273 SETTABLEKS                       R24 R23 K51 ["paletteKey"]
      275 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      277 GETTABLEN                        R24 R25 4
      278 SETTABLEKS                       R24 R23 K52 ["id"]
      280 SETTABLE                         R23 R21 R22
      281 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      283 GETTABLEN                        R22 R23 5
      284 DUPTABLE                         R23 K53 [{"creatorType", "assetType", "paletteKey", "id"}]
      285 LOADK                            R24 K54 ["User"]
      286 SETTABLEKS                       R24 R23 K49 ["creatorType"]
      288 GETIMPORT                        R25 K69 [Enum.AssetType.EyeMakeup]
      290 GETTABLEKS                       R24 R25 K59 ["Value"]
      292 SETTABLEKS                       R24 R23 K50 ["assetType"]
      294 LOADK                            R24 K68 ["EyeMakeup"]
      295 SETTABLEKS                       R24 R23 K51 ["paletteKey"]
      297 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      299 GETTABLEN                        R24 R25 5
      300 SETTABLEKS                       R24 R23 K52 ["id"]
      302 SETTABLE                         R23 R21 R22
      303 GETTABLEKS                       R23 R20 K48 ["GROUP_ASSET_IDS"]
      305 GETTABLEN                        R22 R23 1
      306 DUPTABLE                         R23 K53 [{"creatorType", "assetType", "paletteKey", "id"}]
      307 LOADK                            R24 K70 ["Group"]
      308 SETTABLEKS                       R24 R23 K49 ["creatorType"]
      310 GETIMPORT                        R25 K58 [Enum.AssetType.EyebrowAccessory]
      312 GETTABLEKS                       R24 R25 K59 ["Value"]
      314 SETTABLEKS                       R24 R23 K50 ["assetType"]
      316 LOADK                            R24 K60 ["Eyebrows"]
      317 SETTABLEKS                       R24 R23 K51 ["paletteKey"]
      319 GETTABLEKS                       R25 R20 K48 ["GROUP_ASSET_IDS"]
      321 GETTABLEN                        R24 R25 1
      322 SETTABLEKS                       R24 R23 K52 ["id"]
      324 SETTABLE                         R23 R21 R22
      325 GETTABLEKS                       R23 R20 K48 ["GROUP_ASSET_IDS"]
      327 GETTABLEN                        R22 R23 2
      328 DUPTABLE                         R23 K53 [{"creatorType", "assetType", "paletteKey", "id"}]
      329 LOADK                            R24 K70 ["Group"]
      330 SETTABLEKS                       R24 R23 K49 ["creatorType"]
      332 GETIMPORT                        R25 K62 [Enum.AssetType.EyelashAccessory]
      334 GETTABLEKS                       R24 R25 K59 ["Value"]
      336 SETTABLEKS                       R24 R23 K50 ["assetType"]
      338 LOADK                            R24 K63 ["Eyelashes"]
      339 SETTABLEKS                       R24 R23 K51 ["paletteKey"]
      341 GETTABLEKS                       R25 R20 K48 ["GROUP_ASSET_IDS"]
      343 GETTABLEN                        R24 R25 2
      344 SETTABLEKS                       R24 R23 K52 ["id"]
      346 SETTABLE                         R23 R21 R22
      347 GETTABLEKS                       R23 R20 K48 ["GROUP_ASSET_IDS"]
      349 GETTABLEN                        R22 R23 3
      350 DUPTABLE                         R23 K53 [{"creatorType", "assetType", "paletteKey", "id"}]
      351 LOADK                            R24 K70 ["Group"]
      352 SETTABLEKS                       R24 R23 K49 ["creatorType"]
      354 GETIMPORT                        R25 K65 [Enum.AssetType.FaceMakeup]
      356 GETTABLEKS                       R24 R25 K59 ["Value"]
      358 SETTABLEKS                       R24 R23 K50 ["assetType"]
      360 LOADK                            R24 K64 ["FaceMakeup"]
      361 SETTABLEKS                       R24 R23 K51 ["paletteKey"]
      363 GETTABLEKS                       R25 R20 K48 ["GROUP_ASSET_IDS"]
      365 GETTABLEN                        R24 R25 3
      366 SETTABLEKS                       R24 R23 K52 ["id"]
      368 SETTABLE                         R23 R21 R22
      369 GETTABLEKS                       R23 R20 K48 ["GROUP_ASSET_IDS"]
      371 GETTABLEN                        R22 R23 4
      372 DUPTABLE                         R23 K53 [{"creatorType", "assetType", "paletteKey", "id"}]
      373 LOADK                            R24 K70 ["Group"]
      374 SETTABLEKS                       R24 R23 K49 ["creatorType"]
      376 GETIMPORT                        R25 K67 [Enum.AssetType.LipMakeup]
      378 GETTABLEKS                       R24 R25 K59 ["Value"]
      380 SETTABLEKS                       R24 R23 K50 ["assetType"]
      382 LOADK                            R24 K68 ["EyeMakeup"]
      383 SETTABLEKS                       R24 R23 K51 ["paletteKey"]
      385 GETTABLEKS                       R25 R20 K48 ["GROUP_ASSET_IDS"]
      387 GETTABLEN                        R24 R25 4
      388 SETTABLEKS                       R24 R23 K52 ["id"]
      390 SETTABLE                         R23 R21 R22
      391 GETTABLEKS                       R23 R20 K48 ["GROUP_ASSET_IDS"]
      393 GETTABLEN                        R22 R23 5
      394 DUPTABLE                         R23 K53 [{"creatorType", "assetType", "paletteKey", "id"}]
      395 LOADK                            R24 K70 ["Group"]
      396 SETTABLEKS                       R24 R23 K49 ["creatorType"]
      398 GETIMPORT                        R25 K69 [Enum.AssetType.EyeMakeup]
      400 GETTABLEKS                       R24 R25 K59 ["Value"]
      402 SETTABLEKS                       R24 R23 K50 ["assetType"]
      404 LOADK                            R24 K66 ["LipMakeup"]
      405 SETTABLEKS                       R24 R23 K51 ["paletteKey"]
      407 GETTABLEKS                       R25 R20 K48 ["GROUP_ASSET_IDS"]
      409 GETTABLEN                        R24 R25 5
      410 SETTABLEKS                       R24 R23 K52 ["id"]
      412 SETTABLE                         R23 R21 R22
      413 SETTABLEKS                       R21 R20 K71 ["MOCK_ITEM_DATA"]
      415 NEWTABLE                         R21 8 0
      417 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      419 GETTABLEN                        R22 R23 1
      420 DUPTABLE                         R23 K78 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      421 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      423 GETTABLEN                        R24 R25 1
      424 SETTABLEKS                       R24 R23 K72 ["Id"]
      426 LOADK                            R24 K79 ["User Asset 1"]
      427 SETTABLEKS                       R24 R23 K73 ["Name"]
      429 GETIMPORT                        R25 K58 [Enum.AssetType.EyebrowAccessory]
      431 GETTABLEKS                       R24 R25 K73 ["Name"]
      433 SETTABLEKS                       R24 R23 K56 ["AssetType"]
      435 LOADN                            R24 1
      436 SETTABLEKS                       R24 R23 K74 ["CreatorTargetId"]
      438 LOADK                            R24 K54 ["User"]
      439 SETTABLEKS                       R24 R23 K75 ["CreatorType"]
      441 LOADK                            R24 K80 ["Username"]
      442 SETTABLEKS                       R24 R23 K76 ["CreatorName"]
      444 LOADB                            R24 1
      445 SETTABLEKS                       R24 R23 K77 ["CreatorHasVerifiedBadge"]
      447 SETTABLE                         R23 R21 R22
      448 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      450 GETTABLEN                        R22 R23 2
      451 DUPTABLE                         R23 K78 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      452 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      454 GETTABLEN                        R24 R25 2
      455 SETTABLEKS                       R24 R23 K72 ["Id"]
      457 LOADK                            R24 K81 ["User Asset 2"]
      458 SETTABLEKS                       R24 R23 K73 ["Name"]
      460 GETIMPORT                        R25 K62 [Enum.AssetType.EyelashAccessory]
      462 GETTABLEKS                       R24 R25 K73 ["Name"]
      464 SETTABLEKS                       R24 R23 K56 ["AssetType"]
      466 LOADN                            R24 1
      467 SETTABLEKS                       R24 R23 K74 ["CreatorTargetId"]
      469 LOADK                            R24 K54 ["User"]
      470 SETTABLEKS                       R24 R23 K75 ["CreatorType"]
      472 LOADK                            R24 K80 ["Username"]
      473 SETTABLEKS                       R24 R23 K76 ["CreatorName"]
      475 LOADB                            R24 1
      476 SETTABLEKS                       R24 R23 K77 ["CreatorHasVerifiedBadge"]
      478 SETTABLE                         R23 R21 R22
      479 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      481 GETTABLEN                        R22 R23 3
      482 DUPTABLE                         R23 K78 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      483 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      485 GETTABLEN                        R24 R25 3
      486 SETTABLEKS                       R24 R23 K72 ["Id"]
      488 LOADK                            R24 K82 ["User Asset 3"]
      489 SETTABLEKS                       R24 R23 K73 ["Name"]
      491 GETIMPORT                        R25 K65 [Enum.AssetType.FaceMakeup]
      493 GETTABLEKS                       R24 R25 K73 ["Name"]
      495 SETTABLEKS                       R24 R23 K56 ["AssetType"]
      497 LOADN                            R24 1
      498 SETTABLEKS                       R24 R23 K74 ["CreatorTargetId"]
      500 LOADK                            R24 K54 ["User"]
      501 SETTABLEKS                       R24 R23 K75 ["CreatorType"]
      503 LOADK                            R24 K80 ["Username"]
      504 SETTABLEKS                       R24 R23 K76 ["CreatorName"]
      506 LOADB                            R24 1
      507 SETTABLEKS                       R24 R23 K77 ["CreatorHasVerifiedBadge"]
      509 SETTABLE                         R23 R21 R22
      510 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      512 GETTABLEN                        R22 R23 4
      513 DUPTABLE                         R23 K78 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      514 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      516 GETTABLEN                        R24 R25 4
      517 SETTABLEKS                       R24 R23 K72 ["Id"]
      519 LOADK                            R24 K83 ["User Asset 4"]
      520 SETTABLEKS                       R24 R23 K73 ["Name"]
      522 GETIMPORT                        R25 K67 [Enum.AssetType.LipMakeup]
      524 GETTABLEKS                       R24 R25 K73 ["Name"]
      526 SETTABLEKS                       R24 R23 K56 ["AssetType"]
      528 LOADN                            R24 1
      529 SETTABLEKS                       R24 R23 K74 ["CreatorTargetId"]
      531 LOADK                            R24 K54 ["User"]
      532 SETTABLEKS                       R24 R23 K75 ["CreatorType"]
      534 LOADK                            R24 K80 ["Username"]
      535 SETTABLEKS                       R24 R23 K76 ["CreatorName"]
      537 LOADB                            R24 1
      538 SETTABLEKS                       R24 R23 K77 ["CreatorHasVerifiedBadge"]
      540 SETTABLE                         R23 R21 R22
      541 GETTABLEKS                       R23 R20 K47 ["USER_ASSET_IDS"]
      543 GETTABLEN                        R22 R23 5
      544 DUPTABLE                         R23 K78 [{"Id", "Name", "AssetType", "CreatorTargetId", "CreatorType", "CreatorName", "CreatorHasVerifiedBadge"}]
      545 GETTABLEKS                       R25 R20 K47 ["USER_ASSET_IDS"]
      547 GETTABLEN                        R24 R25 5
      548 SETTABLEKS                       R24 R23 K72 ["Id"]
      550 LOADK                            R24 K84 ["User Asset 5"]
      551 SETTABLEKS                       R24 R23 K73 ["Name"]
      553 GETIMPORT                        R25 K69 [Enum.AssetType.EyeMakeup]
      555 GETTABLEKS                       R24 R25 K73 ["Name"]
      557 SETTABLEKS                       R24 R23 K56 ["AssetType"]
      559 LOADN                            R24 1
      560 SETTABLEKS                       R24 R23 K74 ["CreatorTargetId"]
      562 LOADK                            R24 K54 ["User"]
      563 SETTABLEKS                       R24 R23 K75 ["CreatorType"]
      565 LOADK                            R24 K80 ["Username"]
      566 SETTABLEKS                       R24 R23 K76 ["CreatorName"]
      568 LOADB                            R24 1
      569 SETTABLEKS                       R24 R23 K77 ["CreatorHasVerifiedBadge"]
      571 SETTABLE                         R23 R21 R22
      572 SETTABLEKS                       R21 R20 K85 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
      574 DUPCLOSURE                       R21 K86 [PROTO_0]
      575 CAPTURE                          VAL R0
      576 SETTABLEKS                       R21 R20 K87 ["findTextInCoreGui"]
      578 DUPCLOSURE                       R21 K88 [PROTO_1]
      579 CAPTURE                          VAL R20
      580 SETTABLEKS                       R21 R20 K89 ["isConfirmItemsStage"]
      582 DUPCLOSURE                       R21 K90 [PROTO_2]
      583 CAPTURE                          VAL R20
      584 SETTABLEKS                       R21 R20 K91 ["isEditInfoStage"]
      586 DUPCLOSURE                       R21 K92 [PROTO_3]
      587 CAPTURE                          VAL R20
      588 SETTABLEKS                       R21 R20 K93 ["isFailureStage"]
      590 DUPCLOSURE                       R21 K94 [PROTO_4]
      591 CAPTURE                          VAL R20
      592 SETTABLEKS                       R21 R20 K95 ["isSuccessStage"]
      594 GETIMPORT                        R21 K98 [UDim2.fromOffset]
      596 LOADN                            R22 40
      597 LOADN                            R23 40
      598 CALL                             R21 2 1
      599 GETIMPORT                        R22 K98 [UDim2.fromOffset]
      601 LOADN                            R23 144
      602 LOADN                            R24 88
      603 CALL                             R22 2 1
      604 DUPCLOSURE                       R23 K99 [PROTO_5]
      605 CAPTURE                          VAL R22
      606 DUPCLOSURE                       R24 K100 [PROTO_6]
      607 DUPCLOSURE                       R25 K101 [PROTO_8]
      608 CAPTURE                          VAL R0
      609 CAPTURE                          VAL R21
      610 CAPTURE                          VAL R6
      611 CAPTURE                          VAL R7
      612 SETTABLEKS                       R25 R20 K102 ["clickContinueButton"]
      614 DUPCLOSURE                       R25 K103 [PROTO_10]
      615 CAPTURE                          VAL R0
      616 CAPTURE                          VAL R21
      617 CAPTURE                          VAL R6
      618 CAPTURE                          VAL R7
      619 SETTABLEKS                       R25 R20 K104 ["clickBackButton"]
      621 DUPCLOSURE                       R25 K105 [PROTO_13]
      622 CAPTURE                          VAL R0
      623 CAPTURE                          VAL R7
      624 CAPTURE                          VAL R22
      625 CAPTURE                          VAL R23
      626 CAPTURE                          VAL R21
      627 CAPTURE                          VAL R6
      628 SETTABLEKS                       R25 R20 K106 ["changeCreator"]
      630 DUPCLOSURE                       R25 K107 [PROTO_15]
      631 CAPTURE                          VAL R20
      632 CAPTURE                          VAL R0
      633 CAPTURE                          VAL R7
      634 CAPTURE                          VAL R23
      635 CAPTURE                          VAL R21
      636 CAPTURE                          VAL R6
      637 SETTABLEKS                       R25 R20 K108 ["toggleItem"]
      639 DUPCLOSURE                       R25 K109 [PROTO_16]
      640 CAPTURE                          VAL R0
      641 CAPTURE                          VAL R23
      642 CAPTURE                          VAL R21
      643 CAPTURE                          VAL R7
      644 SETTABLEKS                       R25 R20 K110 ["changeColor"]
      646 DUPCLOSURE                       R25 K111 [PROTO_20]
      647 CAPTURE                          VAL R20
      648 CAPTURE                          VAL R0
      649 CAPTURE                          VAL R6
      650 CAPTURE                          VAL R21
      651 CAPTURE                          VAL R7
      652 SETTABLEKS                       R25 R20 K112 ["enterName"]
      654 DUPCLOSURE                       R25 K113 [PROTO_21]
      655 CAPTURE                          VAL R20
      656 SETTABLEKS                       R25 R20 K114 ["checkErrorBannerText"]
      658 DUPCLOSURE                       R25 K115 [PROTO_23]
      659 CAPTURE                          VAL R0
      660 CAPTURE                          VAL R21
      661 CAPTURE                          VAL R6
      662 CAPTURE                          VAL R7
      663 SETTABLEKS                       R25 R20 K116 ["openErrorDialog"]
      665 DUPCLOSURE                       R25 K117 [PROTO_24]
      666 CAPTURE                          VAL R20
      667 SETTABLEKS                       R25 R20 K118 ["checkErrorDialogText"]
      669 DUPCLOSURE                       R25 K119 [PROTO_25]
      670 CAPTURE                          VAL R20
      671 CAPTURE                          VAL R14
      672 SETTABLEKS                       R25 R20 K120 ["getUserEquippedItems"]
      674 DUPCLOSURE                       R25 K121 [PROTO_26]
      675 CAPTURE                          VAL R20
      676 CAPTURE                          VAL R14
      677 SETTABLEKS                       R25 R20 K122 ["getGroupEquippedItems"]
      679 DUPCLOSURE                       R25 K123 [PROTO_27]
      680 CAPTURE                          VAL R20
      681 CAPTURE                          VAL R12
      682 CAPTURE                          VAL R9
      683 SETTABLEKS                       R25 R20 K124 ["getExpectedLook"]
      685 LOADNIL                          R25
      686 SETTABLEKS                       R25 R20 K125 ["lookCreationInfo"]
      688 DUPCLOSURE                       R25 K126 [PROTO_29]
      689 CAPTURE                          VAL R8
      690 CAPTURE                          VAL R1
      691 CAPTURE                          VAL R11
      692 CAPTURE                          VAL R20
      693 CAPTURE                          VAL R13
      694 DUPCLOSURE                       R26 K127 [PROTO_31]
      695 CAPTURE                          VAL R8
      696 CAPTURE                          VAL R1
      697 CAPTURE                          VAL R11
      698 CAPTURE                          VAL R20
      699 CAPTURE                          VAL R25
      700 DUPCLOSURE                       R27 K128 [PROTO_33]
      701 CAPTURE                          VAL R8
      702 DUPCLOSURE                       R28 K129 [PROTO_35]
      703 CAPTURE                          VAL R8
      704 CAPTURE                          VAL R1
      705 CAPTURE                          VAL R11
      706 CAPTURE                          VAL R20
      707 CAPTURE                          VAL R25
      708 DUPCLOSURE                       R29 K130 [PROTO_37]
      709 CAPTURE                          VAL R8
      710 CAPTURE                          VAL R11
      711 CAPTURE                          VAL R1
      712 CAPTURE                          VAL R20
      713 CAPTURE                          VAL R25
      714 DUPCLOSURE                       R30 K131 [PROTO_38]
      715 CAPTURE                          VAL R13
      716 CAPTURE                          VAL R26
      717 CAPTURE                          VAL R27
      718 CAPTURE                          VAL R28
      719 CAPTURE                          VAL R29
      720 CAPTURE                          VAL R25
      721 SETTABLEKS                       R30 R20 K132 ["createMockLookComposerRequestInternal"]
      723 DUPCLOSURE                       R30 K133 [PROTO_41]
      724 CAPTURE                          VAL R0
      725 CAPTURE                          VAL R19
      726 CAPTURE                          VAL R5
      727 CAPTURE                          VAL R3
      728 CAPTURE                          VAL R18
      729 CAPTURE                          VAL R6
      730 CAPTURE                          VAL R7
      731 SETTABLEKS                       R30 R20 K134 ["createLookComposerDialogTest"]
      733 DUPCLOSURE                       R30 K135 [PROTO_45]
      734 CAPTURE                          VAL R20
      735 CAPTURE                          VAL R15
      736 CAPTURE                          VAL R5
      737 CAPTURE                          VAL R16
      738 CAPTURE                          VAL R17
      739 SETTABLEKS                       R30 R20 K136 ["lookCreationTest"]
      741 DUPCLOSURE                       R30 K137 [PROTO_48]
      742 CAPTURE                          VAL R0
      743 CAPTURE                          VAL R7
      744 CAPTURE                          VAL R6
      745 SETTABLEKS                       R30 R20 K138 ["openAssetImportDialog"]
      747 DUPCLOSURE                       R30 K139 [PROTO_52]
      748 CAPTURE                          VAL R0
      749 CAPTURE                          VAL R6
      750 CAPTURE                          VAL R21
      751 CAPTURE                          VAL R7
      752 SETTABLEKS                       R30 R20 K140 ["addAssetIdsToImportDialog"]
      754 DUPCLOSURE                       R30 K141 [PROTO_54]
      755 CAPTURE                          VAL R0
      756 CAPTURE                          VAL R21
      757 CAPTURE                          VAL R6
      758 CAPTURE                          VAL R7
      759 SETTABLEKS                       R30 R20 K142 ["clickAddItemsButtonImportDialog"]
      761 DUPCLOSURE                       R30 K143 [PROTO_57]
      762 CAPTURE                          VAL R0
      763 CAPTURE                          VAL R7
      764 CAPTURE                          VAL R6
      765 SETTABLEKS                       R30 R20 K144 ["openLookComposerDialog"]
      767 RETURN                           R20 1
