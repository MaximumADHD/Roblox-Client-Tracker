PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 LOADK                            R3 K1 ["TextBox"]
        4 NEWTABLE                         R4 32 0
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K2 ["ClearTextOnFocus"]
        9 LOADB                            R5 0
       10 SETTABLEKS                       R5 R4 K3 ["Selectable"]
       12 LOADN                            R5 1
       13 SETTABLEKS                       R5 R4 K4 ["BackgroundTransparency"]
       15 LOADB                            R5 1
       16 SETTABLEKS                       R5 R4 K5 ["ClipsDescendants"]
       18 GETIMPORT                        R5 K9 [Enum.TextXAlignment.Left]
       20 SETTABLEKS                       R5 R4 K7 ["TextXAlignment"]
       22 GETTABLEKS                       R6 R0 K10 ["fontStyle"]
       24 GETTABLEKS                       R5 R6 K11 ["Font"]
       26 SETTABLEKS                       R5 R4 K11 ["Font"]
       28 GETTABLEKS                       R6 R0 K10 ["fontStyle"]
       30 GETTABLEKS                       R5 R6 K12 ["FontSize"]
       32 SETTABLEKS                       R5 R4 K13 ["TextSize"]
       34 GETTABLEKS                       R6 R0 K10 ["fontStyle"]
       36 GETTABLEKS                       R5 R6 K14 ["LineHeight"]
       38 SETTABLEKS                       R5 R4 K14 ["LineHeight"]
       40 GETTABLEKS                       R6 R0 K15 ["textStyle"]
       42 GETTABLEKS                       R5 R6 K16 ["Color3"]
       44 SETTABLEKS                       R5 R4 K17 ["TextColor3"]
       46 GETTABLEKS                       R6 R0 K15 ["textStyle"]
       48 GETTABLEKS                       R5 R6 K18 ["Transparency"]
       50 SETTABLEKS                       R5 R4 K19 ["TextTransparency"]
       52 GETTABLEKS                       R5 R0 K20 ["isMultiLine"]
       54 SETTABLEKS                       R5 R4 K21 ["MultiLine"]
       56 GETTABLEKS                       R5 R0 K20 ["isMultiLine"]
       58 SETTABLEKS                       R5 R4 K22 ["TextWrapped"]
       60 GETTABLEKS                       R6 R0 K20 ["isMultiLine"]
       62 JUMPIFNOT                        R6 ; [+3]
       63 GETIMPORT                        R5 K25 [Enum.TextYAlignment.Top]
       65 JUMP                             ; [+2]
       66 GETIMPORT                        R5 K27 [Enum.TextYAlignment.Center]
       68 SETTABLEKS                       R5 R4 K23 ["TextYAlignment"]
       70 GETTABLEKS                       R6 R0 K28 ["isDisabled"]
       72 NOT                              R5 R6
       73 SETTABLEKS                       R5 R4 K29 ["TextEditable"]
       75 GETTABLEKS                       R5 R0 K30 ["placeholder"]
       77 SETTABLEKS                       R5 R4 K31 ["PlaceholderText"]
       79 GETUPVAL                         R6 1
       80 CALL                             R6 0 1
       81 JUMPIFNOT                        R6 ; [+3]
       82 GETTABLEKS                       R5 R0 K32 ["textInputType"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R5
       86 SETTABLEKS                       R5 R4 K33 ["TextInputType"]
       88 GETIMPORT                        R5 K36 [UDim2.fromScale]
       90 LOADN                            R6 1
       91 LOADN                            R7 1
       92 CALL                             R5 2 1
       93 SETTABLEKS                       R5 R4 K37 ["Size"]
       95 GETTABLEKS                       R5 R0 K38 ["automaticSize"]
       97 SETTABLEKS                       R5 R4 K39 ["AutomaticSize"]
       99 GETTABLEKS                       R5 R0 K40 ["text"]
      101 SETTABLEKS                       R5 R4 K41 ["Text"]
      103 SETTABLEKS                       R1 R4 K42 ["ref"]
      105 GETUPVAL                         R6 0
      106 GETTABLEKS                       R5 R6 K43 ["Tag"]
      108 GETTABLEKS                       R6 R0 K44 ["tag"]
      110 SETTABLE                         R6 R4 R5
      111 GETUPVAL                         R7 0
      112 GETTABLEKS                       R6 R7 K45 ["Change"]
      114 GETTABLEKS                       R5 R6 K41 ["Text"]
      116 GETTABLEKS                       R6 R0 K46 ["onTextChanged"]
      118 SETTABLE                         R6 R4 R5
      119 GETUPVAL                         R7 0
      120 GETTABLEKS                       R6 R7 K47 ["Event"]
      122 GETTABLEKS                       R5 R6 K48 ["Focused"]
      124 GETTABLEKS                       R6 R0 K49 ["onFocusGained"]
      126 SETTABLE                         R6 R4 R5
      127 GETUPVAL                         R7 0
      128 GETTABLEKS                       R6 R7 K47 ["Event"]
      130 GETTABLEKS                       R5 R6 K50 ["FocusLost"]
      132 GETTABLEKS                       R6 R0 K51 ["onFocusLost"]
      134 SETTABLE                         R6 R4 R5
      135 GETTABLEKS                       R5 R0 K52 ["children"]
      137 CALL                             R2 3 -1
      138 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["CaptureFocus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["ReleaseFocus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["IsFocused"]
        9 CALL                             R0 1 1
       10 RETURN                           R0 1
       11 LOADNIL                          R0
       12 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 GETTABLEKS                       R0 R1 K1 ["SelectionStart"]
        9 RETURN                           R0 1
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 GETTABLEKS                       R0 R1 K1 ["CursorPosition"]
        9 RETURN                           R0 1
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 SETTABLEKS                       R0 R1 K1 ["SelectionStart"]
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 SETTABLEKS                       R0 R1 K1 ["CursorPosition"]
        9 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K8 [{"getIsFocused", "focus", "releaseFocus", "setHover", "getSelectionStart", "getCursorPosition", "setCursorPosition", "setSelectionStart"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["getIsFocused"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["focus"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["releaseFocus"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setHover"]
       13 GETUPVAL                         R3 4
       14 GETTABLEKS                       R2 R3 K9 ["FoundationNumberInputRefAndCallbacks"]
       16 JUMPIFNOT                        R2 ; [+2]
       17 GETUPVAL                         R1 5
       18 JUMP                             ; [+1]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K4 ["getSelectionStart"]
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R2 R3 K9 ["FoundationNumberInputRefAndCallbacks"]
       25 JUMPIFNOT                        R2 ; [+2]
       26 GETUPVAL                         R1 6
       27 JUMP                             ; [+1]
       28 LOADNIL                          R1
       29 SETTABLEKS                       R1 R0 K5 ["getCursorPosition"]
       31 GETUPVAL                         R3 4
       32 GETTABLEKS                       R2 R3 K9 ["FoundationNumberInputRefAndCallbacks"]
       34 JUMPIFNOT                        R2 ; [+2]
       35 GETUPVAL                         R1 7
       36 JUMP                             ; [+1]
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K6 ["setCursorPosition"]
       40 GETUPVAL                         R3 4
       41 GETTABLEKS                       R2 R3 K9 ["FoundationNumberInputRefAndCallbacks"]
       43 JUMPIFNOT                        R2 ; [+2]
       44 GETUPVAL                         R1 8
       45 JUMP                             ; [+1]
       46 LOADNIL                          R1
       47 SETTABLEKS                       R1 R0 K7 ["setSelectionStart"]
       49 RETURN                           R0 1

PROTO_9:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["onChanged"]
        5 LOADK                            R2 K1 [""]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K0 ["onChanged"]
       11 GETTABLEKS                       R2 R0 K2 ["Text"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDisabled"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K1 ["onFocus"]
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K1 ["onFocus"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
       10 CALL                             R3 0 0
       11 JUMPIFNOT                        R1 ; [+8]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K1 ["onReturnPressed"]
       15 JUMPIFNOT                        R3 ; [+4]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K1 ["onReturnPressed"]
       19 CALL                             R3 0 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["onDragStarted"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["onDragStarted"]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["onDrag"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["onDrag"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOTEQ                      R2 R1 ; [+4]
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 0
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 3
       11 LOADB                            R3 0
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 0
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R2 K0 ["current"]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R2 R3 K1 ["onDragEnded"]
       20 JUMPIFNOT                        R2 ; [+6]
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R2 R3 K1 ["onDragEnded"]
       24 MOVE                             R3 R0
       25 MOVE                             R4 R1
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K7 ["innerContainer"]
        7 GETTABLEKS                       R3 R4 K0 ["radius"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K8 ["Stroke"]
       15 GETTABLEKS                       R1 R2 K9 ["Thick"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K8 ["Stroke"]
       22 GETTABLEKS                       R1 R2 K9 ["Thick"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R7 R8 K1 ["outerContainer"]
        3 GETTABLEKS                       R6 R7 K2 ["minHeight"]
        5 GETUPVAL                         R7 1
        6 SUB                              R5 R6 R7
        7 GETUPVAL                         R6 2
        8 SUB                              R4 R5 R6
        9 GETUPVAL                         R6 3
       10 FASTCALL1                        MATH_CEIL R6 ; [+2]
       11 GETIMPORT                        R5 K5 [math.ceil]
       13 CALL                             R5 1 1
       14 SUB                              R3 R4 R5
       15 MULK                             R2 R3 K0 [2]
       16 FASTCALL1                        MATH_ROUND R2 ; [+2]
       17 GETIMPORT                        R1 K7 [math.round]
       19 CALL                             R1 1 1
       20 DIVK                             R0 R1 K0 [2]
       21 GETIMPORT                        R1 K10 [UDim.new]
       23 LOADN                            R2 0
       24 DIVK                             R4 R0 K0 [2]
       25 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       26 GETIMPORT                        R3 K12 [math.floor]
       28 CALL                             R3 1 1
       29 CALL                             R1 2 1
       30 GETIMPORT                        R2 K10 [UDim.new]
       32 LOADN                            R3 0
       33 DIVK                             R5 R0 K0 [2]
       34 FASTCALL1                        MATH_CEIL R5 ; [+2]
       35 GETIMPORT                        R4 K5 [math.ceil]
       37 CALL                             R4 1 1
       38 CALL                             R2 2 1
       39 GETUPVAL                         R4 4
       40 FASTCALL1                        MATH_ROUND R0 ; [+3]
       41 MOVE                             R6 R0
       42 GETIMPORT                        R5 K7 [math.round]
       44 CALL                             R5 1 1
       45 ADD                              R3 R4 R5
       46 DUPTABLE                         R4 K17 [{"top", "bottom", "left", "right"}]
       47 SETTABLEKS                       R1 R4 K13 ["top"]
       49 SETTABLEKS                       R2 R4 K14 ["bottom"]
       51 GETIMPORT                        R5 K10 [UDim.new]
       53 LOADN                            R6 0
       54 LOADN                            R7 0
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K15 ["left"]
       58 GETIMPORT                        R5 K10 [UDim.new]
       60 LOADN                            R6 0
       61 LOADN                            R7 0
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R4 K16 ["right"]
       65 MOVE                             R5 R3
       66 RETURN                           R4 2

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onDragStarted"]
        3 JUMPIF                           R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["onDrag"]
        7 JUMPIF                           R0 ; [+6]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K2 ["onDragEnded"]
       11 JUMPIF                           R0 ; [+2]
       12 LOADNIL                          R0
       13 RETURN                           R0 1
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K3 ["createElement"]
       17 LOADK                            R1 K4 ["UIDragDetector"]
       18 NEWTABLE                         R2 8 0
       20 GETIMPORT                        R3 K8 [Enum.UIDragDetectorDragStyle.Scriptable]
       22 SETTABLEKS                       R3 R2 K9 ["DragStyle"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K10 ["Event"]
       27 GETTABLEKS                       R3 R4 K11 ["DragStart"]
       29 GETUPVAL                         R4 2
       30 SETTABLE                         R4 R2 R3
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K10 ["Event"]
       34 GETTABLEKS                       R3 R4 K12 ["DragContinue"]
       36 GETUPVAL                         R4 3
       37 SETTABLE                         R4 R2 R3
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K10 ["Event"]
       41 GETTABLEKS                       R3 R4 K13 ["DragEnd"]
       43 GETUPVAL                         R4 4
       44 SETTABLE                         R4 R2 R3
       45 GETUPVAL                         R4 5
       46 NOT                              R3 R4
       47 JUMPIFNOT                        R3 ; [+4]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R4 R5 K14 ["isDisabled"]
       51 NOT                              R3 R4
       52 SETTABLEKS                       R3 R2 K15 ["Enabled"]
       54 CALL                             R0 2 -1
       55 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 LOADN                            R5 1
        7 GETTABLEKS                       R6 R2 K0 ["maxLines"]
        9 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       11 GETIMPORT                        R4 K3 [math.max]
       13 CALL                             R4 2 1
       14 LOADN                            R6 1
       15 JUMPIFLT                         R6 R4 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 GETUPVAL                         R6 3
       20 MOVE                             R7 R3
       21 GETTABLEKS                       R8 R2 K4 ["size"]
       23 CALL                             R6 2 1
       24 GETUPVAL                         R9 4
       25 GETTABLEKS                       R8 R9 K5 ["FoundationDisableStylingPolyfill"]
       27 JUMPIFNOT                        R8 ; [+7]
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R9 R6 K6 ["textBox"]
       31 GETTABLEKS                       R8 R9 K7 ["tag"]
       33 CALL                             R7 1 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 GETUPVAL                         R9 6
       37 GETTABLEKS                       R8 R9 K8 ["useRef"]
       39 LOADNIL                          R9
       40 CALL                             R8 1 1
       41 GETUPVAL                         R10 6
       42 GETTABLEKS                       R9 R10 K8 ["useRef"]
       44 LOADNIL                          R10
       45 CALL                             R9 1 1
       46 GETUPVAL                         R11 6
       47 GETTABLEKS                       R10 R11 K9 ["useState"]
       49 LOADB                            R11 0
       50 CALL                             R10 1 2
       51 GETUPVAL                         R13 6
       52 GETTABLEKS                       R12 R13 K9 ["useState"]
       54 LOADB                            R13 0
       55 CALL                             R12 1 2
       56 GETTABLEKS                       R15 R3 K10 ["Stroke"]
       58 GETTABLEKS                       R14 R15 K11 ["Standard"]
       60 FASTCALL1                        MATH_CEIL R14 ; [+3]
       61 MOVE                             R17 R14
       62 GETIMPORT                        R16 K14 [math.ceil]
       64 CALL                             R16 1 1
       65 MULK                             R15 R16 K12 [2]
       66 GETTABLEKS                       R17 R3 K10 ["Stroke"]
       68 GETTABLEKS                       R16 R17 K15 ["Thick"]
       70 FASTCALL1                        MATH_CEIL R16 ; [+3]
       71 MOVE                             R19 R16
       72 GETIMPORT                        R18 K14 [math.ceil]
       74 CALL                             R18 1 1
       75 MULK                             R17 R18 K12 [2]
       76 GETTABLEKS                       R20 R3 K16 ["Color"]
       78 GETTABLEKS                       R19 R20 K17 ["Content"]
       80 GETTABLEKS                       R18 R19 K18 ["Emphasis"]
       82 GETTABLEKS                       R20 R6 K6 ["textBox"]
       84 GETTABLEKS                       R19 R20 K19 ["fontStyle"]
       86 GETTABLEKS                       R20 R19 K20 ["FontSize"]
       88 GETTABLEKS                       R21 R19 K21 ["LineHeight"]
       90 GETUPVAL                         R23 6
       91 GETTABLEKS                       R22 R23 K22 ["useCallback"]
       93 NEWCLOSURE                       R23 P0
       94 CAPTURE                          VAL R8
       95 NEWTABLE                         R24 0 0
       97 CALL                             R22 2 1
       98 GETUPVAL                         R24 6
       99 GETTABLEKS                       R23 R24 K22 ["useCallback"]
      101 NEWCLOSURE                       R24 P1
      102 CAPTURE                          VAL R8
      103 NEWTABLE                         R25 0 0
      105 CALL                             R23 2 1
      106 GETUPVAL                         R25 6
      107 GETTABLEKS                       R24 R25 K22 ["useCallback"]
      109 NEWCLOSURE                       R25 P2
      110 CAPTURE                          VAL R8
      111 NEWTABLE                         R26 0 0
      113 CALL                             R24 2 1
      114 GETUPVAL                         R26 6
      115 GETTABLEKS                       R25 R26 K22 ["useCallback"]
      117 NEWCLOSURE                       R26 P3
      118 CAPTURE                          VAL R8
      119 NEWTABLE                         R27 0 0
      121 CALL                             R25 2 1
      122 GETUPVAL                         R27 6
      123 GETTABLEKS                       R26 R27 K22 ["useCallback"]
      125 NEWCLOSURE                       R27 P4
      126 CAPTURE                          VAL R8
      127 NEWTABLE                         R28 0 0
      129 CALL                             R26 2 1
      130 GETUPVAL                         R28 6
      131 GETTABLEKS                       R27 R28 K22 ["useCallback"]
      133 NEWCLOSURE                       R28 P5
      134 CAPTURE                          VAL R8
      135 NEWTABLE                         R29 0 0
      137 CALL                             R27 2 1
      138 GETUPVAL                         R29 6
      139 GETTABLEKS                       R28 R29 K22 ["useCallback"]
      141 NEWCLOSURE                       R29 P6
      142 CAPTURE                          VAL R8
      143 NEWTABLE                         R30 0 0
      145 CALL                             R28 2 1
      146 GETUPVAL                         R30 6
      147 GETTABLEKS                       R29 R30 K23 ["useImperativeHandle"]
      149 MOVE                             R30 R1
      150 NEWCLOSURE                       R31 P7
      151 CAPTURE                          VAL R24
      152 CAPTURE                          VAL R22
      153 CAPTURE                          VAL R23
      154 CAPTURE                          VAL R11
      155 CAPTURE                          UPVAL U4
      156 CAPTURE                          VAL R25
      157 CAPTURE                          VAL R26
      158 CAPTURE                          VAL R28
      159 CAPTURE                          VAL R27
      160 NEWTABLE                         R32 0 7
      162 MOVE                             R33 R26
      163 MOVE                             R34 R24
      164 MOVE                             R35 R25
      165 MOVE                             R36 R22
      166 MOVE                             R37 R23
      167 MOVE                             R38 R28
      168 MOVE                             R39 R27
      169 SETLIST                          R32 R33 7 [1]
      171 CALL                             R29 3 0
      172 GETUPVAL                         R30 6
      173 GETTABLEKS                       R29 R30 K22 ["useCallback"]
      175 NEWCLOSURE                       R30 P8
      176 CAPTURE                          VAL R2
      177 NEWTABLE                         R31 0 1
      179 GETTABLEKS                       R32 R2 K24 ["onChanged"]
      181 SETLIST                          R31 R32 1 [1]
      183 CALL                             R29 2 1
      184 GETUPVAL                         R31 6
      185 GETTABLEKS                       R30 R31 K22 ["useCallback"]
      187 NEWCLOSURE                       R31 P9
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R13
      190 NEWTABLE                         R32 0 2
      192 GETTABLEKS                       R33 R2 K25 ["onFocus"]
      194 GETTABLEKS                       R34 R2 K26 ["isDisabled"]
      196 SETLIST                          R32 R33 2 [1]
      198 CALL                             R30 2 1
      199 GETUPVAL                         R32 6
      200 GETTABLEKS                       R31 R32 K22 ["useCallback"]
      202 NEWCLOSURE                       R32 P10
      203 CAPTURE                          VAL R13
      204 CAPTURE                          VAL R2
      205 NEWTABLE                         R33 0 2
      207 GETTABLEKS                       R34 R2 K27 ["onReturnPressed"]
      209 GETTABLEKS                       R35 R2 K28 ["onFocusLost"]
      211 SETLIST                          R33 R34 2 [1]
      213 CALL                             R31 2 1
      214 GETUPVAL                         R33 6
      215 GETTABLEKS                       R32 R33 K22 ["useCallback"]
      217 NEWCLOSURE                       R33 P11
      218 CAPTURE                          VAL R11
      219 CAPTURE                          UPVAL U7
      220 NEWTABLE                         R34 0 0
      222 CALL                             R32 2 1
      223 GETUPVAL                         R34 6
      224 GETTABLEKS                       R33 R34 K22 ["useCallback"]
      226 NEWCLOSURE                       R34 P12
      227 CAPTURE                          VAL R9
      228 CAPTURE                          VAL R2
      229 NEWTABLE                         R35 0 1
      231 GETTABLEKS                       R36 R2 K29 ["onDragStarted"]
      233 SETLIST                          R35 R36 1 [1]
      235 CALL                             R33 2 1
      236 GETUPVAL                         R35 6
      237 GETTABLEKS                       R34 R35 K22 ["useCallback"]
      239 NEWCLOSURE                       R35 P13
      240 CAPTURE                          VAL R2
      241 NEWTABLE                         R36 0 1
      243 GETTABLEKS                       R37 R2 K30 ["onDrag"]
      245 SETLIST                          R36 R37 1 [1]
      247 CALL                             R34 2 1
      248 GETUPVAL                         R36 6
      249 GETTABLEKS                       R35 R36 K22 ["useCallback"]
      251 NEWCLOSURE                       R36 P14
      252 CAPTURE                          VAL R9
      253 CAPTURE                          VAL R22
      254 CAPTURE                          VAL R23
      255 CAPTURE                          VAL R13
      256 CAPTURE                          VAL R2
      257 NEWTABLE                         R37 0 1
      259 GETTABLEKS                       R38 R2 K31 ["onDragEnded"]
      261 SETLIST                          R37 R38 1 [1]
      263 CALL                             R35 2 1
      264 GETUPVAL                         R37 6
      265 GETTABLEKS                       R36 R37 K32 ["useMemo"]
      267 NEWCLOSURE                       R37 P15
      268 CAPTURE                          VAL R6
      269 CAPTURE                          VAL R3
      270 NEWTABLE                         R38 0 2
      272 MOVE                             R39 R3
      273 GETTABLEKS                       R41 R6 K33 ["innerContainer"]
      275 GETTABLEKS                       R40 R41 K34 ["radius"]
      277 SETLIST                          R38 R39 2 [1]
      279 CALL                             R36 2 1
      280 GETUPVAL                         R38 6
      281 GETTABLEKS                       R37 R38 K32 ["useMemo"]
      283 NEWCLOSURE                       R38 P16
      284 CAPTURE                          UPVAL U8
      285 CAPTURE                          VAL R20
      286 CAPTURE                          VAL R4
      287 CAPTURE                          VAL R21
      288 NEWTABLE                         R39 0 3
      290 MOVE                             R40 R20
      291 MOVE                             R41 R4
      292 MOVE                             R42 R21
      293 SETLIST                          R39 R40 3 [1]
      295 CALL                             R37 2 1
      296 GETUPVAL                         R39 6
      297 GETTABLEKS                       R38 R39 K32 ["useMemo"]
      299 NEWCLOSURE                       R39 P17
      300 CAPTURE                          VAL R6
      301 CAPTURE                          VAL R15
      302 CAPTURE                          VAL R17
      303 CAPTURE                          VAL R20
      304 CAPTURE                          VAL R37
      305 NEWTABLE                         R40 0 5
      307 GETTABLEKS                       R42 R6 K35 ["outerContainer"]
      309 GETTABLEKS                       R41 R42 K36 ["minHeight"]
      311 MOVE                             R42 R15
      312 MOVE                             R43 R17
      313 MOVE                             R44 R20
      314 MOVE                             R45 R37
      315 SETLIST                          R40 R41 5 [1]
      317 CALL                             R38 2 2
      318 GETUPVAL                         R41 6
      319 GETTABLEKS                       R40 R41 K32 ["useMemo"]
      321 NEWCLOSURE                       R41 P18
      322 CAPTURE                          VAL R2
      323 CAPTURE                          UPVAL U6
      324 CAPTURE                          VAL R33
      325 CAPTURE                          VAL R34
      326 CAPTURE                          VAL R35
      327 CAPTURE                          VAL R12
      328 NEWTABLE                         R42 0 5
      330 MOVE                             R43 R33
      331 MOVE                             R44 R34
      332 MOVE                             R45 R35
      333 MOVE                             R46 R12
      334 GETTABLEKS                       R47 R2 K26 ["isDisabled"]
      336 SETLIST                          R42 R43 5 [1]
      338 CALL                             R40 2 1
      339 GETUPVAL                         R42 6
      340 GETTABLEKS                       R41 R42 K37 ["createElement"]
      342 GETUPVAL                         R42 9
      343 GETUPVAL                         R43 10
      344 MOVE                             R44 R2
      345 DUPTABLE                         R45 K40 [{"GroupTransparency", "padding", "tag"}]
      346 GETTABLEKS                       R47 R2 K26 ["isDisabled"]
      348 JUMPIFNOT                        R47 ; [+4]
      349 GETUPVAL                         R47 11
      350 GETTABLEKS                       R46 R47 K41 ["DISABLED_TRANSPARENCY"]
      352 JUMP                             ; [+1]
      353 LOADNIL                          R46
      354 SETTABLEKS                       R46 R45 K38 ["GroupTransparency"]
      356 DIVK                             R46 R15 K12 [2]
      357 SETTABLEKS                       R46 R45 K39 ["padding"]
      359 GETTABLEKS                       R47 R6 K42 ["canvas"]
      361 GETTABLEKS                       R46 R47 K7 ["tag"]
      363 SETTABLEKS                       R46 R45 K7 ["tag"]
      365 CALL                             R43 2 1
      366 DUPTABLE                         R44 K44 [{"Input"}]
      367 GETUPVAL                         R46 6
      368 GETTABLEKS                       R45 R46 K37 ["createElement"]
      370 GETUPVAL                         R46 9
      371 DUPTABLE                         R47 K52 [{"selection", "cursor", "stroke", "padding", "onActivated", "onStateChanged", "stateLayer", "tag", "testId"}]
      372 DUPTABLE                         R48 K54 [{"Selectable"}]
      373 GETTABLEKS                       R50 R2 K26 ["isDisabled"]
      375 NOT                              R49 R50
      376 SETTABLEKS                       R49 R48 K53 ["Selectable"]
      378 SETTABLEKS                       R48 R47 K45 ["selection"]
      380 SETTABLEKS                       R36 R47 K46 ["cursor"]
      382 DUPTABLE                         R48 K57 [{"Color", "Transparency", "Thickness"}]
      383 GETTABLEKS                       R50 R2 K58 ["hasError"]
      385 JUMPIFNOT                        R50 ; [+9]
      386 GETTABLEKS                       R52 R3 K16 ["Color"]
      388 GETTABLEKS                       R51 R52 K59 ["System"]
      390 GETTABLEKS                       R50 R51 K60 ["Alert"]
      392 GETTABLEKS                       R49 R50 K61 ["Color3"]
      394 JUMP                             ; [+8]
      395 GETTABLEKS                       R52 R3 K16 ["Color"]
      397 GETTABLEKS                       R51 R52 K10 ["Stroke"]
      399 GETTABLEKS                       R50 R51 K18 ["Emphasis"]
      401 GETTABLEKS                       R49 R50 K61 ["Color3"]
      403 SETTABLEKS                       R49 R48 K16 ["Color"]
      405 GETTABLEKS                       R50 R2 K58 ["hasError"]
      407 JUMPIFNOT                        R50 ; [+9]
      408 GETTABLEKS                       R52 R3 K16 ["Color"]
      410 GETTABLEKS                       R51 R52 K59 ["System"]
      412 GETTABLEKS                       R50 R51 K60 ["Alert"]
      414 GETTABLEKS                       R49 R50 K55 ["Transparency"]
      416 JUMP                             ; [+11]
      417 JUMPIFNOT                        R12 ; [+2]
      418 LOADN                            R49 0
      419 JUMP                             ; [+8]
      420 GETTABLEKS                       R52 R3 K16 ["Color"]
      422 GETTABLEKS                       R51 R52 K10 ["Stroke"]
      424 GETTABLEKS                       R50 R51 K18 ["Emphasis"]
      426 GETTABLEKS                       R49 R50 K55 ["Transparency"]
      428 SETTABLEKS                       R49 R48 K55 ["Transparency"]
      430 SETTABLEKS                       R14 R48 K56 ["Thickness"]
      432 SETTABLEKS                       R48 R47 K47 ["stroke"]
      434 DIVK                             R48 R17 K12 [2]
      435 SETTABLEKS                       R48 R47 K39 ["padding"]
      437 SETTABLEKS                       R22 R47 K48 ["onActivated"]
      439 SETTABLEKS                       R32 R47 K49 ["onStateChanged"]
      441 DUPTABLE                         R48 K63 [{"affordance"}]
      442 GETUPVAL                         R50 12
      443 GETTABLEKS                       R49 R50 K64 ["None"]
      445 SETTABLEKS                       R49 R48 K62 ["affordance"]
      447 SETTABLEKS                       R48 R47 K50 ["stateLayer"]
      449 GETTABLEKS                       R49 R6 K35 ["outerContainer"]
      451 GETTABLEKS                       R48 R49 K7 ["tag"]
      453 SETTABLEKS                       R48 R47 K7 ["tag"]
      455 LOADK                            R49 K65 ["%*--outer-container"]
      456 GETTABLEKS                       R51 R2 K51 ["testId"]
      458 NAMECALL                         R49 R49 K66 ["format"]
      460 CALL                             R49 2 1
      461 MOVE                             R48 R49
      462 SETTABLEKS                       R48 R47 K51 ["testId"]
      464 DUPTABLE                         R48 K70 [{"DragDetector", "Background", "BorderFrame"}]
      465 SETTABLEKS                       R40 R48 K67 ["DragDetector"]
      467 GETTABLEKS                       R49 R2 K71 ["backgroundElement"]
      469 SETTABLEKS                       R49 R48 K68 ["Background"]
      471 GETUPVAL                         R50 6
      472 GETTABLEKS                       R49 R50 K37 ["createElement"]
      474 GETUPVAL                         R50 9
      475 DUPTABLE                         R51 K74 [{"Size", "cornerRadius", "stroke", "padding", "tag"}]
      476 GETIMPORT                        R52 K77 [UDim2.new]
      478 LOADN                            R53 1
      479 LOADN                            R54 0
      480 LOADN                            R55 0
      481 MOVE                             R56 R39
      482 CALL                             R52 4 1
      483 SETTABLEKS                       R52 R51 K72 ["Size"]
      485 GETIMPORT                        R52 K79 [UDim.new]
      487 LOADN                            R53 0
      488 GETTABLEKS                       R56 R6 K33 ["innerContainer"]
      490 GETTABLEKS                       R55 R56 K34 ["radius"]
      492 DIVK                             R56 R17 K12 [2]
      493 SUB                              R54 R55 R56
      494 CALL                             R52 2 1
      495 SETTABLEKS                       R52 R51 K73 ["cornerRadius"]
      497 GETTABLEKS                       R53 R2 K26 ["isDisabled"]
      499 JUMPIF                           R53 ; [+19]
      500 JUMPIF                           R10 ; [+1]
      501 JUMPIFNOT                        R12 ; [+17]
      502 DUPTABLE                         R52 K57 [{"Color", "Transparency", "Thickness"}]
      503 GETTABLEKS                       R56 R3 K16 ["Color"]
      505 GETTABLEKS                       R55 R56 K10 ["Stroke"]
      507 GETTABLEKS                       R54 R55 K18 ["Emphasis"]
      509 GETTABLEKS                       R53 R54 K61 ["Color3"]
      511 SETTABLEKS                       R53 R52 K16 ["Color"]
      513 LOADK                            R53 K80 [0.88]
      514 SETTABLEKS                       R53 R52 K55 ["Transparency"]
      516 SETTABLEKS                       R16 R52 K56 ["Thickness"]
      518 JUMP                             ; [+1]
      519 LOADNIL                          R52
      520 SETTABLEKS                       R52 R51 K47 ["stroke"]
      522 GETTABLEKS                       R53 R2 K81 ["horizontalPadding"]
      524 JUMPIFNOT                        R53 ; [+14]
      525 DUPTABLE                         R52 K84 [{"left", "right"}]
      526 GETTABLEKS                       R54 R2 K81 ["horizontalPadding"]
      528 GETTABLEKS                       R53 R54 K82 ["left"]
      530 SETTABLEKS                       R53 R52 K82 ["left"]
      532 GETTABLEKS                       R54 R2 K81 ["horizontalPadding"]
      534 GETTABLEKS                       R53 R54 K83 ["right"]
      536 SETTABLEKS                       R53 R52 K83 ["right"]
      538 JUMP                             ; [+1]
      539 LOADNIL                          R52
      540 SETTABLEKS                       R52 R51 K39 ["padding"]
      542 GETTABLEKS                       R53 R6 K33 ["innerContainer"]
      544 GETTABLEKS                       R52 R53 K7 ["tag"]
      546 SETTABLEKS                       R52 R51 K7 ["tag"]
      548 DUPTABLE                         R52 K88 [{"Leading", "TextBoxWrapper", "Trailing"}]
      549 GETTABLEKS                       R54 R2 K89 ["leadingElement"]
      551 JUMPIFNOT                        R54 ; [+24]
      552 GETUPVAL                         R54 6
      553 GETTABLEKS                       R53 R54 K37 ["createElement"]
      555 GETUPVAL                         R54 9
      556 DUPTABLE                         R55 K91 [{"LayoutOrder", "tag", "testId"}]
      557 LOADN                            R56 1
      558 SETTABLEKS                       R56 R55 K90 ["LayoutOrder"]
      560 LOADK                            R56 K92 ["size-0-full auto-x"]
      561 SETTABLEKS                       R56 R55 K7 ["tag"]
      563 LOADK                            R57 K93 ["%*--leading"]
      564 GETTABLEKS                       R59 R2 K51 ["testId"]
      566 NAMECALL                         R57 R57 K66 ["format"]
      568 CALL                             R57 2 1
      569 MOVE                             R56 R57
      570 SETTABLEKS                       R56 R55 K51 ["testId"]
      572 GETTABLEKS                       R56 R2 K89 ["leadingElement"]
      574 CALL                             R53 3 1
      575 JUMP                             ; [+1]
      576 LOADNIL                          R53
      577 SETTABLEKS                       R53 R52 K85 ["Leading"]
      579 GETUPVAL                         R54 6
      580 GETTABLEKS                       R53 R54 K37 ["createElement"]
      582 GETUPVAL                         R54 9
      583 DUPTABLE                         R55 K94 [{"LayoutOrder", "padding", "tag"}]
      584 LOADN                            R56 2
      585 SETTABLEKS                       R56 R55 K90 ["LayoutOrder"]
      587 SETTABLEKS                       R38 R55 K39 ["padding"]
      589 LOADK                            R56 K95 ["size-full fill"]
      590 SETTABLEKS                       R56 R55 K7 ["tag"]
      592 DUPTABLE                         R56 K97 [{"TextBox"}]
      593 GETUPVAL                         R58 6
      594 GETTABLEKS                       R57 R58 K37 ["createElement"]
      596 GETUPVAL                         R58 13
      597 DUPTABLE                         R59 K106 [{"text", "placeholder", "textInputType", "fontStyle", "textStyle", "isMultiLine", "isDisabled", "ref", "tag", "onFocusGained", "onFocusLost", "onTextChanged"}]
      598 GETTABLEKS                       R60 R2 K98 ["text"]
      600 SETTABLEKS                       R60 R59 K98 ["text"]
      602 GETTABLEKS                       R60 R2 K99 ["placeholder"]
      604 SETTABLEKS                       R60 R59 K99 ["placeholder"]
      606 GETTABLEKS                       R60 R2 K100 ["textInputType"]
      608 SETTABLEKS                       R60 R59 K100 ["textInputType"]
      610 SETTABLEKS                       R19 R59 K19 ["fontStyle"]
      612 SETTABLEKS                       R18 R59 K101 ["textStyle"]
      614 SETTABLEKS                       R5 R59 K102 ["isMultiLine"]
      616 GETTABLEKS                       R60 R2 K26 ["isDisabled"]
      618 SETTABLEKS                       R60 R59 K26 ["isDisabled"]
      620 SETTABLEKS                       R8 R59 K103 ["ref"]
      622 LOADK                            R61 K107 ["%* data-testid=%*--textbox"]
      623 ORK                              R63 R7 K108 [""]
      624 GETTABLEKS                       R64 R2 K51 ["testId"]
      626 NAMECALL                         R61 R61 K66 ["format"]
      628 CALL                             R61 3 1
      629 MOVE                             R60 R61
      630 SETTABLEKS                       R60 R59 K7 ["tag"]
      632 SETTABLEKS                       R30 R59 K104 ["onFocusGained"]
      634 SETTABLEKS                       R31 R59 K28 ["onFocusLost"]
      636 SETTABLEKS                       R29 R59 K105 ["onTextChanged"]
      638 DUPTABLE                         R60 K109 [{"DragDetector"}]
      639 SETTABLEKS                       R40 R60 K67 ["DragDetector"]
      641 CALL                             R57 3 1
      642 SETTABLEKS                       R57 R56 K96 ["TextBox"]
      644 CALL                             R53 3 1
      645 SETTABLEKS                       R53 R52 K86 ["TextBoxWrapper"]
      647 GETTABLEKS                       R54 R2 K110 ["trailingElement"]
      649 JUMPIFNOT                        R54 ; [+24]
      650 GETUPVAL                         R54 6
      651 GETTABLEKS                       R53 R54 K37 ["createElement"]
      653 GETUPVAL                         R54 9
      654 DUPTABLE                         R55 K91 [{"LayoutOrder", "tag", "testId"}]
      655 LOADN                            R56 3
      656 SETTABLEKS                       R56 R55 K90 ["LayoutOrder"]
      658 LOADK                            R56 K92 ["size-0-full auto-x"]
      659 SETTABLEKS                       R56 R55 K7 ["tag"]
      661 LOADK                            R57 K111 ["%*--trailing"]
      662 GETTABLEKS                       R59 R2 K51 ["testId"]
      664 NAMECALL                         R57 R57 K66 ["format"]
      666 CALL                             R57 2 1
      667 MOVE                             R56 R57
      668 SETTABLEKS                       R56 R55 K51 ["testId"]
      670 GETTABLEKS                       R56 R2 K110 ["trailingElement"]
      672 CALL                             R53 3 1
      673 JUMP                             ; [+1]
      674 LOADNIL                          R53
      675 SETTABLEKS                       R53 R52 K87 ["Trailing"]
      677 CALL                             R49 3 1
      678 SETTABLEKS                       R49 R48 K69 ["BorderFrame"]
      680 CALL                             R45 3 1
      681 SETTABLEKS                       R45 R44 K43 ["Input"]
      683 CALL                             R41 3 -1
      684 RETURN                           R41 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R4 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K10 ["Components"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R4 K11 ["View"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R4 K12 ["Types"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R0 K13 ["Constants"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R10 R4 K14 ["TextInput"]
       42 GETTABLEKS                       R9 R10 K15 ["useTextInputVariants"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K6 [require]
       47 GETTABLEKS                       R12 R0 K16 ["Providers"]
       49 GETTABLEKS                       R11 R12 K17 ["Style"]
       51 GETTABLEKS                       R10 R11 K18 ["useTokens"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R13 R0 K16 ["Providers"]
       58 GETTABLEKS                       R12 R13 K17 ["Style"]
       60 GETTABLEKS                       R11 R12 K19 ["useStyleTags"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R13 R0 K7 ["Utility"]
       67 GETTABLEKS                       R12 R13 K20 ["withDefaults"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K6 [require]
       72 GETTABLEKS                       R14 R0 K7 ["Utility"]
       74 GETTABLEKS                       R13 R14 K21 ["withCommonProps"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K6 [require]
       79 GETTABLEKS                       R15 R0 K7 ["Utility"]
       81 GETTABLEKS                       R14 R15 K22 ["isPluginSecurity"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K6 [require]
       86 GETTABLEKS                       R16 R0 K7 ["Utility"]
       88 GETTABLEKS                       R15 R16 K23 ["getMultiLineTextHeight"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K6 [require]
       93 GETTABLEKS                       R17 R0 K24 ["Enums"]
       95 GETTABLEKS                       R16 R17 K25 ["InputSize"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R18 R0 K24 ["Enums"]
      102 GETTABLEKS                       R17 R18 K26 ["StateLayerAffordance"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R19 R0 K24 ["Enums"]
      109 GETTABLEKS                       R18 R19 K27 ["ControlState"]
      111 CALL                             R17 1 1
      112 DUPTABLE                         R18 K31 [{"size", "maxLines", "testId"}]
      113 GETTABLEKS                       R19 R15 K32 ["Large"]
      115 SETTABLEKS                       R19 R18 K28 ["size"]
      117 LOADN                            R19 1
      118 SETTABLEKS                       R19 R18 K29 ["maxLines"]
      120 LOADK                            R19 K33 ["--foundation-internal-text-input"]
      121 SETTABLEKS                       R19 R18 K30 ["testId"]
      123 GETTABLEKS                       R19 R3 K34 ["memo"]
      125 GETTABLEKS                       R20 R3 K35 ["forwardRef"]
      127 DUPCLOSURE                       R21 K36 [PROTO_0]
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R13
      130 CALL                             R20 1 -1
      131 CALL                             R19 -1 1
      132 DUPCLOSURE                       R20 K37 [PROTO_20]
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R19
      147 GETTABLEKS                       R21 R3 K34 ["memo"]
      149 GETTABLEKS                       R22 R3 K35 ["forwardRef"]
      151 MOVE                             R23 R20
      152 CALL                             R22 1 -1
      153 CALL                             R21 -1 -1
      154 RETURN                           R21 -1
