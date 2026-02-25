PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"closeHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["closeHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"closeHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["closeHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ref"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R3 K3 [{"position"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K4 ["getPosition"]
       13 CALL                             R4 0 1
       14 SETTABLEKS                       R4 R3 K2 ["position"]
       16 NAMECALL                         R1 R1 K5 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["ExpandedHeight"]
        5 GETTABLEKS                       R2 R0 K2 ["Stylizer"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K3 ["ref"]
       10 GETTABLEKS                       R3 R4 K4 ["current"]
       12 GETIMPORT                        R4 K7 [Vector2.new]
       14 CALL                             R4 0 1
       15 GETIMPORT                        R5 K7 [Vector2.new]
       17 CALL                             R5 0 1
       18 JUMPIFNOT                        R3 ; [+8]
       19 GETTABLEKS                       R6 R3 K8 ["parent"]
       21 GETTABLEKS                       R4 R6 K9 ["AbsolutePosition"]
       23 GETTABLEKS                       R6 R3 K8 ["parent"]
       25 GETTABLEKS                       R5 R6 K10 ["AbsoluteSize"]
       27 GETTABLEKS                       R6 R4 K11 ["X"]
       29 GETTABLEKS                       R9 R4 K12 ["Y"]
       31 GETTABLEKS                       R11 R2 K13 ["TopBarHeight"]
       33 ADD                              R10 R1 R11
       34 SUB                              R8 R9 R10
       35 GETTABLEKS                       R9 R5 K12 ["Y"]
       37 ADD                              R7 R8 R9
       38 GETIMPORT                        R8 K16 [UDim2.fromOffset]
       40 MOVE                             R9 R6
       41 MOVE                             R10 R7
       42 CALL                             R8 2 -1
       43 RETURN                           R8 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["ref"]
        6 DUPTABLE                         R1 K4 [{"position", "closeHovered"}]
        7 GETIMPORT                        R2 K7 [UDim2.new]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R1 K2 ["position"]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K3 ["closeHovered"]
       15 SETTABLEKS                       R1 R0 K8 ["state"]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K9 ["onMouseEnter"]
       21 NEWCLOSURE                       R1 P1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K10 ["onMouseLeave"]
       25 NEWCLOSURE                       R1 P2
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K11 ["reposition"]
       29 NEWCLOSURE                       R1 P3
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K12 ["getPosition"]
       33 NEWTABLE                         R1 0 0
       35 SETTABLEKS                       R1 R0 K13 ["changeTokens"]
       37 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Hide"]
        4 GETTABLEKS                       R3 R1 K1 ["Hide"]
        6 JUMPIFEQ                         R2 R3 ; [+16]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R2 R3 K1 ["Hide"]
       12 JUMPIF                           R2 ; [+3]
       13 GETTABLEKS                       R2 R0 K2 ["reposition"]
       15 CALL                             R2 0 0
       16 DUPTABLE                         R4 K4 [{"closeHovered"}]
       17 LOADB                            R5 0
       18 SETTABLEKS                       R5 R4 K3 ["closeHovered"]
       20 NAMECALL                         R2 R0 K5 ["setState"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["ref"]
        2 GETTABLEKS                       R2 R3 K1 ["current"]
        4 GETTABLEKS                       R1 R2 K2 ["Parent"]
        6 GETTABLEKS                       R3 R0 K3 ["changeTokens"]
        8 LOADK                            R6 K4 ["AbsoluteSize"]
        9 NAMECALL                         R4 R1 K5 ["GetPropertyChangedSignal"]
       11 CALL                             R4 2 1
       12 GETTABLEKS                       R6 R0 K6 ["reposition"]
       14 NAMECALL                         R4 R4 K7 ["Connect"]
       16 CALL                             R4 2 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R2 K10 [table.insert]
       20 CALL                             R2 -1 0
       21 GETTABLEKS                       R3 R0 K3 ["changeTokens"]
       23 LOADK                            R6 K11 ["AbsolutePosition"]
       24 NAMECALL                         R4 R1 K5 ["GetPropertyChangedSignal"]
       26 CALL                             R4 2 1
       27 GETTABLEKS                       R6 R0 K6 ["reposition"]
       29 NAMECALL                         R4 R4 K7 ["Connect"]
       31 CALL                             R4 2 -1
       32 FASTCALL                         TABLE_INSERT ; [+2]
       33 GETIMPORT                        R2 K10 [table.insert]
       35 CALL                             R2 -1 0
       36 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["changeTokens"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 NAMECALL                         R6 R5 K3 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R2 K2 ["closeHovered"]
        6 GETTABLEKS                       R5 R3 K3 ["Stylizer"]
        8 GETTABLEKS                       R7 R5 K4 ["Arrow"]
       10 GETTABLEKS                       R6 R7 K5 ["Size"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K6 ["createElement"]
       15 GETUPVAL                         R8 1
       16 DUPTABLE                         R9 K14 [{"BackgroundColor3", "BorderSizePixel", "LayoutOrder", "Size", "Padding", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
       17 GETTABLEKS                       R10 R5 K15 ["TopBarColor"]
       19 SETTABLEKS                       R10 R9 K7 ["BackgroundColor3"]
       21 LOADN                            R10 0
       22 SETTABLEKS                       R10 R9 K8 ["BorderSizePixel"]
       24 SETTABLEKS                       R1 R9 K9 ["LayoutOrder"]
       26 GETIMPORT                        R10 K18 [UDim2.new]
       28 LOADN                            R11 1
       29 LOADN                            R12 0
       30 LOADN                            R13 0
       31 GETTABLEKS                       R14 R5 K19 ["TopBarHeight"]
       33 CALL                             R10 4 1
       34 SETTABLEKS                       R10 R9 K5 ["Size"]
       36 GETTABLEKS                       R10 R5 K20 ["TopBarPadding"]
       38 SETTABLEKS                       R10 R9 K10 ["Padding"]
       40 GETIMPORT                        R10 K24 [Enum.FillDirection.Horizontal]
       42 SETTABLEKS                       R10 R9 K11 ["Layout"]
       44 GETIMPORT                        R10 K26 [Enum.HorizontalAlignment.Right]
       46 SETTABLEKS                       R10 R9 K12 ["HorizontalAlignment"]
       48 GETIMPORT                        R10 K28 [Enum.VerticalAlignment.Center]
       50 SETTABLEKS                       R10 R9 K13 ["VerticalAlignment"]
       52 DUPTABLE                         R10 K30 [{"CloseButton"}]
       53 GETUPVAL                         R12 0
       54 GETTABLEKS                       R11 R12 K6 ["createElement"]
       56 LOADK                            R12 K31 ["ImageButton"]
       57 NEWTABLE                         R13 16 0
       59 LOADN                            R14 1
       60 SETTABLEKS                       R14 R13 K32 ["BackgroundTransparency"]
       62 GETIMPORT                        R14 K34 [UDim2.fromOffset]
       64 MOVE                             R15 R6
       65 MOVE                             R16 R6
       66 CALL                             R14 2 1
       67 SETTABLEKS                       R14 R13 K5 ["Size"]
       69 JUMPIFNOT                        R4 ; [+5]
       70 GETTABLEKS                       R15 R5 K4 ["Arrow"]
       72 GETTABLEKS                       R14 R15 K35 ["HoverColor"]
       74 JUMP                             ; [+4]
       75 GETTABLEKS                       R15 R5 K4 ["Arrow"]
       77 GETTABLEKS                       R14 R15 K36 ["Color"]
       79 SETTABLEKS                       R14 R13 K37 ["ImageColor3"]
       81 GETTABLEKS                       R15 R5 K4 ["Arrow"]
       83 GETTABLEKS                       R14 R15 K38 ["Image"]
       85 SETTABLEKS                       R14 R13 K38 ["Image"]
       87 GETTABLEKS                       R15 R5 K4 ["Arrow"]
       89 GETTABLEKS                       R14 R15 K39 ["Offset"]
       91 SETTABLEKS                       R14 R13 K40 ["ImageRectOffset"]
       93 GETIMPORT                        R14 K42 [Vector2.new]
       95 MOVE                             R15 R6
       96 MOVE                             R16 R6
       97 CALL                             R14 2 1
       98 SETTABLEKS                       R14 R13 K43 ["ImageRectSize"]
      100 GETUPVAL                         R16 0
      101 GETTABLEKS                       R15 R16 K44 ["Event"]
      103 GETTABLEKS                       R14 R15 K45 ["MouseButton1Click"]
      105 GETTABLEKS                       R15 R3 K46 ["OnFocusLost"]
      107 SETTABLE                         R15 R13 R14
      108 GETUPVAL                         R16 0
      109 GETTABLEKS                       R15 R16 K44 ["Event"]
      111 GETTABLEKS                       R14 R15 K47 ["MouseEnter"]
      113 GETTABLEKS                       R15 R0 K48 ["onMouseEnter"]
      115 SETTABLE                         R15 R13 R14
      116 GETUPVAL                         R16 0
      117 GETTABLEKS                       R15 R16 K44 ["Event"]
      119 GETTABLEKS                       R14 R15 K49 ["MouseLeave"]
      121 GETTABLEKS                       R15 R0 K50 ["onMouseLeave"]
      123 SETTABLE                         R15 R13 R14
      124 CALL                             R11 2 1
      125 SETTABLEKS                       R11 R10 K29 ["CloseButton"]
      127 CALL                             R7 3 -1
      128 RETURN                           R7 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["position"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["new"]
       11 CALL                             R5 0 1
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K5 ["createElement"]
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K13 [{"Position", "Size", "BackgroundColor3", "BorderSizePixel", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
       17 SETTABLEKS                       R4 R8 K6 ["Position"]
       19 GETIMPORT                        R9 K15 [UDim2.new]
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 LOADN                            R12 0
       24 GETTABLEKS                       R14 R2 K16 ["ExpandedHeight"]
       26 GETTABLEKS                       R15 R3 K17 ["TopBarHeight"]
       28 ADD                              R13 R14 R15
       29 CALL                             R9 4 1
       30 SETTABLEKS                       R9 R8 K7 ["Size"]
       32 GETTABLEKS                       R9 R3 K18 ["BackgroundColor"]
       34 SETTABLEKS                       R9 R8 K8 ["BackgroundColor3"]
       36 LOADN                            R9 0
       37 SETTABLEKS                       R9 R8 K9 ["BorderSizePixel"]
       39 GETIMPORT                        R9 K22 [Enum.FillDirection.Vertical]
       41 SETTABLEKS                       R9 R8 K10 ["Layout"]
       43 GETIMPORT                        R9 K24 [Enum.HorizontalAlignment.Left]
       45 SETTABLEKS                       R9 R8 K11 ["HorizontalAlignment"]
       47 GETIMPORT                        R9 K26 [Enum.VerticalAlignment.Top]
       49 SETTABLEKS                       R9 R8 K12 ["VerticalAlignment"]
       51 DUPTABLE                         R9 K29 [{"TopBar", "Content"}]
       52 NAMECALL                         R12 R5 K30 ["getNextOrder"]
       54 CALL                             R12 1 -1
       55 NAMECALL                         R10 R0 K31 ["renderTopBar"]
       57 CALL                             R10 -1 1
       58 SETTABLEKS                       R10 R9 K27 ["TopBar"]
       60 GETTABLEKS                       R10 R2 K32 ["RenderContent"]
       62 NAMECALL                         R11 R5 K30 ["getNextOrder"]
       64 CALL                             R11 1 -1
       65 CALL                             R10 -1 1
       66 SETTABLEKS                       R10 R9 K28 ["Content"]
       68 CALL                             R6 3 -1
       69 RETURN                           R6 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Hide"]
        4 NOT                              R2 R3
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K5 [{"ForwardRef", "Size"}]
       10 GETTABLEKS                       R6 R0 K6 ["ref"]
       12 SETTABLEKS                       R6 R5 K3 ["ForwardRef"]
       14 GETIMPORT                        R6 K9 [UDim2.fromScale]
       16 LOADN                            R7 1
       17 LOADN                            R8 0
       18 CALL                             R6 2 1
       19 SETTABLEKS                       R6 R5 K4 ["Size"]
       21 DUPTABLE                         R6 K11 [{"PortalToRoot"}]
       22 MOVE                             R7 R2
       23 JUMPIFNOT                        R7 ; [+18]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K2 ["createElement"]
       27 GETUPVAL                         R8 2
       28 DUPTABLE                         R9 K13 [{"OnFocusLost"}]
       29 GETTABLEKS                       R10 R1 K12 ["OnFocusLost"]
       31 SETTABLEKS                       R10 R9 K12 ["OnFocusLost"]
       33 DUPTABLE                         R10 K15 [{"Frame"}]
       34 MOVE                             R11 R2
       35 JUMPIFNOT                        R11 ; [+3]
       36 NAMECALL                         R11 R0 K16 ["renderFrame"]
       38 CALL                             R11 1 1
       39 SETTABLEKS                       R11 R10 K14 ["Frame"]
       41 CALL                             R7 3 1
       42 SETTABLEKS                       R7 R6 K10 ["PortalToRoot"]
       44 CALL                             R3 3 -1
       45 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R1 K10 ["UI"]
       25 GETTABLEKS                       R5 R4 K11 ["Pane"]
       27 GETTABLEKS                       R6 R4 K12 ["CaptureFocus"]
       29 GETTABLEKS                       R7 R1 K13 ["Util"]
       31 GETTABLEKS                       R8 R7 K14 ["LayoutOrderIterator"]
       33 GETTABLEKS                       R9 R2 K15 ["PureComponent"]
       35 LOADK                            R11 K16 ["PopUpFrame"]
       36 NAMECALL                         R9 R9 K17 ["extend"]
       38 CALL                             R9 2 1
       39 DUPCLOSURE                       R10 K18 [PROTO_4]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R10 R9 K19 ["init"]
       43 DUPCLOSURE                       R10 K20 [PROTO_5]
       44 SETTABLEKS                       R10 R9 K21 ["didUpdate"]
       46 DUPCLOSURE                       R10 K22 [PROTO_6]
       47 SETTABLEKS                       R10 R9 K23 ["didMount"]
       49 DUPCLOSURE                       R10 K24 [PROTO_7]
       50 SETTABLEKS                       R10 R9 K25 ["willUnmount"]
       52 DUPCLOSURE                       R10 K26 [PROTO_8]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 SETTABLEKS                       R10 R9 K27 ["renderTopBar"]
       57 DUPCLOSURE                       R10 K28 [PROTO_9]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R10 R9 K29 ["renderFrame"]
       63 DUPCLOSURE                       R10 K30 [PROTO_10]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 SETTABLEKS                       R10 R9 K31 ["render"]
       69 GETTABLEKS                       R10 R3 K32 ["withContext"]
       71 DUPTABLE                         R11 K34 [{"Stylizer"}]
       72 GETTABLEKS                       R12 R3 K33 ["Stylizer"]
       74 SETTABLEKS                       R12 R11 K33 ["Stylizer"]
       76 CALL                             R10 1 1
       77 MOVE                             R11 R9
       78 CALL                             R10 1 1
       79 MOVE                             R9 R10
       80 RETURN                           R9 1
