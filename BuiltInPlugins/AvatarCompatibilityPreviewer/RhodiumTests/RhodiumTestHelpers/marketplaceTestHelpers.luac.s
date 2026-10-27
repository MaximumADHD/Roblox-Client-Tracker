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
       10 JUMPIF                           R2 ; [+2]
       11 GETUPVAL                         R3 1
       12 GETTABLE                         R2 R3 R0
       13 RETURN                           R2 1

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
       33 GETUPVAL                         R5 4
       34 JUMPIFNOT                        R5 ; [+17]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K2 ["Url"]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K11 ["lookPreviewUrl"]
       41 CALL                             R6 0 1
       42 JUMPIFNOTEQ                      R5 R6 ; [+9]
       44 JUMPIFNOT                        R2 ; [+7]
       45 GETTABLEKS                       R5 R2 K12 ["validationType"]
       47 JUMPIFNOTEQKS                    R5 K13 ["default"] ; [+4]
       49 GETUPVAL                         R5 4
       50 SETTABLEKS                       R5 R4 K14 ["eligibilityChecks"]
       52 NEWTABLE                         R5 0 0
       54 GETTABLEKS                       R6 R2 K15 ["assets"]
       56 LOADNIL                          R7
       57 LOADNIL                          R8
       58 FORGPREP                         R6
       59 GETTABLEKS                       R12 R10 K5 ["id"]
       61 GETUPVAL                         R14 3
       62 GETTABLEKS                       R14 R14 K16 ["MOCK_ITEM_DATA"]
       64 GETTABLE                         R13 R14 R12
       65 JUMPIFNOT                        R13 ; [+2]
       66 MOVE                             R11 R13
       67 JUMP                             ; [+7]
       68 GETUPVAL                         R14 3
       69 GETTABLEKS                       R14 R14 K17 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
       71 GETTABLE                         R11 R14 R12
       72 JUMPIF                           R11 ; [+2]
       73 GETUPVAL                         R14 5
       74 GETTABLE                         R11 R14 R12
       75 GETTABLEKS                       R12 R10 K18 ["bundleId"]
       77 JUMPIF                           R12 ; [+4]
       78 MOVE                             R12 R11
       79 JUMPIFNOT                        R12 ; [+2]
       80 GETTABLEKS                       R12 R11 K18 ["bundleId"]
       82 JUMPIFNOT                        R12 ; [+53]
       83 GETTABLE                         R13 R5 R12
       84 JUMPIF                           R13 ; [+51]
       85 GETUPVAL                         R14 3
       86 GETTABLEKS                       R14 R14 K19 ["MOCK_AVATAR_LOOK_BUNDLE_DATA"]
       88 GETTABLE                         R13 R14 R12
       89 GETTABLEKS                       R14 R13 K20 ["creatorType"]
       91 DUPTABLE                         R17 K30 [{["id"], ["name"], ["itemType"] = "Bundle", ["bundleType"], ["assetsInBundle"], ["creator"], ["priceInRobux"] = 30, ["priceInfo"]}]
       92 SETTABLEKS                       R12 R17 K5 ["id"]
       94 GETTABLEKS                       R18 R13 K21 ["name"]
       96 SETTABLEKS                       R18 R17 K21 ["name"]
       98 GETTABLEKS                       R18 R13 K24 ["bundleType"]
      100 SETTABLEKS                       R18 R17 K24 ["bundleType"]
      102 GETTABLEKS                       R18 R13 K25 ["assetsInBundle"]
      104 SETTABLEKS                       R18 R17 K25 ["assetsInBundle"]
      106 DUPTABLE                         R18 K35 [{["id"], ["name"] = "Test Creator", ["type"], ["hasVerifiedBadge"] = False}]
      107 JUMPIFNOTEQKS                    R14 K36 ["User"] ; [+6]
      109 GETUPVAL                         R19 6
      110 GETTABLEKS                       R19 R19 K37 ["getUserId"]
      112 CALL                             R19 0 1
      113 JUMP                             ; [+3]
      114 GETUPVAL                         R19 3
      115 GETTABLEKS                       R19 R19 K38 ["GROUP_ID"]
      117 SETTABLEKS                       R19 R18 K5 ["id"]
      119 SETTABLEKS                       R14 R18 K32 ["type"]
      121 SETTABLEKS                       R18 R17 K26 ["creator"]
      123 GETUPVAL                         R19 7
      124 GETTABLE                         R18 R19 R12
      125 SETTABLEKS                       R18 R17 K29 ["priceInfo"]
      127 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
      129 MOVE                             R16 R3
      130 GETIMPORT                        R15 K41 [table.insert]
      132 CALL                             R15 2 0
      133 LOADB                            R15 1
      134 SETTABLE                         R15 R5 R12
      135 JUMP                             ; [+51]
      136 JUMPIF                           R12 ; [+50]
      137 GETTABLEKS                       R13 R11 K42 ["assetType"]
      139 GETTABLEKS                       R14 R11 K20 ["creatorType"]
      141 DUPTABLE                         R17 K44 [{["id"], ["name"], ["itemType"] = "Asset", ["creator"], ["assetType"], ["priceInRobux"] = 30, ["priceInfo"]}]
      142 GETTABLEKS                       R18 R10 K5 ["id"]
      144 SETTABLEKS                       R18 R17 K5 ["id"]
      146 LOADK                            R19 K45 ["Test Item"]
      147 GETTABLEKS                       R21 R10 K5 ["id"]
      149 FASTCALL1                        TOSTRING R21 ; [+2]
      150 GETIMPORT                        R20 K47 [tostring]
      152 CALL                             R20 1 1
      153 CONCAT                           R18 R19 R20
      154 SETTABLEKS                       R18 R17 K21 ["name"]
      156 DUPTABLE                         R18 K35 [{["id"], ["name"] = "Test Creator", ["type"], ["hasVerifiedBadge"] = False}]
      157 JUMPIFNOTEQKS                    R14 K36 ["User"] ; [+6]
      159 GETUPVAL                         R19 6
      160 GETTABLEKS                       R19 R19 K37 ["getUserId"]
      162 CALL                             R19 0 1
      163 JUMP                             ; [+3]
      164 GETUPVAL                         R19 3
      165 GETTABLEKS                       R19 R19 K38 ["GROUP_ID"]
      167 SETTABLEKS                       R19 R18 K5 ["id"]
      169 SETTABLEKS                       R14 R18 K32 ["type"]
      171 SETTABLEKS                       R18 R17 K26 ["creator"]
      173 SETTABLEKS                       R13 R17 K42 ["assetType"]
      175 GETUPVAL                         R19 7
      176 GETTABLEKS                       R20 R10 K5 ["id"]
      178 GETTABLE                         R18 R19 R20
      179 SETTABLEKS                       R18 R17 K29 ["priceInfo"]
      181 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
      183 MOVE                             R16 R3
      184 GETIMPORT                        R15 K41 [table.insert]
      186 CALL                             R15 2 0
      187 FORGLOOP                         R6 2 ; [-129]
      189 MOVE                             R6 R0
      190 DUPTABLE                         R7 K48 [{"Body"}]
      191 GETUPVAL                         R8 1
      192 MOVE                             R10 R4
      193 NAMECALL                         R8 R8 K49 ["JSONEncode"]
      195 CALL                             R8 2 1
      196 SETTABLEKS                       R8 R7 K0 ["Body"]
      198 CALL                             R6 1 0
      199 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

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
        0 GETTABLEKS                       R1 R0 K0 ["eligibilityChecks"]
        2 SETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R0 K1 ["lookApiPriceInfo"]
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 SETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R0 K2 ["failPreview"]
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R1 2
       13 GETUPVAL                         R2 3
       14 SETTABLEKS                       R2 R1 K3 ["requestInternal"]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R1 R0 K4 ["failPreviewUnlocalized"]
       19 JUMPIFNOT                        R1 ; [+5]
       20 GETUPVAL                         R1 2
       21 GETUPVAL                         R2 4
       22 SETTABLEKS                       R2 R1 K3 ["requestInternal"]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R1 R0 K5 ["failValidation"]
       27 JUMPIFNOT                        R1 ; [+5]
       28 GETUPVAL                         R1 2
       29 GETUPVAL                         R2 5
       30 SETTABLEKS                       R2 R1 K3 ["requestInternal"]
       32 RETURN                           R0 0
       33 GETTABLEKS                       R1 R0 K6 ["failCreation"]
       35 JUMPIFNOT                        R1 ; [+5]
       36 GETUPVAL                         R1 2
       37 GETUPVAL                         R2 6
       38 SETTABLEKS                       R2 R1 K3 ["requestInternal"]
       40 RETURN                           R0 0
       41 GETUPVAL                         R1 2
       42 GETUPVAL                         R2 7
       43 SETTABLEKS                       R2 R1 K3 ["requestInternal"]
       45 RETURN                           R0 0

PROTO_46:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K0 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
        9 GETTABLE                         R7 R8 R6
       10 JUMPIFNOT                        R7 ; [+10]
       11 GETUPVAL                         R10 0
       12 GETTABLEKS                       R10 R10 K0 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
       14 GETTABLE                         R9 R10 R6
       15 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       17 MOVE                             R8 R1
       18 GETIMPORT                        R7 K3 [table.insert]
       20 CALL                             R7 2 0
       21 FORGLOOP                         R2 2 ; [-16]
       23 RETURN                           R1 1

PROTO_47:
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

PROTO_48:
        0 DUPTABLE                         R0 K2 [{"getBatchAssetDetailsAsync", "getBatchBundleDetailsAsync"}]
        1 DUPCLOSURE                       R1 K3 [PROTO_46]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["getBatchAssetDetailsAsync"]
        5 DUPCLOSURE                       R1 K4 [PROTO_47]
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["getBatchBundleDetailsAsync"]
        9 RETURN                           R0 1

PROTO_49:
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
       25 DUPTABLE                         R8 K11 [{"providers"}]
       26 NEWTABLE                         R9 0 3
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R10 R10 K0 ["createElement"]
       31 GETUPVAL                         R11 5
       32 GETTABLEKS                       R11 R11 K12 ["Provider"]
       34 DUPTABLE                         R12 K14 [{"value"}]
       35 GETUPVAL                         R13 6
       36 SETTABLEKS                       R13 R12 K13 ["value"]
       38 CALL                             R10 2 1
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R11 R11 K0 ["createElement"]
       42 GETUPVAL                         R12 7
       43 GETTABLEKS                       R12 R12 K12 ["Provider"]
       45 DUPTABLE                         R13 K14 [{"value"}]
       46 GETUPVAL                         R14 8
       47 CALL                             R14 0 1
       48 SETTABLEKS                       R14 R13 K13 ["value"]
       50 CALL                             R11 2 1
       51 GETUPVAL                         R12 0
       52 GETTABLEKS                       R12 R12 K0 ["createElement"]
       54 GETUPVAL                         R13 9
       55 GETTABLEKS                       R13 R13 K12 ["Provider"]
       57 DUPTABLE                         R14 K14 [{"value"}]
       58 GETUPVAL                         R15 10
       59 CALL                             R15 0 1
       60 SETTABLEKS                       R15 R14 K13 ["value"]
       62 CALL                             R12 2 -1
       63 SETLIST                          R9 R10 -1 [1]
       65 SETTABLEKS                       R9 R8 K10 ["providers"]
       67 DUPTABLE                         R9 K16 [{"Dialog"}]
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K0 ["createElement"]
       71 GETUPVAL                         R11 11
       72 DUPTABLE                         R12 K20 [{"equippedItems", "dialogLookType", "onClose"}]
       73 GETUPVAL                         R13 12
       74 SETTABLEKS                       R13 R12 K17 ["equippedItems"]
       76 GETUPVAL                         R13 13
       77 SETTABLEKS                       R13 R12 K18 ["dialogLookType"]
       79 GETUPVAL                         R13 14
       80 SETTABLEKS                       R13 R12 K19 ["onClose"]
       82 CALL                             R10 2 1
       83 SETTABLEKS                       R10 R9 K15 ["Dialog"]
       85 CALL                             R6 3 -1
       86 CALL                             R4 -1 1
       87 SETTABLEKS                       R4 R3 K7 ["Content"]
       89 CALL                             R0 3 -1
       90 RETURN                           R0 -1

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["render"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_51:
        0 GETIMPORT                        R4 K2 [Instance.new]
        2 LOADK                            R5 K3 ["ScreenGui"]
        3 CALL                             R4 1 1
        4 LOADK                            R5 K4 ["TestContainer"]
        5 SETTABLEKS                       R5 R4 K5 ["Name"]
        7 GETUPVAL                         R5 0
        8 SETTABLEKS                       R5 R4 K6 ["Parent"]
       10 GETUPVAL                         R5 1
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K7 ["createMockAvatarEditorService"]
       15 CALL                             R6 0 1
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          VAL R5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          VAL R6
       24 CAPTURE                          UPVAL U8
       25 CAPTURE                          UPVAL U9
       26 CAPTURE                          UPVAL U10
       27 CAPTURE                          UPVAL U11
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 GETUPVAL                         R8 12
       33 GETTABLEKS                       R8 R8 K8 ["act"]
       35 NEWCLOSURE                       R9 P1
       36 CAPTURE                          UPVAL U13
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R7
       39 CALL                             R8 1 0
       40 RETURN                           R4 1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createMockAvatarEditorService"]
        3 CALL                             R1 0 1
        4 DUPTABLE                         R2 K7 [{["showLookSaveMenu"] = True, ["showCreateAvatarLook"] = True, ["showCreateMakeupLook"] = True, ["canCreateAvatarLook"] = True, ["canCreateMakeupLook"] = True}]
        5 DUPTABLE                         R3 K9 [{["canCreateLook"] = True}]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K10 ["withPreviewerAndLizard"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 DUPTABLE                         R6 K12 [{"wrapAppContexts"}]
       12 NEWTABLE                         R7 0 3
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R8 R8 K13 ["createElement"]
       17 GETUPVAL                         R9 3
       18 GETTABLEKS                       R9 R9 K14 ["Provider"]
       20 DUPTABLE                         R10 K16 [{"value"}]
       21 SETTABLEKS                       R1 R10 K15 ["value"]
       23 CALL                             R8 2 1
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R9 R9 K13 ["createElement"]
       27 GETUPVAL                         R10 4
       28 GETTABLEKS                       R10 R10 K17 ["Context"]
       30 GETTABLEKS                       R10 R10 K14 ["Provider"]
       32 DUPTABLE                         R11 K16 [{"value"}]
       33 SETTABLEKS                       R2 R11 K15 ["value"]
       35 CALL                             R9 2 1
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R10 R10 K13 ["createElement"]
       39 GETUPVAL                         R11 5
       40 GETTABLEKS                       R11 R11 K17 ["Context"]
       42 GETTABLEKS                       R11 R11 K14 ["Provider"]
       44 DUPTABLE                         R12 K16 [{"value"}]
       45 SETTABLEKS                       R3 R12 K15 ["value"]
       47 CALL                             R10 2 -1
       48 SETLIST                          R7 R8 -1 [1]
       50 SETTABLEKS                       R7 R6 K11 ["wrapAppContexts"]
       52 CALL                             R4 2 -1
       53 RETURN                           R4 -1

PROTO_54:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createMockAvatarEditorService"]
        3 CALL                             R1 0 1
        4 DUPTABLE                         R2 K7 [{["showLookSaveMenu"] = True, ["showCreateAvatarLook"] = True, ["showCreateMakeupLook"] = True, ["canCreateAvatarLook"] = True, ["canCreateMakeupLook"] = True}]
        5 DUPTABLE                         R3 K9 [{["canCreateLook"] = True}]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K10 ["withTestPreviewer"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 DUPTABLE                         R6 K12 [{"wrapAppContexts"}]
       12 NEWTABLE                         R7 0 3
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R8 R8 K13 ["createElement"]
       17 GETUPVAL                         R9 3
       18 GETTABLEKS                       R9 R9 K14 ["Provider"]
       20 DUPTABLE                         R10 K16 [{"value"}]
       21 SETTABLEKS                       R1 R10 K15 ["value"]
       23 CALL                             R8 2 1
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R9 R9 K13 ["createElement"]
       27 GETUPVAL                         R10 4
       28 GETTABLEKS                       R10 R10 K17 ["Context"]
       30 GETTABLEKS                       R10 R10 K14 ["Provider"]
       32 DUPTABLE                         R11 K16 [{"value"}]
       33 SETTABLEKS                       R2 R11 K15 ["value"]
       35 CALL                             R9 2 1
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R10 R10 K13 ["createElement"]
       39 GETUPVAL                         R11 5
       40 GETTABLEKS                       R11 R11 K17 ["Context"]
       42 GETTABLEKS                       R11 R11 K14 ["Provider"]
       44 DUPTABLE                         R12 K16 [{"value"}]
       45 SETTABLEKS                       R3 R12 K15 ["value"]
       47 CALL                             R10 2 -1
       48 SETLIST                          R7 R8 -1 [1]
       50 SETTABLEKS                       R7 R6 K11 ["wrapAppContexts"]
       52 CALL                             R4 2 -1
       53 RETURN                           R4 -1

PROTO_56:
        0 LOADK                            R3 K0 ["GuiButton"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 LOADK                            R3 K0 ["GuiButton"]
        7 LOADB                            R4 1
        8 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
       10 CALL                             R1 3 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 LOADK                            R4 K0 ["GuiButton"]
       13 NAMECALL                         R2 R1 K1 ["IsA"]
       15 CALL                             R2 2 1
       16 JUMPIFNOT                        R2 ; [+1]
       17 RETURN                           R1 1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_57:
        0 LOADNIL                          R0
        1 LOADN                            R1 -1
        2 LOADB                            R2 0
        3 LOADB                            R3 0
        4 GETUPVAL                         R4 0
        5 NAMECALL                         R4 R4 K0 ["GetDescendants"]
        7 CALL                             R4 1 3
        8 FORGPREP                         R4
        9 GETTABLEKS                       R9 R8 K1 ["Name"]
       11 JUMPIFNOTEQKS                    R9 K2 ["AddAssetId"] ; [+50]
       13 LOADB                            R2 1
       14 LOADK                            R12 K3 ["GuiButton"]
       15 NAMECALL                         R10 R8 K4 ["IsA"]
       17 CALL                             R10 2 1
       18 JUMPIFNOT                        R10 ; [+2]
       19 MOVE                             R9 R8
       20 JUMP                             ; [+14]
       21 LOADK                            R12 K3 ["GuiButton"]
       22 LOADB                            R13 1
       23 NAMECALL                         R10 R8 K5 ["FindFirstChildWhichIsA"]
       25 CALL                             R10 3 1
       26 JUMPIFNOT                        R10 ; [+7]
       27 LOADK                            R13 K3 ["GuiButton"]
       28 NAMECALL                         R11 R10 K4 ["IsA"]
       30 CALL                             R11 2 1
       31 JUMPIFNOT                        R11 ; [+2]
       32 MOVE                             R9 R10
       33 JUMP                             ; [+1]
       34 LOADNIL                          R9
       35 JUMPIFEQKNIL                     R9 ; [+26]
       37 LOADB                            R3 1
       38 LOADK                            R12 K6 ["ScreenGui"]
       39 NAMECALL                         R10 R9 K7 ["FindFirstAncestorWhichIsA"]
       41 CALL                             R10 2 1
       42 JUMPIFEQKNIL                     R10 ; [+4]
       44 GETTABLEKS                       R11 R10 K8 ["Enabled"]
       46 JUMPIFNOT                        R11 ; [+15]
       47 GETTABLEKS                       R12 R9 K9 ["AbsoluteSize"]
       49 GETTABLEKS                       R12 R12 K10 ["X"]
       51 GETTABLEKS                       R13 R9 K9 ["AbsoluteSize"]
       53 GETTABLEKS                       R13 R13 K11 ["Y"]
       55 MUL                              R11 R12 R13
       56 JUMPIFEQKNIL                     R0 ; [+3]
       58 JUMPIFNOTLE                      R1 R11 ; [+3]
       60 MOVE                             R0 R9
       61 MOVE                             R1 R11
       62 FORGLOOP                         R4 2 ; [-54]
       64 JUMPIF                           R2 ; [+4]
       65 GETIMPORT                        R4 K13 [error]
       67 LOADK                            R5 K14 ["AddAssetId button not found on SimpleSelectScreen"]
       68 CALL                             R4 1 0
       69 JUMPIFNOT                        R3 ; [+2]
       70 JUMPIFNOTEQKNIL                  R0 ; [+5]
       72 GETIMPORT                        R4 K13 [error]
       74 LOADK                            R5 K15 ["Clickable button not found inside AddAssetId node"]
       75 CALL                             R4 1 0
       76 GETUPVAL                         R4 1
       77 MOVE                             R5 R0
       78 DUPTABLE                         R6 K20 [{["resizeAncestors"] = True, ["forceResize"] = True, ["raiseZIndex"] = True}]
       79 CALL                             R4 2 0
       80 GETUPVAL                         R4 2
       81 GETTABLEKS                       R4 R4 K21 ["act"]
       83 GETUPVAL                         R5 3
       84 GETTABLEKS                       R5 R5 K22 ["deferYield"]
       86 CALL                             R4 1 0
       87 RETURN                           R0 0

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

PROTO_62:
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

PROTO_63:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Size"]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K1 ["fireEvent"]
        7 GETTABLEKS                       R0 R0 K2 ["click"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_72:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_71]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["enterTextInImportDialog"]
        9 GETIMPORT                        R3 K5 [table.concat]
       11 MOVE                             R4 R1
       12 LOADK                            R5 K6 [","]
       13 CALL                             R3 2 -1
       14 CALL                             R2 -1 0
       15 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["openAssetImportDialog"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["addAssetIdsToImportDialog"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["queryByTestId"]
        7 LOADK                            R2 K2 ["import-item-price-%*"]
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K3 ["format"]
       11 CALL                             R2 2 1
       12 CALL                             R1 1 1
       13 JUMPIFEQKNIL                     R1 ; [+9]
       15 LOADK                            R5 K4 ["TextLabel"]
       16 NAMECALL                         R3 R1 K5 ["IsA"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+3]
       20 GETTABLEKS                       R2 R1 K6 ["Text"]
       22 RETURN                           R2 1
       23 LOADNIL                          R2
       24 RETURN                           R2 1

PROTO_75:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["queryByTestId"]
        7 LOADK                            R2 K2 ["look-item-price-%*"]
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K3 ["format"]
       11 CALL                             R2 2 1
       12 CALL                             R1 1 1
       13 JUMPIFEQKNIL                     R1 ; [+9]
       15 LOADK                            R5 K4 ["TextLabel"]
       16 NAMECALL                         R3 R1 K5 ["IsA"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+3]
       20 GETTABLEKS                       R2 R1 K6 ["Text"]
       22 RETURN                           R2 1
       23 LOADNIL                          R2
       24 RETURN                           R2 1

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
        6 LOADK                            R4 K0 ["No mock asset details for id %*"]
        7 MOVE                             R6 R0
        8 NAMECALL                         R4 R4 K1 ["format"]
       10 CALL                             R4 2 1
       11 FASTCALL2                        ASSERT R3 R4 ; [+3]
       13 GETIMPORT                        R2 K3 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R2 R1 K4 ["Name"]
       18 RETURN                           R2 1

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
      153 GETTABLEKS                       R20 R20 K34 ["ContextStack"]
      155 CALL                             R19 1 1
      156 GETIMPORT                        R20 K10 [require]
      158 GETTABLEKS                       R21 R2 K20 ["Src"]
      160 GETTABLEKS                       R21 R21 K32 ["Components"]
      162 GETTABLEKS                       R21 R21 K35 ["HumanoidServiceContext"]
      164 CALL                             R20 1 1
      165 GETIMPORT                        R21 K10 [require]
      167 GETTABLEKS                       R22 R2 K20 ["Src"]
      169 GETTABLEKS                       R22 R22 K32 ["Components"]
      171 GETTABLEKS                       R22 R22 K36 ["LookContext"]
      173 CALL                             R21 1 1
      174 GETIMPORT                        R22 K10 [require]
      176 GETTABLEKS                       R23 R2 K20 ["Src"]
      178 GETTABLEKS                       R23 R23 K32 ["Components"]
      180 GETTABLEKS                       R23 R23 K37 ["DEPRECATED_LookContext"]
      182 CALL                             R22 1 1
      183 GETIMPORT                        R23 K10 [require]
      185 GETTABLEKS                       R24 R2 K20 ["Src"]
      187 GETTABLEKS                       R24 R24 K32 ["Components"]
      189 GETTABLEKS                       R24 R24 K38 ["PlayersServiceContext"]
      191 CALL                             R23 1 1
      192 GETTABLEKS                       R24 R4 K39 ["TestHelpers"]
      194 GETTABLEKS                       R24 R24 K40 ["provideMockContext"]
      196 GETIMPORT                        R25 K10 [require]
      198 GETTABLEKS                       R26 R2 K29 ["RhodiumTests"]
      200 GETTABLEKS                       R26 R26 K41 ["createMockContext"]
      202 CALL                             R25 1 1
      203 GETIMPORT                        R26 K10 [require]
      205 GETIMPORT                        R27 K6 [script]
      207 GETTABLEKS                       R27 R27 K42 ["Parent"]
      209 GETTABLEKS                       R27 R27 K43 ["HumanoidServiceContextMock"]
      211 CALL                             R26 1 1
      212 GETIMPORT                        R27 K10 [require]
      214 GETIMPORT                        R28 K6 [script]
      216 GETTABLEKS                       R28 R28 K42 ["Parent"]
      218 GETTABLEKS                       R28 R28 K44 ["PlayersServiceContextMock"]
      220 CALL                             R27 1 1
      221 NEWTABLE                         R28 128 0
      223 LOADK                            R29 K45 ["Something unexpected went wrong with the look preview request, please try again later or file a bug report."]
      224 SETTABLEKS                       R29 R28 K46 ["LOOK_PREVIEW_FAILURE_MESSAGE"]
      226 LOADK                            R29 K47 ["Some items are not valid."]
      227 SETTABLEKS                       R29 R28 K48 ["LOOK_VALIDATION_FAILURE_MESSAGE"]
      229 LOADK                            R29 K49 ["Your look creation failed because the text was moderated."]
      230 SETTABLEKS                       R29 R28 K50 ["LOOK_CREATION_FAILURE_MESSAGE"]
      232 LOADK                            R29 K51 ["TestGroupName"]
      233 SETTABLEKS                       R29 R28 K52 ["DEFAULT_GROUP_NAME"]
      235 LOADK                            R29 K53 ["Test Name"]
      236 SETTABLEKS                       R29 R28 K54 ["VALID_NAME"]
      238 LOADK                            R29 K55 [122333]
      239 SETTABLEKS                       R29 R28 K56 ["GROUP_ID"]
      241 NEWTABLE                         R29 0 5
      243 LOADN                            R30 111
      244 LOADN                            R31 222
      245 LOADN                            R32 333
      246 LOADN                            R33 444
      247 LOADN                            R34 555
      248 SETLIST                          R29 R30 5 [1]
      250 SETTABLEKS                       R29 R28 K57 ["USER_ASSET_IDS"]
      252 NEWTABLE                         R29 0 5
      254 LOADN                            R30 666
      255 LOADN                            R31 777
      256 LOADN                            R32 888
      257 LOADN                            R33 999
      258 LOADN                            R34 0
      259 SETLIST                          R29 R30 5 [1]
      261 SETTABLEKS                       R29 R28 K58 ["GROUP_ASSET_IDS"]
      263 LOADN                            R29 1111
      264 SETTABLEKS                       R29 R28 K59 ["AVATAR_LOOK_ASSET_ID"]
      266 LOADN                            R29 60
      267 SETTABLEKS                       R29 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      269 NEWTABLE                         R29 0 6
      271 LOADN                            R30 2001
      272 LOADN                            R31 2002
      273 LOADN                            R32 2003
      274 LOADN                            R33 2004
      275 LOADN                            R34 2005
      276 LOADN                            R35 2006
      277 SETLIST                          R29 R30 6 [1]
      279 SETTABLEKS                       R29 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      281 DUPTABLE                         R29 K74 [{["Shirt"] = 3001, ["TShirt"] = 3002, ["Sweater"] = 3003, ["Shorts"] = 3004, ["Pants"] = 3005, ["DressSkirt"] = 3006}]
      282 SETTABLEKS                       R29 R28 K75 ["CLOTHING_ASSET_IDS"]
      284 GETTABLEKS                       R29 R28 K75 ["CLOTHING_ASSET_IDS"]
      286 NEWTABLE                         R30 0 6
      288 DUPTABLE                         R31 K80 [{["id"], ["assetType"], ["paletteKey"] = "Shirts"}]
      289 GETTABLEKS                       R32 R29 K62 ["Shirt"]
      291 SETTABLEKS                       R32 R31 K76 ["id"]
      293 GETIMPORT                        R32 K84 [Enum.AssetType.ShirtAccessory]
      295 SETTABLEKS                       R32 R31 K77 ["assetType"]
      297 DUPTABLE                         R32 K86 [{["id"], ["assetType"], ["paletteKey"] = "TShirts"}]
      298 GETTABLEKS                       R33 R29 K64 ["TShirt"]
      300 SETTABLEKS                       R33 R32 K76 ["id"]
      302 GETIMPORT                        R33 K88 [Enum.AssetType.TShirtAccessory]
      304 SETTABLEKS                       R33 R32 K77 ["assetType"]
      306 DUPTABLE                         R33 K90 [{["id"], ["assetType"], ["paletteKey"] = "Sweaters"}]
      307 GETTABLEKS                       R34 R29 K66 ["Sweater"]
      309 SETTABLEKS                       R34 R33 K76 ["id"]
      311 GETIMPORT                        R34 K92 [Enum.AssetType.SweaterAccessory]
      313 SETTABLEKS                       R34 R33 K77 ["assetType"]
      315 DUPTABLE                         R34 K93 [{["id"], ["assetType"], ["paletteKey"] = "Shorts"}]
      316 GETTABLEKS                       R35 R29 K68 ["Shorts"]
      318 SETTABLEKS                       R35 R34 K76 ["id"]
      320 GETIMPORT                        R35 K95 [Enum.AssetType.ShortsAccessory]
      322 SETTABLEKS                       R35 R34 K77 ["assetType"]
      324 DUPTABLE                         R35 K96 [{["id"], ["assetType"], ["paletteKey"] = "Pants"}]
      325 GETTABLEKS                       R36 R29 K70 ["Pants"]
      327 SETTABLEKS                       R36 R35 K76 ["id"]
      329 GETIMPORT                        R36 K98 [Enum.AssetType.PantsAccessory]
      331 SETTABLEKS                       R36 R35 K77 ["assetType"]
      333 DUPTABLE                         R36 K100 [{["id"], ["assetType"], ["paletteKey"] = "Skirts"}]
      334 GETTABLEKS                       R37 R29 K72 ["DressSkirt"]
      336 SETTABLEKS                       R37 R36 K76 ["id"]
      338 GETIMPORT                        R37 K102 [Enum.AssetType.DressSkirtAccessory]
      340 SETTABLEKS                       R37 R36 K77 ["assetType"]
      342 SETLIST                          R30 R31 6 [1]
      344 DUPTABLE                         R31 K119 [{["price"] = 50, ["priceStatus"] = "Free", ["priceBehindStatus"] = 1500, ["priceBehindOffSale"] = 1600, ["lowestPrice"] = 100, ["priceBehindLowestPrice"] = 1700, ["avatarLookAssetPrice"] = 75, ["bundlePrice"] = 30}]
      345 SETTABLEKS                       R31 R28 K120 ["MOCK_ITEM_PRICES"]
      347 LOADN                            R31 250
      348 SETTABLEKS                       R31 R28 K121 ["LOOK_API_PRICE_INFO_PRICE"]
      350 LOADK                            R31 K122 ["Studio.Test.MarketplaceImport.OffSale:[]"]
      351 SETTABLEKS                       R31 R28 K123 ["OFF_SALE_TEXT"]
      353 GETIMPORT                        R31 K126 [utf8.char]
      355 LOADK                            R32 K127 [57346]
      356 CALL                             R31 1 1
      357 DUPCLOSURE                       R32 K128 [PROTO_0]
      358 CAPTURE                          VAL R31
      359 SETTABLEKS                       R32 R28 K129 ["robuxPriceText"]
      361 NEWTABLE                         R32 16 0
      363 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      365 GETTABLEN                        R33 R34 1
      366 DUPTABLE                         R34 K133 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Eyebrows", ["id"]}]
      367 GETIMPORT                        R35 K135 [Enum.AssetType.EyebrowAccessory]
      369 GETTABLEKS                       R35 R35 K136 ["Value"]
      371 SETTABLEKS                       R35 R34 K77 ["assetType"]
      373 GETTABLEKS                       R36 R28 K57 ["USER_ASSET_IDS"]
      375 GETTABLEN                        R35 R36 1
      376 SETTABLEKS                       R35 R34 K76 ["id"]
      378 SETTABLE                         R34 R32 R33
      379 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      381 GETTABLEN                        R33 R34 2
      382 DUPTABLE                         R34 K138 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Eyelashes", ["id"]}]
      383 GETIMPORT                        R35 K140 [Enum.AssetType.EyelashAccessory]
      385 GETTABLEKS                       R35 R35 K136 ["Value"]
      387 SETTABLEKS                       R35 R34 K77 ["assetType"]
      389 GETTABLEKS                       R36 R28 K57 ["USER_ASSET_IDS"]
      391 GETTABLEN                        R35 R36 2
      392 SETTABLEKS                       R35 R34 K76 ["id"]
      394 SETTABLE                         R34 R32 R33
      395 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      397 GETTABLEN                        R33 R34 3
      398 DUPTABLE                         R34 K142 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "FaceMakeup", ["id"]}]
      399 GETIMPORT                        R35 K143 [Enum.AssetType.FaceMakeup]
      401 GETTABLEKS                       R35 R35 K136 ["Value"]
      403 SETTABLEKS                       R35 R34 K77 ["assetType"]
      405 GETTABLEKS                       R36 R28 K57 ["USER_ASSET_IDS"]
      407 GETTABLEN                        R35 R36 3
      408 SETTABLEKS                       R35 R34 K76 ["id"]
      410 SETTABLE                         R34 R32 R33
      411 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      413 GETTABLEN                        R33 R34 4
      414 DUPTABLE                         R34 K145 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LipMakeup", ["id"]}]
      415 GETIMPORT                        R35 K146 [Enum.AssetType.LipMakeup]
      417 GETTABLEKS                       R35 R35 K136 ["Value"]
      419 SETTABLEKS                       R35 R34 K77 ["assetType"]
      421 GETTABLEKS                       R36 R28 K57 ["USER_ASSET_IDS"]
      423 GETTABLEN                        R35 R36 4
      424 SETTABLEKS                       R35 R34 K76 ["id"]
      426 SETTABLE                         R34 R32 R33
      427 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      429 GETTABLEN                        R33 R34 5
      430 DUPTABLE                         R34 K148 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "EyeMakeup", ["id"]}]
      431 GETIMPORT                        R35 K149 [Enum.AssetType.EyeMakeup]
      433 GETTABLEKS                       R35 R35 K136 ["Value"]
      435 SETTABLEKS                       R35 R34 K77 ["assetType"]
      437 GETTABLEKS                       R36 R28 K57 ["USER_ASSET_IDS"]
      439 GETTABLEN                        R35 R36 5
      440 SETTABLEKS                       R35 R34 K76 ["id"]
      442 SETTABLE                         R34 R32 R33
      443 GETTABLEKS                       R34 R28 K58 ["GROUP_ASSET_IDS"]
      445 GETTABLEN                        R33 R34 1
      446 DUPTABLE                         R34 K151 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "Eyebrows", ["id"]}]
      447 GETIMPORT                        R35 K135 [Enum.AssetType.EyebrowAccessory]
      449 GETTABLEKS                       R35 R35 K136 ["Value"]
      451 SETTABLEKS                       R35 R34 K77 ["assetType"]
      453 GETTABLEKS                       R36 R28 K58 ["GROUP_ASSET_IDS"]
      455 GETTABLEN                        R35 R36 1
      456 SETTABLEKS                       R35 R34 K76 ["id"]
      458 SETTABLE                         R34 R32 R33
      459 GETTABLEKS                       R34 R28 K58 ["GROUP_ASSET_IDS"]
      461 GETTABLEN                        R33 R34 2
      462 DUPTABLE                         R34 K152 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "Eyelashes", ["id"]}]
      463 GETIMPORT                        R35 K140 [Enum.AssetType.EyelashAccessory]
      465 GETTABLEKS                       R35 R35 K136 ["Value"]
      467 SETTABLEKS                       R35 R34 K77 ["assetType"]
      469 GETTABLEKS                       R36 R28 K58 ["GROUP_ASSET_IDS"]
      471 GETTABLEN                        R35 R36 2
      472 SETTABLEKS                       R35 R34 K76 ["id"]
      474 SETTABLE                         R34 R32 R33
      475 GETTABLEKS                       R34 R28 K58 ["GROUP_ASSET_IDS"]
      477 GETTABLEN                        R33 R34 3
      478 DUPTABLE                         R34 K153 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "FaceMakeup", ["id"]}]
      479 GETIMPORT                        R35 K143 [Enum.AssetType.FaceMakeup]
      481 GETTABLEKS                       R35 R35 K136 ["Value"]
      483 SETTABLEKS                       R35 R34 K77 ["assetType"]
      485 GETTABLEKS                       R36 R28 K58 ["GROUP_ASSET_IDS"]
      487 GETTABLEN                        R35 R36 3
      488 SETTABLEKS                       R35 R34 K76 ["id"]
      490 SETTABLE                         R34 R32 R33
      491 GETTABLEKS                       R34 R28 K58 ["GROUP_ASSET_IDS"]
      493 GETTABLEN                        R33 R34 4
      494 DUPTABLE                         R34 K154 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "EyeMakeup", ["id"]}]
      495 GETIMPORT                        R35 K146 [Enum.AssetType.LipMakeup]
      497 GETTABLEKS                       R35 R35 K136 ["Value"]
      499 SETTABLEKS                       R35 R34 K77 ["assetType"]
      501 GETTABLEKS                       R36 R28 K58 ["GROUP_ASSET_IDS"]
      503 GETTABLEN                        R35 R36 4
      504 SETTABLEKS                       R35 R34 K76 ["id"]
      506 SETTABLE                         R34 R32 R33
      507 GETTABLEKS                       R34 R28 K58 ["GROUP_ASSET_IDS"]
      509 GETTABLEN                        R33 R34 5
      510 DUPTABLE                         R34 K155 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "LipMakeup", ["id"]}]
      511 GETIMPORT                        R35 K149 [Enum.AssetType.EyeMakeup]
      513 GETTABLEKS                       R35 R35 K136 ["Value"]
      515 SETTABLEKS                       R35 R34 K77 ["assetType"]
      517 GETTABLEKS                       R36 R28 K58 ["GROUP_ASSET_IDS"]
      519 GETTABLEN                        R35 R36 5
      520 SETTABLEKS                       R35 R34 K76 ["id"]
      522 SETTABLE                         R34 R32 R33
      523 SETTABLEKS                       R32 R28 K156 ["MOCK_ITEM_DATA"]
      525 NEWTABLE                         R32 16 0
      527 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      529 GETTABLEN                        R33 R34 1
      530 DUPTABLE                         R34 K168 [{["Id"], ["Name"] = "User Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["Price"]}]
      531 GETTABLEKS                       R36 R28 K57 ["USER_ASSET_IDS"]
      533 GETTABLEN                        R35 R36 1
      534 SETTABLEKS                       R35 R34 K157 ["Id"]
      536 GETIMPORT                        R35 K135 [Enum.AssetType.EyebrowAccessory]
      538 GETTABLEKS                       R35 R35 K158 ["Name"]
      540 SETTABLEKS                       R35 R34 K82 ["AssetType"]
      542 GETTABLEKS                       R35 R28 K120 ["MOCK_ITEM_PRICES"]
      544 GETTABLEKS                       R35 R35 K103 ["price"]
      546 SETTABLEKS                       R35 R34 K167 ["Price"]
      548 SETTABLE                         R34 R32 R33
      549 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      551 GETTABLEN                        R33 R34 2
      552 DUPTABLE                         R34 K171 [{["Id"], ["Name"] = "User Asset 2", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["PriceStatus"], ["Price"]}]
      553 GETTABLEKS                       R36 R28 K57 ["USER_ASSET_IDS"]
      555 GETTABLEN                        R35 R36 2
      556 SETTABLEKS                       R35 R34 K157 ["Id"]
      558 GETIMPORT                        R35 K140 [Enum.AssetType.EyelashAccessory]
      560 GETTABLEKS                       R35 R35 K158 ["Name"]
      562 SETTABLEKS                       R35 R34 K82 ["AssetType"]
      564 GETTABLEKS                       R35 R28 K120 ["MOCK_ITEM_PRICES"]
      566 GETTABLEKS                       R35 R35 K105 ["priceStatus"]
      568 SETTABLEKS                       R35 R34 K170 ["PriceStatus"]
      570 GETTABLEKS                       R35 R28 K120 ["MOCK_ITEM_PRICES"]
      572 GETTABLEKS                       R35 R35 K107 ["priceBehindStatus"]
      574 SETTABLEKS                       R35 R34 K167 ["Price"]
      576 SETTABLE                         R34 R32 R33
      577 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      579 GETTABLEN                        R33 R34 3
      580 DUPTABLE                         R34 K175 [{["Id"], ["Name"] = "User Asset 3", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["SaleLocationType"] = "NotApplicable", ["Price"]}]
      581 GETTABLEKS                       R36 R28 K57 ["USER_ASSET_IDS"]
      583 GETTABLEN                        R35 R36 3
      584 SETTABLEKS                       R35 R34 K157 ["Id"]
      586 GETIMPORT                        R35 K143 [Enum.AssetType.FaceMakeup]
      588 GETTABLEKS                       R35 R35 K158 ["Name"]
      590 SETTABLEKS                       R35 R34 K82 ["AssetType"]
      592 GETTABLEKS                       R35 R28 K120 ["MOCK_ITEM_PRICES"]
      594 GETTABLEKS                       R35 R35 K109 ["priceBehindOffSale"]
      596 SETTABLEKS                       R35 R34 K167 ["Price"]
      598 SETTABLE                         R34 R32 R33
      599 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      601 GETTABLEN                        R33 R34 4
      602 DUPTABLE                         R34 K178 [{["Id"], ["Name"] = "User Asset 4", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["LowestPrice"], ["Price"]}]
      603 GETTABLEKS                       R36 R28 K57 ["USER_ASSET_IDS"]
      605 GETTABLEN                        R35 R36 4
      606 SETTABLEKS                       R35 R34 K157 ["Id"]
      608 GETIMPORT                        R35 K146 [Enum.AssetType.LipMakeup]
      610 GETTABLEKS                       R35 R35 K158 ["Name"]
      612 SETTABLEKS                       R35 R34 K82 ["AssetType"]
      614 GETTABLEKS                       R35 R28 K120 ["MOCK_ITEM_PRICES"]
      616 GETTABLEKS                       R35 R35 K111 ["lowestPrice"]
      618 SETTABLEKS                       R35 R34 K177 ["LowestPrice"]
      620 GETTABLEKS                       R35 R28 K120 ["MOCK_ITEM_PRICES"]
      622 GETTABLEKS                       R35 R35 K113 ["priceBehindLowestPrice"]
      624 SETTABLEKS                       R35 R34 K167 ["Price"]
      626 SETTABLE                         R34 R32 R33
      627 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      629 GETTABLEN                        R33 R34 5
      630 DUPTABLE                         R34 K180 [{["Id"], ["Name"] = "User Asset 5", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      631 GETTABLEKS                       R36 R28 K57 ["USER_ASSET_IDS"]
      633 GETTABLEN                        R35 R36 5
      634 SETTABLEKS                       R35 R34 K157 ["Id"]
      636 GETIMPORT                        R35 K149 [Enum.AssetType.EyeMakeup]
      638 GETTABLEKS                       R35 R35 K158 ["Name"]
      640 SETTABLEKS                       R35 R34 K82 ["AssetType"]
      642 SETTABLE                         R34 R32 R33
      643 GETTABLEKS                       R33 R28 K59 ["AVATAR_LOOK_ASSET_ID"]
      645 DUPTABLE                         R34 K182 [{["Id"], ["Name"] = "Avatar Look Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["Price"]}]
      646 GETTABLEKS                       R35 R28 K59 ["AVATAR_LOOK_ASSET_ID"]
      648 SETTABLEKS                       R35 R34 K157 ["Id"]
      650 GETIMPORT                        R35 K84 [Enum.AssetType.ShirtAccessory]
      652 GETTABLEKS                       R35 R35 K158 ["Name"]
      654 SETTABLEKS                       R35 R34 K82 ["AssetType"]
      656 GETTABLEKS                       R35 R28 K120 ["MOCK_ITEM_PRICES"]
      658 GETTABLEKS                       R35 R35 K115 ["avatarLookAssetPrice"]
      660 SETTABLEKS                       R35 R34 K167 ["Price"]
      662 SETTABLE                         R34 R32 R33
      663 GETTABLEKS                       R34 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      665 GETTABLEN                        R33 R34 1
      666 DUPTABLE                         R34 K184 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      667 GETTABLEKS                       R36 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      669 GETTABLEN                        R35 R36 1
      670 SETTABLEKS                       R35 R34 K157 ["Id"]
      672 GETIMPORT                        R35 K186 [Enum.AssetType.DynamicHead]
      674 GETTABLEKS                       R35 R35 K158 ["Name"]
      676 SETTABLEKS                       R35 R34 K82 ["AssetType"]
      678 SETTABLE                         R34 R32 R33
      679 GETTABLEKS                       R34 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      681 GETTABLEN                        R33 R34 2
      682 DUPTABLE                         R34 K188 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 2", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      683 GETTABLEKS                       R36 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      685 GETTABLEN                        R35 R36 2
      686 SETTABLEKS                       R35 R34 K157 ["Id"]
      688 GETIMPORT                        R35 K190 [Enum.AssetType.Torso]
      690 GETTABLEKS                       R35 R35 K158 ["Name"]
      692 SETTABLEKS                       R35 R34 K82 ["AssetType"]
      694 SETTABLE                         R34 R32 R33
      695 GETTABLEKS                       R34 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      697 GETTABLEN                        R33 R34 3
      698 DUPTABLE                         R34 K192 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 3", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      699 GETTABLEKS                       R36 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      701 GETTABLEN                        R35 R36 3
      702 SETTABLEKS                       R35 R34 K157 ["Id"]
      704 GETIMPORT                        R35 K194 [Enum.AssetType.LeftArm]
      706 GETTABLEKS                       R35 R35 K158 ["Name"]
      708 SETTABLEKS                       R35 R34 K82 ["AssetType"]
      710 SETTABLE                         R34 R32 R33
      711 GETTABLEKS                       R34 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      713 GETTABLEN                        R33 R34 4
      714 DUPTABLE                         R34 K196 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 4", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      715 GETTABLEKS                       R36 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      717 GETTABLEN                        R35 R36 4
      718 SETTABLEKS                       R35 R34 K157 ["Id"]
      720 GETIMPORT                        R35 K198 [Enum.AssetType.LeftLeg]
      722 GETTABLEKS                       R35 R35 K158 ["Name"]
      724 SETTABLEKS                       R35 R34 K82 ["AssetType"]
      726 SETTABLE                         R34 R32 R33
      727 GETTABLEKS                       R34 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      729 GETTABLEN                        R33 R34 5
      730 DUPTABLE                         R34 K200 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 5", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      731 GETTABLEKS                       R36 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      733 GETTABLEN                        R35 R36 5
      734 SETTABLEKS                       R35 R34 K157 ["Id"]
      736 GETIMPORT                        R35 K202 [Enum.AssetType.RightArm]
      738 GETTABLEKS                       R35 R35 K158 ["Name"]
      740 SETTABLEKS                       R35 R34 K82 ["AssetType"]
      742 SETTABLE                         R34 R32 R33
      743 GETTABLEKS                       R34 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      745 GETTABLEN                        R33 R34 6
      746 DUPTABLE                         R34 K204 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 6", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      747 GETTABLEKS                       R36 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      749 GETTABLEN                        R35 R36 6
      750 SETTABLEKS                       R35 R34 K157 ["Id"]
      752 GETIMPORT                        R35 K206 [Enum.AssetType.RightLeg]
      754 GETTABLEKS                       R35 R35 K158 ["Name"]
      756 SETTABLEKS                       R35 R34 K82 ["AssetType"]
      758 SETTABLE                         R34 R32 R33
      759 NEWTABLE                         R33 0 0
      761 MOVE                             R34 R30
      762 LOADNIL                          R35
      763 LOADNIL                          R36
      764 FORGPREP                         R34
      765 GETTABLEKS                       R39 R38 K76 ["id"]
      767 DUPTABLE                         R40 K207 [{["Id"], ["Name"], ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      768 GETTABLEKS                       R41 R38 K76 ["id"]
      770 SETTABLEKS                       R41 R40 K157 ["Id"]
      772 LOADK                            R41 K208 ["Clothing Asset %*"]
      773 GETTABLEKS                       R43 R38 K77 ["assetType"]
      775 GETTABLEKS                       R43 R43 K158 ["Name"]
      777 NAMECALL                         R41 R41 K209 ["format"]
      779 CALL                             R41 2 1
      780 SETTABLEKS                       R41 R40 K158 ["Name"]
      782 GETTABLEKS                       R41 R38 K77 ["assetType"]
      784 GETTABLEKS                       R41 R41 K158 ["Name"]
      786 SETTABLEKS                       R41 R40 K82 ["AssetType"]
      788 SETTABLE                         R40 R32 R39
      789 GETTABLEKS                       R39 R38 K76 ["id"]
      791 DUPTABLE                         R40 K210 [{["creatorType"] = "User", ["assetType"], ["paletteKey"], ["id"]}]
      792 GETTABLEKS                       R41 R38 K77 ["assetType"]
      794 GETTABLEKS                       R41 R41 K136 ["Value"]
      796 SETTABLEKS                       R41 R40 K77 ["assetType"]
      798 GETTABLEKS                       R41 R38 K78 ["paletteKey"]
      800 SETTABLEKS                       R41 R40 K78 ["paletteKey"]
      802 GETTABLEKS                       R41 R38 K76 ["id"]
      804 SETTABLEKS                       R41 R40 K76 ["id"]
      806 SETTABLE                         R40 R33 R39
      807 FORGLOOP                         R34 2 ; [-43]
      809 SETTABLEKS                       R32 R28 K211 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
      811 NEWTABLE                         R34 1 0
      813 GETTABLEKS                       R35 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      815 DUPTABLE                         R36 K213 [{["Id"], ["Name"], ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["Price"], ["BundledItems"]}]
      816 GETTABLEKS                       R37 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      818 SETTABLEKS                       R37 R36 K157 ["Id"]
      820 LOADK                            R38 K214 ["Test Bundle"]
      821 GETTABLEKS                       R40 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      823 FASTCALL1                        TOSTRING R40 ; [+2]
      824 GETIMPORT                        R39 K216 [tostring]
      826 CALL                             R39 1 1
      827 CONCAT                           R37 R38 R39
      828 SETTABLEKS                       R37 R36 K158 ["Name"]
      830 GETTABLEKS                       R37 R28 K120 ["MOCK_ITEM_PRICES"]
      832 GETTABLEKS                       R37 R37 K117 ["bundlePrice"]
      834 SETTABLEKS                       R37 R36 K167 ["Price"]
      836 NEWTABLE                         R37 0 6
      838 DUPTABLE                         R38 K217 [{"Id"}]
      839 GETTABLEKS                       R40 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      841 GETTABLEN                        R39 R40 1
      842 SETTABLEKS                       R39 R38 K157 ["Id"]
      844 DUPTABLE                         R39 K217 [{"Id"}]
      845 GETTABLEKS                       R41 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      847 GETTABLEN                        R40 R41 2
      848 SETTABLEKS                       R40 R39 K157 ["Id"]
      850 DUPTABLE                         R40 K217 [{"Id"}]
      851 GETTABLEKS                       R42 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      853 GETTABLEN                        R41 R42 3
      854 SETTABLEKS                       R41 R40 K157 ["Id"]
      856 DUPTABLE                         R41 K217 [{"Id"}]
      857 GETTABLEKS                       R43 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      859 GETTABLEN                        R42 R43 4
      860 SETTABLEKS                       R42 R41 K157 ["Id"]
      862 DUPTABLE                         R42 K217 [{"Id"}]
      863 GETTABLEKS                       R44 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      865 GETTABLEN                        R43 R44 5
      866 SETTABLEKS                       R43 R42 K157 ["Id"]
      868 DUPTABLE                         R43 K217 [{"Id"}]
      869 GETTABLEKS                       R45 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      871 GETTABLEN                        R44 R45 6
      872 SETTABLEKS                       R44 R43 K157 ["Id"]
      874 SETLIST                          R37 R38 6 [1]
      876 SETTABLEKS                       R37 R36 K212 ["BundledItems"]
      878 SETTABLE                         R36 R34 R35
      879 SETTABLEKS                       R34 R28 K218 ["MOCK_AVATAR_EDITOR_SERVICE_BUNDLE_DETAILS"]
      881 NEWTABLE                         R34 8 0
      883 GETTABLEKS                       R35 R28 K59 ["AVATAR_LOOK_ASSET_ID"]
      885 DUPTABLE                         R36 K219 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Shirts", ["id"]}]
      886 GETIMPORT                        R37 K84 [Enum.AssetType.ShirtAccessory]
      888 GETTABLEKS                       R37 R37 K136 ["Value"]
      890 SETTABLEKS                       R37 R36 K77 ["assetType"]
      892 GETTABLEKS                       R37 R28 K59 ["AVATAR_LOOK_ASSET_ID"]
      894 SETTABLEKS                       R37 R36 K76 ["id"]
      896 SETTABLE                         R36 R34 R35
      897 GETTABLEKS                       R36 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      899 GETTABLEN                        R35 R36 1
      900 DUPTABLE                         R36 K222 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "HeadBodyPart", ["id"], ["bundleId"]}]
      901 GETIMPORT                        R37 K186 [Enum.AssetType.DynamicHead]
      903 GETTABLEKS                       R37 R37 K136 ["Value"]
      905 SETTABLEKS                       R37 R36 K77 ["assetType"]
      907 GETTABLEKS                       R38 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      909 GETTABLEN                        R37 R38 1
      910 SETTABLEKS                       R37 R36 K76 ["id"]
      912 GETTABLEKS                       R37 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      914 SETTABLEKS                       R37 R36 K221 ["bundleId"]
      916 SETTABLE                         R36 R34 R35
      917 GETTABLEKS                       R36 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      919 GETTABLEN                        R35 R36 2
      920 DUPTABLE                         R36 K223 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Torso", ["id"], ["bundleId"]}]
      921 GETIMPORT                        R37 K190 [Enum.AssetType.Torso]
      923 GETTABLEKS                       R37 R37 K136 ["Value"]
      925 SETTABLEKS                       R37 R36 K77 ["assetType"]
      927 GETTABLEKS                       R38 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      929 GETTABLEN                        R37 R38 2
      930 SETTABLEKS                       R37 R36 K76 ["id"]
      932 GETTABLEKS                       R37 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      934 SETTABLEKS                       R37 R36 K221 ["bundleId"]
      936 SETTABLE                         R36 R34 R35
      937 GETTABLEKS                       R36 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      939 GETTABLEN                        R35 R36 3
      940 DUPTABLE                         R36 K224 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LeftArm", ["id"], ["bundleId"]}]
      941 GETIMPORT                        R37 K194 [Enum.AssetType.LeftArm]
      943 GETTABLEKS                       R37 R37 K136 ["Value"]
      945 SETTABLEKS                       R37 R36 K77 ["assetType"]
      947 GETTABLEKS                       R38 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      949 GETTABLEN                        R37 R38 3
      950 SETTABLEKS                       R37 R36 K76 ["id"]
      952 GETTABLEKS                       R37 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      954 SETTABLEKS                       R37 R36 K221 ["bundleId"]
      956 SETTABLE                         R36 R34 R35
      957 GETTABLEKS                       R36 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      959 GETTABLEN                        R35 R36 4
      960 DUPTABLE                         R36 K225 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LeftLeg", ["id"], ["bundleId"]}]
      961 GETIMPORT                        R37 K198 [Enum.AssetType.LeftLeg]
      963 GETTABLEKS                       R37 R37 K136 ["Value"]
      965 SETTABLEKS                       R37 R36 K77 ["assetType"]
      967 GETTABLEKS                       R38 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      969 GETTABLEN                        R37 R38 4
      970 SETTABLEKS                       R37 R36 K76 ["id"]
      972 GETTABLEKS                       R37 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      974 SETTABLEKS                       R37 R36 K221 ["bundleId"]
      976 SETTABLE                         R36 R34 R35
      977 GETTABLEKS                       R36 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      979 GETTABLEN                        R35 R36 5
      980 DUPTABLE                         R36 K226 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "RightArm", ["id"], ["bundleId"]}]
      981 GETIMPORT                        R37 K202 [Enum.AssetType.RightArm]
      983 GETTABLEKS                       R37 R37 K136 ["Value"]
      985 SETTABLEKS                       R37 R36 K77 ["assetType"]
      987 GETTABLEKS                       R38 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      989 GETTABLEN                        R37 R38 5
      990 SETTABLEKS                       R37 R36 K76 ["id"]
      992 GETTABLEKS                       R37 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      994 SETTABLEKS                       R37 R36 K221 ["bundleId"]
      996 SETTABLE                         R36 R34 R35
      997 GETTABLEKS                       R36 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      999 GETTABLEN                        R35 R36 6
     1000 DUPTABLE                         R36 K227 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "RightLeg", ["id"], ["bundleId"]}]
     1001 GETIMPORT                        R37 K206 [Enum.AssetType.RightLeg]
     1003 GETTABLEKS                       R37 R37 K136 ["Value"]
     1005 SETTABLEKS                       R37 R36 K77 ["assetType"]
     1007 GETTABLEKS                       R38 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1009 GETTABLEN                        R37 R38 6
     1010 SETTABLEKS                       R37 R36 K76 ["id"]
     1012 GETTABLEKS                       R37 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
     1014 SETTABLEKS                       R37 R36 K221 ["bundleId"]
     1016 SETTABLE                         R36 R34 R35
     1017 SETTABLEKS                       R34 R28 K228 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
     1019 NEWTABLE                         R34 1 0
     1021 GETTABLEKS                       R35 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
     1023 DUPTABLE                         R36 K232 [{["id"], ["name"], ["bundleType"] = 1, ["creatorType"] = "User", ["assetsInBundle"]}]
     1024 GETTABLEKS                       R37 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
     1026 SETTABLEKS                       R37 R36 K76 ["id"]
     1028 LOADK                            R38 K214 ["Test Bundle"]
     1029 GETTABLEKS                       R40 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
     1031 FASTCALL1                        TOSTRING R40 ; [+2]
     1032 GETIMPORT                        R39 K216 [tostring]
     1034 CALL                             R39 1 1
     1035 CONCAT                           R37 R38 R39
     1036 SETTABLEKS                       R37 R36 K229 ["name"]
     1038 NEWTABLE                         R37 0 6
     1040 DUPTABLE                         R38 K234 [{["assetType"], ["id"], ["isIncluded"] = True}]
     1041 GETIMPORT                        R39 K186 [Enum.AssetType.DynamicHead]
     1043 GETTABLEKS                       R39 R39 K136 ["Value"]
     1045 SETTABLEKS                       R39 R38 K77 ["assetType"]
     1047 GETTABLEKS                       R40 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1049 GETTABLEN                        R39 R40 1
     1050 SETTABLEKS                       R39 R38 K76 ["id"]
     1052 DUPTABLE                         R39 K234 [{["assetType"], ["id"], ["isIncluded"] = True}]
     1053 GETIMPORT                        R40 K190 [Enum.AssetType.Torso]
     1055 GETTABLEKS                       R40 R40 K136 ["Value"]
     1057 SETTABLEKS                       R40 R39 K77 ["assetType"]
     1059 GETTABLEKS                       R41 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1061 GETTABLEN                        R40 R41 2
     1062 SETTABLEKS                       R40 R39 K76 ["id"]
     1064 DUPTABLE                         R40 K234 [{["assetType"], ["id"], ["isIncluded"] = True}]
     1065 GETIMPORT                        R41 K194 [Enum.AssetType.LeftArm]
     1067 GETTABLEKS                       R41 R41 K136 ["Value"]
     1069 SETTABLEKS                       R41 R40 K77 ["assetType"]
     1071 GETTABLEKS                       R42 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1073 GETTABLEN                        R41 R42 3
     1074 SETTABLEKS                       R41 R40 K76 ["id"]
     1076 DUPTABLE                         R41 K234 [{["assetType"], ["id"], ["isIncluded"] = True}]
     1077 GETIMPORT                        R42 K198 [Enum.AssetType.LeftLeg]
     1079 GETTABLEKS                       R42 R42 K136 ["Value"]
     1081 SETTABLEKS                       R42 R41 K77 ["assetType"]
     1083 GETTABLEKS                       R43 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1085 GETTABLEN                        R42 R43 4
     1086 SETTABLEKS                       R42 R41 K76 ["id"]
     1088 DUPTABLE                         R42 K234 [{["assetType"], ["id"], ["isIncluded"] = True}]
     1089 GETIMPORT                        R43 K202 [Enum.AssetType.RightArm]
     1091 GETTABLEKS                       R43 R43 K136 ["Value"]
     1093 SETTABLEKS                       R43 R42 K77 ["assetType"]
     1095 GETTABLEKS                       R44 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1097 GETTABLEN                        R43 R44 5
     1098 SETTABLEKS                       R43 R42 K76 ["id"]
     1100 DUPTABLE                         R43 K234 [{["assetType"], ["id"], ["isIncluded"] = True}]
     1101 GETIMPORT                        R44 K206 [Enum.AssetType.RightLeg]
     1103 GETTABLEKS                       R44 R44 K136 ["Value"]
     1105 SETTABLEKS                       R44 R43 K77 ["assetType"]
     1107 GETTABLEKS                       R45 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
     1109 GETTABLEN                        R44 R45 6
     1110 SETTABLEKS                       R44 R43 K76 ["id"]
     1112 SETLIST                          R37 R38 6 [1]
     1114 SETTABLEKS                       R37 R36 K231 ["assetsInBundle"]
     1116 SETTABLE                         R36 R34 R35
     1117 SETTABLEKS                       R34 R28 K235 ["MOCK_AVATAR_LOOK_BUNDLE_DATA"]
     1119 DUPCLOSURE                       R34 K236 [PROTO_1]
     1120 CAPTURE                          VAL R0
     1121 SETTABLEKS                       R34 R28 K237 ["findTextInCoreGui"]
     1123 DUPCLOSURE                       R34 K238 [PROTO_2]
     1124 CAPTURE                          VAL R28
     1125 SETTABLEKS                       R34 R28 K239 ["isConfirmItemsStage"]
     1127 DUPCLOSURE                       R34 K240 [PROTO_3]
     1128 CAPTURE                          VAL R28
     1129 SETTABLEKS                       R34 R28 K241 ["isEditInfoStage"]
     1131 DUPCLOSURE                       R34 K242 [PROTO_4]
     1132 CAPTURE                          VAL R28
     1133 SETTABLEKS                       R34 R28 K243 ["isFailureStage"]
     1135 DUPCLOSURE                       R34 K244 [PROTO_5]
     1136 CAPTURE                          VAL R28
     1137 SETTABLEKS                       R34 R28 K245 ["isSuccessStage"]
     1139 GETIMPORT                        R34 K248 [UDim2.fromOffset]
     1141 LOADN                            R35 40
     1142 LOADN                            R36 40
     1143 CALL                             R34 2 1
     1144 GETIMPORT                        R35 K248 [UDim2.fromOffset]
     1146 LOADN                            R36 400
     1147 LOADN                            R37 600
     1148 CALL                             R35 2 1
     1149 DUPCLOSURE                       R36 K249 [PROTO_6]
     1150 CAPTURE                          VAL R35
     1151 DUPCLOSURE                       R37 K250 [PROTO_7]
     1152 DUPCLOSURE                       R38 K251 [PROTO_9]
     1153 CAPTURE                          VAL R0
     1154 CAPTURE                          VAL R34
     1155 CAPTURE                          VAL R6
     1156 CAPTURE                          VAL R7
     1157 SETTABLEKS                       R38 R28 K252 ["clickContinueButton"]
     1159 DUPCLOSURE                       R38 K253 [PROTO_11]
     1160 CAPTURE                          VAL R0
     1161 CAPTURE                          VAL R34
     1162 CAPTURE                          VAL R6
     1163 CAPTURE                          VAL R7
     1164 SETTABLEKS                       R38 R28 K254 ["clickBackButton"]
     1166 DUPCLOSURE                       R38 K255 [PROTO_14]
     1167 CAPTURE                          VAL R0
     1168 CAPTURE                          VAL R7
     1169 CAPTURE                          VAL R35
     1170 CAPTURE                          VAL R36
     1171 CAPTURE                          VAL R34
     1172 CAPTURE                          VAL R6
     1173 SETTABLEKS                       R38 R28 K256 ["changeCreator"]
     1175 DUPCLOSURE                       R38 K257 [PROTO_16]
     1176 CAPTURE                          VAL R28
     1177 CAPTURE                          VAL R0
     1178 CAPTURE                          VAL R7
     1179 CAPTURE                          VAL R36
     1180 CAPTURE                          VAL R34
     1181 CAPTURE                          VAL R6
     1182 SETTABLEKS                       R38 R28 K258 ["toggleItem"]
     1184 DUPCLOSURE                       R38 K259 [PROTO_17]
     1185 CAPTURE                          VAL R0
     1186 CAPTURE                          VAL R36
     1187 CAPTURE                          VAL R34
     1188 CAPTURE                          VAL R7
     1189 SETTABLEKS                       R38 R28 K260 ["changeColor"]
     1191 DUPCLOSURE                       R38 K261 [PROTO_21]
     1192 CAPTURE                          VAL R28
     1193 CAPTURE                          VAL R0
     1194 CAPTURE                          VAL R6
     1195 CAPTURE                          VAL R34
     1196 CAPTURE                          VAL R7
     1197 SETTABLEKS                       R38 R28 K262 ["enterName"]
     1199 DUPCLOSURE                       R38 K263 [PROTO_22]
     1200 CAPTURE                          VAL R28
     1201 SETTABLEKS                       R38 R28 K264 ["checkErrorBannerText"]
     1203 DUPCLOSURE                       R38 K265 [PROTO_23]
     1204 CAPTURE                          VAL R7
     1205 CAPTURE                          VAL R0
     1206 SETTABLEKS                       R38 R28 K266 ["queryErrorBannerCloseButton"]
     1208 DUPCLOSURE                       R38 K267 [PROTO_25]
     1209 CAPTURE                          VAL R28
     1210 CAPTURE                          VAL R36
     1211 CAPTURE                          VAL R0
     1212 CAPTURE                          VAL R34
     1213 CAPTURE                          VAL R6
     1214 CAPTURE                          VAL R7
     1215 SETTABLEKS                       R38 R28 K268 ["clickErrorBannerDismiss"]
     1217 DUPCLOSURE                       R38 K269 [PROTO_27]
     1218 CAPTURE                          VAL R0
     1219 CAPTURE                          VAL R34
     1220 CAPTURE                          VAL R6
     1221 CAPTURE                          VAL R7
     1222 SETTABLEKS                       R38 R28 K270 ["openErrorDialog"]
     1224 DUPCLOSURE                       R38 K271 [PROTO_28]
     1225 CAPTURE                          VAL R28
     1226 SETTABLEKS                       R38 R28 K272 ["checkErrorDialogText"]
     1228 DUPCLOSURE                       R38 K273 [PROTO_29]
     1229 CAPTURE                          VAL R28
     1230 SETTABLEKS                       R38 R28 K274 ["isItemInDetailsList"]
     1232 DUPCLOSURE                       R38 K275 [PROTO_30]
     1233 CAPTURE                          VAL R28
     1234 CAPTURE                          VAL R14
     1235 SETTABLEKS                       R38 R28 K276 ["getUserEquippedItems"]
     1237 DUPCLOSURE                       R38 K277 [PROTO_31]
     1238 CAPTURE                          VAL R28
     1239 SETTABLEKS                       R38 R28 K278 ["getMixedCreatorMakeupLookEquippedItems"]
     1241 DUPCLOSURE                       R38 K279 [PROTO_32]
     1242 CAPTURE                          VAL R28
     1243 CAPTURE                          VAL R14
     1244 SETTABLEKS                       R38 R28 K280 ["getGroupEquippedItems"]
     1246 DUPCLOSURE                       R38 K281 [PROTO_33]
     1247 CAPTURE                          VAL R28
     1248 CAPTURE                          VAL R12
     1249 CAPTURE                          VAL R15
     1250 CAPTURE                          VAL R9
     1251 SETTABLEKS                       R38 R28 K282 ["getExpectedLook"]
     1253 LOADNIL                          R38
     1254 SETTABLEKS                       R38 R28 K283 ["lookCreationInfo"]
     1256 NEWTABLE                         R38 0 0
     1258 DUPCLOSURE                       R39 K284 [PROTO_34]
     1259 CAPTURE                          VAL R28
     1260 CAPTURE                          VAL R33
     1261 LOADNIL                          R40
     1262 NEWCLOSURE                       R41 P25
     1263 CAPTURE                          VAL R8
     1264 CAPTURE                          VAL R1
     1265 CAPTURE                          VAL R11
     1266 CAPTURE                          VAL R28
     1267 CAPTURE                          REF R40
     1268 CAPTURE                          VAL R33
     1269 CAPTURE                          VAL R13
     1270 CAPTURE                          REF R38
     1271 DUPCLOSURE                       R42 K285 [PROTO_38]
     1272 CAPTURE                          VAL R8
     1273 CAPTURE                          VAL R1
     1274 CAPTURE                          VAL R11
     1275 CAPTURE                          VAL R28
     1276 CAPTURE                          VAL R41
     1277 DUPCLOSURE                       R43 K286 [PROTO_40]
     1278 CAPTURE                          VAL R8
     1279 DUPCLOSURE                       R44 K287 [PROTO_42]
     1280 CAPTURE                          VAL R8
     1281 CAPTURE                          VAL R1
     1282 CAPTURE                          VAL R11
     1283 CAPTURE                          VAL R28
     1284 CAPTURE                          VAL R41
     1285 DUPCLOSURE                       R45 K288 [PROTO_44]
     1286 CAPTURE                          VAL R8
     1287 CAPTURE                          VAL R11
     1288 CAPTURE                          VAL R1
     1289 CAPTURE                          VAL R28
     1290 CAPTURE                          VAL R41
     1291 NEWCLOSURE                       R46 P30
     1292 CAPTURE                          REF R40
     1293 CAPTURE                          REF R38
     1294 CAPTURE                          VAL R13
     1295 CAPTURE                          VAL R42
     1296 CAPTURE                          VAL R43
     1297 CAPTURE                          VAL R44
     1298 CAPTURE                          VAL R45
     1299 CAPTURE                          VAL R41
     1300 SETTABLEKS                       R46 R28 K289 ["createMockLookComposerRequestInternal"]
     1302 DUPCLOSURE                       R46 K290 [PROTO_48]
     1303 CAPTURE                          VAL R28
     1304 SETTABLEKS                       R46 R28 K291 ["createMockAvatarEditorService"]
     1306 DUPCLOSURE                       R46 K292 [PROTO_51]
     1307 CAPTURE                          VAL R0
     1308 CAPTURE                          VAL R25
     1309 CAPTURE                          VAL R28
     1310 CAPTURE                          VAL R5
     1311 CAPTURE                          VAL R3
     1312 CAPTURE                          VAL R24
     1313 CAPTURE                          VAL R19
     1314 CAPTURE                          VAL R18
     1315 CAPTURE                          VAL R20
     1316 CAPTURE                          VAL R26
     1317 CAPTURE                          VAL R23
     1318 CAPTURE                          VAL R27
     1319 CAPTURE                          VAL R6
     1320 CAPTURE                          VAL R7
     1321 SETTABLEKS                       R46 R28 K293 ["createLookComposerDialogTest"]
     1323 DUPCLOSURE                       R46 K294 [PROTO_53]
     1324 CAPTURE                          VAL R28
     1325 CAPTURE                          VAL R16
     1326 CAPTURE                          VAL R5
     1327 CAPTURE                          VAL R18
     1328 CAPTURE                          VAL R21
     1329 CAPTURE                          VAL R22
     1330 SETTABLEKS                       R46 R28 K295 ["lookCreationTest"]
     1332 DUPCLOSURE                       R46 K296 [PROTO_55]
     1333 CAPTURE                          VAL R28
     1334 CAPTURE                          VAL R16
     1335 CAPTURE                          VAL R5
     1336 CAPTURE                          VAL R18
     1337 CAPTURE                          VAL R21
     1338 CAPTURE                          VAL R22
     1339 SETTABLEKS                       R46 R28 K297 ["lookCreationStartFromAssetIdTest"]
     1341 DUPCLOSURE                       R46 K298 [PROTO_56]
     1342 DUPCLOSURE                       R47 K299 [PROTO_57]
     1343 CAPTURE                          VAL R0
     1344 CAPTURE                          VAL R17
     1345 CAPTURE                          VAL R6
     1346 CAPTURE                          VAL R16
     1347 SETTABLEKS                       R47 R28 K300 ["clickAddAssetIdButton"]
     1349 DUPCLOSURE                       R47 K301 [PROTO_60]
     1350 CAPTURE                          VAL R0
     1351 CAPTURE                          VAL R7
     1352 CAPTURE                          VAL R6
     1353 SETTABLEKS                       R47 R28 K302 ["openAssetImportDialog"]
     1355 DUPCLOSURE                       R47 K303 [PROTO_61]
     1356 CAPTURE                          VAL R7
     1357 CAPTURE                          VAL R0
     1358 DUPCLOSURE                       R48 K304 [PROTO_62]
     1359 CAPTURE                          VAL R7
     1360 CAPTURE                          VAL R0
     1361 DUPCLOSURE                       R49 K305 [PROTO_65]
     1362 CAPTURE                          VAL R7
     1363 CAPTURE                          VAL R0
     1364 CAPTURE                          VAL R6
     1365 CAPTURE                          VAL R34
     1366 SETTABLEKS                       R49 R28 K306 ["typeTextInImportDialog"]
     1368 DUPCLOSURE                       R49 K307 [PROTO_67]
     1369 CAPTURE                          VAL R28
     1370 CAPTURE                          VAL R7
     1371 CAPTURE                          VAL R0
     1372 CAPTURE                          VAL R6
     1373 SETTABLEKS                       R49 R28 K308 ["enterTextInImportDialog"]
     1375 DUPCLOSURE                       R49 K309 [PROTO_68]
     1376 CAPTURE                          VAL R7
     1377 CAPTURE                          VAL R0
     1378 SETTABLEKS                       R49 R28 K310 ["getImportDialogText"]
     1380 DUPCLOSURE                       R49 K311 [PROTO_69]
     1381 CAPTURE                          VAL R7
     1382 CAPTURE                          VAL R0
     1383 SETTABLEKS                       R49 R28 K312 ["isImportDialogAddItemButtonEnabled"]
     1385 DUPCLOSURE                       R49 K313 [PROTO_70]
     1386 CAPTURE                          VAL R17
     1387 CAPTURE                          VAL R7
     1388 CAPTURE                          VAL R0
     1389 SETTABLEKS                       R49 R28 K314 ["clickAddItemButtonImportDialog"]
     1391 DUPCLOSURE                       R49 K315 [PROTO_72]
     1392 CAPTURE                          VAL R9
     1393 CAPTURE                          VAL R28
     1394 SETTABLEKS                       R49 R28 K316 ["addAssetIdsToImportDialog"]
     1396 DUPCLOSURE                       R49 K317 [PROTO_73]
     1397 CAPTURE                          VAL R28
     1398 SETTABLEKS                       R49 R28 K318 ["loadItemsIntoImportDialog"]
     1400 DUPCLOSURE                       R49 K319 [PROTO_74]
     1401 CAPTURE                          VAL R7
     1402 CAPTURE                          VAL R0
     1403 SETTABLEKS                       R49 R28 K320 ["getImportItemPriceText"]
     1405 DUPCLOSURE                       R49 K321 [PROTO_75]
     1406 CAPTURE                          VAL R7
     1407 CAPTURE                          VAL R0
     1408 SETTABLEKS                       R49 R28 K322 ["getLookItemPriceText"]
     1410 DUPCLOSURE                       R49 K323 [PROTO_77]
     1411 CAPTURE                          VAL R7
     1412 CAPTURE                          VAL R0
     1413 CAPTURE                          VAL R9
     1414 SETTABLEKS                       R49 R28 K324 ["getImportDialogItemNames"]
     1416 DUPCLOSURE                       R49 K325 [PROTO_78]
     1417 CAPTURE                          VAL R32
     1418 SETTABLEKS                       R49 R28 K326 ["getMockItemName"]
     1420 DUPCLOSURE                       R49 K327 [PROTO_79]
     1421 CAPTURE                          VAL R28
     1422 SETTABLEKS                       R49 R28 K328 ["hasImportNothingFoundError"]
     1424 DUPCLOSURE                       R49 K329 [PROTO_80]
     1425 CAPTURE                          VAL R28
     1426 SETTABLEKS                       R49 R28 K330 ["hasImportNothingFoundErrorForIds"]
     1428 DUPCLOSURE                       R49 K331 [PROTO_82]
     1429 CAPTURE                          VAL R0
     1430 CAPTURE                          VAL R34
     1431 CAPTURE                          VAL R6
     1432 CAPTURE                          VAL R7
     1433 SETTABLEKS                       R49 R28 K332 ["clickAddItemsButtonImportDialog"]
     1435 DUPCLOSURE                       R49 K333 [PROTO_85]
     1436 CAPTURE                          VAL R0
     1437 CAPTURE                          VAL R7
     1438 CAPTURE                          VAL R6
     1439 SETTABLEKS                       R49 R28 K334 ["openLookComposerDialog"]
     1441 DUPCLOSURE                       R49 K335 [PROTO_86]
     1442 CAPTURE                          VAL R28
     1443 SETTABLEKS                       R49 R28 K336 ["importMarketplaceItems"]
     1445 CLOSEUPVALS                      R38
     1446 RETURN                           R28 1
