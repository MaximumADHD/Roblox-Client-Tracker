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
        6 JUMPIFNOTEQKNIL                  R2 ; [+5]
        8 GETUPVAL                         R3 1
        9 LOADK                            R4 K3 [""]
       10 CALL                             R3 1 0
       11 RETURN                           R0 0
       12 JUMPIFNOTLT                      R1 R2 ; [+14]
       14 GETIMPORT                        R3 K5 [utf8.offset]
       16 MOVE                             R4 R0
       17 ADDK                             R5 R1 K6 [1]
       18 LOADN                            R6 1
       19 CALL                             R3 3 1
       20 JUMPIFNOT                        R3 ; [+6]
       21 LOADN                            R6 1
       22 SUBK                             R7 R3 K6 [1]
       23 NAMECALL                         R4 R0 K7 ["sub"]
       25 CALL                             R4 3 1
       26 MOVE                             R0 R4
       27 GETUPVAL                         R3 1
       28 MOVE                             R4 R0
       29 CALL                             R3 1 0
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R3 R4 K8 ["CommandPrefix"]
       33 LOADN                            R6 1
       34 LENGTH                           R7 R3
       35 NAMECALL                         R4 R0 K7 ["sub"]
       37 CALL                             R4 3 1
       38 JUMPIFNOTEQ                      R4 R3 ; [+45]
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R6 R7 K9 ["CommandDelimiter"]
       43 NAMECALL                         R4 R0 K10 ["find"]
       45 CALL                             R4 2 1
       46 JUMPIF                           R4 ; [+37]
       47 LENGTH                           R7 R3
       48 ADDK                             R6 R7 K6 [1]
       49 NAMECALL                         R4 R0 K7 ["sub"]
       51 CALL                             R4 2 1
       52 GETUPVAL                         R6 2
       53 GETTABLEKS                       R5 R6 K11 ["getRegisteredSlashCommands"]
       55 CALL                             R5 0 1
       56 GETIMPORT                        R6 K14 [table.create]
       58 LENGTH                           R7 R5
       59 CALL                             R6 1 1
       60 MOVE                             R7 R5
       61 LOADNIL                          R8
       62 LOADNIL                          R9
       63 FORGPREP                         R7
       64 LOADN                            R14 1
       65 LENGTH                           R15 R4
       66 NAMECALL                         R12 R11 K7 ["sub"]
       68 CALL                             R12 3 1
       69 JUMPIFNOTEQ                      R12 R4 ; [+8]
       71 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       73 MOVE                             R13 R6
       74 MOVE                             R14 R11
       75 GETIMPORT                        R12 K16 [table.insert]
       77 CALL                             R12 2 0
       78 FORGLOOP                         R7 2 ; [-15]
       80 GETUPVAL                         R7 3
       81 MOVE                             R8 R6
       82 CALL                             R7 1 0
       83 RETURN                           R0 0
       84 GETUPVAL                         R4 3
       85 DUPCLOSURE                       R5 K17 [PROTO_21]
       86 CALL                             R4 1 0
       87 RETURN                           R0 0

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
       92 GETUPVAL                         R18 1
       93 GETTABLEKS                       R17 R18 K6 ["useState"]
       95 NEWTABLE                         R18 0 0
       97 CALL                             R17 1 2
       98 GETTABLEKS                       R19 R0 K12 ["OnMessageSent"]
      100 GETUPVAL                         R20 7
      101 DUPTABLE                         R21 K14 [{"setInputEnabled"}]
      102 GETUPVAL                         R22 8
      103 MOVE                             R23 R2
      104 CALL                             R22 1 1
      105 SETTABLEKS                       R22 R21 K13 ["setInputEnabled"]
      107 CALL                             R20 1 1
      108 GETUPVAL                         R22 1
      109 GETTABLEKS                       R21 R22 K15 ["useMemo"]
      111 DUPCLOSURE                       R22 K16 [PROTO_20]
      112 CAPTURE                          UPVAL U9
      113 NEWTABLE                         R23 0 1
      115 GETUPVAL                         R25 9
      116 GETTABLEKS                       R24 R25 K17 ["locale"]
      118 SETLIST                          R23 R24 1 [1]
      120 CALL                             R21 2 1
      121 GETUPVAL                         R22 10
      122 DUPTABLE                         R23 K19 [{"textBoxRef", "setInputText"}]
      123 SETTABLEKS                       R11 R23 K8 ["textBoxRef"]
      125 SETTABLEKS                       R10 R23 K18 ["setInputText"]
      127 CALL                             R22 1 2
      128 GETUPVAL                         R25 1
      129 GETTABLEKS                       R24 R25 K11 ["useCallback"]
      131 NEWCLOSURE                       R25 P4
      132 CAPTURE                          UPVAL U11
      133 CAPTURE                          VAL R10
      134 CAPTURE                          UPVAL U12
      135 CAPTURE                          VAL R18
      136 NEWTABLE                         R26 0 2
      138 MOVE                             R27 R10
      139 MOVE                             R28 R18
      140 SETLIST                          R26 R27 2 [1]
      142 CALL                             R24 2 1
      143 GETUPVAL                         R26 1
      144 GETTABLEKS                       R25 R26 K6 ["useState"]
      146 LOADNIL                          R26
      147 CALL                             R25 1 2
      148 GETUPVAL                         R28 1
      149 GETTABLEKS                       R27 R28 K10 ["useEffect"]
      151 NEWCLOSURE                       R28 P5
      152 CAPTURE                          VAL R25
      153 CAPTURE                          VAL R11
      154 NEWTABLE                         R29 0 1
      156 MOVE                             R30 R25
      157 SETLIST                          R29 R30 1 [1]
      159 CALL                             R27 2 0
      160 GETUPVAL                         R28 1
      161 GETTABLEKS                       R27 R28 K11 ["useCallback"]
      163 NEWCLOSURE                       R28 P6
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R26
      166 NEWTABLE                         R29 0 0
      168 CALL                             R27 2 1
      169 GETUPVAL                         R29 1
      170 GETTABLEKS                       R28 R29 K11 ["useCallback"]
      172 NEWCLOSURE                       R29 P7
      173 CAPTURE                          VAL R9
      174 CAPTURE                          REF R12
      175 CAPTURE                          VAL R10
      176 CAPTURE                          UPVAL U5
      177 CAPTURE                          REF R13
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R22
      180 CAPTURE                          VAL R19
      181 NEWTABLE                         R30 0 7
      183 MOVE                             R31 R9
      184 MOVE                             R32 R10
      185 MOVE                             R33 R20
      186 MOVE                             R34 R22
      187 MOVE                             R35 R19
      188 MOVE                             R36 R12
      189 MOVE                             R37 R13
      190 SETLIST                          R30 R31 7 [1]
      192 CALL                             R28 2 1
      193 GETUPVAL                         R30 1
      194 GETTABLEKS                       R29 R30 K11 ["useCallback"]
      196 NEWCLOSURE                       R30 P8
      197 CAPTURE                          VAL R8
      198 CAPTURE                          UPVAL U13
      199 CAPTURE                          UPVAL U14
      200 CAPTURE                          VAL R7
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R5
      203 NEWTABLE                         R31 0 4
      205 MOVE                             R32 R1
      206 MOVE                             R33 R5
      207 MOVE                             R34 R7
      208 MOVE                             R35 R8
      209 SETLIST                          R31 R32 4 [1]
      211 CALL                             R29 2 1
      212 MOVE                             R30 R4
      213 JUMPIFNOT                        R30 ; [+9]
      214 GETTABLEKS                       R31 R4 K3 ["reasonDisabled"]
      216 GETUPVAL                         R33 15
      217 GETTABLEKS                       R32 R33 K20 ["Generation"]
      219 JUMPIFEQ                         R31 R32 ; [+2]
      221 LOADB                            R30 0 +1
      222 LOADB                            R30 1
      223 LENGTH                           R32 R9
      224 JUMPIFNOTEQKN                    R32 K21 [0] ; [+5]
      226 LOADB                            R31 1
      227 LENGTH                           R32 R12
      228 JUMPIFEQKN                       R32 K21 [0] ; [+2]
      230 NOT                              R31 R3
      231 GETUPVAL                         R32 16
      232 CALL                             R32 0 1
      233 GETUPVAL                         R34 1
      234 GETTABLEKS                       R33 R34 K22 ["useBinding"]
      236 LOADN                            R34 0
      237 CALL                             R33 1 2
      238 GETUPVAL                         R35 17
      239 GETUPVAL                         R36 18
      240 DUPTABLE                         R37 K26 [{"tag", "LayoutOrder", "testId"}]
      241 LOADK                            R38 K27 ["col size-full-0 auto-y margin-x-small"]
      242 SETTABLEKS                       R38 R37 K23 ["tag"]
      244 GETTABLEKS                       R38 R0 K24 ["LayoutOrder"]
      246 SETTABLEKS                       R38 R37 K24 ["LayoutOrder"]
      248 GETUPVAL                         R40 19
      249 GETTABLEKS                       R39 R40 K28 ["InputArea"]
      251 GETTABLEKS                       R38 R39 K29 ["Container"]
      253 SETTABLEKS                       R38 R37 K25 ["testId"]
      255 DUPTABLE                         R38 K32 [{"Menu", "Footer"}]
      256 GETUPVAL                         R39 17
      257 GETUPVAL                         R40 20
      258 DUPTABLE                         R41 K37 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus"}]
      259 LENGTH                           R43 R17
      260 LOADN                            R44 0
      261 JUMPIFLT                         R44 R43 ; [+2]
      263 LOADB                            R42 0 +1
      264 LOADB                            R42 1
      265 SETTABLEKS                       R42 R41 K33 ["isOpen"]
      267 SETTABLEKS                       R17 R41 K34 ["items"]
      269 SETTABLEKS                       R33 R41 K35 ["width"]
      271 SETTABLEKS                       R11 R41 K8 ["textBoxRef"]
      273 SETTABLEKS                       R27 R41 K36 ["setTextAndFocus"]
      275 DUPTABLE                         R42 K39 [{"MessageField"}]
      276 GETUPVAL                         R43 17
      277 GETUPVAL                         R44 18
      278 DUPTABLE                         R45 K41 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      279 LOADK                            R46 K42 ["col size-full-0 auto-y padding-y-small padding-right-small padding-left-large gap-small stroke-emphasis radius-large"]
      280 SETTABLEKS                       R46 R45 K23 ["tag"]
      282 NEWCLOSURE                       R46 P9
      283 CAPTURE                          VAL R34
      284 SETTABLEKS                       R46 R45 K40 ["onAbsoluteSizeChanged"]
      286 MOVE                             R46 R32
      287 CALL                             R46 0 1
      288 SETTABLEKS                       R46 R45 K24 ["LayoutOrder"]
      290 DUPTABLE                         R46 K46 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      291 GETUPVAL                         R47 17
      292 LOADK                            R48 K43 ["UIFlexItem"]
      293 DUPTABLE                         R49 K49 [{"FlexMode", "ItemLineAlignment"}]
      294 GETIMPORT                        R50 K53 [Enum.UIFlexMode.Fill]
      296 SETTABLEKS                       R50 R49 K47 ["FlexMode"]
      298 GETIMPORT                        R50 K55 [Enum.ItemLineAlignment.Center]
      300 SETTABLEKS                       R50 R49 K48 ["ItemLineAlignment"]
      302 CALL                             R47 2 1
      303 SETTABLEKS                       R47 R46 K43 ["UIFlexItem"]
      305 GETUPVAL                         R47 5
      306 CALL                             R47 0 1
      307 JUMPIFNOT                        R47 ; [+27]
      308 LOADB                            R47 0
      309 LENGTH                           R48 R12
      310 LOADN                            R49 0
      311 JUMPIFNOTLT                      R49 R48 ; [+23]
      313 GETUPVAL                         R47 17
      314 GETUPVAL                         R48 18
      315 DUPTABLE                         R49 K56 [{"tag", "LayoutOrder"}]
      316 LOADK                            R50 K57 ["row size-full-0 auto-y padding-bottom-small"]
      317 SETTABLEKS                       R50 R49 K23 ["tag"]
      319 MOVE                             R50 R32
      320 CALL                             R50 0 1
      321 SETTABLEKS                       R50 R49 K24 ["LayoutOrder"]
      323 DUPTABLE                         R50 K59 [{"List"}]
      324 GETUPVAL                         R51 17
      325 GETUPVAL                         R52 21
      326 DUPTABLE                         R53 K62 [{"attachedImages", "onRemoveImage"}]
      327 SETTABLEKS                       R12 R53 K60 ["attachedImages"]
      329 SETTABLEKS                       R15 R53 K61 ["onRemoveImage"]
      331 CALL                             R51 2 1
      332 SETTABLEKS                       R51 R50 K58 ["List"]
      334 CALL                             R47 3 1
      335 SETTABLEKS                       R47 R46 K44 ["AttachedImagesPreview"]
      337 GETUPVAL                         R47 17
      338 GETUPVAL                         R48 18
      339 DUPTABLE                         R49 K56 [{"tag", "LayoutOrder"}]
      340 LOADK                            R50 K63 ["row size-full-0 auto-y gap-small flex-between flex-y-fill align-y-center"]
      341 SETTABLEKS                       R50 R49 K23 ["tag"]
      343 MOVE                             R50 R32
      344 CALL                             R50 0 1
      345 SETTABLEKS                       R50 R49 K24 ["LayoutOrder"]
      347 DUPTABLE                         R50 K66 [{"TextInput", "RightColumn"}]
      348 GETUPVAL                         R51 17
      349 GETUPVAL                         R52 22
      350 DUPTABLE                         R53 K72 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "textBoxRef"}]
      351 SETTABLEKS                       R9 R53 K67 ["text"]
      353 JUMPIFNOT                        R30 ; [+3]
      354 GETTABLEKS                       R54 R21 K73 ["Responding"]
      356 JUMP                             ; [+6]
      357 JUMPIFEQKNIL                     R23 ; [+3]
      359 MOVE                             R54 R23
      360 JUMP                             ; [+2]
      361 GETTABLEKS                       R54 R21 K74 ["AskAssistant"]
      363 SETTABLEKS                       R54 R53 K68 ["placeholder"]
      365 NOT                              R54 R3
      366 SETTABLEKS                       R54 R53 K69 ["isDisabled"]
      368 MOVE                             R54 R32
      369 CALL                             R54 0 1
      370 SETTABLEKS                       R54 R53 K24 ["LayoutOrder"]
      372 SETTABLEKS                       R24 R53 K70 ["onChanged"]
      374 SETTABLEKS                       R28 R53 K71 ["onReturnPressed"]
      376 SETTABLEKS                       R11 R53 K8 ["textBoxRef"]
      378 CALL                             R51 2 1
      379 SETTABLEKS                       R51 R50 K64 ["TextInput"]
      381 GETUPVAL                         R51 17
      382 GETUPVAL                         R52 18
      383 DUPTABLE                         R53 K56 [{"tag", "LayoutOrder"}]
      384 LOADK                            R54 K75 ["row auto-xy gap-small align-y-center"]
      385 SETTABLEKS                       R54 R53 K23 ["tag"]
      387 MOVE                             R54 R32
      388 CALL                             R54 0 1
      389 SETTABLEKS                       R54 R53 K24 ["LayoutOrder"]
      391 DUPTABLE                         R54 K80 [{"AttachImageButton", "ServerManagementButton", "SendButton", "StopButton"}]
      392 GETUPVAL                         R55 5
      393 CALL                             R55 0 1
      394 JUMPIFNOT                        R55 ; [+29]
      395 GETUPVAL                         R55 17
      396 GETUPVAL                         R56 23
      397 DUPTABLE                         R57 K84 [{"icon", "tag", "iconTag", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      398 LOADK                            R58 K85 ["icons/common/image-on"]
      399 SETTABLEKS                       R58 R57 K81 ["icon"]
      401 LOADK                            R58 K86 ["size-600-600 radius-circle bg-surface-100 align-x-center align-y-center"]
      402 SETTABLEKS                       R58 R57 K23 ["tag"]
      404 LOADK                            R58 K87 ["size-500-500 content-default"]
      405 SETTABLEKS                       R58 R57 K82 ["iconTag"]
      407 NOT                              R58 R3
      408 SETTABLEKS                       R58 R57 K69 ["isDisabled"]
      410 SETTABLEKS                       R14 R57 K83 ["onActivated"]
      412 MOVE                             R58 R32
      413 CALL                             R58 0 1
      414 SETTABLEKS                       R58 R57 K24 ["LayoutOrder"]
      416 GETUPVAL                         R60 19
      417 GETTABLEKS                       R59 R60 K28 ["InputArea"]
      419 GETTABLEKS                       R58 R59 K76 ["AttachImageButton"]
      421 SETTABLEKS                       R58 R57 K25 ["testId"]
      423 CALL                             R55 2 1
      424 SETTABLEKS                       R55 R54 K76 ["AttachImageButton"]
      426 GETUPVAL                         R55 17
      427 GETUPVAL                         R56 24
      428 DUPTABLE                         R57 K88 [{"LayoutOrder"}]
      429 MOVE                             R58 R32
      430 CALL                             R58 0 1
      431 SETTABLEKS                       R58 R57 K24 ["LayoutOrder"]
      433 CALL                             R55 2 1
      434 SETTABLEKS                       R55 R54 K77 ["ServerManagementButton"]
      436 NOT                              R55 R30
      437 JUMPIFNOT                        R55 ; [+30]
      438 GETUPVAL                         R55 17
      439 GETUPVAL                         R56 23
      440 DUPTABLE                         R57 K91 [{"icon", "tag", "iconTag", "iconRotation", "isDisabled", "onActivated", "LayoutOrder", "skipBackgroundColoringDisabled"}]
      441 LOADK                            R58 K92 ["icons/navigation/seeAllArrow_small"]
      442 SETTABLEKS                       R58 R57 K81 ["icon"]
      444 JUMPIFNOT                        R31 ; [+2]
      445 LOADK                            R58 K93 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
      446 JUMP                             ; [+1]
      447 LOADK                            R58 K94 ["size-600-600 radius-circle bg-action-emphasis align-x-center align-y-center"]
      448 SETTABLEKS                       R58 R57 K23 ["tag"]
      450 LOADK                            R58 K95 ["size-300-300 content-emphasis"]
      451 SETTABLEKS                       R58 R57 K82 ["iconTag"]
      453 LOADN                            R58 166
      454 SETTABLEKS                       R58 R57 K89 ["iconRotation"]
      456 SETTABLEKS                       R31 R57 K69 ["isDisabled"]
      458 SETTABLEKS                       R28 R57 K83 ["onActivated"]
      460 MOVE                             R58 R32
      461 CALL                             R58 0 1
      462 SETTABLEKS                       R58 R57 K24 ["LayoutOrder"]
      464 LOADB                            R58 1
      465 SETTABLEKS                       R58 R57 K90 ["skipBackgroundColoringDisabled"]
      467 CALL                             R55 2 1
      468 SETTABLEKS                       R55 R54 K78 ["SendButton"]
      470 MOVE                             R55 R30
      471 JUMPIFNOT                        R55 ; [+29]
      472 GETUPVAL                         R55 17
      473 GETUPVAL                         R56 23
      474 DUPTABLE                         R57 K96 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId", "skipBackgroundColoringDisabled"}]
      475 LOADK                            R58 K97 ["icons/controls/mediaStop_small"]
      476 SETTABLEKS                       R58 R57 K81 ["icon"]
      478 LOADK                            R58 K93 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
      479 SETTABLEKS                       R58 R57 K23 ["tag"]
      481 LOADK                            R58 K95 ["size-300-300 content-emphasis"]
      482 SETTABLEKS                       R58 R57 K82 ["iconTag"]
      484 SETTABLEKS                       R29 R57 K83 ["onActivated"]
      486 MOVE                             R58 R32
      487 CALL                             R58 0 1
      488 SETTABLEKS                       R58 R57 K24 ["LayoutOrder"]
      490 GETUPVAL                         R60 19
      491 GETTABLEKS                       R59 R60 K28 ["InputArea"]
      493 GETTABLEKS                       R58 R59 K79 ["StopButton"]
      495 SETTABLEKS                       R58 R57 K25 ["testId"]
      497 LOADB                            R58 1
      498 SETTABLEKS                       R58 R57 K90 ["skipBackgroundColoringDisabled"]
      500 CALL                             R55 2 1
      501 SETTABLEKS                       R55 R54 K79 ["StopButton"]
      503 CALL                             R51 3 1
      504 SETTABLEKS                       R51 R50 K65 ["RightColumn"]
      506 CALL                             R47 3 1
      507 SETTABLEKS                       R47 R46 K45 ["InputRow"]
      509 CALL                             R43 3 1
      510 SETTABLEKS                       R43 R42 K38 ["MessageField"]
      512 CALL                             R39 3 1
      513 SETTABLEKS                       R39 R38 K30 ["Menu"]
      515 GETUPVAL                         R39 17
      516 GETUPVAL                         R40 25
      517 DUPTABLE                         R41 K88 [{"LayoutOrder"}]
      518 MOVE                             R42 R32
      519 CALL                             R42 0 1
      520 SETTABLEKS                       R42 R41 K24 ["LayoutOrder"]
      522 CALL                             R39 2 1
      523 SETTABLEKS                       R39 R38 K31 ["Footer"]
      525 CALL                             R35 3 -1
      526 CLOSEUPVALS                      R12
      527 RETURN                           R35 -1

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
      192 GETTABLEKS                       R27 R28 K40 ["FIntMCPAssistantInputAreaCharLimit"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K5 [require]
      197 GETTABLEKS                       R29 R0 K37 ["Flags"]
      199 GETTABLEKS                       R28 R29 K41 ["FIntMCPAssistantMaxPromptHistory"]
      201 CALL                             R27 1 1
      202 GETTABLEKS                       R28 R8 K42 ["InputDisabledReasons"]
      204 GETTABLEKS                       R29 R5 K43 ["View"]
      206 GETTABLEKS                       R30 R10 K44 ["createNextOrder"]
      208 GETTABLEKS                       R31 R9 K45 ["createElement"]
      210 DUPCLOSURE                       R32 K46 [PROTO_4]
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R27
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R18
      215 CAPTURE                          VAL R21
      216 DUPCLOSURE                       R33 K47 [PROTO_13]
      217 CAPTURE                          VAL R5
      218 CAPTURE                          VAL R9
      219 CAPTURE                          VAL R31
      220 CAPTURE                          VAL R2
      221 CAPTURE                          VAL R4
      222 DUPCLOSURE                       R34 K48 [PROTO_28]
      223 CAPTURE                          VAL R22
      224 CAPTURE                          VAL R9
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R12
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R25
      229 CAPTURE                          VAL R6
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R19
      232 CAPTURE                          VAL R15
      233 CAPTURE                          VAL R32
      234 CAPTURE                          VAL R26
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R4
      237 CAPTURE                          VAL R24
      238 CAPTURE                          VAL R28
      239 CAPTURE                          VAL R30
      240 CAPTURE                          VAL R31
      241 CAPTURE                          VAL R29
      242 CAPTURE                          VAL R14
      243 CAPTURE                          VAL R13
      244 CAPTURE                          VAL R1
      245 CAPTURE                          VAL R33
      246 CAPTURE                          VAL R3
      247 CAPTURE                          VAL R11
      248 CAPTURE                          VAL R7
      249 RETURN                           R34 1
