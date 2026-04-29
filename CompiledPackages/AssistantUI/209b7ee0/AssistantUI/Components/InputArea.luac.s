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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["Text"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

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
      100 CAPTURE                          VAL R0
      101 NEWTABLE                         R19 0 1
      103 GETTABLEKS                       R20 R0 K21 ["onChanged"]
      105 SETLIST                          R19 R20 1 [1]
      107 CALL                             R17 2 1
      108 GETUPVAL                         R19 1
      109 GETTABLEKS                       R18 R19 K15 ["useRef"]
      111 LOADNIL                          R19
      112 CALL                             R18 1 1
      113 GETUPVAL                         R20 1
      114 GETTABLEKS                       R19 R20 K15 ["useRef"]
      116 LOADNIL                          R20
      117 CALL                             R19 1 1
      118 GETUPVAL                         R21 1
      119 GETTABLEKS                       R20 R21 K15 ["useRef"]
      121 LOADNIL                          R21
      122 CALL                             R20 1 1
      123 GETUPVAL                         R22 1
      124 GETTABLEKS                       R21 R22 K19 ["useCallback"]
      126 NEWCLOSURE                       R22 P4
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R0
      129 NEWTABLE                         R23 0 1
      131 GETTABLEKS                       R24 R0 K22 ["onReturnPressed"]
      133 SETLIST                          R23 R24 1 [1]
      135 CALL                             R21 2 1
      136 GETUPVAL                         R23 1
      137 GETTABLEKS                       R22 R23 K19 ["useCallback"]
      139 NEWCLOSURE                       R23 P5
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R19
      142 CAPTURE                          VAL R20
      143 NEWTABLE                         R24 0 1
      145 GETTABLEKS                       R25 R18 K23 ["current"]
      147 SETLIST                          R24 R25 1 [1]
      149 CALL                             R22 2 1
      150 GETUPVAL                         R24 1
      151 GETTABLEKS                       R23 R24 K19 ["useCallback"]
      153 NEWCLOSURE                       R24 P6
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R20
      158 NEWTABLE                         R25 0 0
      160 CALL                             R23 2 1
      161 NEWCLOSURE                       R24 P7
      162 CAPTURE                          UPVAL U2
      163 CAPTURE                          UPVAL U3
      164 CAPTURE                          VAL R0
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R3
      169 GETUPVAL                         R26 4
      170 GETTABLEKS                       R25 R26 K24 ["get"]
      172 CALL                             R25 0 1
      173 GETTABLEKS                       R26 R25 K25 ["isRobloxScriptSecurity"]
      175 CALL                             R26 0 1
      176 GETUPVAL                         R27 2
      177 LOADK                            R28 K26 ["ScrollingFrame"]
      178 NEWTABLE                         R29 16 0
      180 GETIMPORT                        R30 K29 [UDim2.new]
      182 LOADN                            R31 1
      183 LOADN                            R32 0
      184 LOADN                            R33 0
      185 FASTCALL2K                       MATH_MIN R10 K30 ; [+5]
      187 MOVE                             R35 R10
      188 LOADK                            R36 K30 [140]
      189 GETIMPORT                        R34 K33 [math.min]
      191 CALL                             R34 2 1
      192 CALL                             R30 4 1
      193 SETTABLEKS                       R30 R29 K11 ["Size"]
      195 GETIMPORT                        R30 K37 [Enum.AutomaticSize.Y]
      197 SETTABLEKS                       R30 R29 K38 ["AutomaticCanvasSize"]
      199 GETIMPORT                        R30 K29 [UDim2.new]
      201 LOADN                            R31 0
      202 LOADN                            R32 0
      203 LOADN                            R33 0
      204 LOADN                            R34 0
      205 CALL                             R30 4 1
      206 SETTABLEKS                       R30 R29 K39 ["CanvasSize"]
      208 GETIMPORT                        R30 K41 [Enum.ScrollingDirection.Y]
      210 SETTABLEKS                       R30 R29 K40 ["ScrollingDirection"]
      212 GETTABLEKS                       R30 R5 K42 ["Color3"]
      214 SETTABLEKS                       R30 R29 K43 ["ScrollBarImageColor3"]
      216 LOADN                            R31 140
      217 JUMPIFNOTLT                      R31 R10 ; [+4]
      219 GETTABLEKS                       R30 R5 K44 ["Transparency"]
      221 JUMP                             ; [+1]
      222 LOADN                            R30 1
      223 SETTABLEKS                       R30 R29 K45 ["ScrollBarImageTransparency"]
      225 SETTABLEKS                       R6 R29 K46 ["ScrollBarThickness"]
      227 LOADN                            R31 140
      228 JUMPIFLT                         R31 R10 ; [+2]
      230 LOADB                            R30 0 +1
      231 LOADB                            R30 1
      232 SETTABLEKS                       R30 R29 K47 ["ScrollingEnabled"]
      234 GETIMPORT                        R30 K50 [Enum.ScrollBarInset.Always]
      236 SETTABLEKS                       R30 R29 K51 ["VerticalScrollBarInset"]
      238 LOADN                            R30 1
      239 SETTABLEKS                       R30 R29 K52 ["BackgroundTransparency"]
      241 LOADN                            R30 0
      242 SETTABLEKS                       R30 R29 K53 ["BorderSizePixel"]
      244 GETUPVAL                         R32 1
      245 GETTABLEKS                       R31 R32 K54 ["Change"]
      247 GETTABLEKS                       R30 R31 K55 ["AbsoluteCanvasSize"]
      249 SETTABLE                         R15 R29 R30
      250 SETTABLEKS                       R8 R29 K56 ["ref"]
      252 DUPTABLE                         R30 K61 [{"TextBox", "UIFlexItem", "UIListLayout", "UIPadding"}]
      253 MOVE                             R31 R24
      254 NEWTABLE                         R32 16 0
      256 GETTABLEKS                       R33 R0 K18 ["text"]
      258 SETTABLEKS                       R33 R32 K62 ["Text"]
      260 GETIMPORT                        R33 K64 [UDim2.fromOffset]
      262 LOADN                            R36 2
      263 MUL                              R35 R36 R7
      264 SUB                              R34 R12 R35
      265 LOADN                            R35 28
      266 CALL                             R33 2 1
      267 SETTABLEKS                       R33 R32 K11 ["Size"]
      269 GETIMPORT                        R33 K37 [Enum.AutomaticSize.Y]
      271 SETTABLEKS                       R33 R32 K35 ["AutomaticSize"]
      273 JUMPIFNOT                        R26 ; [+2]
      274 LOADB                            R33 1
      275 JUMP                             ; [+1]
      276 LOADNIL                          R33
      277 SETTABLEKS                       R33 R32 K65 ["ShouldEmitUpAndDownArrowEvents"]
      279 JUMPIFNOT                        R26 ; [+2]
      280 LOADB                            R33 1
      281 JUMP                             ; [+1]
      282 LOADNIL                          R33
      283 SETTABLEKS                       R33 R32 K66 ["ShouldEmitTabEvents"]
      285 GETUPVAL                         R35 1
      286 GETTABLEKS                       R34 R35 K54 ["Change"]
      288 GETTABLEKS                       R33 R34 K62 ["Text"]
      290 SETTABLE                         R17 R32 R33
      291 GETUPVAL                         R35 1
      292 GETTABLEKS                       R34 R35 K67 ["Event"]
      294 GETTABLEKS                       R33 R34 K68 ["FocusLost"]
      296 SETTABLE                         R21 R32 R33
      297 GETUPVAL                         R35 1
      298 GETTABLEKS                       R34 R35 K54 ["Change"]
      300 GETTABLEKS                       R33 R34 K69 ["AbsoluteSize"]
      302 SETTABLE                         R16 R32 R33
      303 GETUPVAL                         R35 1
      304 GETTABLEKS                       R34 R35 K54 ["Change"]
      306 GETTABLEKS                       R33 R34 K70 ["CursorPosition"]
      308 SETTABLE                         R22 R32 R33
      309 SETTABLEKS                       R9 R32 K56 ["ref"]
      311 DUPTABLE                         R33 K72 [{"TextBoundChecker", "UIListLayout"}]
      312 MOVE                             R34 R24
      313 NEWTABLE                         R35 8 0
      315 GETIMPORT                        R36 K74 [UDim2.fromScale]
      317 LOADN                            R37 1
      318 LOADN                            R38 0
      319 CALL                             R36 2 1
      320 SETTABLEKS                       R36 R35 K11 ["Size"]
      322 LOADN                            R36 1
      323 SETTABLEKS                       R36 R35 K75 ["TextTransparency"]
      325 GETIMPORT                        R36 K78 [Enum.TextYAlignment.Top]
      327 SETTABLEKS                       R36 R35 K76 ["TextYAlignment"]
      329 LOADB                            R36 0
      330 SETTABLEKS                       R36 R35 K79 ["Interactable"]
      332 LOADB                            R36 0
      333 SETTABLEKS                       R36 R35 K80 ["TextEditable"]
      335 LOADB                            R36 0
      336 SETTABLEKS                       R36 R35 K81 ["Selectable"]
      338 GETUPVAL                         R38 1
      339 GETTABLEKS                       R37 R38 K54 ["Change"]
      341 GETTABLEKS                       R36 R37 K82 ["TextBounds"]
      343 SETTABLE                         R23 R35 R36
      344 SETTABLEKS                       R18 R35 K56 ["ref"]
      346 CALL                             R34 1 1
      347 SETTABLEKS                       R34 R33 K71 ["TextBoundChecker"]
      349 GETUPVAL                         R34 2
      350 LOADK                            R35 K59 ["UIListLayout"]
      351 DUPTABLE                         R36 K84 [{"VerticalFlex"}]
      352 GETIMPORT                        R37 K87 [Enum.UIFlexAlignment.Fill]
      354 SETTABLEKS                       R37 R36 K83 ["VerticalFlex"]
      356 CALL                             R34 2 1
      357 SETTABLEKS                       R34 R33 K59 ["UIListLayout"]
      359 CALL                             R31 2 1
      360 SETTABLEKS                       R31 R30 K57 ["TextBox"]
      362 GETUPVAL                         R31 2
      363 LOADK                            R32 K58 ["UIFlexItem"]
      364 DUPTABLE                         R33 K90 [{"FlexMode", "ItemLineAlignment"}]
      365 GETIMPORT                        R34 K92 [Enum.UIFlexMode.Fill]
      367 SETTABLEKS                       R34 R33 K88 ["FlexMode"]
      369 GETIMPORT                        R34 K94 [Enum.ItemLineAlignment.Center]
      371 SETTABLEKS                       R34 R33 K89 ["ItemLineAlignment"]
      373 CALL                             R31 2 1
      374 SETTABLEKS                       R31 R30 K58 ["UIFlexItem"]
      376 GETUPVAL                         R31 2
      377 LOADK                            R32 K59 ["UIListLayout"]
      378 DUPTABLE                         R33 K95 [{"ItemLineAlignment"}]
      379 GETIMPORT                        R34 K94 [Enum.ItemLineAlignment.Center]
      381 SETTABLEKS                       R34 R33 K89 ["ItemLineAlignment"]
      383 CALL                             R31 2 1
      384 SETTABLEKS                       R31 R30 K59 ["UIListLayout"]
      386 GETUPVAL                         R31 2
      387 LOADK                            R32 K60 ["UIPadding"]
      388 DUPTABLE                         R33 K98 [{"PaddingLeft", "PaddingRight"}]
      389 GETIMPORT                        R34 K100 [UDim.new]
      391 LOADN                            R35 0
      392 MOVE                             R36 R7
      393 CALL                             R34 2 1
      394 SETTABLEKS                       R34 R33 K96 ["PaddingLeft"]
      396 GETIMPORT                        R34 K100 [UDim.new]
      398 LOADN                            R35 0
      399 MOVE                             R36 R7
      400 CALL                             R34 2 1
      401 SETTABLEKS                       R34 R33 K97 ["PaddingRight"]
      403 CALL                             R31 2 1
      404 SETTABLEKS                       R31 R30 K60 ["UIPadding"]
      406 CALL                             R27 3 -1
      407 RETURN                           R27 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["textBoxRef"]
        8 GETTABLEKS                       R0 R1 K1 ["current"]
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R1 R2 K1 ["current"]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R3 R4 K2 ["inputText"]
       21 SETTABLE                         R3 R1 R2
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R2 R3 K1 ["current"]
       25 GETUPVAL                         R3 1
       26 GETTABLE                         R1 R2 R3
       27 ORK                              R2 R1 K3 [""]
       28 SETTABLEKS                       R2 R0 K4 ["Text"]
       30 GETUPVAL                         R2 4
       31 GETUPVAL                         R3 1
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["useContext"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K2 ["Context"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K3 ["threadId"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K4 ["useState"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 2
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R5
       29 NEWTABLE                         R8 0 3
       31 GETTABLEKS                       R9 R0 K6 ["inputText"]
       33 MOVE                             R10 R4
       34 MOVE                             R11 R3
       35 SETLIST                          R8 R9 3 [1]
       37 CALL                             R6 2 0
       38 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_17:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_18:
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

PROTO_19:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIF                           R0 ; [+11]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["current"]
       11 JUMPIFNOT                        R2 ; [+7]
       12 GETUPVAL                         R2 3
       13 FASTCALL1                        TOSTRING R1 ; [+3]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R3 K4 [tostring]
       17 CALL                             R3 1 1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 GETIMPORT                        R0 K3 [task.spawn]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["removeImage"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 1
        4 NEWTABLE                         R1 0 0
        6 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 LOADNIL                          R2
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 CALL                             R1 0 1
        7 GETIMPORT                        R2 K2 [utf8.len]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKNIL                  R2 ; [+5]
       13 GETUPVAL                         R3 3
       14 LOADK                            R4 K3 [""]
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 JUMPIFNOTLT                      R1 R2 ; [+14]
       19 GETIMPORT                        R3 K5 [utf8.offset]
       21 MOVE                             R4 R0
       22 ADDK                             R5 R1 K6 [1]
       23 LOADN                            R6 1
       24 CALL                             R3 3 1
       25 JUMPIFNOT                        R3 ; [+6]
       26 LOADN                            R6 1
       27 SUBK                             R7 R3 K6 [1]
       28 NAMECALL                         R4 R0 K7 ["sub"]
       30 CALL                             R4 3 1
       31 MOVE                             R0 R4
       32 GETUPVAL                         R3 3
       33 MOVE                             R4 R0
       34 CALL                             R3 1 0
       35 GETUPVAL                         R4 4
       36 GETTABLEKS                       R3 R4 K8 ["CommandPrefix"]
       38 LOADN                            R6 1
       39 LENGTH                           R7 R3
       40 NAMECALL                         R4 R0 K7 ["sub"]
       42 CALL                             R4 3 1
       43 JUMPIFNOTEQ                      R4 R3 ; [+46]
       45 GETUPVAL                         R7 4
       46 GETTABLEKS                       R6 R7 K9 ["CommandDelimiter"]
       48 NAMECALL                         R4 R0 K10 ["find"]
       50 CALL                             R4 2 1
       51 JUMPIF                           R4 ; [+38]
       52 LENGTH                           R7 R3
       53 ADDK                             R6 R7 K6 [1]
       54 NAMECALL                         R4 R0 K7 ["sub"]
       56 CALL                             R4 2 1
       57 GETUPVAL                         R6 4
       58 GETTABLEKS                       R5 R6 K11 ["getRegisteredSlashCommands"]
       60 GETUPVAL                         R6 5
       61 CALL                             R5 1 1
       62 GETIMPORT                        R6 K14 [table.create]
       64 LENGTH                           R7 R5
       65 CALL                             R6 1 1
       66 MOVE                             R7 R5
       67 LOADNIL                          R8
       68 LOADNIL                          R9
       69 FORGPREP                         R7
       70 LOADN                            R14 1
       71 LENGTH                           R15 R4
       72 NAMECALL                         R12 R11 K7 ["sub"]
       74 CALL                             R12 3 1
       75 JUMPIFNOTEQ                      R12 R4 ; [+8]
       77 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       79 MOVE                             R13 R6
       80 MOVE                             R14 R11
       81 GETIMPORT                        R12 K16 [table.insert]
       83 CALL                             R12 2 0
       84 FORGLOOP                         R7 2 ; [-15]
       86 GETUPVAL                         R7 6
       87 MOVE                             R8 R6
       88 CALL                             R7 1 0
       89 RETURN                           R0 0
       90 GETUPVAL                         R4 6
       91 DUPCLOSURE                       R5 K17 [PROTO_24]
       92 CALL                             R4 1 0
       93 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FocusInput"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_34:
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
       27 GETTABLEKS                       R9 R10 K0 ["useContext"]
       29 GETUPVAL                         R11 5
       30 GETTABLEKS                       R10 R11 K1 ["Context"]
       32 CALL                             R9 1 1
       33 GETTABLEKS                       R11 R9 K6 ["selectedProvider"]
       35 GETUPVAL                         R14 6
       36 GETTABLEKS                       R13 R14 K7 ["LLMProviderTypes"]
       38 GETTABLEKS                       R12 R13 K8 ["Studio"]
       40 JUMPIFNOTEQ                      R11 R12 ; [+2]
       42 LOADB                            R10 0 +1
       43 LOADB                            R10 1
       44 LOADNIL                          R11
       45 GETUPVAL                         R12 7
       46 CALL                             R12 0 1
       47 JUMPIFNOT                        R12 ; [+3]
       48 GETUPVAL                         R12 8
       49 CALL                             R12 0 1
       50 MOVE                             R11 R12
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R12 R13 K9 ["useState"]
       54 LOADK                            R13 K10 [""]
       55 CALL                             R12 1 2
       56 GETTABLEKS                       R15 R0 K11 ["textBoxRef"]
       58 JUMPIFNOT                        R15 ; [+3]
       59 GETTABLEKS                       R14 R0 K11 ["textBoxRef"]
       61 JUMP                             ; [+5]
       62 GETUPVAL                         R15 1
       63 GETTABLEKS                       R14 R15 K12 ["useRef"]
       65 LOADNIL                          R15
       66 CALL                             R14 1 1
       67 GETUPVAL                         R15 9
       68 CALL                             R15 0 1
       69 JUMPIFNOT                        R15 ; [+7]
       70 GETUPVAL                         R15 10
       71 DUPTABLE                         R16 K14 [{"inputText", "textBoxRef"}]
       72 SETTABLEKS                       R12 R16 K13 ["inputText"]
       74 SETTABLEKS                       R14 R16 K11 ["textBoxRef"]
       76 CALL                             R15 1 0
       77 NEWTABLE                         R15 0 0
       79 LOADNIL                          R16
       80 LOADNIL                          R17
       81 LOADNIL                          R18
       82 GETUPVAL                         R20 1
       83 GETTABLEKS                       R19 R20 K9 ["useState"]
       85 LOADNIL                          R20
       86 CALL                             R19 1 2
       87 GETUPVAL                         R22 1
       88 GETTABLEKS                       R21 R22 K12 ["useRef"]
       90 LOADB                            R22 1
       91 CALL                             R21 1 1
       92 GETUPVAL                         R23 1
       93 GETTABLEKS                       R22 R23 K15 ["useEffect"]
       95 NEWCLOSURE                       R23 P0
       96 CAPTURE                          VAL R21
       97 NEWTABLE                         R24 0 0
       99 CALL                             R22 2 0
      100 GETUPVAL                         R22 11
      101 CALL                             R22 0 1
      102 JUMPIFNOT                        R22 ; [+30]
      103 GETUPVAL                         R23 1
      104 GETTABLEKS                       R22 R23 K9 ["useState"]
      106 NEWTABLE                         R23 0 0
      108 CALL                             R22 1 2
      109 MOVE                             R15 R22
      110 MOVE                             R16 R23
      111 GETUPVAL                         R23 1
      112 GETTABLEKS                       R22 R23 K16 ["useCallback"]
      114 NEWCLOSURE                       R23 P1
      115 CAPTURE                          VAL R21
      116 CAPTURE                          VAL R20
      117 CAPTURE                          UPVAL U12
      118 CAPTURE                          REF R16
      119 NEWTABLE                         R24 0 0
      121 CALL                             R22 2 1
      122 MOVE                             R17 R22
      123 GETUPVAL                         R23 1
      124 GETTABLEKS                       R22 R23 K16 ["useCallback"]
      126 NEWCLOSURE                       R23 P2
      127 CAPTURE                          REF R16
      128 CAPTURE                          UPVAL U12
      129 NEWTABLE                         R24 0 0
      131 CALL                             R22 2 1
      132 MOVE                             R18 R22
      133 GETUPVAL                         R23 1
      134 GETTABLEKS                       R22 R23 K9 ["useState"]
      136 NEWTABLE                         R23 0 0
      138 CALL                             R22 1 2
      139 GETTABLEKS                       R24 R0 K17 ["OnMessageSent"]
      141 GETUPVAL                         R25 13
      142 DUPTABLE                         R26 K19 [{"setInputEnabled"}]
      143 GETUPVAL                         R27 14
      144 MOVE                             R28 R2
      145 CALL                             R27 1 1
      146 SETTABLEKS                       R27 R26 K18 ["setInputEnabled"]
      148 CALL                             R25 1 1
      149 GETUPVAL                         R27 1
      150 GETTABLEKS                       R26 R27 K20 ["useMemo"]
      152 DUPCLOSURE                       R27 K21 [PROTO_23]
      153 CAPTURE                          UPVAL U15
      154 NEWTABLE                         R28 0 1
      156 GETUPVAL                         R30 15
      157 GETTABLEKS                       R29 R30 K22 ["locale"]
      159 SETLIST                          R28 R29 1 [1]
      161 CALL                             R26 2 1
      162 GETUPVAL                         R27 16
      163 DUPTABLE                         R28 K24 [{"textBoxRef", "setInputText"}]
      164 SETTABLEKS                       R14 R28 K11 ["textBoxRef"]
      166 SETTABLEKS                       R13 R28 K23 ["setInputText"]
      168 CALL                             R27 1 2
      169 GETUPVAL                         R30 1
      170 GETTABLEKS                       R29 R30 K16 ["useCallback"]
      172 NEWCLOSURE                       R30 P4
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R20
      175 CAPTURE                          UPVAL U17
      176 CAPTURE                          VAL R13
      177 CAPTURE                          UPVAL U18
      178 CAPTURE                          REF R11
      179 CAPTURE                          VAL R23
      180 NEWTABLE                         R31 0 4
      182 MOVE                             R32 R13
      183 MOVE                             R33 R23
      184 MOVE                             R34 R11
      185 MOVE                             R35 R19
      186 SETLIST                          R31 R32 4 [1]
      188 CALL                             R29 2 1
      189 GETUPVAL                         R31 1
      190 GETTABLEKS                       R30 R31 K9 ["useState"]
      192 LOADNIL                          R31
      193 CALL                             R30 1 2
      194 GETUPVAL                         R33 1
      195 GETTABLEKS                       R32 R33 K15 ["useEffect"]
      197 NEWCLOSURE                       R33 P5
      198 CAPTURE                          VAL R30
      199 CAPTURE                          VAL R14
      200 NEWTABLE                         R34 0 1
      202 MOVE                             R35 R30
      203 SETLIST                          R34 R35 1 [1]
      205 CALL                             R32 2 0
      206 GETUPVAL                         R33 1
      207 GETTABLEKS                       R32 R33 K16 ["useCallback"]
      209 NEWCLOSURE                       R33 P6
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R31
      212 NEWTABLE                         R34 0 0
      214 CALL                             R32 2 1
      215 GETUPVAL                         R33 9
      216 CALL                             R33 0 1
      217 JUMPIF                           R33 ; [+3]
      218 GETUPVAL                         R33 7
      219 CALL                             R33 0 1
      220 JUMPIFNOT                        R33 ; [+9]
      221 GETUPVAL                         R34 1
      222 GETTABLEKS                       R33 R34 K15 ["useEffect"]
      224 NEWCLOSURE                       R34 P7
      225 CAPTURE                          UPVAL U19
      226 CAPTURE                          VAL R31
      227 NEWTABLE                         R35 0 0
      229 CALL                             R33 2 0
      230 GETUPVAL                         R34 1
      231 GETTABLEKS                       R33 R34 K16 ["useCallback"]
      233 NEWCLOSURE                       R34 P8
      234 CAPTURE                          VAL R12
      235 CAPTURE                          REF R15
      236 CAPTURE                          VAL R13
      237 CAPTURE                          UPVAL U11
      238 CAPTURE                          REF R16
      239 CAPTURE                          VAL R25
      240 CAPTURE                          VAL R27
      241 CAPTURE                          VAL R24
      242 NEWTABLE                         R35 0 7
      244 MOVE                             R36 R12
      245 MOVE                             R37 R13
      246 MOVE                             R38 R25
      247 MOVE                             R39 R27
      248 MOVE                             R40 R24
      249 MOVE                             R41 R15
      250 MOVE                             R42 R16
      251 SETLIST                          R35 R36 7 [1]
      253 CALL                             R33 2 1
      254 GETUPVAL                         R35 1
      255 GETTABLEKS                       R34 R35 K16 ["useCallback"]
      257 NEWCLOSURE                       R35 P9
      258 CAPTURE                          VAL R8
      259 CAPTURE                          UPVAL U20
      260 CAPTURE                          UPVAL U9
      261 CAPTURE                          VAL R7
      262 CAPTURE                          VAL R1
      263 CAPTURE                          VAL R5
      264 NEWTABLE                         R36 0 4
      266 MOVE                             R37 R1
      267 MOVE                             R38 R5
      268 MOVE                             R39 R7
      269 MOVE                             R40 R8
      270 SETLIST                          R36 R37 4 [1]
      272 CALL                             R34 2 1
      273 MOVE                             R35 R4
      274 JUMPIFNOT                        R35 ; [+9]
      275 GETTABLEKS                       R36 R4 K3 ["reasonDisabled"]
      277 GETUPVAL                         R38 21
      278 GETTABLEKS                       R37 R38 K25 ["Generation"]
      280 JUMPIFEQ                         R36 R37 ; [+2]
      282 LOADB                            R35 0 +1
      283 LOADB                            R35 1
      284 LENGTH                           R37 R12
      285 JUMPIFNOTEQKN                    R37 K26 [0] ; [+5]
      287 LOADB                            R36 1
      288 LENGTH                           R37 R15
      289 JUMPIFEQKN                       R37 K26 [0] ; [+2]
      291 NOT                              R36 R3
      292 GETUPVAL                         R37 22
      293 CALL                             R37 0 1
      294 GETUPVAL                         R39 1
      295 GETTABLEKS                       R38 R39 K27 ["useBinding"]
      297 LOADN                            R39 0
      298 CALL                             R38 1 2
      299 GETUPVAL                         R40 23
      300 GETUPVAL                         R41 24
      301 DUPTABLE                         R42 K31 [{"tag", "LayoutOrder", "testId"}]
      302 NEWTABLE                         R43 2 0
      304 LOADB                            R44 1
      305 SETTABLEKS                       R44 R43 K32 ["col size-full-0 auto-y"]
      307 GETUPVAL                         R45 25
      308 CALL                             R45 0 1
      309 NOT                              R44 R45
      310 SETTABLEKS                       R44 R43 K33 ["margin-x-small"]
      312 SETTABLEKS                       R43 R42 K28 ["tag"]
      314 GETTABLEKS                       R43 R0 K29 ["LayoutOrder"]
      316 SETTABLEKS                       R43 R42 K29 ["LayoutOrder"]
      318 GETUPVAL                         R45 26
      319 GETTABLEKS                       R44 R45 K34 ["InputArea"]
      321 GETTABLEKS                       R43 R44 K35 ["Container"]
      323 SETTABLEKS                       R43 R42 K30 ["testId"]
      325 DUPTABLE                         R43 K38 [{"Menu", "Footer"}]
      326 GETUPVAL                         R44 23
      327 GETUPVAL                         R45 27
      328 DUPTABLE                         R46 K43 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus"}]
      329 LENGTH                           R48 R22
      330 LOADN                            R49 0
      331 JUMPIFLT                         R49 R48 ; [+2]
      333 LOADB                            R47 0 +1
      334 LOADB                            R47 1
      335 SETTABLEKS                       R47 R46 K39 ["isOpen"]
      337 SETTABLEKS                       R22 R46 K40 ["items"]
      339 SETTABLEKS                       R38 R46 K41 ["width"]
      341 SETTABLEKS                       R14 R46 K11 ["textBoxRef"]
      343 SETTABLEKS                       R32 R46 K42 ["setTextAndFocus"]
      345 DUPTABLE                         R47 K45 [{"MessageField"}]
      346 GETUPVAL                         R48 23
      347 GETUPVAL                         R49 24
      348 DUPTABLE                         R50 K47 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      349 NEWTABLE                         R51 8 0
      351 LOADB                            R52 1
      352 SETTABLEKS                       R52 R51 K48 ["col size-full-0 auto-y gap-small radius-large"]
      354 JUMPIFNOTEQKNIL                  R19 ; [+2]
      356 LOADB                            R52 0 +1
      357 LOADB                            R52 1
      358 SETTABLEKS                       R52 R51 K49 ["stroke-system-alert"]
      360 JUMPIFEQKNIL                     R19 ; [+2]
      362 LOADB                            R52 0 +1
      363 LOADB                            R52 1
      364 SETTABLEKS                       R52 R51 K50 ["stroke-emphasis"]
      366 GETUPVAL                         R53 11
      367 CALL                             R53 0 1
      368 NOT                              R52 R53
      369 SETTABLEKS                       R52 R51 K51 ["padding-y-small padding-right-small padding-left-large"]
      371 GETUPVAL                         R52 11
      372 CALL                             R52 0 1
      373 SETTABLEKS                       R52 R51 K52 ["padding-medium"]
      375 SETTABLEKS                       R51 R50 K28 ["tag"]
      377 NEWCLOSURE                       R51 P10
      378 CAPTURE                          VAL R39
      379 SETTABLEKS                       R51 R50 K46 ["onAbsoluteSizeChanged"]
      381 MOVE                             R51 R37
      382 CALL                             R51 0 1
      383 SETTABLEKS                       R51 R50 K29 ["LayoutOrder"]
      385 DUPTABLE                         R51 K56 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      386 GETUPVAL                         R52 23
      387 LOADK                            R53 K53 ["UIFlexItem"]
      388 DUPTABLE                         R54 K59 [{"FlexMode", "ItemLineAlignment"}]
      389 GETIMPORT                        R55 K63 [Enum.UIFlexMode.Fill]
      391 SETTABLEKS                       R55 R54 K57 ["FlexMode"]
      393 GETIMPORT                        R55 K65 [Enum.ItemLineAlignment.Center]
      395 SETTABLEKS                       R55 R54 K58 ["ItemLineAlignment"]
      397 CALL                             R52 2 1
      398 SETTABLEKS                       R52 R51 K53 ["UIFlexItem"]
      400 GETUPVAL                         R52 11
      401 CALL                             R52 0 1
      402 JUMPIFNOT                        R52 ; [+27]
      403 LOADB                            R52 0
      404 LENGTH                           R53 R15
      405 LOADN                            R54 0
      406 JUMPIFNOTLT                      R54 R53 ; [+23]
      408 GETUPVAL                         R52 23
      409 GETUPVAL                         R53 24
      410 DUPTABLE                         R54 K66 [{"tag", "LayoutOrder"}]
      411 LOADK                            R55 K67 ["row size-full-0 auto-y"]
      412 SETTABLEKS                       R55 R54 K28 ["tag"]
      414 MOVE                             R55 R37
      415 CALL                             R55 0 1
      416 SETTABLEKS                       R55 R54 K29 ["LayoutOrder"]
      418 DUPTABLE                         R55 K69 [{"List"}]
      419 GETUPVAL                         R56 23
      420 GETUPVAL                         R57 28
      421 DUPTABLE                         R58 K72 [{"attachedImages", "onRemoveImage"}]
      422 SETTABLEKS                       R15 R58 K70 ["attachedImages"]
      424 SETTABLEKS                       R18 R58 K71 ["onRemoveImage"]
      426 CALL                             R56 2 1
      427 SETTABLEKS                       R56 R55 K68 ["List"]
      429 CALL                             R52 3 1
      430 SETTABLEKS                       R52 R51 K54 ["AttachedImagesPreview"]
      432 GETUPVAL                         R52 23
      433 GETUPVAL                         R53 24
      434 DUPTABLE                         R54 K66 [{"tag", "LayoutOrder"}]
      435 NEWTABLE                         R55 4 0
      437 GETUPVAL                         R57 11
      438 CALL                             R57 0 1
      439 NOT                              R56 R57
      440 SETTABLEKS                       R56 R55 K73 ["row gap-small"]
      442 GETUPVAL                         R56 11
      443 CALL                             R56 0 1
      444 SETTABLEKS                       R56 R55 K74 ["col gap-medium"]
      446 LOADB                            R56 1
      447 SETTABLEKS                       R56 R55 K75 ["size-full-0 auto-y flex-between flex-y-fill align-y-center"]
      449 SETTABLEKS                       R55 R54 K28 ["tag"]
      451 MOVE                             R55 R37
      452 CALL                             R55 0 1
      453 SETTABLEKS                       R55 R54 K29 ["LayoutOrder"]
      455 DUPTABLE                         R55 K78 [{"TextInput", "ActionButtons"}]
      456 GETUPVAL                         R56 23
      457 GETUPVAL                         R57 29
      458 DUPTABLE                         R58 K84 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "textBoxRef"}]
      459 SETTABLEKS                       R12 R58 K79 ["text"]
      461 JUMPIFNOT                        R35 ; [+3]
      462 GETTABLEKS                       R59 R26 K85 ["Responding"]
      464 JUMP                             ; [+6]
      465 JUMPIFEQKNIL                     R28 ; [+3]
      467 MOVE                             R59 R28
      468 JUMP                             ; [+2]
      469 GETTABLEKS                       R59 R26 K86 ["AskAssistant"]
      471 SETTABLEKS                       R59 R58 K80 ["placeholder"]
      473 NOT                              R59 R3
      474 SETTABLEKS                       R59 R58 K81 ["isDisabled"]
      476 MOVE                             R59 R37
      477 CALL                             R59 0 1
      478 SETTABLEKS                       R59 R58 K29 ["LayoutOrder"]
      480 SETTABLEKS                       R29 R58 K82 ["onChanged"]
      482 SETTABLEKS                       R33 R58 K83 ["onReturnPressed"]
      484 SETTABLEKS                       R14 R58 K11 ["textBoxRef"]
      486 CALL                             R56 2 1
      487 SETTABLEKS                       R56 R55 K76 ["TextInput"]
      489 GETUPVAL                         R56 23
      490 GETUPVAL                         R57 24
      491 DUPTABLE                         R58 K66 [{"tag", "LayoutOrder"}]
      492 NEWTABLE                         R59 4 0
      494 LOADB                            R60 1
      495 SETTABLEKS                       R60 R59 K87 ["row align-y-center"]
      497 GETUPVAL                         R61 11
      498 CALL                             R61 0 1
      499 NOT                              R60 R61
      500 SETTABLEKS                       R60 R59 K88 ["auto-xy gap-small"]
      502 GETUPVAL                         R60 11
      503 CALL                             R60 0 1
      504 SETTABLEKS                       R60 R59 K89 ["size-full-0 auto-y gap-xsmall"]
      506 SETTABLEKS                       R59 R58 K28 ["tag"]
      508 MOVE                             R59 R37
      509 CALL                             R59 0 1
      510 SETTABLEKS                       R59 R58 K29 ["LayoutOrder"]
      512 DUPTABLE                         R59 K96 [{"AttachImageButton", "ServerManagementButton", "Spacer", "SelectAssistantMode", "SendButton", "StopButton"}]
      513 GETUPVAL                         R61 11
      514 CALL                             R61 0 1
      515 JUMPIFNOT                        R61 ; [+21]
      516 JUMPIF                           R10 ; [+6]
      517 GETUPVAL                         R61 30
      518 CALL                             R61 0 1
      519 JUMPIFNOT                        R61 ; [+17]
      520 GETUPVAL                         R61 31
      521 CALL                             R61 0 1
      522 JUMPIFNOT                        R61 ; [+14]
      523 GETUPVAL                         R60 23
      524 GETUPVAL                         R61 32
      525 DUPTABLE                         R62 K98 [{"isDisabled", "onActivated", "LayoutOrder"}]
      526 NOT                              R63 R3
      527 SETTABLEKS                       R63 R62 K81 ["isDisabled"]
      529 SETTABLEKS                       R17 R62 K97 ["onActivated"]
      531 MOVE                             R63 R37
      532 CALL                             R63 0 1
      533 SETTABLEKS                       R63 R62 K29 ["LayoutOrder"]
      535 CALL                             R60 2 1
      536 JUMP                             ; [+1]
      537 LOADNIL                          R60
      538 SETTABLEKS                       R60 R59 K90 ["AttachImageButton"]
      540 GETUPVAL                         R60 23
      541 GETUPVAL                         R61 33
      542 DUPTABLE                         R62 K99 [{"LayoutOrder"}]
      543 MOVE                             R63 R37
      544 CALL                             R63 0 1
      545 SETTABLEKS                       R63 R62 K29 ["LayoutOrder"]
      547 CALL                             R60 2 1
      548 SETTABLEKS                       R60 R59 K91 ["ServerManagementButton"]
      550 GETUPVAL                         R61 11
      551 CALL                             R61 0 1
      552 JUMPIFNOT                        R61 ; [+12]
      553 GETUPVAL                         R60 23
      554 GETUPVAL                         R61 24
      555 DUPTABLE                         R62 K66 [{"tag", "LayoutOrder"}]
      556 LOADK                            R63 K100 ["fill"]
      557 SETTABLEKS                       R63 R62 K28 ["tag"]
      559 MOVE                             R63 R37
      560 CALL                             R63 0 1
      561 SETTABLEKS                       R63 R62 K29 ["LayoutOrder"]
      563 CALL                             R60 2 1
      564 JUMP                             ; [+1]
      565 LOADNIL                          R60
      566 SETTABLEKS                       R60 R59 K92 ["Spacer"]
      568 GETUPVAL                         R61 34
      569 CALL                             R61 0 1
      570 JUMPIFNOT                        R61 ; [+9]
      571 GETUPVAL                         R60 23
      572 GETUPVAL                         R61 35
      573 DUPTABLE                         R62 K99 [{"LayoutOrder"}]
      574 MOVE                             R63 R37
      575 CALL                             R63 0 1
      576 SETTABLEKS                       R63 R62 K29 ["LayoutOrder"]
      578 CALL                             R60 2 1
      579 JUMP                             ; [+1]
      580 LOADNIL                          R60
      581 SETTABLEKS                       R60 R59 K93 ["SelectAssistantMode"]
      583 NOT                              R60 R35
      584 JUMPIFNOT                        R60 ; [+30]
      585 GETUPVAL                         R60 23
      586 GETUPVAL                         R61 36
      587 DUPTABLE                         R62 K105 [{"icon", "tag", "iconTag", "iconRotation", "isDisabled", "onActivated", "LayoutOrder", "skipBackgroundColoringDisabled"}]
      588 LOADK                            R63 K106 ["icons/navigation/seeAllArrow_small"]
      589 SETTABLEKS                       R63 R62 K101 ["icon"]
      591 JUMPIFNOT                        R36 ; [+2]
      592 LOADK                            R63 K107 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
      593 JUMP                             ; [+1]
      594 LOADK                            R63 K108 ["size-600-600 radius-circle bg-action-emphasis align-x-center align-y-center"]
      595 SETTABLEKS                       R63 R62 K28 ["tag"]
      597 LOADK                            R63 K109 ["size-300-300 content-emphasis"]
      598 SETTABLEKS                       R63 R62 K102 ["iconTag"]
      600 LOADN                            R63 166
      601 SETTABLEKS                       R63 R62 K103 ["iconRotation"]
      603 SETTABLEKS                       R36 R62 K81 ["isDisabled"]
      605 SETTABLEKS                       R33 R62 K97 ["onActivated"]
      607 MOVE                             R63 R37
      608 CALL                             R63 0 1
      609 SETTABLEKS                       R63 R62 K29 ["LayoutOrder"]
      611 LOADB                            R63 1
      612 SETTABLEKS                       R63 R62 K104 ["skipBackgroundColoringDisabled"]
      614 CALL                             R60 2 1
      615 SETTABLEKS                       R60 R59 K94 ["SendButton"]
      617 MOVE                             R60 R35
      618 JUMPIFNOT                        R60 ; [+29]
      619 GETUPVAL                         R60 23
      620 GETUPVAL                         R61 36
      621 DUPTABLE                         R62 K110 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId", "skipBackgroundColoringDisabled"}]
      622 LOADK                            R63 K111 ["icons/controls/mediaStop_small"]
      623 SETTABLEKS                       R63 R62 K101 ["icon"]
      625 LOADK                            R63 K107 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
      626 SETTABLEKS                       R63 R62 K28 ["tag"]
      628 LOADK                            R63 K109 ["size-300-300 content-emphasis"]
      629 SETTABLEKS                       R63 R62 K102 ["iconTag"]
      631 SETTABLEKS                       R34 R62 K97 ["onActivated"]
      633 MOVE                             R63 R37
      634 CALL                             R63 0 1
      635 SETTABLEKS                       R63 R62 K29 ["LayoutOrder"]
      637 GETUPVAL                         R65 26
      638 GETTABLEKS                       R64 R65 K34 ["InputArea"]
      640 GETTABLEKS                       R63 R64 K95 ["StopButton"]
      642 SETTABLEKS                       R63 R62 K30 ["testId"]
      644 LOADB                            R63 1
      645 SETTABLEKS                       R63 R62 K104 ["skipBackgroundColoringDisabled"]
      647 CALL                             R60 2 1
      648 SETTABLEKS                       R60 R59 K95 ["StopButton"]
      650 CALL                             R56 3 1
      651 SETTABLEKS                       R56 R55 K77 ["ActionButtons"]
      653 CALL                             R52 3 1
      654 SETTABLEKS                       R52 R51 K55 ["InputRow"]
      656 CALL                             R48 3 1
      657 SETTABLEKS                       R48 R47 K44 ["MessageField"]
      659 CALL                             R44 3 1
      660 SETTABLEKS                       R44 R43 K36 ["Menu"]
      662 GETUPVAL                         R44 23
      663 GETUPVAL                         R45 37
      664 DUPTABLE                         R46 K113 [{"LayoutOrder", "imageAttachError"}]
      665 MOVE                             R47 R37
      666 CALL                             R47 0 1
      667 SETTABLEKS                       R47 R46 K29 ["LayoutOrder"]
      669 SETTABLEKS                       R19 R46 K112 ["imageAttachError"]
      671 CALL                             R44 2 1
      672 SETTABLEKS                       R44 R43 K37 ["Footer"]
      674 CALL                             R40 3 -1
      675 CLOSEUPVALS                      R11
      676 RETURN                           R40 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantModeDropdown"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R4 K8 ["AttachedImagesPreviewList"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R6 K11 ["CustomIconButton"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Guest"]
       39 GETTABLEKS                       R6 R7 K13 ["Environment"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Events"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Parent"]
       51 GETTABLEKS                       R8 R9 K15 ["Foundation"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R10 R0 K6 ["Components"]
       58 GETTABLEKS                       R9 R10 K16 ["ImageAttachmentButton"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R11 R0 K17 ["Util"]
       65 GETTABLEKS                       R10 R11 K18 ["ImageAttachmentUtils"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R12 R0 K6 ["Components"]
       72 GETTABLEKS                       R11 R12 K19 ["InputFooter"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R14 R0 K6 ["Components"]
       79 GETTABLEKS                       R13 R14 K20 ["Contexts"]
       81 GETTABLEKS                       R12 R13 K21 ["InputStateContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R15 R0 K6 ["Components"]
       88 GETTABLEKS                       R14 R15 K20 ["Contexts"]
       90 GETTABLEKS                       R13 R14 K22 ["LLMProviderSelectionContext"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R15 R0 K9 ["Parent"]
       97 GETTABLEKS                       R14 R15 K23 ["React"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R16 R0 K9 ["Parent"]
      104 GETTABLEKS                       R15 R16 K24 ["ReactUtils"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R17 R0 K6 ["Components"]
      111 GETTABLEKS                       R16 R17 K25 ["ServerManagementDropdown"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R19 R0 K6 ["Components"]
      118 GETTABLEKS                       R18 R19 K20 ["Contexts"]
      120 GETTABLEKS                       R17 R18 K26 ["SessionIdContext"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R19 R0 K6 ["Components"]
      127 GETTABLEKS                       R18 R19 K27 ["SlashCommandMenu"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R20 R0 K17 ["Util"]
      134 GETTABLEKS                       R19 R20 K28 ["TestIds"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R22 R0 K6 ["Components"]
      141 GETTABLEKS                       R21 R22 K20 ["Contexts"]
      143 GETTABLEKS                       R20 R21 K29 ["ThreadIdContext"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R23 R0 K30 ["Resources"]
      150 GETTABLEKS                       R22 R23 K31 ["Localization"]
      152 GETTABLEKS                       R21 R22 K32 ["Translator"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETTABLEKS                       R22 R0 K33 ["Types"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R24 R0 K6 ["Components"]
      164 GETTABLEKS                       R23 R24 K34 ["UIToolRegistry"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K5 [require]
      169 GETTABLEKS                       R26 R0 K6 ["Components"]
      171 GETTABLEKS                       R25 R26 K20 ["Contexts"]
      173 GETTABLEKS                       R24 R25 K35 ["WindowInputContext"]
      175 CALL                             R23 1 1
      176 GETIMPORT                        R24 K5 [require]
      178 GETTABLEKS                       R26 R0 K17 ["Util"]
      180 GETTABLEKS                       R25 R26 K36 ["getToggleGenerationInputFunc"]
      182 CALL                             R24 1 1
      183 GETIMPORT                        R25 K5 [require]
      185 GETTABLEKS                       R27 R0 K37 ["Hooks"]
      187 GETTABLEKS                       R26 R27 K38 ["useAssistantMode"]
      189 CALL                             R25 1 1
      190 GETIMPORT                        R26 K5 [require]
      192 GETTABLEKS                       R28 R0 K37 ["Hooks"]
      194 GETTABLEKS                       R27 R28 K39 ["useCurrentAssistantMessageId"]
      196 CALL                             R26 1 1
      197 GETIMPORT                        R27 K5 [require]
      199 GETTABLEKS                       R29 R0 K37 ["Hooks"]
      201 GETTABLEKS                       R28 R29 K40 ["useEventConnection"]
      203 CALL                             R27 1 1
      204 GETIMPORT                        R28 K5 [require]
      206 GETTABLEKS                       R30 R0 K37 ["Hooks"]
      208 GETTABLEKS                       R29 R30 K41 ["useLLMCancelSession"]
      210 CALL                             R28 1 1
      211 GETIMPORT                        R29 K5 [require]
      213 GETTABLEKS                       R31 R0 K37 ["Hooks"]
      215 GETTABLEKS                       R30 R31 K42 ["useSendMessage"]
      217 CALL                             R29 1 1
      218 GETIMPORT                        R30 K5 [require]
      220 GETTABLEKS                       R32 R0 K43 ["Flags"]
      222 GETTABLEKS                       R31 R32 K44 ["getAssistantModeEnabled"]
      224 CALL                             R30 1 1
      225 GETIMPORT                        R31 K5 [require]
      227 GETTABLEKS                       R33 R0 K43 ["Flags"]
      229 GETTABLEKS                       R32 R33 K45 ["FFlagAssistantMultipleChatPersistence"]
      231 CALL                             R31 1 1
      232 GETIMPORT                        R32 K5 [require]
      234 GETTABLEKS                       R34 R0 K43 ["Flags"]
      236 GETTABLEKS                       R33 R34 K46 ["FFlagAssistantPlanMode"]
      238 CALL                             R32 1 1
      239 GETIMPORT                        R33 K5 [require]
      241 GETTABLEKS                       R35 R0 K43 ["Flags"]
      243 GETTABLEKS                       R34 R35 K47 ["FFlagAssistantQuestionAnswerTool"]
      245 CALL                             R33 1 1
      246 GETIMPORT                        R34 K5 [require]
      248 GETTABLEKS                       R36 R0 K43 ["Flags"]
      250 GETTABLEKS                       R35 R36 K48 ["FFlagEnableAssistantInputImageAttachment"]
      252 CALL                             R34 1 1
      253 GETIMPORT                        R35 K5 [require]
      255 GETTABLEKS                       R37 R0 K43 ["Flags"]
      257 GETTABLEKS                       R36 R37 K49 ["FFlagEnablePrimitiveGenTool"]
      259 CALL                             R35 1 1
      260 GETIMPORT                        R36 K5 [require]
      262 GETTABLEKS                       R38 R0 K43 ["Flags"]
      264 GETTABLEKS                       R37 R38 K50 ["FFlagProceduralModel"]
      266 CALL                             R36 1 1
      267 GETIMPORT                        R37 K5 [require]
      269 GETTABLEKS                       R39 R0 K43 ["Flags"]
      271 GETTABLEKS                       R38 R39 K51 ["FIntMCPAssistantInputAreaCharLimit"]
      273 CALL                             R37 1 1
      274 GETIMPORT                        R38 K5 [require]
      276 GETTABLEKS                       R40 R0 K43 ["Flags"]
      278 GETTABLEKS                       R39 R40 K52 ["FIntMCPAssistantMaxPromptHistory"]
      280 CALL                             R38 1 1
      281 GETTABLEKS                       R39 R11 K53 ["InputDisabledReasons"]
      283 GETTABLEKS                       R40 R7 K54 ["View"]
      285 GETTABLEKS                       R41 R14 K55 ["createNextOrder"]
      287 GETTABLEKS                       R42 R13 K56 ["createElement"]
      289 DUPCLOSURE                       R43 K57 [PROTO_4]
      290 CAPTURE                          VAL R13
      291 CAPTURE                          VAL R38
      292 CAPTURE                          VAL R3
      293 CAPTURE                          VAL R23
      294 CAPTURE                          VAL R27
      295 DUPCLOSURE                       R44 K58 [PROTO_13]
      296 CAPTURE                          VAL R7
      297 CAPTURE                          VAL R13
      298 CAPTURE                          VAL R42
      299 CAPTURE                          VAL R3
      300 CAPTURE                          VAL R5
      301 DUPCLOSURE                       R45 K59 [PROTO_15]
      302 CAPTURE                          VAL R13
      303 CAPTURE                          VAL R19
      304 DUPCLOSURE                       R46 K60 [PROTO_34]
      305 CAPTURE                          VAL R28
      306 CAPTURE                          VAL R13
      307 CAPTURE                          VAL R11
      308 CAPTURE                          VAL R16
      309 CAPTURE                          VAL R26
      310 CAPTURE                          VAL R12
      311 CAPTURE                          VAL R21
      312 CAPTURE                          VAL R32
      313 CAPTURE                          VAL R25
      314 CAPTURE                          VAL R31
      315 CAPTURE                          VAL R45
      316 CAPTURE                          VAL R34
      317 CAPTURE                          VAL R9
      318 CAPTURE                          VAL R29
      319 CAPTURE                          VAL R24
      320 CAPTURE                          VAL R20
      321 CAPTURE                          VAL R43
      322 CAPTURE                          VAL R37
      323 CAPTURE                          VAL R22
      324 CAPTURE                          VAL R6
      325 CAPTURE                          VAL R5
      326 CAPTURE                          VAL R39
      327 CAPTURE                          VAL R41
      328 CAPTURE                          VAL R42
      329 CAPTURE                          VAL R40
      330 CAPTURE                          VAL R33
      331 CAPTURE                          VAL R18
      332 CAPTURE                          VAL R17
      333 CAPTURE                          VAL R2
      334 CAPTURE                          VAL R44
      335 CAPTURE                          VAL R36
      336 CAPTURE                          VAL R35
      337 CAPTURE                          VAL R8
      338 CAPTURE                          VAL R15
      339 CAPTURE                          VAL R30
      340 CAPTURE                          VAL R1
      341 CAPTURE                          VAL R4
      342 CAPTURE                          VAL R10
      343 RETURN                           R46 1
