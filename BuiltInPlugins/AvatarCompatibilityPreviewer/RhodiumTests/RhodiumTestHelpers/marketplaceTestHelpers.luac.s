PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [tostring]
        5 CALL                             R3 1 1
        6 CONCAT                           R1 R2 R3
        7 RETURN                           R1 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findTextInCoreGui"]
        3 LOADK                            R1 K1 ["LookComposerDialog.LookDetails"]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findTextInCoreGui"]
        3 LOADK                            R1 K1 ["LookComposerDialog.Name"]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findTextInCoreGui"]
        3 LOADK                            R1 K1 ["LookComposerDialog.CreateLookFailedTitle"]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findTextInCoreGui"]
        3 LOADK                            R1 K1 ["Studio.Test.LookComposerDialog.CreateLookSuccessTitle"]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Size"]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETUPVAL                         R1 0
        8 LOADK                            R2 K2 ["clickWithoutValidation"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findTextInCoreGui"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["within"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R0 R0 K1 ["queryByTestId"]
        7 LOADK                            R1 K2 ["--foundation-system-banner--close"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findTextInCoreGui"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findTextInCoreGui"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MOCK_ITEM_DATA"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
        9 GETTABLE                         R2 R3 R0
       10 RETURN                           R2 1

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 MOVE                             R2 R1
        1 CALL                             R2 0 -1
        2 RETURN                           R2 -1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPCLOSURE                       R2 K1 [PROTO_39]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["render"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_52:
        0 DUPTABLE                         R1 K2 [{"getBatchAssetDetailsAsync", "getBatchBundleDetailsAsync"}]
        1 DUPCLOSURE                       R2 K3 [PROTO_49]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R2 R1 K0 ["getBatchAssetDetailsAsync"]
        5 DUPCLOSURE                       R2 K4 [PROTO_50]
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_56:
        0 DUPTABLE                         R1 K2 [{"getBatchAssetDetailsAsync", "getBatchBundleDetailsAsync"}]
        1 DUPCLOSURE                       R2 K3 [PROTO_53]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R2 R1 K0 ["getBatchAssetDetailsAsync"]
        5 DUPCLOSURE                       R2 K4 [PROTO_54]
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

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["clickWithoutValidation"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_58:
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

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 10000
        2 SETTABLEKS                       R1 R0 K0 ["ZIndex"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R0 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_61:
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

PROTO_62:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Size"]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R0 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_63:
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

PROTO_64:
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

PROTO_65:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ItemIdInput"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+5]
        8 GETIMPORT                        R2 K3 [error]
       10 LOADK                            R3 K4 ["ItemIdInput not found"]
       11 CALL                             R2 1 0
       12 LOADK                            R4 K5 ["TextBox"]
       13 LOADB                            R5 1
       14 NAMECALL                         R2 R1 K6 ["FindFirstChildWhichIsA"]
       16 CALL                             R2 3 1
       17 JUMPIFNOTEQKNIL                  R2 ; [+5]
       19 GETIMPORT                        R3 K3 [error]
       21 LOADK                            R4 K7 ["TextBox not found inside ItemIdInput"]
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K8 ["act"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CALL                             R3 1 0
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K8 ["act"]
       34 NEWCLOSURE                       R4 P1
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 CALL                             R3 1 0
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R3 R3 K8 ["act"]
       42 NEWCLOSURE                       R4 P2
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R2
       45 CALL                             R3 1 0
       46 RETURN                           R0 0

PROTO_66:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_67:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_66]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["enterTextInImportDialog"]
        9 GETIMPORT                        R3 K5 [table.concat]
       11 MOVE                             R4 R1
       12 LOADK                            R5 K6 [","]
       13 CALL                             R3 2 -1
       14 CALL                             R2 -1 0
       15 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["openAssetImportDialog"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["addAssetIdsToImportDialog"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["queryByTestId"]
        7 LOADK                            R3 K2 ["import-item-price-%*"]
        8 MOVE                             R5 R0
        9 NAMECALL                         R3 R3 K3 ["format"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 CALL                             R1 1 1
       14 JUMPIFEQKNIL                     R1 ; [+9]
       16 LOADK                            R5 K4 ["TextLabel"]
       17 NAMECALL                         R3 R1 K5 ["IsA"]
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+3]
       21 GETTABLEKS                       R2 R1 K6 ["Text"]
       23 RETURN                           R2 1
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_70:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 RETURN                           R1 1

PROTO_71:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["within"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R0 R0 K1 ["queryAllByTestId"]
        7 LOADK                            R1 K2 ["import-item-name"]
        8 CALL                             R0 1 1
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K3 ["map"]
       12 MOVE                             R2 R0
       13 DUPCLOSURE                       R3 K4 [PROTO_70]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_72:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 LOADK                            R5 K0 ["No mock asset details for id %*"]
        7 MOVE                             R7 R0
        8 NAMECALL                         R5 R5 K1 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 FASTCALL2                        ASSERT R3 R4 ; [+3]
       14 GETIMPORT                        R2 K3 [assert]
       16 CALL                             R2 2 0
       17 GETTABLEKS                       R2 R1 K4 ["Name"]
       19 RETURN                           R2 1

PROTO_73:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["checkErrorBannerText"]
        3 LOADK                            R1 K1 ["MarketplaceImport.NothingFoundError"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_74:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findTextInCoreGui"]
        3 LOADK                            R2 K1 ["MarketplaceImport.NothingFoundError"]
        4 CALL                             R1 1 1
        5 JUMPIFEQKNIL                     R1 ; [+6]
        7 LOADK                            R4 K2 ["TextLabel"]
        8 NAMECALL                         R2 R1 K3 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+2]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 MOVE                             R2 R0
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 GETIMPORT                        R7 K6 [string.find]
       20 GETTABLEKS                       R8 R1 K7 ["Text"]
       22 FASTCALL1                        TOSTRING R6 ; [+3]
       23 MOVE                             R10 R6
       24 GETIMPORT                        R9 K9 [tostring]
       26 CALL                             R9 1 1
       27 LOADN                            R10 1
       28 LOADB                            R11 1
       29 CALL                             R7 4 1
       30 JUMPIFNOTEQKNIL                  R7 ; [+3]
       32 LOADB                            R8 0
       33 RETURN                           R8 1
       34 FORGLOOP                         R2 2 ; [-17]
       36 LOADB                            R2 1
       37 RETURN                           R2 1

PROTO_75:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_76:
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

PROTO_77:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 10000
        2 SETTABLEKS                       R1 R0 K0 ["ZIndex"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R0 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_79:
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

PROTO_80:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["loadItemsIntoImportDialog"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["clickAddItemsButtonImportDialog"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

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
      263 DUPTABLE                         R27 K76 [{["price"] = 50, ["priceStatus"] = "Free", ["priceBehindStatus"] = 1500, ["priceBehindOffSale"] = 1600, ["lowestPrice"] = 100, ["priceBehindLowestPrice"] = 1700, ["avatarLookAssetPrice"] = 75, ["bundlePrice"] = 30}]
      264 SETTABLEKS                       R27 R26 K77 ["MOCK_ITEM_PRICES"]
      266 LOADK                            R27 K78 ["Studio.Test.MarketplaceImport.OffSale:[]"]
      267 SETTABLEKS                       R27 R26 K79 ["OFF_SALE_TEXT"]
      269 GETIMPORT                        R27 K82 [utf8.char]
      271 LOADK                            R28 K83 [57346]
      272 CALL                             R27 1 1
      273 DUPCLOSURE                       R28 K84 [PROTO_0]
      274 CAPTURE                          VAL R27
      275 SETTABLEKS                       R28 R26 K85 ["robuxPriceText"]
      277 NEWTABLE                         R28 16 0
      279 GETTABLEKS                       R30 R26 K55 ["USER_ASSET_IDS"]
      281 GETTABLEN                        R29 R30 1
      282 DUPTABLE                         R30 K92 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Eyebrows", ["id"]}]
      283 GETIMPORT                        R31 K96 [Enum.AssetType.EyebrowAccessory]
      285 GETTABLEKS                       R31 R31 K97 ["Value"]
      287 SETTABLEKS                       R31 R30 K88 ["assetType"]
      289 GETTABLEKS                       R32 R26 K55 ["USER_ASSET_IDS"]
      291 GETTABLEN                        R31 R32 1
      292 SETTABLEKS                       R31 R30 K91 ["id"]
      294 SETTABLE                         R30 R28 R29
      295 GETTABLEKS                       R30 R26 K55 ["USER_ASSET_IDS"]
      297 GETTABLEN                        R29 R30 2
      298 DUPTABLE                         R30 K99 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Eyelashes", ["id"]}]
      299 GETIMPORT                        R31 K101 [Enum.AssetType.EyelashAccessory]
      301 GETTABLEKS                       R31 R31 K97 ["Value"]
      303 SETTABLEKS                       R31 R30 K88 ["assetType"]
      305 GETTABLEKS                       R32 R26 K55 ["USER_ASSET_IDS"]
      307 GETTABLEN                        R31 R32 2
      308 SETTABLEKS                       R31 R30 K91 ["id"]
      310 SETTABLE                         R30 R28 R29
      311 GETTABLEKS                       R30 R26 K55 ["USER_ASSET_IDS"]
      313 GETTABLEN                        R29 R30 3
      314 DUPTABLE                         R30 K103 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "FaceMakeup", ["id"]}]
      315 GETIMPORT                        R31 K104 [Enum.AssetType.FaceMakeup]
      317 GETTABLEKS                       R31 R31 K97 ["Value"]
      319 SETTABLEKS                       R31 R30 K88 ["assetType"]
      321 GETTABLEKS                       R32 R26 K55 ["USER_ASSET_IDS"]
      323 GETTABLEN                        R31 R32 3
      324 SETTABLEKS                       R31 R30 K91 ["id"]
      326 SETTABLE                         R30 R28 R29
      327 GETTABLEKS                       R30 R26 K55 ["USER_ASSET_IDS"]
      329 GETTABLEN                        R29 R30 4
      330 DUPTABLE                         R30 K106 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LipMakeup", ["id"]}]
      331 GETIMPORT                        R31 K107 [Enum.AssetType.LipMakeup]
      333 GETTABLEKS                       R31 R31 K97 ["Value"]
      335 SETTABLEKS                       R31 R30 K88 ["assetType"]
      337 GETTABLEKS                       R32 R26 K55 ["USER_ASSET_IDS"]
      339 GETTABLEN                        R31 R32 4
      340 SETTABLEKS                       R31 R30 K91 ["id"]
      342 SETTABLE                         R30 R28 R29
      343 GETTABLEKS                       R30 R26 K55 ["USER_ASSET_IDS"]
      345 GETTABLEN                        R29 R30 5
      346 DUPTABLE                         R30 K109 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "EyeMakeup", ["id"]}]
      347 GETIMPORT                        R31 K110 [Enum.AssetType.EyeMakeup]
      349 GETTABLEKS                       R31 R31 K97 ["Value"]
      351 SETTABLEKS                       R31 R30 K88 ["assetType"]
      353 GETTABLEKS                       R32 R26 K55 ["USER_ASSET_IDS"]
      355 GETTABLEN                        R31 R32 5
      356 SETTABLEKS                       R31 R30 K91 ["id"]
      358 SETTABLE                         R30 R28 R29
      359 GETTABLEKS                       R30 R26 K56 ["GROUP_ASSET_IDS"]
      361 GETTABLEN                        R29 R30 1
      362 DUPTABLE                         R30 K112 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "Eyebrows", ["id"]}]
      363 GETIMPORT                        R31 K96 [Enum.AssetType.EyebrowAccessory]
      365 GETTABLEKS                       R31 R31 K97 ["Value"]
      367 SETTABLEKS                       R31 R30 K88 ["assetType"]
      369 GETTABLEKS                       R32 R26 K56 ["GROUP_ASSET_IDS"]
      371 GETTABLEN                        R31 R32 1
      372 SETTABLEKS                       R31 R30 K91 ["id"]
      374 SETTABLE                         R30 R28 R29
      375 GETTABLEKS                       R30 R26 K56 ["GROUP_ASSET_IDS"]
      377 GETTABLEN                        R29 R30 2
      378 DUPTABLE                         R30 K113 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "Eyelashes", ["id"]}]
      379 GETIMPORT                        R31 K101 [Enum.AssetType.EyelashAccessory]
      381 GETTABLEKS                       R31 R31 K97 ["Value"]
      383 SETTABLEKS                       R31 R30 K88 ["assetType"]
      385 GETTABLEKS                       R32 R26 K56 ["GROUP_ASSET_IDS"]
      387 GETTABLEN                        R31 R32 2
      388 SETTABLEKS                       R31 R30 K91 ["id"]
      390 SETTABLE                         R30 R28 R29
      391 GETTABLEKS                       R30 R26 K56 ["GROUP_ASSET_IDS"]
      393 GETTABLEN                        R29 R30 3
      394 DUPTABLE                         R30 K114 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "FaceMakeup", ["id"]}]
      395 GETIMPORT                        R31 K104 [Enum.AssetType.FaceMakeup]
      397 GETTABLEKS                       R31 R31 K97 ["Value"]
      399 SETTABLEKS                       R31 R30 K88 ["assetType"]
      401 GETTABLEKS                       R32 R26 K56 ["GROUP_ASSET_IDS"]
      403 GETTABLEN                        R31 R32 3
      404 SETTABLEKS                       R31 R30 K91 ["id"]
      406 SETTABLE                         R30 R28 R29
      407 GETTABLEKS                       R30 R26 K56 ["GROUP_ASSET_IDS"]
      409 GETTABLEN                        R29 R30 4
      410 DUPTABLE                         R30 K115 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "EyeMakeup", ["id"]}]
      411 GETIMPORT                        R31 K107 [Enum.AssetType.LipMakeup]
      413 GETTABLEKS                       R31 R31 K97 ["Value"]
      415 SETTABLEKS                       R31 R30 K88 ["assetType"]
      417 GETTABLEKS                       R32 R26 K56 ["GROUP_ASSET_IDS"]
      419 GETTABLEN                        R31 R32 4
      420 SETTABLEKS                       R31 R30 K91 ["id"]
      422 SETTABLE                         R30 R28 R29
      423 GETTABLEKS                       R30 R26 K56 ["GROUP_ASSET_IDS"]
      425 GETTABLEN                        R29 R30 5
      426 DUPTABLE                         R30 K116 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "LipMakeup", ["id"]}]
      427 GETIMPORT                        R31 K110 [Enum.AssetType.EyeMakeup]
      429 GETTABLEKS                       R31 R31 K97 ["Value"]
      431 SETTABLEKS                       R31 R30 K88 ["assetType"]
      433 GETTABLEKS                       R32 R26 K56 ["GROUP_ASSET_IDS"]
      435 GETTABLEN                        R31 R32 5
      436 SETTABLEKS                       R31 R30 K91 ["id"]
      438 SETTABLE                         R30 R28 R29
      439 SETTABLEKS                       R28 R26 K117 ["MOCK_ITEM_DATA"]
      441 NEWTABLE                         R28 16 0
      443 GETTABLEKS                       R30 R26 K55 ["USER_ASSET_IDS"]
      445 GETTABLEN                        R29 R30 1
      446 DUPTABLE                         R30 K129 [{["Id"], ["Name"] = "User Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["Price"]}]
      447 GETTABLEKS                       R32 R26 K55 ["USER_ASSET_IDS"]
      449 GETTABLEN                        R31 R32 1
      450 SETTABLEKS                       R31 R30 K118 ["Id"]
      452 GETIMPORT                        R31 K96 [Enum.AssetType.EyebrowAccessory]
      454 GETTABLEKS                       R31 R31 K119 ["Name"]
      456 SETTABLEKS                       R31 R30 K94 ["AssetType"]
      458 GETTABLEKS                       R31 R26 K77 ["MOCK_ITEM_PRICES"]
      460 GETTABLEKS                       R31 R31 K60 ["price"]
      462 SETTABLEKS                       R31 R30 K128 ["Price"]
      464 SETTABLE                         R30 R28 R29
      465 GETTABLEKS                       R30 R26 K55 ["USER_ASSET_IDS"]
      467 GETTABLEN                        R29 R30 2
      468 DUPTABLE                         R30 K132 [{["Id"], ["Name"] = "User Asset 2", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["PriceStatus"], ["Price"]}]
      469 GETTABLEKS                       R32 R26 K55 ["USER_ASSET_IDS"]
      471 GETTABLEN                        R31 R32 2
      472 SETTABLEKS                       R31 R30 K118 ["Id"]
      474 GETIMPORT                        R31 K101 [Enum.AssetType.EyelashAccessory]
      476 GETTABLEKS                       R31 R31 K119 ["Name"]
      478 SETTABLEKS                       R31 R30 K94 ["AssetType"]
      480 GETTABLEKS                       R31 R26 K77 ["MOCK_ITEM_PRICES"]
      482 GETTABLEKS                       R31 R31 K62 ["priceStatus"]
      484 SETTABLEKS                       R31 R30 K131 ["PriceStatus"]
      486 GETTABLEKS                       R31 R26 K77 ["MOCK_ITEM_PRICES"]
      488 GETTABLEKS                       R31 R31 K64 ["priceBehindStatus"]
      490 SETTABLEKS                       R31 R30 K128 ["Price"]
      492 SETTABLE                         R30 R28 R29
      493 GETTABLEKS                       R30 R26 K55 ["USER_ASSET_IDS"]
      495 GETTABLEN                        R29 R30 3
      496 DUPTABLE                         R30 K136 [{["Id"], ["Name"] = "User Asset 3", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["SaleLocationType"] = "NotApplicable", ["Price"]}]
      497 GETTABLEKS                       R32 R26 K55 ["USER_ASSET_IDS"]
      499 GETTABLEN                        R31 R32 3
      500 SETTABLEKS                       R31 R30 K118 ["Id"]
      502 GETIMPORT                        R31 K104 [Enum.AssetType.FaceMakeup]
      504 GETTABLEKS                       R31 R31 K119 ["Name"]
      506 SETTABLEKS                       R31 R30 K94 ["AssetType"]
      508 GETTABLEKS                       R31 R26 K77 ["MOCK_ITEM_PRICES"]
      510 GETTABLEKS                       R31 R31 K66 ["priceBehindOffSale"]
      512 SETTABLEKS                       R31 R30 K128 ["Price"]
      514 SETTABLE                         R30 R28 R29
      515 GETTABLEKS                       R30 R26 K55 ["USER_ASSET_IDS"]
      517 GETTABLEN                        R29 R30 4
      518 DUPTABLE                         R30 K139 [{["Id"], ["Name"] = "User Asset 4", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["LowestPrice"], ["Price"]}]
      519 GETTABLEKS                       R32 R26 K55 ["USER_ASSET_IDS"]
      521 GETTABLEN                        R31 R32 4
      522 SETTABLEKS                       R31 R30 K118 ["Id"]
      524 GETIMPORT                        R31 K107 [Enum.AssetType.LipMakeup]
      526 GETTABLEKS                       R31 R31 K119 ["Name"]
      528 SETTABLEKS                       R31 R30 K94 ["AssetType"]
      530 GETTABLEKS                       R31 R26 K77 ["MOCK_ITEM_PRICES"]
      532 GETTABLEKS                       R31 R31 K68 ["lowestPrice"]
      534 SETTABLEKS                       R31 R30 K138 ["LowestPrice"]
      536 GETTABLEKS                       R31 R26 K77 ["MOCK_ITEM_PRICES"]
      538 GETTABLEKS                       R31 R31 K70 ["priceBehindLowestPrice"]
      540 SETTABLEKS                       R31 R30 K128 ["Price"]
      542 SETTABLE                         R30 R28 R29
      543 GETTABLEKS                       R30 R26 K55 ["USER_ASSET_IDS"]
      545 GETTABLEN                        R29 R30 5
      546 DUPTABLE                         R30 K141 [{["Id"], ["Name"] = "User Asset 5", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      547 GETTABLEKS                       R32 R26 K55 ["USER_ASSET_IDS"]
      549 GETTABLEN                        R31 R32 5
      550 SETTABLEKS                       R31 R30 K118 ["Id"]
      552 GETIMPORT                        R31 K110 [Enum.AssetType.EyeMakeup]
      554 GETTABLEKS                       R31 R31 K119 ["Name"]
      556 SETTABLEKS                       R31 R30 K94 ["AssetType"]
      558 SETTABLE                         R30 R28 R29
      559 GETTABLEKS                       R29 R26 K57 ["AVATAR_LOOK_ASSET_ID"]
      561 DUPTABLE                         R30 K143 [{["Id"], ["Name"] = "Avatar Look Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["Price"]}]
      562 GETTABLEKS                       R31 R26 K57 ["AVATAR_LOOK_ASSET_ID"]
      564 SETTABLEKS                       R31 R30 K118 ["Id"]
      566 GETIMPORT                        R31 K145 [Enum.AssetType.ShirtAccessory]
      568 GETTABLEKS                       R31 R31 K119 ["Name"]
      570 SETTABLEKS                       R31 R30 K94 ["AssetType"]
      572 GETTABLEKS                       R31 R26 K77 ["MOCK_ITEM_PRICES"]
      574 GETTABLEKS                       R31 R31 K72 ["avatarLookAssetPrice"]
      576 SETTABLEKS                       R31 R30 K128 ["Price"]
      578 SETTABLE                         R30 R28 R29
      579 GETTABLEKS                       R30 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      581 GETTABLEN                        R29 R30 1
      582 DUPTABLE                         R30 K147 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      583 GETTABLEKS                       R32 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      585 GETTABLEN                        R31 R32 1
      586 SETTABLEKS                       R31 R30 K118 ["Id"]
      588 GETIMPORT                        R31 K149 [Enum.AssetType.DynamicHead]
      590 GETTABLEKS                       R31 R31 K119 ["Name"]
      592 SETTABLEKS                       R31 R30 K94 ["AssetType"]
      594 SETTABLE                         R30 R28 R29
      595 GETTABLEKS                       R30 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      597 GETTABLEN                        R29 R30 2
      598 DUPTABLE                         R30 K151 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 2", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      599 GETTABLEKS                       R32 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      601 GETTABLEN                        R31 R32 2
      602 SETTABLEKS                       R31 R30 K118 ["Id"]
      604 GETIMPORT                        R31 K153 [Enum.AssetType.Torso]
      606 GETTABLEKS                       R31 R31 K119 ["Name"]
      608 SETTABLEKS                       R31 R30 K94 ["AssetType"]
      610 SETTABLE                         R30 R28 R29
      611 GETTABLEKS                       R30 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      613 GETTABLEN                        R29 R30 3
      614 DUPTABLE                         R30 K155 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 3", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      615 GETTABLEKS                       R32 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      617 GETTABLEN                        R31 R32 3
      618 SETTABLEKS                       R31 R30 K118 ["Id"]
      620 GETIMPORT                        R31 K157 [Enum.AssetType.LeftArm]
      622 GETTABLEKS                       R31 R31 K119 ["Name"]
      624 SETTABLEKS                       R31 R30 K94 ["AssetType"]
      626 SETTABLE                         R30 R28 R29
      627 GETTABLEKS                       R30 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      629 GETTABLEN                        R29 R30 4
      630 DUPTABLE                         R30 K159 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 4", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      631 GETTABLEKS                       R32 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      633 GETTABLEN                        R31 R32 4
      634 SETTABLEKS                       R31 R30 K118 ["Id"]
      636 GETIMPORT                        R31 K161 [Enum.AssetType.LeftLeg]
      638 GETTABLEKS                       R31 R31 K119 ["Name"]
      640 SETTABLEKS                       R31 R30 K94 ["AssetType"]
      642 SETTABLE                         R30 R28 R29
      643 GETTABLEKS                       R30 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      645 GETTABLEN                        R29 R30 5
      646 DUPTABLE                         R30 K163 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 5", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      647 GETTABLEKS                       R32 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      649 GETTABLEN                        R31 R32 5
      650 SETTABLEKS                       R31 R30 K118 ["Id"]
      652 GETIMPORT                        R31 K165 [Enum.AssetType.RightArm]
      654 GETTABLEKS                       R31 R31 K119 ["Name"]
      656 SETTABLEKS                       R31 R30 K94 ["AssetType"]
      658 SETTABLE                         R30 R28 R29
      659 GETTABLEKS                       R30 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      661 GETTABLEN                        R29 R30 6
      662 DUPTABLE                         R30 K167 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 6", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      663 GETTABLEKS                       R32 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      665 GETTABLEN                        R31 R32 6
      666 SETTABLEKS                       R31 R30 K118 ["Id"]
      668 GETIMPORT                        R31 K169 [Enum.AssetType.RightLeg]
      670 GETTABLEKS                       R31 R31 K119 ["Name"]
      672 SETTABLEKS                       R31 R30 K94 ["AssetType"]
      674 SETTABLE                         R30 R28 R29
      675 SETTABLEKS                       R28 R26 K170 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
      677 NEWTABLE                         R29 1 0
      679 GETTABLEKS                       R30 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      681 DUPTABLE                         R31 K172 [{["Id"], ["Name"], ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["Price"], ["BundledItems"]}]
      682 GETTABLEKS                       R32 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      684 SETTABLEKS                       R32 R31 K118 ["Id"]
      686 LOADK                            R33 K173 ["Test Bundle"]
      687 GETTABLEKS                       R35 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      689 FASTCALL1                        TOSTRING R35 ; [+2]
      690 GETIMPORT                        R34 K175 [tostring]
      692 CALL                             R34 1 1
      693 CONCAT                           R32 R33 R34
      694 SETTABLEKS                       R32 R31 K119 ["Name"]
      696 GETTABLEKS                       R32 R26 K77 ["MOCK_ITEM_PRICES"]
      698 GETTABLEKS                       R32 R32 K74 ["bundlePrice"]
      700 SETTABLEKS                       R32 R31 K128 ["Price"]
      702 NEWTABLE                         R32 0 6
      704 DUPTABLE                         R33 K176 [{"Id"}]
      705 GETTABLEKS                       R35 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      707 GETTABLEN                        R34 R35 1
      708 SETTABLEKS                       R34 R33 K118 ["Id"]
      710 DUPTABLE                         R34 K176 [{"Id"}]
      711 GETTABLEKS                       R36 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      713 GETTABLEN                        R35 R36 2
      714 SETTABLEKS                       R35 R34 K118 ["Id"]
      716 DUPTABLE                         R35 K176 [{"Id"}]
      717 GETTABLEKS                       R37 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      719 GETTABLEN                        R36 R37 3
      720 SETTABLEKS                       R36 R35 K118 ["Id"]
      722 DUPTABLE                         R36 K176 [{"Id"}]
      723 GETTABLEKS                       R38 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      725 GETTABLEN                        R37 R38 4
      726 SETTABLEKS                       R37 R36 K118 ["Id"]
      728 DUPTABLE                         R37 K176 [{"Id"}]
      729 GETTABLEKS                       R39 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      731 GETTABLEN                        R38 R39 5
      732 SETTABLEKS                       R38 R37 K118 ["Id"]
      734 DUPTABLE                         R38 K176 [{"Id"}]
      735 GETTABLEKS                       R40 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      737 GETTABLEN                        R39 R40 6
      738 SETTABLEKS                       R39 R38 K118 ["Id"]
      740 SETLIST                          R32 R33 6 [1]
      742 SETTABLEKS                       R32 R31 K171 ["BundledItems"]
      744 SETTABLE                         R31 R29 R30
      745 SETTABLEKS                       R29 R26 K177 ["MOCK_AVATAR_EDITOR_SERVICE_BUNDLE_DETAILS"]
      747 NEWTABLE                         R29 8 0
      749 GETTABLEKS                       R30 R26 K57 ["AVATAR_LOOK_ASSET_ID"]
      751 DUPTABLE                         R31 K179 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Shirts", ["id"]}]
      752 GETIMPORT                        R32 K145 [Enum.AssetType.ShirtAccessory]
      754 GETTABLEKS                       R32 R32 K97 ["Value"]
      756 SETTABLEKS                       R32 R31 K88 ["assetType"]
      758 GETTABLEKS                       R32 R26 K57 ["AVATAR_LOOK_ASSET_ID"]
      760 SETTABLEKS                       R32 R31 K91 ["id"]
      762 SETTABLE                         R31 R29 R30
      763 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      765 GETTABLEN                        R30 R31 1
      766 DUPTABLE                         R31 K182 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "HeadBodyPart", ["id"], ["bundleId"]}]
      767 GETIMPORT                        R32 K149 [Enum.AssetType.DynamicHead]
      769 GETTABLEKS                       R32 R32 K97 ["Value"]
      771 SETTABLEKS                       R32 R31 K88 ["assetType"]
      773 GETTABLEKS                       R33 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      775 GETTABLEN                        R32 R33 1
      776 SETTABLEKS                       R32 R31 K91 ["id"]
      778 GETTABLEKS                       R32 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      780 SETTABLEKS                       R32 R31 K181 ["bundleId"]
      782 SETTABLE                         R31 R29 R30
      783 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      785 GETTABLEN                        R30 R31 2
      786 DUPTABLE                         R31 K183 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Torso", ["id"], ["bundleId"]}]
      787 GETIMPORT                        R32 K153 [Enum.AssetType.Torso]
      789 GETTABLEKS                       R32 R32 K97 ["Value"]
      791 SETTABLEKS                       R32 R31 K88 ["assetType"]
      793 GETTABLEKS                       R33 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      795 GETTABLEN                        R32 R33 2
      796 SETTABLEKS                       R32 R31 K91 ["id"]
      798 GETTABLEKS                       R32 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      800 SETTABLEKS                       R32 R31 K181 ["bundleId"]
      802 SETTABLE                         R31 R29 R30
      803 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      805 GETTABLEN                        R30 R31 3
      806 DUPTABLE                         R31 K184 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LeftArm", ["id"], ["bundleId"]}]
      807 GETIMPORT                        R32 K157 [Enum.AssetType.LeftArm]
      809 GETTABLEKS                       R32 R32 K97 ["Value"]
      811 SETTABLEKS                       R32 R31 K88 ["assetType"]
      813 GETTABLEKS                       R33 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      815 GETTABLEN                        R32 R33 3
      816 SETTABLEKS                       R32 R31 K91 ["id"]
      818 GETTABLEKS                       R32 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      820 SETTABLEKS                       R32 R31 K181 ["bundleId"]
      822 SETTABLE                         R31 R29 R30
      823 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      825 GETTABLEN                        R30 R31 4
      826 DUPTABLE                         R31 K185 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LeftLeg", ["id"], ["bundleId"]}]
      827 GETIMPORT                        R32 K161 [Enum.AssetType.LeftLeg]
      829 GETTABLEKS                       R32 R32 K97 ["Value"]
      831 SETTABLEKS                       R32 R31 K88 ["assetType"]
      833 GETTABLEKS                       R33 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      835 GETTABLEN                        R32 R33 4
      836 SETTABLEKS                       R32 R31 K91 ["id"]
      838 GETTABLEKS                       R32 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      840 SETTABLEKS                       R32 R31 K181 ["bundleId"]
      842 SETTABLE                         R31 R29 R30
      843 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      845 GETTABLEN                        R30 R31 5
      846 DUPTABLE                         R31 K186 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "RightArm", ["id"], ["bundleId"]}]
      847 GETIMPORT                        R32 K165 [Enum.AssetType.RightArm]
      849 GETTABLEKS                       R32 R32 K97 ["Value"]
      851 SETTABLEKS                       R32 R31 K88 ["assetType"]
      853 GETTABLEKS                       R33 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      855 GETTABLEN                        R32 R33 5
      856 SETTABLEKS                       R32 R31 K91 ["id"]
      858 GETTABLEKS                       R32 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      860 SETTABLEKS                       R32 R31 K181 ["bundleId"]
      862 SETTABLE                         R31 R29 R30
      863 GETTABLEKS                       R31 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      865 GETTABLEN                        R30 R31 6
      866 DUPTABLE                         R31 K187 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "RightLeg", ["id"], ["bundleId"]}]
      867 GETIMPORT                        R32 K169 [Enum.AssetType.RightLeg]
      869 GETTABLEKS                       R32 R32 K97 ["Value"]
      871 SETTABLEKS                       R32 R31 K88 ["assetType"]
      873 GETTABLEKS                       R33 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      875 GETTABLEN                        R32 R33 6
      876 SETTABLEKS                       R32 R31 K91 ["id"]
      878 GETTABLEKS                       R32 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      880 SETTABLEKS                       R32 R31 K181 ["bundleId"]
      882 SETTABLE                         R31 R29 R30
      883 SETTABLEKS                       R29 R26 K188 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
      885 NEWTABLE                         R29 1 0
      887 GETTABLEKS                       R30 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      889 DUPTABLE                         R31 K192 [{["id"], ["name"], ["bundleType"] = 1, ["creatorType"] = "User", ["assetsInBundle"]}]
      890 GETTABLEKS                       R32 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      892 SETTABLEKS                       R32 R31 K91 ["id"]
      894 LOADK                            R33 K173 ["Test Bundle"]
      895 GETTABLEKS                       R35 R26 K58 ["AVATAR_LOOK_BUNDLE_ID"]
      897 FASTCALL1                        TOSTRING R35 ; [+2]
      898 GETIMPORT                        R34 K175 [tostring]
      900 CALL                             R34 1 1
      901 CONCAT                           R32 R33 R34
      902 SETTABLEKS                       R32 R31 K189 ["name"]
      904 NEWTABLE                         R32 0 6
      906 DUPTABLE                         R33 K194 [{["assetType"], ["id"], ["isIncluded"] = True}]
      907 GETIMPORT                        R34 K149 [Enum.AssetType.DynamicHead]
      909 GETTABLEKS                       R34 R34 K97 ["Value"]
      911 SETTABLEKS                       R34 R33 K88 ["assetType"]
      913 GETTABLEKS                       R35 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      915 GETTABLEN                        R34 R35 1
      916 SETTABLEKS                       R34 R33 K91 ["id"]
      918 DUPTABLE                         R34 K194 [{["assetType"], ["id"], ["isIncluded"] = True}]
      919 GETIMPORT                        R35 K153 [Enum.AssetType.Torso]
      921 GETTABLEKS                       R35 R35 K97 ["Value"]
      923 SETTABLEKS                       R35 R34 K88 ["assetType"]
      925 GETTABLEKS                       R36 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      927 GETTABLEN                        R35 R36 2
      928 SETTABLEKS                       R35 R34 K91 ["id"]
      930 DUPTABLE                         R35 K194 [{["assetType"], ["id"], ["isIncluded"] = True}]
      931 GETIMPORT                        R36 K157 [Enum.AssetType.LeftArm]
      933 GETTABLEKS                       R36 R36 K97 ["Value"]
      935 SETTABLEKS                       R36 R35 K88 ["assetType"]
      937 GETTABLEKS                       R37 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      939 GETTABLEN                        R36 R37 3
      940 SETTABLEKS                       R36 R35 K91 ["id"]
      942 DUPTABLE                         R36 K194 [{["assetType"], ["id"], ["isIncluded"] = True}]
      943 GETIMPORT                        R37 K161 [Enum.AssetType.LeftLeg]
      945 GETTABLEKS                       R37 R37 K97 ["Value"]
      947 SETTABLEKS                       R37 R36 K88 ["assetType"]
      949 GETTABLEKS                       R38 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      951 GETTABLEN                        R37 R38 4
      952 SETTABLEKS                       R37 R36 K91 ["id"]
      954 DUPTABLE                         R37 K194 [{["assetType"], ["id"], ["isIncluded"] = True}]
      955 GETIMPORT                        R38 K165 [Enum.AssetType.RightArm]
      957 GETTABLEKS                       R38 R38 K97 ["Value"]
      959 SETTABLEKS                       R38 R37 K88 ["assetType"]
      961 GETTABLEKS                       R39 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      963 GETTABLEN                        R38 R39 5
      964 SETTABLEKS                       R38 R37 K91 ["id"]
      966 DUPTABLE                         R38 K194 [{["assetType"], ["id"], ["isIncluded"] = True}]
      967 GETIMPORT                        R39 K169 [Enum.AssetType.RightLeg]
      969 GETTABLEKS                       R39 R39 K97 ["Value"]
      971 SETTABLEKS                       R39 R38 K88 ["assetType"]
      973 GETTABLEKS                       R40 R26 K59 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      975 GETTABLEN                        R39 R40 6
      976 SETTABLEKS                       R39 R38 K91 ["id"]
      978 SETLIST                          R32 R33 6 [1]
      980 SETTABLEKS                       R32 R31 K191 ["assetsInBundle"]
      982 SETTABLE                         R31 R29 R30
      983 SETTABLEKS                       R29 R26 K195 ["MOCK_AVATAR_LOOK_BUNDLE_DATA"]
      985 DUPCLOSURE                       R29 K196 [PROTO_1]
      986 CAPTURE                          VAL R0
      987 SETTABLEKS                       R29 R26 K197 ["findTextInCoreGui"]
      989 DUPCLOSURE                       R29 K198 [PROTO_2]
      990 CAPTURE                          VAL R26
      991 SETTABLEKS                       R29 R26 K199 ["isConfirmItemsStage"]
      993 DUPCLOSURE                       R29 K200 [PROTO_3]
      994 CAPTURE                          VAL R26
      995 SETTABLEKS                       R29 R26 K201 ["isEditInfoStage"]
      997 DUPCLOSURE                       R29 K202 [PROTO_4]
      998 CAPTURE                          VAL R26
      999 SETTABLEKS                       R29 R26 K203 ["isFailureStage"]
     1001 DUPCLOSURE                       R29 K204 [PROTO_5]
     1002 CAPTURE                          VAL R26
     1003 SETTABLEKS                       R29 R26 K205 ["isSuccessStage"]
     1005 GETIMPORT                        R29 K208 [UDim2.fromOffset]
     1007 LOADN                            R30 40
     1008 LOADN                            R31 40
     1009 CALL                             R29 2 1
     1010 GETIMPORT                        R30 K208 [UDim2.fromOffset]
     1012 LOADN                            R31 400
     1013 LOADN                            R32 600
     1014 CALL                             R30 2 1
     1015 DUPCLOSURE                       R31 K209 [PROTO_6]
     1016 CAPTURE                          VAL R30
     1017 DUPCLOSURE                       R32 K210 [PROTO_7]
     1018 DUPCLOSURE                       R33 K211 [PROTO_9]
     1019 CAPTURE                          VAL R0
     1020 CAPTURE                          VAL R29
     1021 CAPTURE                          VAL R6
     1022 CAPTURE                          VAL R7
     1023 SETTABLEKS                       R33 R26 K212 ["clickContinueButton"]
     1025 DUPCLOSURE                       R33 K213 [PROTO_11]
     1026 CAPTURE                          VAL R0
     1027 CAPTURE                          VAL R29
     1028 CAPTURE                          VAL R6
     1029 CAPTURE                          VAL R7
     1030 SETTABLEKS                       R33 R26 K214 ["clickBackButton"]
     1032 DUPCLOSURE                       R33 K215 [PROTO_14]
     1033 CAPTURE                          VAL R0
     1034 CAPTURE                          VAL R7
     1035 CAPTURE                          VAL R30
     1036 CAPTURE                          VAL R31
     1037 CAPTURE                          VAL R29
     1038 CAPTURE                          VAL R6
     1039 SETTABLEKS                       R33 R26 K216 ["changeCreator"]
     1041 DUPCLOSURE                       R33 K217 [PROTO_16]
     1042 CAPTURE                          VAL R26
     1043 CAPTURE                          VAL R0
     1044 CAPTURE                          VAL R7
     1045 CAPTURE                          VAL R31
     1046 CAPTURE                          VAL R29
     1047 CAPTURE                          VAL R6
     1048 SETTABLEKS                       R33 R26 K218 ["toggleItem"]
     1050 DUPCLOSURE                       R33 K219 [PROTO_17]
     1051 CAPTURE                          VAL R0
     1052 CAPTURE                          VAL R31
     1053 CAPTURE                          VAL R29
     1054 CAPTURE                          VAL R7
     1055 SETTABLEKS                       R33 R26 K220 ["changeColor"]
     1057 DUPCLOSURE                       R33 K221 [PROTO_21]
     1058 CAPTURE                          VAL R26
     1059 CAPTURE                          VAL R0
     1060 CAPTURE                          VAL R6
     1061 CAPTURE                          VAL R29
     1062 CAPTURE                          VAL R7
     1063 SETTABLEKS                       R33 R26 K222 ["enterName"]
     1065 DUPCLOSURE                       R33 K223 [PROTO_22]
     1066 CAPTURE                          VAL R26
     1067 SETTABLEKS                       R33 R26 K224 ["checkErrorBannerText"]
     1069 DUPCLOSURE                       R33 K225 [PROTO_23]
     1070 CAPTURE                          VAL R7
     1071 CAPTURE                          VAL R0
     1072 SETTABLEKS                       R33 R26 K226 ["queryErrorBannerCloseButton"]
     1074 DUPCLOSURE                       R33 K227 [PROTO_25]
     1075 CAPTURE                          VAL R26
     1076 CAPTURE                          VAL R31
     1077 CAPTURE                          VAL R0
     1078 CAPTURE                          VAL R29
     1079 CAPTURE                          VAL R6
     1080 CAPTURE                          VAL R7
     1081 SETTABLEKS                       R33 R26 K228 ["clickErrorBannerDismiss"]
     1083 DUPCLOSURE                       R33 K229 [PROTO_27]
     1084 CAPTURE                          VAL R0
     1085 CAPTURE                          VAL R29
     1086 CAPTURE                          VAL R6
     1087 CAPTURE                          VAL R7
     1088 SETTABLEKS                       R33 R26 K230 ["openErrorDialog"]
     1090 DUPCLOSURE                       R33 K231 [PROTO_28]
     1091 CAPTURE                          VAL R26
     1092 SETTABLEKS                       R33 R26 K232 ["checkErrorDialogText"]
     1094 DUPCLOSURE                       R33 K233 [PROTO_29]
     1095 CAPTURE                          VAL R26
     1096 SETTABLEKS                       R33 R26 K234 ["isItemInDetailsList"]
     1098 DUPCLOSURE                       R33 K235 [PROTO_30]
     1099 CAPTURE                          VAL R26
     1100 CAPTURE                          VAL R14
     1101 SETTABLEKS                       R33 R26 K236 ["getUserEquippedItems"]
     1103 DUPCLOSURE                       R33 K237 [PROTO_31]
     1104 CAPTURE                          VAL R26
     1105 SETTABLEKS                       R33 R26 K238 ["getMixedCreatorMakeupLookEquippedItems"]
     1107 DUPCLOSURE                       R33 K239 [PROTO_32]
     1108 CAPTURE                          VAL R26
     1109 CAPTURE                          VAL R14
     1110 SETTABLEKS                       R33 R26 K240 ["getGroupEquippedItems"]
     1112 DUPCLOSURE                       R33 K241 [PROTO_33]
     1113 CAPTURE                          VAL R26
     1114 CAPTURE                          VAL R12
     1115 CAPTURE                          VAL R15
     1116 CAPTURE                          VAL R9
     1117 SETTABLEKS                       R33 R26 K242 ["getExpectedLook"]
     1119 LOADNIL                          R33
     1120 SETTABLEKS                       R33 R26 K243 ["lookCreationInfo"]
     1122 DUPCLOSURE                       R33 K244 [PROTO_34]
     1123 CAPTURE                          VAL R26
     1124 DUPCLOSURE                       R34 K245 [PROTO_36]
     1125 CAPTURE                          VAL R8
     1126 CAPTURE                          VAL R1
     1127 CAPTURE                          VAL R11
     1128 CAPTURE                          VAL R26
     1129 CAPTURE                          VAL R13
     1130 DUPCLOSURE                       R35 K246 [PROTO_38]
     1131 CAPTURE                          VAL R8
     1132 CAPTURE                          VAL R1
     1133 CAPTURE                          VAL R11
     1134 CAPTURE                          VAL R26
     1135 CAPTURE                          VAL R34
     1136 DUPCLOSURE                       R36 K247 [PROTO_40]
     1137 CAPTURE                          VAL R8
     1138 DUPCLOSURE                       R37 K248 [PROTO_42]
     1139 CAPTURE                          VAL R8
     1140 CAPTURE                          VAL R1
     1141 CAPTURE                          VAL R11
     1142 CAPTURE                          VAL R26
     1143 CAPTURE                          VAL R34
     1144 DUPCLOSURE                       R38 K249 [PROTO_44]
     1145 CAPTURE                          VAL R8
     1146 CAPTURE                          VAL R11
     1147 CAPTURE                          VAL R1
     1148 CAPTURE                          VAL R26
     1149 CAPTURE                          VAL R34
     1150 DUPCLOSURE                       R39 K250 [PROTO_45]
     1151 CAPTURE                          VAL R13
     1152 CAPTURE                          VAL R35
     1153 CAPTURE                          VAL R36
     1154 CAPTURE                          VAL R37
     1155 CAPTURE                          VAL R38
     1156 CAPTURE                          VAL R34
     1157 SETTABLEKS                       R39 R26 K251 ["createMockLookComposerRequestInternal"]
     1159 DUPCLOSURE                       R39 K252 [PROTO_48]
     1160 CAPTURE                          VAL R0
     1161 CAPTURE                          VAL R23
     1162 CAPTURE                          VAL R5
     1163 CAPTURE                          VAL R3
     1164 CAPTURE                          VAL R22
     1165 CAPTURE                          VAL R18
     1166 CAPTURE                          VAL R24
     1167 CAPTURE                          VAL R21
     1168 CAPTURE                          VAL R25
     1169 CAPTURE                          VAL R6
     1170 CAPTURE                          VAL R7
     1171 SETTABLEKS                       R39 R26 K253 ["createLookComposerDialogTest"]
     1173 DUPCLOSURE                       R39 K254 [PROTO_52]
     1174 CAPTURE                          VAL R26
     1175 CAPTURE                          VAL R16
     1176 CAPTURE                          VAL R5
     1177 CAPTURE                          VAL R17
     1178 CAPTURE                          VAL R19
     1179 CAPTURE                          VAL R20
     1180 SETTABLEKS                       R39 R26 K255 ["lookCreationTest"]
     1182 DUPCLOSURE                       R39 K256 [PROTO_56]
     1183 CAPTURE                          VAL R26
     1184 CAPTURE                          VAL R16
     1185 CAPTURE                          VAL R5
     1186 CAPTURE                          VAL R17
     1187 CAPTURE                          VAL R19
     1188 CAPTURE                          VAL R20
     1189 SETTABLEKS                       R39 R26 K257 ["lookCreationStartFromAssetIdTest"]
     1191 DUPCLOSURE                       R39 K258 [PROTO_58]
     1192 CAPTURE                          VAL R0
     1193 CAPTURE                          VAL R31
     1194 CAPTURE                          VAL R29
     1195 CAPTURE                          VAL R6
     1196 CAPTURE                          VAL R7
     1197 SETTABLEKS                       R39 R26 K259 ["clickAddAssetIdButton"]
     1199 DUPCLOSURE                       R39 K260 [PROTO_61]
     1200 CAPTURE                          VAL R0
     1201 CAPTURE                          VAL R7
     1202 CAPTURE                          VAL R6
     1203 SETTABLEKS                       R39 R26 K261 ["openAssetImportDialog"]
     1205 DUPCLOSURE                       R39 K262 [PROTO_65]
     1206 CAPTURE                          VAL R0
     1207 CAPTURE                          VAL R6
     1208 CAPTURE                          VAL R29
     1209 CAPTURE                          VAL R7
     1210 SETTABLEKS                       R39 R26 K263 ["enterTextInImportDialog"]
     1212 DUPCLOSURE                       R39 K264 [PROTO_67]
     1213 CAPTURE                          VAL R9
     1214 CAPTURE                          VAL R26
     1215 SETTABLEKS                       R39 R26 K265 ["addAssetIdsToImportDialog"]
     1217 DUPCLOSURE                       R39 K266 [PROTO_68]
     1218 CAPTURE                          VAL R26
     1219 SETTABLEKS                       R39 R26 K267 ["loadItemsIntoImportDialog"]
     1221 DUPCLOSURE                       R39 K268 [PROTO_69]
     1222 CAPTURE                          VAL R7
     1223 CAPTURE                          VAL R0
     1224 SETTABLEKS                       R39 R26 K269 ["getImportItemPriceText"]
     1226 DUPCLOSURE                       R39 K270 [PROTO_71]
     1227 CAPTURE                          VAL R7
     1228 CAPTURE                          VAL R0
     1229 CAPTURE                          VAL R9
     1230 SETTABLEKS                       R39 R26 K271 ["getImportDialogItemNames"]
     1232 DUPCLOSURE                       R39 K272 [PROTO_72]
     1233 CAPTURE                          VAL R28
     1234 SETTABLEKS                       R39 R26 K273 ["getMockItemName"]
     1236 DUPCLOSURE                       R39 K274 [PROTO_73]
     1237 CAPTURE                          VAL R26
     1238 SETTABLEKS                       R39 R26 K275 ["hasImportNothingFoundError"]
     1240 DUPCLOSURE                       R39 K276 [PROTO_74]
     1241 CAPTURE                          VAL R26
     1242 SETTABLEKS                       R39 R26 K277 ["hasImportNothingFoundErrorForIds"]
     1244 DUPCLOSURE                       R39 K278 [PROTO_76]
     1245 CAPTURE                          VAL R0
     1246 CAPTURE                          VAL R29
     1247 CAPTURE                          VAL R6
     1248 CAPTURE                          VAL R7
     1249 SETTABLEKS                       R39 R26 K279 ["clickAddItemsButtonImportDialog"]
     1251 DUPCLOSURE                       R39 K280 [PROTO_79]
     1252 CAPTURE                          VAL R0
     1253 CAPTURE                          VAL R7
     1254 CAPTURE                          VAL R6
     1255 SETTABLEKS                       R39 R26 K281 ["openLookComposerDialog"]
     1257 DUPCLOSURE                       R39 K282 [PROTO_80]
     1258 CAPTURE                          VAL R26
     1259 SETTABLEKS                       R39 R26 K283 ["importMarketplaceItems"]
     1261 RETURN                           R26 1
