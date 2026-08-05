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
      125 JUMPIFNOTEQ                      R13 R0 ; [+78]
      127 DUPTABLE                         R13 K45 [{"id"}]
      128 GETTABLEKS                       R14 R12 K44 ["id"]
      130 SETTABLEKS                       R14 R13 K44 ["id"]
      132 GETUPVAL                         R14 2
      133 CALL                             R14 0 1
      134 JUMPIFNOT                        R14 ; [+17]
      135 GETIMPORT                        R14 K48 [Enum.AssetType]
      137 GETTABLEKS                       R16 R12 K49 ["assetType"]
      139 NAMECALL                         R14 R14 K50 ["FromValue"]
      141 CALL                             R14 2 1
      142 JUMPIFNOT                        R14 ; [+12]
      143 GETUPVAL                         R16 1
      144 GETTABLEKS                       R16 R16 K51 ["ASSET_TYPES_WITH_ORDER_SET"]
      146 GETTABLE                         R15 R16 R14
      147 JUMPIFNOT                        R15 ; [+7]
      148 DUPTABLE                         R15 K54 [{["order"] = 0}]
      149 SETTABLEKS                       R15 R13 K55 ["meta"]
      151 JUMP                             ; [+3]
      152 DUPTABLE                         R14 K58 [{["order"] = 0, ["puffiness"] = 1, ["version"] = 1}]
      153 SETTABLEKS                       R14 R13 K55 ["meta"]
      155 GETTABLEKS                       R14 R12 K59 ["bundleId"]
      157 JUMPIFNOT                        R14 ; [+4]
      158 GETTABLEKS                       R14 R12 K59 ["bundleId"]
      160 SETTABLEKS                       R14 R13 K59 ["bundleId"]
      162 JUMPIF                           R3 ; [+33]
      163 GETTABLEKS                       R14 R12 K49 ["assetType"]
      165 GETIMPORT                        R15 K61 [Enum.AssetType.FaceMakeup]
      167 GETTABLEKS                       R15 R15 K62 ["Value"]
      169 JUMPIFEQ                         R14 R15 ; [+17]
      171 GETTABLEKS                       R14 R12 K49 ["assetType"]
      173 GETIMPORT                        R15 K64 [Enum.AssetType.LipMakeup]
      175 GETTABLEKS                       R15 R15 K62 ["Value"]
      177 JUMPIFEQ                         R14 R15 ; [+9]
      179 GETTABLEKS                       R14 R12 K49 ["assetType"]
      181 GETIMPORT                        R15 K66 [Enum.AssetType.EyeMakeup]
      183 GETTABLEKS                       R15 R15 K62 ["Value"]
      185 JUMPIFNOTEQ                      R14 R15 ; [+10]
      187 LOADN                            R16 1
      188 FASTCALL3                        TABLE_INSERT R5 R16 R13
      190 MOVE                             R15 R5
      191 MOVE                             R17 R13
      192 GETIMPORT                        R14 K42 [table.insert]
      194 CALL                             R14 3 0
      195 JUMP                             ; [+8]
      196 GETTABLEKS                       R15 R4 K1 ["assets"]
      198 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
      200 MOVE                             R16 R13
      201 GETIMPORT                        R14 K42 [table.insert]
      203 CALL                             R14 2 0
      204 FORGLOOP                         R8 2 ; [-82]
      206 JUMPIFNOT                        R3 ; [+1]
      207 JUMP                             ; [+13]
      208 GETUPVAL                         R8 3
      209 GETTABLEKS                       R8 R8 K67 ["reverse"]
      211 GETUPVAL                         R9 3
      212 GETTABLEKS                       R9 R9 K68 ["append"]
      214 GETTABLEKS                       R10 R4 K1 ["assets"]
      216 MOVE                             R11 R5
      217 CALL                             R9 2 -1
      218 CALL                             R8 -1 1
      219 SETTABLEKS                       R8 R4 K1 ["assets"]
      221 LOADN                            R8 1
      222 GETTABLEKS                       R9 R4 K1 ["assets"]
      224 LOADNIL                          R10
      225 LOADNIL                          R11
      226 FORGPREP                         R9
      227 GETTABLEKS                       R14 R13 K55 ["meta"]
      229 JUMPIFNOT                        R14 ; [+5]
      230 GETTABLEKS                       R14 R13 K55 ["meta"]
      232 SETTABLEKS                       R8 R14 K52 ["order"]
      234 ADDK                             R8 R8 K27 [1]
      235 FORGLOOP                         R9 2 ; [-9]
      237 RETURN                           R4 1

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
       25 GETTABLEKS                       R7 R7 K10 ["Provider"]
       27 DUPTABLE                         R8 K12 [{"value"}]
       28 GETUPVAL                         R9 5
       29 CALL                             R9 0 1
       30 SETTABLEKS                       R9 R8 K11 ["value"]
       32 DUPTABLE                         R9 K14 [{"PlayersProvider"}]
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K0 ["createElement"]
       36 GETUPVAL                         R11 6
       37 GETTABLEKS                       R11 R11 K10 ["Provider"]
       39 DUPTABLE                         R12 K12 [{"value"}]
       40 GETUPVAL                         R13 7
       41 CALL                             R13 0 1
       42 SETTABLEKS                       R13 R12 K11 ["value"]
       44 DUPTABLE                         R13 K16 [{"Dialog"}]
       45 GETUPVAL                         R14 0
       46 GETTABLEKS                       R14 R14 K0 ["createElement"]
       48 GETUPVAL                         R15 8
       49 DUPTABLE                         R16 K20 [{"equippedItems", "dialogLookType", "onClose"}]
       50 GETUPVAL                         R17 9
       51 SETTABLEKS                       R17 R16 K17 ["equippedItems"]
       53 GETUPVAL                         R17 10
       54 SETTABLEKS                       R17 R16 K18 ["dialogLookType"]
       56 GETUPVAL                         R17 11
       57 SETTABLEKS                       R17 R16 K19 ["onClose"]
       59 CALL                             R14 2 1
       60 SETTABLEKS                       R14 R13 K15 ["Dialog"]
       62 CALL                             R10 3 1
       63 SETTABLEKS                       R10 R9 K13 ["PlayersProvider"]
       65 CALL                             R6 3 -1
       66 CALL                             R4 -1 1
       67 SETTABLEKS                       R4 R3 K7 ["Content"]
       69 CALL                             R0 3 -1
       70 RETURN                           R0 -1

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
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 GETUPVAL                         R7 9
       26 GETTABLEKS                       R7 R7 K7 ["act"]
       28 NEWCLOSURE                       R8 P1
       29 CAPTURE                          UPVAL U10
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R6
       32 CALL                             R7 1 0
       33 RETURN                           R4 1

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
      115 GETTABLEKS                       R16 R2 K20 ["Src"]
      117 GETTABLEKS                       R16 R16 K27 ["Flags"]
      119 GETTABLEKS                       R16 R16 K28 ["getFFlagAvatarPreviewerLookApiOrderMeta"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K10 [require]
      124 GETTABLEKS                       R17 R2 K29 ["RhodiumTests"]
      126 GETTABLEKS                       R17 R17 K30 ["RhodiumTestHelpers"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K10 [require]
      131 GETTABLEKS                       R18 R2 K20 ["Src"]
      133 GETTABLEKS                       R18 R18 K31 ["Components"]
      135 GETTABLEKS                       R18 R18 K32 ["AvatarEditorServiceContext"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K10 [require]
      140 GETTABLEKS                       R19 R2 K20 ["Src"]
      142 GETTABLEKS                       R19 R19 K31 ["Components"]
      144 GETTABLEKS                       R19 R19 K33 ["HumanoidServiceContext"]
      146 CALL                             R18 1 1
      147 GETIMPORT                        R19 K10 [require]
      149 GETTABLEKS                       R20 R2 K20 ["Src"]
      151 GETTABLEKS                       R20 R20 K31 ["Components"]
      153 GETTABLEKS                       R20 R20 K34 ["LookContext"]
      155 CALL                             R19 1 1
      156 GETIMPORT                        R20 K10 [require]
      158 GETTABLEKS                       R21 R2 K20 ["Src"]
      160 GETTABLEKS                       R21 R21 K31 ["Components"]
      162 GETTABLEKS                       R21 R21 K35 ["DEPRECATED_LookContext"]
      164 CALL                             R20 1 1
      165 GETIMPORT                        R21 K10 [require]
      167 GETTABLEKS                       R22 R2 K20 ["Src"]
      169 GETTABLEKS                       R22 R22 K31 ["Components"]
      171 GETTABLEKS                       R22 R22 K36 ["PlayersServiceContext"]
      173 CALL                             R21 1 1
      174 GETTABLEKS                       R22 R4 K37 ["TestHelpers"]
      176 GETTABLEKS                       R22 R22 K38 ["provideMockContext"]
      178 GETIMPORT                        R23 K10 [require]
      180 GETTABLEKS                       R24 R2 K29 ["RhodiumTests"]
      182 GETTABLEKS                       R24 R24 K39 ["createMockContext"]
      184 CALL                             R23 1 1
      185 GETIMPORT                        R24 K10 [require]
      187 GETIMPORT                        R25 K6 [script]
      189 GETTABLEKS                       R25 R25 K40 ["Parent"]
      191 GETTABLEKS                       R25 R25 K41 ["HumanoidServiceContextMock"]
      193 CALL                             R24 1 1
      194 GETIMPORT                        R25 K10 [require]
      196 GETIMPORT                        R26 K6 [script]
      198 GETTABLEKS                       R26 R26 K40 ["Parent"]
      200 GETTABLEKS                       R26 R26 K42 ["PlayersServiceContextMock"]
      202 CALL                             R25 1 1
      203 NEWTABLE                         R26 64 0
      205 LOADK                            R27 K43 ["Something unexpected went wrong with the look preview request, please try again later or file a bug report."]
      206 SETTABLEKS                       R27 R26 K44 ["LOOK_PREVIEW_FAILURE_MESSAGE"]
      208 LOADK                            R27 K45 ["Some items are not valid."]
      209 SETTABLEKS                       R27 R26 K46 ["LOOK_VALIDATION_FAILURE_MESSAGE"]
      211 LOADK                            R27 K47 ["Your look creation failed because the text was moderated."]
      212 SETTABLEKS                       R27 R26 K48 ["LOOK_CREATION_FAILURE_MESSAGE"]
      214 LOADK                            R27 K49 ["TestGroupName"]
      215 SETTABLEKS                       R27 R26 K50 ["DEFAULT_GROUP_NAME"]
      217 LOADK                            R27 K51 ["Test Name"]
      218 SETTABLEKS                       R27 R26 K52 ["VALID_NAME"]
      220 LOADK                            R27 K53 [122333]
      221 SETTABLEKS                       R27 R26 K54 ["GROUP_ID"]
      223 NEWTABLE                         R27 0 5
      225 LOADN                            R28 111
      226 LOADN                            R29 222
      227 LOADN                            R30 333
      228 LOADN                            R31 444
      229 LOADN                            R32 555
      230 SETLIST                          R27 R28 5 [1]
      232 SETTABLEKS                       R27 R26 K55 ["USER_ASSET_IDS"]
      234 NEWTABLE                         R27 0 5
      236 LOADN                            R28 666
      237 LOADN                            R29 777
      238 LOADN                            R30 888
      239 LOADN                            R31 999
      240 LOADN                            R32 0
      241 SETLIST                          R27 R28 5 [1]
      243 SETTABLEKS                       R27 R26 K56 ["GROUP_ASSET_IDS"]
      245 LOADN                            R27 1111
      246 SETTABLEKS                       R27 R26 K57 ["AVATAR_LOOK_ASSET_ID"]
      248 LOADN                            R27 60
      249 SETTABLEKS                       R27 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      251 NEWTABLE                         R27 0 6
      253 LOADN                            R28 2001
      254 LOADN                            R29 2002
      255 LOADN                            R30 2003
      256 LOADN                            R31 2004
      257 LOADN                            R32 2005
      258 LOADN                            R33 2006
      259 SETLIST                          R27 R28 6 [1]
      261 SETTABLEKS                       R27 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      263 NEWTABLE                         R27 16 0
      265 GETTABLEKS                       R29 R26 K55 ["USER_ASSET_IDS"]
      267 GETTABLEN                        R28 R29 1
      268 DUPTABLE                         R29 K66 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Eyebrows", ["id"]}]
      269 GETIMPORT                        R30 K70 [Enum.AssetType.EyebrowAccessory]
      271 GETTABLEKS                       R30 R30 K71 ["Value"]
      273 SETTABLEKS                       R30 R29 K62 ["assetType"]
      275 GETTABLEKS                       R31 R26 K55 ["USER_ASSET_IDS"]
      277 GETTABLEN                        R30 R31 1
      278 SETTABLEKS                       R30 R29 K65 ["id"]
      280 SETTABLE                         R29 R27 R28
      281 GETTABLEKS                       R29 R26 K55 ["USER_ASSET_IDS"]
      283 GETTABLEN                        R28 R29 2
      284 DUPTABLE                         R29 K73 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Eyelashes", ["id"]}]
      285 GETIMPORT                        R30 K75 [Enum.AssetType.EyelashAccessory]
      287 GETTABLEKS                       R30 R30 K71 ["Value"]
      289 SETTABLEKS                       R30 R29 K62 ["assetType"]
      291 GETTABLEKS                       R31 R26 K55 ["USER_ASSET_IDS"]
      293 GETTABLEN                        R30 R31 2
      294 SETTABLEKS                       R30 R29 K65 ["id"]
      296 SETTABLE                         R29 R27 R28
      297 GETTABLEKS                       R29 R26 K55 ["USER_ASSET_IDS"]
      299 GETTABLEN                        R28 R29 3
      300 DUPTABLE                         R29 K77 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "FaceMakeup", ["id"]}]
      301 GETIMPORT                        R30 K78 [Enum.AssetType.FaceMakeup]
      303 GETTABLEKS                       R30 R30 K71 ["Value"]
      305 SETTABLEKS                       R30 R29 K62 ["assetType"]
      307 GETTABLEKS                       R31 R26 K55 ["USER_ASSET_IDS"]
      309 GETTABLEN                        R30 R31 3
      310 SETTABLEKS                       R30 R29 K65 ["id"]
      312 SETTABLE                         R29 R27 R28
      313 GETTABLEKS                       R29 R26 K55 ["USER_ASSET_IDS"]
      315 GETTABLEN                        R28 R29 4
      316 DUPTABLE                         R29 K80 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LipMakeup", ["id"]}]
      317 GETIMPORT                        R30 K81 [Enum.AssetType.LipMakeup]
      319 GETTABLEKS                       R30 R30 K71 ["Value"]
      321 SETTABLEKS                       R30 R29 K62 ["assetType"]
      323 GETTABLEKS                       R31 R26 K55 ["USER_ASSET_IDS"]
      325 GETTABLEN                        R30 R31 4
      326 SETTABLEKS                       R30 R29 K65 ["id"]
      328 SETTABLE                         R29 R27 R28
      329 GETTABLEKS                       R29 R26 K55 ["USER_ASSET_IDS"]
      331 GETTABLEN                        R28 R29 5
      332 DUPTABLE                         R29 K83 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "EyeMakeup", ["id"]}]
      333 GETIMPORT                        R30 K84 [Enum.AssetType.EyeMakeup]
      335 GETTABLEKS                       R30 R30 K71 ["Value"]
      337 SETTABLEKS                       R30 R29 K62 ["assetType"]
      339 GETTABLEKS                       R31 R26 K55 ["USER_ASSET_IDS"]
      341 GETTABLEN                        R30 R31 5
      342 SETTABLEKS                       R30 R29 K65 ["id"]
      344 SETTABLE                         R29 R27 R28
      345 GETTABLEKS                       R29 R26 K56 ["GROUP_ASSET_IDS"]
      347 GETTABLEN                        R28 R29 1
      348 DUPTABLE                         R29 K86 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "Eyebrows", ["id"]}]
      349 GETIMPORT                        R30 K70 [Enum.AssetType.EyebrowAccessory]
      351 GETTABLEKS                       R30 R30 K71 ["Value"]
      353 SETTABLEKS                       R30 R29 K62 ["assetType"]
      355 GETTABLEKS                       R31 R26 K56 ["GROUP_ASSET_IDS"]
      357 GETTABLEN                        R30 R31 1
      358 SETTABLEKS                       R30 R29 K65 ["id"]
      360 SETTABLE                         R29 R27 R28
      361 GETTABLEKS                       R29 R26 K56 ["GROUP_ASSET_IDS"]
      363 GETTABLEN                        R28 R29 2
      364 DUPTABLE                         R29 K87 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "Eyelashes", ["id"]}]
      365 GETIMPORT                        R30 K75 [Enum.AssetType.EyelashAccessory]
      367 GETTABLEKS                       R30 R30 K71 ["Value"]
      369 SETTABLEKS                       R30 R29 K62 ["assetType"]
      371 GETTABLEKS                       R31 R26 K56 ["GROUP_ASSET_IDS"]
      373 GETTABLEN                        R30 R31 2
      374 SETTABLEKS                       R30 R29 K65 ["id"]
      376 SETTABLE                         R29 R27 R28
      377 GETTABLEKS                       R29 R26 K56 ["GROUP_ASSET_IDS"]
      379 GETTABLEN                        R28 R29 3
      380 DUPTABLE                         R29 K88 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "FaceMakeup", ["id"]}]
      381 GETIMPORT                        R30 K78 [Enum.AssetType.FaceMakeup]
      383 GETTABLEKS                       R30 R30 K71 ["Value"]
      385 SETTABLEKS                       R30 R29 K62 ["assetType"]
      387 GETTABLEKS                       R31 R26 K56 ["GROUP_ASSET_IDS"]
      389 GETTABLEN                        R30 R31 3
      390 SETTABLEKS                       R30 R29 K65 ["id"]
      392 SETTABLE                         R29 R27 R28
      393 GETTABLEKS                       R29 R26 K56 ["GROUP_ASSET_IDS"]
      395 GETTABLEN                        R28 R29 4
      396 DUPTABLE                         R29 K89 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "EyeMakeup", ["id"]}]
      397 GETIMPORT                        R30 K81 [Enum.AssetType.LipMakeup]
      399 GETTABLEKS                       R30 R30 K71 ["Value"]
      401 SETTABLEKS                       R30 R29 K62 ["assetType"]
      403 GETTABLEKS                       R31 R26 K56 ["GROUP_ASSET_IDS"]
      405 GETTABLEN                        R30 R31 4
      406 SETTABLEKS                       R30 R29 K65 ["id"]
      408 SETTABLE                         R29 R27 R28
      409 GETTABLEKS                       R29 R26 K56 ["GROUP_ASSET_IDS"]
      411 GETTABLEN                        R28 R29 5
      412 DUPTABLE                         R29 K90 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "LipMakeup", ["id"]}]
      413 GETIMPORT                        R30 K84 [Enum.AssetType.EyeMakeup]
      415 GETTABLEKS                       R30 R30 K71 ["Value"]
      417 SETTABLEKS                       R30 R29 K62 ["assetType"]
      419 GETTABLEKS                       R31 R26 K56 ["GROUP_ASSET_IDS"]
      421 GETTABLEN                        R30 R31 5
      422 SETTABLEKS                       R30 R29 K65 ["id"]
      424 SETTABLE                         R29 R27 R28
      425 SETTABLEKS                       R27 R26 K91 ["MOCK_ITEM_DATA"]
      427 NEWTABLE                         R27 16 0
      429 GETTABLEKS                       R29 R26 K55 ["USER_ASSET_IDS"]
      431 GETTABLEN                        R28 R29 1
      432 DUPTABLE                         R29 K102 [{["Id"], ["Name"] = "User Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      433 GETTABLEKS                       R31 R26 K55 ["USER_ASSET_IDS"]
      435 GETTABLEN                        R30 R31 1
      436 SETTABLEKS                       R30 R29 K92 ["Id"]
      438 GETIMPORT                        R30 K70 [Enum.AssetType.EyebrowAccessory]
      440 GETTABLEKS                       R30 R30 K93 ["Name"]
      442 SETTABLEKS                       R30 R29 K68 ["AssetType"]
      444 SETTABLE                         R29 R27 R28
      445 GETTABLEKS                       R29 R26 K55 ["USER_ASSET_IDS"]
      447 GETTABLEN                        R28 R29 2
      448 DUPTABLE                         R29 K104 [{["Id"], ["Name"] = "User Asset 2", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      449 GETTABLEKS                       R31 R26 K55 ["USER_ASSET_IDS"]
      451 GETTABLEN                        R30 R31 2
      452 SETTABLEKS                       R30 R29 K92 ["Id"]
      454 GETIMPORT                        R30 K75 [Enum.AssetType.EyelashAccessory]
      456 GETTABLEKS                       R30 R30 K93 ["Name"]
      458 SETTABLEKS                       R30 R29 K68 ["AssetType"]
      460 SETTABLE                         R29 R27 R28
      461 GETTABLEKS                       R29 R26 K55 ["USER_ASSET_IDS"]
      463 GETTABLEN                        R28 R29 3
      464 DUPTABLE                         R29 K106 [{["Id"], ["Name"] = "User Asset 3", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      465 GETTABLEKS                       R31 R26 K55 ["USER_ASSET_IDS"]
      467 GETTABLEN                        R30 R31 3
      468 SETTABLEKS                       R30 R29 K92 ["Id"]
      470 GETIMPORT                        R30 K78 [Enum.AssetType.FaceMakeup]
      472 GETTABLEKS                       R30 R30 K93 ["Name"]
      474 SETTABLEKS                       R30 R29 K68 ["AssetType"]
      476 SETTABLE                         R29 R27 R28
      477 GETTABLEKS                       R29 R26 K55 ["USER_ASSET_IDS"]
      479 GETTABLEN                        R28 R29 4
      480 DUPTABLE                         R29 K108 [{["Id"], ["Name"] = "User Asset 4", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      481 GETTABLEKS                       R31 R26 K55 ["USER_ASSET_IDS"]
      483 GETTABLEN                        R30 R31 4
      484 SETTABLEKS                       R30 R29 K92 ["Id"]
      486 GETIMPORT                        R30 K81 [Enum.AssetType.LipMakeup]
      488 GETTABLEKS                       R30 R30 K93 ["Name"]
      490 SETTABLEKS                       R30 R29 K68 ["AssetType"]
      492 SETTABLE                         R29 R27 R28
      493 GETTABLEKS                       R29 R26 K55 ["USER_ASSET_IDS"]
      495 GETTABLEN                        R28 R29 5
      496 DUPTABLE                         R29 K110 [{["Id"], ["Name"] = "User Asset 5", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      497 GETTABLEKS                       R31 R26 K55 ["USER_ASSET_IDS"]
      499 GETTABLEN                        R30 R31 5
      500 SETTABLEKS                       R30 R29 K92 ["Id"]
      502 GETIMPORT                        R30 K84 [Enum.AssetType.EyeMakeup]
      504 GETTABLEKS                       R30 R30 K93 ["Name"]
      506 SETTABLEKS                       R30 R29 K68 ["AssetType"]
      508 SETTABLE                         R29 R27 R28
      509 GETTABLEKS                       R28 R26 K57 ["AVATAR_LOOK_ASSET_ID"]
      511 DUPTABLE                         R29 K112 [{["Id"], ["Name"] = "Avatar Look Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      512 GETTABLEKS                       R30 R26 K57 ["AVATAR_LOOK_ASSET_ID"]
      514 SETTABLEKS                       R30 R29 K92 ["Id"]
      516 GETIMPORT                        R30 K114 [Enum.AssetType.ShirtAccessory]
      518 GETTABLEKS                       R30 R30 K93 ["Name"]
      520 SETTABLEKS                       R30 R29 K68 ["AssetType"]
      522 SETTABLE                         R29 R27 R28
      523 GETTABLEKS                       R29 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      525 GETTABLEN                        R28 R29 1
      526 DUPTABLE                         R29 K116 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      527 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      529 GETTABLEN                        R30 R31 1
      530 SETTABLEKS                       R30 R29 K92 ["Id"]
      532 GETIMPORT                        R30 K118 [Enum.AssetType.DynamicHead]
      534 GETTABLEKS                       R30 R30 K93 ["Name"]
      536 SETTABLEKS                       R30 R29 K68 ["AssetType"]
      538 SETTABLE                         R29 R27 R28
      539 GETTABLEKS                       R29 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      541 GETTABLEN                        R28 R29 2
      542 DUPTABLE                         R29 K120 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 2", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      543 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      545 GETTABLEN                        R30 R31 2
      546 SETTABLEKS                       R30 R29 K92 ["Id"]
      548 GETIMPORT                        R30 K122 [Enum.AssetType.Torso]
      550 GETTABLEKS                       R30 R30 K93 ["Name"]
      552 SETTABLEKS                       R30 R29 K68 ["AssetType"]
      554 SETTABLE                         R29 R27 R28
      555 GETTABLEKS                       R29 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      557 GETTABLEN                        R28 R29 3
      558 DUPTABLE                         R29 K124 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 3", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      559 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      561 GETTABLEN                        R30 R31 3
      562 SETTABLEKS                       R30 R29 K92 ["Id"]
      564 GETIMPORT                        R30 K126 [Enum.AssetType.LeftArm]
      566 GETTABLEKS                       R30 R30 K93 ["Name"]
      568 SETTABLEKS                       R30 R29 K68 ["AssetType"]
      570 SETTABLE                         R29 R27 R28
      571 GETTABLEKS                       R29 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      573 GETTABLEN                        R28 R29 4
      574 DUPTABLE                         R29 K128 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 4", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      575 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      577 GETTABLEN                        R30 R31 4
      578 SETTABLEKS                       R30 R29 K92 ["Id"]
      580 GETIMPORT                        R30 K130 [Enum.AssetType.LeftLeg]
      582 GETTABLEKS                       R30 R30 K93 ["Name"]
      584 SETTABLEKS                       R30 R29 K68 ["AssetType"]
      586 SETTABLE                         R29 R27 R28
      587 GETTABLEKS                       R29 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      589 GETTABLEN                        R28 R29 5
      590 DUPTABLE                         R29 K132 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 5", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      591 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      593 GETTABLEN                        R30 R31 5
      594 SETTABLEKS                       R30 R29 K92 ["Id"]
      596 GETIMPORT                        R30 K134 [Enum.AssetType.RightArm]
      598 GETTABLEKS                       R30 R30 K93 ["Name"]
      600 SETTABLEKS                       R30 R29 K68 ["AssetType"]
      602 SETTABLE                         R29 R27 R28
      603 GETTABLEKS                       R29 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      605 GETTABLEN                        R28 R29 6
      606 DUPTABLE                         R29 K136 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 6", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      607 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      609 GETTABLEN                        R30 R31 6
      610 SETTABLEKS                       R30 R29 K92 ["Id"]
      612 GETIMPORT                        R30 K138 [Enum.AssetType.RightLeg]
      614 GETTABLEKS                       R30 R30 K93 ["Name"]
      616 SETTABLEKS                       R30 R29 K68 ["AssetType"]
      618 SETTABLE                         R29 R27 R28
      619 SETTABLEKS                       R27 R26 K139 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
      621 NEWTABLE                         R27 1 0
      623 GETTABLEKS                       R28 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      625 DUPTABLE                         R29 K141 [{["Id"], ["Name"], ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["BundledItems"]}]
      626 GETTABLEKS                       R30 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      628 SETTABLEKS                       R30 R29 K92 ["Id"]
      630 LOADK                            R31 K142 ["Test Bundle"]
      631 GETTABLEKS                       R33 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      633 FASTCALL1                        TOSTRING R33 ; [+2]
      634 GETIMPORT                        R32 K144 [tostring]
      636 CALL                             R32 1 1
      637 CONCAT                           R30 R31 R32
      638 SETTABLEKS                       R30 R29 K93 ["Name"]
      640 NEWTABLE                         R30 0 6
      642 DUPTABLE                         R31 K145 [{"Id"}]
      643 GETTABLEKS                       R33 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      645 GETTABLEN                        R32 R33 1
      646 SETTABLEKS                       R32 R31 K92 ["Id"]
      648 DUPTABLE                         R32 K145 [{"Id"}]
      649 GETTABLEKS                       R34 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      651 GETTABLEN                        R33 R34 2
      652 SETTABLEKS                       R33 R32 K92 ["Id"]
      654 DUPTABLE                         R33 K145 [{"Id"}]
      655 GETTABLEKS                       R35 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      657 GETTABLEN                        R34 R35 3
      658 SETTABLEKS                       R34 R33 K92 ["Id"]
      660 DUPTABLE                         R34 K145 [{"Id"}]
      661 GETTABLEKS                       R36 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      663 GETTABLEN                        R35 R36 4
      664 SETTABLEKS                       R35 R34 K92 ["Id"]
      666 DUPTABLE                         R35 K145 [{"Id"}]
      667 GETTABLEKS                       R37 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      669 GETTABLEN                        R36 R37 5
      670 SETTABLEKS                       R36 R35 K92 ["Id"]
      672 DUPTABLE                         R36 K145 [{"Id"}]
      673 GETTABLEKS                       R38 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      675 GETTABLEN                        R37 R38 6
      676 SETTABLEKS                       R37 R36 K92 ["Id"]
      678 SETLIST                          R30 R31 6 [1]
      680 SETTABLEKS                       R30 R29 K140 ["BundledItems"]
      682 SETTABLE                         R29 R27 R28
      683 SETTABLEKS                       R27 R26 K146 ["MOCK_AVATAR_EDITOR_SERVICE_BUNDLE_DETAILS"]
      685 NEWTABLE                         R27 8 0
      687 GETTABLEKS                       R28 R26 K57 ["AVATAR_LOOK_ASSET_ID"]
      689 DUPTABLE                         R29 K148 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Shirts", ["id"]}]
      690 GETIMPORT                        R30 K114 [Enum.AssetType.ShirtAccessory]
      692 GETTABLEKS                       R30 R30 K71 ["Value"]
      694 SETTABLEKS                       R30 R29 K62 ["assetType"]
      696 GETTABLEKS                       R30 R26 K57 ["AVATAR_LOOK_ASSET_ID"]
      698 SETTABLEKS                       R30 R29 K65 ["id"]
      700 SETTABLE                         R29 R27 R28
      701 GETTABLEKS                       R29 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      703 GETTABLEN                        R28 R29 1
      704 DUPTABLE                         R29 K151 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "HeadBodyPart", ["id"], ["bundleId"]}]
      705 GETIMPORT                        R30 K118 [Enum.AssetType.DynamicHead]
      707 GETTABLEKS                       R30 R30 K71 ["Value"]
      709 SETTABLEKS                       R30 R29 K62 ["assetType"]
      711 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      713 GETTABLEN                        R30 R31 1
      714 SETTABLEKS                       R30 R29 K65 ["id"]
      716 GETTABLEKS                       R30 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      718 SETTABLEKS                       R30 R29 K150 ["bundleId"]
      720 SETTABLE                         R29 R27 R28
      721 GETTABLEKS                       R29 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      723 GETTABLEN                        R28 R29 2
      724 DUPTABLE                         R29 K152 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Torso", ["id"], ["bundleId"]}]
      725 GETIMPORT                        R30 K122 [Enum.AssetType.Torso]
      727 GETTABLEKS                       R30 R30 K71 ["Value"]
      729 SETTABLEKS                       R30 R29 K62 ["assetType"]
      731 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      733 GETTABLEN                        R30 R31 2
      734 SETTABLEKS                       R30 R29 K65 ["id"]
      736 GETTABLEKS                       R30 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      738 SETTABLEKS                       R30 R29 K150 ["bundleId"]
      740 SETTABLE                         R29 R27 R28
      741 GETTABLEKS                       R29 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      743 GETTABLEN                        R28 R29 3
      744 DUPTABLE                         R29 K153 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LeftArm", ["id"], ["bundleId"]}]
      745 GETIMPORT                        R30 K126 [Enum.AssetType.LeftArm]
      747 GETTABLEKS                       R30 R30 K71 ["Value"]
      749 SETTABLEKS                       R30 R29 K62 ["assetType"]
      751 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      753 GETTABLEN                        R30 R31 3
      754 SETTABLEKS                       R30 R29 K65 ["id"]
      756 GETTABLEKS                       R30 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      758 SETTABLEKS                       R30 R29 K150 ["bundleId"]
      760 SETTABLE                         R29 R27 R28
      761 GETTABLEKS                       R29 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      763 GETTABLEN                        R28 R29 4
      764 DUPTABLE                         R29 K154 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LeftLeg", ["id"], ["bundleId"]}]
      765 GETIMPORT                        R30 K130 [Enum.AssetType.LeftLeg]
      767 GETTABLEKS                       R30 R30 K71 ["Value"]
      769 SETTABLEKS                       R30 R29 K62 ["assetType"]
      771 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      773 GETTABLEN                        R30 R31 4
      774 SETTABLEKS                       R30 R29 K65 ["id"]
      776 GETTABLEKS                       R30 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      778 SETTABLEKS                       R30 R29 K150 ["bundleId"]
      780 SETTABLE                         R29 R27 R28
      781 GETTABLEKS                       R29 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      783 GETTABLEN                        R28 R29 5
      784 DUPTABLE                         R29 K155 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "RightArm", ["id"], ["bundleId"]}]
      785 GETIMPORT                        R30 K134 [Enum.AssetType.RightArm]
      787 GETTABLEKS                       R30 R30 K71 ["Value"]
      789 SETTABLEKS                       R30 R29 K62 ["assetType"]
      791 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      793 GETTABLEN                        R30 R31 5
      794 SETTABLEKS                       R30 R29 K65 ["id"]
      796 GETTABLEKS                       R30 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      798 SETTABLEKS                       R30 R29 K150 ["bundleId"]
      800 SETTABLE                         R29 R27 R28
      801 GETTABLEKS                       R29 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      803 GETTABLEN                        R28 R29 6
      804 DUPTABLE                         R29 K156 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "RightLeg", ["id"], ["bundleId"]}]
      805 GETIMPORT                        R30 K138 [Enum.AssetType.RightLeg]
      807 GETTABLEKS                       R30 R30 K71 ["Value"]
      809 SETTABLEKS                       R30 R29 K62 ["assetType"]
      811 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      813 GETTABLEN                        R30 R31 6
      814 SETTABLEKS                       R30 R29 K65 ["id"]
      816 GETTABLEKS                       R30 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      818 SETTABLEKS                       R30 R29 K150 ["bundleId"]
      820 SETTABLE                         R29 R27 R28
      821 SETTABLEKS                       R27 R26 K157 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
      823 NEWTABLE                         R27 1 0
      825 GETTABLEKS                       R28 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      827 DUPTABLE                         R29 K161 [{["id"], ["name"], ["bundleType"] = 1, ["creatorType"] = "User", ["assetsInBundle"]}]
      828 GETTABLEKS                       R30 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      830 SETTABLEKS                       R30 R29 K65 ["id"]
      832 LOADK                            R31 K142 ["Test Bundle"]
      833 GETTABLEKS                       R33 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      835 FASTCALL1                        TOSTRING R33 ; [+2]
      836 GETIMPORT                        R32 K144 [tostring]
      838 CALL                             R32 1 1
      839 CONCAT                           R30 R31 R32
      840 SETTABLEKS                       R30 R29 K158 ["name"]
      842 NEWTABLE                         R30 0 6
      844 DUPTABLE                         R31 K163 [{["assetType"], ["id"], ["isIncluded"] = True}]
      845 GETIMPORT                        R32 K118 [Enum.AssetType.DynamicHead]
      847 GETTABLEKS                       R32 R32 K71 ["Value"]
      849 SETTABLEKS                       R32 R31 K62 ["assetType"]
      851 GETTABLEKS                       R33 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      853 GETTABLEN                        R32 R33 1
      854 SETTABLEKS                       R32 R31 K65 ["id"]
      856 DUPTABLE                         R32 K163 [{["assetType"], ["id"], ["isIncluded"] = True}]
      857 GETIMPORT                        R33 K122 [Enum.AssetType.Torso]
      859 GETTABLEKS                       R33 R33 K71 ["Value"]
      861 SETTABLEKS                       R33 R32 K62 ["assetType"]
      863 GETTABLEKS                       R34 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      865 GETTABLEN                        R33 R34 2
      866 SETTABLEKS                       R33 R32 K65 ["id"]
      868 DUPTABLE                         R33 K163 [{["assetType"], ["id"], ["isIncluded"] = True}]
      869 GETIMPORT                        R34 K126 [Enum.AssetType.LeftArm]
      871 GETTABLEKS                       R34 R34 K71 ["Value"]
      873 SETTABLEKS                       R34 R33 K62 ["assetType"]
      875 GETTABLEKS                       R35 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      877 GETTABLEN                        R34 R35 3
      878 SETTABLEKS                       R34 R33 K65 ["id"]
      880 DUPTABLE                         R34 K163 [{["assetType"], ["id"], ["isIncluded"] = True}]
      881 GETIMPORT                        R35 K130 [Enum.AssetType.LeftLeg]
      883 GETTABLEKS                       R35 R35 K71 ["Value"]
      885 SETTABLEKS                       R35 R34 K62 ["assetType"]
      887 GETTABLEKS                       R36 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      889 GETTABLEN                        R35 R36 4
      890 SETTABLEKS                       R35 R34 K65 ["id"]
      892 DUPTABLE                         R35 K163 [{["assetType"], ["id"], ["isIncluded"] = True}]
      893 GETIMPORT                        R36 K134 [Enum.AssetType.RightArm]
      895 GETTABLEKS                       R36 R36 K71 ["Value"]
      897 SETTABLEKS                       R36 R35 K62 ["assetType"]
      899 GETTABLEKS                       R37 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      901 GETTABLEN                        R36 R37 5
      902 SETTABLEKS                       R36 R35 K65 ["id"]
      904 DUPTABLE                         R36 K163 [{["assetType"], ["id"], ["isIncluded"] = True}]
      905 GETIMPORT                        R37 K138 [Enum.AssetType.RightLeg]
      907 GETTABLEKS                       R37 R37 K71 ["Value"]
      909 SETTABLEKS                       R37 R36 K62 ["assetType"]
      911 GETTABLEKS                       R38 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      913 GETTABLEN                        R37 R38 6
      914 SETTABLEKS                       R37 R36 K65 ["id"]
      916 SETLIST                          R30 R31 6 [1]
      918 SETTABLEKS                       R30 R29 K160 ["assetsInBundle"]
      920 SETTABLE                         R29 R27 R28
      921 SETTABLEKS                       R27 R26 K164 ["MOCK_AVATAR_LOOK_BUNDLE_DATA"]
      923 DUPCLOSURE                       R27 K165 [PROTO_0]
      924 CAPTURE                          VAL R0
      925 SETTABLEKS                       R27 R26 K166 ["findTextInCoreGui"]
      927 DUPCLOSURE                       R27 K167 [PROTO_1]
      928 CAPTURE                          VAL R26
      929 SETTABLEKS                       R27 R26 K168 ["isConfirmItemsStage"]
      931 DUPCLOSURE                       R27 K169 [PROTO_2]
      932 CAPTURE                          VAL R26
      933 SETTABLEKS                       R27 R26 K170 ["isEditInfoStage"]
      935 DUPCLOSURE                       R27 K171 [PROTO_3]
      936 CAPTURE                          VAL R26
      937 SETTABLEKS                       R27 R26 K172 ["isFailureStage"]
      939 DUPCLOSURE                       R27 K173 [PROTO_4]
      940 CAPTURE                          VAL R26
      941 SETTABLEKS                       R27 R26 K174 ["isSuccessStage"]
      943 GETIMPORT                        R27 K177 [UDim2.fromOffset]
      945 LOADN                            R28 40
      946 LOADN                            R29 40
      947 CALL                             R27 2 1
      948 GETIMPORT                        R28 K177 [UDim2.fromOffset]
      950 LOADN                            R29 400
      951 LOADN                            R30 600
      952 CALL                             R28 2 1
      953 DUPCLOSURE                       R29 K178 [PROTO_5]
      954 CAPTURE                          VAL R28
      955 DUPCLOSURE                       R30 K179 [PROTO_6]
      956 DUPCLOSURE                       R31 K180 [PROTO_8]
      957 CAPTURE                          VAL R0
      958 CAPTURE                          VAL R27
      959 CAPTURE                          VAL R6
      960 CAPTURE                          VAL R7
      961 SETTABLEKS                       R31 R26 K181 ["clickContinueButton"]
      963 DUPCLOSURE                       R31 K182 [PROTO_10]
      964 CAPTURE                          VAL R0
      965 CAPTURE                          VAL R27
      966 CAPTURE                          VAL R6
      967 CAPTURE                          VAL R7
      968 SETTABLEKS                       R31 R26 K183 ["clickBackButton"]
      970 DUPCLOSURE                       R31 K184 [PROTO_13]
      971 CAPTURE                          VAL R0
      972 CAPTURE                          VAL R7
      973 CAPTURE                          VAL R28
      974 CAPTURE                          VAL R29
      975 CAPTURE                          VAL R27
      976 CAPTURE                          VAL R6
      977 SETTABLEKS                       R31 R26 K185 ["changeCreator"]
      979 DUPCLOSURE                       R31 K186 [PROTO_15]
      980 CAPTURE                          VAL R26
      981 CAPTURE                          VAL R0
      982 CAPTURE                          VAL R7
      983 CAPTURE                          VAL R29
      984 CAPTURE                          VAL R27
      985 CAPTURE                          VAL R6
      986 SETTABLEKS                       R31 R26 K187 ["toggleItem"]
      988 DUPCLOSURE                       R31 K188 [PROTO_16]
      989 CAPTURE                          VAL R0
      990 CAPTURE                          VAL R29
      991 CAPTURE                          VAL R27
      992 CAPTURE                          VAL R7
      993 SETTABLEKS                       R31 R26 K189 ["changeColor"]
      995 DUPCLOSURE                       R31 K190 [PROTO_20]
      996 CAPTURE                          VAL R26
      997 CAPTURE                          VAL R0
      998 CAPTURE                          VAL R6
      999 CAPTURE                          VAL R27
     1000 CAPTURE                          VAL R7
     1001 SETTABLEKS                       R31 R26 K191 ["enterName"]
     1003 DUPCLOSURE                       R31 K192 [PROTO_21]
     1004 CAPTURE                          VAL R26
     1005 SETTABLEKS                       R31 R26 K193 ["checkErrorBannerText"]
     1007 DUPCLOSURE                       R31 K194 [PROTO_22]
     1008 CAPTURE                          VAL R7
     1009 CAPTURE                          VAL R0
     1010 SETTABLEKS                       R31 R26 K195 ["queryErrorBannerCloseButton"]
     1012 DUPCLOSURE                       R31 K196 [PROTO_24]
     1013 CAPTURE                          VAL R26
     1014 CAPTURE                          VAL R29
     1015 CAPTURE                          VAL R0
     1016 CAPTURE                          VAL R27
     1017 CAPTURE                          VAL R6
     1018 CAPTURE                          VAL R7
     1019 SETTABLEKS                       R31 R26 K197 ["clickErrorBannerDismiss"]
     1021 DUPCLOSURE                       R31 K198 [PROTO_26]
     1022 CAPTURE                          VAL R0
     1023 CAPTURE                          VAL R27
     1024 CAPTURE                          VAL R6
     1025 CAPTURE                          VAL R7
     1026 SETTABLEKS                       R31 R26 K199 ["openErrorDialog"]
     1028 DUPCLOSURE                       R31 K200 [PROTO_27]
     1029 CAPTURE                          VAL R26
     1030 SETTABLEKS                       R31 R26 K201 ["checkErrorDialogText"]
     1032 DUPCLOSURE                       R31 K202 [PROTO_28]
     1033 CAPTURE                          VAL R26
     1034 SETTABLEKS                       R31 R26 K203 ["isItemInDetailsList"]
     1036 DUPCLOSURE                       R31 K204 [PROTO_29]
     1037 CAPTURE                          VAL R26
     1038 CAPTURE                          VAL R14
     1039 SETTABLEKS                       R31 R26 K205 ["getUserEquippedItems"]
     1041 DUPCLOSURE                       R31 K206 [PROTO_30]
     1042 CAPTURE                          VAL R26
     1043 SETTABLEKS                       R31 R26 K207 ["getMixedCreatorMakeupLookEquippedItems"]
     1045 DUPCLOSURE                       R31 K208 [PROTO_31]
     1046 CAPTURE                          VAL R26
     1047 CAPTURE                          VAL R14
     1048 SETTABLEKS                       R31 R26 K209 ["getGroupEquippedItems"]
     1050 DUPCLOSURE                       R31 K210 [PROTO_32]
     1051 CAPTURE                          VAL R26
     1052 CAPTURE                          VAL R12
     1053 CAPTURE                          VAL R15
     1054 CAPTURE                          VAL R9
     1055 SETTABLEKS                       R31 R26 K211 ["getExpectedLook"]
     1057 LOADNIL                          R31
     1058 SETTABLEKS                       R31 R26 K212 ["lookCreationInfo"]
     1060 DUPCLOSURE                       R31 K213 [PROTO_33]
     1061 CAPTURE                          VAL R26
     1062 DUPCLOSURE                       R32 K214 [PROTO_35]
     1063 CAPTURE                          VAL R8
     1064 CAPTURE                          VAL R1
     1065 CAPTURE                          VAL R11
     1066 CAPTURE                          VAL R26
     1067 CAPTURE                          VAL R13
     1068 DUPCLOSURE                       R33 K215 [PROTO_37]
     1069 CAPTURE                          VAL R8
     1070 CAPTURE                          VAL R1
     1071 CAPTURE                          VAL R11
     1072 CAPTURE                          VAL R26
     1073 CAPTURE                          VAL R32
     1074 DUPCLOSURE                       R34 K216 [PROTO_39]
     1075 CAPTURE                          VAL R8
     1076 DUPCLOSURE                       R35 K217 [PROTO_41]
     1077 CAPTURE                          VAL R8
     1078 CAPTURE                          VAL R1
     1079 CAPTURE                          VAL R11
     1080 CAPTURE                          VAL R26
     1081 CAPTURE                          VAL R32
     1082 DUPCLOSURE                       R36 K218 [PROTO_43]
     1083 CAPTURE                          VAL R8
     1084 CAPTURE                          VAL R11
     1085 CAPTURE                          VAL R1
     1086 CAPTURE                          VAL R26
     1087 CAPTURE                          VAL R32
     1088 DUPCLOSURE                       R37 K219 [PROTO_44]
     1089 CAPTURE                          VAL R13
     1090 CAPTURE                          VAL R33
     1091 CAPTURE                          VAL R34
     1092 CAPTURE                          VAL R35
     1093 CAPTURE                          VAL R36
     1094 CAPTURE                          VAL R32
     1095 SETTABLEKS                       R37 R26 K220 ["createMockLookComposerRequestInternal"]
     1097 DUPCLOSURE                       R37 K221 [PROTO_47]
     1098 CAPTURE                          VAL R0
     1099 CAPTURE                          VAL R23
     1100 CAPTURE                          VAL R5
     1101 CAPTURE                          VAL R3
     1102 CAPTURE                          VAL R22
     1103 CAPTURE                          VAL R18
     1104 CAPTURE                          VAL R24
     1105 CAPTURE                          VAL R21
     1106 CAPTURE                          VAL R25
     1107 CAPTURE                          VAL R6
     1108 CAPTURE                          VAL R7
     1109 SETTABLEKS                       R37 R26 K222 ["createLookComposerDialogTest"]
     1111 DUPCLOSURE                       R37 K223 [PROTO_51]
     1112 CAPTURE                          VAL R26
     1113 CAPTURE                          VAL R16
     1114 CAPTURE                          VAL R5
     1115 CAPTURE                          VAL R17
     1116 CAPTURE                          VAL R19
     1117 CAPTURE                          VAL R20
     1118 SETTABLEKS                       R37 R26 K224 ["lookCreationTest"]
     1120 DUPCLOSURE                       R37 K225 [PROTO_55]
     1121 CAPTURE                          VAL R26
     1122 CAPTURE                          VAL R16
     1123 CAPTURE                          VAL R5
     1124 CAPTURE                          VAL R17
     1125 CAPTURE                          VAL R19
     1126 CAPTURE                          VAL R20
     1127 SETTABLEKS                       R37 R26 K226 ["lookCreationStartFromAssetIdTest"]
     1129 DUPCLOSURE                       R37 K227 [PROTO_57]
     1130 CAPTURE                          VAL R0
     1131 CAPTURE                          VAL R29
     1132 CAPTURE                          VAL R27
     1133 CAPTURE                          VAL R6
     1134 CAPTURE                          VAL R7
     1135 SETTABLEKS                       R37 R26 K228 ["clickAddAssetIdButton"]
     1137 DUPCLOSURE                       R37 K229 [PROTO_60]
     1138 CAPTURE                          VAL R0
     1139 CAPTURE                          VAL R7
     1140 CAPTURE                          VAL R6
     1141 SETTABLEKS                       R37 R26 K230 ["openAssetImportDialog"]
     1143 DUPCLOSURE                       R37 K231 [PROTO_64]
     1144 CAPTURE                          VAL R0
     1145 CAPTURE                          VAL R6
     1146 CAPTURE                          VAL R27
     1147 CAPTURE                          VAL R7
     1148 SETTABLEKS                       R37 R26 K232 ["addAssetIdsToImportDialog"]
     1150 DUPCLOSURE                       R37 K233 [PROTO_66]
     1151 CAPTURE                          VAL R0
     1152 CAPTURE                          VAL R27
     1153 CAPTURE                          VAL R6
     1154 CAPTURE                          VAL R7
     1155 SETTABLEKS                       R37 R26 K234 ["clickAddItemsButtonImportDialog"]
     1157 DUPCLOSURE                       R37 K235 [PROTO_69]
     1158 CAPTURE                          VAL R0
     1159 CAPTURE                          VAL R7
     1160 CAPTURE                          VAL R6
     1161 SETTABLEKS                       R37 R26 K236 ["openLookComposerDialog"]
     1163 DUPCLOSURE                       R37 K237 [PROTO_70]
     1164 CAPTURE                          VAL R26
     1165 SETTABLEKS                       R37 R26 K238 ["importMarketplaceItems"]
     1167 RETURN                           R26 1
