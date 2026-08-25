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
       67 JUMP                             ; [+4]
       68 GETUPVAL                         R14 3
       69 GETTABLEKS                       R14 R14 K17 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
       71 GETTABLE                         R11 R14 R12
       72 GETTABLEKS                       R12 R10 K18 ["bundleId"]
       74 JUMPIF                           R12 ; [+4]
       75 MOVE                             R12 R11
       76 JUMPIFNOT                        R12 ; [+2]
       77 GETTABLEKS                       R12 R11 K18 ["bundleId"]
       79 JUMPIFNOT                        R12 ; [+53]
       80 GETTABLE                         R13 R5 R12
       81 JUMPIF                           R13 ; [+51]
       82 GETUPVAL                         R14 3
       83 GETTABLEKS                       R14 R14 K19 ["MOCK_AVATAR_LOOK_BUNDLE_DATA"]
       85 GETTABLE                         R13 R14 R12
       86 GETTABLEKS                       R14 R13 K20 ["creatorType"]
       88 DUPTABLE                         R17 K30 [{["id"], ["name"], ["itemType"] = "Bundle", ["bundleType"], ["assetsInBundle"], ["creator"], ["priceInRobux"] = 30, ["priceInfo"]}]
       89 SETTABLEKS                       R12 R17 K5 ["id"]
       91 GETTABLEKS                       R18 R13 K21 ["name"]
       93 SETTABLEKS                       R18 R17 K21 ["name"]
       95 GETTABLEKS                       R18 R13 K24 ["bundleType"]
       97 SETTABLEKS                       R18 R17 K24 ["bundleType"]
       99 GETTABLEKS                       R18 R13 K25 ["assetsInBundle"]
      101 SETTABLEKS                       R18 R17 K25 ["assetsInBundle"]
      103 DUPTABLE                         R18 K35 [{["id"], ["name"] = "Test Creator", ["type"], ["hasVerifiedBadge"] = False}]
      104 JUMPIFNOTEQKS                    R14 K36 ["User"] ; [+6]
      106 GETUPVAL                         R19 5
      107 GETTABLEKS                       R19 R19 K37 ["getUserId"]
      109 CALL                             R19 0 1
      110 JUMP                             ; [+3]
      111 GETUPVAL                         R19 3
      112 GETTABLEKS                       R19 R19 K38 ["GROUP_ID"]
      114 SETTABLEKS                       R19 R18 K5 ["id"]
      116 SETTABLEKS                       R14 R18 K32 ["type"]
      118 SETTABLEKS                       R18 R17 K26 ["creator"]
      120 GETUPVAL                         R19 6
      121 GETTABLE                         R18 R19 R12
      122 SETTABLEKS                       R18 R17 K29 ["priceInfo"]
      124 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
      126 MOVE                             R16 R3
      127 GETIMPORT                        R15 K41 [table.insert]
      129 CALL                             R15 2 0
      130 LOADB                            R15 1
      131 SETTABLE                         R15 R5 R12
      132 JUMP                             ; [+51]
      133 JUMPIF                           R12 ; [+50]
      134 GETTABLEKS                       R13 R11 K42 ["assetType"]
      136 GETTABLEKS                       R14 R11 K20 ["creatorType"]
      138 DUPTABLE                         R17 K44 [{["id"], ["name"], ["itemType"] = "Asset", ["creator"], ["assetType"], ["priceInRobux"] = 30, ["priceInfo"]}]
      139 GETTABLEKS                       R18 R10 K5 ["id"]
      141 SETTABLEKS                       R18 R17 K5 ["id"]
      143 LOADK                            R19 K45 ["Test Item"]
      144 GETTABLEKS                       R21 R10 K5 ["id"]
      146 FASTCALL1                        TOSTRING R21 ; [+2]
      147 GETIMPORT                        R20 K47 [tostring]
      149 CALL                             R20 1 1
      150 CONCAT                           R18 R19 R20
      151 SETTABLEKS                       R18 R17 K21 ["name"]
      153 DUPTABLE                         R18 K35 [{["id"], ["name"] = "Test Creator", ["type"], ["hasVerifiedBadge"] = False}]
      154 JUMPIFNOTEQKS                    R14 K36 ["User"] ; [+6]
      156 GETUPVAL                         R19 5
      157 GETTABLEKS                       R19 R19 K37 ["getUserId"]
      159 CALL                             R19 0 1
      160 JUMP                             ; [+3]
      161 GETUPVAL                         R19 3
      162 GETTABLEKS                       R19 R19 K38 ["GROUP_ID"]
      164 SETTABLEKS                       R19 R18 K5 ["id"]
      166 SETTABLEKS                       R14 R18 K32 ["type"]
      168 SETTABLEKS                       R18 R17 K26 ["creator"]
      170 SETTABLEKS                       R13 R17 K42 ["assetType"]
      172 GETUPVAL                         R19 6
      173 GETTABLEKS                       R20 R10 K5 ["id"]
      175 GETTABLE                         R18 R19 R20
      176 SETTABLEKS                       R18 R17 K29 ["priceInfo"]
      178 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
      180 MOVE                             R16 R3
      181 GETIMPORT                        R15 K41 [table.insert]
      183 CALL                             R15 2 0
      184 FORGLOOP                         R6 2 ; [-126]
      186 MOVE                             R6 R0
      187 DUPTABLE                         R7 K48 [{"Body"}]
      188 GETUPVAL                         R8 1
      189 MOVE                             R10 R4
      190 NAMECALL                         R8 R8 K49 ["JSONEncode"]
      192 CALL                             R8 2 1
      193 SETTABLEKS                       R8 R7 K0 ["Body"]
      195 CALL                             R6 1 0
      196 RETURN                           R0 0

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
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

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

PROTO_75:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["within"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["queryByTestId"]
        7 LOADK                            R3 K2 ["look-item-price-%*"]
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
      281 DUPTABLE                         R29 K78 [{["price"] = 50, ["priceStatus"] = "Free", ["priceBehindStatus"] = 1500, ["priceBehindOffSale"] = 1600, ["lowestPrice"] = 100, ["priceBehindLowestPrice"] = 1700, ["avatarLookAssetPrice"] = 75, ["bundlePrice"] = 30}]
      282 SETTABLEKS                       R29 R28 K79 ["MOCK_ITEM_PRICES"]
      284 LOADN                            R29 250
      285 SETTABLEKS                       R29 R28 K80 ["LOOK_API_PRICE_INFO_PRICE"]
      287 LOADK                            R29 K81 ["Studio.Test.MarketplaceImport.OffSale:[]"]
      288 SETTABLEKS                       R29 R28 K82 ["OFF_SALE_TEXT"]
      290 GETIMPORT                        R29 K85 [utf8.char]
      292 LOADK                            R30 K86 [57346]
      293 CALL                             R29 1 1
      294 DUPCLOSURE                       R30 K87 [PROTO_0]
      295 CAPTURE                          VAL R29
      296 SETTABLEKS                       R30 R28 K88 ["robuxPriceText"]
      298 NEWTABLE                         R30 16 0
      300 GETTABLEKS                       R32 R28 K57 ["USER_ASSET_IDS"]
      302 GETTABLEN                        R31 R32 1
      303 DUPTABLE                         R32 K95 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Eyebrows", ["id"]}]
      304 GETIMPORT                        R33 K99 [Enum.AssetType.EyebrowAccessory]
      306 GETTABLEKS                       R33 R33 K100 ["Value"]
      308 SETTABLEKS                       R33 R32 K91 ["assetType"]
      310 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      312 GETTABLEN                        R33 R34 1
      313 SETTABLEKS                       R33 R32 K94 ["id"]
      315 SETTABLE                         R32 R30 R31
      316 GETTABLEKS                       R32 R28 K57 ["USER_ASSET_IDS"]
      318 GETTABLEN                        R31 R32 2
      319 DUPTABLE                         R32 K102 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Eyelashes", ["id"]}]
      320 GETIMPORT                        R33 K104 [Enum.AssetType.EyelashAccessory]
      322 GETTABLEKS                       R33 R33 K100 ["Value"]
      324 SETTABLEKS                       R33 R32 K91 ["assetType"]
      326 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      328 GETTABLEN                        R33 R34 2
      329 SETTABLEKS                       R33 R32 K94 ["id"]
      331 SETTABLE                         R32 R30 R31
      332 GETTABLEKS                       R32 R28 K57 ["USER_ASSET_IDS"]
      334 GETTABLEN                        R31 R32 3
      335 DUPTABLE                         R32 K106 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "FaceMakeup", ["id"]}]
      336 GETIMPORT                        R33 K107 [Enum.AssetType.FaceMakeup]
      338 GETTABLEKS                       R33 R33 K100 ["Value"]
      340 SETTABLEKS                       R33 R32 K91 ["assetType"]
      342 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      344 GETTABLEN                        R33 R34 3
      345 SETTABLEKS                       R33 R32 K94 ["id"]
      347 SETTABLE                         R32 R30 R31
      348 GETTABLEKS                       R32 R28 K57 ["USER_ASSET_IDS"]
      350 GETTABLEN                        R31 R32 4
      351 DUPTABLE                         R32 K109 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LipMakeup", ["id"]}]
      352 GETIMPORT                        R33 K110 [Enum.AssetType.LipMakeup]
      354 GETTABLEKS                       R33 R33 K100 ["Value"]
      356 SETTABLEKS                       R33 R32 K91 ["assetType"]
      358 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      360 GETTABLEN                        R33 R34 4
      361 SETTABLEKS                       R33 R32 K94 ["id"]
      363 SETTABLE                         R32 R30 R31
      364 GETTABLEKS                       R32 R28 K57 ["USER_ASSET_IDS"]
      366 GETTABLEN                        R31 R32 5
      367 DUPTABLE                         R32 K112 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "EyeMakeup", ["id"]}]
      368 GETIMPORT                        R33 K113 [Enum.AssetType.EyeMakeup]
      370 GETTABLEKS                       R33 R33 K100 ["Value"]
      372 SETTABLEKS                       R33 R32 K91 ["assetType"]
      374 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      376 GETTABLEN                        R33 R34 5
      377 SETTABLEKS                       R33 R32 K94 ["id"]
      379 SETTABLE                         R32 R30 R31
      380 GETTABLEKS                       R32 R28 K58 ["GROUP_ASSET_IDS"]
      382 GETTABLEN                        R31 R32 1
      383 DUPTABLE                         R32 K115 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "Eyebrows", ["id"]}]
      384 GETIMPORT                        R33 K99 [Enum.AssetType.EyebrowAccessory]
      386 GETTABLEKS                       R33 R33 K100 ["Value"]
      388 SETTABLEKS                       R33 R32 K91 ["assetType"]
      390 GETTABLEKS                       R34 R28 K58 ["GROUP_ASSET_IDS"]
      392 GETTABLEN                        R33 R34 1
      393 SETTABLEKS                       R33 R32 K94 ["id"]
      395 SETTABLE                         R32 R30 R31
      396 GETTABLEKS                       R32 R28 K58 ["GROUP_ASSET_IDS"]
      398 GETTABLEN                        R31 R32 2
      399 DUPTABLE                         R32 K116 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "Eyelashes", ["id"]}]
      400 GETIMPORT                        R33 K104 [Enum.AssetType.EyelashAccessory]
      402 GETTABLEKS                       R33 R33 K100 ["Value"]
      404 SETTABLEKS                       R33 R32 K91 ["assetType"]
      406 GETTABLEKS                       R34 R28 K58 ["GROUP_ASSET_IDS"]
      408 GETTABLEN                        R33 R34 2
      409 SETTABLEKS                       R33 R32 K94 ["id"]
      411 SETTABLE                         R32 R30 R31
      412 GETTABLEKS                       R32 R28 K58 ["GROUP_ASSET_IDS"]
      414 GETTABLEN                        R31 R32 3
      415 DUPTABLE                         R32 K117 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "FaceMakeup", ["id"]}]
      416 GETIMPORT                        R33 K107 [Enum.AssetType.FaceMakeup]
      418 GETTABLEKS                       R33 R33 K100 ["Value"]
      420 SETTABLEKS                       R33 R32 K91 ["assetType"]
      422 GETTABLEKS                       R34 R28 K58 ["GROUP_ASSET_IDS"]
      424 GETTABLEN                        R33 R34 3
      425 SETTABLEKS                       R33 R32 K94 ["id"]
      427 SETTABLE                         R32 R30 R31
      428 GETTABLEKS                       R32 R28 K58 ["GROUP_ASSET_IDS"]
      430 GETTABLEN                        R31 R32 4
      431 DUPTABLE                         R32 K118 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "EyeMakeup", ["id"]}]
      432 GETIMPORT                        R33 K110 [Enum.AssetType.LipMakeup]
      434 GETTABLEKS                       R33 R33 K100 ["Value"]
      436 SETTABLEKS                       R33 R32 K91 ["assetType"]
      438 GETTABLEKS                       R34 R28 K58 ["GROUP_ASSET_IDS"]
      440 GETTABLEN                        R33 R34 4
      441 SETTABLEKS                       R33 R32 K94 ["id"]
      443 SETTABLE                         R32 R30 R31
      444 GETTABLEKS                       R32 R28 K58 ["GROUP_ASSET_IDS"]
      446 GETTABLEN                        R31 R32 5
      447 DUPTABLE                         R32 K119 [{["creatorType"] = "Group", ["assetType"], ["paletteKey"] = "LipMakeup", ["id"]}]
      448 GETIMPORT                        R33 K113 [Enum.AssetType.EyeMakeup]
      450 GETTABLEKS                       R33 R33 K100 ["Value"]
      452 SETTABLEKS                       R33 R32 K91 ["assetType"]
      454 GETTABLEKS                       R34 R28 K58 ["GROUP_ASSET_IDS"]
      456 GETTABLEN                        R33 R34 5
      457 SETTABLEKS                       R33 R32 K94 ["id"]
      459 SETTABLE                         R32 R30 R31
      460 SETTABLEKS                       R30 R28 K120 ["MOCK_ITEM_DATA"]
      462 NEWTABLE                         R30 16 0
      464 GETTABLEKS                       R32 R28 K57 ["USER_ASSET_IDS"]
      466 GETTABLEN                        R31 R32 1
      467 DUPTABLE                         R32 K132 [{["Id"], ["Name"] = "User Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["Price"]}]
      468 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      470 GETTABLEN                        R33 R34 1
      471 SETTABLEKS                       R33 R32 K121 ["Id"]
      473 GETIMPORT                        R33 K99 [Enum.AssetType.EyebrowAccessory]
      475 GETTABLEKS                       R33 R33 K122 ["Name"]
      477 SETTABLEKS                       R33 R32 K97 ["AssetType"]
      479 GETTABLEKS                       R33 R28 K79 ["MOCK_ITEM_PRICES"]
      481 GETTABLEKS                       R33 R33 K62 ["price"]
      483 SETTABLEKS                       R33 R32 K131 ["Price"]
      485 SETTABLE                         R32 R30 R31
      486 GETTABLEKS                       R32 R28 K57 ["USER_ASSET_IDS"]
      488 GETTABLEN                        R31 R32 2
      489 DUPTABLE                         R32 K135 [{["Id"], ["Name"] = "User Asset 2", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["PriceStatus"], ["Price"]}]
      490 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      492 GETTABLEN                        R33 R34 2
      493 SETTABLEKS                       R33 R32 K121 ["Id"]
      495 GETIMPORT                        R33 K104 [Enum.AssetType.EyelashAccessory]
      497 GETTABLEKS                       R33 R33 K122 ["Name"]
      499 SETTABLEKS                       R33 R32 K97 ["AssetType"]
      501 GETTABLEKS                       R33 R28 K79 ["MOCK_ITEM_PRICES"]
      503 GETTABLEKS                       R33 R33 K64 ["priceStatus"]
      505 SETTABLEKS                       R33 R32 K134 ["PriceStatus"]
      507 GETTABLEKS                       R33 R28 K79 ["MOCK_ITEM_PRICES"]
      509 GETTABLEKS                       R33 R33 K66 ["priceBehindStatus"]
      511 SETTABLEKS                       R33 R32 K131 ["Price"]
      513 SETTABLE                         R32 R30 R31
      514 GETTABLEKS                       R32 R28 K57 ["USER_ASSET_IDS"]
      516 GETTABLEN                        R31 R32 3
      517 DUPTABLE                         R32 K139 [{["Id"], ["Name"] = "User Asset 3", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["SaleLocationType"] = "NotApplicable", ["Price"]}]
      518 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      520 GETTABLEN                        R33 R34 3
      521 SETTABLEKS                       R33 R32 K121 ["Id"]
      523 GETIMPORT                        R33 K107 [Enum.AssetType.FaceMakeup]
      525 GETTABLEKS                       R33 R33 K122 ["Name"]
      527 SETTABLEKS                       R33 R32 K97 ["AssetType"]
      529 GETTABLEKS                       R33 R28 K79 ["MOCK_ITEM_PRICES"]
      531 GETTABLEKS                       R33 R33 K68 ["priceBehindOffSale"]
      533 SETTABLEKS                       R33 R32 K131 ["Price"]
      535 SETTABLE                         R32 R30 R31
      536 GETTABLEKS                       R32 R28 K57 ["USER_ASSET_IDS"]
      538 GETTABLEN                        R31 R32 4
      539 DUPTABLE                         R32 K142 [{["Id"], ["Name"] = "User Asset 4", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["LowestPrice"], ["Price"]}]
      540 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      542 GETTABLEN                        R33 R34 4
      543 SETTABLEKS                       R33 R32 K121 ["Id"]
      545 GETIMPORT                        R33 K110 [Enum.AssetType.LipMakeup]
      547 GETTABLEKS                       R33 R33 K122 ["Name"]
      549 SETTABLEKS                       R33 R32 K97 ["AssetType"]
      551 GETTABLEKS                       R33 R28 K79 ["MOCK_ITEM_PRICES"]
      553 GETTABLEKS                       R33 R33 K70 ["lowestPrice"]
      555 SETTABLEKS                       R33 R32 K141 ["LowestPrice"]
      557 GETTABLEKS                       R33 R28 K79 ["MOCK_ITEM_PRICES"]
      559 GETTABLEKS                       R33 R33 K72 ["priceBehindLowestPrice"]
      561 SETTABLEKS                       R33 R32 K131 ["Price"]
      563 SETTABLE                         R32 R30 R31
      564 GETTABLEKS                       R32 R28 K57 ["USER_ASSET_IDS"]
      566 GETTABLEN                        R31 R32 5
      567 DUPTABLE                         R32 K144 [{["Id"], ["Name"] = "User Asset 5", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      568 GETTABLEKS                       R34 R28 K57 ["USER_ASSET_IDS"]
      570 GETTABLEN                        R33 R34 5
      571 SETTABLEKS                       R33 R32 K121 ["Id"]
      573 GETIMPORT                        R33 K113 [Enum.AssetType.EyeMakeup]
      575 GETTABLEKS                       R33 R33 K122 ["Name"]
      577 SETTABLEKS                       R33 R32 K97 ["AssetType"]
      579 SETTABLE                         R32 R30 R31
      580 GETTABLEKS                       R31 R28 K59 ["AVATAR_LOOK_ASSET_ID"]
      582 DUPTABLE                         R32 K146 [{["Id"], ["Name"] = "Avatar Look Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["Price"]}]
      583 GETTABLEKS                       R33 R28 K59 ["AVATAR_LOOK_ASSET_ID"]
      585 SETTABLEKS                       R33 R32 K121 ["Id"]
      587 GETIMPORT                        R33 K148 [Enum.AssetType.ShirtAccessory]
      589 GETTABLEKS                       R33 R33 K122 ["Name"]
      591 SETTABLEKS                       R33 R32 K97 ["AssetType"]
      593 GETTABLEKS                       R33 R28 K79 ["MOCK_ITEM_PRICES"]
      595 GETTABLEKS                       R33 R33 K74 ["avatarLookAssetPrice"]
      597 SETTABLEKS                       R33 R32 K131 ["Price"]
      599 SETTABLE                         R32 R30 R31
      600 GETTABLEKS                       R32 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      602 GETTABLEN                        R31 R32 1
      603 DUPTABLE                         R32 K150 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 1", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      604 GETTABLEKS                       R34 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      606 GETTABLEN                        R33 R34 1
      607 SETTABLEKS                       R33 R32 K121 ["Id"]
      609 GETIMPORT                        R33 K152 [Enum.AssetType.DynamicHead]
      611 GETTABLEKS                       R33 R33 K122 ["Name"]
      613 SETTABLEKS                       R33 R32 K97 ["AssetType"]
      615 SETTABLE                         R32 R30 R31
      616 GETTABLEKS                       R32 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      618 GETTABLEN                        R31 R32 2
      619 DUPTABLE                         R32 K154 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 2", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      620 GETTABLEKS                       R34 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      622 GETTABLEN                        R33 R34 2
      623 SETTABLEKS                       R33 R32 K121 ["Id"]
      625 GETIMPORT                        R33 K156 [Enum.AssetType.Torso]
      627 GETTABLEKS                       R33 R33 K122 ["Name"]
      629 SETTABLEKS                       R33 R32 K97 ["AssetType"]
      631 SETTABLE                         R32 R30 R31
      632 GETTABLEKS                       R32 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      634 GETTABLEN                        R31 R32 3
      635 DUPTABLE                         R32 K158 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 3", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      636 GETTABLEKS                       R34 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      638 GETTABLEN                        R33 R34 3
      639 SETTABLEKS                       R33 R32 K121 ["Id"]
      641 GETIMPORT                        R33 K160 [Enum.AssetType.LeftArm]
      643 GETTABLEKS                       R33 R33 K122 ["Name"]
      645 SETTABLEKS                       R33 R32 K97 ["AssetType"]
      647 SETTABLE                         R32 R30 R31
      648 GETTABLEKS                       R32 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      650 GETTABLEN                        R31 R32 4
      651 DUPTABLE                         R32 K162 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 4", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      652 GETTABLEKS                       R34 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      654 GETTABLEN                        R33 R34 4
      655 SETTABLEKS                       R33 R32 K121 ["Id"]
      657 GETIMPORT                        R33 K164 [Enum.AssetType.LeftLeg]
      659 GETTABLEKS                       R33 R33 K122 ["Name"]
      661 SETTABLEKS                       R33 R32 K97 ["AssetType"]
      663 SETTABLE                         R32 R30 R31
      664 GETTABLEKS                       R32 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      666 GETTABLEN                        R31 R32 5
      667 DUPTABLE                         R32 K166 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 5", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      668 GETTABLEKS                       R34 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      670 GETTABLEN                        R33 R34 5
      671 SETTABLEKS                       R33 R32 K121 ["Id"]
      673 GETIMPORT                        R33 K168 [Enum.AssetType.RightArm]
      675 GETTABLEKS                       R33 R33 K122 ["Name"]
      677 SETTABLEKS                       R33 R32 K97 ["AssetType"]
      679 SETTABLE                         R32 R30 R31
      680 GETTABLEKS                       R32 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      682 GETTABLEN                        R31 R32 6
      683 DUPTABLE                         R32 K170 [{["Id"], ["Name"] = "Avatar Look Bundle Asset 6", ["AssetType"], ["CreatorTargetId"] = 1, ["CreatorType"] = "User", ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True}]
      684 GETTABLEKS                       R34 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      686 GETTABLEN                        R33 R34 6
      687 SETTABLEKS                       R33 R32 K121 ["Id"]
      689 GETIMPORT                        R33 K172 [Enum.AssetType.RightLeg]
      691 GETTABLEKS                       R33 R33 K122 ["Name"]
      693 SETTABLEKS                       R33 R32 K97 ["AssetType"]
      695 SETTABLE                         R32 R30 R31
      696 SETTABLEKS                       R30 R28 K173 ["MOCK_AVATAR_EDITOR_SERVICE_ITEM_DETAILS"]
      698 NEWTABLE                         R31 1 0
      700 GETTABLEKS                       R32 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      702 DUPTABLE                         R33 K175 [{["Id"], ["Name"], ["CreatorName"] = "Username", ["CreatorHasVerifiedBadge"] = True, ["Price"], ["BundledItems"]}]
      703 GETTABLEKS                       R34 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      705 SETTABLEKS                       R34 R33 K121 ["Id"]
      707 LOADK                            R35 K176 ["Test Bundle"]
      708 GETTABLEKS                       R37 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      710 FASTCALL1                        TOSTRING R37 ; [+2]
      711 GETIMPORT                        R36 K178 [tostring]
      713 CALL                             R36 1 1
      714 CONCAT                           R34 R35 R36
      715 SETTABLEKS                       R34 R33 K122 ["Name"]
      717 GETTABLEKS                       R34 R28 K79 ["MOCK_ITEM_PRICES"]
      719 GETTABLEKS                       R34 R34 K76 ["bundlePrice"]
      721 SETTABLEKS                       R34 R33 K131 ["Price"]
      723 NEWTABLE                         R34 0 6
      725 DUPTABLE                         R35 K179 [{"Id"}]
      726 GETTABLEKS                       R37 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      728 GETTABLEN                        R36 R37 1
      729 SETTABLEKS                       R36 R35 K121 ["Id"]
      731 DUPTABLE                         R36 K179 [{"Id"}]
      732 GETTABLEKS                       R38 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      734 GETTABLEN                        R37 R38 2
      735 SETTABLEKS                       R37 R36 K121 ["Id"]
      737 DUPTABLE                         R37 K179 [{"Id"}]
      738 GETTABLEKS                       R39 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      740 GETTABLEN                        R38 R39 3
      741 SETTABLEKS                       R38 R37 K121 ["Id"]
      743 DUPTABLE                         R38 K179 [{"Id"}]
      744 GETTABLEKS                       R40 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      746 GETTABLEN                        R39 R40 4
      747 SETTABLEKS                       R39 R38 K121 ["Id"]
      749 DUPTABLE                         R39 K179 [{"Id"}]
      750 GETTABLEKS                       R41 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      752 GETTABLEN                        R40 R41 5
      753 SETTABLEKS                       R40 R39 K121 ["Id"]
      755 DUPTABLE                         R40 K179 [{"Id"}]
      756 GETTABLEKS                       R42 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      758 GETTABLEN                        R41 R42 6
      759 SETTABLEKS                       R41 R40 K121 ["Id"]
      761 SETLIST                          R34 R35 6 [1]
      763 SETTABLEKS                       R34 R33 K174 ["BundledItems"]
      765 SETTABLE                         R33 R31 R32
      766 SETTABLEKS                       R31 R28 K180 ["MOCK_AVATAR_EDITOR_SERVICE_BUNDLE_DETAILS"]
      768 NEWTABLE                         R31 8 0
      770 GETTABLEKS                       R32 R28 K59 ["AVATAR_LOOK_ASSET_ID"]
      772 DUPTABLE                         R33 K182 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Shirts", ["id"]}]
      773 GETIMPORT                        R34 K148 [Enum.AssetType.ShirtAccessory]
      775 GETTABLEKS                       R34 R34 K100 ["Value"]
      777 SETTABLEKS                       R34 R33 K91 ["assetType"]
      779 GETTABLEKS                       R34 R28 K59 ["AVATAR_LOOK_ASSET_ID"]
      781 SETTABLEKS                       R34 R33 K94 ["id"]
      783 SETTABLE                         R33 R31 R32
      784 GETTABLEKS                       R33 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      786 GETTABLEN                        R32 R33 1
      787 DUPTABLE                         R33 K185 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "HeadBodyPart", ["id"], ["bundleId"]}]
      788 GETIMPORT                        R34 K152 [Enum.AssetType.DynamicHead]
      790 GETTABLEKS                       R34 R34 K100 ["Value"]
      792 SETTABLEKS                       R34 R33 K91 ["assetType"]
      794 GETTABLEKS                       R35 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      796 GETTABLEN                        R34 R35 1
      797 SETTABLEKS                       R34 R33 K94 ["id"]
      799 GETTABLEKS                       R34 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      801 SETTABLEKS                       R34 R33 K184 ["bundleId"]
      803 SETTABLE                         R33 R31 R32
      804 GETTABLEKS                       R33 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      806 GETTABLEN                        R32 R33 2
      807 DUPTABLE                         R33 K186 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "Torso", ["id"], ["bundleId"]}]
      808 GETIMPORT                        R34 K156 [Enum.AssetType.Torso]
      810 GETTABLEKS                       R34 R34 K100 ["Value"]
      812 SETTABLEKS                       R34 R33 K91 ["assetType"]
      814 GETTABLEKS                       R35 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      816 GETTABLEN                        R34 R35 2
      817 SETTABLEKS                       R34 R33 K94 ["id"]
      819 GETTABLEKS                       R34 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      821 SETTABLEKS                       R34 R33 K184 ["bundleId"]
      823 SETTABLE                         R33 R31 R32
      824 GETTABLEKS                       R33 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      826 GETTABLEN                        R32 R33 3
      827 DUPTABLE                         R33 K187 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LeftArm", ["id"], ["bundleId"]}]
      828 GETIMPORT                        R34 K160 [Enum.AssetType.LeftArm]
      830 GETTABLEKS                       R34 R34 K100 ["Value"]
      832 SETTABLEKS                       R34 R33 K91 ["assetType"]
      834 GETTABLEKS                       R35 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      836 GETTABLEN                        R34 R35 3
      837 SETTABLEKS                       R34 R33 K94 ["id"]
      839 GETTABLEKS                       R34 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      841 SETTABLEKS                       R34 R33 K184 ["bundleId"]
      843 SETTABLE                         R33 R31 R32
      844 GETTABLEKS                       R33 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      846 GETTABLEN                        R32 R33 4
      847 DUPTABLE                         R33 K188 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "LeftLeg", ["id"], ["bundleId"]}]
      848 GETIMPORT                        R34 K164 [Enum.AssetType.LeftLeg]
      850 GETTABLEKS                       R34 R34 K100 ["Value"]
      852 SETTABLEKS                       R34 R33 K91 ["assetType"]
      854 GETTABLEKS                       R35 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      856 GETTABLEN                        R34 R35 4
      857 SETTABLEKS                       R34 R33 K94 ["id"]
      859 GETTABLEKS                       R34 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      861 SETTABLEKS                       R34 R33 K184 ["bundleId"]
      863 SETTABLE                         R33 R31 R32
      864 GETTABLEKS                       R33 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      866 GETTABLEN                        R32 R33 5
      867 DUPTABLE                         R33 K189 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "RightArm", ["id"], ["bundleId"]}]
      868 GETIMPORT                        R34 K168 [Enum.AssetType.RightArm]
      870 GETTABLEKS                       R34 R34 K100 ["Value"]
      872 SETTABLEKS                       R34 R33 K91 ["assetType"]
      874 GETTABLEKS                       R35 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      876 GETTABLEN                        R34 R35 5
      877 SETTABLEKS                       R34 R33 K94 ["id"]
      879 GETTABLEKS                       R34 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      881 SETTABLEKS                       R34 R33 K184 ["bundleId"]
      883 SETTABLE                         R33 R31 R32
      884 GETTABLEKS                       R33 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      886 GETTABLEN                        R32 R33 6
      887 DUPTABLE                         R33 K190 [{["creatorType"] = "User", ["assetType"], ["paletteKey"] = "RightLeg", ["id"], ["bundleId"]}]
      888 GETIMPORT                        R34 K172 [Enum.AssetType.RightLeg]
      890 GETTABLEKS                       R34 R34 K100 ["Value"]
      892 SETTABLEKS                       R34 R33 K91 ["assetType"]
      894 GETTABLEKS                       R35 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      896 GETTABLEN                        R34 R35 6
      897 SETTABLEKS                       R34 R33 K94 ["id"]
      899 GETTABLEKS                       R34 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      901 SETTABLEKS                       R34 R33 K184 ["bundleId"]
      903 SETTABLE                         R33 R31 R32
      904 SETTABLEKS                       R31 R28 K191 ["MOCK_AVATAR_LOOK_ITEM_DATA"]
      906 NEWTABLE                         R31 1 0
      908 GETTABLEKS                       R32 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      910 DUPTABLE                         R33 K195 [{["id"], ["name"], ["bundleType"] = 1, ["creatorType"] = "User", ["assetsInBundle"]}]
      911 GETTABLEKS                       R34 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      913 SETTABLEKS                       R34 R33 K94 ["id"]
      915 LOADK                            R35 K176 ["Test Bundle"]
      916 GETTABLEKS                       R37 R28 K60 ["AVATAR_LOOK_BUNDLE_ID"]
      918 FASTCALL1                        TOSTRING R37 ; [+2]
      919 GETIMPORT                        R36 K178 [tostring]
      921 CALL                             R36 1 1
      922 CONCAT                           R34 R35 R36
      923 SETTABLEKS                       R34 R33 K192 ["name"]
      925 NEWTABLE                         R34 0 6
      927 DUPTABLE                         R35 K197 [{["assetType"], ["id"], ["isIncluded"] = True}]
      928 GETIMPORT                        R36 K152 [Enum.AssetType.DynamicHead]
      930 GETTABLEKS                       R36 R36 K100 ["Value"]
      932 SETTABLEKS                       R36 R35 K91 ["assetType"]
      934 GETTABLEKS                       R37 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      936 GETTABLEN                        R36 R37 1
      937 SETTABLEKS                       R36 R35 K94 ["id"]
      939 DUPTABLE                         R36 K197 [{["assetType"], ["id"], ["isIncluded"] = True}]
      940 GETIMPORT                        R37 K156 [Enum.AssetType.Torso]
      942 GETTABLEKS                       R37 R37 K100 ["Value"]
      944 SETTABLEKS                       R37 R36 K91 ["assetType"]
      946 GETTABLEKS                       R38 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      948 GETTABLEN                        R37 R38 2
      949 SETTABLEKS                       R37 R36 K94 ["id"]
      951 DUPTABLE                         R37 K197 [{["assetType"], ["id"], ["isIncluded"] = True}]
      952 GETIMPORT                        R38 K160 [Enum.AssetType.LeftArm]
      954 GETTABLEKS                       R38 R38 K100 ["Value"]
      956 SETTABLEKS                       R38 R37 K91 ["assetType"]
      958 GETTABLEKS                       R39 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      960 GETTABLEN                        R38 R39 3
      961 SETTABLEKS                       R38 R37 K94 ["id"]
      963 DUPTABLE                         R38 K197 [{["assetType"], ["id"], ["isIncluded"] = True}]
      964 GETIMPORT                        R39 K164 [Enum.AssetType.LeftLeg]
      966 GETTABLEKS                       R39 R39 K100 ["Value"]
      968 SETTABLEKS                       R39 R38 K91 ["assetType"]
      970 GETTABLEKS                       R40 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      972 GETTABLEN                        R39 R40 4
      973 SETTABLEKS                       R39 R38 K94 ["id"]
      975 DUPTABLE                         R39 K197 [{["assetType"], ["id"], ["isIncluded"] = True}]
      976 GETIMPORT                        R40 K168 [Enum.AssetType.RightArm]
      978 GETTABLEKS                       R40 R40 K100 ["Value"]
      980 SETTABLEKS                       R40 R39 K91 ["assetType"]
      982 GETTABLEKS                       R41 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      984 GETTABLEN                        R40 R41 5
      985 SETTABLEKS                       R40 R39 K94 ["id"]
      987 DUPTABLE                         R40 K197 [{["assetType"], ["id"], ["isIncluded"] = True}]
      988 GETIMPORT                        R41 K172 [Enum.AssetType.RightLeg]
      990 GETTABLEKS                       R41 R41 K100 ["Value"]
      992 SETTABLEKS                       R41 R40 K91 ["assetType"]
      994 GETTABLEKS                       R42 R28 K61 ["AVATAR_LOOK_BUNDLE_ASSET_IDS"]
      996 GETTABLEN                        R41 R42 6
      997 SETTABLEKS                       R41 R40 K94 ["id"]
      999 SETLIST                          R34 R35 6 [1]
     1001 SETTABLEKS                       R34 R33 K194 ["assetsInBundle"]
     1003 SETTABLE                         R33 R31 R32
     1004 SETTABLEKS                       R31 R28 K198 ["MOCK_AVATAR_LOOK_BUNDLE_DATA"]
     1006 DUPCLOSURE                       R31 K199 [PROTO_1]
     1007 CAPTURE                          VAL R0
     1008 SETTABLEKS                       R31 R28 K200 ["findTextInCoreGui"]
     1010 DUPCLOSURE                       R31 K201 [PROTO_2]
     1011 CAPTURE                          VAL R28
     1012 SETTABLEKS                       R31 R28 K202 ["isConfirmItemsStage"]
     1014 DUPCLOSURE                       R31 K203 [PROTO_3]
     1015 CAPTURE                          VAL R28
     1016 SETTABLEKS                       R31 R28 K204 ["isEditInfoStage"]
     1018 DUPCLOSURE                       R31 K205 [PROTO_4]
     1019 CAPTURE                          VAL R28
     1020 SETTABLEKS                       R31 R28 K206 ["isFailureStage"]
     1022 DUPCLOSURE                       R31 K207 [PROTO_5]
     1023 CAPTURE                          VAL R28
     1024 SETTABLEKS                       R31 R28 K208 ["isSuccessStage"]
     1026 GETIMPORT                        R31 K211 [UDim2.fromOffset]
     1028 LOADN                            R32 40
     1029 LOADN                            R33 40
     1030 CALL                             R31 2 1
     1031 GETIMPORT                        R32 K211 [UDim2.fromOffset]
     1033 LOADN                            R33 400
     1034 LOADN                            R34 600
     1035 CALL                             R32 2 1
     1036 DUPCLOSURE                       R33 K212 [PROTO_6]
     1037 CAPTURE                          VAL R32
     1038 DUPCLOSURE                       R34 K213 [PROTO_7]
     1039 DUPCLOSURE                       R35 K214 [PROTO_9]
     1040 CAPTURE                          VAL R0
     1041 CAPTURE                          VAL R31
     1042 CAPTURE                          VAL R6
     1043 CAPTURE                          VAL R7
     1044 SETTABLEKS                       R35 R28 K215 ["clickContinueButton"]
     1046 DUPCLOSURE                       R35 K216 [PROTO_11]
     1047 CAPTURE                          VAL R0
     1048 CAPTURE                          VAL R31
     1049 CAPTURE                          VAL R6
     1050 CAPTURE                          VAL R7
     1051 SETTABLEKS                       R35 R28 K217 ["clickBackButton"]
     1053 DUPCLOSURE                       R35 K218 [PROTO_14]
     1054 CAPTURE                          VAL R0
     1055 CAPTURE                          VAL R7
     1056 CAPTURE                          VAL R32
     1057 CAPTURE                          VAL R33
     1058 CAPTURE                          VAL R31
     1059 CAPTURE                          VAL R6
     1060 SETTABLEKS                       R35 R28 K219 ["changeCreator"]
     1062 DUPCLOSURE                       R35 K220 [PROTO_16]
     1063 CAPTURE                          VAL R28
     1064 CAPTURE                          VAL R0
     1065 CAPTURE                          VAL R7
     1066 CAPTURE                          VAL R33
     1067 CAPTURE                          VAL R31
     1068 CAPTURE                          VAL R6
     1069 SETTABLEKS                       R35 R28 K221 ["toggleItem"]
     1071 DUPCLOSURE                       R35 K222 [PROTO_17]
     1072 CAPTURE                          VAL R0
     1073 CAPTURE                          VAL R33
     1074 CAPTURE                          VAL R31
     1075 CAPTURE                          VAL R7
     1076 SETTABLEKS                       R35 R28 K223 ["changeColor"]
     1078 DUPCLOSURE                       R35 K224 [PROTO_21]
     1079 CAPTURE                          VAL R28
     1080 CAPTURE                          VAL R0
     1081 CAPTURE                          VAL R6
     1082 CAPTURE                          VAL R31
     1083 CAPTURE                          VAL R7
     1084 SETTABLEKS                       R35 R28 K225 ["enterName"]
     1086 DUPCLOSURE                       R35 K226 [PROTO_22]
     1087 CAPTURE                          VAL R28
     1088 SETTABLEKS                       R35 R28 K227 ["checkErrorBannerText"]
     1090 DUPCLOSURE                       R35 K228 [PROTO_23]
     1091 CAPTURE                          VAL R7
     1092 CAPTURE                          VAL R0
     1093 SETTABLEKS                       R35 R28 K229 ["queryErrorBannerCloseButton"]
     1095 DUPCLOSURE                       R35 K230 [PROTO_25]
     1096 CAPTURE                          VAL R28
     1097 CAPTURE                          VAL R33
     1098 CAPTURE                          VAL R0
     1099 CAPTURE                          VAL R31
     1100 CAPTURE                          VAL R6
     1101 CAPTURE                          VAL R7
     1102 SETTABLEKS                       R35 R28 K231 ["clickErrorBannerDismiss"]
     1104 DUPCLOSURE                       R35 K232 [PROTO_27]
     1105 CAPTURE                          VAL R0
     1106 CAPTURE                          VAL R31
     1107 CAPTURE                          VAL R6
     1108 CAPTURE                          VAL R7
     1109 SETTABLEKS                       R35 R28 K233 ["openErrorDialog"]
     1111 DUPCLOSURE                       R35 K234 [PROTO_28]
     1112 CAPTURE                          VAL R28
     1113 SETTABLEKS                       R35 R28 K235 ["checkErrorDialogText"]
     1115 DUPCLOSURE                       R35 K236 [PROTO_29]
     1116 CAPTURE                          VAL R28
     1117 SETTABLEKS                       R35 R28 K237 ["isItemInDetailsList"]
     1119 DUPCLOSURE                       R35 K238 [PROTO_30]
     1120 CAPTURE                          VAL R28
     1121 CAPTURE                          VAL R14
     1122 SETTABLEKS                       R35 R28 K239 ["getUserEquippedItems"]
     1124 DUPCLOSURE                       R35 K240 [PROTO_31]
     1125 CAPTURE                          VAL R28
     1126 SETTABLEKS                       R35 R28 K241 ["getMixedCreatorMakeupLookEquippedItems"]
     1128 DUPCLOSURE                       R35 K242 [PROTO_32]
     1129 CAPTURE                          VAL R28
     1130 CAPTURE                          VAL R14
     1131 SETTABLEKS                       R35 R28 K243 ["getGroupEquippedItems"]
     1133 DUPCLOSURE                       R35 K244 [PROTO_33]
     1134 CAPTURE                          VAL R28
     1135 CAPTURE                          VAL R12
     1136 CAPTURE                          VAL R15
     1137 CAPTURE                          VAL R9
     1138 SETTABLEKS                       R35 R28 K245 ["getExpectedLook"]
     1140 LOADNIL                          R35
     1141 SETTABLEKS                       R35 R28 K246 ["lookCreationInfo"]
     1143 NEWTABLE                         R35 0 0
     1145 DUPCLOSURE                       R36 K247 [PROTO_34]
     1146 CAPTURE                          VAL R28
     1147 LOADNIL                          R37
     1148 NEWCLOSURE                       R38 P25
     1149 CAPTURE                          VAL R8
     1150 CAPTURE                          VAL R1
     1151 CAPTURE                          VAL R11
     1152 CAPTURE                          VAL R28
     1153 CAPTURE                          REF R37
     1154 CAPTURE                          VAL R13
     1155 CAPTURE                          REF R35
     1156 DUPCLOSURE                       R39 K248 [PROTO_38]
     1157 CAPTURE                          VAL R8
     1158 CAPTURE                          VAL R1
     1159 CAPTURE                          VAL R11
     1160 CAPTURE                          VAL R28
     1161 CAPTURE                          VAL R38
     1162 DUPCLOSURE                       R40 K249 [PROTO_40]
     1163 CAPTURE                          VAL R8
     1164 DUPCLOSURE                       R41 K250 [PROTO_42]
     1165 CAPTURE                          VAL R8
     1166 CAPTURE                          VAL R1
     1167 CAPTURE                          VAL R11
     1168 CAPTURE                          VAL R28
     1169 CAPTURE                          VAL R38
     1170 DUPCLOSURE                       R42 K251 [PROTO_44]
     1171 CAPTURE                          VAL R8
     1172 CAPTURE                          VAL R11
     1173 CAPTURE                          VAL R1
     1174 CAPTURE                          VAL R28
     1175 CAPTURE                          VAL R38
     1176 NEWCLOSURE                       R43 P30
     1177 CAPTURE                          REF R37
     1178 CAPTURE                          REF R35
     1179 CAPTURE                          VAL R13
     1180 CAPTURE                          VAL R39
     1181 CAPTURE                          VAL R40
     1182 CAPTURE                          VAL R41
     1183 CAPTURE                          VAL R42
     1184 CAPTURE                          VAL R38
     1185 SETTABLEKS                       R43 R28 K252 ["createMockLookComposerRequestInternal"]
     1187 DUPCLOSURE                       R43 K253 [PROTO_48]
     1188 CAPTURE                          VAL R28
     1189 SETTABLEKS                       R43 R28 K254 ["createMockAvatarEditorService"]
     1191 DUPCLOSURE                       R43 K255 [PROTO_51]
     1192 CAPTURE                          VAL R0
     1193 CAPTURE                          VAL R25
     1194 CAPTURE                          VAL R28
     1195 CAPTURE                          VAL R5
     1196 CAPTURE                          VAL R3
     1197 CAPTURE                          VAL R24
     1198 CAPTURE                          VAL R19
     1199 CAPTURE                          VAL R18
     1200 CAPTURE                          VAL R20
     1201 CAPTURE                          VAL R26
     1202 CAPTURE                          VAL R23
     1203 CAPTURE                          VAL R27
     1204 CAPTURE                          VAL R6
     1205 CAPTURE                          VAL R7
     1206 SETTABLEKS                       R43 R28 K256 ["createLookComposerDialogTest"]
     1208 DUPCLOSURE                       R43 K257 [PROTO_53]
     1209 CAPTURE                          VAL R28
     1210 CAPTURE                          VAL R16
     1211 CAPTURE                          VAL R5
     1212 CAPTURE                          VAL R18
     1213 CAPTURE                          VAL R21
     1214 CAPTURE                          VAL R22
     1215 SETTABLEKS                       R43 R28 K258 ["lookCreationTest"]
     1217 DUPCLOSURE                       R43 K259 [PROTO_55]
     1218 CAPTURE                          VAL R28
     1219 CAPTURE                          VAL R16
     1220 CAPTURE                          VAL R5
     1221 CAPTURE                          VAL R18
     1222 CAPTURE                          VAL R21
     1223 CAPTURE                          VAL R22
     1224 SETTABLEKS                       R43 R28 K260 ["lookCreationStartFromAssetIdTest"]
     1226 DUPCLOSURE                       R43 K261 [PROTO_57]
     1227 CAPTURE                          VAL R0
     1228 CAPTURE                          VAL R33
     1229 CAPTURE                          VAL R31
     1230 CAPTURE                          VAL R6
     1231 CAPTURE                          VAL R7
     1232 SETTABLEKS                       R43 R28 K262 ["clickAddAssetIdButton"]
     1234 DUPCLOSURE                       R43 K263 [PROTO_60]
     1235 CAPTURE                          VAL R0
     1236 CAPTURE                          VAL R7
     1237 CAPTURE                          VAL R6
     1238 SETTABLEKS                       R43 R28 K264 ["openAssetImportDialog"]
     1240 DUPCLOSURE                       R43 K265 [PROTO_61]
     1241 CAPTURE                          VAL R7
     1242 CAPTURE                          VAL R0
     1243 DUPCLOSURE                       R44 K266 [PROTO_62]
     1244 CAPTURE                          VAL R7
     1245 CAPTURE                          VAL R0
     1246 DUPCLOSURE                       R45 K267 [PROTO_65]
     1247 CAPTURE                          VAL R7
     1248 CAPTURE                          VAL R0
     1249 CAPTURE                          VAL R6
     1250 CAPTURE                          VAL R31
     1251 SETTABLEKS                       R45 R28 K268 ["typeTextInImportDialog"]
     1253 DUPCLOSURE                       R45 K269 [PROTO_67]
     1254 CAPTURE                          VAL R28
     1255 CAPTURE                          VAL R7
     1256 CAPTURE                          VAL R0
     1257 CAPTURE                          VAL R6
     1258 SETTABLEKS                       R45 R28 K270 ["enterTextInImportDialog"]
     1260 DUPCLOSURE                       R45 K271 [PROTO_68]
     1261 CAPTURE                          VAL R7
     1262 CAPTURE                          VAL R0
     1263 SETTABLEKS                       R45 R28 K272 ["getImportDialogText"]
     1265 DUPCLOSURE                       R45 K273 [PROTO_69]
     1266 CAPTURE                          VAL R7
     1267 CAPTURE                          VAL R0
     1268 SETTABLEKS                       R45 R28 K274 ["isImportDialogAddItemButtonEnabled"]
     1270 DUPCLOSURE                       R45 K275 [PROTO_70]
     1271 CAPTURE                          VAL R17
     1272 CAPTURE                          VAL R7
     1273 CAPTURE                          VAL R0
     1274 SETTABLEKS                       R45 R28 K276 ["clickAddItemButtonImportDialog"]
     1276 DUPCLOSURE                       R45 K277 [PROTO_72]
     1277 CAPTURE                          VAL R9
     1278 CAPTURE                          VAL R28
     1279 SETTABLEKS                       R45 R28 K278 ["addAssetIdsToImportDialog"]
     1281 DUPCLOSURE                       R45 K279 [PROTO_73]
     1282 CAPTURE                          VAL R28
     1283 SETTABLEKS                       R45 R28 K280 ["loadItemsIntoImportDialog"]
     1285 DUPCLOSURE                       R45 K281 [PROTO_74]
     1286 CAPTURE                          VAL R7
     1287 CAPTURE                          VAL R0
     1288 SETTABLEKS                       R45 R28 K282 ["getImportItemPriceText"]
     1290 DUPCLOSURE                       R45 K283 [PROTO_75]
     1291 CAPTURE                          VAL R7
     1292 CAPTURE                          VAL R0
     1293 SETTABLEKS                       R45 R28 K284 ["getLookItemPriceText"]
     1295 DUPCLOSURE                       R45 K285 [PROTO_77]
     1296 CAPTURE                          VAL R7
     1297 CAPTURE                          VAL R0
     1298 CAPTURE                          VAL R9
     1299 SETTABLEKS                       R45 R28 K286 ["getImportDialogItemNames"]
     1301 DUPCLOSURE                       R45 K287 [PROTO_78]
     1302 CAPTURE                          VAL R30
     1303 SETTABLEKS                       R45 R28 K288 ["getMockItemName"]
     1305 DUPCLOSURE                       R45 K289 [PROTO_79]
     1306 CAPTURE                          VAL R28
     1307 SETTABLEKS                       R45 R28 K290 ["hasImportNothingFoundError"]
     1309 DUPCLOSURE                       R45 K291 [PROTO_80]
     1310 CAPTURE                          VAL R28
     1311 SETTABLEKS                       R45 R28 K292 ["hasImportNothingFoundErrorForIds"]
     1313 DUPCLOSURE                       R45 K293 [PROTO_82]
     1314 CAPTURE                          VAL R0
     1315 CAPTURE                          VAL R31
     1316 CAPTURE                          VAL R6
     1317 CAPTURE                          VAL R7
     1318 SETTABLEKS                       R45 R28 K294 ["clickAddItemsButtonImportDialog"]
     1320 DUPCLOSURE                       R45 K295 [PROTO_85]
     1321 CAPTURE                          VAL R0
     1322 CAPTURE                          VAL R7
     1323 CAPTURE                          VAL R6
     1324 SETTABLEKS                       R45 R28 K296 ["openLookComposerDialog"]
     1326 DUPCLOSURE                       R45 K297 [PROTO_86]
     1327 CAPTURE                          VAL R28
     1328 SETTABLEKS                       R45 R28 K298 ["importMarketplaceItems"]
     1330 CLOSEUPVALS                      R35
     1331 RETURN                           R28 1
