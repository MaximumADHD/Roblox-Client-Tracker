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
        1 JUMPIFNOT                        R0 ; [+24]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["get"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R0 R1 K1 ["EventLogger"]
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+2]
       11 GETUPVAL                         R1 0
       12 JUMP                             ; [+4]
       13 GETTABLEKS                       R1 R0 K2 ["getMessageGuid"]
       15 GETUPVAL                         R2 0
       16 CALL                             R1 1 1
       17 GETTABLEKS                       R2 R0 K3 ["logStopGeneration"]
       19 DUPTABLE                         R3 K6 [{"messageGuid", "sessionId"}]
       20 SETTABLEKS                       R1 R3 K4 ["messageGuid"]
       22 GETUPVAL                         R4 3
       23 SETTABLEKS                       R4 R3 K5 ["sessionId"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R0 4
       27 JUMPIFNOT                        R0 ; [+2]
       28 GETUPVAL                         R0 4
       29 CALL                             R0 0 0
       30 GETUPVAL                         R0 5
       31 CALL                             R0 0 0
       32 RETURN                           R0 0

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
      213 CAPTURE                          UPVAL U15
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R1
      216 CAPTURE                          VAL R5
      217 NEWTABLE                         R29 0 4
      219 MOVE                             R30 R1
      220 MOVE                             R31 R5
      221 MOVE                             R32 R7
      222 MOVE                             R33 R8
      223 SETLIST                          R29 R30 4 [1]
      225 CALL                             R27 2 1
      226 MOVE                             R28 R4
      227 JUMPIFNOT                        R28 ; [+9]
      228 GETTABLEKS                       R29 R4 K3 ["reasonDisabled"]
      230 GETUPVAL                         R31 16
      231 GETTABLEKS                       R30 R31 K20 ["Generation"]
      233 JUMPIFEQ                         R29 R30 ; [+2]
      235 LOADB                            R28 0 +1
      236 LOADB                            R28 1
      237 GETUPVAL                         R29 17
      238 CALL                             R29 0 1
      239 LOADNIL                          R30
      240 LOADNIL                          R31
      241 GETUPVAL                         R32 7
      242 CALL                             R32 0 1
      243 JUMPIFNOT                        R32 ; [+7]
      244 GETUPVAL                         R33 1
      245 GETTABLEKS                       R32 R33 K21 ["useBinding"]
      247 LOADN                            R33 0
      248 CALL                             R32 1 2
      249 MOVE                             R30 R32
      250 MOVE                             R31 R33
      251 GETUPVAL                         R32 18
      252 CALL                             R32 0 1
      253 JUMPIF                           R32 ; [+3]
      254 GETUPVAL                         R32 19
      255 CALL                             R32 0 1
      256 JUMPIFNOT                        R32 ; [+312]
      257 GETUPVAL                         R32 20
      258 GETUPVAL                         R33 21
      259 DUPTABLE                         R34 K25 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      260 LOADK                            R35 K26 ["col size-full-0 auto-y padding-y-small padding-right-small padding-left-large gap-small stroke-emphasis radius-large"]
      261 SETTABLEKS                       R35 R34 K22 ["tag"]
      263 GETUPVAL                         R36 7
      264 CALL                             R36 0 1
      265 JUMPIFNOT                        R36 ; [+3]
      266 NEWCLOSURE                       R35 P9
      267 CAPTURE                          REF R31
      268 JUMP                             ; [+1]
      269 LOADNIL                          R35
      270 SETTABLEKS                       R35 R34 K23 ["onAbsoluteSizeChanged"]
      272 MOVE                             R35 R29
      273 CALL                             R35 0 1
      274 SETTABLEKS                       R35 R34 K24 ["LayoutOrder"]
      276 DUPTABLE                         R35 K30 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      277 GETUPVAL                         R36 7
      278 CALL                             R36 0 1
      279 JUMPIFNOT                        R36 ; [+12]
      280 GETUPVAL                         R36 20
      281 LOADK                            R37 K27 ["UIFlexItem"]
      282 DUPTABLE                         R38 K33 [{"FlexMode", "ItemLineAlignment"}]
      283 GETIMPORT                        R39 K37 [Enum.UIFlexMode.Fill]
      285 SETTABLEKS                       R39 R38 K31 ["FlexMode"]
      287 GETIMPORT                        R39 K39 [Enum.ItemLineAlignment.Center]
      289 SETTABLEKS                       R39 R38 K32 ["ItemLineAlignment"]
      291 CALL                             R36 2 1
      292 SETTABLEKS                       R36 R35 K27 ["UIFlexItem"]
      294 GETUPVAL                         R36 5
      295 CALL                             R36 0 1
      296 JUMPIFNOT                        R36 ; [+27]
      297 LOADB                            R36 0
      298 LENGTH                           R37 R12
      299 LOADN                            R38 0
      300 JUMPIFNOTLT                      R38 R37 ; [+23]
      302 GETUPVAL                         R36 20
      303 GETUPVAL                         R37 21
      304 DUPTABLE                         R38 K40 [{"tag", "LayoutOrder"}]
      305 LOADK                            R39 K41 ["row size-full-0 auto-y padding-bottom-small"]
      306 SETTABLEKS                       R39 R38 K22 ["tag"]
      308 MOVE                             R39 R29
      309 CALL                             R39 0 1
      310 SETTABLEKS                       R39 R38 K24 ["LayoutOrder"]
      312 DUPTABLE                         R39 K43 [{"List"}]
      313 GETUPVAL                         R40 20
      314 GETUPVAL                         R41 22
      315 DUPTABLE                         R42 K46 [{"attachedImages", "onRemoveImage"}]
      316 SETTABLEKS                       R12 R42 K44 ["attachedImages"]
      318 SETTABLEKS                       R15 R42 K45 ["onRemoveImage"]
      320 CALL                             R40 2 1
      321 SETTABLEKS                       R40 R39 K42 ["List"]
      323 CALL                             R36 3 1
      324 SETTABLEKS                       R36 R35 K28 ["AttachedImagesPreview"]
      326 GETUPVAL                         R36 20
      327 GETUPVAL                         R37 21
      328 DUPTABLE                         R38 K40 [{"tag", "LayoutOrder"}]
      329 LOADK                            R39 K47 ["row size-full-0 auto-y gap-small flex-between flex-y-fill align-y-center"]
      330 SETTABLEKS                       R39 R38 K22 ["tag"]
      332 MOVE                             R39 R29
      333 CALL                             R39 0 1
      334 SETTABLEKS                       R39 R38 K24 ["LayoutOrder"]
      336 DUPTABLE                         R39 K50 [{"TextInput", "RightColumn"}]
      337 GETUPVAL                         R40 20
      338 GETUPVAL                         R41 23
      339 DUPTABLE                         R42 K56 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "textBoxRef"}]
      340 SETTABLEKS                       R9 R42 K51 ["text"]
      342 JUMPIFNOT                        R28 ; [+3]
      343 GETTABLEKS                       R43 R21 K57 ["Responding"]
      345 JUMP                             ; [+6]
      346 JUMPIFEQKNIL                     R23 ; [+3]
      348 MOVE                             R43 R23
      349 JUMP                             ; [+2]
      350 GETTABLEKS                       R43 R21 K58 ["AskAssistant"]
      352 SETTABLEKS                       R43 R42 K52 ["placeholder"]
      354 NOT                              R43 R3
      355 SETTABLEKS                       R43 R42 K53 ["isDisabled"]
      357 MOVE                             R43 R29
      358 CALL                             R43 0 1
      359 SETTABLEKS                       R43 R42 K24 ["LayoutOrder"]
      361 SETTABLEKS                       R24 R42 K54 ["onChanged"]
      363 SETTABLEKS                       R26 R42 K55 ["onReturnPressed"]
      365 SETTABLEKS                       R11 R42 K8 ["textBoxRef"]
      367 CALL                             R40 2 1
      368 SETTABLEKS                       R40 R39 K48 ["TextInput"]
      370 GETUPVAL                         R40 20
      371 GETUPVAL                         R41 21
      372 DUPTABLE                         R42 K40 [{"tag", "LayoutOrder"}]
      373 LOADK                            R43 K59 ["row auto-xy gap-small align-y-center"]
      374 SETTABLEKS                       R43 R42 K22 ["tag"]
      376 MOVE                             R43 R29
      377 CALL                             R43 0 1
      378 SETTABLEKS                       R43 R42 K24 ["LayoutOrder"]
      380 DUPTABLE                         R43 K64 [{"AttachImageButton", "ServerManagementButton", "SendButton", "StopButton"}]
      381 GETUPVAL                         R44 5
      382 CALL                             R44 0 1
      383 JUMPIFNOT                        R44 ; [+29]
      384 GETUPVAL                         R44 20
      385 GETUPVAL                         R45 24
      386 DUPTABLE                         R46 K69 [{"icon", "tag", "iconTag", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      387 LOADK                            R47 K70 ["icons/common/image-on"]
      388 SETTABLEKS                       R47 R46 K65 ["icon"]
      390 LOADK                            R47 K71 ["size-600-600 radius-circle bg-surface-100 align-x-center align-y-center"]
      391 SETTABLEKS                       R47 R46 K22 ["tag"]
      393 LOADK                            R47 K72 ["size-500-500 content-default"]
      394 SETTABLEKS                       R47 R46 K66 ["iconTag"]
      396 NOT                              R47 R3
      397 SETTABLEKS                       R47 R46 K53 ["isDisabled"]
      399 SETTABLEKS                       R14 R46 K67 ["onActivated"]
      401 MOVE                             R47 R29
      402 CALL                             R47 0 1
      403 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      405 GETUPVAL                         R49 25
      406 GETTABLEKS                       R48 R49 K73 ["InputArea"]
      408 GETTABLEKS                       R47 R48 K60 ["AttachImageButton"]
      410 SETTABLEKS                       R47 R46 K68 ["testId"]
      412 CALL                             R44 2 1
      413 SETTABLEKS                       R44 R43 K60 ["AttachImageButton"]
      415 GETUPVAL                         R44 20
      416 GETUPVAL                         R45 26
      417 DUPTABLE                         R46 K74 [{"LayoutOrder"}]
      418 MOVE                             R47 R29
      419 CALL                             R47 0 1
      420 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      422 CALL                             R44 2 1
      423 SETTABLEKS                       R44 R43 K61 ["ServerManagementButton"]
      425 NOT                              R44 R28
      426 JUMPIFNOT                        R44 ; [+35]
      427 GETUPVAL                         R44 20
      428 GETUPVAL                         R45 24
      429 DUPTABLE                         R46 K77 [{"icon", "tag", "iconTag", "iconRotation", "isDisabled", "onActivated", "LayoutOrder", "skipBackgroundColoringDisabled"}]
      430 LOADK                            R47 K78 ["icons/navigation/seeAllArrow_small"]
      431 SETTABLEKS                       R47 R46 K65 ["icon"]
      433 LOADK                            R47 K79 ["size-600-600 radius-circle bg-action-emphasis align-x-center align-y-center"]
      434 SETTABLEKS                       R47 R46 K22 ["tag"]
      436 LOADK                            R47 K80 ["size-300-300 content-emphasis"]
      437 SETTABLEKS                       R47 R46 K66 ["iconTag"]
      439 LOADN                            R47 166
      440 SETTABLEKS                       R47 R46 K75 ["iconRotation"]
      442 LENGTH                           R48 R9
      443 JUMPIFNOTEQKN                    R48 K81 [0] ; [+5]
      445 LOADB                            R47 1
      446 LENGTH                           R48 R12
      447 JUMPIFEQKN                       R48 K81 [0] ; [+2]
      449 NOT                              R47 R3
      450 SETTABLEKS                       R47 R46 K53 ["isDisabled"]
      452 SETTABLEKS                       R26 R46 K67 ["onActivated"]
      454 MOVE                             R47 R29
      455 CALL                             R47 0 1
      456 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      458 LOADB                            R47 1
      459 SETTABLEKS                       R47 R46 K76 ["skipBackgroundColoringDisabled"]
      461 CALL                             R44 2 1
      462 SETTABLEKS                       R44 R43 K62 ["SendButton"]
      464 MOVE                             R44 R28
      465 JUMPIFNOT                        R44 ; [+29]
      466 GETUPVAL                         R44 20
      467 GETUPVAL                         R45 24
      468 DUPTABLE                         R46 K82 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId", "skipBackgroundColoringDisabled"}]
      469 LOADK                            R47 K83 ["icons/controls/mediaStop_small"]
      470 SETTABLEKS                       R47 R46 K65 ["icon"]
      472 LOADK                            R47 K84 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
      473 SETTABLEKS                       R47 R46 K22 ["tag"]
      475 LOADK                            R47 K80 ["size-300-300 content-emphasis"]
      476 SETTABLEKS                       R47 R46 K66 ["iconTag"]
      478 SETTABLEKS                       R27 R46 K67 ["onActivated"]
      480 MOVE                             R47 R29
      481 CALL                             R47 0 1
      482 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      484 GETUPVAL                         R49 25
      485 GETTABLEKS                       R48 R49 K73 ["InputArea"]
      487 GETTABLEKS                       R47 R48 K63 ["StopButton"]
      489 SETTABLEKS                       R47 R46 K68 ["testId"]
      491 LOADB                            R47 1
      492 SETTABLEKS                       R47 R46 K76 ["skipBackgroundColoringDisabled"]
      494 CALL                             R44 2 1
      495 SETTABLEKS                       R44 R43 K63 ["StopButton"]
      497 CALL                             R40 3 1
      498 SETTABLEKS                       R40 R39 K49 ["RightColumn"]
      500 CALL                             R36 3 1
      501 SETTABLEKS                       R36 R35 K29 ["InputRow"]
      503 CALL                             R32 3 1
      504 GETUPVAL                         R33 20
      505 GETUPVAL                         R34 21
      506 DUPTABLE                         R35 K85 [{"tag", "LayoutOrder", "testId"}]
      507 LOADK                            R36 K86 ["col size-full-0 auto-y margin-x-small"]
      508 SETTABLEKS                       R36 R35 K22 ["tag"]
      510 GETTABLEKS                       R36 R0 K24 ["LayoutOrder"]
      512 SETTABLEKS                       R36 R35 K24 ["LayoutOrder"]
      514 GETUPVAL                         R38 25
      515 GETTABLEKS                       R37 R38 K73 ["InputArea"]
      517 GETTABLEKS                       R36 R37 K87 ["Container"]
      519 SETTABLEKS                       R36 R35 K68 ["testId"]
      521 DUPTABLE                         R36 K91 [{"Menu", "MessageField", "Footer"}]
      522 GETUPVAL                         R37 7
      523 CALL                             R37 0 1
      524 JUMPIFNOT                        R37 ; [+23]
      525 GETUPVAL                         R37 20
      526 GETUPVAL                         R38 27
      527 DUPTABLE                         R39 K96 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus"}]
      528 LENGTH                           R41 R17
      529 LOADN                            R42 0
      530 JUMPIFLT                         R42 R41 ; [+2]
      532 LOADB                            R40 0 +1
      533 LOADB                            R40 1
      534 SETTABLEKS                       R40 R39 K92 ["isOpen"]
      536 SETTABLEKS                       R17 R39 K93 ["items"]
      538 SETTABLEKS                       R30 R39 K94 ["width"]
      540 SETTABLEKS                       R11 R39 K8 ["textBoxRef"]
      542 SETTABLEKS                       R25 R39 K95 ["setTextAndFocus"]
      544 DUPTABLE                         R40 K97 [{"MessageField"}]
      545 SETTABLEKS                       R32 R40 K89 ["MessageField"]
      547 CALL                             R37 3 1
      548 SETTABLEKS                       R37 R36 K88 ["Menu"]
      550 GETUPVAL                         R39 7
      551 CALL                             R39 0 1
      552 NOT                              R38 R39
      553 AND                              R37 R38 R32
      554 SETTABLEKS                       R37 R36 K89 ["MessageField"]
      556 GETUPVAL                         R37 20
      557 GETUPVAL                         R38 28
      558 DUPTABLE                         R39 K74 [{"LayoutOrder"}]
      559 MOVE                             R40 R29
      560 CALL                             R40 0 1
      561 SETTABLEKS                       R40 R39 K24 ["LayoutOrder"]
      563 CALL                             R37 2 1
      564 SETTABLEKS                       R37 R36 K90 ["Footer"]
      566 CALL                             R33 3 -1
      567 CLOSEUPVALS                      R12
      568 RETURN                           R33 -1
      569 GETUPVAL                         R32 20
      570 GETUPVAL                         R33 21
      571 DUPTABLE                         R34 K25 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      572 NEWTABLE                         R35 1 0
      574 LOADB                            R36 1
      575 SETTABLEKS                       R36 R35 K98 ["col size-full-0 auto-y padding-y-small padding-right-small padding-left-large gap-xxsmall stroke-standard stroke-emphasis radius-large"]
      577 SETTABLEKS                       R35 R34 K22 ["tag"]
      579 GETUPVAL                         R36 7
      580 CALL                             R36 0 1
      581 JUMPIFNOT                        R36 ; [+3]
      582 NEWCLOSURE                       R35 P10
      583 CAPTURE                          REF R31
      584 JUMP                             ; [+1]
      585 LOADNIL                          R35
      586 SETTABLEKS                       R35 R34 K23 ["onAbsoluteSizeChanged"]
      588 MOVE                             R35 R29
      589 CALL                             R35 0 1
      590 SETTABLEKS                       R35 R34 K24 ["LayoutOrder"]
      592 DUPTABLE                         R35 K30 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      593 GETUPVAL                         R36 7
      594 CALL                             R36 0 1
      595 JUMPIFNOT                        R36 ; [+12]
      596 GETUPVAL                         R36 20
      597 LOADK                            R37 K27 ["UIFlexItem"]
      598 DUPTABLE                         R38 K33 [{"FlexMode", "ItemLineAlignment"}]
      599 GETIMPORT                        R39 K37 [Enum.UIFlexMode.Fill]
      601 SETTABLEKS                       R39 R38 K31 ["FlexMode"]
      603 GETIMPORT                        R39 K39 [Enum.ItemLineAlignment.Center]
      605 SETTABLEKS                       R39 R38 K32 ["ItemLineAlignment"]
      607 CALL                             R36 2 1
      608 SETTABLEKS                       R36 R35 K27 ["UIFlexItem"]
      610 GETUPVAL                         R36 5
      611 CALL                             R36 0 1
      612 JUMPIFNOT                        R36 ; [+27]
      613 LOADB                            R36 0
      614 LENGTH                           R37 R12
      615 LOADN                            R38 0
      616 JUMPIFNOTLT                      R38 R37 ; [+23]
      618 GETUPVAL                         R36 20
      619 GETUPVAL                         R37 21
      620 DUPTABLE                         R38 K40 [{"tag", "LayoutOrder"}]
      621 LOADK                            R39 K41 ["row size-full-0 auto-y padding-bottom-small"]
      622 SETTABLEKS                       R39 R38 K22 ["tag"]
      624 MOVE                             R39 R29
      625 CALL                             R39 0 1
      626 SETTABLEKS                       R39 R38 K24 ["LayoutOrder"]
      628 DUPTABLE                         R39 K43 [{"List"}]
      629 GETUPVAL                         R40 20
      630 GETUPVAL                         R41 22
      631 DUPTABLE                         R42 K46 [{"attachedImages", "onRemoveImage"}]
      632 SETTABLEKS                       R12 R42 K44 ["attachedImages"]
      634 SETTABLEKS                       R15 R42 K45 ["onRemoveImage"]
      636 CALL                             R40 2 1
      637 SETTABLEKS                       R40 R39 K42 ["List"]
      639 CALL                             R36 3 1
      640 SETTABLEKS                       R36 R35 K28 ["AttachedImagesPreview"]
      642 GETUPVAL                         R36 20
      643 GETUPVAL                         R37 21
      644 DUPTABLE                         R38 K40 [{"tag", "LayoutOrder"}]
      645 NEWTABLE                         R39 4 0
      647 LOADB                            R40 1
      648 SETTABLEKS                       R40 R39 K99 ["row size-full-0 auto-y gap-xxsmall flex-between flex-y-fill"]
      650 GETUPVAL                         R41 7
      651 CALL                             R41 0 1
      652 NOT                              R40 R41
      653 SETTABLEKS                       R40 R39 K100 ["align-y-center"]
      655 GETUPVAL                         R40 7
      656 CALL                             R40 0 1
      657 SETTABLEKS                       R40 R39 K101 ["align-y-bottom"]
      659 SETTABLEKS                       R39 R38 K22 ["tag"]
      661 MOVE                             R39 R29
      662 CALL                             R39 0 1
      663 SETTABLEKS                       R39 R38 K24 ["LayoutOrder"]
      665 DUPTABLE                         R39 K103 [{"TextInput", "ButtonColumn"}]
      666 GETUPVAL                         R40 20
      667 GETUPVAL                         R41 23
      668 DUPTABLE                         R42 K56 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "textBoxRef"}]
      669 SETTABLEKS                       R9 R42 K51 ["text"]
      671 JUMPIFNOT                        R28 ; [+3]
      672 GETTABLEKS                       R43 R21 K57 ["Responding"]
      674 JUMP                             ; [+6]
      675 JUMPIFEQKNIL                     R23 ; [+3]
      677 MOVE                             R43 R23
      678 JUMP                             ; [+2]
      679 GETTABLEKS                       R43 R21 K58 ["AskAssistant"]
      681 SETTABLEKS                       R43 R42 K52 ["placeholder"]
      683 NOT                              R43 R3
      684 SETTABLEKS                       R43 R42 K53 ["isDisabled"]
      686 MOVE                             R43 R29
      687 CALL                             R43 0 1
      688 SETTABLEKS                       R43 R42 K24 ["LayoutOrder"]
      690 SETTABLEKS                       R24 R42 K54 ["onChanged"]
      692 SETTABLEKS                       R26 R42 K55 ["onReturnPressed"]
      694 SETTABLEKS                       R11 R42 K8 ["textBoxRef"]
      696 CALL                             R40 2 1
      697 SETTABLEKS                       R40 R39 K48 ["TextInput"]
      699 GETUPVAL                         R40 20
      700 GETUPVAL                         R41 21
      701 DUPTABLE                         R42 K40 [{"tag", "LayoutOrder"}]
      702 NEWTABLE                         R43 2 0
      704 LOADB                            R44 1
      705 SETTABLEKS                       R44 R43 K104 ["row size-0-0 auto-xy gap-small"]
      707 GETUPVAL                         R45 7
      708 CALL                             R45 0 1
      709 NOT                              R44 R45
      710 SETTABLEKS                       R44 R43 K101 ["align-y-bottom"]
      712 SETTABLEKS                       R43 R42 K22 ["tag"]
      714 MOVE                             R43 R29
      715 CALL                             R43 0 1
      716 SETTABLEKS                       R43 R42 K24 ["LayoutOrder"]
      718 DUPTABLE                         R43 K105 [{"AttachImageButton", "SendButton", "StopButton"}]
      719 GETUPVAL                         R44 5
      720 CALL                             R44 0 1
      721 JUMPIFNOT                        R44 ; [+29]
      722 GETUPVAL                         R44 20
      723 GETUPVAL                         R45 24
      724 DUPTABLE                         R46 K69 [{"icon", "tag", "iconTag", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      725 LOADK                            R47 K70 ["icons/common/image-on"]
      726 SETTABLEKS                       R47 R46 K65 ["icon"]
      728 LOADK                            R47 K106 ["size-800-800 radius-circle bg-surface-100 align-x-center align-y-center"]
      729 SETTABLEKS                       R47 R46 K22 ["tag"]
      731 LOADK                            R47 K107 ["size-600-600 content-default"]
      732 SETTABLEKS                       R47 R46 K66 ["iconTag"]
      734 NOT                              R47 R3
      735 SETTABLEKS                       R47 R46 K53 ["isDisabled"]
      737 SETTABLEKS                       R14 R46 K67 ["onActivated"]
      739 MOVE                             R47 R29
      740 CALL                             R47 0 1
      741 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      743 GETUPVAL                         R49 25
      744 GETTABLEKS                       R48 R49 K73 ["InputArea"]
      746 GETTABLEKS                       R47 R48 K60 ["AttachImageButton"]
      748 SETTABLEKS                       R47 R46 K68 ["testId"]
      750 CALL                             R44 2 1
      751 SETTABLEKS                       R44 R43 K60 ["AttachImageButton"]
      753 NOT                              R44 R28
      754 JUMPIFNOT                        R44 ; [+32]
      755 GETUPVAL                         R44 20
      756 GETUPVAL                         R45 24
      757 DUPTABLE                         R46 K108 [{"icon", "tag", "iconTag", "iconRotation", "isDisabled", "onActivated", "LayoutOrder"}]
      758 LOADK                            R47 K78 ["icons/navigation/seeAllArrow_small"]
      759 SETTABLEKS                       R47 R46 K65 ["icon"]
      761 LOADK                            R47 K109 ["size-800-800 radius-circle bg-action-emphasis align-x-center align-y-center"]
      762 SETTABLEKS                       R47 R46 K22 ["tag"]
      764 LOADK                            R47 K110 ["size-400-400 content-action-emphasis"]
      765 SETTABLEKS                       R47 R46 K66 ["iconTag"]
      767 LOADN                            R47 166
      768 SETTABLEKS                       R47 R46 K75 ["iconRotation"]
      770 LENGTH                           R48 R9
      771 JUMPIFNOTEQKN                    R48 K81 [0] ; [+5]
      773 LOADB                            R47 1
      774 LENGTH                           R48 R12
      775 JUMPIFEQKN                       R48 K81 [0] ; [+2]
      777 NOT                              R47 R3
      778 SETTABLEKS                       R47 R46 K53 ["isDisabled"]
      780 SETTABLEKS                       R26 R46 K67 ["onActivated"]
      782 MOVE                             R47 R29
      783 CALL                             R47 0 1
      784 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      786 CALL                             R44 2 1
      787 SETTABLEKS                       R44 R43 K62 ["SendButton"]
      789 MOVE                             R44 R28
      790 JUMPIFNOT                        R44 ; [+26]
      791 GETUPVAL                         R44 20
      792 GETUPVAL                         R45 24
      793 DUPTABLE                         R46 K111 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      794 LOADK                            R47 K83 ["icons/controls/mediaStop_small"]
      795 SETTABLEKS                       R47 R46 K65 ["icon"]
      797 LOADK                            R47 K112 ["size-800-800 radius-circle bg-action-standard align-x-center align-y-center"]
      798 SETTABLEKS                       R47 R46 K22 ["tag"]
      800 LOADK                            R47 K113 ["size-400-400 content-emphasis"]
      801 SETTABLEKS                       R47 R46 K66 ["iconTag"]
      803 SETTABLEKS                       R27 R46 K67 ["onActivated"]
      805 MOVE                             R47 R29
      806 CALL                             R47 0 1
      807 SETTABLEKS                       R47 R46 K24 ["LayoutOrder"]
      809 GETUPVAL                         R49 25
      810 GETTABLEKS                       R48 R49 K73 ["InputArea"]
      812 GETTABLEKS                       R47 R48 K63 ["StopButton"]
      814 SETTABLEKS                       R47 R46 K68 ["testId"]
      816 CALL                             R44 2 1
      817 SETTABLEKS                       R44 R43 K63 ["StopButton"]
      819 CALL                             R40 3 1
      820 SETTABLEKS                       R40 R39 K102 ["ButtonColumn"]
      822 CALL                             R36 3 1
      823 SETTABLEKS                       R36 R35 K29 ["InputRow"]
      825 CALL                             R32 3 1
      826 GETUPVAL                         R33 20
      827 GETUPVAL                         R34 21
      828 DUPTABLE                         R35 K85 [{"tag", "LayoutOrder", "testId"}]
      829 LOADK                            R36 K114 ["col size-full-0 auto-y gap-medium padding-y-medium margin-x-small"]
      830 SETTABLEKS                       R36 R35 K22 ["tag"]
      832 GETTABLEKS                       R36 R0 K24 ["LayoutOrder"]
      834 SETTABLEKS                       R36 R35 K24 ["LayoutOrder"]
      836 GETUPVAL                         R38 25
      837 GETTABLEKS                       R37 R38 K73 ["InputArea"]
      839 GETTABLEKS                       R36 R37 K87 ["Container"]
      841 SETTABLEKS                       R36 R35 K68 ["testId"]
      843 DUPTABLE                         R36 K91 [{"Menu", "MessageField", "Footer"}]
      844 GETUPVAL                         R37 7
      845 CALL                             R37 0 1
      846 JUMPIFNOT                        R37 ; [+23]
      847 GETUPVAL                         R37 20
      848 GETUPVAL                         R38 27
      849 DUPTABLE                         R39 K96 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus"}]
      850 LENGTH                           R41 R17
      851 LOADN                            R42 0
      852 JUMPIFLT                         R42 R41 ; [+2]
      854 LOADB                            R40 0 +1
      855 LOADB                            R40 1
      856 SETTABLEKS                       R40 R39 K92 ["isOpen"]
      858 SETTABLEKS                       R17 R39 K93 ["items"]
      860 SETTABLEKS                       R30 R39 K94 ["width"]
      862 SETTABLEKS                       R11 R39 K8 ["textBoxRef"]
      864 SETTABLEKS                       R25 R39 K95 ["setTextAndFocus"]
      866 DUPTABLE                         R40 K97 [{"MessageField"}]
      867 SETTABLEKS                       R32 R40 K89 ["MessageField"]
      869 CALL                             R37 3 1
      870 SETTABLEKS                       R37 R36 K88 ["Menu"]
      872 GETUPVAL                         R39 7
      873 CALL                             R39 0 1
      874 NOT                              R38 R39
      875 AND                              R37 R38 R32
      876 SETTABLEKS                       R37 R36 K89 ["MessageField"]
      878 GETUPVAL                         R37 20
      879 GETUPVAL                         R38 28
      880 DUPTABLE                         R39 K74 [{"LayoutOrder"}]
      881 MOVE                             R40 R29
      882 CALL                             R40 0 1
      883 SETTABLEKS                       R40 R39 K24 ["LayoutOrder"]
      885 CALL                             R37 2 1
      886 SETTABLEKS                       R37 R36 K90 ["Footer"]
      888 CALL                             R33 3 -1
      889 CLOSEUPVALS                      R12
      890 RETURN                           R33 -1

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
      178 GETTABLEKS                       R25 R26 K38 ["FFlagAssistantPersistConversations"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K5 [require]
      183 GETTABLEKS                       R27 R0 K37 ["Flags"]
      185 GETTABLEKS                       R26 R27 K39 ["FFlagEnableAssistantInputImageAttachment"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K5 [require]
      190 GETTABLEKS                       R28 R0 K37 ["Flags"]
      192 GETTABLEKS                       R27 R28 K40 ["FFlagMCPAssistantExternalAPIKey"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K5 [require]
      197 GETTABLEKS                       R29 R0 K37 ["Flags"]
      199 GETTABLEKS                       R28 R29 K41 ["FFlagMCPAssistantManagementMenu"]
      201 CALL                             R27 1 1
      202 GETIMPORT                        R28 K5 [require]
      204 GETTABLEKS                       R30 R0 K37 ["Flags"]
      206 GETTABLEKS                       R29 R30 K42 ["FFlagMCPAssistantSlashCommandMenu"]
      208 CALL                             R28 1 1
      209 GETIMPORT                        R29 K5 [require]
      211 GETTABLEKS                       R31 R0 K37 ["Flags"]
      213 GETTABLEKS                       R30 R31 K43 ["FIntMCPAssistantInputAreaCharLimit"]
      215 CALL                             R29 1 1
      216 GETIMPORT                        R30 K5 [require]
      218 GETTABLEKS                       R32 R0 K37 ["Flags"]
      220 GETTABLEKS                       R31 R32 K44 ["FIntMCPAssistantMaxPromptHistory"]
      222 CALL                             R30 1 1
      223 GETTABLEKS                       R31 R8 K45 ["InputDisabledReasons"]
      225 GETTABLEKS                       R32 R5 K46 ["View"]
      227 GETTABLEKS                       R33 R10 K47 ["createNextOrder"]
      229 GETTABLEKS                       R34 R9 K48 ["createElement"]
      231 DUPCLOSURE                       R35 K49 [PROTO_4]
      232 CAPTURE                          VAL R9
      233 CAPTURE                          VAL R30
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R18
      236 CAPTURE                          VAL R21
      237 DUPCLOSURE                       R36 K50 [PROTO_13]
      238 CAPTURE                          VAL R5
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R28
      241 CAPTURE                          VAL R34
      242 CAPTURE                          VAL R2
      243 CAPTURE                          VAL R4
      244 DUPCLOSURE                       R37 K51 [PROTO_29]
      245 CAPTURE                          VAL R22
      246 CAPTURE                          VAL R9
      247 CAPTURE                          VAL R8
      248 CAPTURE                          VAL R12
      249 CAPTURE                          VAL R20
      250 CAPTURE                          VAL R25
      251 CAPTURE                          VAL R6
      252 CAPTURE                          VAL R28
      253 CAPTURE                          VAL R23
      254 CAPTURE                          VAL R19
      255 CAPTURE                          VAL R15
      256 CAPTURE                          VAL R35
      257 CAPTURE                          VAL R29
      258 CAPTURE                          VAL R17
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R24
      261 CAPTURE                          VAL R31
      262 CAPTURE                          VAL R33
      263 CAPTURE                          VAL R27
      264 CAPTURE                          VAL R26
      265 CAPTURE                          VAL R34
      266 CAPTURE                          VAL R32
      267 CAPTURE                          VAL R1
      268 CAPTURE                          VAL R36
      269 CAPTURE                          VAL R3
      270 CAPTURE                          VAL R14
      271 CAPTURE                          VAL R11
      272 CAPTURE                          VAL R13
      273 CAPTURE                          VAL R7
      274 RETURN                           R37 1
