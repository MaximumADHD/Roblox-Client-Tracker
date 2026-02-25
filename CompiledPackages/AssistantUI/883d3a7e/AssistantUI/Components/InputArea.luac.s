PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 LENGTH                           R2 R3
        3 ADDK                             R1 R2 K0 [1]
        4 SETTABLEKS                       R1 R0 K1 ["current"]
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 LENGTH                           R2 R0
        1 GETTABLE                         R1 R0 R2
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+2]
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K2 [table.clone]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETUPVAL                         R4 0
       11 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K4 [table.insert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 1
       18 CALL                             R2 0 1
       19 LENGTH                           R3 R1
       20 JUMPIFNOTLT                      R2 R3 ; [+13]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K5 ["List"]
       25 GETTABLEKS                       R3 R4 K6 ["getRange"]
       27 MOVE                             R4 R1
       28 LENGTH                           R7 R1
       29 SUB                              R6 R7 R2
       30 ADDK                             R5 R6 K7 [1]
       31 LENGTH                           R6 R1
       32 CALL                             R3 3 1
       33 MOVE                             R1 R3
       34 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["textBoxRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R1 K2 ["Text"]
        9 LENGTH                           R2 R3
       10 LOADN                            R3 0
       11 JUMPIFNOTLT                      R3 R2 ; [+2]
       13 RETURN                           R0 0
       14 NAMECALL                         R2 R1 K3 ["IsFocused"]
       16 CALL                             R2 1 1
       17 JUMPIF                           R2 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R2 R0 K4 ["UserInputType"]
       21 GETIMPORT                        R3 K7 [Enum.UserInputType.Keyboard]
       23 JUMPIFEQ                         R2 R3 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K1 ["current"]
       29 GETTABLEKS                       R3 R0 K8 ["KeyCode"]
       31 GETIMPORT                        R4 K10 [Enum.KeyCode.Tab]
       33 JUMPIFNOTEQ                      R3 R4 ; [+34]
       35 LOADN                            R3 1
       36 JUMPIFNOTLE                      R3 R2 ; [+30]
       38 GETUPVAL                         R4 2
       39 LENGTH                           R3 R4
       40 JUMPIFNOTLE                      R2 R3 ; [+26]
       42 GETUPVAL                         R3 1
       43 GETUPVAL                         R6 2
       44 LENGTH                           R5 R6
       45 ADDK                             R4 R5 K11 [1]
       46 SETTABLEKS                       R4 R3 K1 ["current"]
       48 GETUPVAL                         R3 3
       49 LOADNIL                          R4
       50 CALL                             R3 1 0
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R3 R4 K12 ["setInputText"]
       54 GETUPVAL                         R5 2
       55 GETTABLE                         R4 R5 R2
       56 CALL                             R3 1 0
       57 LOADB                            R5 0
       58 NAMECALL                         R3 R1 K13 ["ReleaseFocus"]
       60 CALL                             R3 2 0
       61 GETIMPORT                        R3 K16 [task.wait]
       63 CALL                             R3 0 0
       64 NAMECALL                         R3 R1 K17 ["CaptureFocus"]
       66 CALL                             R3 1 0
       67 RETURN                           R0 0
       68 GETTABLEKS                       R3 R0 K8 ["KeyCode"]
       70 GETIMPORT                        R4 K19 [Enum.KeyCode.Up]
       72 JUMPIFNOTEQ                      R3 R4 ; [+3]
       74 SUBK                             R2 R2 K11 [1]
       75 JUMP                             ; [+9]
       76 GETTABLEKS                       R3 R0 K8 ["KeyCode"]
       78 GETIMPORT                        R4 K21 [Enum.KeyCode.Down]
       80 JUMPIFNOTEQ                      R3 R4 ; [+3]
       82 ADDK                             R2 R2 K11 [1]
       83 JUMP                             ; [+1]
       84 RETURN                           R0 0
       85 LOADN                            R5 1
       86 GETUPVAL                         R8 2
       87 LENGTH                           R7 R8
       88 ADDK                             R6 R7 K11 [1]
       89 FASTCALL3                        MATH_CLAMP R2 R5 R6
       91 MOVE                             R4 R2
       92 GETIMPORT                        R3 K24 [math.clamp]
       94 CALL                             R3 3 1
       95 MOVE                             R2 R3
       96 GETUPVAL                         R3 1
       97 SETTABLEKS                       R2 R3 K1 ["current"]
       99 GETUPVAL                         R3 3
      100 GETUPVAL                         R5 2
      101 GETTABLE                         R4 R5 R2
      102 CALL                             R3 1 0
      103 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["useRef"]
        9 LOADN                            R4 1
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K0 ["useState"]
       14 LOADNIL                          R5
       15 CALL                             R4 1 2
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K2 ["useEffect"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R5
       23 NEWTABLE                         R8 0 1
       25 MOVE                             R9 R1
       26 SETLIST                          R8 R9 1 [1]
       28 CALL                             R6 2 0
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K3 ["useCallback"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U2
       36 NEWTABLE                         R8 0 0
       38 CALL                             R6 2 1
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R7 R8 K4 ["useContext"]
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R8 R9 K5 ["Context"]
       45 CALL                             R7 1 1
       46 GETUPVAL                         R8 4
       47 GETTABLEKS                       R9 R7 K6 ["inputBeganSignal"]
       49 NEWCLOSURE                       R10 P2
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 NEWTABLE                         R11 0 3
       56 MOVE                             R12 R1
       57 MOVE                             R13 R5
       58 GETTABLEKS                       R14 R0 K7 ["setInputText"]
       60 SETLIST                          R11 R12 3 [1]
       62 CALL                             R8 3 0
       63 MOVE                             R8 R6
       64 MOVE                             R9 R4
       65 RETURN                           R8 2

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R3 R0 K1 ["AbsoluteCanvasSize"]
        7 GETTABLEKS                       R2 R3 K2 ["X"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K0 ["current"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R4 R1 K3 ["AbsoluteSize"]
       17 GETTABLEKS                       R3 R4 K4 ["Y"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["onChanged"]
        6 GETTABLEKS                       R2 R0 K1 ["Text"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K0 ["onChanged"]
       13 GETTABLEKS                       R2 R0 K1 ["Text"]
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K1 ["Text"]
       18 RETURN                           R0 0

PROTO_9:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R5 K3 [Enum.ModifierKey.Shift]
        4 NAMECALL                         R3 R2 K4 ["IsModifierKeyDown"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+43]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K5 ["current"]
       11 JUMPIF                           R4 ; [+1]
       12 RETURN                           R0 0
       13 LOADN                            R5 0
       14 JUMPIFNOTLT                      R5 R4 ; [+7]
       16 GETTABLEKS                       R7 R0 K7 ["Text"]
       18 LENGTH                           R6 R7
       19 ADDK                             R5 R6 K6 [1]
       20 JUMPIFLE                         R4 R5 ; [+2]
       22 RETURN                           R0 0
       23 GETTABLEKS                       R9 R0 K7 ["Text"]
       25 LOADN                            R11 1
       26 SUBK                             R12 R4 K6 [1]
       27 NAMECALL                         R9 R9 K8 ["sub"]
       29 CALL                             R9 3 1
       30 MOVE                             R6 R9
       31 LOADK                            R7 K9 ["\n"]
       32 GETTABLEKS                       R8 R0 K7 ["Text"]
       34 MOVE                             R10 R4
       35 NAMECALL                         R8 R8 K8 ["sub"]
       37 CALL                             R8 2 1
       38 CONCAT                           R5 R6 R8
       39 SETTABLEKS                       R5 R0 K7 ["Text"]
       41 GETIMPORT                        R5 K12 [task.wait]
       43 CALL                             R5 0 0
       44 NAMECALL                         R5 R0 K13 ["CaptureFocus"]
       46 CALL                             R5 1 0
       47 ADDK                             R5 R4 K6 [1]
       48 SETTABLEKS                       R5 R0 K14 ["CursorPosition"]
       50 RETURN                           R0 0
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R4 R5 K15 ["onReturnPressed"]
       54 CALL                             R4 0 0
       55 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        2 JUMPIFNOTEQKN                    R1 K1 [-1] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["current"]
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R5 R0 K4 ["TextSize"]
       12 GETTABLEKS                       R6 R0 K5 ["LineHeight"]
       14 MUL                              R4 R5 R6
       15 DIVK                             R3 R4 K3 [2]
       16 GETTABLEKS                       R6 R0 K6 ["AbsoluteSize"]
       18 GETTABLEKS                       R5 R6 K7 ["X"]
       20 DIV                              R4 R5 R3
       21 GETIMPORT                        R5 K10 [string.find]
       23 GETTABLEKS                       R6 R0 K11 ["Text"]
       25 LOADK                            R7 K12 ["\n"]
       26 SUBK                             R8 R1 K13 [1]
       27 CALL                             R5 3 1
       28 GETIMPORT                        R6 K10 [string.find]
       30 GETTABLEKS                       R7 R0 K11 ["Text"]
       32 LOADK                            R8 K14 [" "]
       33 MOVE                             R9 R1
       34 CALL                             R6 3 1
       35 JUMPIFNOT                        R5 ; [+9]
       36 JUMPIFNOT                        R6 ; [+8]
       37 FASTCALL2                        MATH_MIN R5 R6 ; [+5]
       39 MOVE                             R8 R5
       40 MOVE                             R9 R6
       41 GETIMPORT                        R7 K17 [math.min]
       43 CALL                             R7 2 1
       44 MOVE                             R6 R7
       45 ADD                              R8 R1 R4
       46 MOVE                             R9 R6
       47 JUMPIF                           R9 ; [+3]
       48 GETTABLEKS                       R10 R0 K11 ["Text"]
       50 LENGTH                           R9 R10
       51 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       53 GETIMPORT                        R7 K17 [math.min]
       55 CALL                             R7 2 1
       56 GETTABLEKS                       R8 R0 K11 ["Text"]
       58 LOADN                            R10 1
       59 MOVE                             R11 R7
       60 NAMECALL                         R8 R8 K18 ["sub"]
       62 CALL                             R8 3 1
       63 GETUPVAL                         R9 1
       64 SETTABLEKS                       R1 R9 K2 ["current"]
       66 GETUPVAL                         R9 2
       67 SETTABLEKS                       R8 R9 K2 ["current"]
       69 SETTABLEKS                       R8 R2 K11 ["Text"]
       71 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K0 ["current"]
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETIMPORT                        R3 K3 [task.wait]
       12 CALL                             R3 0 0
       13 GETTABLEKS                       R3 R2 K4 ["CursorPosition"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K0 ["current"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R3 R0 K5 ["Text"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R4 R5 K0 ["current"]
       26 JUMPIFEQ                         R3 R4 ; [+2]
       28 RETURN                           R0 0
       29 GETTABLEKS                       R4 R1 K6 ["AbsoluteSize"]
       31 GETTABLEKS                       R3 R4 K7 ["Y"]
       33 GETTABLEKS                       R5 R1 K8 ["AbsolutePosition"]
       35 GETTABLEKS                       R4 R5 K7 ["Y"]
       37 ADD                              R5 R4 R3
       38 GETTABLEKS                       R8 R2 K8 ["AbsolutePosition"]
       40 GETTABLEKS                       R7 R8 K7 ["Y"]
       42 GETTABLEKS                       R9 R0 K9 ["TextBounds"]
       44 GETTABLEKS                       R8 R9 K7 ["Y"]
       46 ADD                              R6 R7 R8
       47 GETTABLEKS                       R9 R2 K10 ["TextSize"]
       49 GETTABLEKS                       R10 R2 K11 ["LineHeight"]
       51 MUL                              R8 R9 R10
       52 SUB                              R7 R6 R8
       53 LOADNIL                          R8
       54 JUMPIFNOTLT                      R7 R4 ; [+3]
       56 SUB                              R8 R4 R7
       57 JUMP                             ; [+5]
       58 JUMPIFNOTLT                      R5 R6 ; [+3]
       60 SUB                              R8 R5 R6
       61 JUMP                             ; [+1]
       62 RETURN                           R0 0
       63 GETTABLEKS                       R9 R1 K12 ["CanvasPosition"]
       65 GETIMPORT                        R10 K15 [Vector2.new]
       67 LOADN                            R11 0
       68 MOVE                             R12 R8
       69 CALL                             R10 2 1
       70 SUB                              R9 R9 R10
       71 SETTABLEKS                       R9 R1 K12 ["CanvasPosition"]
       73 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["TextBox"]
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K1 ["Dictionary"]
        5 GETTABLEKS                       R4 R5 K2 ["join"]
        7 DUPTABLE                         R5 K17 [{"PlaceholderText", "TextWrapped", "TextTruncate", "TextXAlignment", "TextYAlignment", "ClearTextOnFocus", "Font", "TextSize", "LineHeight", "TextColor3", "PlaceholderColor3", "TextEditable", "Interactable", "BackgroundTransparency"}]
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R6 R7 K18 ["placeholder"]
       11 SETTABLEKS                       R6 R5 K3 ["PlaceholderText"]
       13 GETUPVAL                         R6 3
       14 SETTABLEKS                       R6 R5 K4 ["TextWrapped"]
       16 GETUPVAL                         R7 3
       17 JUMPIFNOT                        R7 ; [+3]
       18 GETIMPORT                        R6 K21 [Enum.TextTruncate.None]
       20 JUMP                             ; [+2]
       21 GETIMPORT                        R6 K23 [Enum.TextTruncate.AtEnd]
       23 SETTABLEKS                       R6 R5 K5 ["TextTruncate"]
       25 GETIMPORT                        R6 K25 [Enum.TextXAlignment.Left]
       27 SETTABLEKS                       R6 R5 K6 ["TextXAlignment"]
       29 GETIMPORT                        R6 K27 [Enum.TextYAlignment.Center]
       31 SETTABLEKS                       R6 R5 K7 ["TextYAlignment"]
       33 LOADB                            R6 0
       34 SETTABLEKS                       R6 R5 K8 ["ClearTextOnFocus"]
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R6 R7 K9 ["Font"]
       39 SETTABLEKS                       R6 R5 K9 ["Font"]
       41 GETUPVAL                         R7 4
       42 GETTABLEKS                       R6 R7 K28 ["FontSize"]
       44 SETTABLEKS                       R6 R5 K10 ["TextSize"]
       46 GETUPVAL                         R7 4
       47 GETTABLEKS                       R6 R7 K11 ["LineHeight"]
       49 SETTABLEKS                       R6 R5 K11 ["LineHeight"]
       51 GETUPVAL                         R7 5
       52 GETTABLEKS                       R6 R7 K29 ["Color3"]
       54 SETTABLEKS                       R6 R5 K12 ["TextColor3"]
       56 GETUPVAL                         R7 6
       57 GETTABLEKS                       R6 R7 K29 ["Color3"]
       59 SETTABLEKS                       R6 R5 K13 ["PlaceholderColor3"]
       61 GETUPVAL                         R8 2
       62 GETTABLEKS                       R7 R8 K30 ["isDisabled"]
       64 NOT                              R6 R7
       65 SETTABLEKS                       R6 R5 K14 ["TextEditable"]
       67 GETUPVAL                         R8 2
       68 GETTABLEKS                       R7 R8 K30 ["isDisabled"]
       70 NOT                              R6 R7
       71 SETTABLEKS                       R6 R5 K15 ["Interactable"]
       73 LOADN                            R6 1
       74 SETTABLEKS                       R6 R5 K16 ["BackgroundTransparency"]
       76 MOVE                             R6 R0
       77 JUMPIF                           R6 ; [+2]
       78 NEWTABLE                         R6 0 0
       80 CALL                             R4 2 1
       81 MOVE                             R5 R1
       82 CALL                             R2 3 -1
       83 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R3 K3 ["BodySmall"]
       10 GETTABLEKS                       R5 R1 K4 ["Color"]
       12 GETTABLEKS                       R4 R5 K5 ["Content"]
       14 GETTABLEKS                       R3 R4 K6 ["Muted"]
       16 GETTABLEKS                       R6 R1 K4 ["Color"]
       18 GETTABLEKS                       R5 R6 K5 ["Content"]
       20 GETTABLEKS                       R4 R5 K7 ["Emphasis"]
       22 GETTABLEKS                       R8 R1 K8 ["Semantic"]
       24 GETTABLEKS                       R7 R8 K4 ["Color"]
       26 GETTABLEKS                       R6 R7 K9 ["Common"]
       28 GETTABLEKS                       R5 R6 K10 ["Placeholder"]
       30 GETTABLEKS                       R7 R1 K11 ["Size"]
       32 GETTABLEKS                       R6 R7 K12 ["Size_300"]
       34 GETTABLEKS                       R8 R1 K13 ["Padding"]
       36 GETTABLEKS                       R7 R8 K14 ["XXSmall"]
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R8 R9 K15 ["useRef"]
       41 LOADNIL                          R9
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R0 K16 ["textBoxRef"]
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R10 R11 K17 ["useState"]
       48 LOADN                            R11 0
       49 CALL                             R10 1 2
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R12 R13 K17 ["useState"]
       53 LOADN                            R13 0
       54 CALL                             R12 1 2
       55 GETTABLEKS                       R16 R0 K18 ["text"]
       57 LENGTH                           R15 R16
       58 LOADN                            R16 0
       59 JUMPIFLT                         R16 R15 ; [+2]
       61 LOADB                            R14 0 +1
       62 LOADB                            R14 1
       63 GETUPVAL                         R16 1
       64 GETTABLEKS                       R15 R16 K19 ["useCallback"]
       66 NEWCLOSURE                       R16 P0
       67 CAPTURE                          VAL R13
       68 NEWTABLE                         R17 0 1
       70 MOVE                             R18 R13
       71 SETLIST                          R17 R18 1 [1]
       73 CALL                             R15 2 1
       74 GETUPVAL                         R17 1
       75 GETTABLEKS                       R16 R17 K19 ["useCallback"]
       77 NEWCLOSURE                       R17 P1
       78 CAPTURE                          VAL R11
       79 NEWTABLE                         R18 0 1
       81 MOVE                             R19 R11
       82 SETLIST                          R18 R19 1 [1]
       84 CALL                             R16 2 1
       85 GETUPVAL                         R18 1
       86 GETTABLEKS                       R17 R18 K20 ["useEffect"]
       88 NEWCLOSURE                       R18 P2
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R11
       93 NEWTABLE                         R19 0 0
       95 CALL                             R17 2 0
       96 GETUPVAL                         R18 1
       97 GETTABLEKS                       R17 R18 K19 ["useCallback"]
       99 NEWCLOSURE                       R18 P3
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          VAL R0
      102 NEWTABLE                         R19 0 1
      104 GETTABLEKS                       R20 R0 K21 ["onChanged"]
      106 SETLIST                          R19 R20 1 [1]
      108 CALL                             R17 2 1
      109 GETUPVAL                         R19 1
      110 GETTABLEKS                       R18 R19 K15 ["useRef"]
      112 LOADNIL                          R19
      113 CALL                             R18 1 1
      114 GETUPVAL                         R20 1
      115 GETTABLEKS                       R19 R20 K15 ["useRef"]
      117 LOADNIL                          R20
      118 CALL                             R19 1 1
      119 GETUPVAL                         R21 1
      120 GETTABLEKS                       R20 R21 K15 ["useRef"]
      122 LOADNIL                          R21
      123 CALL                             R20 1 1
      124 GETUPVAL                         R22 1
      125 GETTABLEKS                       R21 R22 K19 ["useCallback"]
      127 NEWCLOSURE                       R22 P4
      128 CAPTURE                          VAL R19
      129 CAPTURE                          VAL R0
      130 NEWTABLE                         R23 0 1
      132 GETTABLEKS                       R24 R0 K22 ["onReturnPressed"]
      134 SETLIST                          R23 R24 1 [1]
      136 CALL                             R21 2 1
      137 GETUPVAL                         R23 1
      138 GETTABLEKS                       R22 R23 K19 ["useCallback"]
      140 NEWCLOSURE                       R23 P5
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R20
      144 NEWTABLE                         R24 0 1
      146 GETTABLEKS                       R25 R18 K23 ["current"]
      148 SETLIST                          R24 R25 1 [1]
      150 CALL                             R22 2 1
      151 GETUPVAL                         R24 1
      152 GETTABLEKS                       R23 R24 K19 ["useCallback"]
      154 NEWCLOSURE                       R24 P6
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R19
      158 CAPTURE                          VAL R20
      159 NEWTABLE                         R25 0 0
      161 CALL                             R23 2 1
      162 NEWCLOSURE                       R24 P7
      163 CAPTURE                          UPVAL U3
      164 CAPTURE                          UPVAL U4
      165 CAPTURE                          VAL R0
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R3
      170 GETUPVAL                         R26 5
      171 GETTABLEKS                       R25 R26 K24 ["get"]
      173 CALL                             R25 0 1
      174 GETTABLEKS                       R26 R25 K25 ["isRobloxScriptSecurity"]
      176 CALL                             R26 0 1
      177 GETUPVAL                         R27 3
      178 LOADK                            R28 K26 ["ScrollingFrame"]
      179 NEWTABLE                         R29 16 0
      181 GETIMPORT                        R30 K29 [UDim2.new]
      183 LOADN                            R31 1
      184 LOADN                            R32 0
      185 LOADN                            R33 0
      186 FASTCALL2K                       MATH_MIN R10 K30 ; [+5]
      188 MOVE                             R35 R10
      189 LOADK                            R36 K30 [140]
      190 GETIMPORT                        R34 K33 [math.min]
      192 CALL                             R34 2 1
      193 CALL                             R30 4 1
      194 SETTABLEKS                       R30 R29 K11 ["Size"]
      196 GETIMPORT                        R30 K37 [Enum.AutomaticSize.Y]
      198 SETTABLEKS                       R30 R29 K38 ["AutomaticCanvasSize"]
      200 GETIMPORT                        R30 K29 [UDim2.new]
      202 LOADN                            R31 0
      203 LOADN                            R32 0
      204 LOADN                            R33 0
      205 LOADN                            R34 0
      206 CALL                             R30 4 1
      207 SETTABLEKS                       R30 R29 K39 ["CanvasSize"]
      209 GETIMPORT                        R30 K41 [Enum.ScrollingDirection.Y]
      211 SETTABLEKS                       R30 R29 K40 ["ScrollingDirection"]
      213 GETTABLEKS                       R30 R5 K42 ["Color3"]
      215 SETTABLEKS                       R30 R29 K43 ["ScrollBarImageColor3"]
      217 LOADN                            R31 140
      218 JUMPIFNOTLT                      R31 R10 ; [+4]
      220 GETTABLEKS                       R30 R5 K44 ["Transparency"]
      222 JUMP                             ; [+1]
      223 LOADN                            R30 1
      224 SETTABLEKS                       R30 R29 K45 ["ScrollBarImageTransparency"]
      226 SETTABLEKS                       R6 R29 K46 ["ScrollBarThickness"]
      228 LOADN                            R31 140
      229 JUMPIFLT                         R31 R10 ; [+2]
      231 LOADB                            R30 0 +1
      232 LOADB                            R30 1
      233 SETTABLEKS                       R30 R29 K47 ["ScrollingEnabled"]
      235 GETIMPORT                        R30 K50 [Enum.ScrollBarInset.Always]
      237 SETTABLEKS                       R30 R29 K51 ["VerticalScrollBarInset"]
      239 LOADN                            R30 1
      240 SETTABLEKS                       R30 R29 K52 ["BackgroundTransparency"]
      242 LOADN                            R30 0
      243 SETTABLEKS                       R30 R29 K53 ["BorderSizePixel"]
      245 GETUPVAL                         R32 1
      246 GETTABLEKS                       R31 R32 K54 ["Change"]
      248 GETTABLEKS                       R30 R31 K55 ["AbsoluteCanvasSize"]
      250 SETTABLE                         R15 R29 R30
      251 SETTABLEKS                       R8 R29 K56 ["ref"]
      253 DUPTABLE                         R30 K61 [{"TextBox", "UIFlexItem", "UIListLayout", "UIPadding"}]
      254 MOVE                             R31 R24
      255 NEWTABLE                         R32 16 0
      257 GETTABLEKS                       R33 R0 K18 ["text"]
      259 SETTABLEKS                       R33 R32 K62 ["Text"]
      261 GETIMPORT                        R33 K64 [UDim2.fromOffset]
      263 LOADN                            R36 2
      264 MUL                              R35 R36 R7
      265 SUB                              R34 R12 R35
      266 LOADN                            R35 28
      267 CALL                             R33 2 1
      268 SETTABLEKS                       R33 R32 K11 ["Size"]
      270 GETIMPORT                        R33 K37 [Enum.AutomaticSize.Y]
      272 SETTABLEKS                       R33 R32 K35 ["AutomaticSize"]
      274 JUMPIFNOT                        R26 ; [+2]
      275 LOADB                            R33 1
      276 JUMP                             ; [+1]
      277 LOADNIL                          R33
      278 SETTABLEKS                       R33 R32 K65 ["ShouldEmitUpAndDownArrowEvents"]
      280 JUMPIFNOT                        R26 ; [+2]
      281 LOADB                            R33 1
      282 JUMP                             ; [+1]
      283 LOADNIL                          R33
      284 SETTABLEKS                       R33 R32 K66 ["ShouldEmitTabEvents"]
      286 GETUPVAL                         R35 1
      287 GETTABLEKS                       R34 R35 K54 ["Change"]
      289 GETTABLEKS                       R33 R34 K62 ["Text"]
      291 SETTABLE                         R17 R32 R33
      292 GETUPVAL                         R35 1
      293 GETTABLEKS                       R34 R35 K67 ["Event"]
      295 GETTABLEKS                       R33 R34 K68 ["FocusLost"]
      297 SETTABLE                         R21 R32 R33
      298 GETUPVAL                         R35 1
      299 GETTABLEKS                       R34 R35 K54 ["Change"]
      301 GETTABLEKS                       R33 R34 K69 ["AbsoluteSize"]
      303 SETTABLE                         R16 R32 R33
      304 GETUPVAL                         R35 1
      305 GETTABLEKS                       R34 R35 K54 ["Change"]
      307 GETTABLEKS                       R33 R34 K70 ["CursorPosition"]
      309 SETTABLE                         R22 R32 R33
      310 SETTABLEKS                       R9 R32 K56 ["ref"]
      312 DUPTABLE                         R33 K72 [{"TextBoundChecker", "UIListLayout"}]
      313 MOVE                             R34 R24
      314 NEWTABLE                         R35 8 0
      316 GETIMPORT                        R36 K74 [UDim2.fromScale]
      318 LOADN                            R37 1
      319 LOADN                            R38 0
      320 CALL                             R36 2 1
      321 SETTABLEKS                       R36 R35 K11 ["Size"]
      323 LOADN                            R36 1
      324 SETTABLEKS                       R36 R35 K75 ["TextTransparency"]
      326 GETIMPORT                        R36 K78 [Enum.TextYAlignment.Top]
      328 SETTABLEKS                       R36 R35 K76 ["TextYAlignment"]
      330 LOADB                            R36 0
      331 SETTABLEKS                       R36 R35 K79 ["Interactable"]
      333 LOADB                            R36 0
      334 SETTABLEKS                       R36 R35 K80 ["TextEditable"]
      336 LOADB                            R36 0
      337 SETTABLEKS                       R36 R35 K81 ["Selectable"]
      339 GETUPVAL                         R38 1
      340 GETTABLEKS                       R37 R38 K54 ["Change"]
      342 GETTABLEKS                       R36 R37 K82 ["TextBounds"]
      344 SETTABLE                         R23 R35 R36
      345 SETTABLEKS                       R18 R35 K56 ["ref"]
      347 CALL                             R34 1 1
      348 SETTABLEKS                       R34 R33 K71 ["TextBoundChecker"]
      350 GETUPVAL                         R34 3
      351 LOADK                            R35 K59 ["UIListLayout"]
      352 DUPTABLE                         R36 K84 [{"VerticalFlex"}]
      353 GETIMPORT                        R37 K87 [Enum.UIFlexAlignment.Fill]
      355 SETTABLEKS                       R37 R36 K83 ["VerticalFlex"]
      357 CALL                             R34 2 1
      358 SETTABLEKS                       R34 R33 K59 ["UIListLayout"]
      360 CALL                             R31 2 1
      361 SETTABLEKS                       R31 R30 K57 ["TextBox"]
      363 GETUPVAL                         R31 3
      364 LOADK                            R32 K58 ["UIFlexItem"]
      365 DUPTABLE                         R33 K90 [{"FlexMode", "ItemLineAlignment"}]
      366 GETIMPORT                        R34 K92 [Enum.UIFlexMode.Fill]
      368 SETTABLEKS                       R34 R33 K88 ["FlexMode"]
      370 GETIMPORT                        R34 K94 [Enum.ItemLineAlignment.Center]
      372 SETTABLEKS                       R34 R33 K89 ["ItemLineAlignment"]
      374 CALL                             R31 2 1
      375 SETTABLEKS                       R31 R30 K58 ["UIFlexItem"]
      377 GETUPVAL                         R31 3
      378 LOADK                            R32 K59 ["UIListLayout"]
      379 DUPTABLE                         R33 K95 [{"ItemLineAlignment"}]
      380 GETIMPORT                        R34 K94 [Enum.ItemLineAlignment.Center]
      382 SETTABLEKS                       R34 R33 K89 ["ItemLineAlignment"]
      384 CALL                             R31 2 1
      385 SETTABLEKS                       R31 R30 K59 ["UIListLayout"]
      387 GETUPVAL                         R31 3
      388 LOADK                            R32 K60 ["UIPadding"]
      389 DUPTABLE                         R33 K98 [{"PaddingLeft", "PaddingRight"}]
      390 GETIMPORT                        R34 K100 [UDim.new]
      392 LOADN                            R35 0
      393 MOVE                             R36 R7
      394 CALL                             R34 2 1
      395 SETTABLEKS                       R34 R33 K96 ["PaddingLeft"]
      397 GETIMPORT                        R34 K100 [UDim.new]
      399 LOADN                            R35 0
      400 MOVE                             R36 R7
      401 CALL                             R34 2 1
      402 SETTABLEKS                       R34 R33 K97 ["PaddingRight"]
      404 CALL                             R31 2 1
      405 SETTABLEKS                       R31 R30 K60 ["UIPadding"]
      407 CALL                             R27 3 -1
      408 RETURN                           R27 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["promptAndLoadImageAsync"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+11]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["current"]
        8 JUMPIFNOT                        R1 ; [+7]
        9 GETUPVAL                         R1 2
       10 NEWTABLE                         R2 0 1
       12 MOVE                             R3 R0
       13 SETLIST                          R2 R3 1 [1]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["removeImage"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R0 K2 [{"AskAssistant", "Responding"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["InputArea"]
        3 LOADK                            R4 K0 ["AskAssistant"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["AskAssistant"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["InputArea"]
       11 LOADK                            R4 K1 ["Responding"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Responding"]
       17 RETURN                           R0 1

PROTO_21:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 1
        4 NEWTABLE                         R1 0 0
        6 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETIMPORT                        R2 K2 [utf8.len]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+11]
        8 GETUPVAL                         R3 1
        9 LOADK                            R4 K3 [""]
       10 CALL                             R3 1 0
       11 GETUPVAL                         R4 2
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+2]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 LOADK                            R3 K3 [""]
       17 RETURN                           R3 1
       18 JUMPIFNOTLT                      R1 R2 ; [+14]
       20 GETIMPORT                        R3 K5 [utf8.offset]
       22 MOVE                             R4 R0
       23 ADDK                             R5 R1 K6 [1]
       24 LOADN                            R6 1
       25 CALL                             R3 3 1
       26 JUMPIFNOT                        R3 ; [+6]
       27 LOADN                            R6 1
       28 SUBK                             R7 R3 K6 [1]
       29 NAMECALL                         R4 R0 K7 ["sub"]
       31 CALL                             R4 3 1
       32 MOVE                             R0 R4
       33 GETUPVAL                         R3 1
       34 MOVE                             R4 R0
       35 CALL                             R3 1 0
       36 GETUPVAL                         R3 2
       37 CALL                             R3 0 1
       38 JUMPIFNOT                        R3 ; [+58]
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R3 R4 K8 ["CommandPrefix"]
       42 LOADN                            R6 1
       43 LENGTH                           R7 R3
       44 NAMECALL                         R4 R0 K7 ["sub"]
       46 CALL                             R4 3 1
       47 JUMPIFNOTEQ                      R4 R3 ; [+45]
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R6 R7 K9 ["CommandDelimiter"]
       52 NAMECALL                         R4 R0 K10 ["find"]
       54 CALL                             R4 2 1
       55 JUMPIF                           R4 ; [+37]
       56 LENGTH                           R7 R3
       57 ADDK                             R6 R7 K6 [1]
       58 NAMECALL                         R4 R0 K7 ["sub"]
       60 CALL                             R4 2 1
       61 GETUPVAL                         R6 3
       62 GETTABLEKS                       R5 R6 K11 ["getRegisteredSlashCommands"]
       64 CALL                             R5 0 1
       65 GETIMPORT                        R6 K14 [table.create]
       67 LENGTH                           R7 R5
       68 CALL                             R6 1 1
       69 MOVE                             R7 R5
       70 LOADNIL                          R8
       71 LOADNIL                          R9
       72 FORGPREP                         R7
       73 LOADN                            R14 1
       74 LENGTH                           R15 R4
       75 NAMECALL                         R12 R11 K7 ["sub"]
       77 CALL                             R12 3 1
       78 JUMPIFNOTEQ                      R12 R4 ; [+8]
       80 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       82 MOVE                             R13 R6
       83 MOVE                             R14 R11
       84 GETIMPORT                        R12 K16 [table.insert]
       86 CALL                             R12 2 0
       87 FORGLOOP                         R7 2 ; [-15]
       89 GETUPVAL                         R7 4
       90 MOVE                             R8 R6
       91 CALL                             R7 1 0
       92 RETURN                           R0 0
       93 GETUPVAL                         R4 4
       94 DUPCLOSURE                       R5 K17 [PROTO_21]
       95 CALL                             R4 1 0
       96 RETURN                           R0 0
       97 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["current"]
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETTABLEKS                       R3 R0 K2 ["Text"]
        9 LENGTH                           R2 R3
       10 ADDK                             R1 R2 K1 [1]
       11 SETTABLEKS                       R1 R0 K3 ["CursorPosition"]
       13 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R0 K2 [string.gsub]
        2 GETUPVAL                         R1 0
        3 LOADK                            R2 K3 ["^%s+"]
        4 LOADK                            R3 K4 [""]
        5 CALL                             R0 3 1
        6 GETIMPORT                        R1 K2 [string.gsub]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K5 ["%s+$"]
       10 LOADK                            R4 K4 [""]
       11 CALL                             R1 3 1
       12 LENGTH                           R2 R1
       13 JUMPIFNOTEQKN                    R2 K6 [0] ; [+6]
       15 GETUPVAL                         R3 1
       16 LENGTH                           R2 R3
       17 JUMPIFNOTEQKN                    R2 K6 [0] ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 2
       21 LOADK                            R3 K4 [""]
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 3
       24 CALL                             R2 0 1
       25 JUMPIFNOT                        R2 ; [+4]
       26 GETUPVAL                         R2 4
       27 NEWTABLE                         R3 0 0
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 5
       31 DUPTABLE                         R3 K9 [{"text", "images"}]
       32 SETTABLEKS                       R1 R3 K7 ["text"]
       34 GETUPVAL                         R6 1
       35 LENGTH                           R5 R6
       36 LOADN                            R6 0
       37 JUMPIFNOTLT                      R6 R5 ; [+3]
       39 GETUPVAL                         R4 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R4
       42 SETTABLEKS                       R4 R3 K8 ["images"]
       44 CALL                             R2 1 0
       45 LENGTH                           R2 R1
       46 LOADN                            R3 0
       47 JUMPIFNOTLT                      R3 R2 ; [+4]
       49 GETUPVAL                         R2 6
       50 MOVE                             R3 R1
       51 CALL                             R2 1 0
       52 GETUPVAL                         R2 7
       53 JUMPIFNOT                        R2 ; [+3]
       54 GETUPVAL                         R2 7
       55 MOVE                             R3 R1
       56 CALL                             R2 1 0
       57 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+19]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["get"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R0 R1 K1 ["EventLogger"]
        8 GETTABLEKS                       R1 R0 K2 ["getMessageGuid"]
       10 GETUPVAL                         R2 0
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R0 K3 ["logStopGeneration"]
       14 DUPTABLE                         R3 K6 [{"messageGuid", "sessionId"}]
       15 SETTABLEKS                       R1 R3 K4 ["messageGuid"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K5 ["sessionId"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R0 3
       22 JUMPIFNOT                        R0 ; [+2]
       23 GETUPVAL                         R0 3
       24 CALL                             R0 0 0
       25 GETUPVAL                         R0 4
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["inputEnabled"]
       11 GETTABLEKS                       R4 R2 K3 ["reasonDisabled"]
       13 GETTABLEKS                       R5 R2 K4 ["clearInputDisabled"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K0 ["useContext"]
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R7 R8 K1 ["Context"]
       21 CALL                             R6 1 1
       22 GETTABLEKS                       R7 R6 K5 ["sessionId"]
       24 GETUPVAL                         R8 4
       25 CALL                             R8 0 1
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R9 R10 K6 ["useState"]
       29 LOADK                            R10 K7 [""]
       30 CALL                             R9 1 2
       31 GETTABLEKS                       R12 R0 K8 ["textBoxRef"]
       33 JUMPIFNOT                        R12 ; [+3]
       34 GETTABLEKS                       R11 R0 K8 ["textBoxRef"]
       36 JUMP                             ; [+5]
       37 GETUPVAL                         R12 1
       38 GETTABLEKS                       R11 R12 K9 ["useRef"]
       40 LOADNIL                          R12
       41 CALL                             R11 1 1
       42 NEWTABLE                         R12 0 0
       44 LOADNIL                          R13
       45 LOADNIL                          R14
       46 LOADNIL                          R15
       47 GETUPVAL                         R17 1
       48 GETTABLEKS                       R16 R17 K9 ["useRef"]
       50 LOADB                            R17 1
       51 CALL                             R16 1 1
       52 GETUPVAL                         R18 1
       53 GETTABLEKS                       R17 R18 K10 ["useEffect"]
       55 NEWCLOSURE                       R18 P0
       56 CAPTURE                          VAL R16
       57 NEWTABLE                         R19 0 0
       59 CALL                             R17 2 0
       60 GETUPVAL                         R17 5
       61 CALL                             R17 0 1
       62 JUMPIFNOT                        R17 ; [+29]
       63 GETUPVAL                         R18 1
       64 GETTABLEKS                       R17 R18 K6 ["useState"]
       66 NEWTABLE                         R18 0 0
       68 CALL                             R17 1 2
       69 MOVE                             R12 R17
       70 MOVE                             R13 R18
       71 GETUPVAL                         R18 1
       72 GETTABLEKS                       R17 R18 K11 ["useCallback"]
       74 NEWCLOSURE                       R18 P1
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          VAL R16
       77 CAPTURE                          REF R13
       78 NEWTABLE                         R19 0 0
       80 CALL                             R17 2 1
       81 MOVE                             R14 R17
       82 GETUPVAL                         R18 1
       83 GETTABLEKS                       R17 R18 K11 ["useCallback"]
       85 NEWCLOSURE                       R18 P2
       86 CAPTURE                          REF R13
       87 CAPTURE                          UPVAL U6
       88 NEWTABLE                         R19 0 0
       90 CALL                             R17 2 1
       91 MOVE                             R15 R17
       92 NEWTABLE                         R17 0 0
       94 LOADNIL                          R18
       95 GETUPVAL                         R19 7
       96 CALL                             R19 0 1
       97 JUMPIFNOT                        R19 ; [+8]
       98 GETUPVAL                         R20 1
       99 GETTABLEKS                       R19 R20 K6 ["useState"]
      101 NEWTABLE                         R20 0 0
      103 CALL                             R19 1 2
      104 MOVE                             R17 R19
      105 MOVE                             R18 R20
      106 GETTABLEKS                       R19 R0 K12 ["OnMessageSent"]
      108 GETUPVAL                         R20 8
      109 DUPTABLE                         R21 K14 [{"setInputEnabled"}]
      110 GETUPVAL                         R22 9
      111 MOVE                             R23 R2
      112 CALL                             R22 1 1
      113 SETTABLEKS                       R22 R21 K13 ["setInputEnabled"]
      115 CALL                             R20 1 1
      116 GETUPVAL                         R22 1
      117 GETTABLEKS                       R21 R22 K15 ["useMemo"]
      119 DUPCLOSURE                       R22 K16 [PROTO_20]
      120 CAPTURE                          UPVAL U10
      121 NEWTABLE                         R23 0 1
      123 GETUPVAL                         R25 10
      124 GETTABLEKS                       R24 R25 K17 ["locale"]
      126 SETLIST                          R23 R24 1 [1]
      128 CALL                             R21 2 1
      129 GETUPVAL                         R22 11
      130 DUPTABLE                         R23 K19 [{"textBoxRef", "setInputText"}]
      131 SETTABLEKS                       R11 R23 K8 ["textBoxRef"]
      133 SETTABLEKS                       R10 R23 K18 ["setInputText"]
      135 CALL                             R22 1 2
      136 GETUPVAL                         R25 1
      137 GETTABLEKS                       R24 R25 K11 ["useCallback"]
      139 NEWCLOSURE                       R25 P4
      140 CAPTURE                          UPVAL U12
      141 CAPTURE                          VAL R10
      142 CAPTURE                          UPVAL U7
      143 CAPTURE                          UPVAL U13
      144 CAPTURE                          REF R18
      145 NEWTABLE                         R26 0 2
      147 MOVE                             R27 R10
      148 MOVE                             R28 R18
      149 SETLIST                          R26 R27 2 [1]
      151 CALL                             R24 2 1
      152 LOADNIL                          R25
      153 GETUPVAL                         R26 7
      154 CALL                             R26 0 1
      155 JUMPIFNOT                        R26 ; [+27]
      156 GETUPVAL                         R27 1
      157 GETTABLEKS                       R26 R27 K6 ["useState"]
      159 LOADNIL                          R27
      160 CALL                             R26 1 2
      161 GETUPVAL                         R29 1
      162 GETTABLEKS                       R28 R29 K10 ["useEffect"]
      164 NEWCLOSURE                       R29 P5
      165 CAPTURE                          VAL R26
      166 CAPTURE                          VAL R11
      167 NEWTABLE                         R30 0 1
      169 MOVE                             R31 R26
      170 SETLIST                          R30 R31 1 [1]
      172 CALL                             R28 2 0
      173 GETUPVAL                         R29 1
      174 GETTABLEKS                       R28 R29 K11 ["useCallback"]
      176 NEWCLOSURE                       R29 P6
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R27
      179 NEWTABLE                         R30 0 0
      181 CALL                             R28 2 1
      182 MOVE                             R25 R28
      183 GETUPVAL                         R27 1
      184 GETTABLEKS                       R26 R27 K11 ["useCallback"]
      186 NEWCLOSURE                       R27 P7
      187 CAPTURE                          VAL R9
      188 CAPTURE                          REF R12
      189 CAPTURE                          VAL R10
      190 CAPTURE                          UPVAL U5
      191 CAPTURE                          REF R13
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R19
      195 NEWTABLE                         R28 0 7
      197 MOVE                             R29 R9
      198 MOVE                             R30 R10
      199 MOVE                             R31 R20
      200 MOVE                             R32 R22
      201 MOVE                             R33 R19
      202 MOVE                             R34 R12
      203 MOVE                             R35 R13
      204 SETLIST                          R28 R29 7 [1]
      206 CALL                             R26 2 1
      207 GETUPVAL                         R28 1
      208 GETTABLEKS                       R27 R28 K11 ["useCallback"]
      210 NEWCLOSURE                       R28 P8
      211 CAPTURE                          VAL R8
      212 CAPTURE                          UPVAL U14
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R5
      216 NEWTABLE                         R29 0 4
      218 MOVE                             R30 R1
      219 MOVE                             R31 R5
      220 MOVE                             R32 R7
      221 MOVE                             R33 R8
      222 SETLIST                          R29 R30 4 [1]
      224 CALL                             R27 2 1
      225 MOVE                             R28 R4
      226 JUMPIFNOT                        R28 ; [+9]
      227 GETTABLEKS                       R29 R4 K3 ["reasonDisabled"]
      229 GETUPVAL                         R31 15
      230 GETTABLEKS                       R30 R31 K20 ["Generation"]
      232 JUMPIFEQ                         R29 R30 ; [+2]
      234 LOADB                            R28 0 +1
      235 LOADB                            R28 1
      236 GETUPVAL                         R29 16
      237 CALL                             R29 0 1
      238 LOADNIL                          R30
      239 LOADNIL                          R31
      240 GETUPVAL                         R32 7
      241 CALL                             R32 0 1
      242 JUMPIFNOT                        R32 ; [+7]
      243 GETUPVAL                         R33 1
      244 GETTABLEKS                       R32 R33 K21 ["useBinding"]
      246 LOADN                            R33 0
      247 CALL                             R32 1 2
      248 MOVE                             R30 R32
      249 MOVE                             R31 R33
      250 GETUPVAL                         R32 17
      251 CALL                             R32 0 1
      252 JUMPIF                           R32 ; [+3]
      253 GETUPVAL                         R32 18
      254 CALL                             R32 0 1
      255 JUMPIFNOT                        R32 ; [+312]
      256 GETUPVAL                         R32 19
      257 GETUPVAL                         R33 20
      258 DUPTABLE                         R34 K25 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      259 LOADK                            R35 K26 ["col size-full-0 auto-y padding-y-small padding-right-small padding-left-large gap-small stroke-emphasis radius-large"]
      260 SETTABLEKS                       R35 R34 K22 ["tag"]
      262 GETUPVAL                         R36 7
      263 CALL                             R36 0 1
      264 JUMPIFNOT                        R36 ; [+3]
      265 NEWCLOSURE                       R35 P9
      266 CAPTURE                          REF R31
      267 JUMP                             ; [+1]
      268 LOADNIL                          R35
      269 SETTABLEKS                       R35 R34 K23 ["onAbsoluteSizeChanged"]
      271 MOVE                             R35 R29
      272 CALL                             R35 0 1
      273 SETTABLEKS                       R35 R34 K24 ["LayoutOrder"]
      275 DUPTABLE                         R35 K30 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      276 GETUPVAL                         R36 7
      277 CALL                             R36 0 1
      278 JUMPIFNOT                        R36 ; [+12]
      279 GETUPVAL                         R36 19
      280 LOADK                            R37 K27 ["UIFlexItem"]
      281 DUPTABLE                         R38 K33 [{"FlexMode", "ItemLineAlignment"}]
      282 GETIMPORT                        R39 K37 [Enum.UIFlexMode.Fill]
      284 SETTABLEKS                       R39 R38 K31 ["FlexMode"]
      286 GETIMPORT                        R39 K39 [Enum.ItemLineAlignment.Center]
      288 SETTABLEKS                       R39 R38 K32 ["ItemLineAlignment"]
      290 CALL                             R36 2 1
      291 SETTABLEKS                       R36 R35 K27 ["UIFlexItem"]
      293 GETUPVAL                         R36 5
      294 CALL                             R36 0 1
      295 JUMPIFNOT                        R36 ; [+27]
      296 LOADB                            R36 0
      297 LENGTH                           R37 R12
      298 LOADN                            R38 0
      299 JUMPIFNOTLT                      R38 R37 ; [+23]
      301 GETUPVAL                         R36 19
      302 GETUPVAL                         R37 20
      303 DUPTABLE                         R38 K40 [{"tag", "LayoutOrder"}]
      304 LOADK                            R39 K41 ["row size-full-0 auto-y padding-bottom-small"]
      305 SETTABLEKS                       R39 R38 K22 ["tag"]
      307 MOVE                             R39 R29
      308 CALL                             R39 0 1
      309 SETTABLEKS                       R39 R38 K24 ["LayoutOrder"]
      311 DUPTABLE                         R39 K43 [{"List"}]
      312 GETUPVAL                         R40 19
      313 GETUPVAL                         R41 21
      314 DUPTABLE                         R42 K46 [{"attachedImages", "onRemoveImage"}]
      315 SETTABLEKS                       R12 R42 K44 ["attachedImages"]
      317 SETTABLEKS                       R15 R42 K45 ["onRemoveImage"]
      319 CALL                             R40 2 1
      320 SETTABLEKS                       R40 R39 K42 ["List"]
      322 CALL                             R36 3 1
      323 SETTABLEKS                       R36 R35 K28 ["AttachedImagesPreview"]
      325 GETUPVAL                         R36 19
      326 GETUPVAL                         R37 20
      327 DUPTABLE                         R38 K40 [{"tag", "LayoutOrder"}]
      328 LOADK                            R39 K47 ["row size-full-0 auto-y gap-small flex-between flex-y-fill align-y-center"]
      329 SETTABLEKS                       R39 R38 K22 ["tag"]
      331 MOVE                             R39 R29
      332 CALL                             R39 0 1
      333 SETTABLEKS                       R39 R38 K24 ["LayoutOrder"]
      335 DUPTABLE                         R39 K50 [{"TextInput", "RightColumn"}]
      336 GETUPVAL                         R40 19
      337 GETUPVAL                         R41 22
      338 DUPTABLE                         R42 K56 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "textBoxRef"}]
      339 SETTABLEKS                       R9 R42 K51 ["text"]
      341 JUMPIFNOT                        R28 ; [+3]
      342 GETTABLEKS                       R43 R21 K57 ["Responding"]
      344 JUMP                             ; [+6]
      345 JUMPIFEQKNIL                     R23 ; [+3]
      347 MOVE                             R43 R23
      348 JUMP                             ; [+2]
      349 GETTABLEKS                       R43 R21 K58 ["AskAssistant"]
      351 SETTABLEKS                       R43 R42 K52 ["placeholder"]
      353 NOT                              R43 R3
      354 SETTABLEKS                       R43 R42 K53 ["isDisabled"]
      356 MOVE                             R43 R29
      357 CALL                             R43 0 1
      358 SETTABLEKS                       R43 R42 K24 ["LayoutOrder"]
      360 SETTABLEKS                       R24 R42 K54 ["onChanged"]
      362 SETTABLEKS                       R26 R42 K55 ["onReturnPressed"]
      364 SETTABLEKS                       R11 R42 K8 ["textBoxRef"]
      366 CALL                             R40 2 1
      367 SETTABLEKS                       R40 R39 K48 ["TextInput"]
      369 GETUPVAL                         R40 19
      370 GETUPVAL                         R41 20
      371 DUPTABLE                         R42 K40 [{"tag", "LayoutOrder"}]
      372 LOADK                            R43 K59 ["row auto-xy gap-small align-y-center"]
      373 SETTABLEKS                       R43 R42 K22 ["tag"]
      375 MOVE                             R43 R29
      376 CALL                             R43 0 1
      377 SETTABLEKS                       R43 R42 K24 ["LayoutOrder"]
      379 DUPTABLE                         R43 K64 [{"AttachImageButton", "ServerManagementButton", "SendButton", "StopButton"}]
      380 GETUPVAL                         R44 5
      381 CALL                             R44 0 1
      382 JUMPIFNOT                        R44 ; [+29]
      383 GETUPVAL                         R44 19
      384 GETUPVAL                         R45 23
      385 DUPTABLE                         R46 K69 [{"icon", "tag", "iconTag", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      386 LOADK                            R47 K70 ["icons/common/image-on"]
      387 SETTABLEKS                       R47 R46 K65 ["icon"]
      389 LOADK                            R47 K71 ["size-600-600 radius-circle bg-surface-100 align-x-center align-y-center"]
      390 SETTABLEKS                       R47 R46 K22 ["tag"]
      392 LOADK                            R47 K72 ["size-500-500 content-default"]
      393 SETTABLEKS                       R47 R46 K66 ["iconTag"]
      395 NOT                              R47 R3
      396 SETTABLEKS                       R47 R46 K53 ["isDisabled"]
      398 SETTABLEKS                       R14 R46 K67 ["onActivated"]
      400 MOVE                             R47 R29
      401 CALL                             R47 0 1
      402 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      404 GETUPVAL                         R49 24
      405 GETTABLEKS                       R48 R49 K73 ["InputArea"]
      407 GETTABLEKS                       R47 R48 K60 ["AttachImageButton"]
      409 SETTABLEKS                       R47 R46 K68 ["testId"]
      411 CALL                             R44 2 1
      412 SETTABLEKS                       R44 R43 K60 ["AttachImageButton"]
      414 GETUPVAL                         R44 19
      415 GETUPVAL                         R45 25
      416 DUPTABLE                         R46 K74 [{"LayoutOrder"}]
      417 MOVE                             R47 R29
      418 CALL                             R47 0 1
      419 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      421 CALL                             R44 2 1
      422 SETTABLEKS                       R44 R43 K61 ["ServerManagementButton"]
      424 NOT                              R44 R28
      425 JUMPIFNOT                        R44 ; [+35]
      426 GETUPVAL                         R44 19
      427 GETUPVAL                         R45 23
      428 DUPTABLE                         R46 K77 [{"icon", "tag", "iconTag", "iconRotation", "isDisabled", "onActivated", "LayoutOrder", "skipBackgroundColoringDisabled"}]
      429 LOADK                            R47 K78 ["icons/navigation/seeAllArrow_small"]
      430 SETTABLEKS                       R47 R46 K65 ["icon"]
      432 LOADK                            R47 K79 ["size-600-600 radius-circle bg-action-emphasis align-x-center align-y-center"]
      433 SETTABLEKS                       R47 R46 K22 ["tag"]
      435 LOADK                            R47 K80 ["size-300-300 content-emphasis"]
      436 SETTABLEKS                       R47 R46 K66 ["iconTag"]
      438 LOADN                            R47 166
      439 SETTABLEKS                       R47 R46 K75 ["iconRotation"]
      441 LENGTH                           R48 R9
      442 JUMPIFNOTEQKN                    R48 K81 [0] ; [+5]
      444 LOADB                            R47 1
      445 LENGTH                           R48 R12
      446 JUMPIFEQKN                       R48 K81 [0] ; [+2]
      448 NOT                              R47 R3
      449 SETTABLEKS                       R47 R46 K53 ["isDisabled"]
      451 SETTABLEKS                       R26 R46 K67 ["onActivated"]
      453 MOVE                             R47 R29
      454 CALL                             R47 0 1
      455 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      457 LOADB                            R47 1
      458 SETTABLEKS                       R47 R46 K76 ["skipBackgroundColoringDisabled"]
      460 CALL                             R44 2 1
      461 SETTABLEKS                       R44 R43 K62 ["SendButton"]
      463 MOVE                             R44 R28
      464 JUMPIFNOT                        R44 ; [+29]
      465 GETUPVAL                         R44 19
      466 GETUPVAL                         R45 23
      467 DUPTABLE                         R46 K82 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId", "skipBackgroundColoringDisabled"}]
      468 LOADK                            R47 K83 ["icons/controls/mediaStop_small"]
      469 SETTABLEKS                       R47 R46 K65 ["icon"]
      471 LOADK                            R47 K84 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
      472 SETTABLEKS                       R47 R46 K22 ["tag"]
      474 LOADK                            R47 K80 ["size-300-300 content-emphasis"]
      475 SETTABLEKS                       R47 R46 K66 ["iconTag"]
      477 SETTABLEKS                       R27 R46 K67 ["onActivated"]
      479 MOVE                             R47 R29
      480 CALL                             R47 0 1
      481 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      483 GETUPVAL                         R49 24
      484 GETTABLEKS                       R48 R49 K73 ["InputArea"]
      486 GETTABLEKS                       R47 R48 K63 ["StopButton"]
      488 SETTABLEKS                       R47 R46 K68 ["testId"]
      490 LOADB                            R47 1
      491 SETTABLEKS                       R47 R46 K76 ["skipBackgroundColoringDisabled"]
      493 CALL                             R44 2 1
      494 SETTABLEKS                       R44 R43 K63 ["StopButton"]
      496 CALL                             R40 3 1
      497 SETTABLEKS                       R40 R39 K49 ["RightColumn"]
      499 CALL                             R36 3 1
      500 SETTABLEKS                       R36 R35 K29 ["InputRow"]
      502 CALL                             R32 3 1
      503 GETUPVAL                         R33 19
      504 GETUPVAL                         R34 20
      505 DUPTABLE                         R35 K85 [{"tag", "LayoutOrder", "testId"}]
      506 LOADK                            R36 K86 ["col size-full-0 auto-y margin-x-small"]
      507 SETTABLEKS                       R36 R35 K22 ["tag"]
      509 GETTABLEKS                       R36 R0 K24 ["LayoutOrder"]
      511 SETTABLEKS                       R36 R35 K24 ["LayoutOrder"]
      513 GETUPVAL                         R38 24
      514 GETTABLEKS                       R37 R38 K73 ["InputArea"]
      516 GETTABLEKS                       R36 R37 K87 ["Container"]
      518 SETTABLEKS                       R36 R35 K68 ["testId"]
      520 DUPTABLE                         R36 K91 [{"Menu", "MessageField", "Footer"}]
      521 GETUPVAL                         R37 7
      522 CALL                             R37 0 1
      523 JUMPIFNOT                        R37 ; [+23]
      524 GETUPVAL                         R37 19
      525 GETUPVAL                         R38 26
      526 DUPTABLE                         R39 K96 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus"}]
      527 LENGTH                           R41 R17
      528 LOADN                            R42 0
      529 JUMPIFLT                         R42 R41 ; [+2]
      531 LOADB                            R40 0 +1
      532 LOADB                            R40 1
      533 SETTABLEKS                       R40 R39 K92 ["isOpen"]
      535 SETTABLEKS                       R17 R39 K93 ["items"]
      537 SETTABLEKS                       R30 R39 K94 ["width"]
      539 SETTABLEKS                       R11 R39 K8 ["textBoxRef"]
      541 SETTABLEKS                       R25 R39 K95 ["setTextAndFocus"]
      543 DUPTABLE                         R40 K97 [{"MessageField"}]
      544 SETTABLEKS                       R32 R40 K89 ["MessageField"]
      546 CALL                             R37 3 1
      547 SETTABLEKS                       R37 R36 K88 ["Menu"]
      549 GETUPVAL                         R39 7
      550 CALL                             R39 0 1
      551 NOT                              R38 R39
      552 AND                              R37 R38 R32
      553 SETTABLEKS                       R37 R36 K89 ["MessageField"]
      555 GETUPVAL                         R37 19
      556 GETUPVAL                         R38 27
      557 DUPTABLE                         R39 K74 [{"LayoutOrder"}]
      558 MOVE                             R40 R29
      559 CALL                             R40 0 1
      560 SETTABLEKS                       R40 R39 K24 ["LayoutOrder"]
      562 CALL                             R37 2 1
      563 SETTABLEKS                       R37 R36 K90 ["Footer"]
      565 CALL                             R33 3 -1
      566 CLOSEUPVALS                      R12
      567 RETURN                           R33 -1
      568 GETUPVAL                         R32 19
      569 GETUPVAL                         R33 20
      570 DUPTABLE                         R34 K25 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      571 NEWTABLE                         R35 1 0
      573 LOADB                            R36 1
      574 SETTABLEKS                       R36 R35 K98 ["col size-full-0 auto-y padding-y-small padding-right-small padding-left-large gap-xxsmall stroke-standard stroke-emphasis radius-large"]
      576 SETTABLEKS                       R35 R34 K22 ["tag"]
      578 GETUPVAL                         R36 7
      579 CALL                             R36 0 1
      580 JUMPIFNOT                        R36 ; [+3]
      581 NEWCLOSURE                       R35 P10
      582 CAPTURE                          REF R31
      583 JUMP                             ; [+1]
      584 LOADNIL                          R35
      585 SETTABLEKS                       R35 R34 K23 ["onAbsoluteSizeChanged"]
      587 MOVE                             R35 R29
      588 CALL                             R35 0 1
      589 SETTABLEKS                       R35 R34 K24 ["LayoutOrder"]
      591 DUPTABLE                         R35 K30 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      592 GETUPVAL                         R36 7
      593 CALL                             R36 0 1
      594 JUMPIFNOT                        R36 ; [+12]
      595 GETUPVAL                         R36 19
      596 LOADK                            R37 K27 ["UIFlexItem"]
      597 DUPTABLE                         R38 K33 [{"FlexMode", "ItemLineAlignment"}]
      598 GETIMPORT                        R39 K37 [Enum.UIFlexMode.Fill]
      600 SETTABLEKS                       R39 R38 K31 ["FlexMode"]
      602 GETIMPORT                        R39 K39 [Enum.ItemLineAlignment.Center]
      604 SETTABLEKS                       R39 R38 K32 ["ItemLineAlignment"]
      606 CALL                             R36 2 1
      607 SETTABLEKS                       R36 R35 K27 ["UIFlexItem"]
      609 GETUPVAL                         R36 5
      610 CALL                             R36 0 1
      611 JUMPIFNOT                        R36 ; [+27]
      612 LOADB                            R36 0
      613 LENGTH                           R37 R12
      614 LOADN                            R38 0
      615 JUMPIFNOTLT                      R38 R37 ; [+23]
      617 GETUPVAL                         R36 19
      618 GETUPVAL                         R37 20
      619 DUPTABLE                         R38 K40 [{"tag", "LayoutOrder"}]
      620 LOADK                            R39 K41 ["row size-full-0 auto-y padding-bottom-small"]
      621 SETTABLEKS                       R39 R38 K22 ["tag"]
      623 MOVE                             R39 R29
      624 CALL                             R39 0 1
      625 SETTABLEKS                       R39 R38 K24 ["LayoutOrder"]
      627 DUPTABLE                         R39 K43 [{"List"}]
      628 GETUPVAL                         R40 19
      629 GETUPVAL                         R41 21
      630 DUPTABLE                         R42 K46 [{"attachedImages", "onRemoveImage"}]
      631 SETTABLEKS                       R12 R42 K44 ["attachedImages"]
      633 SETTABLEKS                       R15 R42 K45 ["onRemoveImage"]
      635 CALL                             R40 2 1
      636 SETTABLEKS                       R40 R39 K42 ["List"]
      638 CALL                             R36 3 1
      639 SETTABLEKS                       R36 R35 K28 ["AttachedImagesPreview"]
      641 GETUPVAL                         R36 19
      642 GETUPVAL                         R37 20
      643 DUPTABLE                         R38 K40 [{"tag", "LayoutOrder"}]
      644 NEWTABLE                         R39 4 0
      646 LOADB                            R40 1
      647 SETTABLEKS                       R40 R39 K99 ["row size-full-0 auto-y gap-xxsmall flex-between flex-y-fill"]
      649 GETUPVAL                         R41 7
      650 CALL                             R41 0 1
      651 NOT                              R40 R41
      652 SETTABLEKS                       R40 R39 K100 ["align-y-center"]
      654 GETUPVAL                         R40 7
      655 CALL                             R40 0 1
      656 SETTABLEKS                       R40 R39 K101 ["align-y-bottom"]
      658 SETTABLEKS                       R39 R38 K22 ["tag"]
      660 MOVE                             R39 R29
      661 CALL                             R39 0 1
      662 SETTABLEKS                       R39 R38 K24 ["LayoutOrder"]
      664 DUPTABLE                         R39 K103 [{"TextInput", "ButtonColumn"}]
      665 GETUPVAL                         R40 19
      666 GETUPVAL                         R41 22
      667 DUPTABLE                         R42 K56 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "textBoxRef"}]
      668 SETTABLEKS                       R9 R42 K51 ["text"]
      670 JUMPIFNOT                        R28 ; [+3]
      671 GETTABLEKS                       R43 R21 K57 ["Responding"]
      673 JUMP                             ; [+6]
      674 JUMPIFEQKNIL                     R23 ; [+3]
      676 MOVE                             R43 R23
      677 JUMP                             ; [+2]
      678 GETTABLEKS                       R43 R21 K58 ["AskAssistant"]
      680 SETTABLEKS                       R43 R42 K52 ["placeholder"]
      682 NOT                              R43 R3
      683 SETTABLEKS                       R43 R42 K53 ["isDisabled"]
      685 MOVE                             R43 R29
      686 CALL                             R43 0 1
      687 SETTABLEKS                       R43 R42 K24 ["LayoutOrder"]
      689 SETTABLEKS                       R24 R42 K54 ["onChanged"]
      691 SETTABLEKS                       R26 R42 K55 ["onReturnPressed"]
      693 SETTABLEKS                       R11 R42 K8 ["textBoxRef"]
      695 CALL                             R40 2 1
      696 SETTABLEKS                       R40 R39 K48 ["TextInput"]
      698 GETUPVAL                         R40 19
      699 GETUPVAL                         R41 20
      700 DUPTABLE                         R42 K40 [{"tag", "LayoutOrder"}]
      701 NEWTABLE                         R43 2 0
      703 LOADB                            R44 1
      704 SETTABLEKS                       R44 R43 K104 ["row size-0-0 auto-xy gap-small"]
      706 GETUPVAL                         R45 7
      707 CALL                             R45 0 1
      708 NOT                              R44 R45
      709 SETTABLEKS                       R44 R43 K101 ["align-y-bottom"]
      711 SETTABLEKS                       R43 R42 K22 ["tag"]
      713 MOVE                             R43 R29
      714 CALL                             R43 0 1
      715 SETTABLEKS                       R43 R42 K24 ["LayoutOrder"]
      717 DUPTABLE                         R43 K105 [{"AttachImageButton", "SendButton", "StopButton"}]
      718 GETUPVAL                         R44 5
      719 CALL                             R44 0 1
      720 JUMPIFNOT                        R44 ; [+29]
      721 GETUPVAL                         R44 19
      722 GETUPVAL                         R45 23
      723 DUPTABLE                         R46 K69 [{"icon", "tag", "iconTag", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      724 LOADK                            R47 K70 ["icons/common/image-on"]
      725 SETTABLEKS                       R47 R46 K65 ["icon"]
      727 LOADK                            R47 K106 ["size-800-800 radius-circle bg-surface-100 align-x-center align-y-center"]
      728 SETTABLEKS                       R47 R46 K22 ["tag"]
      730 LOADK                            R47 K107 ["size-600-600 content-default"]
      731 SETTABLEKS                       R47 R46 K66 ["iconTag"]
      733 NOT                              R47 R3
      734 SETTABLEKS                       R47 R46 K53 ["isDisabled"]
      736 SETTABLEKS                       R14 R46 K67 ["onActivated"]
      738 MOVE                             R47 R29
      739 CALL                             R47 0 1
      740 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      742 GETUPVAL                         R49 24
      743 GETTABLEKS                       R48 R49 K73 ["InputArea"]
      745 GETTABLEKS                       R47 R48 K60 ["AttachImageButton"]
      747 SETTABLEKS                       R47 R46 K68 ["testId"]
      749 CALL                             R44 2 1
      750 SETTABLEKS                       R44 R43 K60 ["AttachImageButton"]
      752 NOT                              R44 R28
      753 JUMPIFNOT                        R44 ; [+32]
      754 GETUPVAL                         R44 19
      755 GETUPVAL                         R45 23
      756 DUPTABLE                         R46 K108 [{"icon", "tag", "iconTag", "iconRotation", "isDisabled", "onActivated", "LayoutOrder"}]
      757 LOADK                            R47 K78 ["icons/navigation/seeAllArrow_small"]
      758 SETTABLEKS                       R47 R46 K65 ["icon"]
      760 LOADK                            R47 K109 ["size-800-800 radius-circle bg-action-emphasis align-x-center align-y-center"]
      761 SETTABLEKS                       R47 R46 K22 ["tag"]
      763 LOADK                            R47 K110 ["size-400-400 content-action-emphasis"]
      764 SETTABLEKS                       R47 R46 K66 ["iconTag"]
      766 LOADN                            R47 166
      767 SETTABLEKS                       R47 R46 K75 ["iconRotation"]
      769 LENGTH                           R48 R9
      770 JUMPIFNOTEQKN                    R48 K81 [0] ; [+5]
      772 LOADB                            R47 1
      773 LENGTH                           R48 R12
      774 JUMPIFEQKN                       R48 K81 [0] ; [+2]
      776 NOT                              R47 R3
      777 SETTABLEKS                       R47 R46 K53 ["isDisabled"]
      779 SETTABLEKS                       R26 R46 K67 ["onActivated"]
      781 MOVE                             R47 R29
      782 CALL                             R47 0 1
      783 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      785 CALL                             R44 2 1
      786 SETTABLEKS                       R44 R43 K62 ["SendButton"]
      788 MOVE                             R44 R28
      789 JUMPIFNOT                        R44 ; [+26]
      790 GETUPVAL                         R44 19
      791 GETUPVAL                         R45 23
      792 DUPTABLE                         R46 K111 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      793 LOADK                            R47 K83 ["icons/controls/mediaStop_small"]
      794 SETTABLEKS                       R47 R46 K65 ["icon"]
      796 LOADK                            R47 K112 ["size-800-800 radius-circle bg-action-standard align-x-center align-y-center"]
      797 SETTABLEKS                       R47 R46 K22 ["tag"]
      799 LOADK                            R47 K113 ["size-400-400 content-emphasis"]
      800 SETTABLEKS                       R47 R46 K66 ["iconTag"]
      802 SETTABLEKS                       R27 R46 K67 ["onActivated"]
      804 MOVE                             R47 R29
      805 CALL                             R47 0 1
      806 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      808 GETUPVAL                         R49 24
      809 GETTABLEKS                       R48 R49 K73 ["InputArea"]
      811 GETTABLEKS                       R47 R48 K63 ["StopButton"]
      813 SETTABLEKS                       R47 R46 K68 ["testId"]
      815 CALL                             R44 2 1
      816 SETTABLEKS                       R44 R43 K63 ["StopButton"]
      818 CALL                             R40 3 1
      819 SETTABLEKS                       R40 R39 K102 ["ButtonColumn"]
      821 CALL                             R36 3 1
      822 SETTABLEKS                       R36 R35 K29 ["InputRow"]
      824 CALL                             R32 3 1
      825 GETUPVAL                         R33 19
      826 GETUPVAL                         R34 20
      827 DUPTABLE                         R35 K85 [{"tag", "LayoutOrder", "testId"}]
      828 LOADK                            R36 K114 ["col size-full-0 auto-y gap-medium padding-y-medium margin-x-small"]
      829 SETTABLEKS                       R36 R35 K22 ["tag"]
      831 GETTABLEKS                       R36 R0 K24 ["LayoutOrder"]
      833 SETTABLEKS                       R36 R35 K24 ["LayoutOrder"]
      835 GETUPVAL                         R38 24
      836 GETTABLEKS                       R37 R38 K73 ["InputArea"]
      838 GETTABLEKS                       R36 R37 K87 ["Container"]
      840 SETTABLEKS                       R36 R35 K68 ["testId"]
      842 DUPTABLE                         R36 K91 [{"Menu", "MessageField", "Footer"}]
      843 GETUPVAL                         R37 7
      844 CALL                             R37 0 1
      845 JUMPIFNOT                        R37 ; [+23]
      846 GETUPVAL                         R37 19
      847 GETUPVAL                         R38 26
      848 DUPTABLE                         R39 K96 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus"}]
      849 LENGTH                           R41 R17
      850 LOADN                            R42 0
      851 JUMPIFLT                         R42 R41 ; [+2]
      853 LOADB                            R40 0 +1
      854 LOADB                            R40 1
      855 SETTABLEKS                       R40 R39 K92 ["isOpen"]
      857 SETTABLEKS                       R17 R39 K93 ["items"]
      859 SETTABLEKS                       R30 R39 K94 ["width"]
      861 SETTABLEKS                       R11 R39 K8 ["textBoxRef"]
      863 SETTABLEKS                       R25 R39 K95 ["setTextAndFocus"]
      865 DUPTABLE                         R40 K97 [{"MessageField"}]
      866 SETTABLEKS                       R32 R40 K89 ["MessageField"]
      868 CALL                             R37 3 1
      869 SETTABLEKS                       R37 R36 K88 ["Menu"]
      871 GETUPVAL                         R39 7
      872 CALL                             R39 0 1
      873 NOT                              R38 R39
      874 AND                              R37 R38 R32
      875 SETTABLEKS                       R37 R36 K89 ["MessageField"]
      877 GETUPVAL                         R37 19
      878 GETUPVAL                         R38 27
      879 DUPTABLE                         R39 K74 [{"LayoutOrder"}]
      880 MOVE                             R40 R29
      881 CALL                             R40 0 1
      882 SETTABLEKS                       R40 R39 K24 ["LayoutOrder"]
      884 CALL                             R37 2 1
      885 SETTABLEKS                       R37 R36 K90 ["Footer"]
      887 CALL                             R33 3 -1
      888 CLOSEUPVALS                      R12
      889 RETURN                           R33 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["AttachedImagesPreviewList"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R5 K10 ["CustomIconButton"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Guest"]
       32 GETTABLEKS                       R5 R6 K12 ["Environment"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R7 K13 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Util"]
       46 GETTABLEKS                       R7 R8 K15 ["ImageAttachmentUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R9 K16 ["InputFooter"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R11 R0 K6 ["Components"]
       60 GETTABLEKS                       R10 R11 K17 ["Contexts"]
       62 GETTABLEKS                       R9 R10 K18 ["InputStateContext"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K8 ["Parent"]
       69 GETTABLEKS                       R10 R11 K19 ["React"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K8 ["Parent"]
       76 GETTABLEKS                       R11 R12 K20 ["ReactUtils"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K6 ["Components"]
       83 GETTABLEKS                       R12 R13 K21 ["ServerManagementDropdown"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R15 R0 K6 ["Components"]
       90 GETTABLEKS                       R14 R15 K17 ["Contexts"]
       92 GETTABLEKS                       R13 R14 K22 ["SessionIdContext"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R15 R0 K6 ["Components"]
       99 GETTABLEKS                       R14 R15 K23 ["SlashCommandMenu"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R16 R0 K14 ["Util"]
      106 GETTABLEKS                       R15 R16 K24 ["TestIds"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R18 R0 K25 ["Resources"]
      113 GETTABLEKS                       R17 R18 K26 ["Localization"]
      115 GETTABLEKS                       R16 R17 K27 ["Translator"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K28 ["Types"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R19 R0 K6 ["Components"]
      127 GETTABLEKS                       R18 R19 K29 ["UIToolRegistry"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R21 R0 K6 ["Components"]
      134 GETTABLEKS                       R20 R21 K17 ["Contexts"]
      136 GETTABLEKS                       R19 R20 K30 ["WindowInputContext"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R21 R0 K14 ["Util"]
      143 GETTABLEKS                       R20 R21 K31 ["getToggleGenerationInputFunc"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R22 R0 K32 ["Hooks"]
      150 GETTABLEKS                       R21 R22 K33 ["useCurrentAssistantMessageId"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R23 R0 K32 ["Hooks"]
      157 GETTABLEKS                       R22 R23 K34 ["useEventConnection"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R24 R0 K32 ["Hooks"]
      164 GETTABLEKS                       R23 R24 K35 ["useLLMCancelSession"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K5 [require]
      169 GETTABLEKS                       R25 R0 K32 ["Hooks"]
      171 GETTABLEKS                       R24 R25 K36 ["useSendMessage"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K5 [require]
      176 GETTABLEKS                       R26 R0 K37 ["Flags"]
      178 GETTABLEKS                       R25 R26 K38 ["FFlagEnableAssistantInputImageAttachment"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K5 [require]
      183 GETTABLEKS                       R27 R0 K37 ["Flags"]
      185 GETTABLEKS                       R26 R27 K39 ["FFlagMCPAssistantExternalAPIKey"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K5 [require]
      190 GETTABLEKS                       R28 R0 K37 ["Flags"]
      192 GETTABLEKS                       R27 R28 K40 ["FFlagMCPAssistantManagementMenu"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K5 [require]
      197 GETTABLEKS                       R29 R0 K37 ["Flags"]
      199 GETTABLEKS                       R28 R29 K41 ["FFlagMCPAssistantSlashCommandMenu"]
      201 CALL                             R27 1 1
      202 GETIMPORT                        R28 K5 [require]
      204 GETTABLEKS                       R30 R0 K37 ["Flags"]
      206 GETTABLEKS                       R29 R30 K42 ["FIntMCPAssistantInputAreaCharLimit"]
      208 CALL                             R28 1 1
      209 GETIMPORT                        R29 K5 [require]
      211 GETTABLEKS                       R31 R0 K37 ["Flags"]
      213 GETTABLEKS                       R30 R31 K43 ["FIntMCPAssistantMaxPromptHistory"]
      215 CALL                             R29 1 1
      216 GETTABLEKS                       R30 R8 K44 ["InputDisabledReasons"]
      218 GETTABLEKS                       R31 R5 K45 ["View"]
      220 GETTABLEKS                       R32 R10 K46 ["createNextOrder"]
      222 GETTABLEKS                       R33 R9 K47 ["createElement"]
      224 DUPCLOSURE                       R34 K48 [PROTO_4]
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R29
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R18
      229 CAPTURE                          VAL R21
      230 DUPCLOSURE                       R35 K49 [PROTO_13]
      231 CAPTURE                          VAL R5
      232 CAPTURE                          VAL R9
      233 CAPTURE                          VAL R27
      234 CAPTURE                          VAL R33
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R4
      237 DUPCLOSURE                       R36 K50 [PROTO_29]
      238 CAPTURE                          VAL R22
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R8
      241 CAPTURE                          VAL R12
      242 CAPTURE                          VAL R20
      243 CAPTURE                          VAL R24
      244 CAPTURE                          VAL R6
      245 CAPTURE                          VAL R27
      246 CAPTURE                          VAL R23
      247 CAPTURE                          VAL R19
      248 CAPTURE                          VAL R15
      249 CAPTURE                          VAL R34
      250 CAPTURE                          VAL R28
      251 CAPTURE                          VAL R17
      252 CAPTURE                          VAL R4
      253 CAPTURE                          VAL R30
      254 CAPTURE                          VAL R32
      255 CAPTURE                          VAL R26
      256 CAPTURE                          VAL R25
      257 CAPTURE                          VAL R33
      258 CAPTURE                          VAL R31
      259 CAPTURE                          VAL R1
      260 CAPTURE                          VAL R35
      261 CAPTURE                          VAL R3
      262 CAPTURE                          VAL R14
      263 CAPTURE                          VAL R11
      264 CAPTURE                          VAL R13
      265 CAPTURE                          VAL R7
      266 RETURN                           R36 1
