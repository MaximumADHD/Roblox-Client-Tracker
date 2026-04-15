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
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["removeImage"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 1
        4 NEWTABLE                         R1 0 0
        6 RETURN                           R1 1

PROTO_24:
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
       38 JUMPIFNOTEQ                      R4 R3 ; [+46]
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R6 R7 K9 ["CommandDelimiter"]
       43 NAMECALL                         R4 R0 K10 ["find"]
       45 CALL                             R4 2 1
       46 JUMPIF                           R4 ; [+38]
       47 LENGTH                           R7 R3
       48 ADDK                             R6 R7 K6 [1]
       49 NAMECALL                         R4 R0 K7 ["sub"]
       51 CALL                             R4 2 1
       52 GETUPVAL                         R6 2
       53 GETTABLEKS                       R5 R6 K11 ["getRegisteredSlashCommands"]
       55 GETUPVAL                         R6 3
       56 CALL                             R5 1 1
       57 GETIMPORT                        R6 K14 [table.create]
       59 LENGTH                           R7 R5
       60 CALL                             R6 1 1
       61 MOVE                             R7 R5
       62 LOADNIL                          R8
       63 LOADNIL                          R9
       64 FORGPREP                         R7
       65 LOADN                            R14 1
       66 LENGTH                           R15 R4
       67 NAMECALL                         R12 R11 K7 ["sub"]
       69 CALL                             R12 3 1
       70 JUMPIFNOTEQ                      R12 R4 ; [+8]
       72 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       74 MOVE                             R13 R6
       75 MOVE                             R14 R11
       76 GETIMPORT                        R12 K16 [table.insert]
       78 CALL                             R12 2 0
       79 FORGLOOP                         R7 2 ; [-15]
       81 GETUPVAL                         R7 4
       82 MOVE                             R8 R6
       83 CALL                             R7 1 0
       84 RETURN                           R0 0
       85 GETUPVAL                         R4 4
       86 DUPCLOSURE                       R5 K17 [PROTO_23]
       87 CALL                             R4 1 0
       88 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FocusInput"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_33:
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
       26 LOADNIL                          R9
       27 GETUPVAL                         R10 5
       28 CALL                             R10 0 1
       29 JUMPIFNOT                        R10 ; [+3]
       30 GETUPVAL                         R10 6
       31 CALL                             R10 0 1
       32 MOVE                             R9 R10
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R10 R11 K6 ["useState"]
       36 LOADK                            R11 K7 [""]
       37 CALL                             R10 1 2
       38 GETTABLEKS                       R13 R0 K8 ["textBoxRef"]
       40 JUMPIFNOT                        R13 ; [+3]
       41 GETTABLEKS                       R12 R0 K8 ["textBoxRef"]
       43 JUMP                             ; [+5]
       44 GETUPVAL                         R13 1
       45 GETTABLEKS                       R12 R13 K9 ["useRef"]
       47 LOADNIL                          R13
       48 CALL                             R12 1 1
       49 GETUPVAL                         R13 7
       50 CALL                             R13 0 1
       51 JUMPIFNOT                        R13 ; [+7]
       52 GETUPVAL                         R13 8
       53 DUPTABLE                         R14 K11 [{"inputText", "textBoxRef"}]
       54 SETTABLEKS                       R10 R14 K10 ["inputText"]
       56 SETTABLEKS                       R12 R14 K8 ["textBoxRef"]
       58 CALL                             R13 1 0
       59 NEWTABLE                         R13 0 0
       61 LOADNIL                          R14
       62 LOADNIL                          R15
       63 LOADNIL                          R16
       64 GETUPVAL                         R18 1
       65 GETTABLEKS                       R17 R18 K9 ["useRef"]
       67 LOADB                            R18 1
       68 CALL                             R17 1 1
       69 GETUPVAL                         R19 1
       70 GETTABLEKS                       R18 R19 K12 ["useEffect"]
       72 NEWCLOSURE                       R19 P0
       73 CAPTURE                          VAL R17
       74 NEWTABLE                         R20 0 0
       76 CALL                             R18 2 0
       77 GETUPVAL                         R18 9
       78 CALL                             R18 0 1
       79 JUMPIFNOT                        R18 ; [+29]
       80 GETUPVAL                         R19 1
       81 GETTABLEKS                       R18 R19 K6 ["useState"]
       83 NEWTABLE                         R19 0 0
       85 CALL                             R18 1 2
       86 MOVE                             R13 R18
       87 MOVE                             R14 R19
       88 GETUPVAL                         R19 1
       89 GETTABLEKS                       R18 R19 K13 ["useCallback"]
       91 NEWCLOSURE                       R19 P1
       92 CAPTURE                          UPVAL U10
       93 CAPTURE                          VAL R17
       94 CAPTURE                          REF R14
       95 NEWTABLE                         R20 0 0
       97 CALL                             R18 2 1
       98 MOVE                             R15 R18
       99 GETUPVAL                         R19 1
      100 GETTABLEKS                       R18 R19 K13 ["useCallback"]
      102 NEWCLOSURE                       R19 P2
      103 CAPTURE                          REF R14
      104 CAPTURE                          UPVAL U10
      105 NEWTABLE                         R20 0 0
      107 CALL                             R18 2 1
      108 MOVE                             R16 R18
      109 GETUPVAL                         R19 1
      110 GETTABLEKS                       R18 R19 K6 ["useState"]
      112 NEWTABLE                         R19 0 0
      114 CALL                             R18 1 2
      115 GETTABLEKS                       R20 R0 K14 ["OnMessageSent"]
      117 GETUPVAL                         R21 11
      118 DUPTABLE                         R22 K16 [{"setInputEnabled"}]
      119 GETUPVAL                         R23 12
      120 MOVE                             R24 R2
      121 CALL                             R23 1 1
      122 SETTABLEKS                       R23 R22 K15 ["setInputEnabled"]
      124 CALL                             R21 1 1
      125 GETUPVAL                         R23 1
      126 GETTABLEKS                       R22 R23 K17 ["useMemo"]
      128 DUPCLOSURE                       R23 K18 [PROTO_22]
      129 CAPTURE                          UPVAL U13
      130 NEWTABLE                         R24 0 1
      132 GETUPVAL                         R26 13
      133 GETTABLEKS                       R25 R26 K19 ["locale"]
      135 SETLIST                          R24 R25 1 [1]
      137 CALL                             R22 2 1
      138 GETUPVAL                         R23 14
      139 DUPTABLE                         R24 K21 [{"textBoxRef", "setInputText"}]
      140 SETTABLEKS                       R12 R24 K8 ["textBoxRef"]
      142 SETTABLEKS                       R11 R24 K20 ["setInputText"]
      144 CALL                             R23 1 2
      145 GETUPVAL                         R26 1
      146 GETTABLEKS                       R25 R26 K13 ["useCallback"]
      148 NEWCLOSURE                       R26 P4
      149 CAPTURE                          UPVAL U15
      150 CAPTURE                          VAL R11
      151 CAPTURE                          UPVAL U16
      152 CAPTURE                          REF R9
      153 CAPTURE                          VAL R19
      154 NEWTABLE                         R27 0 3
      156 MOVE                             R28 R11
      157 MOVE                             R29 R19
      158 MOVE                             R30 R9
      159 SETLIST                          R27 R28 3 [1]
      161 CALL                             R25 2 1
      162 GETUPVAL                         R27 1
      163 GETTABLEKS                       R26 R27 K6 ["useState"]
      165 LOADNIL                          R27
      166 CALL                             R26 1 2
      167 GETUPVAL                         R29 1
      168 GETTABLEKS                       R28 R29 K12 ["useEffect"]
      170 NEWCLOSURE                       R29 P5
      171 CAPTURE                          VAL R26
      172 CAPTURE                          VAL R12
      173 NEWTABLE                         R30 0 1
      175 MOVE                             R31 R26
      176 SETLIST                          R30 R31 1 [1]
      178 CALL                             R28 2 0
      179 GETUPVAL                         R29 1
      180 GETTABLEKS                       R28 R29 K13 ["useCallback"]
      182 NEWCLOSURE                       R29 P6
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R27
      185 NEWTABLE                         R30 0 0
      187 CALL                             R28 2 1
      188 GETUPVAL                         R29 7
      189 CALL                             R29 0 1
      190 JUMPIF                           R29 ; [+3]
      191 GETUPVAL                         R29 5
      192 CALL                             R29 0 1
      193 JUMPIFNOT                        R29 ; [+9]
      194 GETUPVAL                         R30 1
      195 GETTABLEKS                       R29 R30 K12 ["useEffect"]
      197 NEWCLOSURE                       R30 P7
      198 CAPTURE                          UPVAL U17
      199 CAPTURE                          VAL R27
      200 NEWTABLE                         R31 0 0
      202 CALL                             R29 2 0
      203 GETUPVAL                         R30 1
      204 GETTABLEKS                       R29 R30 K13 ["useCallback"]
      206 NEWCLOSURE                       R30 P8
      207 CAPTURE                          VAL R10
      208 CAPTURE                          REF R13
      209 CAPTURE                          VAL R11
      210 CAPTURE                          UPVAL U9
      211 CAPTURE                          REF R14
      212 CAPTURE                          VAL R21
      213 CAPTURE                          VAL R23
      214 CAPTURE                          VAL R20
      215 NEWTABLE                         R31 0 7
      217 MOVE                             R32 R10
      218 MOVE                             R33 R11
      219 MOVE                             R34 R21
      220 MOVE                             R35 R23
      221 MOVE                             R36 R20
      222 MOVE                             R37 R13
      223 MOVE                             R38 R14
      224 SETLIST                          R31 R32 7 [1]
      226 CALL                             R29 2 1
      227 GETUPVAL                         R31 1
      228 GETTABLEKS                       R30 R31 K13 ["useCallback"]
      230 NEWCLOSURE                       R31 P9
      231 CAPTURE                          VAL R8
      232 CAPTURE                          UPVAL U18
      233 CAPTURE                          UPVAL U7
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R1
      236 CAPTURE                          VAL R5
      237 NEWTABLE                         R32 0 4
      239 MOVE                             R33 R1
      240 MOVE                             R34 R5
      241 MOVE                             R35 R7
      242 MOVE                             R36 R8
      243 SETLIST                          R32 R33 4 [1]
      245 CALL                             R30 2 1
      246 MOVE                             R31 R4
      247 JUMPIFNOT                        R31 ; [+9]
      248 GETTABLEKS                       R32 R4 K3 ["reasonDisabled"]
      250 GETUPVAL                         R34 19
      251 GETTABLEKS                       R33 R34 K22 ["Generation"]
      253 JUMPIFEQ                         R32 R33 ; [+2]
      255 LOADB                            R31 0 +1
      256 LOADB                            R31 1
      257 LENGTH                           R33 R10
      258 JUMPIFNOTEQKN                    R33 K23 [0] ; [+5]
      260 LOADB                            R32 1
      261 LENGTH                           R33 R13
      262 JUMPIFEQKN                       R33 K23 [0] ; [+2]
      264 NOT                              R32 R3
      265 GETUPVAL                         R33 20
      266 CALL                             R33 0 1
      267 GETUPVAL                         R35 1
      268 GETTABLEKS                       R34 R35 K24 ["useBinding"]
      270 LOADN                            R35 0
      271 CALL                             R34 1 2
      272 GETUPVAL                         R36 21
      273 GETUPVAL                         R37 22
      274 DUPTABLE                         R38 K28 [{"tag", "LayoutOrder", "testId"}]
      275 NEWTABLE                         R39 2 0
      277 LOADB                            R40 1
      278 SETTABLEKS                       R40 R39 K29 ["col size-full-0 auto-y"]
      280 GETUPVAL                         R41 23
      281 CALL                             R41 0 1
      282 NOT                              R40 R41
      283 SETTABLEKS                       R40 R39 K30 ["margin-x-small"]
      285 SETTABLEKS                       R39 R38 K25 ["tag"]
      287 GETTABLEKS                       R39 R0 K26 ["LayoutOrder"]
      289 SETTABLEKS                       R39 R38 K26 ["LayoutOrder"]
      291 GETUPVAL                         R41 24
      292 GETTABLEKS                       R40 R41 K31 ["InputArea"]
      294 GETTABLEKS                       R39 R40 K32 ["Container"]
      296 SETTABLEKS                       R39 R38 K27 ["testId"]
      298 DUPTABLE                         R39 K35 [{"Menu", "Footer"}]
      299 GETUPVAL                         R40 21
      300 GETUPVAL                         R41 25
      301 DUPTABLE                         R42 K40 [{"isOpen", "items", "width", "textBoxRef", "setTextAndFocus"}]
      302 LENGTH                           R44 R18
      303 LOADN                            R45 0
      304 JUMPIFLT                         R45 R44 ; [+2]
      306 LOADB                            R43 0 +1
      307 LOADB                            R43 1
      308 SETTABLEKS                       R43 R42 K36 ["isOpen"]
      310 SETTABLEKS                       R18 R42 K37 ["items"]
      312 SETTABLEKS                       R34 R42 K38 ["width"]
      314 SETTABLEKS                       R12 R42 K8 ["textBoxRef"]
      316 SETTABLEKS                       R28 R42 K39 ["setTextAndFocus"]
      318 DUPTABLE                         R43 K42 [{"MessageField"}]
      319 GETUPVAL                         R44 21
      320 GETUPVAL                         R45 22
      321 DUPTABLE                         R46 K44 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder"}]
      322 NEWTABLE                         R47 4 0
      324 LOADB                            R48 1
      325 SETTABLEKS                       R48 R47 K45 ["col size-full-0 auto-y gap-small stroke-emphasis radius-large"]
      327 GETUPVAL                         R49 9
      328 CALL                             R49 0 1
      329 NOT                              R48 R49
      330 SETTABLEKS                       R48 R47 K46 ["padding-y-small padding-right-small padding-left-large"]
      332 GETUPVAL                         R48 9
      333 CALL                             R48 0 1
      334 SETTABLEKS                       R48 R47 K47 ["padding-medium"]
      336 SETTABLEKS                       R47 R46 K25 ["tag"]
      338 NEWCLOSURE                       R47 P10
      339 CAPTURE                          VAL R35
      340 SETTABLEKS                       R47 R46 K43 ["onAbsoluteSizeChanged"]
      342 MOVE                             R47 R33
      343 CALL                             R47 0 1
      344 SETTABLEKS                       R47 R46 K26 ["LayoutOrder"]
      346 DUPTABLE                         R47 K51 [{"UIFlexItem", "AttachedImagesPreview", "InputRow"}]
      347 GETUPVAL                         R48 21
      348 LOADK                            R49 K48 ["UIFlexItem"]
      349 DUPTABLE                         R50 K54 [{"FlexMode", "ItemLineAlignment"}]
      350 GETIMPORT                        R51 K58 [Enum.UIFlexMode.Fill]
      352 SETTABLEKS                       R51 R50 K52 ["FlexMode"]
      354 GETIMPORT                        R51 K60 [Enum.ItemLineAlignment.Center]
      356 SETTABLEKS                       R51 R50 K53 ["ItemLineAlignment"]
      358 CALL                             R48 2 1
      359 SETTABLEKS                       R48 R47 K48 ["UIFlexItem"]
      361 GETUPVAL                         R48 9
      362 CALL                             R48 0 1
      363 JUMPIFNOT                        R48 ; [+27]
      364 LOADB                            R48 0
      365 LENGTH                           R49 R13
      366 LOADN                            R50 0
      367 JUMPIFNOTLT                      R50 R49 ; [+23]
      369 GETUPVAL                         R48 21
      370 GETUPVAL                         R49 22
      371 DUPTABLE                         R50 K61 [{"tag", "LayoutOrder"}]
      372 LOADK                            R51 K62 ["row size-full-0 auto-y"]
      373 SETTABLEKS                       R51 R50 K25 ["tag"]
      375 MOVE                             R51 R33
      376 CALL                             R51 0 1
      377 SETTABLEKS                       R51 R50 K26 ["LayoutOrder"]
      379 DUPTABLE                         R51 K64 [{"List"}]
      380 GETUPVAL                         R52 21
      381 GETUPVAL                         R53 26
      382 DUPTABLE                         R54 K67 [{"attachedImages", "onRemoveImage"}]
      383 SETTABLEKS                       R13 R54 K65 ["attachedImages"]
      385 SETTABLEKS                       R16 R54 K66 ["onRemoveImage"]
      387 CALL                             R52 2 1
      388 SETTABLEKS                       R52 R51 K63 ["List"]
      390 CALL                             R48 3 1
      391 SETTABLEKS                       R48 R47 K49 ["AttachedImagesPreview"]
      393 GETUPVAL                         R48 21
      394 GETUPVAL                         R49 22
      395 DUPTABLE                         R50 K61 [{"tag", "LayoutOrder"}]
      396 NEWTABLE                         R51 4 0
      398 GETUPVAL                         R53 9
      399 CALL                             R53 0 1
      400 NOT                              R52 R53
      401 SETTABLEKS                       R52 R51 K68 ["row gap-small"]
      403 GETUPVAL                         R52 9
      404 CALL                             R52 0 1
      405 SETTABLEKS                       R52 R51 K69 ["col gap-medium"]
      407 LOADB                            R52 1
      408 SETTABLEKS                       R52 R51 K70 ["size-full-0 auto-y flex-between flex-y-fill align-y-center"]
      410 SETTABLEKS                       R51 R50 K25 ["tag"]
      412 MOVE                             R51 R33
      413 CALL                             R51 0 1
      414 SETTABLEKS                       R51 R50 K26 ["LayoutOrder"]
      416 DUPTABLE                         R51 K73 [{"TextInput", "ActionButtons"}]
      417 GETUPVAL                         R52 21
      418 GETUPVAL                         R53 27
      419 DUPTABLE                         R54 K79 [{"text", "placeholder", "isDisabled", "LayoutOrder", "onChanged", "onReturnPressed", "textBoxRef"}]
      420 SETTABLEKS                       R10 R54 K74 ["text"]
      422 JUMPIFNOT                        R31 ; [+3]
      423 GETTABLEKS                       R55 R22 K80 ["Responding"]
      425 JUMP                             ; [+6]
      426 JUMPIFEQKNIL                     R24 ; [+3]
      428 MOVE                             R55 R24
      429 JUMP                             ; [+2]
      430 GETTABLEKS                       R55 R22 K81 ["AskAssistant"]
      432 SETTABLEKS                       R55 R54 K75 ["placeholder"]
      434 NOT                              R55 R3
      435 SETTABLEKS                       R55 R54 K76 ["isDisabled"]
      437 MOVE                             R55 R33
      438 CALL                             R55 0 1
      439 SETTABLEKS                       R55 R54 K26 ["LayoutOrder"]
      441 SETTABLEKS                       R25 R54 K77 ["onChanged"]
      443 SETTABLEKS                       R29 R54 K78 ["onReturnPressed"]
      445 SETTABLEKS                       R12 R54 K8 ["textBoxRef"]
      447 CALL                             R52 2 1
      448 SETTABLEKS                       R52 R51 K71 ["TextInput"]
      450 GETUPVAL                         R52 21
      451 GETUPVAL                         R53 22
      452 DUPTABLE                         R54 K61 [{"tag", "LayoutOrder"}]
      453 NEWTABLE                         R55 4 0
      455 LOADB                            R56 1
      456 SETTABLEKS                       R56 R55 K82 ["row align-y-center"]
      458 GETUPVAL                         R57 9
      459 CALL                             R57 0 1
      460 NOT                              R56 R57
      461 SETTABLEKS                       R56 R55 K83 ["auto-xy gap-small"]
      463 GETUPVAL                         R56 9
      464 CALL                             R56 0 1
      465 SETTABLEKS                       R56 R55 K84 ["size-full-0 auto-y gap-xsmall"]
      467 SETTABLEKS                       R55 R54 K25 ["tag"]
      469 MOVE                             R55 R33
      470 CALL                             R55 0 1
      471 SETTABLEKS                       R55 R54 K26 ["LayoutOrder"]
      473 DUPTABLE                         R55 K91 [{"AttachImageButton", "ServerManagementButton", "Spacer", "SelectAssistantMode", "SendButton", "StopButton"}]
      474 GETUPVAL                         R57 9
      475 CALL                             R57 0 1
      476 JUMPIFNOT                        R57 ; [+20]
      477 GETUPVAL                         R57 28
      478 CALL                             R57 0 1
      479 JUMPIFNOT                        R57 ; [+17]
      480 GETUPVAL                         R57 29
      481 CALL                             R57 0 1
      482 JUMPIFNOT                        R57 ; [+14]
      483 GETUPVAL                         R56 21
      484 GETUPVAL                         R57 30
      485 DUPTABLE                         R58 K93 [{"isDisabled", "onActivated", "LayoutOrder"}]
      486 NOT                              R59 R3
      487 SETTABLEKS                       R59 R58 K76 ["isDisabled"]
      489 SETTABLEKS                       R15 R58 K92 ["onActivated"]
      491 MOVE                             R59 R33
      492 CALL                             R59 0 1
      493 SETTABLEKS                       R59 R58 K26 ["LayoutOrder"]
      495 CALL                             R56 2 1
      496 JUMP                             ; [+1]
      497 LOADNIL                          R56
      498 SETTABLEKS                       R56 R55 K85 ["AttachImageButton"]
      500 GETUPVAL                         R56 21
      501 GETUPVAL                         R57 31
      502 DUPTABLE                         R58 K94 [{"LayoutOrder"}]
      503 MOVE                             R59 R33
      504 CALL                             R59 0 1
      505 SETTABLEKS                       R59 R58 K26 ["LayoutOrder"]
      507 CALL                             R56 2 1
      508 SETTABLEKS                       R56 R55 K86 ["ServerManagementButton"]
      510 GETUPVAL                         R57 9
      511 CALL                             R57 0 1
      512 JUMPIFNOT                        R57 ; [+12]
      513 GETUPVAL                         R56 21
      514 GETUPVAL                         R57 22
      515 DUPTABLE                         R58 K61 [{"tag", "LayoutOrder"}]
      516 LOADK                            R59 K95 ["fill"]
      517 SETTABLEKS                       R59 R58 K25 ["tag"]
      519 MOVE                             R59 R33
      520 CALL                             R59 0 1
      521 SETTABLEKS                       R59 R58 K26 ["LayoutOrder"]
      523 CALL                             R56 2 1
      524 JUMP                             ; [+1]
      525 LOADNIL                          R56
      526 SETTABLEKS                       R56 R55 K87 ["Spacer"]
      528 GETUPVAL                         R57 32
      529 CALL                             R57 0 1
      530 JUMPIFNOT                        R57 ; [+9]
      531 GETUPVAL                         R56 21
      532 GETUPVAL                         R57 33
      533 DUPTABLE                         R58 K94 [{"LayoutOrder"}]
      534 MOVE                             R59 R33
      535 CALL                             R59 0 1
      536 SETTABLEKS                       R59 R58 K26 ["LayoutOrder"]
      538 CALL                             R56 2 1
      539 JUMP                             ; [+1]
      540 LOADNIL                          R56
      541 SETTABLEKS                       R56 R55 K88 ["SelectAssistantMode"]
      543 NOT                              R56 R31
      544 JUMPIFNOT                        R56 ; [+30]
      545 GETUPVAL                         R56 21
      546 GETUPVAL                         R57 34
      547 DUPTABLE                         R58 K100 [{"icon", "tag", "iconTag", "iconRotation", "isDisabled", "onActivated", "LayoutOrder", "skipBackgroundColoringDisabled"}]
      548 LOADK                            R59 K101 ["icons/navigation/seeAllArrow_small"]
      549 SETTABLEKS                       R59 R58 K96 ["icon"]
      551 JUMPIFNOT                        R32 ; [+2]
      552 LOADK                            R59 K102 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
      553 JUMP                             ; [+1]
      554 LOADK                            R59 K103 ["size-600-600 radius-circle bg-action-emphasis align-x-center align-y-center"]
      555 SETTABLEKS                       R59 R58 K25 ["tag"]
      557 LOADK                            R59 K104 ["size-300-300 content-emphasis"]
      558 SETTABLEKS                       R59 R58 K97 ["iconTag"]
      560 LOADN                            R59 166
      561 SETTABLEKS                       R59 R58 K98 ["iconRotation"]
      563 SETTABLEKS                       R32 R58 K76 ["isDisabled"]
      565 SETTABLEKS                       R29 R58 K92 ["onActivated"]
      567 MOVE                             R59 R33
      568 CALL                             R59 0 1
      569 SETTABLEKS                       R59 R58 K26 ["LayoutOrder"]
      571 LOADB                            R59 1
      572 SETTABLEKS                       R59 R58 K99 ["skipBackgroundColoringDisabled"]
      574 CALL                             R56 2 1
      575 SETTABLEKS                       R56 R55 K89 ["SendButton"]
      577 MOVE                             R56 R31
      578 JUMPIFNOT                        R56 ; [+29]
      579 GETUPVAL                         R56 21
      580 GETUPVAL                         R57 34
      581 DUPTABLE                         R58 K105 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId", "skipBackgroundColoringDisabled"}]
      582 LOADK                            R59 K106 ["icons/controls/mediaStop_small"]
      583 SETTABLEKS                       R59 R58 K96 ["icon"]
      585 LOADK                            R59 K102 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
      586 SETTABLEKS                       R59 R58 K25 ["tag"]
      588 LOADK                            R59 K104 ["size-300-300 content-emphasis"]
      589 SETTABLEKS                       R59 R58 K97 ["iconTag"]
      591 SETTABLEKS                       R30 R58 K92 ["onActivated"]
      593 MOVE                             R59 R33
      594 CALL                             R59 0 1
      595 SETTABLEKS                       R59 R58 K26 ["LayoutOrder"]
      597 GETUPVAL                         R61 24
      598 GETTABLEKS                       R60 R61 K31 ["InputArea"]
      600 GETTABLEKS                       R59 R60 K90 ["StopButton"]
      602 SETTABLEKS                       R59 R58 K27 ["testId"]
      604 LOADB                            R59 1
      605 SETTABLEKS                       R59 R58 K99 ["skipBackgroundColoringDisabled"]
      607 CALL                             R56 2 1
      608 SETTABLEKS                       R56 R55 K90 ["StopButton"]
      610 CALL                             R52 3 1
      611 SETTABLEKS                       R52 R51 K72 ["ActionButtons"]
      613 CALL                             R48 3 1
      614 SETTABLEKS                       R48 R47 K50 ["InputRow"]
      616 CALL                             R44 3 1
      617 SETTABLEKS                       R44 R43 K41 ["MessageField"]
      619 CALL                             R40 3 1
      620 SETTABLEKS                       R40 R39 K33 ["Menu"]
      622 GETUPVAL                         R40 21
      623 GETUPVAL                         R41 35
      624 DUPTABLE                         R42 K94 [{"LayoutOrder"}]
      625 MOVE                             R43 R33
      626 CALL                             R43 0 1
      627 SETTABLEKS                       R43 R42 K26 ["LayoutOrder"]
      629 CALL                             R40 2 1
      630 SETTABLEKS                       R40 R39 K34 ["Footer"]
      632 CALL                             R36 3 -1
      633 CLOSEUPVALS                      R9
      634 RETURN                           R36 -1

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
       86 GETTABLEKS                       R14 R0 K9 ["Parent"]
       88 GETTABLEKS                       R13 R14 K22 ["React"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R15 R0 K9 ["Parent"]
       95 GETTABLEKS                       R14 R15 K23 ["ReactUtils"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R16 R0 K6 ["Components"]
      102 GETTABLEKS                       R15 R16 K24 ["ServerManagementDropdown"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R18 R0 K6 ["Components"]
      109 GETTABLEKS                       R17 R18 K20 ["Contexts"]
      111 GETTABLEKS                       R16 R17 K25 ["SessionIdContext"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R18 R0 K6 ["Components"]
      118 GETTABLEKS                       R17 R18 K26 ["SlashCommandMenu"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K5 [require]
      123 GETTABLEKS                       R19 R0 K17 ["Util"]
      125 GETTABLEKS                       R18 R19 K27 ["TestIds"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K5 [require]
      130 GETTABLEKS                       R21 R0 K6 ["Components"]
      132 GETTABLEKS                       R20 R21 K20 ["Contexts"]
      134 GETTABLEKS                       R19 R20 K28 ["ThreadIdContext"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R22 R0 K29 ["Resources"]
      141 GETTABLEKS                       R21 R22 K30 ["Localization"]
      143 GETTABLEKS                       R20 R21 K31 ["Translator"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K32 ["Types"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R23 R0 K6 ["Components"]
      155 GETTABLEKS                       R22 R23 K33 ["UIToolRegistry"]
      157 CALL                             R21 1 1
      158 GETIMPORT                        R22 K5 [require]
      160 GETTABLEKS                       R25 R0 K6 ["Components"]
      162 GETTABLEKS                       R24 R25 K20 ["Contexts"]
      164 GETTABLEKS                       R23 R24 K34 ["WindowInputContext"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K5 [require]
      169 GETTABLEKS                       R25 R0 K17 ["Util"]
      171 GETTABLEKS                       R24 R25 K35 ["getToggleGenerationInputFunc"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K5 [require]
      176 GETTABLEKS                       R26 R0 K36 ["Hooks"]
      178 GETTABLEKS                       R25 R26 K37 ["useAssistantMode"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K5 [require]
      183 GETTABLEKS                       R27 R0 K36 ["Hooks"]
      185 GETTABLEKS                       R26 R27 K38 ["useCurrentAssistantMessageId"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K5 [require]
      190 GETTABLEKS                       R28 R0 K36 ["Hooks"]
      192 GETTABLEKS                       R27 R28 K39 ["useEventConnection"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K5 [require]
      197 GETTABLEKS                       R29 R0 K36 ["Hooks"]
      199 GETTABLEKS                       R28 R29 K40 ["useLLMCancelSession"]
      201 CALL                             R27 1 1
      202 GETIMPORT                        R28 K5 [require]
      204 GETTABLEKS                       R30 R0 K36 ["Hooks"]
      206 GETTABLEKS                       R29 R30 K41 ["useSendMessage"]
      208 CALL                             R28 1 1
      209 GETIMPORT                        R29 K5 [require]
      211 GETTABLEKS                       R31 R0 K42 ["Flags"]
      213 GETTABLEKS                       R30 R31 K43 ["getAssistantModeEnabled"]
      215 CALL                             R29 1 1
      216 GETIMPORT                        R30 K5 [require]
      218 GETTABLEKS                       R32 R0 K42 ["Flags"]
      220 GETTABLEKS                       R31 R32 K44 ["FFlagAssistantMultipleChatPersistence"]
      222 CALL                             R30 1 1
      223 GETIMPORT                        R31 K5 [require]
      225 GETTABLEKS                       R33 R0 K42 ["Flags"]
      227 GETTABLEKS                       R32 R33 K45 ["FFlagAssistantPlanMode"]
      229 CALL                             R31 1 1
      230 GETIMPORT                        R32 K5 [require]
      232 GETTABLEKS                       R34 R0 K42 ["Flags"]
      234 GETTABLEKS                       R33 R34 K46 ["FFlagAssistantQuestionAnswerTool"]
      236 CALL                             R32 1 1
      237 GETIMPORT                        R33 K5 [require]
      239 GETTABLEKS                       R35 R0 K42 ["Flags"]
      241 GETTABLEKS                       R34 R35 K47 ["FFlagEnableAssistantInputImageAttachment"]
      243 CALL                             R33 1 1
      244 GETIMPORT                        R34 K5 [require]
      246 GETTABLEKS                       R36 R0 K42 ["Flags"]
      248 GETTABLEKS                       R35 R36 K48 ["FFlagEnablePrimitiveGenTool"]
      250 CALL                             R34 1 1
      251 GETIMPORT                        R35 K5 [require]
      253 GETTABLEKS                       R37 R0 K42 ["Flags"]
      255 GETTABLEKS                       R36 R37 K49 ["FFlagProceduralModel"]
      257 CALL                             R35 1 1
      258 GETIMPORT                        R36 K5 [require]
      260 GETTABLEKS                       R38 R0 K42 ["Flags"]
      262 GETTABLEKS                       R37 R38 K50 ["FIntMCPAssistantInputAreaCharLimit"]
      264 CALL                             R36 1 1
      265 GETIMPORT                        R37 K5 [require]
      267 GETTABLEKS                       R39 R0 K42 ["Flags"]
      269 GETTABLEKS                       R38 R39 K51 ["FIntMCPAssistantMaxPromptHistory"]
      271 CALL                             R37 1 1
      272 GETTABLEKS                       R38 R11 K52 ["InputDisabledReasons"]
      274 GETTABLEKS                       R39 R7 K53 ["View"]
      276 GETTABLEKS                       R40 R13 K54 ["createNextOrder"]
      278 GETTABLEKS                       R41 R12 K55 ["createElement"]
      280 DUPCLOSURE                       R42 K56 [PROTO_4]
      281 CAPTURE                          VAL R12
      282 CAPTURE                          VAL R37
      283 CAPTURE                          VAL R3
      284 CAPTURE                          VAL R22
      285 CAPTURE                          VAL R26
      286 DUPCLOSURE                       R43 K57 [PROTO_13]
      287 CAPTURE                          VAL R7
      288 CAPTURE                          VAL R12
      289 CAPTURE                          VAL R41
      290 CAPTURE                          VAL R3
      291 CAPTURE                          VAL R5
      292 DUPCLOSURE                       R44 K58 [PROTO_15]
      293 CAPTURE                          VAL R12
      294 CAPTURE                          VAL R18
      295 DUPCLOSURE                       R45 K59 [PROTO_33]
      296 CAPTURE                          VAL R27
      297 CAPTURE                          VAL R12
      298 CAPTURE                          VAL R11
      299 CAPTURE                          VAL R15
      300 CAPTURE                          VAL R25
      301 CAPTURE                          VAL R31
      302 CAPTURE                          VAL R24
      303 CAPTURE                          VAL R30
      304 CAPTURE                          VAL R44
      305 CAPTURE                          VAL R33
      306 CAPTURE                          VAL R9
      307 CAPTURE                          VAL R28
      308 CAPTURE                          VAL R23
      309 CAPTURE                          VAL R19
      310 CAPTURE                          VAL R42
      311 CAPTURE                          VAL R36
      312 CAPTURE                          VAL R21
      313 CAPTURE                          VAL R6
      314 CAPTURE                          VAL R5
      315 CAPTURE                          VAL R38
      316 CAPTURE                          VAL R40
      317 CAPTURE                          VAL R41
      318 CAPTURE                          VAL R39
      319 CAPTURE                          VAL R32
      320 CAPTURE                          VAL R17
      321 CAPTURE                          VAL R16
      322 CAPTURE                          VAL R2
      323 CAPTURE                          VAL R43
      324 CAPTURE                          VAL R35
      325 CAPTURE                          VAL R34
      326 CAPTURE                          VAL R8
      327 CAPTURE                          VAL R14
      328 CAPTURE                          VAL R29
      329 CAPTURE                          VAL R1
      330 CAPTURE                          VAL R4
      331 CAPTURE                          VAL R10
      332 RETURN                           R45 1
