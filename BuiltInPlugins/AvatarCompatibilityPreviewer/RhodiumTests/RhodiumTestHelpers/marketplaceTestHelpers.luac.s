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
        1 GETTABLEKS                       R0 R0 K0 ["within"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R0 R0 K1 ["getByTestId"]
        7 LOADK                            R1 K2 ["import-dialog-item-id-input"]
        8 CALL                             R0 1 1
        9 LOADK                            R3 K3 ["TextBox"]
       10 LOADB                            R4 1
       11 NAMECALL                         R1 R0 K4 ["FindFirstChildWhichIsA"]
       13 CALL                             R1 3 1
       14 MOVE                             R3 R1
       15 JUMPIFNOT                        R3 ; [+4]
       16 LOADK                            R5 K3 ["TextBox"]
       17 NAMECALL                         R3 R1 K5 ["IsA"]
       19 CALL                             R3 2 1
       20 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       22 LOADK                            R4 K6 ["Item id input has no internal text box"]
       23 GETIMPORT                        R2 K8 [assert]
       25 CALL                             R2 2 0
       26 RETURN                           R1 1

PROTO_63:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["within"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R0 R0 K1 ["getByTestId"]
        7 LOADK                            R1 K2 ["import-dialog-add-item"]
        8 CALL                             R0 1 1
        9 LOADK                            R4 K3 ["GuiButton"]
       10 NAMECALL                         R2 R0 K4 ["IsA"]
       12 CALL                             R2 2 1
       13 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       15 LOADK                            R3 K5 ["Import dialog add item button is not a GuiButton"]
       16 GETIMPORT                        R1 K7 [assert]
       18 CALL                             R1 2 0
       19 RETURN                           R0 1

PROTO_64:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Size"]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R0 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_65:
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

PROTO_66:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["within"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R2 R2 K1 ["getByTestId"]
        7 LOADK                            R3 K2 ["import-dialog-item-id-input"]
        8 CALL                             R2 1 1
        9 LOADK                            R5 K3 ["TextBox"]
       10 LOADB                            R6 1
       11 NAMECALL                         R3 R2 K4 ["FindFirstChildWhichIsA"]
       13 CALL                             R3 3 1
       14 MOVE                             R5 R3
       15 JUMPIFNOT                        R5 ; [+4]
       16 LOADK                            R7 K3 ["TextBox"]
       17 NAMECALL                         R5 R3 K5 ["IsA"]
       19 CALL                             R5 2 1
       20 FASTCALL2K                       ASSERT R5 K6 ; [+4]
       22 LOADK                            R6 K6 ["Item id input has no internal text box"]
       23 GETIMPORT                        R4 K8 [assert]
       25 CALL                             R4 2 0
       26 MOVE                             R1 R3
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K9 ["act"]
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U0
       34 CALL                             R2 1 0
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K9 ["act"]
       38 NEWCLOSURE                       R3 P1
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R0
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_67:
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

PROTO_68:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["typeTextInImportDialog"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["within"]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R2 R2 K2 ["getByTestId"]
       12 LOADK                            R3 K3 ["import-dialog-item-id-input"]
       13 CALL                             R2 1 1
       14 LOADK                            R5 K4 ["TextBox"]
       15 LOADB                            R6 1
       16 NAMECALL                         R3 R2 K5 ["FindFirstChildWhichIsA"]
       18 CALL                             R3 3 1
       19 MOVE                             R5 R3
       20 JUMPIFNOT                        R5 ; [+4]
       21 LOADK                            R7 K4 ["TextBox"]
       22 NAMECALL                         R5 R3 K6 ["IsA"]
       24 CALL                             R5 2 1
       25 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       27 LOADK                            R6 K7 ["Item id input has no internal text box"]
       28 GETIMPORT                        R4 K9 [assert]
       30 CALL                             R4 2 0
       31 MOVE                             R1 R3
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K10 ["act"]
       35 NEWCLOSURE                       R3 P0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R1
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["getByTestId"]
        7 LOADK                            R2 K2 ["import-dialog-item-id-input"]
        8 CALL                             R1 1 1
        9 LOADK                            R4 K3 ["TextBox"]
       10 LOADB                            R5 1
       11 NAMECALL                         R2 R1 K4 ["FindFirstChildWhichIsA"]
       13 CALL                             R2 3 1
       14 MOVE                             R4 R2
       15 JUMPIFNOT                        R4 ; [+4]
       16 LOADK                            R6 K3 ["TextBox"]
       17 NAMECALL                         R4 R2 K5 ["IsA"]
       19 CALL                             R4 2 1
       20 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       22 LOADK                            R5 K6 ["Item id input has no internal text box"]
       23 GETIMPORT                        R3 K8 [assert]
       25 CALL                             R3 2 0
       26 MOVE                             R0 R2
       27 GETTABLEKS                       R0 R0 K9 ["Text"]
       29 RETURN                           R0 1

PROTO_70:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["getByTestId"]
        7 LOADK                            R2 K2 ["import-dialog-add-item"]
        8 CALL                             R1 1 1
        9 LOADK                            R5 K3 ["GuiButton"]
       10 NAMECALL                         R3 R1 K4 ["IsA"]
       12 CALL                             R3 2 1
       13 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       15 LOADK                            R4 K5 ["Import dialog add item button is not a GuiButton"]
       16 GETIMPORT                        R2 K7 [assert]
       18 CALL                             R2 2 0
       19 MOVE                             R0 R1
       20 GETTABLEKS                       R0 R0 K8 ["Active"]
       22 RETURN                           R0 1

PROTO_71:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["within"]
        4 GETUPVAL                         R3 2
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R2 R2 K1 ["getByTestId"]
        8 LOADK                            R3 K2 ["import-dialog-add-item"]
        9 CALL                             R2 1 1
       10 LOADK                            R6 K3 ["GuiButton"]
       11 NAMECALL                         R4 R2 K4 ["IsA"]
       13 CALL                             R4 2 1
       14 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       16 LOADK                            R5 K5 ["Import dialog add item button is not a GuiButton"]
       17 GETIMPORT                        R3 K7 [assert]
       19 CALL                             R3 2 0
       20 MOVE                             R1 R2
       21 DUPTABLE                         R2 K11 [{["resizeAncestors"] = True, ["forceResize"] = True}]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_72:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_73:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_72]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["enterTextInImportDialog"]
        9 GETIMPORT                        R3 K5 [table.concat]
       11 MOVE                             R4 R1
       12 LOADK                            R5 K6 [","]
       13 CALL                             R3 2 -1
       14 CALL                             R2 -1 0
       15 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["openAssetImportDialog"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["addAssetIdsToImportDialog"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_75:
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

PROTO_76:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 RETURN                           R1 1

PROTO_77:
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
       13 DUPCLOSURE                       R3 K4 [PROTO_76]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_78:
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

PROTO_79:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["checkErrorBannerText"]
        3 LOADK                            R1 K1 ["MarketplaceImport.NothingFoundError"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_80:
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

PROTO_81:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_82:
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

PROTO_83:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fireEvent"]
        3 GETTABLEKS                       R0 R0 K1 ["click"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_84:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 10000
        2 SETTABLEKS                       R1 R0 K0 ["ZIndex"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R0 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_85:
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

PROTO_86:
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
      131 GETTABLEKS                       R18 R2 K29 ["RhodiumTests"]
      133 GETTABLEKS                       R18 R18 K30 ["RhodiumTestHelpers"]
      135 GETTABLEKS                       R18 R18 K31 ["clickFoundationButton"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K10 [require]
      140 GETTABLEKS                       R19 R2 K20 ["Src"]
      142 GETTABLEKS                       R19 R19 K32 ["Components"]
      144 GETTABLEKS                       R19 R19 K33 ["AvatarEditorServiceContext"]
      146 CALL                             R18 1 1
      147 GETIMPORT                        R19 K10 [require]
      149 GETTABLEKS                       R20 R2 K20 ["Src"]
      151 GETTABLEKS                       R20 R20 K32 ["Components"]
      153 GETTABLEKS                       R20 R20 K34 ["HumanoidServiceContext"]
      155 CALL                             R19 1 1
      156 GETIMPORT                        R20 K10 [require]
      158 GETTABLEKS                       R21 R2 K20 ["Src"]
      160 GETTABLEKS                       R21 R21 K32 ["Components"]
      162 GETTABLEKS                       R21 R21 K35 ["LookContext"]
      164 CALL                             R20 1 1
      165 GETIMPORT                        R21 K10 [require]
      167 GETTABLEKS                       R22 R2 K20 ["Src"]
      169 GETTABLEKS                       R22 R22 K32 ["Components"]
      171 GETTABLEKS                       R22 R22 K36 ["DEPRECATED_LookContext"]
      173 CALL                             R21 1 1
      174 GETIMPORT                        R22 K10 [require]
      176 GETTABLEKS                       R23 R2 K20 ["Src"]
      178 GETTABLEKS                       R23 R23 K32 ["Components"]
      180 GETTABLEKS                       R23 R23 K37 ["PlayersServiceContext"]
      182 CALL                             R22 1 1
      183 GETTABLEKS                       R23 R4 K38 ["TestHelpers"]
      185 GETTABLEKS                       R23 R23 K39 ["provideMockContext"]
      187 GETIMPORT                        R24 K10 [require]
      189 GETTABLEKS                       R25 R2 K29 ["RhodiumTests"]
      191 GETTABLEKS                       R25 R25 K40 ["createMockContext"]
      193 CALL                             R24 1 1
      194 GETIMPORT                        R25 K10 [require]
      196 GETIMPORT                        R26 K6 [script]
      198 GETTABLEKS                       R26 R26 K41 ["Parent"]
      200 GETTABLEKS                       R26 R26 K42 ["HumanoidServiceContextMock"]
      202 CALL                             R25 1 1
      203 GETIMPORT                        R26 K10 [require]
      205 GETIMPORT                        R27 K6 [script]
      207 GETTABLEKS                       R27 R27 K41 ["Parent"]
      209 GETTABLEKS                       R27 R27 K43 ["PlayersServiceContextMock"]
      211 CALL                             R26 1 1
      212 NEWTABLE                         R27 64 0
      214 LOADK                            R28 K44 ["Something unexpected went wrong with the look preview request, please try again later or file a bug report."]
      215 SETTABLEKS                       R28 R27 K45 ["LOOK_PREVIEW_FAILURE_MESSAGE"]
      217 LOADK                            R28 K46 ["Some items are not valid."]
      218 SETTABLEKS                       R28 R27 K47 ["LOOK_VALIDATION_FAILURE_MESSAGE"]
      220 LOADK                            R28 K48 ["Your look creation failed because the text was moderated."]
      221 SETTABLEKS                       R28 R27 K49 ["LOOK_CREATION_FAILURE_MESSAGE"]
      223 LOADK                            R28 K50 ["TestGroupName"]
      224 SETTABLEKS                       R28 R27 K51 ["DEFAULT_GROUP_NAME"]
      226 LOADK                            R28 K52 ["Test Name"]
      227 SETTABLEKS                       R28 R27 K53 ["VALID_NAME"]
      229 LOADK                            R28 K54 [122333]
      230 SETTABLEKS                       R28 R27 K55 ["GROUP_ID"]
      232 NEWTABLE                         R28 0 5
      234 LOADN                            R29 111
      235 LOADN                            R30 222
      236 LOADN                            R31 333
      237 LOADN                            R32 444
      238 LOADN                            R33 555
      239 SETLIST                          R28 R29 5 [1]
      241 SETTABLEKS                       R28 R27 K56 ["USER_ASSET_IDS"]
      243 NEWTABLE                         R28 0 5
      245 LOADN                            R29 666
      246 LOADN                            R30 777
      247 LOADN                            R31 888
      248 LOADN                            R32 999
      249 LOADN                            R33 0
      250 SETLIST                          R28 R29 5 [1]
      252 SETTABLEKS                       R28 R27 K57 ["GROUP_ASSET_IDS"]
      254 LOADN                            R28 1111
      255 SETTABLEKS                       R28 R27 K58 ["AVATAR_LOOK_ASSET_ID"]
      257 LOADN                            R28 60
      258 SETTABLEKS                       R28 R27 K59 ["AVATAR_LOOK_BUNDLE_ID"]
      260 NEWTABLE                         R28 0 6
      262 LOADN                            R29 2001
      263 LOADN                            R30 2002
      264 LOADN                            R31 2003
      265 LOADN                            R32 2004
      266 LOADN                            R33 2005
      267 LOADN                            R34 2006
      268 SETLIST                          R28 R29 6 [1]
      270 SETTABLEKS                       R28 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      272 DUPTABLE                         R28 K77 [{["price"] = 50, ["priceStatus"] = "Free", ["priceBehindStatus"] = 1500, ["priceBehindOffSale"] = 1600, ["lowestPrice"] = 100, ["priceBehindLowestPrice"] = 1700, ["avatarLookAssetPrice"] = 75, ["bundlePrice"] = 30}]
      273 SETTABLEKS                       R28 R27 K78 ["MOCK_ITEM_PRICES"]
      275 LOADK                            R28 K79 ["Studio.Test.MarketplaceImport.OffSale:[]"]
      276 SETTABLEKS                       R28 R27 K80 ["OFF_SALE_TEXT"]
      278 GETIMPORT                        R28 K83 [utf8.char]
      280 LOADK                            R29 K84 [57346]
      281 CALL                             R28 1 1
      282 DUPCLOSURE                       R29 K85 [PROTO_0]
      283 CAPTURE                          VAL R28
      284 SETTABLEKS                       R29 R27 K86 ["robuxPriceText"]
      286 NEWTABLE                         R29 16 0
      288 GETTABLEKS                       R31 R27 K56 ["USER_ASSET_IDS"]
      290 GETTABLEN                        R30 R31 1
      291 DUPTABLE                         R31 K93 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Eyebrows", ["id"]}]
      292 GETIMPORT                        R32 K97 [Enum.AssetType.EyebrowAccessory]
      294 GETTABLEKS                       R32 R32 K98 ["Value"]
      296 SETTABLEKS                       R32 R31 K89 ["assetType"]
      298 GETTABLEKS                       R33 R27 K56 ["USER_ASSET_IDS"]
      300 GETTABLEN                        R32 R33 1
      301 SETTABLEKS                       R32 R31 K92 ["id"]
      303 SETTABLE                         R31 R29 R30
      304 GETTABLEKS                       R31 R27 K56 ["USER_ASSET_IDS"]
      306 GETTABLEN                        R30 R31 2
      307 DUPTABLE                         R31 K100 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Eyelashes", ["id"]}]
      308 GETIMPORT                        R32 K102 [Enum.AssetType.EyelashAccessory]
      310 GETTABLEKS                       R32 R32 K98 ["Value"]
      312 SETTABLEKS                       R32 R31 K89 ["assetType"]
      314 GETTABLEKS                       R33 R27 K56 ["USER_ASSET_IDS"]
      316 GETTABLEN                        R32 R33 2
      317 SETTABLEKS                       R32 R31 K92 ["id"]
      319 SETTABLE                         R31 R29 R30
      320 GETTABLEKS                       R31 R27 K56 ["USER_ASSET_IDS"]
      322 GETTABLEN                        R30 R31 3
      323 DUPTABLE                         R31 K104 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "FaceMakeup", ["id"]}]
      324 GETIMPORT                        R32 K105 [Enum.AssetType.FaceMakeup]
      326 GETTABLEKS                       R32 R32 K98 ["Value"]
      328 SETTABLEKS                       R32 R31 K89 ["assetType"]
      330 GETTABLEKS                       R33 R27 K56 ["USER_ASSET_IDS"]
      332 GETTABLEN                        R32 R33 3
      333 SETTABLEKS                       R32 R31 K92 ["id"]
      335 SETTABLE                         R31 R29 R30
      336 GETTABLEKS                       R31 R27 K56 ["USER_ASSET_IDS"]
      338 GETTABLEN                        R30 R31 4
      339 DUPTABLE                         R31 K107 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LipMakeup", ["id"]}]
      340 GETIMPORT                        R32 K108 [Enum.AssetType.LipMakeup]
      342 GETTABLEKS                       R32 R32 K98 ["Value"]
      344 SETTABLEKS                       R32 R31 K89 ["assetType"]
      346 GETTABLEKS                       R33 R27 K56 ["USER_ASSET_IDS"]
      348 GETTABLEN                        R32 R33 4
      349 SETTABLEKS                       R32 R31 K92 ["id"]
      351 SETTABLE                         R31 R29 R30
      352 GETTABLEKS                       R31 R27 K56 ["USER_ASSET_IDS"]
      354 GETTABLEN                        R30 R31 5
      355 DUPTABLE                         R31 K110 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "EyeMakeup", ["id"]}]
      356 GETIMPORT                        R32 K111 [Enum.AssetType.EyeMakeup]
      358 GETTABLEKS                       R32 R32 K98 ["Value"]
      360 SETTABLEKS                       R32 R31 K89 ["assetType"]
      362 GETTABLEKS                       R33 R27 K56 ["USER_ASSET_IDS"]
      364 GETTABLEN                        R32 R33 5
      365 SETTABLEKS                       R32 R31 K92 ["id"]
      367 SETTABLE                         R31 R29 R30
      368 GETTABLEKS                       R31 R27 K57 ["GROUP_ASSET_IDS"]
      370 GETTABLEN                        R30 R31 1
      371 DUPTABLE                         R31 K113 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "Eyebrows", ["id"]}]
      372 GETIMPORT                        R32 K97 [Enum.AssetType.EyebrowAccessory]
      374 GETTABLEKS                       R32 R32 K98 ["Value"]
      376 SETTABLEKS                       R32 R31 K89 ["assetType"]
      378 GETTABLEKS                       R33 R27 K57 ["GROUP_ASSET_IDS"]
      380 GETTABLEN                        R32 R33 1
      381 SETTABLEKS                       R32 R31 K92 ["id"]
      383 SETTABLE                         R31 R29 R30
      384 GETTABLEKS                       R31 R27 K57 ["GROUP_ASSET_IDS"]
      386 GETTABLEN                        R30 R31 2
      387 DUPTABLE                         R31 K114 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "Eyelashes", ["id"]}]
      388 GETIMPORT                        R32 K102 [Enum.AssetType.EyelashAccessory]
      390 GETTABLEKS                       R32 R32 K98 ["Value"]
      392 SETTABLEKS                       R32 R31 K89 ["assetType"]
      394 GETTABLEKS                       R33 R27 K57 ["GROUP_ASSET_IDS"]
      396 GETTABLEN                        R32 R33 2
      397 SETTABLEKS                       R32 R31 K92 ["id"]
      399 SETTABLE                         R31 R29 R30
      400 GETTABLEKS                       R31 R27 K57 ["GROUP_ASSET_IDS"]
      402 GETTABLEN                        R30 R31 3
      403 DUPTABLE                         R31 K115 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "FaceMakeup", ["id"]}]
      404 GETIMPORT                        R32 K105 [Enum.AssetType.FaceMakeup]
      406 GETTABLEKS                       R32 R32 K98 ["Value"]
      408 SETTABLEKS                       R32 R31 K89 ["assetType"]
      410 GETTABLEKS                       R33 R27 K57 ["GROUP_ASSET_IDS"]
      412 GETTABLEN                        R32 R33 3
      413 SETTABLEKS                       R32 R31 K92 ["id"]
      415 SETTABLE                         R31 R29 R30
      416 GETTABLEKS                       R31 R27 K57 ["GROUP_ASSET_IDS"]
      418 GETTABLEN                        R30 R31 4
      419 DUPTABLE                         R31 K116 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "EyeMakeup", ["id"]}]
      420 GETIMPORT                        R32 K108 [Enum.AssetType.LipMakeup]
      422 GETTABLEKS                       R32 R32 K98 ["Value"]
      424 SETTABLEKS                       R32 R31 K89 ["assetType"]
      426 GETTABLEKS                       R33 R27 K57 ["GROUP_ASSET_IDS"]
      428 GETTABLEN                        R32 R33 4
      429 SETTABLEKS                       R32 R31 K92 ["id"]
      431 SETTABLE                         R31 R29 R30
      432 GETTABLEKS                       R31 R27 K57 ["GROUP_ASSET_IDS"]
      434 GETTABLEN                        R30 R31 5
      435 DUPTABLE                         R31 K117 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "LipMakeup", ["id"]}]
      436 GETIMPORT                        R32 K111 [Enum.AssetType.EyeMakeup]
      438 GETTABLEKS                       R32 R32 K98 ["Value"]
      440 SETTABLEKS                       R32 R31 K89 ["assetType"]
      442 GETTABLEKS                       R33 R27 K57 ["GROUP_ASSET_IDS"]
      444 GETTABLEN                        R32 R33 5
      445 SETTABLEKS                       R32 R31 K92 ["id"]
      447 SETTABLE                         R31 R29 R30
      448 SETTABLEKS                       R29 R27 K118 ["MOCK_ITEM_DATA"]
      450 NEWTABLE                         R29 16 0
      452 GETTABLEKS                       R31 R27 K56 ["USER_ASSET_IDS"]
      454 GETTABLEN                        R30 R31 1
      455 DUPTABLE                         R31 K130 [{["Id"], ["Name"] = "User Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["Price"]}]
      456 GETTABLEKS                       R33 R27 K56 ["USER_ASSET_IDS"]
      458 GETTABLEN                        R32 R33 1
      459 SETTABLEKS                       R32 R31 K119 ["Id"]
      461 GETIMPORT                        R32 K97 [Enum.AssetType.EyebrowAccessory]
      463 GETTABLEKS                       R32 R32 K120 ["Name"]
      465 SETTABLEKS                       R32 R31 K95 ["AssetType"]
      467 GETTABLEKS                       R32 R27 K78 ["MOCK_ITEM_PRICES"]
      469 GETTABLEKS                       R32 R32 K61 ["price"]
      471 SETTABLEKS                       R32 R31 K129 ["Price"]
      473 SETTABLE                         R31 R29 R30
      474 GETTABLEKS                       R31 R27 K56 ["USER_ASSET_IDS"]
      476 GETTABLEN                        R30 R31 2
      477 DUPTABLE                         R31 K133 [{["Id"], ["Name"] = "User Asset 2", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["PriceStatus"], ["Price"]}]
      478 GETTABLEKS                       R33 R27 K56 ["USER_ASSET_IDS"]
      480 GETTABLEN                        R32 R33 2
      481 SETTABLEKS                       R32 R31 K119 ["Id"]
      483 GETIMPORT                        R32 K102 [Enum.AssetType.EyelashAccessory]
      485 GETTABLEKS                       R32 R32 K120 ["Name"]
      487 SETTABLEKS                       R32 R31 K95 ["AssetType"]
      489 GETTABLEKS                       R32 R27 K78 ["MOCK_ITEM_PRICES"]
      491 GETTABLEKS                       R32 R32 K63 ["priceStatus"]
      493 SETTABLEKS                       R32 R31 K132 ["PriceStatus"]
      495 GETTABLEKS                       R32 R27 K78 ["MOCK_ITEM_PRICES"]
      497 GETTABLEKS                       R32 R32 K65 ["priceBehindStatus"]
      499 SETTABLEKS                       R32 R31 K129 ["Price"]
      501 SETTABLE                         R31 R29 R30
      502 GETTABLEKS                       R31 R27 K56 ["USER_ASSET_IDS"]
      504 GETTABLEN                        R30 R31 3
      505 DUPTABLE                         R31 K137 [{["Id"], ["Name"] = "User Asset 3", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["SaleLocationType"] = "NotApplicable", ["Price"]}]
      506 GETTABLEKS                       R33 R27 K56 ["USER_ASSET_IDS"]
      508 GETTABLEN                        R32 R33 3
      509 SETTABLEKS                       R32 R31 K119 ["Id"]
      511 GETIMPORT                        R32 K105 [Enum.AssetType.FaceMakeup]
      513 GETTABLEKS                       R32 R32 K120 ["Name"]
      515 SETTABLEKS                       R32 R31 K95 ["AssetType"]
      517 GETTABLEKS                       R32 R27 K78 ["MOCK_ITEM_PRICES"]
      519 GETTABLEKS                       R32 R32 K67 ["priceBehindOffSale"]
      521 SETTABLEKS                       R32 R31 K129 ["Price"]
      523 SETTABLE                         R31 R29 R30
      524 GETTABLEKS                       R31 R27 K56 ["USER_ASSET_IDS"]
      526 GETTABLEN                        R30 R31 4
      527 DUPTABLE                         R31 K140 [{["Id"], ["Name"] = "User Asset 4", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["LowestPrice"], ["Price"]}]
      528 GETTABLEKS                       R33 R27 K56 ["USER_ASSET_IDS"]
      530 GETTABLEN                        R32 R33 4
      531 SETTABLEKS                       R32 R31 K119 ["Id"]
      533 GETIMPORT                        R32 K108 [Enum.AssetType.LipMakeup]
      535 GETTABLEKS                       R32 R32 K120 ["Name"]
      537 SETTABLEKS                       R32 R31 K95 ["AssetType"]
      539 GETTABLEKS                       R32 R27 K78 ["MOCK_ITEM_PRICES"]
      541 GETTABLEKS                       R32 R32 K69 ["lowestPrice"]
      543 SETTABLEKS                       R32 R31 K139 ["LowestPrice"]
      545 GETTABLEKS                       R32 R27 K78 ["MOCK_ITEM_PRICES"]
      547 GETTABLEKS                       R32 R32 K71 ["priceBehindLowestPrice"]
      549 SETTABLEKS                       R32 R31 K129 ["Price"]
      551 SETTABLE                         R31 R29 R30
      552 GETTABLEKS                       R31 R27 K56 ["USER_ASSET_IDS"]
      554 GETTABLEN                        R30 R31 5
      555 DUPTABLE                         R31 K142 [{["Id"], ["Name"] = "User Asset 5", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      556 GETTABLEKS                       R33 R27 K56 ["USER_ASSET_IDS"]
      558 GETTABLEN                        R32 R33 5
      559 SETTABLEKS                       R32 R31 K119 ["Id"]
      561 GETIMPORT                        R32 K111 [Enum.AssetType.EyeMakeup]
      563 GETTABLEKS                       R32 R32 K120 ["Name"]
      565 SETTABLEKS                       R32 R31 K95 ["AssetType"]
      567 SETTABLE                         R31 R29 R30
      568 GETTABLEKS                       R30 R27 K58 ["AVATAR_LOOK_ASSET_ID"]
      570 DUPTABLE                         R31 K144 [{["Id"], ["Name"] = "Avatar Look Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["Price"]}]
      571 GETTABLEKS                       R32 R27 K58 ["AVATAR_LOOK_ASSET_ID"]
      573 SETTABLEKS                       R32 R31 K119 ["Id"]
      575 GETIMPORT                        R32 K146 [Enum.AssetType.ShirtAccessory]
      577 GETTABLEKS                       R32 R32 K120 ["Name"]
      579 SETTABLEKS                       R32 R31 K95 ["AssetType"]
      581 GETTABLEKS                       R32 R27 K78 ["MOCK_ITEM_PRICES"]
      583 GETTABLEKS                       R32 R32 K73 ["avatarLookAssetPrice"]
      585 SETTABLEKS                       R32 R31 K129 ["Price"]
      587 SETTABLE                         R31 R29 R30
      588 GETTABLEKS                       R31 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      590 GETTABLEN                        R30 R31 1
      591 DUPTABLE                         R31 K148 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      592 GETTABLEKS                       R33 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      594 GETTABLEN                        R32 R33 1
      595 SETTABLEKS                       R32 R31 K119 ["Id"]
      597 GETIMPORT                        R32 K150 [Enum.AssetType.DynamicHead]
      599 GETTABLEKS                       R32 R32 K120 ["Name"]
      601 SETTABLEKS                       R32 R31 K95 ["AssetType"]
      603 SETTABLE                         R31 R29 R30
      604 GETTABLEKS                       R31 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      606 GETTABLEN                        R30 R31 2
      607 DUPTABLE                         R31 K152 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 2", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      608 GETTABLEKS                       R33 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      610 GETTABLEN                        R32 R33 2
      611 SETTABLEKS                       R32 R31 K119 ["Id"]
      613 GETIMPORT                        R32 K154 [Enum.AssetType.Torso]
      615 GETTABLEKS                       R32 R32 K120 ["Name"]
      617 SETTABLEKS                       R32 R31 K95 ["AssetType"]
      619 SETTABLE                         R31 R29 R30
      620 GETTABLEKS                       R31 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      622 GETTABLEN                        R30 R31 3
      623 DUPTABLE                         R31 K156 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 3", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      624 GETTABLEKS                       R33 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      626 GETTABLEN                        R32 R33 3
      627 SETTABLEKS                       R32 R31 K119 ["Id"]
      629 GETIMPORT                        R32 K158 [Enum.AssetType.LeftArm]
      631 GETTABLEKS                       R32 R32 K120 ["Name"]
      633 SETTABLEKS                       R32 R31 K95 ["AssetType"]
      635 SETTABLE                         R31 R29 R30
      636 GETTABLEKS                       R31 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      638 GETTABLEN                        R30 R31 4
      639 DUPTABLE                         R31 K160 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 4", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      640 GETTABLEKS                       R33 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      642 GETTABLEN                        R32 R33 4
      643 SETTABLEKS                       R32 R31 K119 ["Id"]
      645 GETIMPORT                        R32 K162 [Enum.AssetType.LeftLeg]
      647 GETTABLEKS                       R32 R32 K120 ["Name"]
      649 SETTABLEKS                       R32 R31 K95 ["AssetType"]
      651 SETTABLE                         R31 R29 R30
      652 GETTABLEKS                       R31 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      654 GETTABLEN                        R30 R31 5
      655 DUPTABLE                         R31 K164 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 5", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      656 GETTABLEKS                       R33 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      658 GETTABLEN                        R32 R33 5
      659 SETTABLEKS                       R32 R31 K119 ["Id"]
      661 GETIMPORT                        R32 K166 [Enum.AssetType.RightArm]
      663 GETTABLEKS                       R32 R32 K120 ["Name"]
      665 SETTABLEKS                       R32 R31 K95 ["AssetType"]
      667 SETTABLE                         R31 R29 R30
      668 GETTABLEKS                       R31 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      670 GETTABLEN                        R30 R31 6
      671 DUPTABLE                         R31 K168 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 6", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      672 GETTABLEKS                       R33 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      674 GETTABLEN                        R32 R33 6
      675 SETTABLEKS                       R32 R31 K119 ["Id"]
      677 GETIMPORT                        R32 K170 [Enum.AssetType.RightLeg]
      679 GETTABLEKS                       R32 R32 K120 ["Name"]
      681 SETTABLEKS                       R32 R31 K95 ["AssetType"]
      683 SETTABLE                         R31 R29 R30
      684 SETTABLEKS                       R29 R27 K171 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
      686 NEWTABLE                         R30 1 0
      688 GETTABLEKS                       R31 R27 K59 ["AVATAR_LOOK_BUNDLE_ID"]
      690 DUPTABLE                         R32 K173 [{["Id"], ["Name"], ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["Price"], ["BundledItems"]}]
      691 GETTABLEKS                       R33 R27 K59 ["AVATAR_LOOK_BUNDLE_ID"]
      693 SETTABLEKS                       R33 R32 K119 ["Id"]
      695 LOADK                            R34 K174 ["Test Bundle"]
      696 GETTABLEKS                       R36 R27 K59 ["AVATAR_LOOK_BUNDLE_ID"]
      698 FASTCALL1                        TOSTRING R36 ; [+2]
      699 GETIMPORT                        R35 K176 [tostring]
      701 CALL                             R35 1 1
      702 CONCAT                           R33 R34 R35
      703 SETTABLEKS                       R33 R32 K120 ["Name"]
      705 GETTABLEKS                       R33 R27 K78 ["MOCK_ITEM_PRICES"]
      707 GETTABLEKS                       R33 R33 K75 ["bundlePrice"]
      709 SETTABLEKS                       R33 R32 K129 ["Price"]
      711 NEWTABLE                         R33 0 6
      713 DUPTABLE                         R34 K177 [{"Id"}]
      714 GETTABLEKS                       R36 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      716 GETTABLEN                        R35 R36 1
      717 SETTABLEKS                       R35 R34 K119 ["Id"]
      719 DUPTABLE                         R35 K177 [{"Id"}]
      720 GETTABLEKS                       R37 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      722 GETTABLEN                        R36 R37 2
      723 SETTABLEKS                       R36 R35 K119 ["Id"]
      725 DUPTABLE                         R36 K177 [{"Id"}]
      726 GETTABLEKS                       R38 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      728 GETTABLEN                        R37 R38 3
      729 SETTABLEKS                       R37 R36 K119 ["Id"]
      731 DUPTABLE                         R37 K177 [{"Id"}]
      732 GETTABLEKS                       R39 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      734 GETTABLEN                        R38 R39 4
      735 SETTABLEKS                       R38 R37 K119 ["Id"]
      737 DUPTABLE                         R38 K177 [{"Id"}]
      738 GETTABLEKS                       R40 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      740 GETTABLEN                        R39 R40 5
      741 SETTABLEKS                       R39 R38 K119 ["Id"]
      743 DUPTABLE                         R39 K177 [{"Id"}]
      744 GETTABLEKS                       R41 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      746 GETTABLEN                        R40 R41 6
      747 SETTABLEKS                       R40 R39 K119 ["Id"]
      749 SETLIST                          R33 R34 6 [1]
      751 SETTABLEKS                       R33 R32 K172 ["BundledItems"]
      753 SETTABLE                         R32 R30 R31
      754 SETTABLEKS                       R30 R27 K178 ["MOCK_AVATAR_EDITOR_SERVICE_BUNDLE_DETAILS"]
      756 NEWTABLE                         R30 8 0
      758 GETTABLEKS                       R31 R27 K58 ["AVATAR_LOOK_ASSET_ID"]
      760 DUPTABLE                         R32 K180 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Shirts", ["id"]}]
      761 GETIMPORT                        R33 K146 [Enum.AssetType.ShirtAccessory]
      763 GETTABLEKS                       R33 R33 K98 ["Value"]
      765 SETTABLEKS                       R33 R32 K89 ["assetType"]
      767 GETTABLEKS                       R33 R27 K58 ["AVATAR_LOOK_ASSET_ID"]
      769 SETTABLEKS                       R33 R32 K92 ["id"]
      771 SETTABLE                         R32 R30 R31
      772 GETTABLEKS                       R32 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      774 GETTABLEN                        R31 R32 1
      775 DUPTABLE                         R32 K183 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "HeadBodyPart", ["id"], ["bundleId"]}]
      776 GETIMPORT                        R33 K150 [Enum.AssetType.DynamicHead]
      778 GETTABLEKS                       R33 R33 K98 ["Value"]
      780 SETTABLEKS                       R33 R32 K89 ["assetType"]
      782 GETTABLEKS                       R34 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      784 GETTABLEN                        R33 R34 1
      785 SETTABLEKS                       R33 R32 K92 ["id"]
      787 GETTABLEKS                       R33 R27 K59 ["AVATAR_LOOK_BUNDLE_ID"]
      789 SETTABLEKS                       R33 R32 K182 ["bundleId"]
      791 SETTABLE                         R32 R30 R31
      792 GETTABLEKS                       R32 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      794 GETTABLEN                        R31 R32 2
      795 DUPTABLE                         R32 K184 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Torso", ["id"], ["bundleId"]}]
      796 GETIMPORT                        R33 K154 [Enum.AssetType.Torso]
      798 GETTABLEKS                       R33 R33 K98 ["Value"]
      800 SETTABLEKS                       R33 R32 K89 ["assetType"]
      802 GETTABLEKS                       R34 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      804 GETTABLEN                        R33 R34 2
      805 SETTABLEKS                       R33 R32 K92 ["id"]
      807 GETTABLEKS                       R33 R27 K59 ["AVATAR_LOOK_BUNDLE_ID"]
      809 SETTABLEKS                       R33 R32 K182 ["bundleId"]
      811 SETTABLE                         R32 R30 R31
      812 GETTABLEKS                       R32 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      814 GETTABLEN                        R31 R32 3
      815 DUPTABLE                         R32 K185 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LeftArm", ["id"], ["bundleId"]}]
      816 GETIMPORT                        R33 K158 [Enum.AssetType.LeftArm]
      818 GETTABLEKS                       R33 R33 K98 ["Value"]
      820 SETTABLEKS                       R33 R32 K89 ["assetType"]
      822 GETTABLEKS                       R34 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      824 GETTABLEN                        R33 R34 3
      825 SETTABLEKS                       R33 R32 K92 ["id"]
      827 GETTABLEKS                       R33 R27 K59 ["AVATAR_LOOK_BUNDLE_ID"]
      829 SETTABLEKS                       R33 R32 K182 ["bundleId"]
      831 SETTABLE                         R32 R30 R31
      832 GETTABLEKS                       R32 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      834 GETTABLEN                        R31 R32 4
      835 DUPTABLE                         R32 K186 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LeftLeg", ["id"], ["bundleId"]}]
      836 GETIMPORT                        R33 K162 [Enum.AssetType.LeftLeg]
      838 GETTABLEKS                       R33 R33 K98 ["Value"]
      840 SETTABLEKS                       R33 R32 K89 ["assetType"]
      842 GETTABLEKS                       R34 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      844 GETTABLEN                        R33 R34 4
      845 SETTABLEKS                       R33 R32 K92 ["id"]
      847 GETTABLEKS                       R33 R27 K59 ["AVATAR_LOOK_BUNDLE_ID"]
      849 SETTABLEKS                       R33 R32 K182 ["bundleId"]
      851 SETTABLE                         R32 R30 R31
      852 GETTABLEKS                       R32 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      854 GETTABLEN                        R31 R32 5
      855 DUPTABLE                         R32 K187 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "RightArm", ["id"], ["bundleId"]}]
      856 GETIMPORT                        R33 K166 [Enum.AssetType.RightArm]
      858 GETTABLEKS                       R33 R33 K98 ["Value"]
      860 SETTABLEKS                       R33 R32 K89 ["assetType"]
      862 GETTABLEKS                       R34 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      864 GETTABLEN                        R33 R34 5
      865 SETTABLEKS                       R33 R32 K92 ["id"]
      867 GETTABLEKS                       R33 R27 K59 ["AVATAR_LOOK_BUNDLE_ID"]
      869 SETTABLEKS                       R33 R32 K182 ["bundleId"]
      871 SETTABLE                         R32 R30 R31
      872 GETTABLEKS                       R32 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      874 GETTABLEN                        R31 R32 6
      875 DUPTABLE                         R32 K188 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "RightLeg", ["id"], ["bundleId"]}]
      876 GETIMPORT                        R33 K170 [Enum.AssetType.RightLeg]
      878 GETTABLEKS                       R33 R33 K98 ["Value"]
      880 SETTABLEKS                       R33 R32 K89 ["assetType"]
      882 GETTABLEKS                       R34 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      884 GETTABLEN                        R33 R34 6
      885 SETTABLEKS                       R33 R32 K92 ["id"]
      887 GETTABLEKS                       R33 R27 K59 ["AVATAR_LOOK_BUNDLE_ID"]
      889 SETTABLEKS                       R33 R32 K182 ["bundleId"]
      891 SETTABLE                         R32 R30 R31
      892 SETTABLEKS                       R30 R27 K189 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
      894 NEWTABLE                         R30 1 0
      896 GETTABLEKS                       R31 R27 K59 ["AVATAR_LOOK_BUNDLE_ID"]
      898 DUPTABLE                         R32 K193 [{["id"], ["name"], ["bundleType"] = 1, ["creatorType"] = "User", ["assetsInBundle"]}]
      899 GETTABLEKS                       R33 R27 K59 ["AVATAR_LOOK_BUNDLE_ID"]
      901 SETTABLEKS                       R33 R32 K92 ["id"]
      903 LOADK                            R34 K174 ["Test Bundle"]
      904 GETTABLEKS                       R36 R27 K59 ["AVATAR_LOOK_BUNDLE_ID"]
      906 FASTCALL1                        TOSTRING R36 ; [+2]
      907 GETIMPORT                        R35 K176 [tostring]
      909 CALL                             R35 1 1
      910 CONCAT                           R33 R34 R35
      911 SETTABLEKS                       R33 R32 K190 ["name"]
      913 NEWTABLE                         R33 0 6
      915 DUPTABLE                         R34 K195 [{["assetType"], ["id"], ["isIncluded"] = True}]
      916 GETIMPORT                        R35 K150 [Enum.AssetType.DynamicHead]
      918 GETTABLEKS                       R35 R35 K98 ["Value"]
      920 SETTABLEKS                       R35 R34 K89 ["assetType"]
      922 GETTABLEKS                       R36 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      924 GETTABLEN                        R35 R36 1
      925 SETTABLEKS                       R35 R34 K92 ["id"]
      927 DUPTABLE                         R35 K195 [{["assetType"], ["id"], ["isIncluded"] = True}]
      928 GETIMPORT                        R36 K154 [Enum.AssetType.Torso]
      930 GETTABLEKS                       R36 R36 K98 ["Value"]
      932 SETTABLEKS                       R36 R35 K89 ["assetType"]
      934 GETTABLEKS                       R37 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      936 GETTABLEN                        R36 R37 2
      937 SETTABLEKS                       R36 R35 K92 ["id"]
      939 DUPTABLE                         R36 K195 [{["assetType"], ["id"], ["isIncluded"] = True}]
      940 GETIMPORT                        R37 K158 [Enum.AssetType.LeftArm]
      942 GETTABLEKS                       R37 R37 K98 ["Value"]
      944 SETTABLEKS                       R37 R36 K89 ["assetType"]
      946 GETTABLEKS                       R38 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      948 GETTABLEN                        R37 R38 3
      949 SETTABLEKS                       R37 R36 K92 ["id"]
      951 DUPTABLE                         R37 K195 [{["assetType"], ["id"], ["isIncluded"] = True}]
      952 GETIMPORT                        R38 K162 [Enum.AssetType.LeftLeg]
      954 GETTABLEKS                       R38 R38 K98 ["Value"]
      956 SETTABLEKS                       R38 R37 K89 ["assetType"]
      958 GETTABLEKS                       R39 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      960 GETTABLEN                        R38 R39 4
      961 SETTABLEKS                       R38 R37 K92 ["id"]
      963 DUPTABLE                         R38 K195 [{["assetType"], ["id"], ["isIncluded"] = True}]
      964 GETIMPORT                        R39 K166 [Enum.AssetType.RightArm]
      966 GETTABLEKS                       R39 R39 K98 ["Value"]
      968 SETTABLEKS                       R39 R38 K89 ["assetType"]
      970 GETTABLEKS                       R40 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      972 GETTABLEN                        R39 R40 5
      973 SETTABLEKS                       R39 R38 K92 ["id"]
      975 DUPTABLE                         R39 K195 [{["assetType"], ["id"], ["isIncluded"] = True}]
      976 GETIMPORT                        R40 K170 [Enum.AssetType.RightLeg]
      978 GETTABLEKS                       R40 R40 K98 ["Value"]
      980 SETTABLEKS                       R40 R39 K89 ["assetType"]
      982 GETTABLEKS                       R41 R27 K60 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      984 GETTABLEN                        R40 R41 6
      985 SETTABLEKS                       R40 R39 K92 ["id"]
      987 SETLIST                          R33 R34 6 [1]
      989 SETTABLEKS                       R33 R32 K192 ["assetsInBundle"]
      991 SETTABLE                         R32 R30 R31
      992 SETTABLEKS                       R30 R27 K196 ["MOCK_AVATAR_LOOK_BUNDLE_DATA"]
      994 DUPCLOSURE                       R30 K197 [PROTO_1]
      995 CAPTURE                          VAL R0
      996 SETTABLEKS                       R30 R27 K198 ["findTextInCoreGui"]
      998 DUPCLOSURE                       R30 K199 [PROTO_2]
      999 CAPTURE                          VAL R27
     1000 SETTABLEKS                       R30 R27 K200 ["isConfirmItemsStage"]
     1002 DUPCLOSURE                       R30 K201 [PROTO_3]
     1003 CAPTURE                          VAL R27
     1004 SETTABLEKS                       R30 R27 K202 ["isEditInfoStage"]
     1006 DUPCLOSURE                       R30 K203 [PROTO_4]
     1007 CAPTURE                          VAL R27
     1008 SETTABLEKS                       R30 R27 K204 ["isFailureStage"]
     1010 DUPCLOSURE                       R30 K205 [PROTO_5]
     1011 CAPTURE                          VAL R27
     1012 SETTABLEKS                       R30 R27 K206 ["isSuccessStage"]
     1014 GETIMPORT                        R30 K209 [UDim2.fromOffset]
     1016 LOADN                            R31 40
     1017 LOADN                            R32 40
     1018 CALL                             R30 2 1
     1019 GETIMPORT                        R31 K209 [UDim2.fromOffset]
     1021 LOADN                            R32 400
     1022 LOADN                            R33 600
     1023 CALL                             R31 2 1
     1024 DUPCLOSURE                       R32 K210 [PROTO_6]
     1025 CAPTURE                          VAL R31
     1026 DUPCLOSURE                       R33 K211 [PROTO_7]
     1027 DUPCLOSURE                       R34 K212 [PROTO_9]
     1028 CAPTURE                          VAL R0
     1029 CAPTURE                          VAL R30
     1030 CAPTURE                          VAL R6
     1031 CAPTURE                          VAL R7
     1032 SETTABLEKS                       R34 R27 K213 ["clickContinueButton"]
     1034 DUPCLOSURE                       R34 K214 [PROTO_11]
     1035 CAPTURE                          VAL R0
     1036 CAPTURE                          VAL R30
     1037 CAPTURE                          VAL R6
     1038 CAPTURE                          VAL R7
     1039 SETTABLEKS                       R34 R27 K215 ["clickBackButton"]
     1041 DUPCLOSURE                       R34 K216 [PROTO_14]
     1042 CAPTURE                          VAL R0
     1043 CAPTURE                          VAL R7
     1044 CAPTURE                          VAL R31
     1045 CAPTURE                          VAL R32
     1046 CAPTURE                          VAL R30
     1047 CAPTURE                          VAL R6
     1048 SETTABLEKS                       R34 R27 K217 ["changeCreator"]
     1050 DUPCLOSURE                       R34 K218 [PROTO_16]
     1051 CAPTURE                          VAL R27
     1052 CAPTURE                          VAL R0
     1053 CAPTURE                          VAL R7
     1054 CAPTURE                          VAL R32
     1055 CAPTURE                          VAL R30
     1056 CAPTURE                          VAL R6
     1057 SETTABLEKS                       R34 R27 K219 ["toggleItem"]
     1059 DUPCLOSURE                       R34 K220 [PROTO_17]
     1060 CAPTURE                          VAL R0
     1061 CAPTURE                          VAL R32
     1062 CAPTURE                          VAL R30
     1063 CAPTURE                          VAL R7
     1064 SETTABLEKS                       R34 R27 K221 ["changeColor"]
     1066 DUPCLOSURE                       R34 K222 [PROTO_21]
     1067 CAPTURE                          VAL R27
     1068 CAPTURE                          VAL R0
     1069 CAPTURE                          VAL R6
     1070 CAPTURE                          VAL R30
     1071 CAPTURE                          VAL R7
     1072 SETTABLEKS                       R34 R27 K223 ["enterName"]
     1074 DUPCLOSURE                       R34 K224 [PROTO_22]
     1075 CAPTURE                          VAL R27
     1076 SETTABLEKS                       R34 R27 K225 ["checkErrorBannerText"]
     1078 DUPCLOSURE                       R34 K226 [PROTO_23]
     1079 CAPTURE                          VAL R7
     1080 CAPTURE                          VAL R0
     1081 SETTABLEKS                       R34 R27 K227 ["queryErrorBannerCloseButton"]
     1083 DUPCLOSURE                       R34 K228 [PROTO_25]
     1084 CAPTURE                          VAL R27
     1085 CAPTURE                          VAL R32
     1086 CAPTURE                          VAL R0
     1087 CAPTURE                          VAL R30
     1088 CAPTURE                          VAL R6
     1089 CAPTURE                          VAL R7
     1090 SETTABLEKS                       R34 R27 K229 ["clickErrorBannerDismiss"]
     1092 DUPCLOSURE                       R34 K230 [PROTO_27]
     1093 CAPTURE                          VAL R0
     1094 CAPTURE                          VAL R30
     1095 CAPTURE                          VAL R6
     1096 CAPTURE                          VAL R7
     1097 SETTABLEKS                       R34 R27 K231 ["openErrorDialog"]
     1099 DUPCLOSURE                       R34 K232 [PROTO_28]
     1100 CAPTURE                          VAL R27
     1101 SETTABLEKS                       R34 R27 K233 ["checkErrorDialogText"]
     1103 DUPCLOSURE                       R34 K234 [PROTO_29]
     1104 CAPTURE                          VAL R27
     1105 SETTABLEKS                       R34 R27 K235 ["isItemInDetailsList"]
     1107 DUPCLOSURE                       R34 K236 [PROTO_30]
     1108 CAPTURE                          VAL R27
     1109 CAPTURE                          VAL R14
     1110 SETTABLEKS                       R34 R27 K237 ["getUserEquippedItems"]
     1112 DUPCLOSURE                       R34 K238 [PROTO_31]
     1113 CAPTURE                          VAL R27
     1114 SETTABLEKS                       R34 R27 K239 ["getMixedCreatorMakeupLookEquippedItems"]
     1116 DUPCLOSURE                       R34 K240 [PROTO_32]
     1117 CAPTURE                          VAL R27
     1118 CAPTURE                          VAL R14
     1119 SETTABLEKS                       R34 R27 K241 ["getGroupEquippedItems"]
     1121 DUPCLOSURE                       R34 K242 [PROTO_33]
     1122 CAPTURE                          VAL R27
     1123 CAPTURE                          VAL R12
     1124 CAPTURE                          VAL R15
     1125 CAPTURE                          VAL R9
     1126 SETTABLEKS                       R34 R27 K243 ["getExpectedLook"]
     1128 LOADNIL                          R34
     1129 SETTABLEKS                       R34 R27 K244 ["lookCreationInfo"]
     1131 DUPCLOSURE                       R34 K245 [PROTO_34]
     1132 CAPTURE                          VAL R27
     1133 DUPCLOSURE                       R35 K246 [PROTO_36]
     1134 CAPTURE                          VAL R8
     1135 CAPTURE                          VAL R1
     1136 CAPTURE                          VAL R11
     1137 CAPTURE                          VAL R27
     1138 CAPTURE                          VAL R13
     1139 DUPCLOSURE                       R36 K247 [PROTO_38]
     1140 CAPTURE                          VAL R8
     1141 CAPTURE                          VAL R1
     1142 CAPTURE                          VAL R11
     1143 CAPTURE                          VAL R27
     1144 CAPTURE                          VAL R35
     1145 DUPCLOSURE                       R37 K248 [PROTO_40]
     1146 CAPTURE                          VAL R8
     1147 DUPCLOSURE                       R38 K249 [PROTO_42]
     1148 CAPTURE                          VAL R8
     1149 CAPTURE                          VAL R1
     1150 CAPTURE                          VAL R11
     1151 CAPTURE                          VAL R27
     1152 CAPTURE                          VAL R35
     1153 DUPCLOSURE                       R39 K250 [PROTO_44]
     1154 CAPTURE                          VAL R8
     1155 CAPTURE                          VAL R11
     1156 CAPTURE                          VAL R1
     1157 CAPTURE                          VAL R27
     1158 CAPTURE                          VAL R35
     1159 DUPCLOSURE                       R40 K251 [PROTO_45]
     1160 CAPTURE                          VAL R13
     1161 CAPTURE                          VAL R36
     1162 CAPTURE                          VAL R37
     1163 CAPTURE                          VAL R38
     1164 CAPTURE                          VAL R39
     1165 CAPTURE                          VAL R35
     1166 SETTABLEKS                       R40 R27 K252 ["createMockLookComposerRequestInternal"]
     1168 DUPCLOSURE                       R40 K253 [PROTO_48]
     1169 CAPTURE                          VAL R0
     1170 CAPTURE                          VAL R24
     1171 CAPTURE                          VAL R5
     1172 CAPTURE                          VAL R3
     1173 CAPTURE                          VAL R23
     1174 CAPTURE                          VAL R19
     1175 CAPTURE                          VAL R25
     1176 CAPTURE                          VAL R22
     1177 CAPTURE                          VAL R26
     1178 CAPTURE                          VAL R6
     1179 CAPTURE                          VAL R7
     1180 SETTABLEKS                       R40 R27 K254 ["createLookComposerDialogTest"]
     1182 DUPCLOSURE                       R40 K255 [PROTO_52]
     1183 CAPTURE                          VAL R27
     1184 CAPTURE                          VAL R16
     1185 CAPTURE                          VAL R5
     1186 CAPTURE                          VAL R18
     1187 CAPTURE                          VAL R20
     1188 CAPTURE                          VAL R21
     1189 SETTABLEKS                       R40 R27 K256 ["lookCreationTest"]
     1191 DUPCLOSURE                       R40 K257 [PROTO_56]
     1192 CAPTURE                          VAL R27
     1193 CAPTURE                          VAL R16
     1194 CAPTURE                          VAL R5
     1195 CAPTURE                          VAL R18
     1196 CAPTURE                          VAL R20
     1197 CAPTURE                          VAL R21
     1198 SETTABLEKS                       R40 R27 K258 ["lookCreationStartFromAssetIdTest"]
     1200 DUPCLOSURE                       R40 K259 [PROTO_58]
     1201 CAPTURE                          VAL R0
     1202 CAPTURE                          VAL R32
     1203 CAPTURE                          VAL R30
     1204 CAPTURE                          VAL R6
     1205 CAPTURE                          VAL R7
     1206 SETTABLEKS                       R40 R27 K260 ["clickAddAssetIdButton"]
     1208 DUPCLOSURE                       R40 K261 [PROTO_61]
     1209 CAPTURE                          VAL R0
     1210 CAPTURE                          VAL R7
     1211 CAPTURE                          VAL R6
     1212 SETTABLEKS                       R40 R27 K262 ["openAssetImportDialog"]
     1214 DUPCLOSURE                       R40 K263 [PROTO_62]
     1215 CAPTURE                          VAL R7
     1216 CAPTURE                          VAL R0
     1217 DUPCLOSURE                       R41 K264 [PROTO_63]
     1218 CAPTURE                          VAL R7
     1219 CAPTURE                          VAL R0
     1220 DUPCLOSURE                       R42 K265 [PROTO_66]
     1221 CAPTURE                          VAL R7
     1222 CAPTURE                          VAL R0
     1223 CAPTURE                          VAL R6
     1224 CAPTURE                          VAL R30
     1225 SETTABLEKS                       R42 R27 K266 ["typeTextInImportDialog"]
     1227 DUPCLOSURE                       R42 K267 [PROTO_68]
     1228 CAPTURE                          VAL R27
     1229 CAPTURE                          VAL R7
     1230 CAPTURE                          VAL R0
     1231 CAPTURE                          VAL R6
     1232 SETTABLEKS                       R42 R27 K268 ["enterTextInImportDialog"]
     1234 DUPCLOSURE                       R42 K269 [PROTO_69]
     1235 CAPTURE                          VAL R7
     1236 CAPTURE                          VAL R0
     1237 SETTABLEKS                       R42 R27 K270 ["getImportDialogText"]
     1239 DUPCLOSURE                       R42 K271 [PROTO_70]
     1240 CAPTURE                          VAL R7
     1241 CAPTURE                          VAL R0
     1242 SETTABLEKS                       R42 R27 K272 ["isImportDialogAddItemButtonEnabled"]
     1244 DUPCLOSURE                       R42 K273 [PROTO_71]
     1245 CAPTURE                          VAL R17
     1246 CAPTURE                          VAL R7
     1247 CAPTURE                          VAL R0
     1248 SETTABLEKS                       R42 R27 K274 ["clickAddItemButtonImportDialog"]
     1250 DUPCLOSURE                       R42 K275 [PROTO_73]
     1251 CAPTURE                          VAL R9
     1252 CAPTURE                          VAL R27
     1253 SETTABLEKS                       R42 R27 K276 ["addAssetIdsToImportDialog"]
     1255 DUPCLOSURE                       R42 K277 [PROTO_74]
     1256 CAPTURE                          VAL R27
     1257 SETTABLEKS                       R42 R27 K278 ["loadItemsIntoImportDialog"]
     1259 DUPCLOSURE                       R42 K279 [PROTO_75]
     1260 CAPTURE                          VAL R7
     1261 CAPTURE                          VAL R0
     1262 SETTABLEKS                       R42 R27 K280 ["getImportItemPriceText"]
     1264 DUPCLOSURE                       R42 K281 [PROTO_77]
     1265 CAPTURE                          VAL R7
     1266 CAPTURE                          VAL R0
     1267 CAPTURE                          VAL R9
     1268 SETTABLEKS                       R42 R27 K282 ["getImportDialogItemNames"]
     1270 DUPCLOSURE                       R42 K283 [PROTO_78]
     1271 CAPTURE                          VAL R29
     1272 SETTABLEKS                       R42 R27 K284 ["getMockItemName"]
     1274 DUPCLOSURE                       R42 K285 [PROTO_79]
     1275 CAPTURE                          VAL R27
     1276 SETTABLEKS                       R42 R27 K286 ["hasImportNothingFoundError"]
     1278 DUPCLOSURE                       R42 K287 [PROTO_80]
     1279 CAPTURE                          VAL R27
     1280 SETTABLEKS                       R42 R27 K288 ["hasImportNothingFoundErrorForIds"]
     1282 DUPCLOSURE                       R42 K289 [PROTO_82]
     1283 CAPTURE                          VAL R0
     1284 CAPTURE                          VAL R30
     1285 CAPTURE                          VAL R6
     1286 CAPTURE                          VAL R7
     1287 SETTABLEKS                       R42 R27 K290 ["clickAddItemsButtonImportDialog"]
     1289 DUPCLOSURE                       R42 K291 [PROTO_85]
     1290 CAPTURE                          VAL R0
     1291 CAPTURE                          VAL R7
     1292 CAPTURE                          VAL R6
     1293 SETTABLEKS                       R42 R27 K292 ["openLookComposerDialog"]
     1295 DUPCLOSURE                       R42 K293 [PROTO_86]
     1296 CAPTURE                          VAL R27
     1297 SETTABLEKS                       R42 R27 K294 ["importMarketplaceItems"]
     1299 RETURN                           R27 1
