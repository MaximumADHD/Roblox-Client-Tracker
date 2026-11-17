PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["NextGenDraggersEnabledFeature"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 GETUPVAL                         R0 1
        3 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [game]
        2 LOADK                            R4 K3 ["NewCameraControls_ViewSelectorControlTransparency"]
        3 LOADN                            R5 60
        4 NAMECALL                         R2 R2 K4 ["DefineFastInt"]
        6 CALL                             R2 3 1
        7 LOADN                            R3 0
        8 LOADN                            R4 100
        9 FASTCALL                         MATH_CLAMP ; [+2]
       10 GETIMPORT                        R1 K7 [math.clamp]
       12 CALL                             R1 3 1
       13 DIVK                             R0 R1 K0 [100]
       14 RETURN                           R0 1

PROTO_3:
        0 MULK                             R2 R0 K0 [0.9166666666666666]
        1 FASTCALL1                        MATH_ROUND R2 ; [+2]
        2 GETIMPORT                        R1 K3 [math.round]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Theme"]
        3 GETIMPORT                        R2 K4 [Enum.StudioStyleGuideColor.MainBackground]
        5 NAMECALL                         R0 R0 K5 ["GetColor"]
        7 CALL                             R0 2 1
        8 NAMECALL                         R1 R0 K6 ["ToHSV"]
       10 CALL                             R1 1 3
       11 LOADK                            R5 K7 [0.5]
       12 JUMPIFNOTLT                      R3 R5 ; [+5]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K8 ["Dark"]
       17 JUMP                             ; [+3]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K9 ["Light"]
       21 MOVE                             R5 R4
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETUPVAL                         R10 2
       26 SETTABLE                         R9 R10 R8
       27 FORGLOOP                         R5 2 ; [-3]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R8 R4 K10 ["Shift"]
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R10 R10 K12 ["ControlTransparency"]
       35 SUBRK                            R9 K11 [1] R10
       36 NAMECALL                         R6 R0 K13 ["Lerp"]
       38 CALL                             R6 3 1
       39 SETTABLEKS                       R6 R5 K14 ["Control"]
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R8 R4 K10 ["Shift"]
       44 GETUPVAL                         R10 3
       45 GETTABLEKS                       R10 R10 K15 ["HoveredControlTransparency"]
       47 SUBRK                            R9 K11 [1] R10
       48 NAMECALL                         R6 R0 K13 ["Lerp"]
       50 CALL                             R6 3 1
       51 SETTABLEKS                       R6 R5 K16 ["HoveredControl"]
       53 GETUPVAL                         R5 2
       54 GETTABLEKS                       R8 R4 K10 ["Shift"]
       56 GETUPVAL                         R10 3
       57 GETTABLEKS                       R10 R10 K17 ["SelectedControlTransparency"]
       59 SUBRK                            R9 K11 [1] R10
       60 NAMECALL                         R6 R0 K13 ["Lerp"]
       62 CALL                             R6 3 1
       63 SETTABLEKS                       R6 R5 K18 ["SelectedControl"]
       65 GETUPVAL                         R5 2
       66 GETTABLEKS                       R6 R4 K19 ["ContentDefault"]
       68 SETTABLEKS                       R6 R5 K20 ["ControlContentDefault"]
       70 GETUPVAL                         R5 2
       71 GETTABLEKS                       R6 R4 K21 ["ContentEmphasis"]
       73 SETTABLEKS                       R6 R5 K22 ["ControlContentEmphasis"]
       75 GETUPVAL                         R5 4
       76 LOADN                            R6 1
       77 JUMPIFNOTLT                      R5 R6 ; [+35]
       79 GETUPVAL                         R5 2
       80 GETUPVAL                         R6 5
       81 GETTABLEKS                       R6 R6 K23 ["Surface"]
       83 SETTABLEKS                       R6 R5 K14 ["Control"]
       85 GETUPVAL                         R5 2
       86 GETUPVAL                         R6 5
       87 GETTABLEKS                       R6 R6 K24 ["Hovered"]
       89 SETTABLEKS                       R6 R5 K16 ["HoveredControl"]
       91 GETUPVAL                         R5 2
       92 GETUPVAL                         R6 5
       93 GETTABLEKS                       R6 R6 K24 ["Hovered"]
       95 SETTABLEKS                       R6 R5 K18 ["SelectedControl"]
       97 GETUPVAL                         R5 2
       98 GETUPVAL                         R6 4
       99 SETTABLEKS                       R6 R5 K25 ["ControlSurfaceTransparency"]
      101 GETUPVAL                         R5 2
      102 GETUPVAL                         R6 5
      103 GETTABLEKS                       R6 R6 K19 ["ContentDefault"]
      105 SETTABLEKS                       R6 R5 K20 ["ControlContentDefault"]
      107 GETUPVAL                         R5 2
      108 GETUPVAL                         R6 5
      109 GETTABLEKS                       R6 R6 K21 ["ContentEmphasis"]
      111 SETTABLEKS                       R6 R5 K22 ["ControlContentEmphasis"]
      113 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 MOVE                             R1 R0
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R4
        7 CALL                             R5 0 0
        8 FORGLOOP                         R0 2 ; [-3]
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["FormatByKey"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          VAL R5
        6 CAPTURE                          VAL R0
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R6 K1 [pcall]
       10 CALL                             R6 1 2
       11 JUMPIFNOT                        R6 ; [+3]
       12 JUMPIFEQKS                       R7 K2 [""] ; [+2]
       14 RETURN                           R7 1
       15 FORGLOOP                         R1 2 ; [-12]
       17 RETURN                           R0 1

PROTO_9:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["UICorner"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R1 R2 K4 ["CornerRadius"]
        6 SETTABLEKS                       R0 R2 K5 ["Parent"]
        8 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R5 K2 [Instance.new]
        2 LOADK                            R6 K3 ["UIPadding"]
        3 CALL                             R5 1 1
        4 GETIMPORT                        R6 K5 [UDim.new]
        6 LOADN                            R7 0
        7 MOVE                             R8 R1
        8 CALL                             R6 2 1
        9 SETTABLEKS                       R6 R5 K6 ["PaddingTop"]
       11 GETIMPORT                        R6 K5 [UDim.new]
       13 LOADN                            R7 0
       14 MOVE                             R8 R2
       15 CALL                             R6 2 1
       16 SETTABLEKS                       R6 R5 K7 ["PaddingBottom"]
       18 GETIMPORT                        R6 K5 [UDim.new]
       20 LOADN                            R7 0
       21 MOVE                             R8 R3
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K8 ["PaddingLeft"]
       25 GETIMPORT                        R6 K5 [UDim.new]
       27 LOADN                            R7 0
       28 MOVE                             R8 R4
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K9 ["PaddingRight"]
       32 SETTABLEKS                       R0 R5 K10 ["Parent"]
       34 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["UIListLayout"]
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K7 [Enum.FillDirection.Horizontal]
        6 SETTABLEKS                       R3 R2 K5 ["FillDirection"]
        8 GETIMPORT                        R3 K10 [Enum.SortOrder.LayoutOrder]
       10 SETTABLEKS                       R3 R2 K8 ["SortOrder"]
       12 GETIMPORT                        R3 K13 [Enum.VerticalAlignment.Center]
       14 SETTABLEKS                       R3 R2 K11 ["VerticalAlignment"]
       16 GETIMPORT                        R3 K15 [UDim.new]
       18 LOADN                            R4 0
       19 MOVE                             R5 R1
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K16 ["Padding"]
       23 SETTABLEKS                       R0 R2 K17 ["Parent"]
       25 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["TextLabel"]
        3 CALL                             R3 1 1
        4 LOADK                            R4 K4 ["Icon"]
        5 SETTABLEKS                       R4 R3 K5 ["Name"]
        7 LOADN                            R4 1
        8 SETTABLEKS                       R4 R3 K6 ["BackgroundTransparency"]
       10 GETIMPORT                        R4 K9 [UDim2.fromOffset]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K10 ["IconSize"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K10 ["IconSize"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K11 ["Size"]
       21 GETUPVAL                         R4 1
       22 SETTABLEKS                       R4 R3 K12 ["FontFace"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K10 ["IconSize"]
       27 SETTABLEKS                       R4 R3 K13 ["TextSize"]
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K14 ["ContentEmphasis"]
       32 SETTABLEKS                       R4 R3 K15 ["TextColor3"]
       34 SETTABLEKS                       R1 R3 K16 ["Text"]
       36 SETTABLEKS                       R2 R3 K17 ["ZIndex"]
       38 SETTABLEKS                       R0 R3 K18 ["Parent"]
       40 RETURN                           R3 1

PROTO_13:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["TextLabel"]
        3 CALL                             R3 1 1
        4 LOADK                            R4 K4 ["Label"]
        5 SETTABLEKS                       R4 R3 K5 ["Name"]
        7 LOADN                            R4 1
        8 SETTABLEKS                       R4 R3 K6 ["BackgroundTransparency"]
       10 GETIMPORT                        R4 K10 [Enum.AutomaticSize.X]
       12 SETTABLEKS                       R4 R3 K8 ["AutomaticSize"]
       14 GETIMPORT                        R4 K13 [UDim2.fromScale]
       16 LOADN                            R5 0
       17 LOADN                            R6 1
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K14 ["Size"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K15 ["TitleFont"]
       24 SETTABLEKS                       R4 R3 K16 ["FontFace"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K17 ["TextSize"]
       29 SETTABLEKS                       R4 R3 K17 ["TextSize"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K18 ["ContentEmphasis"]
       34 SETTABLEKS                       R4 R3 K19 ["TextColor3"]
       36 SETTABLEKS                       R1 R3 K20 ["Text"]
       38 SETTABLEKS                       R2 R3 K21 ["ZIndex"]
       40 SETTABLEKS                       R0 R3 K22 ["Parent"]
       42 RETURN                           R3 1

PROTO_14:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["TextButton"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R0 R2 K4 ["Name"]
        6 LOADK                            R3 K5 [""]
        7 SETTABLEKS                       R3 R2 K6 ["Text"]
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K7 ["AutoButtonColor"]
       12 LOADN                            R3 0
       13 SETTABLEKS                       R3 R2 K8 ["BorderSizePixel"]
       15 LOADN                            R3 1
       16 SETTABLEKS                       R3 R2 K9 ["BackgroundTransparency"]
       18 SETTABLEKS                       R1 R2 K10 ["ZIndex"]
       20 RETURN                           R2 1

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+12]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K1 ["Destroy"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 NAMECALL                         R0 R0 K1 ["Destroy"]
       17 CALL                             R0 1 0
       18 LOADNIL                          R0
       19 SETUPVAL                         R0 1
       20 LOADNIL                          R0
       21 SETUPVAL                         R0 2
       22 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AbsolutePosition"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["AbsolutePosition"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["AbsoluteSize"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K1 ["AbsoluteSize"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K1 ["AbsoluteSize"]
       18 GETUPVAL                         R7 4
       19 GETTABLEKS                       R7 R7 K2 ["Size_200"]
       21 GETUPVAL                         R8 4
       22 GETTABLEKS                       R8 R8 K3 ["TooltipArrowSize"]
       24 ADD                              R6 R7 R8
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R7 R7 K2 ["Size_200"]
       28 GETUPVAL                         R8 4
       29 GETTABLEKS                       R8 R8 K2 ["Size_200"]
       31 GETUPVAL                         R9 5
       32 JUMPIFNOTEQKS                    R9 K4 ["Beside"] ; [+85]
       34 GETTABLEKS                       R11 R2 K5 ["X"]
       36 GETTABLEKS                       R12 R3 K5 ["X"]
       38 ADD                              R10 R11 R12
       39 ADD                              R9 R10 R8
       40 GETTABLEKS                       R12 R2 K5 ["X"]
       42 SUB                              R11 R12 R8
       43 GETTABLEKS                       R12 R4 K5 ["X"]
       45 SUB                              R10 R11 R12
       46 GETTABLEKS                       R13 R5 K5 ["X"]
       48 SUB                              R12 R13 R7
       49 SUB                              R11 R12 R9
       50 SUB                              R12 R10 R7
       51 LOADB                            R13 1
       52 GETTABLEKS                       R14 R4 K5 ["X"]
       54 JUMPIFLE                         R14 R11 ; [+12]
       56 LOADB                            R13 0
       57 LOADN                            R14 0
       58 JUMPIFNOTLT                      R12 R14 ; [+8]
       60 GETTABLEKS                       R15 R4 K5 ["X"]
       62 SUB                              R14 R11 R15
       63 JUMPIFLE                         R12 R14 ; [+2]
       65 LOADB                            R13 0 +1
       66 LOADB                            R13 1
       67 GETTABLEKS                       R15 R0 K6 ["Y"]
       69 GETTABLEKS                       R17 R1 K6 ["Y"]
       71 DIVK                             R16 R17 K7 [2]
       72 ADD                              R14 R15 R16
       73 JUMPIFNOT                        R13 ; [+2]
       74 MOVE                             R15 R9
       75 JUMP                             ; [+1]
       76 MOVE                             R15 R10
       77 SUB                              R17 R14 R6
       78 GETTABLEKS                       R22 R5 K6 ["Y"]
       80 GETTABLEKS                       R23 R4 K6 ["Y"]
       82 SUB                              R21 R22 R23
       83 SUB                              R20 R21 R7
       84 FASTCALL2                        MATH_MAX R20 R7 ; [+4]
       86 MOVE                             R21 R7
       87 GETIMPORT                        R19 K10 [math.max]
       89 CALL                             R19 2 1
       90 FASTCALL3                        MATH_CLAMP R17 R7 R19
       92 MOVE                             R18 R7
       93 GETIMPORT                        R16 K12 [math.clamp]
       95 CALL                             R16 3 1
       96 GETUPVAL                         R17 2
       97 GETIMPORT                        R18 K15 [UDim2.fromOffset]
       99 MOVE                             R19 R15
      100 MOVE                             R20 R16
      101 CALL                             R18 2 1
      102 SETTABLEKS                       R18 R17 K16 ["Position"]
      104 GETUPVAL                         R17 6
      105 GETIMPORT                        R18 K15 [UDim2.fromOffset]
      107 JUMPIFNOT                        R13 ; [+2]
      108 MOVE                             R19 R15
      109 JUMP                             ; [+3]
      110 GETTABLEKS                       R20 R4 K5 ["X"]
      112 ADD                              R19 R15 R20
      113 MOVE                             R20 R14
      114 CALL                             R18 2 1
      115 SETTABLEKS                       R18 R17 K16 ["Position"]
      117 RETURN                           R0 0
      118 GETTABLEKS                       R10 R0 K5 ["X"]
      120 GETTABLEKS                       R12 R1 K5 ["X"]
      122 DIVK                             R11 R12 K7 [2]
      123 ADD                              R9 R10 R11
      124 SUB                              R11 R9 R6
      125 GETTABLEKS                       R16 R5 K5 ["X"]
      127 GETTABLEKS                       R17 R4 K5 ["X"]
      129 SUB                              R15 R16 R17
      130 SUB                              R14 R15 R7
      131 FASTCALL2                        MATH_MAX R14 R7 ; [+4]
      133 MOVE                             R15 R7
      134 GETIMPORT                        R13 K10 [math.max]
      136 CALL                             R13 2 1
      137 FASTCALL3                        MATH_CLAMP R11 R7 R13
      139 MOVE                             R12 R7
      140 GETIMPORT                        R10 K12 [math.clamp]
      142 CALL                             R10 3 1
      143 GETUPVAL                         R12 5
      144 JUMPIFNOTEQKS                    R12 K17 ["Top"] ; [+8]
      146 GETTABLEKS                       R13 R2 K6 ["Y"]
      148 SUB                              R12 R13 R8
      149 GETTABLEKS                       R13 R4 K6 ["Y"]
      151 SUB                              R11 R12 R13
      152 JUMP                             ; [+6]
      153 GETTABLEKS                       R13 R2 K6 ["Y"]
      155 GETTABLEKS                       R14 R3 K6 ["Y"]
      157 ADD                              R12 R13 R14
      158 ADD                              R11 R12 R8
      159 GETUPVAL                         R12 2
      160 GETIMPORT                        R13 K15 [UDim2.fromOffset]
      162 MOVE                             R14 R10
      163 MOVE                             R15 R11
      164 CALL                             R13 2 1
      165 SETTABLEKS                       R13 R12 K16 ["Position"]
      167 GETUPVAL                         R12 6
      168 GETIMPORT                        R13 K15 [UDim2.fromOffset]
      170 MOVE                             R14 R9
      171 GETUPVAL                         R16 5
      172 JUMPIFNOTEQKS                    R16 K17 ["Top"] ; [+5]
      174 GETTABLEKS                       R16 R4 K6 ["Y"]
      176 ADD                              R15 R11 R16
      177 JUMP                             ; [+1]
      178 MOVE                             R15 R11
      179 CALL                             R13 2 1
      180 SETTABLEKS                       R13 R12 K16 ["Position"]
      182 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 3
        8 SETUPVAL                         R0 2
        9 GETUPVAL                         R2 4
       10 FASTCALL1                        TYPEOF R2 ; [+2]
       11 GETIMPORT                        R1 K1 [typeof]
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+4]
       16 GETUPVAL                         R0 4
       17 CALL                             R0 0 1
       18 JUMP                             ; [+1]
       19 GETUPVAL                         R0 4
       20 GETIMPORT                        R1 K5 [Instance.new]
       22 LOADK                            R2 K6 ["Frame"]
       23 CALL                             R1 1 1
       24 SETUPVAL                         R1 5
       25 GETUPVAL                         R1 5
       26 LOADK                            R2 K7 ["Tooltip"]
       27 SETTABLEKS                       R2 R1 K8 ["Name"]
       29 GETUPVAL                         R1 5
       30 GETUPVAL                         R2 6
       31 GETTABLEKS                       R2 R2 K9 ["InverseSurface"]
       33 SETTABLEKS                       R2 R1 K10 ["BackgroundColor3"]
       35 GETUPVAL                         R1 5
       36 LOADN                            R2 0
       37 SETTABLEKS                       R2 R1 K11 ["BorderSizePixel"]
       39 GETUPVAL                         R1 5
       40 GETIMPORT                        R2 K15 [Enum.AutomaticSize.XY]
       42 SETTABLEKS                       R2 R1 K13 ["AutomaticSize"]
       44 GETUPVAL                         R1 5
       45 LOADN                            R2 101
       46 SETTABLEKS                       R2 R1 K16 ["ZIndex"]
       48 GETUPVAL                         R1 5
       49 GETUPVAL                         R2 7
       50 GETTABLEKS                       R2 R2 K17 ["RadiusSmall"]
       52 GETIMPORT                        R3 K5 [Instance.new]
       54 LOADK                            R4 K18 ["UICorner"]
       55 CALL                             R3 1 1
       56 SETTABLEKS                       R2 R3 K19 ["CornerRadius"]
       58 SETTABLEKS                       R1 R3 K20 ["Parent"]
       60 GETUPVAL                         R1 8
       61 GETUPVAL                         R2 5
       62 GETUPVAL                         R3 7
       63 GETTABLEKS                       R3 R3 K21 ["Size_150"]
       65 GETUPVAL                         R4 7
       66 GETTABLEKS                       R4 R4 K22 ["Size_200"]
       68 GETUPVAL                         R5 7
       69 GETTABLEKS                       R5 R5 K22 ["Size_200"]
       71 GETUPVAL                         R6 7
       72 GETTABLEKS                       R6 R6 K22 ["Size_200"]
       74 CALL                             R1 5 0
       75 GETIMPORT                        R1 K5 [Instance.new]
       77 LOADK                            R2 K23 ["UIListLayout"]
       78 CALL                             R1 1 1
       79 GETIMPORT                        R2 K26 [Enum.SortOrder.LayoutOrder]
       81 SETTABLEKS                       R2 R1 K24 ["SortOrder"]
       83 GETIMPORT                        R2 K28 [UDim.new]
       85 LOADN                            R3 0
       86 GETUPVAL                         R4 7
       87 GETTABLEKS                       R4 R4 K29 ["Size_100"]
       89 CALL                             R2 2 1
       90 SETTABLEKS                       R2 R1 K30 ["Padding"]
       92 GETUPVAL                         R2 5
       93 SETTABLEKS                       R2 R1 K20 ["Parent"]
       95 GETUPVAL                         R2 9
       96 GETUPVAL                         R3 5
       97 GETUPVAL                         R4 10
       98 GETTABLEKS                       R5 R0 K31 ["title"]
      100 CALL                             R4 1 1
      101 LOADN                            R5 102
      102 CALL                             R2 3 1
      103 GETIMPORT                        R3 K15 [Enum.AutomaticSize.XY]
      105 SETTABLEKS                       R3 R2 K13 ["AutomaticSize"]
      107 GETIMPORT                        R3 K33 [UDim2.new]
      109 CALL                             R3 0 1
      110 SETTABLEKS                       R3 R2 K34 ["Size"]
      112 GETUPVAL                         R3 6
      113 GETTABLEKS                       R3 R3 K35 ["InverseContentEmphasis"]
      115 SETTABLEKS                       R3 R2 K36 ["TextColor3"]
      117 GETUPVAL                         R3 7
      118 GETTABLEKS                       R3 R3 K37 ["LineHeight"]
      120 SETTABLEKS                       R3 R2 K37 ["LineHeight"]
      122 LOADN                            R3 1
      123 SETTABLEKS                       R3 R2 K25 ["LayoutOrder"]
      125 GETUPVAL                         R3 9
      126 GETUPVAL                         R4 5
      127 GETUPVAL                         R5 10
      128 GETTABLEKS                       R6 R0 K38 ["body"]
      130 CALL                             R5 1 1
      131 LOADN                            R6 102
      132 CALL                             R3 3 1
      133 GETIMPORT                        R4 K15 [Enum.AutomaticSize.XY]
      135 SETTABLEKS                       R4 R3 K13 ["AutomaticSize"]
      137 GETIMPORT                        R4 K33 [UDim2.new]
      139 CALL                             R4 0 1
      140 SETTABLEKS                       R4 R3 K34 ["Size"]
      142 GETUPVAL                         R4 7
      143 GETTABLEKS                       R4 R4 K39 ["BodyFont"]
      145 SETTABLEKS                       R4 R3 K40 ["FontFace"]
      147 GETUPVAL                         R4 6
      148 GETTABLEKS                       R4 R4 K41 ["InverseContentDefault"]
      150 SETTABLEKS                       R4 R3 K36 ["TextColor3"]
      152 LOADB                            R4 1
      153 SETTABLEKS                       R4 R3 K42 ["TextWrapped"]
      155 GETIMPORT                        R4 K45 [Enum.TextXAlignment.Left]
      157 SETTABLEKS                       R4 R3 K43 ["TextXAlignment"]
      159 GETUPVAL                         R4 7
      160 GETTABLEKS                       R4 R4 K37 ["LineHeight"]
      162 SETTABLEKS                       R4 R3 K37 ["LineHeight"]
      164 LOADN                            R4 2
      165 SETTABLEKS                       R4 R3 K25 ["LayoutOrder"]
      167 GETIMPORT                        R4 K5 [Instance.new]
      169 LOADK                            R5 K46 ["UISizeConstraint"]
      170 CALL                             R4 1 1
      171 GETIMPORT                        R5 K48 [Vector2.new]
      173 GETUPVAL                         R7 7
      174 GETTABLEKS                       R7 R7 K49 ["TooltipMaxWidth"]
      176 LOADN                            R9 2
      177 GETUPVAL                         R10 7
      178 GETTABLEKS                       R10 R10 K22 ["Size_200"]
      180 MUL                              R8 R9 R10
      181 SUB                              R6 R7 R8
      182 LOADK                            R7 K50 [Infinity]
      183 CALL                             R5 2 1
      184 SETTABLEKS                       R5 R4 K51 ["MaxSize"]
      186 SETTABLEKS                       R3 R4 K20 ["Parent"]
      188 GETIMPORT                        R5 K5 [Instance.new]
      190 LOADK                            R6 K6 ["Frame"]
      191 CALL                             R5 1 1
      192 SETUPVAL                         R5 11
      193 GETUPVAL                         R5 11
      194 LOADK                            R6 K52 ["TooltipArrow"]
      195 SETTABLEKS                       R6 R5 K8 ["Name"]
      197 GETUPVAL                         R5 11
      198 GETUPVAL                         R6 6
      199 GETTABLEKS                       R6 R6 K9 ["InverseSurface"]
      201 SETTABLEKS                       R6 R5 K10 ["BackgroundColor3"]
      203 GETUPVAL                         R5 11
      204 LOADN                            R6 0
      205 SETTABLEKS                       R6 R5 K11 ["BorderSizePixel"]
      207 GETUPVAL                         R5 11
      208 GETIMPORT                        R6 K48 [Vector2.new]
      210 LOADK                            R7 K53 [0.5]
      211 LOADK                            R8 K53 [0.5]
      212 CALL                             R6 2 1
      213 SETTABLEKS                       R6 R5 K54 ["AnchorPoint"]
      215 GETUPVAL                         R5 11
      216 GETIMPORT                        R6 K56 [UDim2.fromOffset]
      218 GETUPVAL                         R7 7
      219 GETTABLEKS                       R7 R7 K57 ["TooltipArrowSize"]
      221 GETUPVAL                         R8 7
      222 GETTABLEKS                       R8 R8 K57 ["TooltipArrowSize"]
      224 CALL                             R6 2 1
      225 SETTABLEKS                       R6 R5 K34 ["Size"]
      227 GETUPVAL                         R5 11
      228 LOADN                            R6 45
      229 SETTABLEKS                       R6 R5 K58 ["Rotation"]
      231 GETUPVAL                         R5 11
      232 LOADN                            R6 100
      233 SETTABLEKS                       R6 R5 K16 ["ZIndex"]
      235 GETUPVAL                         R5 5
      236 GETUPVAL                         R6 12
      237 SETTABLEKS                       R6 R5 K20 ["Parent"]
      239 GETUPVAL                         R5 11
      240 GETUPVAL                         R6 12
      241 SETTABLEKS                       R6 R5 K20 ["Parent"]
      243 GETUPVAL                         R5 5
      244 LOADK                            R7 K59 ["AbsoluteSize"]
      245 NAMECALL                         R5 R5 K60 ["GetPropertyChangedSignal"]
      247 CALL                             R5 2 1
      248 GETUPVAL                         R7 14
      249 NAMECALL                         R5 R5 K61 ["Connect"]
      251 CALL                             R5 2 1
      252 SETUPVAL                         R5 13
      253 GETUPVAL                         R5 14
      254 CALL                             R5 0 0
      255 RETURN                           R0 0

PROTO_19:
        0 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+5]
        4 GETUPVAL                         R0 0
        5 CALL                             R0 0 0
        6 DUPCLOSURE                       R0 K0 [PROTO_19]
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_21:
        0 JUMPIFNOT                        R3 ; [+3]
        1 GETTABLEKS                       R4 R3 K0 ["edgeOf"]
        3 JUMPIF                           R4 ; [+1]
        4 MOVE                             R4 R0
        5 JUMPIFNOT                        R3 ; [+3]
        6 GETTABLEKS                       R5 R3 K1 ["inMenu"]
        8 JUMPIF                           R5 ; [+1]
        9 LOADB                            R5 0
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 LOADNIL                          R8
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          REF R8
       15 CAPTURE                          REF R6
       16 CAPTURE                          REF R7
       17 NEWCLOSURE                       R10 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R4
       20 CAPTURE                          REF R6
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          REF R7
       25 NEWCLOSURE                       R11 P2
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R5
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R9
       30 CAPTURE                          VAL R1
       31 CAPTURE                          REF R6
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          REF R7
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          REF R8
       40 CAPTURE                          VAL R10
       41 GETTABLEKS                       R12 R0 K2 ["MouseEnter"]
       43 MOVE                             R14 R11
       44 NAMECALL                         R12 R12 K3 ["Connect"]
       46 CALL                             R12 2 0
       47 GETTABLEKS                       R12 R0 K4 ["MouseLeave"]
       49 NEWCLOSURE                       R14 P3
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          VAL R9
       52 NAMECALL                         R12 R12 K3 ["Connect"]
       54 CALL                             R12 2 0
       55 CLOSEUPVALS                      R6
       56 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Normal"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Name"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R4 3
        8 NAMECALL                         R2 R2 K2 ["FormatByKey"]
       10 CALL                             R2 2 1
       11 SETTABLE                         R2 R0 R1
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K3 ["Hover"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K1 ["Name"]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R4 4
       20 NAMECALL                         R2 R2 K2 ["FormatByKey"]
       22 CALL                             R2 2 1
       23 SETTABLE                         R2 R0 R1
       24 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 1
        1 LOADK                            R2 K0 ["ViewSelectorScreenGui"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 0
        7 JUMPIFNOT                        R0 ; [+9]
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K2 ["Destroy"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 LOADK                            R2 K3 ["ViewSelectorAfterCamera"]
       14 NAMECALL                         R0 R0 K4 ["UnbindFromRenderStep"]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 3
       18 JUMPIFNOT                        R0 ; [+13]
       19 GETIMPORT                        R0 K6 [script]
       21 GETTABLEKS                       R0 R0 K7 ["Parent"]
       23 GETTABLEKS                       R0 R0 K8 ["Assets"]
       25 GETTABLEKS                       R0 R0 K0 ["ViewSelectorScreenGui"]
       27 NAMECALL                         R0 R0 K9 ["Clone"]
       29 CALL                             R0 1 1
       30 SETUPVAL                         R0 0
       31 JUMP                             ; [+6]
       32 GETUPVAL                         R0 4
       33 LOADK                            R2 K10 ["rbxasset://models/ViewSelector/ViewSelector.rbxm"]
       34 NAMECALL                         R0 R0 K11 ["LoadLocalAsset"]
       36 CALL                             R0 2 1
       37 SETUPVAL                         R0 0
       38 GETUPVAL                         R0 0
       39 GETUPVAL                         R1 1
       40 SETTABLEKS                       R1 R0 K7 ["Parent"]
       42 GETUPVAL                         R0 0
       43 LOADB                            R1 0
       44 SETTABLEKS                       R1 R0 K12 ["Enabled"]
       46 GETUPVAL                         R0 0
       47 LOADK                            R2 K13 ["Panel"]
       48 NAMECALL                         R0 R0 K14 ["WaitForChild"]
       50 CALL                             R0 2 1
       51 SETUPVAL                         R0 5
       52 GETUPVAL                         R0 5
       53 LOADK                            R2 K15 ["Viewport"]
       54 NAMECALL                         R0 R0 K14 ["WaitForChild"]
       56 CALL                             R0 2 1
       57 SETUPVAL                         R0 6
       58 GETUPVAL                         R0 6
       59 GETTABLEKS                       R0 R0 K16 ["AbsoluteSize"]
       61 GETTABLEKS                       R0 R0 K17 ["x"]
       63 SETUPVAL                         R0 7
       64 GETUPVAL                         R0 6
       65 LOADK                            R2 K18 ["EventReceiver"]
       66 NAMECALL                         R0 R0 K14 ["WaitForChild"]
       68 CALL                             R0 2 1
       69 SETUPVAL                         R0 8
       70 GETUPVAL                         R0 8
       71 GETIMPORT                        R1 K21 [UDim2.new]
       73 LOADN                            R2 1
       74 LOADN                            R3 0
       75 LOADN                            R4 0
       76 GETUPVAL                         R5 7
       77 CALL                             R1 4 1
       78 SETTABLEKS                       R1 R0 K22 ["Size"]
       80 GETUPVAL                         R0 6
       81 LOADK                            R2 K23 ["Model"]
       82 NAMECALL                         R0 R0 K14 ["WaitForChild"]
       84 CALL                             R0 2 1
       85 SETUPVAL                         R0 9
       86 GETUPVAL                         R0 5
       87 LOADK                            R2 K24 ["X"]
       88 NAMECALL                         R0 R0 K14 ["WaitForChild"]
       90 CALL                             R0 2 1
       91 SETUPVAL                         R0 10
       92 GETUPVAL                         R0 5
       93 LOADK                            R2 K25 ["Y"]
       94 NAMECALL                         R0 R0 K14 ["WaitForChild"]
       96 CALL                             R0 2 1
       97 SETUPVAL                         R0 11
       98 GETUPVAL                         R0 5
       99 LOADK                            R2 K26 ["Z"]
      100 NAMECALL                         R0 R0 K14 ["WaitForChild"]
      102 CALL                             R0 2 1
      103 SETUPVAL                         R0 12
      104 GETUPVAL                         R0 5
      105 LOADK                            R2 K27 ["ArrowButtons"]
      106 NAMECALL                         R0 R0 K14 ["WaitForChild"]
      108 CALL                             R0 2 1
      109 SETUPVAL                         R0 13
      110 GETUPVAL                         R0 13
      111 LOADB                            R1 0
      112 SETTABLEKS                       R1 R0 K28 ["Visible"]
      114 LOADB                            R0 0
      115 SETUPVAL                         R0 14
      116 GETIMPORT                        R0 K30 [game]
      118 LOADK                            R2 K31 ["NextGenDraggersEnabledFeature"]
      119 NAMECALL                         R0 R0 K32 ["GetEngineFeature"]
      121 CALL                             R0 2 1
      122 JUMPIFNOT                        R0 ; [+36]
      123 GETUPVAL                         R0 10
      124 GETUPVAL                         R1 15
      125 SETTABLEKS                       R1 R0 K33 ["TextColor3"]
      127 GETUPVAL                         R0 11
      128 GETUPVAL                         R1 16
      129 SETTABLEKS                       R1 R0 K33 ["TextColor3"]
      131 GETUPVAL                         R0 12
      132 GETUPVAL                         R1 17
      133 SETTABLEKS                       R1 R0 K33 ["TextColor3"]
      135 GETUPVAL                         R0 9
      136 LOADK                            R2 K17 ["x"]
      137 NAMECALL                         R0 R0 K14 ["WaitForChild"]
      139 CALL                             R0 2 1
      140 GETUPVAL                         R1 9
      141 LOADK                            R3 K34 ["y"]
      142 NAMECALL                         R1 R1 K14 ["WaitForChild"]
      144 CALL                             R1 2 1
      145 GETUPVAL                         R2 9
      146 LOADK                            R4 K35 ["z"]
      147 NAMECALL                         R2 R2 K14 ["WaitForChild"]
      149 CALL                             R2 2 1
      150 GETUPVAL                         R3 15
      151 SETTABLEKS                       R3 R0 K36 ["Color"]
      153 GETUPVAL                         R3 16
      154 SETTABLEKS                       R3 R1 K36 ["Color"]
      156 GETUPVAL                         R3 17
      157 SETTABLEKS                       R3 R2 K36 ["Color"]
      159 GETIMPORT                        R0 K38 [Instance.new]
      161 LOADK                            R1 K39 ["Camera"]
      162 CALL                             R0 1 1
      163 SETUPVAL                         R0 18
      164 GETUPVAL                         R0 18
      165 GETUPVAL                         R1 6
      166 SETTABLEKS                       R1 R0 K7 ["Parent"]
      168 GETUPVAL                         R0 18
      169 GETIMPORT                        R1 K41 [CFrame.new]
      171 LOADK                            R2 K42 [{0, 0, 0}]
      172 LOADK                            R3 K43 [{0, 0, -1}]
      173 CALL                             R1 2 1
      174 SETTABLEKS                       R1 R0 K40 ["CFrame"]
      176 GETUPVAL                         R0 18
      177 LOADN                            R1 70
      178 SETTABLEKS                       R1 R0 K44 ["FieldOfView"]
      180 GETUPVAL                         R0 6
      181 GETUPVAL                         R1 18
      182 SETTABLEKS                       R1 R0 K45 ["CurrentCamera"]
      184 GETIMPORT                        R0 K6 [script]
      186 GETTABLEKS                       R0 R0 K7 ["Parent"]
      188 GETTABLEKS                       R0 R0 K46 ["LocalizedStrings"]
      190 GETUPVAL                         R3 20
      191 GETTABLEKS                       R3 R3 K47 ["StudioLocaleId"]
      193 NAMECALL                         R1 R0 K48 ["GetTranslator"]
      195 CALL                             R1 2 1
      196 SETUPVAL                         R1 19
      197 LOADK                            R3 K49 ["en-us"]
      198 NAMECALL                         R1 R0 K48 ["GetTranslator"]
      200 CALL                             R1 2 1
      201 SETUPVAL                         R1 21
      202 GETIMPORT                        R1 K6 [script]
      204 GETTABLEKS                       R1 R1 K7 ["Parent"]
      206 GETTABLEKS                       R1 R1 K50 ["Resources"]
      208 GETTABLEKS                       R1 R1 K51 ["Localization"]
      210 LOADK                            R4 K46 ["LocalizedStrings"]
      211 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
      213 CALL                             R2 2 1
      214 JUMPIFNOT                        R2 ; [+11]
      215 GETUPVAL                         R4 22
      216 GETUPVAL                         R7 20
      217 GETTABLEKS                       R7 R7 K47 ["StudioLocaleId"]
      219 NAMECALL                         R5 R2 K48 ["GetTranslator"]
      221 CALL                             R5 2 -1
      222 FASTCALL                         TABLE_INSERT ; [+2]
      223 GETIMPORT                        R3 K54 [table.insert]
      225 CALL                             R3 -1 0
      226 GETUPVAL                         R4 22
      227 GETTABLEKS                       R5 R1 K55 ["SourceStrings"]
      229 LOADK                            R7 K49 ["en-us"]
      230 NAMECALL                         R5 R5 K48 ["GetTranslator"]
      232 CALL                             R5 2 -1
      233 FASTCALL                         TABLE_INSERT ; [+2]
      234 GETIMPORT                        R3 K54 [table.insert]
      236 CALL                             R3 -1 0
      237 GETUPVAL                         R3 9
      238 NAMECALL                         R3 R3 K56 ["GetChildren"]
      240 CALL                             R3 1 1
      241 LOADN                            R6 1
      242 LENGTH                           R4 R3
      243 LOADN                            R5 1
      244 FORNPREP                         R4
      245 GETTABLE                         R7 R3 R6
      246 GETTABLEKS                       R8 R7 K57 ["ClassName"]
      248 JUMPIFEQKS                       R8 K58 ["Part"] ; [+5]
      250 GETTABLEKS                       R8 R7 K57 ["ClassName"]
      252 JUMPIFNOTEQKS                    R8 K59 ["MeshPart"] ; [+12]
      254 GETUPVAL                         R8 9
      255 GETTABLEKS                       R8 R8 K40 ["CFrame"]
      257 GETTABLEKS                       R10 R7 K40 ["CFrame"]
      259 NAMECALL                         R8 R8 K60 ["ToObjectSpace"]
      261 CALL                             R8 2 1
      262 SETTABLEKS                       R8 R7 K40 ["CFrame"]
      264 JUMP                             ; [+51]
      265 GETTABLEKS                       R8 R7 K57 ["ClassName"]
      267 JUMPIFNOTEQKS                    R8 K61 ["Decal"] ; [+48]
      269 GETTABLEKS                       R8 R7 K62 ["Name"]
      271 GETTABLEKS                       R10 R7 K62 ["Name"]
      273 LOADK                            R11 K63 ["_hover"]
      274 CONCAT                           R9 R10 R11
      275 NEWCLOSURE                       R11 P0
      276 CAPTURE                          UPVAL U23
      277 CAPTURE                          VAL R7
      278 CAPTURE                          UPVAL U19
      279 CAPTURE                          VAL R8
      280 CAPTURE                          VAL R9
      281 FASTPCALL                        pcall 1 ; [+2]
      282 GETIMPORT                        R10 K65 [pcall]
      284 CALL                             R10 1 1
      285 JUMPIF                           R10 ; [+22]
      286 GETUPVAL                         R11 23
      287 GETTABLEKS                       R11 R11 K66 ["Normal"]
      289 GETTABLEKS                       R12 R7 K62 ["Name"]
      291 GETUPVAL                         R13 21
      292 MOVE                             R15 R8
      293 NAMECALL                         R13 R13 K67 ["FormatByKey"]
      295 CALL                             R13 2 1
      296 SETTABLE                         R13 R11 R12
      297 GETUPVAL                         R11 23
      298 GETTABLEKS                       R11 R11 K68 ["Hover"]
      300 GETTABLEKS                       R12 R7 K62 ["Name"]
      302 GETUPVAL                         R13 21
      303 MOVE                             R15 R9
      304 NAMECALL                         R13 R13 K67 ["FormatByKey"]
      306 CALL                             R13 2 1
      307 SETTABLE                         R13 R11 R12
      308 GETUPVAL                         R12 23
      309 GETTABLEKS                       R12 R12 K66 ["Normal"]
      311 GETTABLEKS                       R13 R7 K62 ["Name"]
      313 GETTABLE                         R11 R12 R13
      314 SETTABLEKS                       R11 R7 K69 ["Texture"]
      316 FORNLOOP                         R4
      317 GETUPVAL                         R4 9
      318 GETIMPORT                        R5 K41 [CFrame.new]
      320 CALL                             R5 0 1
      321 SETTABLEKS                       R5 R4 K40 ["CFrame"]
      323 NEWTABLE                         R4 0 3
      325 LOADK                            R5 K70 ["n"]
      326 LOADK                            R6 K71 ["0"]
      327 LOADK                            R7 K72 ["p"]
      328 SETLIST                          R4 R5 3 [1]
      330 LOADN                            R7 -1
      331 LOADN                            R5 1
      332 LOADN                            R6 1
      333 FORNPREP                         R5
      334 LOADN                            R10 -1
      335 LOADN                            R8 1
      336 LOADN                            R9 1
      337 FORNPREP                         R8
      338 LOADN                            R13 -1
      339 LOADN                            R11 1
      340 LOADN                            R12 1
      341 FORNPREP                         R11
      342 ADDK                             R16 R7 K73 [2]
      343 GETTABLE                         R15 R4 R16
      344 ADDK                             R17 R10 K73 [2]
      345 GETTABLE                         R16 R4 R17
      346 ADDK                             R18 R13 K73 [2]
      347 GETTABLE                         R17 R4 R18
      348 CONCAT                           R14 R15 R17
      349 GETUPVAL                         R15 24
      350 GETIMPORT                        R16 K41 [CFrame.new]
      352 FASTCALL                         VECTOR ; [+2]
      353 GETIMPORT                        R17 K75 [Vector3.new]
      355 CALL                             R17 0 1
      356 MINUS                            R19 R7
      357 MINUS                            R20 R10
      358 MINUS                            R21 R13
      359 FASTCALL                         VECTOR ; [+2]
      360 GETIMPORT                        R18 K75 [Vector3.new]
      362 CALL                             R18 3 1
      363 GETTABLEKS                       R18 R18 K76 ["Unit"]
      365 CALL                             R16 2 1
      366 SETTABLE                         R16 R15 R14
      367 FORNLOOP                         R11
      368 FORNLOOP                         R8
      369 FORNLOOP                         R5
      370 GETUPVAL                         R5 24
      371 GETIMPORT                        R6 K78 [CFrame.fromEulerAnglesYXZ]
      373 LOADK                            R7 K79 [-1.5707963267948966]
      374 LOADK                            R8 K80 [3.141592653589793]
      375 LOADN                            R9 0
      376 CALL                             R6 3 1
      377 SETTABLEKS                       R6 R5 K81 ["0p0"]
      379 GETUPVAL                         R5 24
      380 GETIMPORT                        R6 K83 [CFrame.fromEulerAnglesXYZ]
      382 LOADK                            R7 K79 [-1.5707963267948966]
      383 LOADK                            R8 K80 [3.141592653589793]
      384 LOADN                            R9 0
      385 CALL                             R6 3 1
      386 SETTABLEKS                       R6 R5 K84 ["0n0"]
      388 LOADK                            R5 K85 [{0.576, -0.48, -0.48}]
      389 SETUPVAL                         R5 25
      390 LOADK                            R5 K86 [{-0.48, 0.576, -0.48}]
      391 SETUPVAL                         R5 26
      392 LOADK                            R5 K87 [{-0.48, -0.48, 0.576}]
      393 SETUPVAL                         R5 27
      394 GETIMPORT                        R5 K89 [plugin]
      396 LOADK                            R7 K90 ["ViewSelector_Active"]
      397 NAMECALL                         R5 R5 K91 ["GetSetting"]
      399 CALL                             R5 2 1
      400 SETUPVAL                         R5 28
      401 GETUPVAL                         R5 28
      402 JUMPIFNOTEQKNIL                  R5 ; [+3]
      404 LOADB                            R5 1
      405 SETUPVAL                         R5 28
      406 GETUPVAL                         R5 29
      407 GETUPVAL                         R7 28
      408 NAMECALL                         R5 R5 K92 ["SetActive"]
      410 CALL                             R5 2 0
      411 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Workspace"]
        4 GETTABLEKS                       R0 R0 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R0 R0 K4 ["CameraType"]
        8 GETIMPORT                        R1 K7 [Enum.CameraType.Attach]
       10 JUMPIFEQ                         R0 R1 ; [+5]
       12 GETIMPORT                        R1 K9 [Enum.CameraType.Scriptable]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADB                            R1 1
       17 RETURN                           R1 1
       18 LOADB                            R1 0
       19 RETURN                           R1 1

PROTO_25:
        0 FASTCALL1                        MATH_ABS R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K2 [math.abs]
        4 CALL                             R2 1 1
        5 LOADK                            R3 K3 [0.001]
        6 JUMPIFNOTLT                      R3 R2 ; [+31]
        8 ADDK                             R3 R0 K4 [0.48]
        9 DIV                              R2 R3 R1
       10 SUBK                             R4 R0 K4 [0.48]
       11 DIV                              R3 R4 R1
       12 JUMPIFNOTLT                      R3 R2 ; [+4]
       14 MOVE                             R4 R3
       15 MOVE                             R3 R2
       16 MOVE                             R2 R4
       17 GETUPVAL                         R4 0
       18 JUMPIFNOTLT                      R4 R2 ; [+2]
       20 SETUPVAL                         R2 0
       21 GETUPVAL                         R4 1
       22 JUMPIFNOTLT                      R3 R4 ; [+2]
       24 SETUPVAL                         R3 1
       25 GETUPVAL                         R4 0
       26 GETUPVAL                         R5 1
       27 JUMPIFNOTLT                      R5 R4 ; [+3]
       29 LOADN                            R4 0
       30 RETURN                           R4 1
       31 GETUPVAL                         R4 1
       32 LOADN                            R5 0
       33 JUMPIFNOTLT                      R4 R5 ; [+16]
       35 LOADN                            R4 0
       36 RETURN                           R4 1
       37 RETURN                           R0 0
       38 MINUS                            R3 R0
       39 SUBK                             R2 R3 K4 [0.48]
       40 LOADN                            R3 0
       41 JUMPIFLT                         R3 R2 ; [+6]
       43 MINUS                            R3 R0
       44 ADDK                             R2 R3 K4 [0.48]
       45 LOADN                            R3 0
       46 JUMPIFNOTLT                      R2 R3 ; [+3]
       48 LOADN                            R2 0
       49 RETURN                           R2 1
       50 RETURN                           R0 0

PROTO_26:
        0 LOADN                            R2 -100
        1 LOADN                            R3 100
        2 MINUS                            R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          REF R2
        5 CAPTURE                          REF R3
        6 MOVE                             R6 R5
        7 GETTABLEKS                       R7 R4 K0 ["X"]
        9 GETTABLEKS                       R8 R1 K0 ["X"]
       11 CALL                             R6 2 1
       12 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
       14 CLOSEUPVALS                      R2
       15 RETURN                           R0 0
       16 MOVE                             R6 R5
       17 GETTABLEKS                       R7 R4 K2 ["Y"]
       19 GETTABLEKS                       R8 R1 K2 ["Y"]
       21 CALL                             R6 2 1
       22 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
       24 CLOSEUPVALS                      R2
       25 RETURN                           R0 0
       26 MOVE                             R6 R5
       27 GETTABLEKS                       R7 R4 K3 ["Z"]
       29 GETTABLEKS                       R8 R1 K3 ["Z"]
       31 CALL                             R6 2 1
       32 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
       34 CLOSEUPVALS                      R2
       35 RETURN                           R0 0
       36 LOADN                            R6 0
       37 JUMPIFNOTLT                      R6 R2 ; [+5]
       39 MUL                              R7 R1 R2
       40 ADD                              R6 R0 R7
       41 CLOSEUPVALS                      R2
       42 RETURN                           R6 1
       43 MUL                              R7 R1 R3
       44 ADD                              R6 R0 R7
       45 CLOSEUPVALS                      R2
       46 RETURN                           R6 1

PROTO_27:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        4 JUMPIFNOTEQKS                    R1 K1 ["Decal"] ; [+10]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Hover"]
        9 GETTABLEKS                       R3 R0 K3 ["Name"]
       11 GETTABLE                         R1 R2 R3
       12 SETTABLEKS                       R1 R0 K4 ["Texture"]
       14 RETURN                           R0 0
       15 LOADK                            R1 K5 [0.3]
       16 SETTABLEKS                       R1 R0 K6 ["Transparency"]
       18 RETURN                           R0 0

PROTO_28:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        4 JUMPIFNOTEQKS                    R1 K1 ["Decal"] ; [+10]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Normal"]
        9 GETTABLEKS                       R3 R0 K3 ["Name"]
       11 GETTABLE                         R1 R2 R3
       12 SETTABLEKS                       R1 R0 K4 ["Texture"]
       14 RETURN                           R0 0
       15 LOADN                            R1 1
       16 SETTABLEKS                       R1 R0 K5 ["Transparency"]
       18 RETURN                           R0 0

PROTO_29:
        0 LOADN                            R1 0
        1 JUMPIFNOTLE                      R1 R0 ; [+3]
        3 LOADK                            R1 K0 ["p"]
        4 RETURN                           R1 1
        5 LOADK                            R1 K1 ["n"]
        6 RETURN                           R1 1

PROTO_30:
        0 GETTABLEKS                       R5 R0 K0 ["x"]
        2 FASTCALL1                        MATH_ABS R5 ; [+2]
        3 GETIMPORT                        R4 K3 [math.abs]
        5 CALL                             R4 1 1
        6 MOVE                             R1 R4
        7 GETTABLEKS                       R5 R0 K4 ["y"]
        9 FASTCALL1                        MATH_ABS R5 ; [+2]
       10 GETIMPORT                        R4 K3 [math.abs]
       12 CALL                             R4 1 1
       13 MOVE                             R2 R4
       14 GETTABLEKS                       R4 R0 K5 ["z"]
       16 FASTCALL1                        MATH_ABS R4 ; [+2]
       17 GETIMPORT                        R3 K3 [math.abs]
       19 CALL                             R3 1 1
       20 DUPCLOSURE                       R4 K6 [PROTO_29]
       21 ADD                              R6 R1 R2
       22 ADD                              R5 R6 R3
       23 LOADK                            R6 K7 [1.056]
       24 JUMPIFNOTLT                      R6 R5 ; [+27]
       26 GETTABLEKS                       R7 R0 K0 ["x"]
       28 LOADN                            R8 0
       29 JUMPIFNOTLE                      R8 R7 ; [+3]
       31 LOADK                            R6 K8 ["p"]
       32 JUMP                             ; [+1]
       33 LOADK                            R6 K9 ["n"]
       34 GETTABLEKS                       R8 R0 K4 ["y"]
       36 LOADN                            R9 0
       37 JUMPIFNOTLE                      R9 R8 ; [+3]
       39 LOADK                            R7 K8 ["p"]
       40 JUMP                             ; [+1]
       41 LOADK                            R7 K9 ["n"]
       42 GETTABLEKS                       R9 R0 K5 ["z"]
       44 LOADN                            R10 0
       45 JUMPIFNOTLE                      R10 R9 ; [+3]
       47 LOADK                            R8 K8 ["p"]
       48 JUMP                             ; [+1]
       49 LOADK                            R8 K9 ["n"]
       50 CONCAT                           R5 R6 R8
       51 RETURN                           R5 1
       52 JUMPIFNOTLT                      R2 R1 ; [+14]
       54 JUMPIFNOTLT                      R3 R1 ; [+12]
       56 GETTABLEKS                       R7 R0 K0 ["x"]
       58 LOADN                            R8 0
       59 JUMPIFNOTLE                      R8 R7 ; [+3]
       61 LOADK                            R6 K8 ["p"]
       62 JUMP                             ; [+1]
       63 LOADK                            R6 K9 ["n"]
       64 LOADK                            R7 K10 ["00"]
       65 CONCAT                           R5 R6 R7
       66 RETURN                           R5 1
       67 JUMPIFNOTLT                      R1 R2 ; [+15]
       69 JUMPIFNOTLT                      R3 R2 ; [+13]
       71 LOADK                            R6 K11 ["0"]
       72 GETTABLEKS                       R8 R0 K4 ["y"]
       74 LOADN                            R9 0
       75 JUMPIFNOTLE                      R9 R8 ; [+3]
       77 LOADK                            R7 K8 ["p"]
       78 JUMP                             ; [+1]
       79 LOADK                            R7 K9 ["n"]
       80 LOADK                            R8 K11 ["0"]
       81 CONCAT                           R5 R6 R8
       82 RETURN                           R5 1
       83 LOADK                            R6 K10 ["00"]
       84 GETTABLEKS                       R8 R0 K5 ["z"]
       86 LOADN                            R9 0
       87 JUMPIFNOTLE                      R9 R8 ; [+3]
       89 LOADK                            R7 K8 ["p"]
       90 JUMP                             ; [+1]
       91 LOADK                            R7 K9 ["n"]
       92 CONCAT                           R5 R6 R7
       93 RETURN                           R5 1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetGuiInset"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["AbsolutePosition"]
        7 GETTABLEKS                       R5 R5 K2 ["X"]
        9 SUB                              R4 R0 R5
       10 GETTABLEKS                       R5 R2 K3 ["x"]
       12 SUB                              R3 R4 R5
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K1 ["AbsolutePosition"]
       16 GETTABLEKS                       R6 R6 K4 ["Y"]
       18 SUB                              R5 R1 R6
       19 GETTABLEKS                       R6 R2 K5 ["y"]
       21 SUB                              R4 R5 R6
       22 RETURN                           R3 2

PROTO_32:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R3 R3 K2 ["Workspace"]
        4 GETTABLEKS                       R3 R3 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R3 R3 K4 ["CameraType"]
        8 GETIMPORT                        R4 K7 [Enum.CameraType.Attach]
       10 JUMPIFEQ                         R3 R4 ; [+5]
       12 GETIMPORT                        R4 K9 [Enum.CameraType.Scriptable]
       14 JUMPIFNOTEQ                      R3 R4 ; [+3]
       16 LOADB                            R2 1
       17 JUMP                             ; [+1]
       18 LOADB                            R2 0
       19 JUMPIFNOT                        R2 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R4 0
       22 NAMECALL                         R4 R4 K10 ["GetGuiInset"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K11 ["AbsolutePosition"]
       28 GETTABLEKS                       R7 R7 K12 ["X"]
       30 SUB                              R6 R0 R7
       31 GETTABLEKS                       R7 R4 K13 ["x"]
       33 SUB                              R5 R6 R7
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K11 ["AbsolutePosition"]
       37 GETTABLEKS                       R8 R8 K14 ["Y"]
       39 SUB                              R7 R1 R8
       40 GETTABLEKS                       R8 R4 K15 ["y"]
       42 SUB                              R6 R7 R8
       43 MOVE                             R2 R5
       44 MOVE                             R3 R6
       45 GETUPVAL                         R4 2
       46 GETUPVAL                         R7 3
       47 DIV                              R6 R2 R7
       48 GETUPVAL                         R8 3
       49 DIV                              R7 R3 R8
       50 LOADN                            R8 0
       51 NAMECALL                         R4 R4 K16 ["ViewportPointToRay"]
       53 CALL                             R4 4 1
       54 GETUPVAL                         R5 4
       55 GETTABLEKS                       R6 R4 K17 ["Origin"]
       57 GETTABLEKS                       R7 R4 K18 ["Direction"]
       59 CALL                             R5 2 1
       60 JUMPIFNOT                        R5 ; [+47]
       61 GETUPVAL                         R6 5
       62 MOVE                             R7 R5
       63 CALL                             R6 1 1
       64 GETUPVAL                         R8 6
       65 GETTABLE                         R7 R8 R6
       66 GETUPVAL                         R8 7
       67 JUMPIFEQ                         R8 R7 ; [+61]
       69 GETUPVAL                         R8 7
       70 JUMPIF                           R8 ; [+1]
       71 JUMP                             ; [+16]
       72 GETTABLEKS                       R9 R8 K19 ["ClassName"]
       74 JUMPIFNOTEQKS                    R9 K20 ["Decal"] ; [+10]
       76 GETUPVAL                         R10 8
       77 GETTABLEKS                       R10 R10 K21 ["Normal"]
       79 GETTABLEKS                       R11 R8 K22 ["Name"]
       81 GETTABLE                         R9 R10 R11
       82 SETTABLEKS                       R9 R8 K23 ["Texture"]
       84 JUMP                             ; [+3]
       85 LOADN                            R9 1
       86 SETTABLEKS                       R9 R8 K24 ["Transparency"]
       88 JUMPIF                           R7 ; [+1]
       89 JUMP                             ; [+16]
       90 GETTABLEKS                       R8 R7 K19 ["ClassName"]
       92 JUMPIFNOTEQKS                    R8 K20 ["Decal"] ; [+10]
       94 GETUPVAL                         R9 8
       95 GETTABLEKS                       R9 R9 K25 ["Hover"]
       97 GETTABLEKS                       R10 R7 K22 ["Name"]
       99 GETTABLE                         R8 R9 R10
      100 SETTABLEKS                       R8 R7 K23 ["Texture"]
      102 JUMP                             ; [+3]
      103 LOADK                            R8 K26 [0.3]
      104 SETTABLEKS                       R8 R7 K24 ["Transparency"]
      106 SETUPVAL                         R7 7
      107 RETURN                           R0 0
      108 GETUPVAL                         R6 7
      109 JUMPIF                           R6 ; [+1]
      110 JUMP                             ; [+16]
      111 GETTABLEKS                       R7 R6 K19 ["ClassName"]
      113 JUMPIFNOTEQKS                    R7 K20 ["Decal"] ; [+10]
      115 GETUPVAL                         R8 8
      116 GETTABLEKS                       R8 R8 K21 ["Normal"]
      118 GETTABLEKS                       R9 R6 K22 ["Name"]
      120 GETTABLE                         R7 R8 R9
      121 SETTABLEKS                       R7 R6 K23 ["Texture"]
      123 JUMP                             ; [+3]
      124 LOADN                            R7 1
      125 SETTABLEKS                       R7 R6 K24 ["Transparency"]
      127 LOADNIL                          R6
      128 SETUPVAL                         R6 7
      129 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R5 0
        1 MOVE                             R7 R0
        2 NAMECALL                         R5 R5 K1 ["Dot"]
        4 CALL                             R5 2 1
        5 FASTCALL1                        MATH_ABS R5 ; [+2]
        6 GETIMPORT                        R4 K4 [math.abs]
        8 CALL                             R4 1 1
        9 SUBK                             R3 R4 K0 [1]
       10 FASTCALL1                        MATH_ABS R3 ; [+2]
       11 GETIMPORT                        R2 K4 [math.abs]
       13 CALL                             R2 1 1
       14 LOADK                            R3 K5 [0.001]
       15 JUMPIFLT                         R2 R3 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["LookVector"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 GETUPVAL                         R2 2
        9 LOADK                            R9 K2 [{1, 0, 0}]
       10 NAMECALL                         R7 R0 K3 ["Dot"]
       12 CALL                             R7 2 1
       13 FASTCALL1                        MATH_ABS R7 ; [+2]
       14 GETIMPORT                        R6 K6 [math.abs]
       16 CALL                             R6 1 1
       17 SUBK                             R5 R6 K1 [1]
       18 FASTCALL1                        MATH_ABS R5 ; [+2]
       19 GETIMPORT                        R4 K6 [math.abs]
       21 CALL                             R4 1 1
       22 LOADK                            R5 K7 [0.001]
       23 JUMPIFLT                         R4 R5 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 JUMPIF                           R3 ; [+37]
       28 LOADK                            R9 K8 [{0, 1, 0}]
       29 NAMECALL                         R7 R0 K3 ["Dot"]
       31 CALL                             R7 2 1
       32 FASTCALL1                        MATH_ABS R7 ; [+2]
       33 GETIMPORT                        R6 K6 [math.abs]
       35 CALL                             R6 1 1
       36 SUBK                             R5 R6 K1 [1]
       37 FASTCALL1                        MATH_ABS R5 ; [+2]
       38 GETIMPORT                        R4 K6 [math.abs]
       40 CALL                             R4 1 1
       41 LOADK                            R5 K7 [0.001]
       42 JUMPIFLT                         R4 R5 ; [+2]
       44 LOADB                            R3 0 +1
       45 LOADB                            R3 1
       46 JUMPIF                           R3 ; [+18]
       47 LOADK                            R9 K9 [{0, 0, 1}]
       48 NAMECALL                         R7 R0 K3 ["Dot"]
       50 CALL                             R7 2 1
       51 FASTCALL1                        MATH_ABS R7 ; [+2]
       52 GETIMPORT                        R6 K6 [math.abs]
       54 CALL                             R6 1 1
       55 SUBK                             R5 R6 K1 [1]
       56 FASTCALL1                        MATH_ABS R5 ; [+2]
       57 GETIMPORT                        R4 K6 [math.abs]
       59 CALL                             R4 1 1
       60 LOADK                            R5 K7 [0.001]
       61 JUMPIFLT                         R4 R5 ; [+2]
       63 LOADB                            R3 0 +1
       64 LOADB                            R3 1
       65 SETTABLEKS                       R3 R2 K10 ["Visible"]
       67 RETURN                           R0 0

PROTO_35:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 JUMP                             ; [+16]
        3 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        5 JUMPIFNOTEQKS                    R1 K1 ["Decal"] ; [+10]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["Normal"]
       10 GETTABLEKS                       R3 R0 K3 ["Name"]
       12 GETTABLE                         R1 R2 R3
       13 SETTABLEKS                       R1 R0 K4 ["Texture"]
       15 JUMP                             ; [+3]
       16 LOADN                            R1 1
       17 SETTABLEKS                       R1 R0 K5 ["Transparency"]
       19 LOADNIL                          R0
       20 SETUPVAL                         R0 0
       21 GETUPVAL                         R0 2
       22 LOADB                            R1 0
       23 SETTABLEKS                       R1 R0 K6 ["Visible"]
       25 LOADB                            R0 0
       26 SETUPVAL                         R0 3
       27 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        5 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        7 JUMPIFNOTEQ                      R1 R2 ; [+67]
        9 GETTABLEKS                       R1 R0 K4 ["Position"]
       11 GETTABLEKS                       R1 R1 K5 ["x"]
       13 GETTABLEKS                       R2 R0 K4 ["Position"]
       15 GETTABLEKS                       R2 R2 K6 ["y"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K5 ["x"]
       20 SUB                              R5 R6 R1
       21 FASTCALL1                        MATH_ABS R5 ; [+2]
       22 GETIMPORT                        R4 K9 [math.abs]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K6 ["y"]
       28 SUB                              R6 R7 R2
       29 FASTCALL1                        MATH_ABS R6 ; [+2]
       30 GETIMPORT                        R5 K9 [math.abs]
       32 CALL                             R5 1 1
       33 ADD                              R3 R4 R5
       34 LOADN                            R4 5
       35 JUMPIFNOTLT                      R4 R3 ; [+39]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K10 ["X"]
       40 GETTABLEKS                       R6 R6 K11 ["Offset"]
       42 ADD                              R5 R6 R1
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K5 ["x"]
       46 SUB                              R4 R5 R6
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K12 ["Y"]
       50 GETTABLEKS                       R7 R7 K11 ["Offset"]
       52 ADD                              R6 R7 R2
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K6 ["y"]
       56 SUB                              R5 R6 R7
       57 GETUPVAL                         R6 2
       58 GETIMPORT                        R7 K15 [UDim2.new]
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K10 ["X"]
       63 GETTABLEKS                       R8 R8 K16 ["Scale"]
       65 MOVE                             R9 R4
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R10 R10 K12 ["Y"]
       69 GETTABLEKS                       R10 R10 K16 ["Scale"]
       71 MOVE                             R11 R5
       72 CALL                             R7 4 1
       73 SETTABLEKS                       R7 R6 K4 ["Position"]
       75 RETURN                           R0 0

PROTO_38:
        0 GETIMPORT                        R5 K1 [game]
        2 GETTABLEKS                       R5 R5 K2 ["Workspace"]
        4 GETTABLEKS                       R5 R5 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R5 R5 K4 ["ViewportSize"]
        8 GETTABLE                         R4 R5 R0
        9 GETUPVAL                         R8 0
       10 SUB                              R7 R4 R8
       11 SUB                              R6 R7 R2
       12 SUB                              R5 R6 R3
       13 LOADK                            R6 K5 [0.5]
       14 LOADK                            R7 K5 [0.5]
       15 LOADN                            R8 0
       16 JUMPIFNOTLT                      R8 R5 ; [+16]
       18 GETIMPORT                        R8 K7 [plugin]
       20 LOADK                            R11 K8 ["ViewSelector_Position"]
       21 MOVE                             R12 R0
       22 CONCAT                           R10 R11 R12
       23 NAMECALL                         R8 R8 K9 ["GetSetting"]
       25 CALL                             R8 2 1
       26 OR                               R6 R8 R1
       27 MUL                              R9 R6 R5
       28 ADD                              R8 R2 R9
       29 GETUPVAL                         R11 0
       30 MUL                              R10 R6 R11
       31 ADD                              R9 R8 R10
       32 DIV                              R7 R9 R4
       33 RETURN                           R6 2

PROTO_39:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["Left"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["Right"]
        8 GETIMPORT                        R6 K4 [game]
       10 GETTABLEKS                       R6 R6 K5 ["Workspace"]
       12 GETTABLEKS                       R6 R6 K6 ["CurrentCamera"]
       14 GETTABLEKS                       R6 R6 K7 ["ViewportSize"]
       16 GETTABLEKS                       R5 R6 K2 ["X"]
       18 GETUPVAL                         R9 0
       19 SUB                              R8 R5 R9
       20 SUB                              R7 R8 R3
       21 SUB                              R6 R7 R4
       22 LOADK                            R7 K8 [0.5]
       23 LOADK                            R8 K8 [0.5]
       24 LOADN                            R9 0
       25 JUMPIFNOTLT                      R9 R6 ; [+14]
       27 GETIMPORT                        R9 K11 [plugin]
       29 LOADK                            R11 K12 ["ViewSelector_PositionX"]
       30 NAMECALL                         R9 R9 K13 ["GetSetting"]
       32 CALL                             R9 2 1
       33 ORK                              R7 R9 K9 [1]
       34 MUL                              R10 R7 R6
       35 ADD                              R9 R3 R10
       36 GETUPVAL                         R12 0
       37 MUL                              R11 R7 R12
       38 ADD                              R10 R9 R11
       39 DIV                              R8 R10 R5
       40 MOVE                             R1 R7
       41 MOVE                             R2 R8
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K14 ["Top"]
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K15 ["Bottom"]
       48 GETIMPORT                        R8 K4 [game]
       50 GETTABLEKS                       R8 R8 K5 ["Workspace"]
       52 GETTABLEKS                       R8 R8 K6 ["CurrentCamera"]
       54 GETTABLEKS                       R8 R8 K7 ["ViewportSize"]
       56 GETTABLEKS                       R7 R8 K16 ["Y"]
       58 GETUPVAL                         R11 0
       59 SUB                              R10 R7 R11
       60 SUB                              R9 R10 R5
       61 SUB                              R8 R9 R6
       62 LOADK                            R9 K8 [0.5]
       63 LOADK                            R10 K8 [0.5]
       64 LOADN                            R11 0
       65 JUMPIFNOTLT                      R11 R8 ; [+14]
       67 GETIMPORT                        R11 K11 [plugin]
       69 LOADK                            R13 K18 ["ViewSelector_PositionY"]
       70 NAMECALL                         R11 R11 K13 ["GetSetting"]
       72 CALL                             R11 2 1
       73 ORK                              R9 R11 K17 [0]
       74 MUL                              R12 R9 R8
       75 ADD                              R11 R5 R12
       76 GETUPVAL                         R14 0
       77 MUL                              R13 R9 R14
       78 ADD                              R12 R11 R13
       79 DIV                              R10 R12 R7
       80 MOVE                             R3 R9
       81 MOVE                             R4 R10
       82 GETUPVAL                         R5 2
       83 GETIMPORT                        R6 K21 [Vector2.new]
       85 MOVE                             R7 R1
       86 MOVE                             R8 R3
       87 CALL                             R6 2 1
       88 SETTABLEKS                       R6 R5 K22 ["AnchorPoint"]
       90 GETUPVAL                         R5 2
       91 GETIMPORT                        R6 K24 [UDim2.new]
       93 MOVE                             R7 R2
       94 LOADN                            R8 0
       95 MOVE                             R9 R4
       96 LOADN                            R10 0
       97 CALL                             R6 4 1
       98 SETTABLEKS                       R6 R5 K25 ["Position"]
      100 RETURN                           R0 0

PROTO_40:
        0 GETIMPORT                        R4 K1 [game]
        2 GETTABLEKS                       R4 R4 K2 ["Workspace"]
        4 GETTABLEKS                       R4 R4 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R4 R4 K4 ["ViewportSize"]
        8 GETTABLE                         R3 R4 R0
        9 GETUPVAL                         R7 0
       10 SUB                              R6 R3 R7
       11 SUB                              R5 R6 R1
       12 SUB                              R4 R5 R2
       13 LOADK                            R5 K5 [0.5]
       14 LOADK                            R6 K5 [0.5]
       15 LOADN                            R7 0
       16 JUMPIFNOTLT                      R7 R4 ; [+20]
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R9 R9 K6 ["AbsolutePosition"]
       21 GETTABLE                         R8 R9 R0
       22 GETUPVAL                         R12 0
       23 SUB                              R11 R3 R12
       24 SUB                              R10 R11 R2
       25 FASTCALL3                        MATH_CLAMP R8 R1 R10
       27 MOVE                             R9 R1
       28 GETIMPORT                        R7 K9 [math.clamp]
       30 CALL                             R7 3 1
       31 SUB                              R8 R7 R1
       32 DIV                              R5 R8 R4
       33 GETUPVAL                         R10 0
       34 MUL                              R9 R5 R10
       35 ADD                              R8 R7 R9
       36 DIV                              R6 R8 R3
       37 GETIMPORT                        R7 K11 [plugin]
       39 LOADK                            R10 K12 ["ViewSelector_Position"]
       40 MOVE                             R11 R0
       41 CONCAT                           R9 R10 R11
       42 MOVE                             R10 R5
       43 NAMECALL                         R7 R7 K13 ["SetSetting"]
       45 CALL                             R7 3 0
       46 RETURN                           R5 2

PROTO_41:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 MOVE                             R1 R0
        4 LOADK                            R2 K0 ["X"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Left"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["Right"]
       11 CALL                             R1 3 2
       12 MOVE                             R3 R0
       13 LOADK                            R4 K3 ["Y"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K4 ["Top"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K5 ["Bottom"]
       20 CALL                             R3 3 2
       21 GETUPVAL                         R5 1
       22 GETIMPORT                        R6 K8 [Vector2.new]
       24 MOVE                             R7 R1
       25 MOVE                             R8 R3
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K9 ["AnchorPoint"]
       29 GETUPVAL                         R5 1
       30 GETIMPORT                        R6 K11 [UDim2.new]
       32 MOVE                             R7 R2
       33 LOADN                            R8 0
       34 MOVE                             R9 R4
       35 LOADN                            R10 0
       36 CALL                             R6 4 1
       37 SETTABLEKS                       R6 R5 K12 ["Position"]
       39 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+7]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOT                        R1 ; [+4]
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 1
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_43:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 SETUPVAL                         R2 0
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K3 ["Position"]
        9 SETUPVAL                         R2 1
       10 RETURN                           R0 0

PROTO_44:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R2 R1 K4 ["Focus"]
        8 GETTABLEKS                       R2 R2 K5 ["Position"]
       10 GETTABLEKS                       R4 R1 K6 ["CFrame"]
       12 GETTABLEKS                       R4 R4 K5 ["Position"]
       14 SUB                              R3 R2 R4
       15 GETTABLEKS                       R3 R3 K7 ["Magnitude"]
       17 GETTABLEKS                       R6 R0 K8 ["LookVector"]
       19 MUL                              R5 R6 R3
       20 SUB                              R4 R2 R5
       21 SETUPVAL                         R2 0
       22 ADD                              R5 R0 R4
       23 SETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R1 K6 ["CFrame"]
       26 SETUPVAL                         R5 2
       27 SETUPVAL                         R3 3
       28 LOADN                            R5 0
       29 SETUPVAL                         R5 4
       30 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["x"]
        6 SUB                              R4 R5 R0
        7 FASTCALL1                        MATH_ABS R4 ; [+2]
        8 GETIMPORT                        R3 K3 [math.abs]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K4 ["y"]
       14 SUB                              R5 R6 R1
       15 FASTCALL1                        MATH_ABS R5 ; [+2]
       16 GETIMPORT                        R4 K3 [math.abs]
       18 CALL                             R4 1 1
       19 ADD                              R2 R3 R4
       20 LOADNIL                          R3
       21 SETUPVAL                         R3 0
       22 LOADN                            R3 5
       23 JUMPIFNOTLE                      R2 R3 ; [+39]
       25 GETUPVAL                         R3 1
       26 JUMPIFNOT                        R3 ; [+38]
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K5 ["Name"]
       31 GETTABLE                         R3 R4 R5
       32 GETIMPORT                        R4 K7 [game]
       34 GETTABLEKS                       R4 R4 K8 ["Workspace"]
       36 GETTABLEKS                       R4 R4 K9 ["CurrentCamera"]
       38 GETTABLEKS                       R5 R4 K10 ["Focus"]
       40 GETTABLEKS                       R5 R5 K11 ["Position"]
       42 GETTABLEKS                       R7 R4 K12 ["CFrame"]
       44 GETTABLEKS                       R7 R7 K11 ["Position"]
       46 SUB                              R6 R5 R7
       47 GETTABLEKS                       R6 R6 K13 ["Magnitude"]
       49 GETTABLEKS                       R9 R3 K14 ["LookVector"]
       51 MUL                              R8 R9 R6
       52 SUB                              R7 R5 R8
       53 SETUPVAL                         R5 3
       54 ADD                              R8 R3 R7
       55 SETUPVAL                         R8 4
       56 GETTABLEKS                       R8 R4 K12 ["CFrame"]
       58 SETUPVAL                         R8 5
       59 SETUPVAL                         R6 6
       60 LOADN                            R8 0
       61 SETUPVAL                         R8 7
       62 RETURN                           R0 0
       63 GETUPVAL                         R3 8
       64 CALL                             R3 0 0
       65 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["CFrame"]
        3 MUL                              R2 R3 R1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["LookVector"]
        7 NAMECALL                         R3 R1 K2 ["Dot"]
        9 CALL                             R3 2 1
       10 LOADN                            R4 0
       11 JUMPIFNOTLT                      R3 R4 ; [+8]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K4 ["ZIndex"]
       16 ADDK                             R3 R4 K3 [1]
       17 SETTABLEKS                       R3 R0 K4 ["ZIndex"]
       19 JUMP                             ; [+6]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["ZIndex"]
       23 SUBK                             R3 R4 K3 [1]
       24 SETTABLEKS                       R3 R0 K4 ["ZIndex"]
       26 GETUPVAL                         R3 3
       27 MOVE                             R5 R2
       28 NAMECALL                         R3 R3 K5 ["WorldToViewportPoint"]
       30 CALL                             R3 2 2
       31 JUMPIFNOT                        R4 ; [+19]
       32 LOADB                            R5 1
       33 SETTABLEKS                       R5 R0 K6 ["Visible"]
       35 GETIMPORT                        R5 K9 [UDim2.new]
       37 LOADN                            R6 0
       38 GETTABLEKS                       R8 R3 K10 ["x"]
       40 GETUPVAL                         R9 4
       41 MUL                              R7 R8 R9
       42 LOADN                            R8 0
       43 GETTABLEKS                       R10 R3 K11 ["y"]
       45 GETUPVAL                         R11 4
       46 MUL                              R9 R10 R11
       47 CALL                             R5 4 1
       48 SETTABLEKS                       R5 R0 K12 ["Position"]
       50 RETURN                           R0 0
       51 LOADB                            R5 0
       52 SETTABLEKS                       R5 R0 K6 ["Visible"]
       54 RETURN                           R0 0

PROTO_47:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 MOVE                             R1 R0
        7 GETUPVAL                         R2 5
        8 GETUPVAL                         R3 6
        9 CALL                             R1 2 0
       10 MOVE                             R1 R0
       11 GETUPVAL                         R2 7
       12 GETUPVAL                         R3 8
       13 CALL                             R1 2 0
       14 MOVE                             R1 R0
       15 GETUPVAL                         R2 9
       16 GETUPVAL                         R3 10
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_48:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
        6 GETUPVAL                         R2 0
        7 JUMPIFNOT                        R2 ; [+42]
        8 GETUPVAL                         R3 0
        9 ADD                              R2 R3 R0
       10 SETUPVAL                         R2 0
       11 GETUPVAL                         R2 0
       12 LOADK                            R3 K4 [0.2]
       13 JUMPIFNOTLT                      R3 R2 ; [+13]
       15 GETUPVAL                         R2 1
       16 SETTABLEKS                       R2 R1 K5 ["CFrame"]
       18 GETIMPORT                        R2 K7 [CFrame.new]
       20 GETUPVAL                         R3 2
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R2 R1 K8 ["Focus"]
       24 LOADNIL                          R2
       25 SETUPVAL                         R2 0
       26 JUMP                             ; [+23]
       27 GETUPVAL                         R2 3
       28 GETUPVAL                         R4 1
       29 GETUPVAL                         R6 0
       30 DIVK                             R5 R6 K4 [0.2]
       31 NAMECALL                         R2 R2 K9 ["Lerp"]
       33 CALL                             R2 3 1
       34 SETTABLEKS                       R2 R1 K5 ["CFrame"]
       36 GETUPVAL                         R3 4
       37 JUMPIFNOT                        R3 ; [+12]
       38 GETIMPORT                        R3 K7 [CFrame.new]
       40 GETTABLEKS                       R5 R2 K10 ["Position"]
       42 GETTABLEKS                       R7 R2 K11 ["LookVector"]
       44 GETUPVAL                         R8 5
       45 MUL                              R6 R7 R8
       46 ADD                              R4 R5 R6
       47 CALL                             R3 1 1
       48 SETTABLEKS                       R3 R1 K8 ["Focus"]
       50 GETTABLEKS                       R2 R1 K5 ["CFrame"]
       52 GETUPVAL                         R3 6
       53 GETIMPORT                        R4 K13 [CFrame.fromMatrix]
       55 GETTABLEKS                       R7 R2 K11 ["LookVector"]
       57 MINUS                            R6 R7
       58 MULK                             R5 R6 K14 [1.9]
       59 GETTABLEKS                       R6 R2 K15 ["RightVector"]
       61 GETTABLEKS                       R7 R2 K16 ["UpVector"]
       63 GETTABLEKS                       R9 R2 K11 ["LookVector"]
       65 MINUS                            R8 R9
       66 CALL                             R4 4 1
       67 SETTABLEKS                       R4 R3 K5 ["CFrame"]
       69 GETUPVAL                         R3 6
       70 GETTABLEKS                       R3 R3 K5 ["CFrame"]
       72 GETUPVAL                         R4 7
       73 JUMPIFEQ                         R3 R4 ; [+44]
       75 GETUPVAL                         R3 6
       76 GETTABLEKS                       R3 R3 K5 ["CFrame"]
       78 SETUPVAL                         R3 7
       79 GETUPVAL                         R3 8
       80 GETUPVAL                         R5 7
       81 GETUPVAL                         R6 7
       82 GETTABLEKS                       R6 R6 K10 ["Position"]
       84 SUB                              R4 R5 R6
       85 GETIMPORT                        R6 K7 [CFrame.new]
       87 LOADN                            R7 -1
       88 LOADN                            R8 -1
       89 LOADN                            R9 -1
       90 CALL                             R6 3 -1
       91 NAMECALL                         R4 R4 K17 ["ToWorldSpace"]
       93 CALL                             R4 -1 1
       94 GETTABLEKS                       R4 R4 K10 ["Position"]
       96 SETTABLEKS                       R4 R3 K18 ["LightDirection"]
       98 NEWCLOSURE                       R3 P0
       99 CAPTURE                          UPVAL U9
      100 CAPTURE                          UPVAL U7
      101 CAPTURE                          UPVAL U8
      102 CAPTURE                          UPVAL U6
      103 CAPTURE                          UPVAL U10
      104 MOVE                             R4 R3
      105 GETUPVAL                         R5 11
      106 GETUPVAL                         R6 12
      107 CALL                             R4 2 0
      108 MOVE                             R4 R3
      109 GETUPVAL                         R5 13
      110 GETUPVAL                         R6 14
      111 CALL                             R4 2 0
      112 MOVE                             R4 R3
      113 GETUPVAL                         R5 15
      114 GETUPVAL                         R6 16
      115 CALL                             R4 2 0
      116 GETUPVAL                         R3 17
      117 CALL                             R3 0 0
      118 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enabled"]
        3 JUMPIFNOTEQ                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K2 [plugin]
        8 LOADK                            R3 K3 ["ViewSelector_Active"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R1 R1 K4 ["SetSetting"]
       12 CALL                             R1 3 0
       13 JUMPIFNOT                        R0 ; [+24]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U0
       17 FASTPCALL                        pcall 1 ; [+2]
       18 GETIMPORT                        R1 K6 [pcall]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 2
       22 LOADN                            R2 0
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 3
       25 LOADK                            R3 K7 ["ViewSelectorAfterCamera"]
       26 GETIMPORT                        R5 K12 [Enum.RenderPriority.Camera]
       28 GETTABLEKS                       R5 R5 K13 ["Value"]
       30 ADDK                             R4 R5 K8 [1]
       31 GETUPVAL                         R5 2
       32 NAMECALL                         R1 R1 K14 ["BindToRenderStep"]
       34 CALL                             R1 4 0
       35 GETUPVAL                         R1 4
       36 CALL                             R1 0 0
       37 JUMP                             ; [+5]
       38 GETUPVAL                         R1 3
       39 LOADK                            R3 K7 ["ViewSelectorAfterCamera"]
       40 NAMECALL                         R1 R1 K15 ["UnbindFromRenderStep"]
       42 CALL                             R1 2 0
       43 GETUPVAL                         R1 5
       44 MOVE                             R3 R0
       45 NAMECALL                         R1 R1 K16 ["SetActive"]
       47 CALL                             R1 2 0
       48 GETUPVAL                         R1 0
       49 SETTABLEKS                       R0 R1 K0 ["Enabled"]
       51 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RightVector"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["UpVector"]
        6 MINUS                            R4 R0
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K2 ["y"]
       10 MUL                              R3 R4 R5
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["x"]
       14 MUL                              R4 R1 R5
       15 ADD                              R2 R3 R4
       16 GETIMPORT                        R3 K6 [CFrame.fromAxisAngle]
       18 MOVE                             R4 R2
       19 LOADK                            R5 K7 [1.5707963267948966]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K8 ["LookVector"]
       24 MUL                              R4 R3 R5
       25 MINUS                            R6 R4
       26 MULK                             R5 R6 K9 [2]
       27 GETUPVAL                         R6 2
       28 MOVE                             R7 R5
       29 MOVE                             R8 R4
       30 CALL                             R6 2 1
       31 JUMPIFNOT                        R6 ; [+35]
       32 GETUPVAL                         R7 3
       33 MOVE                             R8 R6
       34 CALL                             R7 1 1
       35 GETUPVAL                         R9 4
       36 GETTABLE                         R8 R9 R7
       37 GETIMPORT                        R9 K11 [game]
       39 GETTABLEKS                       R9 R9 K12 ["Workspace"]
       41 GETTABLEKS                       R9 R9 K13 ["CurrentCamera"]
       43 GETTABLEKS                       R10 R9 K14 ["Focus"]
       45 GETTABLEKS                       R10 R10 K15 ["Position"]
       47 GETTABLEKS                       R12 R9 K4 ["CFrame"]
       49 GETTABLEKS                       R12 R12 K15 ["Position"]
       51 SUB                              R11 R10 R12
       52 GETTABLEKS                       R11 R11 K16 ["Magnitude"]
       54 GETTABLEKS                       R14 R8 K8 ["LookVector"]
       56 MUL                              R13 R14 R11
       57 SUB                              R12 R10 R13
       58 SETUPVAL                         R10 5
       59 ADD                              R13 R8 R12
       60 SETUPVAL                         R13 6
       61 GETTABLEKS                       R13 R9 K4 ["CFrame"]
       63 SETUPVAL                         R13 7
       64 SETUPVAL                         R11 8
       65 LOADN                            R13 0
       66 SETUPVAL                         R13 9
       67 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Color3.fromRGB]
        3 LOADN                            R2 79
        4 LOADN                            R3 178
        5 LOADN                            R4 229
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K3 ["ImageColor3"]
        9 GETUPVAL                         R0 0
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K4 ["ImageTransparency"]
       13 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Color3.fromRGB]
        3 LOADN                            R2 247
        4 LOADN                            R3 249
        5 LOADN                            R4 255
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K3 ["ImageColor3"]
        9 GETUPVAL                         R0 0
       10 LOADK                            R1 K4 [0.6]
       11 SETTABLEKS                       R1 R0 K5 ["ImageTransparency"]
       13 RETURN                           R0 0

PROTO_55:
        0 GETTABLEKS                       R2 R0 K0 ["MouseButton1Click"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 NAMECALL                         R2 R2 K1 ["connect"]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R2 R0 K2 ["MouseButton1Up"]
       18 GETUPVAL                         R4 9
       19 NAMECALL                         R2 R2 K1 ["connect"]
       21 CALL                             R2 2 0
       22 GETTABLEKS                       R2 R0 K3 ["MouseEnter"]
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          VAL R0
       26 NAMECALL                         R2 R2 K4 ["Connect"]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R2 R0 K5 ["MouseLeave"]
       31 NEWCLOSURE                       R4 P2
       32 CAPTURE                          VAL R0
       33 NAMECALL                         R2 R2 K4 ["Connect"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0

PROTO_56:
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETTABLEKS                       R0 R0 K2 ["CurrentCamera"]
        4 JUMPIF                           R0 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K5 [RaycastParams.new]
        9 CALL                             R1 0 1
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K6 ["BruteForceAllSlow"]
       13 LOADK                            R2 K7 ["StudioSelectable"]
       14 SETTABLEKS                       R2 R1 K8 ["CollisionGroup"]
       16 GETTABLEKS                       R2 R0 K9 ["CFrame"]
       18 GETIMPORT                        R3 K1 [workspace]
       20 GETTABLEKS                       R5 R2 K10 ["Position"]
       22 GETTABLEKS                       R7 R2 K12 ["LookVector"]
       24 MULK                             R6 R7 K11 [15000]
       25 MOVE                             R7 R1
       26 NAMECALL                         R3 R3 K13 ["Raycast"]
       28 CALL                             R3 4 1
       29 JUMPIF                           R3 ; [+11]
       30 GETIMPORT                        R3 K1 [workspace]
       32 MOVE                             R5 R2
       33 LOADK                            R6 K14 [{4, 4, 4}]
       34 GETTABLEKS                       R8 R2 K12 ["LookVector"]
       36 MULK                             R7 R8 K15 [1024]
       37 MOVE                             R8 R1
       38 NAMECALL                         R3 R3 K16 ["Blockcast"]
       40 CALL                             R3 5 1
       41 JUMPIFNOT                        R3 ; [+11]
       42 GETTABLEKS                       R5 R3 K10 ["Position"]
       44 GETTABLEKS                       R6 R2 K10 ["Position"]
       46 SUB                              R4 R5 R6
       47 GETTABLEKS                       R6 R2 K12 ["LookVector"]
       49 NAMECALL                         R4 R4 K17 ["Dot"]
       51 CALL                             R4 2 1
       52 RETURN                           R4 1
       53 LOADNIL                          R4
       54 RETURN                           R4 1

PROTO_57:
        0 GETTABLEKS                       R2 R0 K0 ["ViewportSize"]
        2 LOADN                            R3 0
        3 JUMPIFLE                         R1 R3 ; [+6]
        5 GETTABLEKS                       R3 R2 K1 ["Y"]
        7 LOADN                            R4 0
        8 JUMPIFNOTLE                      R3 R4 ; [+4]
       10 GETTABLEKS                       R3 R0 K2 ["OrthographicSize"]
       12 RETURN                           R3 1
       13 MULK                             R4 R1 K3 [2]
       14 GETTABLEKS                       R8 R0 K4 ["FieldOfView"]
       16 FASTCALL1                        MATH_RAD R8 ; [+2]
       17 GETIMPORT                        R7 K7 [math.rad]
       19 CALL                             R7 1 1
       20 DIVK                             R6 R7 K3 [2]
       21 FASTCALL1                        MATH_TAN R6 ; [+2]
       22 GETIMPORT                        R5 K9 [math.tan]
       24 CALL                             R5 1 1
       25 MUL                              R3 R4 R5
       26 GETTABLEKS                       R5 R2 K10 ["X"]
       28 GETTABLEKS                       R6 R2 K1 ["Y"]
       30 DIV                              R4 R5 R6
       31 GETTABLEKS                       R6 R0 K11 ["ViewStretch"]
       33 MUL                              R5 R4 R6
       34 GETTABLEKS                       R6 R0 K12 ["OrthographicMode"]
       36 GETIMPORT                        R7 K15 [Enum.OrthographicMode.Horizontal]
       38 JUMPIFNOTEQ                      R6 R7 ; [+3]
       40 MUL                              R7 R3 R5
       41 RETURN                           R7 1
       42 GETIMPORT                        R7 K17 [Enum.OrthographicMode.Diagonal]
       44 JUMPIFNOTEQ                      R6 R7 ; [+10]
       46 LOADN                            R10 1
       47 MUL                              R11 R5 R5
       48 ADD                              R9 R10 R11
       49 FASTCALL1                        MATH_SQRT R9 ; [+2]
       50 GETIMPORT                        R8 K19 [math.sqrt]
       52 CALL                             R8 1 1
       53 MUL                              R7 R3 R8
       54 RETURN                           R7 1
       55 GETIMPORT                        R7 K21 [Enum.OrthographicMode.MaxAxis]
       57 JUMPIFNOTEQ                      R6 R7 ; [+8]
       59 LOADN                            R8 1
       60 JUMPIFNOTLT                      R8 R4 ; [+3]
       62 MUL                              R7 R3 R5
       63 RETURN                           R7 1
       64 MOVE                             R7 R3
       65 RETURN                           R7 1
       66 RETURN                           R3 1

PROTO_58:
        0 RETURN                           R0 0

PROTO_59:
        0 LOADN                            R2 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["fade"]
        4 FASTCALL3                        MATH_LERP R2 R0 R4
        6 MOVE                             R3 R0
        7 GETIMPORT                        R1 K3 [math.lerp]
        9 CALL                             R1 3 1
       10 RETURN                           R1 1

PROTO_60:
        0 DUPCLOSURE                       R0 K0 [PROTO_59]
        1 CAPTURE                          UPVAL U0
        2 LOADB                            R1 0
        3 GETUPVAL                         R2 1
        4 JUMPIFEQKNIL                     R2 ; [+10]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["ProjectionType"]
        9 GETIMPORT                        R3 K4 [Enum.ProjectionType.Orthographic]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 GETUPVAL                         R2 2
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K5 ["ControlSurfaceTransparency"]
       19 LOADN                            R6 1
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K6 ["fade"]
       23 FASTCALL3                        MATH_LERP R6 R4 R8
       25 MOVE                             R7 R4
       26 GETIMPORT                        R5 K9 [math.lerp]
       28 CALL                             R5 3 1
       29 MOVE                             R3 R5
       30 SETTABLEKS                       R3 R2 K10 ["BackgroundTransparency"]
       32 GETUPVAL                         R2 2
       33 JUMPIFNOT                        R1 ; [+4]
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K11 ["SelectedControl"]
       37 JUMP                             ; [+9]
       38 GETUPVAL                         R4 4
       39 JUMPIFNOT                        R4 ; [+4]
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K12 ["HoveredControl"]
       43 JUMP                             ; [+3]
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R3 R3 K13 ["Control"]
       47 SETTABLEKS                       R3 R2 K14 ["BackgroundColor3"]
       49 GETUPVAL                         R2 5
       50 JUMPIF                           R1 ; [+2]
       51 GETUPVAL                         R4 4
       52 JUMPIFNOT                        R4 ; [+4]
       53 GETUPVAL                         R3 3
       54 GETTABLEKS                       R3 R3 K15 ["ControlContentEmphasis"]
       56 JUMP                             ; [+3]
       57 GETUPVAL                         R3 3
       58 GETTABLEKS                       R3 R3 K16 ["ControlContentDefault"]
       60 SETTABLEKS                       R3 R2 K17 ["TextColor3"]
       62 GETUPVAL                         R2 5
       63 LOADN                            R4 1
       64 LOADN                            R5 0
       65 GETUPVAL                         R6 0
       66 GETTABLEKS                       R6 R6 K6 ["fade"]
       68 FASTCALL                         MATH_LERP ; [+2]
       69 GETIMPORT                        R3 K9 [math.lerp]
       71 CALL                             R3 3 1
       72 SETTABLEKS                       R3 R2 K18 ["TextTransparency"]
       74 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETIMPORT                        R0 K2 [game]
       10 GETTABLEKS                       R0 R0 K3 ["Workspace"]
       12 GETTABLEKS                       R0 R0 K4 ["CurrentCamera"]
       14 SETUPVAL                         R0 1
       15 GETUPVAL                         R0 1
       16 JUMPIFNOT                        R0 ; [+10]
       17 GETUPVAL                         R0 1
       18 LOADK                            R2 K5 ["ProjectionType"]
       19 NAMECALL                         R0 R0 K6 ["GetPropertyChangedSignal"]
       21 CALL                             R0 2 1
       22 GETUPVAL                         R2 2
       23 NAMECALL                         R0 R0 K7 ["Connect"]
       25 CALL                             R0 2 1
       26 SETUPVAL                         R0 0
       27 GETUPVAL                         R0 2
       28 CALL                             R0 0 0
       29 RETURN                           R0 0

PROTO_62:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Workspace"]
        4 GETTABLEKS                       R0 R0 K3 ["CurrentCamera"]
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K4 ["ProjectionType"]
       10 GETIMPORT                        R2 K7 [Enum.ProjectionType.Orthographic]
       12 JUMPIFNOTEQ                      R1 R2 ; [+6]
       14 GETIMPORT                        R1 K9 [Enum.ProjectionType.Perspective]
       16 SETTABLEKS                       R1 R0 K4 ["ProjectionType"]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R1 R0 K10 ["CFrame"]
       21 GETTABLEKS                       R1 R1 K11 ["LookVector"]
       23 GETTABLEKS                       R4 R0 K12 ["Focus"]
       25 GETTABLEKS                       R4 R4 K13 ["Position"]
       27 GETTABLEKS                       R5 R0 K10 ["CFrame"]
       29 GETTABLEKS                       R5 R5 K13 ["Position"]
       31 SUB                              R3 R4 R5
       32 NAMECALL                         R1 R1 K14 ["Dot"]
       34 CALL                             R1 2 1
       35 GETUPVAL                         R2 0
       36 CALL                             R2 0 1
       37 JUMPIFNOT                        R2 ; [+12]
       38 LOADN                            R3 0
       39 JUMPIFNOTLT                      R3 R2 ; [+10]
       41 MOVE                             R1 R2
       42 GETIMPORT                        R3 K1 [game]
       44 LOADK                            R5 K15 ["StudioCameraService"]
       45 NAMECALL                         R3 R3 K16 ["GetService"]
       47 CALL                             R3 2 1
       48 SETTABLEKS                       R1 R3 K17 ["GraspDistance"]
       50 GETUPVAL                         R3 1
       51 MOVE                             R4 R0
       52 MOVE                             R5 R1
       53 CALL                             R3 2 1
       54 SETTABLEKS                       R3 R0 K18 ["OrthographicSize"]
       56 GETIMPORT                        R3 K7 [Enum.ProjectionType.Orthographic]
       58 SETTABLEKS                       R3 R0 K4 ["ProjectionType"]
       60 RETURN                           R0 0

PROTO_63:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_64:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_65:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Control"]
        4 SETTABLEKS                       R1 R0 K1 ["BackgroundColor3"]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["ControlContentDefault"]
       10 SETTABLEKS                       R1 R0 K3 ["TextColor3"]
       12 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["CameraNavigationModelLocked"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["CameraNavigationModel"]
        9 GETIMPORT                        R2 K4 [Enum.CameraNavigationModel.Roblox]
       11 JUMPIFNOTEQ                      R1 R2 ; [+3]
       13 GETUPVAL                         R0 2
       14 RETURN                           R0 1
       15 GETUPVAL                         R0 3
       16 RETURN                           R0 1

PROTO_68:
        0 LOADN                            R2 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["Value"]
        4 FASTCALL3                        MATH_LERP R2 R0 R4
        6 MOVE                             R3 R0
        7 GETIMPORT                        R1 K3 [math.lerp]
        9 CALL                             R1 3 1
       10 RETURN                           R1 1

PROTO_69:
        0 DUPCLOSURE                       R0 K0 [PROTO_68]
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R3 R4 K1 ["CameraNavigationModelLocked"]
        6 JUMPIF                           R3 ; [+2]
        7 GETUPVAL                         R2 3
        8 JUMP                             ; [+10]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["CameraNavigationModel"]
       12 GETIMPORT                        R4 K5 [Enum.CameraNavigationModel.Roblox]
       14 JUMPIFNOTEQ                      R3 R4 ; [+3]
       16 GETUPVAL                         R2 4
       17 JUMP                             ; [+1]
       18 GETUPVAL                         R2 5
       19 GETTABLEKS                       R2 R2 K6 ["glyph"]
       21 SETTABLEKS                       R2 R1 K7 ["Text"]
       23 GETUPVAL                         R1 6
       24 GETUPVAL                         R3 7
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETUPVAL                         R2 8
       27 GETTABLEKS                       R2 R2 K8 ["HoveredControl"]
       29 JUMP                             ; [+3]
       30 GETUPVAL                         R2 8
       31 GETTABLEKS                       R2 R2 K9 ["Control"]
       33 SETTABLEKS                       R2 R1 K10 ["BackgroundColor3"]
       35 GETUPVAL                         R1 6
       36 GETUPVAL                         R3 8
       37 GETTABLEKS                       R3 R3 K11 ["ControlSurfaceTransparency"]
       39 LOADN                            R5 1
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K12 ["Value"]
       43 FASTCALL3                        MATH_LERP R5 R3 R7
       45 MOVE                             R6 R3
       46 GETIMPORT                        R4 K15 [math.lerp]
       48 CALL                             R4 3 1
       49 MOVE                             R2 R4
       50 SETTABLEKS                       R2 R1 K16 ["BackgroundTransparency"]
       52 GETUPVAL                         R2 7
       53 JUMPIF                           R2 ; [+4]
       54 GETUPVAL                         R2 9
       55 GETTABLEKS                       R2 R2 K17 ["menuOpen"]
       57 JUMPIFNOT                        R2 ; [+4]
       58 GETUPVAL                         R1 8
       59 GETTABLEKS                       R1 R1 K18 ["ControlContentEmphasis"]
       61 JUMP                             ; [+3]
       62 GETUPVAL                         R1 8
       63 GETTABLEKS                       R1 R1 K19 ["ControlContentDefault"]
       65 GETUPVAL                         R2 1
       66 SETTABLEKS                       R1 R2 K20 ["TextColor3"]
       68 GETUPVAL                         R2 1
       69 LOADN                            R4 1
       70 LOADN                            R5 0
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K12 ["Value"]
       74 FASTCALL                         MATH_LERP ; [+2]
       75 GETIMPORT                        R3 K15 [math.lerp]
       77 CALL                             R3 3 1
       78 SETTABLEKS                       R3 R2 K21 ["TextTransparency"]
       80 GETUPVAL                         R2 10
       81 SETTABLEKS                       R1 R2 K20 ["TextColor3"]
       83 GETUPVAL                         R2 10
       84 LOADN                            R4 1
       85 LOADN                            R5 0
       86 GETUPVAL                         R6 0
       87 GETTABLEKS                       R6 R6 K12 ["Value"]
       89 FASTCALL                         MATH_LERP ; [+2]
       90 GETIMPORT                        R3 K15 [math.lerp]
       92 CALL                             R3 3 1
       93 SETTABLEKS                       R3 R2 K21 ["TextTransparency"]
       95 GETUPVAL                         R2 11
       96 GETUPVAL                         R3 0
       97 GETTABLEKS                       R3 R3 K12 ["Value"]
       99 SETTABLEKS                       R3 R2 K22 ["fade"]
      101 GETUPVAL                         R2 11
      102 GETTABLEKS                       R2 R2 K23 ["apply"]
      104 CALL                             R2 0 0
      105 GETUPVAL                         R2 12
      106 GETUPVAL                         R4 8
      107 GETTABLEKS                       R4 R4 K11 ["ControlSurfaceTransparency"]
      109 LOADN                            R6 1
      110 GETUPVAL                         R8 0
      111 GETTABLEKS                       R8 R8 K12 ["Value"]
      113 FASTCALL3                        MATH_LERP R6 R4 R8
      115 MOVE                             R7 R4
      116 GETIMPORT                        R5 K15 [math.lerp]
      118 CALL                             R5 3 1
      119 MOVE                             R3 R5
      120 SETTABLEKS                       R3 R2 K16 ["BackgroundTransparency"]
      122 GETUPVAL                         R2 12
      123 GETUPVAL                         R4 9
      124 GETTABLEKS                       R4 R4 K24 ["editingSpeed"]
      126 JUMPIFNOT                        R4 ; [+2]
      127 LOADN                            R3 1
      128 JUMP                             ; [+9]
      129 LOADN                            R4 1
      130 LOADN                            R5 0
      131 GETUPVAL                         R6 0
      132 GETTABLEKS                       R6 R6 K12 ["Value"]
      134 FASTCALL                         MATH_LERP ; [+2]
      135 GETIMPORT                        R3 K15 [math.lerp]
      137 CALL                             R3 3 1
      138 SETTABLEKS                       R3 R2 K21 ["TextTransparency"]
      140 RETURN                           R0 0

PROTO_70:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_71:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_72:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CameraNavigationModel"]
        3 GETIMPORT                        R1 K3 [Enum.CameraNavigationModel.IndustryCompatible]
        5 JUMPIFNOTEQ                      R0 R1 ; [+5]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 2
        9 SETTABLEKS                       R1 R0 K4 ["GraspDistance"]
       11 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CameraNavigationModel"]
        3 GETIMPORT                        R2 K3 [Enum.CameraNavigationModel.Roblox]
        5 JUMPIFEQ                         R1 R2 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 GETUPVAL                         R1 0
       10 GETIMPORT                        R2 K5 [Enum.CameraNavigationModel.IndustryCompatible]
       12 SETTABLEKS                       R2 R1 K0 ["CameraNavigationModel"]
       14 JUMPIF                           R0 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 CALL                             R1 0 1
       18 JUMPIF                           R1 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K6 ["UpdateUI"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R1
       27 NAMECALL                         R2 R2 K7 ["Once"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_75:
        0 GETTABLEKS                       R1 R0 K0 ["model"]
        2 GETIMPORT                        R2 K4 [Enum.CameraNavigationModel.IndustryCompatible]
        4 JUMPIFNOTEQ                      R1 R2 ; [+4]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 JUMP                             ; [+8]
        9 GETTABLEKS                       R1 R0 K0 ["model"]
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R2 R0 K0 ["model"]
       15 SETTABLEKS                       R2 R1 K2 ["CameraNavigationModel"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R2 R0 K5 ["locked"]
       20 SETTABLEKS                       R2 R1 K6 ["CameraNavigationModelLocked"]
       22 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 FORGPREP                         R0
        7 NAMECALL                         R5 R4 K0 ["Disconnect"]
        9 CALL                             R5 1 0
       10 FORGLOOP                         R0 2 ; [-4]
       12 GETIMPORT                        R0 K3 [table.clear]
       14 GETUPVAL                         R1 1
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 2
       17 CALL                             R0 0 0
       18 GETUPVAL                         R0 0
       19 NAMECALL                         R0 R0 K4 ["Destroy"]
       21 CALL                             R0 1 0
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 0
       24 GETUPVAL                         R0 3
       25 JUMPIFNOT                        R0 ; [+6]
       26 GETUPVAL                         R0 3
       27 NAMECALL                         R0 R0 K4 ["Destroy"]
       29 CALL                             R0 1 0
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 3
       32 LOADB                            R0 0
       33 SETUPVAL                         R0 4
       34 GETUPVAL                         R0 5
       35 LOADB                            R1 0
       36 SETTABLEKS                       R1 R0 K5 ["menuOpen"]
       38 GETUPVAL                         R0 6
       39 CALL                             R0 0 0
       40 GETUPVAL                         R0 7
       41 CALL                             R0 0 0
       42 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["HoverTransparency"]
        4 SETTABLEKS                       R1 R0 K1 ["BackgroundTransparency"]
        6 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["BackgroundTransparency"]
        4 RETURN                           R0 0

PROTO_79:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["model"]
        3 GETIMPORT                        R2 K4 [Enum.CameraNavigationModel.IndustryCompatible]
        5 JUMPIFNOTEQ                      R1 R2 ; [+4]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 JUMP                             ; [+8]
       10 GETTABLEKS                       R1 R0 K0 ["model"]
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R2 R0 K0 ["model"]
       16 SETTABLEKS                       R2 R1 K2 ["CameraNavigationModel"]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R2 R0 K5 ["locked"]
       21 SETTABLEKS                       R2 R1 K6 ["CameraNavigationModelLocked"]
       23 GETUPVAL                         R0 3
       24 CALL                             R0 0 0
       25 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AbsolutePosition"]
        3 GETTABLEKS                       R3 R0 K1 ["Y"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["AbsoluteSize"]
        8 GETTABLEKS                       R4 R4 K1 ["Y"]
       10 ADD                              R2 R3 R4
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["Size_100"]
       14 ADD                              R1 R2 R3
       15 GETTABLEKS                       R4 R0 K1 ["Y"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K3 ["Size_100"]
       20 SUB                              R3 R4 R5
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K2 ["AbsoluteSize"]
       24 GETTABLEKS                       R4 R4 K1 ["Y"]
       26 SUB                              R2 R3 R4
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K2 ["AbsoluteSize"]
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R6 R6 K2 ["AbsoluteSize"]
       33 GETTABLEKS                       R6 R6 K1 ["Y"]
       35 ADD                              R5 R1 R6
       36 GETTABLEKS                       R6 R3 K1 ["Y"]
       38 JUMPIFLE                         R5 R6 ; [+2]
       40 LOADB                            R4 0 +1
       41 LOADB                            R4 1
       42 GETTABLEKS                       R7 R0 K4 ["X"]
       44 GETTABLEKS                       R10 R3 K4 ["X"]
       46 GETUPVAL                         R11 2
       47 GETTABLEKS                       R11 R11 K2 ["AbsoluteSize"]
       49 GETTABLEKS                       R11 R11 K4 ["X"]
       51 SUB                              R9 R10 R11
       52 GETUPVAL                         R10 1
       53 GETTABLEKS                       R10 R10 K5 ["Size_200"]
       55 SUB                              R8 R9 R10
       56 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       58 GETIMPORT                        R6 K8 [math.min]
       60 CALL                             R6 2 1
       61 FASTCALL2K                       MATH_MAX R6 K9 ; [+4]
       63 LOADK                            R7 K9 [0]
       64 GETIMPORT                        R5 K11 [math.max]
       66 CALL                             R5 2 1
       67 GETUPVAL                         R6 2
       68 GETIMPORT                        R7 K14 [UDim2.fromOffset]
       70 MOVE                             R8 R5
       71 JUMPIF                           R4 ; [+3]
       72 LOADN                            R10 0
       73 JUMPIFNOTLT                      R2 R10 ; [+3]
       75 MOVE                             R9 R1
       76 JUMP                             ; [+1]
       77 MOVE                             R9 R2
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K15 ["Position"]
       81 RETURN                           R0 0

PROTO_81:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R1 R2 ; [+13]
        6 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        8 GETIMPORT                        R2 K5 [Enum.UserInputType.MouseButton2]
       10 JUMPIFEQ                         R1 R2 ; [+7]
       12 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
       14 GETIMPORT                        R2 K7 [Enum.UserInputType.MouseButton3]
       16 JUMPIFNOTEQ                      R1 R2 ; [+3]
       18 GETUPVAL                         R1 0
       19 CALL                             R1 0 0
       20 RETURN                           R0 0

PROTO_82:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.Escape]
        4 JUMPIFNOTEQ                      R1 R2 ; [+3]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_83:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_84:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["menuOpen"]
        8 GETUPVAL                         R0 3
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 4
       11 CALL                             R0 0 0
       12 GETIMPORT                        R0 K3 [Instance.new]
       14 LOADK                            R1 K4 ["Frame"]
       15 CALL                             R0 1 1
       16 LOADK                            R1 K5 ["CameraModeMenu"]
       17 SETTABLEKS                       R1 R0 K6 ["Name"]
       19 GETUPVAL                         R1 5
       20 GETTABLEKS                       R1 R1 K7 ["Surface_200"]
       22 SETTABLEKS                       R1 R0 K8 ["BackgroundColor3"]
       24 LOADN                            R1 0
       25 SETTABLEKS                       R1 R0 K9 ["BorderSizePixel"]
       27 GETIMPORT                        R1 K13 [Enum.AutomaticSize.XY]
       29 SETTABLEKS                       R1 R0 K11 ["AutomaticSize"]
       31 LOADN                            R1 101
       32 SETTABLEKS                       R1 R0 K14 ["ZIndex"]
       34 GETUPVAL                         R1 6
       35 GETTABLEKS                       R1 R1 K15 ["RadiusMedium"]
       37 GETIMPORT                        R2 K3 [Instance.new]
       39 LOADK                            R3 K16 ["UICorner"]
       40 CALL                             R2 1 1
       41 SETTABLEKS                       R1 R2 K17 ["CornerRadius"]
       43 SETTABLEKS                       R0 R2 K18 ["Parent"]
       45 GETUPVAL                         R1 7
       46 MOVE                             R2 R0
       47 GETUPVAL                         R3 6
       48 GETTABLEKS                       R3 R3 K19 ["Size_100"]
       50 GETUPVAL                         R4 6
       51 GETTABLEKS                       R4 R4 K19 ["Size_100"]
       53 GETUPVAL                         R5 6
       54 GETTABLEKS                       R5 R5 K19 ["Size_100"]
       56 GETUPVAL                         R6 6
       57 GETTABLEKS                       R6 R6 K19 ["Size_100"]
       59 CALL                             R1 5 0
       60 GETIMPORT                        R1 K3 [Instance.new]
       62 LOADK                            R2 K20 ["UIListLayout"]
       63 CALL                             R1 1 1
       64 GETIMPORT                        R2 K23 [Enum.SortOrder.LayoutOrder]
       66 SETTABLEKS                       R2 R1 K21 ["SortOrder"]
       68 SETTABLEKS                       R0 R1 K18 ["Parent"]
       70 GETUPVAL                         R4 8
       71 GETTABLEKS                       R3 R4 K24 ["CameraNavigationModelLocked"]
       73 JUMPIF                           R3 ; [+2]
       74 GETUPVAL                         R2 9
       75 JUMP                             ; [+10]
       76 GETUPVAL                         R3 8
       77 GETTABLEKS                       R3 R3 K25 ["CameraNavigationModel"]
       79 GETIMPORT                        R4 K27 [Enum.CameraNavigationModel.Roblox]
       81 JUMPIFNOTEQ                      R3 R4 ; [+3]
       83 GETUPVAL                         R2 10
       84 JUMP                             ; [+1]
       85 GETUPVAL                         R2 11
       86 GETUPVAL                         R3 12
       87 LOADNIL                          R4
       88 LOADNIL                          R5
       89 FORGPREP                         R3
       90 GETTABLEKS                       R9 R7 K28 ["name"]
       92 GETIMPORT                        R10 K3 [Instance.new]
       94 LOADK                            R11 K29 ["TextButton"]
       95 CALL                             R10 1 1
       96 MOVE                             R8 R10
       97 SETTABLEKS                       R9 R8 K6 ["Name"]
       99 LOADK                            R10 K30 [""]
      100 SETTABLEKS                       R10 R8 K31 ["Text"]
      102 LOADB                            R10 0
      103 SETTABLEKS                       R10 R8 K32 ["AutoButtonColor"]
      105 LOADN                            R10 0
      106 SETTABLEKS                       R10 R8 K9 ["BorderSizePixel"]
      108 LOADN                            R10 1
      109 SETTABLEKS                       R10 R8 K33 ["BackgroundTransparency"]
      111 LOADN                            R10 102
      112 SETTABLEKS                       R10 R8 K14 ["ZIndex"]
      114 GETUPVAL                         R9 5
      115 GETTABLEKS                       R9 R9 K34 ["Shift"]
      117 SETTABLEKS                       R9 R8 K8 ["BackgroundColor3"]
      119 GETIMPORT                        R9 K36 [Enum.AutomaticSize.X]
      121 SETTABLEKS                       R9 R8 K11 ["AutomaticSize"]
      123 GETIMPORT                        R9 K39 [UDim2.fromOffset]
      125 LOADN                            R10 0
      126 GETUPVAL                         R11 13
      127 CALL                             R9 2 1
      128 SETTABLEKS                       R9 R8 K40 ["Size"]
      130 SETTABLEKS                       R6 R8 K22 ["LayoutOrder"]
      132 GETUPVAL                         R9 6
      133 GETTABLEKS                       R9 R9 K41 ["RadiusSmall"]
      135 GETIMPORT                        R10 K3 [Instance.new]
      137 LOADK                            R11 K16 ["UICorner"]
      138 CALL                             R10 1 1
      139 SETTABLEKS                       R9 R10 K17 ["CornerRadius"]
      141 SETTABLEKS                       R8 R10 K18 ["Parent"]
      143 GETUPVAL                         R9 7
      144 MOVE                             R10 R8
      145 LOADN                            R11 0
      146 LOADN                            R12 0
      147 GETUPVAL                         R13 6
      148 GETTABLEKS                       R13 R13 K19 ["Size_100"]
      150 GETUPVAL                         R14 6
      151 GETTABLEKS                       R14 R14 K42 ["Size_200"]
      153 CALL                             R9 5 0
      154 GETUPVAL                         R9 6
      155 GETTABLEKS                       R9 R9 K19 ["Size_100"]
      157 GETIMPORT                        R10 K3 [Instance.new]
      159 LOADK                            R11 K20 ["UIListLayout"]
      160 CALL                             R10 1 1
      161 GETIMPORT                        R11 K45 [Enum.FillDirection.Horizontal]
      163 SETTABLEKS                       R11 R10 K43 ["FillDirection"]
      165 GETIMPORT                        R11 K23 [Enum.SortOrder.LayoutOrder]
      167 SETTABLEKS                       R11 R10 K21 ["SortOrder"]
      169 GETIMPORT                        R11 K48 [Enum.VerticalAlignment.Center]
      171 SETTABLEKS                       R11 R10 K46 ["VerticalAlignment"]
      173 GETIMPORT                        R11 K50 [UDim.new]
      175 LOADN                            R12 0
      176 MOVE                             R13 R9
      177 CALL                             R11 2 1
      178 SETTABLEKS                       R11 R10 K51 ["Padding"]
      180 SETTABLEKS                       R8 R10 K18 ["Parent"]
      182 GETIMPORT                        R9 K3 [Instance.new]
      184 LOADK                            R10 K52 ["TextLabel"]
      185 CALL                             R9 1 1
      186 LOADK                            R10 K53 ["Icon"]
      187 SETTABLEKS                       R10 R9 K6 ["Name"]
      189 LOADN                            R10 1
      190 SETTABLEKS                       R10 R9 K33 ["BackgroundTransparency"]
      192 GETIMPORT                        R10 K39 [UDim2.fromOffset]
      194 GETUPVAL                         R11 6
      195 GETTABLEKS                       R11 R11 K54 ["IconSize"]
      197 GETUPVAL                         R12 6
      198 GETTABLEKS                       R12 R12 K54 ["IconSize"]
      200 CALL                             R10 2 1
      201 SETTABLEKS                       R10 R9 K40 ["Size"]
      203 GETUPVAL                         R10 14
      204 SETTABLEKS                       R10 R9 K55 ["FontFace"]
      206 GETUPVAL                         R10 6
      207 GETTABLEKS                       R10 R10 K54 ["IconSize"]
      209 SETTABLEKS                       R10 R9 K56 ["TextSize"]
      211 GETUPVAL                         R10 5
      212 GETTABLEKS                       R10 R10 K57 ["ContentEmphasis"]
      214 SETTABLEKS                       R10 R9 K58 ["TextColor3"]
      216 LOADK                            R10 K59 ["check"]
      217 SETTABLEKS                       R10 R9 K31 ["Text"]
      219 LOADN                            R10 103
      220 SETTABLEKS                       R10 R9 K14 ["ZIndex"]
      222 SETTABLEKS                       R8 R9 K18 ["Parent"]
      224 JUMPIFNOTEQ                      R7 R2 ; [+3]
      226 LOADN                            R10 0
      227 JUMP                             ; [+1]
      228 LOADN                            R10 1
      229 SETTABLEKS                       R10 R9 K60 ["TextTransparency"]
      231 LOADN                            R10 1
      232 SETTABLEKS                       R10 R9 K22 ["LayoutOrder"]
      234 GETTABLEKS                       R11 R7 K61 ["glyph"]
      236 GETIMPORT                        R12 K3 [Instance.new]
      238 LOADK                            R13 K52 ["TextLabel"]
      239 CALL                             R12 1 1
      240 MOVE                             R10 R12
      241 LOADK                            R12 K53 ["Icon"]
      242 SETTABLEKS                       R12 R10 K6 ["Name"]
      244 LOADN                            R12 1
      245 SETTABLEKS                       R12 R10 K33 ["BackgroundTransparency"]
      247 GETIMPORT                        R12 K39 [UDim2.fromOffset]
      249 GETUPVAL                         R13 6
      250 GETTABLEKS                       R13 R13 K54 ["IconSize"]
      252 GETUPVAL                         R14 6
      253 GETTABLEKS                       R14 R14 K54 ["IconSize"]
      255 CALL                             R12 2 1
      256 SETTABLEKS                       R12 R10 K40 ["Size"]
      258 GETUPVAL                         R12 14
      259 SETTABLEKS                       R12 R10 K55 ["FontFace"]
      261 GETUPVAL                         R12 6
      262 GETTABLEKS                       R12 R12 K54 ["IconSize"]
      264 SETTABLEKS                       R12 R10 K56 ["TextSize"]
      266 GETUPVAL                         R12 5
      267 GETTABLEKS                       R12 R12 K57 ["ContentEmphasis"]
      269 SETTABLEKS                       R12 R10 K58 ["TextColor3"]
      271 SETTABLEKS                       R11 R10 K31 ["Text"]
      273 LOADN                            R12 103
      274 SETTABLEKS                       R12 R10 K14 ["ZIndex"]
      276 SETTABLEKS                       R8 R10 K18 ["Parent"]
      278 LOADN                            R11 2
      279 SETTABLEKS                       R11 R10 K22 ["LayoutOrder"]
      281 GETUPVAL                         R10 15
      282 MOVE                             R11 R8
      283 GETUPVAL                         R12 16
      284 GETTABLEKS                       R13 R7 K62 ["keys"]
      286 GETTABLEKS                       R13 R13 K63 ["title"]
      288 CALL                             R12 1 1
      289 LOADN                            R13 103
      290 CALL                             R10 3 1
      291 LOADN                            R11 3
      292 SETTABLEKS                       R11 R10 K22 ["LayoutOrder"]
      294 GETTABLEKS                       R10 R8 K64 ["MouseEnter"]
      296 NEWCLOSURE                       R12 P0
      297 CAPTURE                          VAL R8
      298 CAPTURE                          UPVAL U6
      299 NAMECALL                         R10 R10 K65 ["Connect"]
      301 CALL                             R10 2 0
      302 GETTABLEKS                       R10 R8 K66 ["MouseLeave"]
      304 NEWCLOSURE                       R12 P1
      305 CAPTURE                          VAL R8
      306 NAMECALL                         R10 R10 K65 ["Connect"]
      308 CALL                             R10 2 0
      309 GETTABLEKS                       R10 R8 K67 ["MouseButton1Up"]
      311 NEWCLOSURE                       R12 P2
      312 CAPTURE                          VAL R7
      313 CAPTURE                          UPVAL U17
      314 CAPTURE                          UPVAL U8
      315 CAPTURE                          UPVAL U18
      316 NAMECALL                         R10 R10 K65 ["Connect"]
      318 CALL                             R10 2 0
      319 GETUPVAL                         R10 19
      320 MOVE                             R11 R8
      321 GETTABLEKS                       R12 R7 K62 ["keys"]
      323 LOADK                            R13 K68 ["Beside"]
      324 DUPTABLE                         R14 K72 [{["edgeOf"], ["inMenu"] = True}]
      325 SETTABLEKS                       R0 R14 K69 ["edgeOf"]
      327 CALL                             R10 4 0
      328 SETTABLEKS                       R0 R8 K18 ["Parent"]
      330 FORGLOOP                         R3 2 ; [-241]
      332 NEWCLOSURE                       R3 P3
      333 CAPTURE                          UPVAL U20
      334 CAPTURE                          UPVAL U6
      335 CAPTURE                          VAL R0
      336 CAPTURE                          UPVAL U21
      337 GETIMPORT                        R4 K3 [Instance.new]
      339 LOADK                            R5 K29 ["TextButton"]
      340 CALL                             R4 1 1
      341 LOADK                            R5 K73 ["CameraModeMenuBlocker"]
      342 SETTABLEKS                       R5 R4 K6 ["Name"]
      344 LOADK                            R5 K30 [""]
      345 SETTABLEKS                       R5 R4 K31 ["Text"]
      347 LOADB                            R5 0
      348 SETTABLEKS                       R5 R4 K32 ["AutoButtonColor"]
      350 LOADN                            R5 0
      351 SETTABLEKS                       R5 R4 K9 ["BorderSizePixel"]
      353 LOADN                            R5 1
      354 SETTABLEKS                       R5 R4 K33 ["BackgroundTransparency"]
      356 LOADN                            R5 100
      357 SETTABLEKS                       R5 R4 K14 ["ZIndex"]
      359 GETUPVAL                         R5 22
      360 NAMECALL                         R5 R5 K74 ["GetGuiInset"]
      362 CALL                             R5 1 1
      363 GETIMPORT                        R6 K39 [UDim2.fromOffset]
      365 GETTABLEKS                       R8 R5 K35 ["X"]
      367 MINUS                            R7 R8
      368 GETTABLEKS                       R9 R5 K75 ["Y"]
      370 MINUS                            R8 R9
      371 CALL                             R6 2 1
      372 SETTABLEKS                       R6 R4 K76 ["Position"]
      374 GETIMPORT                        R6 K77 [UDim2.new]
      376 LOADN                            R7 1
      377 GETTABLEKS                       R8 R5 K35 ["X"]
      379 LOADN                            R9 1
      380 GETTABLEKS                       R10 R5 K75 ["Y"]
      382 CALL                             R6 4 1
      383 SETTABLEKS                       R6 R4 K40 ["Size"]
      385 GETTABLEKS                       R6 R4 K78 ["InputBegan"]
      387 DUPCLOSURE                       R8 K79 [PROTO_81]
      388 CAPTURE                          UPVAL U18
      389 NAMECALL                         R6 R6 K65 ["Connect"]
      391 CALL                             R6 2 0
      392 GETUPVAL                         R6 21
      393 SETTABLEKS                       R6 R4 K18 ["Parent"]
      395 SETUPVAL                         R4 23
      396 GETUPVAL                         R6 21
      397 SETTABLEKS                       R6 R0 K18 ["Parent"]
      399 SETUPVAL                         R0 24
      400 GETUPVAL                         R7 25
      401 LOADK                            R10 K80 ["AbsoluteSize"]
      402 NAMECALL                         R8 R0 K81 ["GetPropertyChangedSignal"]
      404 CALL                             R8 2 1
      405 MOVE                             R10 R3
      406 NAMECALL                         R8 R8 K65 ["Connect"]
      408 CALL                             R8 2 -1
      409 FASTCALL                         TABLE_INSERT ; [+2]
      410 GETIMPORT                        R6 K84 [table.insert]
      412 CALL                             R6 -1 0
      413 MOVE                             R6 R3
      414 CALL                             R6 0 0
      415 GETUPVAL                         R7 25
      416 GETUPVAL                         R8 26
      417 GETTABLEKS                       R8 R8 K78 ["InputBegan"]
      419 DUPCLOSURE                       R10 K85 [PROTO_82]
      420 CAPTURE                          UPVAL U18
      421 NAMECALL                         R8 R8 K65 ["Connect"]
      423 CALL                             R8 2 -1
      424 FASTCALL                         TABLE_INSERT ; [+2]
      425 GETIMPORT                        R6 K84 [table.insert]
      427 CALL                             R6 -1 0
      428 GETUPVAL                         R7 25
      429 GETUPVAL                         R8 26
      430 GETTABLEKS                       R8 R8 K86 ["WindowFocusReleased"]
      432 GETUPVAL                         R10 18
      433 NAMECALL                         R8 R8 K65 ["Connect"]
      435 CALL                             R8 2 -1
      436 FASTCALL                         TABLE_INSERT ; [+2]
      437 GETIMPORT                        R6 K84 [table.insert]
      439 CALL                             R6 -1 0
      440 GETUPVAL                         R7 25
      441 GETUPVAL                         R8 21
      442 LOADK                            R10 K87 ["Enabled"]
      443 NAMECALL                         R8 R8 K81 ["GetPropertyChangedSignal"]
      445 CALL                             R8 2 1
      446 NEWCLOSURE                       R10 P6
      447 CAPTURE                          UPVAL U21
      448 CAPTURE                          UPVAL U18
      449 NAMECALL                         R8 R8 K65 ["Connect"]
      451 CALL                             R8 2 -1
      452 FASTCALL                         TABLE_INSERT ; [+2]
      453 GETIMPORT                        R6 K84 [table.insert]
      455 CALL                             R6 -1 0
      456 RETURN                           R0 0

PROTO_85:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_86:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["CameraNavigationModelLocked"]
        3 JUMPIF                           R1 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMP                             ; [+10]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["CameraNavigationModel"]
        9 GETIMPORT                        R2 K4 [Enum.CameraNavigationModel.Roblox]
       11 JUMPIFNOTEQ                      R1 R2 ; [+3]
       13 GETUPVAL                         R0 2
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R0 3
       16 GETTABLEKS                       R0 R0 K5 ["keys"]
       18 RETURN                           R0 1

PROTO_87:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R1 R0 K1 ["X"]
        5 LOADN                            R2 0
        6 JUMPIFNOTLE                      R1 R2 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K2 ["Size_200"]
       15 GETTABLEKS                       R8 R0 K1 ["X"]
       17 GETTABLEKS                       R9 R1 K1 ["X"]
       19 SUB                              R7 R8 R9
       20 DIVK                             R6 R7 K3 [2]
       21 ADD                              R5 R6 R2
       22 FASTCALL1                        MATH_CEIL R5 ; [+2]
       23 GETIMPORT                        R4 K6 [math.ceil]
       25 CALL                             R4 1 1
       26 FASTCALL2K                       MATH_MAX R4 K7 ; [+4]
       28 LOADK                            R5 K7 [0]
       29 GETIMPORT                        R3 K9 [math.max]
       31 CALL                             R3 2 1
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K10 ["AbsolutePosition"]
       35 GETTABLEKS                       R8 R8 K11 ["Y"]
       37 GETTABLEKS                       R9 R0 K11 ["Y"]
       39 ADD                              R7 R8 R9
       40 ADD                              R6 R7 R2
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R8 R8 K10 ["AbsolutePosition"]
       44 GETTABLEKS                       R8 R8 K11 ["Y"]
       46 GETTABLEKS                       R9 R1 K11 ["Y"]
       48 ADD                              R7 R8 R9
       49 SUB                              R5 R6 R7
       50 FASTCALL2K                       MATH_MAX R5 K7 ; [+4]
       52 LOADK                            R6 K7 [0]
       53 GETIMPORT                        R4 K9 [math.max]
       55 CALL                             R4 2 1
       56 GETUPVAL                         R5 3
       57 GETTABLEKS                       R5 R5 K12 ["Left"]
       59 JUMPIFNOTEQ                      R5 R3 ; [+12]
       61 GETUPVAL                         R5 3
       62 GETTABLEKS                       R5 R5 K13 ["Right"]
       64 JUMPIFNOTEQ                      R5 R3 ; [+7]
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R5 R5 K14 ["Bottom"]
       69 JUMPIFNOTEQ                      R5 R4 ; [+2]
       71 RETURN                           R0 0
       72 GETUPVAL                         R5 3
       73 SETTABLEKS                       R3 R5 K12 ["Left"]
       75 GETUPVAL                         R5 3
       76 SETTABLEKS                       R3 R5 K13 ["Right"]
       78 GETUPVAL                         R5 3
       79 SETTABLEKS                       R4 R5 K14 ["Bottom"]
       81 GETUPVAL                         R5 4
       82 GETTABLEKS                       R5 R5 K15 ["Enabled"]
       84 JUMPIFNOT                        R5 ; [+2]
       85 GETUPVAL                         R5 5
       86 CALL                             R5 0 0
       87 RETURN                           R0 0

PROTO_88:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Cancel"]
        3 CALL                             R1 1 0
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K1 ["Play"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 NAMECALL                         R1 R1 K0 ["Cancel"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 2
       15 LOADN                            R2 1
       16 SETTABLEKS                       R2 R1 K2 ["Value"]
       18 RETURN                           R0 0

PROTO_89:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 NAMECALL                         R1 R1 K0 ["Cancel"]
        5 CALL                             R1 1 0
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R1 2
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K1 ["Value"]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 3
       13 NAMECALL                         R1 R1 K2 ["Play"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_90:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CameraNavigationModel"]
        3 GETIMPORT                        R1 K3 [Enum.CameraNavigationModel.Roblox]
        5 JUMPIFNOTEQ                      R0 R1 ; [+6]
        7 GETUPVAL                         R1 1
        8 LOADK                            R2 K4 ["rbxasset://textures/StudioCameraUI/iconFPS.png"]
        9 SETTABLEKS                       R2 R1 K5 ["Image"]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 LOADK                            R2 K6 ["rbxasset://textures/StudioCameraUI/iconFocus.png"]
       14 SETTABLEKS                       R2 R1 K5 ["Image"]
       16 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CameraNavigationModel"]
        3 GETIMPORT                        R1 K3 [Enum.CameraNavigationModel.Roblox]
        5 JUMPIFNOTEQ                      R0 R1 ; [+6]
        7 GETUPVAL                         R1 1
        8 LOADK                            R2 K4 ["rbxasset://textures/StudioCameraUI/iconFPS.png"]
        9 SETTABLEKS                       R2 R1 K5 ["Image"]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 LOADK                            R2 K6 ["rbxasset://textures/StudioCameraUI/iconFocus.png"]
       14 SETTABLEKS                       R2 R1 K5 ["Image"]
       16 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Play"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Play"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Play"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Cancel"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Cancel"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Cancel"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+4]
       14 GETIMPORT                        R0 K3 [task.cancel]
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 4
       19 LOADK                            R1 K4 [0.1]
       20 SETTABLEKS                       R1 R0 K5 ["TextTransparency"]
       22 GETUPVAL                         R0 5
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       26 GETUPVAL                         R0 4
       27 LOADK                            R1 K7 [0.6]
       28 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       30 GETUPVAL                         R0 6
       31 GETTABLEKS                       R0 R0 K8 ["mouseOverSlider"]
       33 JUMPIF                           R0 ; [+4]
       34 GETUPVAL                         R0 6
       35 GETTABLEKS                       R0 R0 K9 ["isDraggingSlider"]
       37 JUMPIFNOT                        R0 ; [+5]
       38 GETUPVAL                         R0 7
       39 LOADK                            R1 K4 [0.1]
       40 SETTABLEKS                       R1 R0 K10 ["Transparency"]
       42 JUMP                             ; [+4]
       43 GETUPVAL                         R0 7
       44 LOADN                            R1 1
       45 SETTABLEKS                       R1 R0 K10 ["Transparency"]
       47 GETUPVAL                         R0 8
       48 LOADN                            R1 0
       49 SETTABLEKS                       R1 R0 K11 ["ImageTransparency"]
       51 GETUPVAL                         R0 8
       52 LOADN                            R1 0
       53 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       55 GETUPVAL                         R0 6
       56 GETTABLEKS                       R0 R0 K12 ["mouseOverViewSelector"]
       58 JUMPIF                           R0 ; [+21]
       59 GETUPVAL                         R0 6
       60 GETTABLEKS                       R0 R0 K8 ["mouseOverSlider"]
       62 JUMPIF                           R0 ; [+17]
       63 GETUPVAL                         R0 6
       64 GETTABLEKS                       R0 R0 K9 ["isDraggingSlider"]
       66 JUMPIF                           R0 ; [+13]
       67 GETUPVAL                         R0 6
       68 GETTABLEKS                       R0 R0 K13 ["mouseOverNavModel"]
       70 JUMPIF                           R0 ; [+9]
       71 GETIMPORT                        R0 K15 [task.delay]
       73 LOADK                            R1 K16 [3.5]
       74 DUPCLOSURE                       R2 K17 [PROTO_92]
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          UPVAL U2
       78 CALL                             R0 2 1
       79 SETUPVAL                         R0 3
       80 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["CameraNavigationModel"]
        5 GETIMPORT                        R2 K3 [Enum.CameraNavigationModel.IndustryCompatible]
        7 JUMPIFEQ                         R1 R2 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_95:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mouseOverViewSelector"]
        3 JUMPIF                           R0 ; [+28]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["mouseOverSlider"]
        7 JUMPIF                           R0 ; [+24]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["isDraggingSlider"]
       11 JUMPIF                           R0 ; [+20]
       12 LOADB                            R0 1
       13 GETIMPORT                        R1 K4 [next]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K5 ["hoveredNavButtons"]
       18 CALL                             R1 1 1
       19 JUMPIFNOTEQKNIL                  R1 ; [+12]
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K6 ["menuOpen"]
       24 JUMPIF                           R0 ; [+7]
       25 GETUPVAL                         R0 0
       26 GETTABLEKS                       R0 R0 K7 ["editingSpeed"]
       28 JUMPIF                           R0 ; [+3]
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K8 ["approaching"]
       32 RETURN                           R0 1

PROTO_96:
        0 RETURN                           R0 0

PROTO_97:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mouseOverViewSelector"]
        3 JUMPIF                           R0 ; [+28]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["mouseOverSlider"]
        7 JUMPIF                           R0 ; [+24]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["isDraggingSlider"]
       11 JUMPIF                           R0 ; [+20]
       12 LOADB                            R0 1
       13 GETIMPORT                        R1 K4 [next]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K5 ["hoveredNavButtons"]
       18 CALL                             R1 1 1
       19 JUMPIFNOTEQKNIL                  R1 ; [+12]
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K6 ["menuOpen"]
       24 JUMPIF                           R0 ; [+7]
       25 GETUPVAL                         R0 0
       26 GETTABLEKS                       R0 R0 K7 ["editingSpeed"]
       28 JUMPIF                           R0 ; [+3]
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K8 ["approaching"]
       32 JUMPIFNOT                        R0 ; [+2]
       33 LOADB                            R0 0
       34 RETURN                           R0 1
       35 GETUPVAL                         R0 1
       36 JUMPIFNOT                        R0 ; [+6]
       37 GETIMPORT                        R0 K11 [task.cancel]
       39 GETUPVAL                         R1 1
       40 CALL                             R0 1 0
       41 LOADNIL                          R0
       42 SETUPVAL                         R0 1
       43 GETUPVAL                         R0 2
       44 GETTABLEKS                       R0 R0 K12 ["hide"]
       46 CALL                             R0 0 0
       47 GETUPVAL                         R0 3
       48 CALL                             R0 0 0
       49 LOADB                            R0 1
       50 RETURN                           R0 1

PROTO_98:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["mouseOverViewSelector"]
        5 JUMPIF                           R0 ; [+28]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["mouseOverSlider"]
        9 JUMPIF                           R0 ; [+24]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["isDraggingSlider"]
       13 JUMPIF                           R0 ; [+20]
       14 LOADB                            R0 1
       15 GETIMPORT                        R1 K4 [next]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K5 ["hoveredNavButtons"]
       20 CALL                             R1 1 1
       21 JUMPIFNOTEQKNIL                  R1 ; [+12]
       23 GETUPVAL                         R0 1
       24 GETTABLEKS                       R0 R0 K6 ["menuOpen"]
       26 JUMPIF                           R0 ; [+7]
       27 GETUPVAL                         R0 1
       28 GETTABLEKS                       R0 R0 K7 ["editingSpeed"]
       30 JUMPIF                           R0 ; [+3]
       31 GETUPVAL                         R0 1
       32 GETTABLEKS                       R0 R0 K8 ["approaching"]
       34 JUMPIFNOT                        R0 ; [+1]
       35 RETURN                           R0 0
       36 GETUPVAL                         R0 0
       37 JUMPIFNOT                        R0 ; [+6]
       38 GETIMPORT                        R0 K11 [task.cancel]
       40 GETUPVAL                         R1 0
       41 CALL                             R0 1 0
       42 LOADNIL                          R0
       43 SETUPVAL                         R0 0
       44 GETUPVAL                         R0 2
       45 GETTABLEKS                       R0 R0 K12 ["hide"]
       47 CALL                             R0 0 0
       48 GETUPVAL                         R0 3
       49 CALL                             R0 0 0
       50 RETURN                           R0 0

PROTO_99:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K3 ["mouseOverViewSelector"]
       11 JUMPIF                           R0 ; [+28]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K4 ["mouseOverSlider"]
       15 JUMPIF                           R0 ; [+24]
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K5 ["isDraggingSlider"]
       19 JUMPIF                           R0 ; [+20]
       20 LOADB                            R0 1
       21 GETIMPORT                        R1 K7 [next]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K8 ["hoveredNavButtons"]
       26 CALL                             R1 1 1
       27 JUMPIFNOTEQKNIL                  R1 ; [+12]
       29 GETUPVAL                         R0 1
       30 GETTABLEKS                       R0 R0 K9 ["menuOpen"]
       32 JUMPIF                           R0 ; [+7]
       33 GETUPVAL                         R0 1
       34 GETTABLEKS                       R0 R0 K10 ["editingSpeed"]
       36 JUMPIF                           R0 ; [+3]
       37 GETUPVAL                         R0 1
       38 GETTABLEKS                       R0 R0 K11 ["approaching"]
       40 JUMPIFNOT                        R0 ; [+1]
       41 RETURN                           R0 0
       42 GETIMPORT                        R0 K13 [task.delay]
       44 LOADK                            R1 K14 [3.5]
       45 NEWCLOSURE                       R2 P0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          UPVAL U3
       50 CALL                             R0 2 1
       51 SETUPVAL                         R0 0
       52 RETURN                           R0 0

PROTO_100:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mouseOverSlider"]
        3 JUMPIF                           R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["isDraggingSlider"]
        7 JUMPIF                           R0 ; [+3]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["editingSpeed"]
       11 GETUPVAL                         R1 1
       12 JUMPIFNOT                        R0 ; [+2]
       13 LOADK                            R2 K3 [0.1]
       14 JUMP                             ; [+1]
       15 LOADN                            R2 1
       16 SETTABLEKS                       R2 R1 K4 ["Transparency"]
       18 RETURN                           R0 0

PROTO_101:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETIMPORT                        R1 K2 [task.cancel]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K3 ["mouseOverSlider"]
        9 JUMPIF                           R1 ; [+7]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K4 ["isDraggingSlider"]
       13 JUMPIF                           R1 ; [+3]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K5 ["editingSpeed"]
       17 GETUPVAL                         R2 2
       18 JUMPIFNOT                        R1 ; [+2]
       19 LOADK                            R3 K6 [0.1]
       20 JUMP                             ; [+1]
       21 LOADN                            R3 1
       22 SETTABLEKS                       R3 R2 K7 ["Transparency"]
       24 GETUPVAL                         R1 3
       25 GETTABLEKS                       R1 R1 K8 ["show"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 3
       30 GETTABLEKS                       R1 R1 K9 ["repaint"]
       32 CALL                             R1 0 0
       33 GETUPVAL                         R1 4
       34 CALL                             R1 0 0
       35 RETURN                           R0 0

PROTO_102:
        0 SUBK                             R3 R0 K0 [0.1]
        1 GETUPVAL                         R5 0
        2 SUBK                             R4 R5 K0 [0.1]
        3 DIV                              R2 R3 R4
        4 LOADN                            R3 0
        5 LOADN                            R4 1
        6 FASTCALL                         MATH_CLAMP ; [+2]
        7 GETIMPORT                        R1 K3 [math.clamp]
        9 CALL                             R1 3 1
       10 LOADN                            R4 10
       11 GETUPVAL                         R5 1
       12 FASTCALL2K                       MATH_POW R1 K4 ; [+5]
       14 MOVE                             R7 R1
       15 LOADK                            R8 K4 [0.45454545454545453]
       16 GETIMPORT                        R6 K6 [math.pow]
       18 CALL                             R6 2 1
       19 FASTCALL                         MATH_LERP ; [+2]
       20 GETIMPORT                        R3 K8 [math.lerp]
       22 CALL                             R3 3 1
       23 LOADN                            R4 10
       24 GETUPVAL                         R5 1
       25 FASTCALL                         MATH_CLAMP ; [+2]
       26 GETIMPORT                        R2 K3 [math.clamp]
       28 CALL                             R2 3 1
       29 RETURN                           R2 1

PROTO_103:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["AbsolutePosition"]
        3 GETTABLEKS                       R2 R2 K2 ["X"]
        5 ADDK                             R1 R2 K0 [10]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["AbsolutePosition"]
        9 GETTABLEKS                       R3 R3 K2 ["X"]
       11 GETUPVAL                         R4 1
       12 ADD                              R2 R3 R4
       13 SUB                              R5 R0 R1
       14 SUB                              R6 R2 R1
       15 DIV                              R4 R5 R6
       16 LOADN                            R5 0
       17 LOADN                            R6 1
       18 FASTCALL                         MATH_CLAMP ; [+2]
       19 GETIMPORT                        R3 K5 [math.clamp]
       21 CALL                             R3 3 1
       22 LOADK                            R6 K6 [0.1]
       23 GETUPVAL                         R7 2
       24 FASTCALL2K                       MATH_POW R3 K7 ; [+5]
       26 MOVE                             R9 R3
       27 LOADK                            R10 K7 [2.2]
       28 GETIMPORT                        R8 K9 [math.pow]
       30 CALL                             R8 2 1
       31 FASTCALL                         MATH_LERP ; [+2]
       32 GETIMPORT                        R5 K11 [math.lerp]
       34 CALL                             R5 3 1
       35 LOADK                            R6 K6 [0.1]
       36 GETUPVAL                         R7 2
       37 FASTCALL                         MATH_CLAMP ; [+2]
       38 GETIMPORT                        R4 K5 [math.clamp]
       40 CALL                             R4 3 1
       41 RETURN                           R4 1

PROTO_104:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+9]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["CameraNavigationModel"]
        5 GETIMPORT                        R3 K3 [Enum.CameraNavigationModel.IndustryCompatible]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 JUMPIFNOT                        R1 ; [+2]
       12 LOADK                            R0 K4 ["Camera Orbit Speed"]
       13 RETURN                           R0 1
       14 LOADK                            R0 K5 ["Camera Speed"]
       15 RETURN                           R0 1

PROTO_105:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+9]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["CameraNavigationModel"]
        5 GETIMPORT                        R3 K3 [Enum.CameraNavigationModel.IndustryCompatible]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETIMPORT                        R1 K6 [string.format]
       14 LOADK                            R2 K7 ["%.2f"]
       15 MOVE                             R3 R0
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1
       18 LOADK                            R2 K8 [0.5]
       19 JUMPIFNOTLT                      R0 R2 ; [+7]
       21 GETIMPORT                        R1 K6 [string.format]
       23 LOADK                            R2 K7 ["%.2f"]
       24 MOVE                             R3 R0
       25 CALL                             R1 2 1
       26 RETURN                           R1 1
       27 GETIMPORT                        R1 K6 [string.format]
       29 LOADK                            R2 K9 ["%.1f"]
       30 MOVE                             R3 R0
       31 CALL                             R1 2 1
       32 RETURN                           R1 1

PROTO_106:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+79]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 0
        4 JUMPIFNOT                        R3 ; [+9]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["CameraNavigationModel"]
        8 GETIMPORT                        R5 K3 [Enum.CameraNavigationModel.IndustryCompatible]
       10 JUMPIFEQ                         R4 R5 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 JUMPIFNOT                        R3 ; [+2]
       15 LOADK                            R2 K4 ["Camera Orbit Speed"]
       16 JUMP                             ; [+1]
       17 LOADK                            R2 K5 ["Camera Speed"]
       18 GETTABLE                         R0 R1 R2
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R3 3
       21 MOVE                             R4 R0
       22 CALL                             R3 1 1
       23 GETUPVAL                         R5 0
       24 JUMPIFNOT                        R5 ; [+9]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K0 ["CameraNavigationModel"]
       28 GETIMPORT                        R7 K3 [Enum.CameraNavigationModel.IndustryCompatible]
       30 JUMPIFEQ                         R6 R7 ; [+2]
       32 LOADB                            R5 0 +1
       33 LOADB                            R5 1
       34 JUMPIFNOT                        R5 ; [+2]
       35 LOADK                            R4 K6 ["x"]
       36 JUMP                             ; [+1]
       37 LOADK                            R4 K7 [""]
       38 CONCAT                           R2 R3 R4
       39 SETTABLEKS                       R2 R1 K8 ["Text"]
       41 GETUPVAL                         R1 4
       42 GETIMPORT                        R2 K11 [UDim2.new]
       44 LOADN                            R3 0
       45 SUBK                             R7 R0 K12 [0.1]
       46 GETUPVAL                         R9 5
       47 SUBK                             R8 R9 K12 [0.1]
       48 DIV                              R6 R7 R8
       49 LOADN                            R7 0
       50 LOADN                            R8 1
       51 FASTCALL                         MATH_CLAMP ; [+2]
       52 GETIMPORT                        R5 K15 [math.clamp]
       54 CALL                             R5 3 1
       55 LOADN                            R8 10
       56 GETUPVAL                         R9 6
       57 FASTCALL2K                       MATH_POW R5 K16 ; [+5]
       59 MOVE                             R11 R5
       60 LOADK                            R12 K16 [0.45454545454545453]
       61 GETIMPORT                        R10 K18 [math.pow]
       63 CALL                             R10 2 1
       64 FASTCALL                         MATH_LERP ; [+2]
       65 GETIMPORT                        R7 K20 [math.lerp]
       67 CALL                             R7 3 1
       68 LOADN                            R8 10
       69 GETUPVAL                         R9 6
       70 FASTCALL                         MATH_CLAMP ; [+2]
       71 GETIMPORT                        R6 K15 [math.clamp]
       73 CALL                             R6 3 1
       74 MOVE                             R4 R6
       75 LOADN                            R5 1
       76 LOADN                            R6 0
       77 CALL                             R2 4 1
       78 SETTABLEKS                       R2 R1 K21 ["Size"]
       80 RETURN                           R0 0
       81 GETUPVAL                         R1 1
       82 GETTABLEKS                       R0 R1 K5 ["Camera Speed"]
       84 GETUPVAL                         R1 2
       85 LOADK                            R3 K22 [0.5]
       86 JUMPIFNOTLT                      R0 R3 ; [+7]
       88 GETIMPORT                        R2 K25 [string.format]
       90 LOADK                            R3 K26 ["%.2f"]
       91 MOVE                             R4 R0
       92 CALL                             R2 2 1
       93 JUMP                             ; [+5]
       94 GETIMPORT                        R2 K25 [string.format]
       96 LOADK                            R3 K27 ["%.1f"]
       97 MOVE                             R4 R0
       98 CALL                             R2 2 1
       99 SETTABLEKS                       R2 R1 K8 ["Text"]
      101 GETUPVAL                         R1 4
      102 GETIMPORT                        R2 K11 [UDim2.new]
      104 LOADN                            R3 0
      105 SUBK                             R7 R0 K12 [0.1]
      106 GETUPVAL                         R9 5
      107 SUBK                             R8 R9 K12 [0.1]
      108 DIV                              R6 R7 R8
      109 LOADN                            R7 0
      110 LOADN                            R8 1
      111 FASTCALL                         MATH_CLAMP ; [+2]
      112 GETIMPORT                        R5 K15 [math.clamp]
      114 CALL                             R5 3 1
      115 LOADN                            R8 10
      116 GETUPVAL                         R9 6
      117 FASTCALL2K                       MATH_POW R5 K16 ; [+5]
      119 MOVE                             R11 R5
      120 LOADK                            R12 K16 [0.45454545454545453]
      121 GETIMPORT                        R10 K18 [math.pow]
      123 CALL                             R10 2 1
      124 FASTCALL                         MATH_LERP ; [+2]
      125 GETIMPORT                        R7 K20 [math.lerp]
      127 CALL                             R7 3 1
      128 LOADN                            R8 10
      129 GETUPVAL                         R9 6
      130 FASTCALL                         MATH_CLAMP ; [+2]
      131 GETIMPORT                        R6 K15 [math.clamp]
      133 CALL                             R6 3 1
      134 MOVE                             R4 R6
      135 LOADN                            R5 1
      136 LOADN                            R6 0
      137 CALL                             R2 4 1
      138 SETTABLEKS                       R2 R1 K21 ["Size"]
      140 RETURN                           R0 0

PROTO_107:
        0 RETURN                           R0 0

PROTO_108:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["ControlContentEmphasis"]
        4 SETTABLEKS                       R1 R0 K1 ["TextColor3"]
        6 RETURN                           R0 0

PROTO_109:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["editingSpeed"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R3 3
        7 GETUPVAL                         R5 4
        8 JUMPIFNOT                        R5 ; [+9]
        9 GETUPVAL                         R6 3
       10 GETTABLEKS                       R6 R6 K1 ["CameraNavigationModel"]
       12 GETIMPORT                        R7 K4 [Enum.CameraNavigationModel.IndustryCompatible]
       14 JUMPIFEQ                         R6 R7 ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 JUMPIFNOT                        R5 ; [+2]
       19 LOADK                            R4 K5 ["Camera Orbit Speed"]
       20 JUMP                             ; [+1]
       21 LOADK                            R4 K6 ["Camera Speed"]
       22 GETTABLE                         R2 R3 R4
       23 CALL                             R1 1 1
       24 SETTABLEKS                       R1 R0 K7 ["Text"]
       26 GETUPVAL                         R0 1
       27 LOADB                            R1 1
       28 SETTABLEKS                       R1 R0 K8 ["Visible"]
       30 GETUPVAL                         R0 5
       31 CALL                             R0 0 0
       32 GETUPVAL                         R0 1
       33 NAMECALL                         R0 R0 K9 ["CaptureFocus"]
       35 CALL                             R0 1 0
       36 GETUPVAL                         R0 1
       37 LOADN                            R1 1
       38 SETTABLEKS                       R1 R0 K10 ["SelectionStart"]
       40 GETUPVAL                         R0 1
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K7 ["Text"]
       44 LENGTH                           R2 R3
       45 ADDK                             R1 R2 K11 [1]
       46 SETTABLEKS                       R1 R0 K12 ["CursorPosition"]
       48 RETURN                           R0 0

PROTO_110:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R1 ; [+9]
        3 GETTABLEKS                       R3 R1 K0 ["KeyCode"]
        5 GETIMPORT                        R4 K3 [Enum.KeyCode.Escape]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETIMPORT                        R4 K6 [string.gsub]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K7 ["Text"]
       16 LOADK                            R6 K8 ["[%sxX]"]
       17 LOADK                            R7 K9 [""]
       18 CALL                             R4 3 1
       19 FASTCALL1                        TONUMBER R4 ; [+2]
       20 GETIMPORT                        R3 K11 [tonumber]
       22 CALL                             R3 1 1
       23 JUMPIF                           R2 ; [+28]
       24 JUMPIFNOT                        R3 ; [+27]
       25 JUMPIFNOTEQ                      R3 R3 ; [+26]
       27 GETUPVAL                         R4 1
       28 GETUPVAL                         R6 2
       29 JUMPIFNOT                        R6 ; [+9]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K12 ["CameraNavigationModel"]
       33 GETIMPORT                        R8 K14 [Enum.CameraNavigationModel.IndustryCompatible]
       35 JUMPIFEQ                         R7 R8 ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 JUMPIFNOT                        R6 ; [+2]
       40 LOADK                            R5 K15 ["Camera Orbit Speed"]
       41 JUMP                             ; [+1]
       42 LOADK                            R5 K16 ["Camera Speed"]
       43 LOADK                            R8 K17 [0.1]
       44 GETUPVAL                         R9 3
       45 FASTCALL3                        MATH_CLAMP R3 R8 R9
       47 MOVE                             R7 R3
       48 GETIMPORT                        R6 K20 [math.clamp]
       50 CALL                             R6 3 1
       51 SETTABLE                         R6 R4 R5
       52 GETUPVAL                         R4 0
       53 LOADB                            R5 0
       54 SETTABLEKS                       R5 R4 K21 ["Visible"]
       56 GETUPVAL                         R4 4
       57 LOADB                            R5 0
       58 SETTABLEKS                       R5 R4 K22 ["editingSpeed"]
       60 GETUPVAL                         R4 5
       61 CALL                             R4 0 0
       62 GETUPVAL                         R4 6
       63 CALL                             R4 0 0
       64 RETURN                           R0 0

PROTO_111:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_112:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_113:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_114:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverViewSelector"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_115:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverViewSelector"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_116:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_117:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 LOADB                            R1 1
        3 SETUPVAL                         R1 0
        4 SETUPVAL                         R0 1
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 FASTCALL2                        MATH_MIN R2 R0 ; [+4]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R1 K2 [math.min]
       12 CALL                             R1 2 1
       13 SETUPVAL                         R1 1
       14 RETURN                           R0 0

PROTO_118:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K3 ["approaching"]
       11 JUMPIFNOT                        R0 ; [+7]
       12 GETUPVAL                         R0 1
       13 LOADB                            R1 0
       14 SETTABLEKS                       R1 R0 K3 ["approaching"]
       16 GETUPVAL                         R0 2
       17 LOADB                            R1 1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_119:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+8]
        2 LOADN                            R4 0
        3 JUMPIFNOTLT                      R1 R4 ; [+4]
        5 LOADN                            R4 1
        6 LOADN                            R5 0
        7 RETURN                           R4 2
        8 RETURN                           R2 2
        9 DIV                              R4 R1 R0
       10 LOADN                            R5 0
       11 JUMPIFNOTLT                      R0 R5 ; [+10]
       13 FASTCALL2                        MATH_MAX R2 R4 ; [+5]
       15 MOVE                             R6 R2
       16 MOVE                             R7 R4
       17 GETIMPORT                        R5 K3 [math.max]
       19 CALL                             R5 2 1
       20 MOVE                             R6 R3
       21 RETURN                           R5 2
       22 MOVE                             R5 R2
       23 FASTCALL2                        MATH_MIN R3 R4 ; [+5]
       25 MOVE                             R7 R3
       26 MOVE                             R8 R4
       27 GETIMPORT                        R6 K5 [math.min]
       29 CALL                             R6 2 1
       30 RETURN                           R5 2

PROTO_120:
        0 SUB                              R4 R1 R0
        1 LOADN                            R5 0
        2 LOADN                            R6 1
        3 GETTABLEKS                       R10 R4 K0 ["X"]
        5 MINUS                            R9 R10
        6 GETTABLEKS                       R11 R0 K0 ["X"]
        8 GETTABLEKS                       R12 R2 K0 ["X"]
       10 SUB                              R10 R11 R12
       11 JUMPIFNOTEQKN                    R9 K1 [0] ; [+10]
       13 LOADN                            R13 0
       14 JUMPIFNOTLT                      R10 R13 ; [+4]
       16 LOADN                            R7 1
       17 LOADN                            R8 0
       18 JUMP                             ; [+26]
       19 MOVE                             R7 R5
       20 MOVE                             R8 R6
       21 JUMP                             ; [+23]
       22 DIV                              R13 R10 R9
       23 LOADN                            R14 0
       24 JUMPIFNOTLT                      R9 R14 ; [+11]
       26 FASTCALL2                        MATH_MAX R5 R13 ; [+5]
       28 MOVE                             R15 R5
       29 MOVE                             R16 R13
       30 GETIMPORT                        R14 K4 [math.max]
       32 CALL                             R14 2 1
       33 MOVE                             R7 R14
       34 MOVE                             R8 R6
       35 JUMP                             ; [+9]
       36 MOVE                             R7 R5
       37 FASTCALL2                        MATH_MIN R6 R13 ; [+5]
       39 MOVE                             R15 R6
       40 MOVE                             R16 R13
       41 GETIMPORT                        R14 K6 [math.min]
       43 CALL                             R14 2 1
       44 MOVE                             R8 R14
       45 MOVE                             R5 R7
       46 MOVE                             R6 R8
       47 GETTABLEKS                       R9 R4 K0 ["X"]
       49 GETTABLEKS                       R11 R3 K0 ["X"]
       51 GETTABLEKS                       R12 R0 K0 ["X"]
       53 SUB                              R10 R11 R12
       54 JUMPIFNOTEQKN                    R9 K1 [0] ; [+10]
       56 LOADN                            R13 0
       57 JUMPIFNOTLT                      R10 R13 ; [+4]
       59 LOADN                            R7 1
       60 LOADN                            R8 0
       61 JUMP                             ; [+26]
       62 MOVE                             R7 R5
       63 MOVE                             R8 R6
       64 JUMP                             ; [+23]
       65 DIV                              R13 R10 R9
       66 LOADN                            R14 0
       67 JUMPIFNOTLT                      R9 R14 ; [+11]
       69 FASTCALL2                        MATH_MAX R5 R13 ; [+5]
       71 MOVE                             R15 R5
       72 MOVE                             R16 R13
       73 GETIMPORT                        R14 K4 [math.max]
       75 CALL                             R14 2 1
       76 MOVE                             R7 R14
       77 MOVE                             R8 R6
       78 JUMP                             ; [+9]
       79 MOVE                             R7 R5
       80 FASTCALL2                        MATH_MIN R6 R13 ; [+5]
       82 MOVE                             R15 R6
       83 MOVE                             R16 R13
       84 GETIMPORT                        R14 K6 [math.min]
       86 CALL                             R14 2 1
       87 MOVE                             R8 R14
       88 MOVE                             R5 R7
       89 MOVE                             R6 R8
       90 GETTABLEKS                       R10 R4 K7 ["Y"]
       92 MINUS                            R9 R10
       93 GETTABLEKS                       R11 R0 K7 ["Y"]
       95 GETTABLEKS                       R12 R2 K7 ["Y"]
       97 SUB                              R10 R11 R12
       98 JUMPIFNOTEQKN                    R9 K1 [0] ; [+10]
      100 LOADN                            R13 0
      101 JUMPIFNOTLT                      R10 R13 ; [+4]
      103 LOADN                            R7 1
      104 LOADN                            R8 0
      105 JUMP                             ; [+26]
      106 MOVE                             R7 R5
      107 MOVE                             R8 R6
      108 JUMP                             ; [+23]
      109 DIV                              R13 R10 R9
      110 LOADN                            R14 0
      111 JUMPIFNOTLT                      R9 R14 ; [+11]
      113 FASTCALL2                        MATH_MAX R5 R13 ; [+5]
      115 MOVE                             R15 R5
      116 MOVE                             R16 R13
      117 GETIMPORT                        R14 K4 [math.max]
      119 CALL                             R14 2 1
      120 MOVE                             R7 R14
      121 MOVE                             R8 R6
      122 JUMP                             ; [+9]
      123 MOVE                             R7 R5
      124 FASTCALL2                        MATH_MIN R6 R13 ; [+5]
      126 MOVE                             R15 R6
      127 MOVE                             R16 R13
      128 GETIMPORT                        R14 K6 [math.min]
      130 CALL                             R14 2 1
      131 MOVE                             R8 R14
      132 MOVE                             R5 R7
      133 MOVE                             R6 R8
      134 GETTABLEKS                       R9 R4 K7 ["Y"]
      136 GETTABLEKS                       R11 R3 K7 ["Y"]
      138 GETTABLEKS                       R12 R0 K7 ["Y"]
      140 SUB                              R10 R11 R12
      141 JUMPIFNOTEQKN                    R9 K1 [0] ; [+10]
      143 LOADN                            R13 0
      144 JUMPIFNOTLT                      R10 R13 ; [+4]
      146 LOADN                            R7 1
      147 LOADN                            R8 0
      148 JUMP                             ; [+26]
      149 MOVE                             R7 R5
      150 MOVE                             R8 R6
      151 JUMP                             ; [+23]
      152 DIV                              R13 R10 R9
      153 LOADN                            R14 0
      154 JUMPIFNOTLT                      R9 R14 ; [+11]
      156 FASTCALL2                        MATH_MAX R5 R13 ; [+5]
      158 MOVE                             R15 R5
      159 MOVE                             R16 R13
      160 GETIMPORT                        R14 K4 [math.max]
      162 CALL                             R14 2 1
      163 MOVE                             R7 R14
      164 MOVE                             R8 R6
      165 JUMP                             ; [+9]
      166 MOVE                             R7 R5
      167 FASTCALL2                        MATH_MIN R6 R13 ; [+5]
      169 MOVE                             R15 R6
      170 MOVE                             R16 R13
      171 GETIMPORT                        R14 K6 [math.min]
      173 CALL                             R14 2 1
      174 MOVE                             R8 R14
      175 MOVE                             R5 R7
      176 MOVE                             R6 R8
      177 JUMPIFLE                         R5 R6 ; [+2]
      179 LOADB                            R7 0 +1
      180 LOADB                            R7 1
      181 RETURN                           R7 1

PROTO_121:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [os.clock]
        3 CALL                             R2 0 1
        4 SUB                              R0 R1 R2
        5 LOADN                            R1 0
        6 JUMPIFNOTLT                      R1 R0 ; [+8]
        8 GETIMPORT                        R1 K5 [task.delay]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R3 2
       12 CALL                             R1 2 1
       13 SETUPVAL                         R1 1
       14 RETURN                           R0 0
       15 LOADNIL                          R1
       16 SETUPVAL                         R1 1
       17 GETUPVAL                         R1 1
       18 JUMPIFNOT                        R1 ; [+6]
       19 GETIMPORT                        R1 K7 [task.cancel]
       21 GETUPVAL                         R2 1
       22 CALL                             R1 1 0
       23 LOADNIL                          R1
       24 SETUPVAL                         R1 1
       25 GETUPVAL                         R1 3
       26 GETTABLEKS                       R1 R1 K8 ["approaching"]
       28 JUMPIFNOT                        R1 ; [+7]
       29 GETUPVAL                         R1 3
       30 LOADB                            R2 0
       31 SETTABLEKS                       R2 R1 K8 ["approaching"]
       33 GETUPVAL                         R1 4
       34 LOADB                            R2 1
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_122:
        0 ADDK                             R1 R0 K0 [0.25]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 GETIMPORT                        R2 K3 [task.delay]
       13 LOADK                            R3 K0 [0.25]
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 SETUPVAL                         R2 1
       17 RETURN                           R0 0

PROTO_123:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R1 R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Enabled"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R1 K7 [os.clock]
       13 CALL                             R1 0 1
       14 GETUPVAL                         R3 1
       15 NAMECALL                         R3 R3 K8 ["GetMouseLocation"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 2
       19 NAMECALL                         R4 R4 K9 ["GetGuiInset"]
       21 CALL                             R4 1 1
       22 SUB                              R2 R3 R4
       23 GETUPVAL                         R4 3
       24 DUPTABLE                         R5 K12 [{"position", "time"}]
       25 SETTABLEKS                       R2 R5 K10 ["position"]
       27 SETTABLEKS                       R1 R5 K11 ["time"]
       29 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       31 GETIMPORT                        R3 K15 [table.insert]
       33 CALL                             R3 2 0
       34 GETUPVAL                         R4 3
       35 LENGTH                           R3 R4
       36 LOADN                            R4 1
       37 JUMPIFNOTLT                      R4 R3 ; [+15]
       39 GETUPVAL                         R5 3
       40 GETTABLEN                        R4 R5 1
       41 GETTABLEKS                       R4 R4 K11 ["time"]
       43 SUB                              R3 R1 R4
       44 LOADK                            R4 K16 [0.1]
       45 JUMPIFNOTLT                      R4 R3 ; [+7]
       47 GETIMPORT                        R3 K18 [table.remove]
       49 GETUPVAL                         R4 3
       50 LOADN                            R5 1
       51 CALL                             R3 2 0
       52 JUMPBACK                         ; [-19]
       53 GETUPVAL                         R5 3
       54 GETTABLEN                        R4 R5 1
       55 GETTABLEKS                       R4 R4 K11 ["time"]
       57 SUB                              R3 R1 R4
       58 LOADN                            R4 0
       59 JUMPIFNOTLE                      R3 R4 ; [+2]
       61 RETURN                           R0 0
       62 GETUPVAL                         R7 3
       63 GETTABLEN                        R6 R7 1
       64 GETTABLEKS                       R6 R6 K10 ["position"]
       66 SUB                              R5 R2 R6
       67 DIV                              R4 R5 R3
       68 GETUPVAL                         R6 4
       69 GETTABLEKS                       R6 R6 K19 ["AbsolutePosition"]
       71 GETIMPORT                        R7 K22 [Vector2.new]
       73 GETUPVAL                         R8 5
       74 GETTABLEKS                       R8 R8 K23 ["Left"]
       76 GETUPVAL                         R9 5
       77 GETTABLEKS                       R9 R9 K24 ["Top"]
       79 CALL                             R7 2 1
       80 SUB                              R5 R6 R7
       81 GETUPVAL                         R8 4
       82 GETTABLEKS                       R8 R8 K19 ["AbsolutePosition"]
       84 GETUPVAL                         R9 4
       85 GETTABLEKS                       R9 R9 K25 ["AbsoluteSize"]
       87 ADD                              R7 R8 R9
       88 GETIMPORT                        R8 K22 [Vector2.new]
       90 GETUPVAL                         R9 5
       91 GETTABLEKS                       R9 R9 K26 ["Right"]
       93 GETUPVAL                         R10 5
       94 GETTABLEKS                       R10 R10 K27 ["Bottom"]
       96 CALL                             R8 2 1
       97 ADD                              R6 R7 R8
       98 GETIMPORT                        R7 K22 [Vector2.new]
      100 GETTABLEKS                       R9 R2 K28 ["X"]
      102 GETTABLEKS                       R10 R5 K28 ["X"]
      104 GETTABLEKS                       R11 R6 K28 ["X"]
      106 FASTCALL                         MATH_CLAMP ; [+2]
      107 GETIMPORT                        R8 K31 [math.clamp]
      109 CALL                             R8 3 1
      110 GETTABLEKS                       R10 R2 K32 ["Y"]
      112 GETTABLEKS                       R11 R5 K32 ["Y"]
      114 GETTABLEKS                       R12 R6 K32 ["Y"]
      116 FASTCALL                         MATH_CLAMP ; [+2]
      117 GETIMPORT                        R9 K31 [math.clamp]
      119 CALL                             R9 3 1
      120 CALL                             R7 2 1
      121 SUB                              R8 R2 R7
      122 GETTABLEKS                       R8 R8 K33 ["Magnitude"]
      124 GETTABLEKS                       R9 R4 K33 ["Magnitude"]
      126 JUMPIFNOTEQKN                    R8 K34 [0] ; [+17]
      128 GETUPVAL                         R10 6
      129 JUMPIF                           R10 ; [+5]
      130 LOADB                            R10 1
      131 SETUPVAL                         R10 6
      132 LOADN                            R10 0
      133 SETUPVAL                         R10 7
      134 JUMP                             ; [+19]
      135 GETUPVAL                         R11 7
      136 FASTCALL2K                       MATH_MIN R11 K34 ; [+4]
      138 LOADK                            R12 K34 [0]
      139 GETIMPORT                        R10 K36 [math.min]
      141 CALL                             R10 2 1
      142 SETUPVAL                         R10 7
      143 JUMP                             ; [+10]
      144 GETUPVAL                         R10 6
      145 JUMPIFNOT                        R10 ; [+8]
      146 GETUPVAL                         R11 7
      147 FASTCALL2                        MATH_MIN R11 R8 ; [+4]
      149 MOVE                             R12 R8
      150 GETIMPORT                        R10 K36 [math.min]
      152 CALL                             R10 2 1
      153 SETUPVAL                         R10 7
      154 LOADB                            R10 0
      155 LOADN                            R11 120
      156 JUMPIFNOTLE                      R8 R11 ; [+19]
      158 LOADB                            R10 0
      159 LOADN                            R11 20
      160 JUMPIFNOTLE                      R11 R9 ; [+15]
      162 LOADB                            R10 0
      163 MULK                             R11 R9 K37 [0.8]
      164 JUMPIFNOTLE                      R8 R11 ; [+11]
      166 GETUPVAL                         R10 8
      167 MOVE                             R11 R2
      168 GETTABLEKS                       R15 R4 K40 ["Unit"]
      170 MULK                             R14 R15 K39 [2]
      171 MULK                             R13 R14 K38 [120]
      172 ADD                              R12 R2 R13
      173 MOVE                             R13 R5
      174 MOVE                             R14 R6
      175 CALL                             R10 4 1
      176 JUMPIF                           R10 ; [+94]
      177 GETUPVAL                         R11 9
      178 JUMPIFNOT                        R11 ; [+6]
      179 GETIMPORT                        R11 K43 [task.cancel]
      181 GETUPVAL                         R12 9
      182 CALL                             R11 1 0
      183 LOADNIL                          R11
      184 SETUPVAL                         R11 9
      185 GETUPVAL                         R11 10
      186 GETTABLEKS                       R11 R11 K44 ["approaching"]
      188 JUMPIFNOT                        R11 ; [+7]
      189 GETUPVAL                         R11 10
      190 LOADB                            R12 0
      191 SETTABLEKS                       R12 R11 K44 ["approaching"]
      193 GETUPVAL                         R11 11
      194 LOADB                            R12 1
      195 CALL                             R11 1 0
      196 GETUPVAL                         R11 6
      197 JUMPIFNOT                        R11 ; [+23]
      198 LOADB                            R11 0
      199 GETUPVAL                         R13 7
      200 SUB                              R12 R8 R13
      201 LOADN                            R13 80
      202 JUMPIFNOTLE                      R13 R12 ; [+18]
      204 LOADB                            R11 0
      205 LOADN                            R12 20
      206 JUMPIFNOTLE                      R12 R9 ; [+14]
      208 GETTABLEKS                       R12 R4 K40 ["Unit"]
      210 SUB                              R14 R2 R7
      211 GETTABLEKS                       R14 R14 K40 ["Unit"]
      213 NAMECALL                         R12 R12 K45 ["Dot"]
      215 CALL                             R12 2 1
      216 LOADK                            R13 K46 [0.7]
      217 JUMPIFLE                         R13 R12 ; [+2]
      219 LOADB                            R11 0 +1
      220 LOADB                            R11 1
      221 JUMPIFNOT                        R11 ; [+48]
      222 GETUPVAL                         R12 10
      223 GETTABLEKS                       R12 R12 K47 ["mouseOverViewSelector"]
      225 JUMPIF                           R12 ; [+28]
      226 GETUPVAL                         R12 10
      227 GETTABLEKS                       R12 R12 K48 ["mouseOverSlider"]
      229 JUMPIF                           R12 ; [+24]
      230 GETUPVAL                         R12 10
      231 GETTABLEKS                       R12 R12 K49 ["isDraggingSlider"]
      233 JUMPIF                           R12 ; [+20]
      234 LOADB                            R12 1
      235 GETIMPORT                        R13 K51 [next]
      237 GETUPVAL                         R14 10
      238 GETTABLEKS                       R14 R14 K52 ["hoveredNavButtons"]
      240 CALL                             R13 1 1
      241 JUMPIFNOTEQKNIL                  R13 ; [+12]
      243 GETUPVAL                         R12 10
      244 GETTABLEKS                       R12 R12 K53 ["menuOpen"]
      246 JUMPIF                           R12 ; [+7]
      247 GETUPVAL                         R12 10
      248 GETTABLEKS                       R12 R12 K54 ["editingSpeed"]
      250 JUMPIF                           R12 ; [+3]
      251 GETUPVAL                         R12 10
      252 GETTABLEKS                       R12 R12 K44 ["approaching"]
      254 JUMPIFNOT                        R12 ; [+1]
      255 RETURN                           R0 0
      256 GETUPVAL                         R12 12
      257 JUMPIFNOT                        R12 ; [+6]
      258 GETIMPORT                        R12 K43 [task.cancel]
      260 GETUPVAL                         R13 12
      261 CALL                             R12 1 0
      262 LOADNIL                          R12
      263 SETUPVAL                         R12 12
      264 GETUPVAL                         R12 13
      265 GETTABLEKS                       R12 R12 K55 ["hide"]
      267 CALL                             R12 0 0
      268 GETUPVAL                         R12 14
      269 CALL                             R12 0 0
      270 RETURN                           R0 0
      271 GETUPVAL                         R11 6
      272 JUMPIF                           R11 ; [+4]
      273 LOADB                            R11 1
      274 SETUPVAL                         R11 6
      275 SETUPVAL                         R8 7
      276 JUMP                             ; [+8]
      277 GETUPVAL                         R12 7
      278 FASTCALL2                        MATH_MIN R12 R8 ; [+4]
      280 MOVE                             R13 R8
      281 GETIMPORT                        R11 K36 [math.min]
      283 CALL                             R11 2 1
      284 SETUPVAL                         R11 7
      285 ADDK                             R11 R1 K56 [0.25]
      286 SETUPVAL                         R11 15
      287 GETUPVAL                         R11 9
      288 JUMPIFNOT                        R11 ; [+1]
      289 JUMP                             ; [+12]
      290 NEWCLOSURE                       R11 P0
      291 CAPTURE                          UPVAL U15
      292 CAPTURE                          UPVAL U9
      293 CAPTURE                          VAL R11
      294 CAPTURE                          UPVAL U10
      295 CAPTURE                          UPVAL U11
      296 GETIMPORT                        R12 K58 [task.delay]
      298 LOADK                            R13 K56 [0.25]
      299 MOVE                             R14 R11
      300 CALL                             R12 2 1
      301 SETUPVAL                         R12 9
      302 GETUPVAL                         R11 10
      303 GETTABLEKS                       R11 R11 K44 ["approaching"]
      305 JUMPIF                           R11 ; [+7]
      306 GETUPVAL                         R11 10
      307 LOADB                            R12 1
      308 SETTABLEKS                       R12 R11 K44 ["approaching"]
      310 GETUPVAL                         R11 11
      311 LOADB                            R12 1
      312 CALL                             R11 1 0
      313 RETURN                           R0 0

PROTO_124:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverViewSelector"]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["mouseOverSlider"]
        8 GETIMPORT                        R0 K4 [table.clear]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["hoveredNavButtons"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETIMPORT                        R0 K8 [task.cancel]
       18 GETUPVAL                         R1 1
       19 CALL                             R0 1 0
       20 LOADNIL                          R0
       21 SETUPVAL                         R0 1
       22 GETUPVAL                         R0 0
       23 LOADB                            R1 0
       24 SETTABLEKS                       R1 R0 K9 ["approaching"]
       26 GETIMPORT                        R0 K4 [table.clear]
       28 GETUPVAL                         R1 2
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 0
       31 GETTABLEKS                       R0 R0 K1 ["mouseOverSlider"]
       33 JUMPIF                           R0 ; [+7]
       34 GETUPVAL                         R0 0
       35 GETTABLEKS                       R0 R0 K10 ["isDraggingSlider"]
       37 JUMPIF                           R0 ; [+3]
       38 GETUPVAL                         R0 0
       39 GETTABLEKS                       R0 R0 K11 ["editingSpeed"]
       41 GETUPVAL                         R1 3
       42 JUMPIFNOT                        R0 ; [+2]
       43 LOADK                            R2 K12 [0.1]
       44 JUMP                             ; [+1]
       45 LOADN                            R2 1
       46 SETTABLEKS                       R2 R1 K13 ["Transparency"]
       48 GETUPVAL                         R0 4
       49 JUMPIFNOT                        R0 ; [+49]
       50 GETUPVAL                         R0 0
       51 GETTABLEKS                       R0 R0 K0 ["mouseOverViewSelector"]
       53 JUMPIF                           R0 ; [+28]
       54 GETUPVAL                         R0 0
       55 GETTABLEKS                       R0 R0 K1 ["mouseOverSlider"]
       57 JUMPIF                           R0 ; [+24]
       58 GETUPVAL                         R0 0
       59 GETTABLEKS                       R0 R0 K10 ["isDraggingSlider"]
       61 JUMPIF                           R0 ; [+20]
       62 LOADB                            R0 1
       63 GETIMPORT                        R1 K15 [next]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K5 ["hoveredNavButtons"]
       68 CALL                             R1 1 1
       69 JUMPIFNOTEQKNIL                  R1 ; [+12]
       71 GETUPVAL                         R0 0
       72 GETTABLEKS                       R0 R0 K16 ["menuOpen"]
       74 JUMPIF                           R0 ; [+7]
       75 GETUPVAL                         R0 0
       76 GETTABLEKS                       R0 R0 K11 ["editingSpeed"]
       78 JUMPIF                           R0 ; [+3]
       79 GETUPVAL                         R0 0
       80 GETTABLEKS                       R0 R0 K9 ["approaching"]
       82 JUMPIFNOT                        R0 ; [+1]
       83 RETURN                           R0 0
       84 GETUPVAL                         R0 5
       85 JUMPIFNOT                        R0 ; [+6]
       86 GETIMPORT                        R0 K8 [task.cancel]
       88 GETUPVAL                         R1 5
       89 CALL                             R0 1 0
       90 LOADNIL                          R0
       91 SETUPVAL                         R0 5
       92 GETUPVAL                         R0 6
       93 GETTABLEKS                       R0 R0 K17 ["hide"]
       95 CALL                             R0 0 0
       96 GETUPVAL                         R0 7
       97 CALL                             R0 0 0
       98 RETURN                           R0 0
       99 GETUPVAL                         R0 5
      100 JUMPIF                           R0 ; [+2]
      101 GETUPVAL                         R0 8
      102 CALL                             R0 0 0
      103 RETURN                           R0 0

PROTO_125:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverSlider"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["Visible"]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_126:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverSlider"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_127:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["IsFocused"]
        7 CALL                             R0 1 1
        8 JUMPIF                           R0 ; [+2]
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 3
       13 LOADB                            R1 1
       14 SETTABLEKS                       R1 R0 K1 ["isDraggingSlider"]
       16 GETUPVAL                         R0 4
       17 CALL                             R0 0 0
       18 GETIMPORT                        R0 K3 [settings]
       20 CALL                             R0 0 1
       21 GETTABLEKS                       R0 R0 K4 ["Studio"]
       23 GETUPVAL                         R2 5
       24 NAMECALL                         R2 R2 K5 ["GetMouseLocation"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R2 R2 K6 ["X"]
       29 GETUPVAL                         R4 6
       30 GETTABLEKS                       R4 R4 K8 ["AbsolutePosition"]
       32 GETTABLEKS                       R4 R4 K6 ["X"]
       34 ADDK                             R3 R4 K7 [10]
       35 GETUPVAL                         R5 6
       36 GETTABLEKS                       R5 R5 K8 ["AbsolutePosition"]
       38 GETTABLEKS                       R5 R5 K6 ["X"]
       40 GETUPVAL                         R6 7
       41 ADD                              R4 R5 R6
       42 SUB                              R7 R2 R3
       43 SUB                              R8 R4 R3
       44 DIV                              R6 R7 R8
       45 LOADN                            R7 0
       46 LOADN                            R8 1
       47 FASTCALL                         MATH_CLAMP ; [+2]
       48 GETIMPORT                        R5 K11 [math.clamp]
       50 CALL                             R5 3 1
       51 LOADK                            R8 K12 [0.1]
       52 GETUPVAL                         R9 8
       53 FASTCALL2K                       MATH_POW R5 K13 ; [+5]
       55 MOVE                             R11 R5
       56 LOADK                            R12 K13 [2.2]
       57 GETIMPORT                        R10 K15 [math.pow]
       59 CALL                             R10 2 1
       60 FASTCALL                         MATH_LERP ; [+2]
       61 GETIMPORT                        R7 K17 [math.lerp]
       63 CALL                             R7 3 1
       64 LOADK                            R8 K12 [0.1]
       65 GETUPVAL                         R9 8
       66 FASTCALL                         MATH_CLAMP ; [+2]
       67 GETIMPORT                        R6 K11 [math.clamp]
       69 CALL                             R6 3 1
       70 MOVE                             R1 R6
       71 SETTABLEKS                       R1 R0 K18 ["Camera Speed"]
       73 GETUPVAL                         R0 9
       74 GETTABLEKS                       R0 R0 K19 ["RenderStepped"]
       76 NAMECALL                         R0 R0 K20 ["Wait"]
       78 CALL                             R0 1 0
       79 GETUPVAL                         R0 5
       80 GETIMPORT                        R2 K24 [Enum.UserInputType.MouseButton1]
       82 NAMECALL                         R0 R0 K25 ["IsMouseButtonPressed"]
       84 CALL                             R0 2 1
       85 JUMPIFNOT                        R0 ; [+1]
       86 JUMPBACK                         ; [-69]
       87 GETUPVAL                         R0 3
       88 LOADB                            R1 0
       89 SETTABLEKS                       R1 R0 K1 ["isDraggingSlider"]
       91 GETUPVAL                         R0 4
       92 CALL                             R0 0 0
       93 RETURN                           R0 0

PROTO_128:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+95]
        2 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        4 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseWheel]
        6 JUMPIFNOTEQ                      R1 R2 ; [+167]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K4 ["editingSpeed"]
       11 JUMPIF                           R1 ; [+162]
       12 GETUPVAL                         R2 0
       13 JUMPIFNOT                        R2 ; [+9]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K5 ["CameraNavigationModel"]
       17 GETIMPORT                        R4 K7 [Enum.CameraNavigationModel.IndustryCompatible]
       19 JUMPIFEQ                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 JUMPIFNOT                        R2 ; [+2]
       24 LOADK                            R1 K8 ["Camera Orbit Speed"]
       25 JUMP                             ; [+1]
       26 LOADK                            R1 K9 ["Camera Speed"]
       27 GETUPVAL                         R4 2
       28 GETTABLE                         R3 R4 R1
       29 SUBK                             R6 R3 K10 [0.1]
       30 GETUPVAL                         R8 3
       31 SUBK                             R7 R8 K10 [0.1]
       32 DIV                              R5 R6 R7
       33 LOADN                            R6 0
       34 LOADN                            R7 1
       35 FASTCALL                         MATH_CLAMP ; [+2]
       36 GETIMPORT                        R4 K13 [math.clamp]
       38 CALL                             R4 3 1
       39 LOADN                            R7 10
       40 GETUPVAL                         R8 4
       41 FASTCALL2K                       MATH_POW R4 K14 ; [+5]
       43 MOVE                             R10 R4
       44 LOADK                            R11 K14 [0.45454545454545453]
       45 GETIMPORT                        R9 K16 [math.pow]
       47 CALL                             R9 2 1
       48 FASTCALL                         MATH_LERP ; [+2]
       49 GETIMPORT                        R6 K18 [math.lerp]
       51 CALL                             R6 3 1
       52 LOADN                            R7 10
       53 GETUPVAL                         R8 4
       54 FASTCALL                         MATH_CLAMP ; [+2]
       55 GETIMPORT                        R5 K13 [math.clamp]
       57 CALL                             R5 3 1
       58 MOVE                             R2 R5
       59 GETTABLEKS                       R5 R0 K20 ["Position"]
       61 GETTABLEKS                       R5 R5 K21 ["Z"]
       63 MULK                             R4 R5 K19 [3]
       64 ADD                              R3 R2 R4
       65 SUBK                             R6 R3 K22 [10]
       66 GETUPVAL                         R8 4
       67 SUBK                             R7 R8 K22 [10]
       68 DIV                              R5 R6 R7
       69 LOADN                            R6 0
       70 LOADN                            R7 1
       71 FASTCALL                         MATH_CLAMP ; [+2]
       72 GETIMPORT                        R4 K13 [math.clamp]
       74 CALL                             R4 3 1
       75 GETUPVAL                         R5 2
       76 LOADK                            R8 K10 [0.1]
       77 GETUPVAL                         R9 3
       78 FASTCALL2K                       MATH_POW R4 K23 ; [+5]
       80 MOVE                             R11 R4
       81 LOADK                            R12 K23 [2.2]
       82 GETIMPORT                        R10 K16 [math.pow]
       84 CALL                             R10 2 1
       85 FASTCALL                         MATH_LERP ; [+2]
       86 GETIMPORT                        R7 K18 [math.lerp]
       88 CALL                             R7 3 1
       89 LOADK                            R8 K10 [0.1]
       90 GETUPVAL                         R9 3
       91 FASTCALL                         MATH_CLAMP ; [+2]
       92 GETIMPORT                        R6 K13 [math.clamp]
       94 CALL                             R6 3 1
       95 SETTABLE                         R6 R5 R1
       96 RETURN                           R0 0
       97 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
       99 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseWheel]
      101 JUMPIFNOTEQ                      R1 R2 ; [+72]
      103 GETUPVAL                         R3 2
      104 GETTABLEKS                       R2 R3 K9 ["Camera Speed"]
      106 SUBK                             R5 R2 K10 [0.1]
      107 GETUPVAL                         R7 3
      108 SUBK                             R6 R7 K10 [0.1]
      109 DIV                              R4 R5 R6
      110 LOADN                            R5 0
      111 LOADN                            R6 1
      112 FASTCALL                         MATH_CLAMP ; [+2]
      113 GETIMPORT                        R3 K13 [math.clamp]
      115 CALL                             R3 3 1
      116 LOADN                            R6 10
      117 GETUPVAL                         R7 4
      118 FASTCALL2K                       MATH_POW R3 K14 ; [+5]
      120 MOVE                             R9 R3
      121 LOADK                            R10 K14 [0.45454545454545453]
      122 GETIMPORT                        R8 K16 [math.pow]
      124 CALL                             R8 2 1
      125 FASTCALL                         MATH_LERP ; [+2]
      126 GETIMPORT                        R5 K18 [math.lerp]
      128 CALL                             R5 3 1
      129 LOADN                            R6 10
      130 GETUPVAL                         R7 4
      131 FASTCALL                         MATH_CLAMP ; [+2]
      132 GETIMPORT                        R4 K13 [math.clamp]
      134 CALL                             R4 3 1
      135 MOVE                             R1 R4
      136 GETTABLEKS                       R4 R0 K20 ["Position"]
      138 GETTABLEKS                       R4 R4 K21 ["Z"]
      140 MULK                             R3 R4 K19 [3]
      141 ADD                              R2 R1 R3
      142 SUBK                             R5 R2 K22 [10]
      143 GETUPVAL                         R7 4
      144 SUBK                             R6 R7 K22 [10]
      145 DIV                              R4 R5 R6
      146 LOADN                            R5 0
      147 LOADN                            R6 1
      148 FASTCALL                         MATH_CLAMP ; [+2]
      149 GETIMPORT                        R3 K13 [math.clamp]
      151 CALL                             R3 3 1
      152 GETUPVAL                         R4 2
      153 LOADK                            R7 K10 [0.1]
      154 GETUPVAL                         R8 3
      155 FASTCALL2K                       MATH_POW R3 K23 ; [+5]
      157 MOVE                             R10 R3
      158 LOADK                            R11 K23 [2.2]
      159 GETIMPORT                        R9 K16 [math.pow]
      161 CALL                             R9 2 1
      162 FASTCALL                         MATH_LERP ; [+2]
      163 GETIMPORT                        R6 K18 [math.lerp]
      165 CALL                             R6 3 1
      166 LOADK                            R7 K10 [0.1]
      167 GETUPVAL                         R8 3
      168 FASTCALL                         MATH_CLAMP ; [+2]
      169 GETIMPORT                        R5 K13 [math.clamp]
      171 CALL                             R5 3 1
      172 SETTABLEKS                       R5 R4 K9 ["Camera Speed"]
      174 RETURN                           R0 0

PROTO_129:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hoveredNavButtons"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K1 ["Visible"]
       10 GETUPVAL                         R0 3
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_130:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hoveredNavButtons"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 3
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_131:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["refresh"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_132:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["refreshLock"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_133:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverNavModel"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["Visible"]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_134:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverNavModel"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_135:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CameraNavigationModel"]
        3 GETIMPORT                        R1 K3 [Enum.CameraNavigationModel.Roblox]
        5 JUMPIFNOTEQ                      R0 R1 ; [+7]
        7 GETUPVAL                         R1 0
        8 GETIMPORT                        R2 K5 [Enum.CameraNavigationModel.IndustryCompatible]
       10 SETTABLEKS                       R2 R1 K0 ["CameraNavigationModel"]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETIMPORT                        R2 K3 [Enum.CameraNavigationModel.Roblox]
       16 SETTABLEKS                       R2 R1 K0 ["CameraNavigationModel"]
       18 RETURN                           R0 0

PROTO_136:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ViewSelectorWaitUntilRender"]
       10 LOADB                            R4 0
       11 NAMECALL                         R1 R1 K5 ["DefineFastFlag"]
       13 CALL                             R1 3 1
       14 JUMPIFNOT                        R1 ; [+5]
       15 GETTABLEKS                       R1 R0 K6 ["RenderStepped"]
       17 NAMECALL                         R1 R1 K7 ["Wait"]
       19 CALL                             R1 1 0
       20 GETIMPORT                        R1 K1 [game]
       22 LOADK                            R3 K8 ["ViewSelectorEmbedViewCubeModel"]
       23 LOADB                            R4 0
       24 NAMECALL                         R1 R1 K5 ["DefineFastFlag"]
       26 CALL                             R1 3 1
       27 GETIMPORT                        R2 K1 [game]
       29 LOADK                            R4 K9 ["NewCameraControls_StudioCameraUI"]
       30 NAMECALL                         R2 R2 K10 ["GetEngineFeature"]
       32 CALL                             R2 2 1
       33 JUMPIFNOT                        R2 ; [+1]
       34 RETURN                           R0 0
       35 GETIMPORT                        R2 K1 [game]
       37 LOADK                            R4 K11 ["GuiService"]
       38 NAMECALL                         R2 R2 K3 ["GetService"]
       40 CALL                             R2 2 1
       41 GETIMPORT                        R3 K1 [game]
       43 LOADK                            R5 K12 ["CoreGui"]
       44 NAMECALL                         R3 R3 K3 ["GetService"]
       46 CALL                             R3 2 1
       47 GETIMPORT                        R4 K1 [game]
       49 LOADK                            R6 K13 ["ContentProvider"]
       50 NAMECALL                         R4 R4 K3 ["GetService"]
       52 CALL                             R4 2 1
       53 GETIMPORT                        R5 K1 [game]
       55 LOADK                            R7 K14 ["UserInputService"]
       56 NAMECALL                         R5 R5 K3 ["GetService"]
       58 CALL                             R5 2 1
       59 GETIMPORT                        R6 K1 [game]
       61 LOADK                            R8 K15 ["InsertService"]
       62 NAMECALL                         R6 R6 K3 ["GetService"]
       64 CALL                             R6 2 1
       65 GETIMPORT                        R7 K1 [game]
       67 LOADK                            R9 K16 ["StudioService"]
       68 NAMECALL                         R7 R7 K3 ["GetService"]
       70 CALL                             R7 2 1
       71 GETIMPORT                        R8 K1 [game]
       73 LOADK                            R10 K17 ["TweenService"]
       74 NAMECALL                         R8 R8 K3 ["GetService"]
       76 CALL                             R8 2 1
       77 GETIMPORT                        R9 K1 [game]
       79 LOADK                            R11 K18 ["MouseService"]
       80 NAMECALL                         R9 R9 K3 ["GetService"]
       82 CALL                             R9 2 1
       83 GETIMPORT                        R10 K20 [settings]
       85 CALL                             R10 0 1
       86 GETTABLEKS                       R10 R10 K21 ["Studio"]
       88 GETIMPORT                        R11 K23 [plugin]
       90 LOADK                            R13 K24 ["ViewSelector"]
       91 NAMECALL                         R11 R11 K25 ["CreateToolbar"]
       93 CALL                             R11 2 1
       94 LOADK                            R14 K24 ["ViewSelector"]
       95 LOADK                            R15 K26 ["Show View Selector"]
       96 LOADK                            R16 K27 [""]
       97 NAMECALL                         R12 R11 K28 ["CreateButton"]
       99 CALL                             R12 4 1
      100 LOADB                            R13 0
      101 SETTABLEKS                       R13 R12 K29 ["ClickableWhenViewportHidden"]
      103 LOADNIL                          R13
      104 LOADNIL                          R14
      105 LOADNIL                          R15
      106 LOADNIL                          R16
      107 LOADNIL                          R17
      108 LOADNIL                          R18
      109 LOADNIL                          R19
      110 LOADNIL                          R20
      111 LOADNIL                          R21
      112 LOADNIL                          R22
      113 LOADNIL                          R23
      114 LOADNIL                          R24
      115 LOADNIL                          R25
      116 LOADNIL                          R26
      117 LOADNIL                          R27
      118 LOADNIL                          R28
      119 LOADNIL                          R29
      120 LOADNIL                          R30
      121 LOADNIL                          R31
      122 LOADNIL                          R32
      123 LOADNIL                          R33
      124 LOADNIL                          R34
      125 LOADNIL                          R35
      126 LOADNIL                          R36
      127 LOADNIL                          R37
      128 NEWTABLE                         R38 0 0
      130 NEWTABLE                         R39 2 0
      132 NEWTABLE                         R40 0 0
      134 SETTABLEKS                       R40 R39 K30 ["Normal"]
      136 NEWTABLE                         R40 0 0
      138 SETTABLEKS                       R40 R39 K31 ["Hover"]
      140 DUPCLOSURE                       R40 K32 [PROTO_0]
      141 GETIMPORT                        R41 K1 [game]
      143 LOADK                            R43 K33 ["NewCameraControls_AxisCamera"]
      144 NAMECALL                         R41 R41 K10 ["GetEngineFeature"]
      146 CALL                             R41 2 1
      147 GETIMPORT                        R42 K1 [game]
      149 LOADK                            R44 K34 ["SupportOrthoCameraApi"]
      150 NAMECALL                         R42 R42 K10 ["GetEngineFeature"]
      152 CALL                             R42 2 1
      153 DUPCLOSURE                       R43 K35 [PROTO_1]
      154 CAPTURE                          VAL R41
      155 CAPTURE                          VAL R42
      156 DUPCLOSURE                       R44 K36 [PROTO_2]
      157 DUPCLOSURE                       R45 K37 [PROTO_3]
      158 DUPTABLE                         R46 K62 [{["Size_100"], ["Size_150"], ["Size_200"], ["ControlHeight"], ["IconSize"], ["RadiusSmall"], ["RadiusMedium"], ["RadiusCircle"], ["TooltipMaxWidth"], ["TooltipArrowSize"], ["TitleFont"], ["BodyFont"], ["TextSize"], ["LineHeight"] = 1.2, ["ControlTransparency"] = 0.92, ["SelectedTransparency"] = 0.84, ["HoverTransparency"] = 0.92, ["HoveredControlTransparency"] = 0.8464, ["SelectedControlTransparency"] = 0.7728}]
      159 LOADN                            R47 4
      160 SETTABLEKS                       R47 R46 K38 ["Size_100"]
      162 LOADN                            R47 6
      163 SETTABLEKS                       R47 R46 K39 ["Size_150"]
      165 LOADN                            R47 7
      166 SETTABLEKS                       R47 R46 K40 ["Size_200"]
      168 LOADN                            R48 22
      169 ADDK                             R47 R48 K63 [4]
      170 SETTABLEKS                       R47 R46 K41 ["ControlHeight"]
      172 LOADN                            R47 15
      173 SETTABLEKS                       R47 R46 K42 ["IconSize"]
      175 GETIMPORT                        R47 K66 [UDim.new]
      177 LOADN                            R48 0
      178 LOADN                            R49 4
      179 CALL                             R47 2 1
      180 SETTABLEKS                       R47 R46 K43 ["RadiusSmall"]
      182 GETIMPORT                        R47 K66 [UDim.new]
      184 LOADN                            R48 0
      185 LOADN                            R49 7
      186 CALL                             R47 2 1
      187 SETTABLEKS                       R47 R46 K44 ["RadiusMedium"]
      189 GETIMPORT                        R47 K66 [UDim.new]
      191 LOADK                            R48 K67 [0.5]
      192 LOADN                            R49 0
      193 CALL                             R47 2 1
      194 SETTABLEKS                       R47 R46 K45 ["RadiusCircle"]
      196 LOADN                            R47 257
      197 SETTABLEKS                       R47 R46 K46 ["TooltipMaxWidth"]
      199 LOADN                            R47 7
      200 SETTABLEKS                       R47 R46 K47 ["TooltipArrowSize"]
      202 GETIMPORT                        R47 K70 [Font.fromEnum]
      204 GETIMPORT                        R48 K73 [Enum.Font.BuilderSansMedium]
      206 CALL                             R47 1 1
      207 SETTABLEKS                       R47 R46 K48 ["TitleFont"]
      209 GETIMPORT                        R47 K70 [Font.fromEnum]
      211 GETIMPORT                        R48 K75 [Enum.Font.BuilderSans]
      213 CALL                             R47 1 1
      214 SETTABLEKS                       R47 R46 K49 ["BodyFont"]
      216 LOADN                            R47 14
      217 SETTABLEKS                       R47 R46 K50 ["TextSize"]
      219 DUPTABLE                         R47 K78 [{"Dark", "Light"}]
      220 DUPTABLE                         R48 K86 [{"Shift", "ContentDefault", "ContentEmphasis", "Surface_200", "InverseSurface", "InverseContentEmphasis", "InverseContentDefault"}]
      221 GETIMPORT                        R49 K89 [Color3.fromRGB]
      223 LOADN                            R50 208
      224 LOADN                            R51 217
      225 LOADN                            R52 251
      226 CALL                             R49 3 1
      227 SETTABLEKS                       R49 R48 K79 ["Shift"]
      229 GETIMPORT                        R49 K89 [Color3.fromRGB]
      231 LOADN                            R50 213
      232 LOADN                            R51 215
      233 LOADN                            R52 221
      234 CALL                             R49 3 1
      235 SETTABLEKS                       R49 R48 K80 ["ContentDefault"]
      237 GETIMPORT                        R49 K89 [Color3.fromRGB]
      239 LOADN                            R50 247
      240 LOADN                            R51 247
      241 LOADN                            R52 248
      242 CALL                             R49 3 1
      243 SETTABLEKS                       R49 R48 K81 ["ContentEmphasis"]
      245 GETIMPORT                        R49 K89 [Color3.fromRGB]
      247 LOADN                            R50 32
      248 LOADN                            R51 34
      249 LOADN                            R52 39
      250 CALL                             R49 3 1
      251 SETTABLEKS                       R49 R48 K82 ["Surface_200"]
      253 GETIMPORT                        R49 K89 [Color3.fromRGB]
      255 LOADN                            R50 255
      256 LOADN                            R51 255
      257 LOADN                            R52 255
      258 CALL                             R49 3 1
      259 SETTABLEKS                       R49 R48 K83 ["InverseSurface"]
      261 GETIMPORT                        R49 K89 [Color3.fromRGB]
      263 LOADN                            R50 32
      264 LOADN                            R51 34
      265 LOADN                            R52 39
      266 CALL                             R49 3 1
      267 SETTABLEKS                       R49 R48 K84 ["InverseContentEmphasis"]
      269 GETIMPORT                        R49 K89 [Color3.fromRGB]
      271 LOADN                            R50 73
      272 LOADN                            R51 77
      273 LOADN                            R52 90
      274 CALL                             R49 3 1
      275 SETTABLEKS                       R49 R48 K85 ["InverseContentDefault"]
      277 SETTABLEKS                       R48 R47 K76 ["Dark"]
      279 DUPTABLE                         R48 K86 [{"Shift", "ContentDefault", "ContentEmphasis", "Surface_200", "InverseSurface", "InverseContentEmphasis", "InverseContentDefault"}]
      280 GETIMPORT                        R49 K89 [Color3.fromRGB]
      282 LOADN                            R50 27
      283 LOADN                            R51 37
      284 LOADN                            R52 75
      285 CALL                             R49 3 1
      286 SETTABLEKS                       R49 R48 K79 ["Shift"]
      288 GETIMPORT                        R49 K89 [Color3.fromRGB]
      290 LOADN                            R50 73
      291 LOADN                            R51 77
      292 LOADN                            R52 90
      293 CALL                             R49 3 1
      294 SETTABLEKS                       R49 R48 K80 ["ContentDefault"]
      296 GETIMPORT                        R49 K89 [Color3.fromRGB]
      298 LOADN                            R50 32
      299 LOADN                            R51 34
      300 LOADN                            R52 39
      301 CALL                             R49 3 1
      302 SETTABLEKS                       R49 R48 K81 ["ContentEmphasis"]
      304 GETIMPORT                        R49 K89 [Color3.fromRGB]
      306 LOADN                            R50 255
      307 LOADN                            R51 255
      308 LOADN                            R52 255
      309 CALL                             R49 3 1
      310 SETTABLEKS                       R49 R48 K82 ["Surface_200"]
      312 GETIMPORT                        R49 K89 [Color3.fromRGB]
      314 LOADN                            R50 18
      315 LOADN                            R51 18
      316 LOADN                            R52 21
      317 CALL                             R49 3 1
      318 SETTABLEKS                       R49 R48 K83 ["InverseSurface"]
      320 GETIMPORT                        R49 K89 [Color3.fromRGB]
      322 LOADN                            R50 247
      323 LOADN                            R51 247
      324 LOADN                            R52 248
      325 CALL                             R49 3 1
      326 SETTABLEKS                       R49 R48 K84 ["InverseContentEmphasis"]
      328 GETIMPORT                        R49 K89 [Color3.fromRGB]
      330 LOADN                            R50 213
      331 LOADN                            R51 215
      332 LOADN                            R52 221
      333 CALL                             R49 3 1
      334 SETTABLEKS                       R49 R48 K85 ["InverseContentDefault"]
      336 SETTABLEKS                       R48 R47 K77 ["Light"]
      338 DUPTABLE                         R48 K92 [{"Surface", "Hovered", "ContentDefault", "ContentEmphasis"}]
      339 GETIMPORT                        R49 K93 [Color3.new]
      341 LOADN                            R50 1
      342 LOADN                            R51 1
      343 LOADN                            R52 1
      344 CALL                             R49 3 1
      345 SETTABLEKS                       R49 R48 K90 ["Surface"]
      347 GETIMPORT                        R49 K89 [Color3.fromRGB]
      349 LOADN                            R50 79
      350 LOADN                            R51 178
      351 LOADN                            R52 229
      352 CALL                             R49 3 1
      353 SETTABLEKS                       R49 R48 K91 ["Hovered"]
      355 GETTABLEKS                       R49 R47 K77 ["Light"]
      357 GETTABLEKS                       R49 R49 K80 ["ContentDefault"]
      359 SETTABLEKS                       R49 R48 K80 ["ContentDefault"]
      361 GETTABLEKS                       R49 R47 K77 ["Light"]
      363 GETTABLEKS                       R49 R49 K81 ["ContentEmphasis"]
      365 SETTABLEKS                       R49 R48 K81 ["ContentEmphasis"]
      367 GETIMPORT                        R51 K1 [game]
      369 LOADK                            R53 K95 ["NewCameraControls_ViewSelectorControlTransparency"]
      370 LOADN                            R54 60
      371 NAMECALL                         R51 R51 K96 ["DefineFastInt"]
      373 CALL                             R51 3 1
      374 LOADN                            R52 0
      375 LOADN                            R53 100
      376 FASTCALL                         MATH_CLAMP ; [+2]
      377 GETIMPORT                        R50 K99 [math.clamp]
      379 CALL                             R50 3 1
      380 DIVK                             R49 R50 K94 [100]
      381 DUPTABLE                         R50 K107 [{["Control"], ["HoveredControl"], ["SelectedControl"], ["ControlSurfaceTransparency"] = 0, ["ControlContentDefault"], ["ControlContentEmphasis"], ["Shift"], ["ContentDefault"], ["ContentEmphasis"], ["Surface_200"], ["InverseSurface"], ["InverseContentEmphasis"], ["InverseContentDefault"]}]
      382 GETIMPORT                        R51 K93 [Color3.new]
      384 CALL                             R51 0 1
      385 SETTABLEKS                       R51 R50 K100 ["Control"]
      387 GETIMPORT                        R51 K93 [Color3.new]
      389 CALL                             R51 0 1
      390 SETTABLEKS                       R51 R50 K101 ["HoveredControl"]
      392 GETIMPORT                        R51 K93 [Color3.new]
      394 CALL                             R51 0 1
      395 SETTABLEKS                       R51 R50 K102 ["SelectedControl"]
      397 GETIMPORT                        R51 K93 [Color3.new]
      399 CALL                             R51 0 1
      400 SETTABLEKS                       R51 R50 K105 ["ControlContentDefault"]
      402 GETIMPORT                        R51 K93 [Color3.new]
      404 CALL                             R51 0 1
      405 SETTABLEKS                       R51 R50 K106 ["ControlContentEmphasis"]
      407 GETIMPORT                        R51 K93 [Color3.new]
      409 CALL                             R51 0 1
      410 SETTABLEKS                       R51 R50 K79 ["Shift"]
      412 GETIMPORT                        R51 K93 [Color3.new]
      414 CALL                             R51 0 1
      415 SETTABLEKS                       R51 R50 K80 ["ContentDefault"]
      417 GETIMPORT                        R51 K93 [Color3.new]
      419 CALL                             R51 0 1
      420 SETTABLEKS                       R51 R50 K81 ["ContentEmphasis"]
      422 GETIMPORT                        R51 K93 [Color3.new]
      424 CALL                             R51 0 1
      425 SETTABLEKS                       R51 R50 K82 ["Surface_200"]
      427 GETIMPORT                        R51 K93 [Color3.new]
      429 CALL                             R51 0 1
      430 SETTABLEKS                       R51 R50 K83 ["InverseSurface"]
      432 GETIMPORT                        R51 K93 [Color3.new]
      434 CALL                             R51 0 1
      435 SETTABLEKS                       R51 R50 K84 ["InverseContentEmphasis"]
      437 GETIMPORT                        R51 K93 [Color3.new]
      439 CALL                             R51 0 1
      440 SETTABLEKS                       R51 R50 K85 ["InverseContentDefault"]
      442 DUPCLOSURE                       R51 K108 [PROTO_4]
      443 CAPTURE                          VAL R10
      444 CAPTURE                          VAL R47
      445 CAPTURE                          VAL R50
      446 CAPTURE                          VAL R46
      447 CAPTURE                          VAL R49
      448 CAPTURE                          VAL R48
      449 MOVE                             R52 R51
      450 CALL                             R52 0 0
      451 NEWTABLE                         R52 0 0
      453 DUPCLOSURE                       R53 K109 [PROTO_5]
      454 CAPTURE                          VAL R52
      455 GETTABLEKS                       R54 R10 K110 ["ThemeChanged"]
      457 DUPCLOSURE                       R56 K111 [PROTO_6]
      458 CAPTURE                          VAL R51
      459 CAPTURE                          VAL R52
      460 NAMECALL                         R54 R54 K112 ["Connect"]
      462 CALL                             R54 2 0
      463 GETIMPORT                        R54 K113 [Font.new]
      465 LOADK                            R55 K114 ["rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json"]
      466 CALL                             R54 1 1
      467 DUPTABLE                         R55 K119 [{["Left"] = 0, ["Right"] = 0, ["Top"], ["Bottom"] = 0}]
      468 AND                              R57 R41 R42
      469 JUMPIFNOT                        R57 ; [+10]
      470 GETTABLEKS                       R58 R46 K41 ["ControlHeight"]
      472 SUBK                             R57 R58 K120 [16]
      473 FASTCALL2K                       MATH_MAX R57 K104 ; [+4]
      475 LOADK                            R58 K104 [0]
      476 GETIMPORT                        R56 K122 [math.max]
      478 CALL                             R56 2 1
      479 JUMP                             ; [+1]
      480 LOADN                            R56 0
      481 SETTABLEKS                       R56 R55 K117 ["Top"]
      483 LOADNIL                          R56
      484 LOADNIL                          R57
      485 NEWTABLE                         R58 0 0
      487 DUPCLOSURE                       R59 K123 [PROTO_8]
      488 CAPTURE                          VAL R58
      489 DUPCLOSURE                       R60 K124 [PROTO_9]
      490 DUPCLOSURE                       R61 K125 [PROTO_10]
      491 DUPCLOSURE                       R62 K126 [PROTO_11]
      492 DUPCLOSURE                       R63 K127 [PROTO_12]
      493 CAPTURE                          VAL R46
      494 CAPTURE                          VAL R54
      495 CAPTURE                          VAL R50
      496 DUPCLOSURE                       R64 K128 [PROTO_13]
      497 CAPTURE                          VAL R46
      498 CAPTURE                          VAL R50
      499 DUPCLOSURE                       R65 K129 [PROTO_14]
      500 DUPCLOSURE                       R66 K130 [PROTO_15]
      501 LOADB                            R67 0
      502 NEWCLOSURE                       R68 P15
      503 CAPTURE                          REF R19
      504 CAPTURE                          VAL R46
      505 CAPTURE                          REF R67
      506 CAPTURE                          REF R66
      507 CAPTURE                          VAL R50
      508 CAPTURE                          VAL R61
      509 CAPTURE                          VAL R64
      510 CAPTURE                          VAL R59
      511 LOADNIL                          R69
      512 LOADNIL                          R70
      513 LOADNIL                          R71
      514 GETIMPORT                        R72 K1 [game]
      516 LOADK                            R74 K131 ["NextGenDraggersEnabledFeature"]
      517 NAMECALL                         R72 R72 K10 ["GetEngineFeature"]
      519 CALL                             R72 2 1
      520 JUMPIFNOT                        R72 ; [+42]
      521 GETIMPORT                        R72 K133 [Color3.fromHex]
      523 GETIMPORT                        R73 K136 [string.format]
      525 LOADK                            R74 K137 ["%06X"]
      526 GETIMPORT                        R75 K1 [game]
      528 LOADK                            R77 K138 ["rbxRed"]
      529 NAMECALL                         R75 R75 K139 ["GetFastInt"]
      531 CALL                             R75 2 -1
      532 CALL                             R73 -1 -1
      533 CALL                             R72 -1 1
      534 MOVE                             R69 R72
      535 GETIMPORT                        R72 K133 [Color3.fromHex]
      537 GETIMPORT                        R73 K136 [string.format]
      539 LOADK                            R74 K137 ["%06X"]
      540 GETIMPORT                        R75 K1 [game]
      542 LOADK                            R77 K140 ["rbxGreen"]
      543 NAMECALL                         R75 R75 K139 ["GetFastInt"]
      545 CALL                             R75 2 -1
      546 CALL                             R73 -1 -1
      547 CALL                             R72 -1 1
      548 MOVE                             R70 R72
      549 GETIMPORT                        R72 K133 [Color3.fromHex]
      551 GETIMPORT                        R73 K136 [string.format]
      553 LOADK                            R74 K137 ["%06X"]
      554 GETIMPORT                        R75 K1 [game]
      556 LOADK                            R77 K141 ["rbxBlue"]
      557 NAMECALL                         R75 R75 K139 ["GetFastInt"]
      559 CALL                             R75 2 -1
      560 CALL                             R73 -1 -1
      561 CALL                             R72 -1 1
      562 MOVE                             R71 R72
      563 NEWCLOSURE                       R72 P16
      564 CAPTURE                          REF R19
      565 CAPTURE                          VAL R3
      566 CAPTURE                          VAL R0
      567 CAPTURE                          VAL R1
      568 CAPTURE                          VAL R6
      569 CAPTURE                          REF R20
      570 CAPTURE                          REF R21
      571 CAPTURE                          REF R22
      572 CAPTURE                          REF R32
      573 CAPTURE                          REF R23
      574 CAPTURE                          REF R24
      575 CAPTURE                          REF R25
      576 CAPTURE                          REF R26
      577 CAPTURE                          REF R30
      578 CAPTURE                          REF R31
      579 CAPTURE                          REF R69
      580 CAPTURE                          REF R70
      581 CAPTURE                          REF R71
      582 CAPTURE                          REF R18
      583 CAPTURE                          REF R56
      584 CAPTURE                          VAL R7
      585 CAPTURE                          REF R57
      586 CAPTURE                          VAL R58
      587 CAPTURE                          VAL R39
      588 CAPTURE                          VAL R38
      589 CAPTURE                          REF R27
      590 CAPTURE                          REF R28
      591 CAPTURE                          REF R29
      592 CAPTURE                          REF R13
      593 CAPTURE                          VAL R12
      594 DUPCLOSURE                       R73 K142 [PROTO_24]
      595 DUPCLOSURE                       R74 K143 [PROTO_26]
      596 DUPCLOSURE                       R75 K144 [PROTO_27]
      597 CAPTURE                          VAL R39
      598 DUPCLOSURE                       R76 K145 [PROTO_28]
      599 CAPTURE                          VAL R39
      600 DUPCLOSURE                       R77 K146 [PROTO_30]
      601 NEWCLOSURE                       R78 P22
      602 CAPTURE                          VAL R2
      603 CAPTURE                          REF R21
      604 NEWCLOSURE                       R79 P23
      605 CAPTURE                          VAL R2
      606 CAPTURE                          REF R21
      607 CAPTURE                          REF R18
      608 CAPTURE                          REF R22
      609 CAPTURE                          VAL R74
      610 CAPTURE                          VAL R77
      611 CAPTURE                          REF R23
      612 CAPTURE                          REF R17
      613 CAPTURE                          VAL R39
      614 NEWCLOSURE                       R80 P24
      615 CAPTURE                          REF R31
      616 CAPTURE                          REF R14
      617 CAPTURE                          REF R30
      618 NEWCLOSURE                       R81 P25
      619 CAPTURE                          REF R31
      620 CAPTURE                          VAL R80
      621 NEWCLOSURE                       R82 P26
      622 CAPTURE                          REF R17
      623 CAPTURE                          VAL R39
      624 CAPTURE                          REF R30
      625 CAPTURE                          REF R31
      626 NEWCLOSURE                       R83 P27
      627 CAPTURE                          REF R15
      628 CAPTURE                          REF R16
      629 CAPTURE                          REF R20
      630 NEWCLOSURE                       R84 P28
      631 CAPTURE                          REF R22
      632 CAPTURE                          VAL R55
      633 CAPTURE                          REF R20
      634 NEWCLOSURE                       R85 P29
      635 CAPTURE                          REF R22
      636 CAPTURE                          REF R20
      637 CAPTURE                          VAL R55
      638 NEWCLOSURE                       R86 P30
      639 CAPTURE                          REF R15
      640 CAPTURE                          VAL R85
      641 NEWCLOSURE                       R87 P31
      642 CAPTURE                          REF R15
      643 CAPTURE                          REF R16
      644 CAPTURE                          REF R20
      645 NEWCLOSURE                       R88 P32
      646 CAPTURE                          REF R36
      647 CAPTURE                          REF R35
      648 CAPTURE                          REF R34
      649 CAPTURE                          REF R37
      650 CAPTURE                          REF R33
      651 NEWCLOSURE                       R89 P33
      652 CAPTURE                          REF R15
      653 CAPTURE                          REF R17
      654 CAPTURE                          VAL R38
      655 CAPTURE                          REF R36
      656 CAPTURE                          REF R35
      657 CAPTURE                          REF R34
      658 CAPTURE                          REF R37
      659 CAPTURE                          REF R33
      660 CAPTURE                          VAL R85
      661 NEWCLOSURE                       R90 P34
      662 CAPTURE                          REF R23
      663 CAPTURE                          REF R14
      664 CAPTURE                          REF R21
      665 CAPTURE                          REF R18
      666 CAPTURE                          REF R22
      667 CAPTURE                          REF R24
      668 CAPTURE                          REF R27
      669 CAPTURE                          REF R25
      670 CAPTURE                          REF R28
      671 CAPTURE                          REF R26
      672 CAPTURE                          REF R29
      673 NEWCLOSURE                       R91 P35
      674 CAPTURE                          REF R33
      675 CAPTURE                          REF R35
      676 CAPTURE                          REF R36
      677 CAPTURE                          REF R34
      678 CAPTURE                          VAL R41
      679 CAPTURE                          REF R37
      680 CAPTURE                          REF R18
      681 CAPTURE                          REF R14
      682 CAPTURE                          REF R21
      683 CAPTURE                          REF R23
      684 CAPTURE                          REF R22
      685 CAPTURE                          REF R24
      686 CAPTURE                          REF R27
      687 CAPTURE                          REF R25
      688 CAPTURE                          REF R28
      689 CAPTURE                          REF R26
      690 CAPTURE                          REF R29
      691 CAPTURE                          VAL R80
      692 NEWCLOSURE                       R92 P36
      693 CAPTURE                          REF R19
      694 CAPTURE                          VAL R4
      695 CAPTURE                          VAL R91
      696 CAPTURE                          VAL R0
      697 CAPTURE                          VAL R84
      698 CAPTURE                          VAL R12
      699 NEWCLOSURE                       R93 P37
      700 CAPTURE                          REF R13
      701 CAPTURE                          VAL R92
      702 NEWCLOSURE                       R94 P38
      703 CAPTURE                          REF R14
      704 CAPTURE                          VAL R74
      705 CAPTURE                          VAL R77
      706 CAPTURE                          VAL R38
      707 CAPTURE                          REF R36
      708 CAPTURE                          REF R35
      709 CAPTURE                          REF R34
      710 CAPTURE                          REF R37
      711 CAPTURE                          REF R33
      712 CAPTURE                          VAL R89
      713 NAMECALL                         R95 R0 K147 ["IsEdit"]
      715 CALL                             R95 1 1
      716 JUMPIF                           R95 ; [+9]
      717 NAMECALL                         R95 R0 K148 ["IsServer"]
      719 CALL                             R95 1 1
      720 JUMPIF                           R95 ; [+5]
      721 LOADB                            R95 0
      722 SETTABLEKS                       R95 R12 K149 ["Enabled"]
      724 CLOSEUPVALS                      R13
      725 RETURN                           R0 0
      726 MOVE                             R95 R72
      727 CALL                             R95 0 0
      728 MOVE                             R95 R92
      729 MOVE                             R96 R13
      730 CALL                             R95 1 0
      731 GETTABLEKS                       R95 R12 K150 ["Click"]
      733 MOVE                             R97 R93
      734 NAMECALL                         R95 R95 K151 ["connect"]
      736 CALL                             R95 2 0
      737 GETTABLEKS                       R95 R32 K152 ["MouseMoved"]
      739 MOVE                             R97 R79
      740 NAMECALL                         R95 R95 K151 ["connect"]
      742 CALL                             R95 2 0
      743 GETTABLEKS                       R95 R32 K153 ["MouseEnter"]
      745 MOVE                             R97 R81
      746 NAMECALL                         R95 R95 K151 ["connect"]
      748 CALL                             R95 2 0
      749 GETTABLEKS                       R95 R32 K154 ["MouseLeave"]
      751 MOVE                             R97 R82
      752 NAMECALL                         R95 R95 K151 ["connect"]
      754 CALL                             R95 2 0
      755 GETTABLEKS                       R95 R32 K155 ["MouseButton1Down"]
      757 MOVE                             R97 R87
      758 NAMECALL                         R95 R95 K151 ["connect"]
      760 CALL                             R95 2 0
      761 GETTABLEKS                       R95 R32 K156 ["MouseButton1Up"]
      763 MOVE                             R97 R89
      764 NAMECALL                         R95 R95 K151 ["connect"]
      766 CALL                             R95 2 0
      767 GETTABLEKS                       R95 R5 K157 ["InputChanged"]
      769 MOVE                             R97 R83
      770 NAMECALL                         R95 R95 K151 ["connect"]
      772 CALL                             R95 2 0
      773 GETTABLEKS                       R95 R5 K158 ["InputEnded"]
      775 MOVE                             R97 R86
      776 NAMECALL                         R95 R95 K151 ["connect"]
      778 CALL                             R95 2 0
      779 MOVE                             R95 R94
      780 LOADK                            R98 K159 ["RightArrow"]
      781 NAMECALL                         R96 R30 K160 ["WaitForChild"]
      783 CALL                             R96 2 1
      784 GETIMPORT                        R97 K162 [Vector2.new]
      786 LOADN                            R98 1
      787 LOADN                            R99 0
      788 CALL                             R97 2 -1
      789 CALL                             R95 -1 0
      790 MOVE                             R95 R94
      791 LOADK                            R98 K163 ["LeftArrow"]
      792 NAMECALL                         R96 R30 K160 ["WaitForChild"]
      794 CALL                             R96 2 1
      795 GETIMPORT                        R97 K162 [Vector2.new]
      797 LOADN                            R98 -1
      798 LOADN                            R99 0
      799 CALL                             R97 2 -1
      800 CALL                             R95 -1 0
      801 MOVE                             R95 R94
      802 LOADK                            R98 K164 ["UpArrow"]
      803 NAMECALL                         R96 R30 K160 ["WaitForChild"]
      805 CALL                             R96 2 1
      806 GETIMPORT                        R97 K162 [Vector2.new]
      808 LOADN                            R98 0
      809 LOADN                            R99 1
      810 CALL                             R97 2 -1
      811 CALL                             R95 -1 0
      812 MOVE                             R95 R94
      813 LOADK                            R98 K165 ["DownArrow"]
      814 NAMECALL                         R96 R30 K160 ["WaitForChild"]
      816 CALL                             R96 2 1
      817 GETIMPORT                        R97 K162 [Vector2.new]
      819 LOADN                            R98 0
      820 LOADN                            R99 -1
      821 CALL                             R97 2 -1
      822 CALL                             R95 -1 0
      823 DUPCLOSURE                       R95 K166 [PROTO_56]
      824 DUPCLOSURE                       R96 K167 [PROTO_57]
      825 DUPTABLE                         R97 K171 [{["fade"] = 1, ["apply"]}]
      826 DUPCLOSURE                       R98 K172 [PROTO_58]
      827 SETTABLEKS                       R98 R97 K170 ["apply"]
      829 AND                              R98 R41 R42
      830 JUMPIFNOT                        R98 ; [+218]
      831 GETTABLEKS                       R100 R30 K173 ["ZIndex"]
      833 ADDK                             R99 R100 K169 [1]
      834 GETIMPORT                        R100 K175 [Instance.new]
      836 LOADK                            R101 K176 ["TextButton"]
      837 CALL                             R100 1 1
      838 MOVE                             R98 R100
      839 LOADK                            R100 K177 ["OrthographicButton"]
      840 SETTABLEKS                       R100 R98 K178 ["Name"]
      842 LOADK                            R100 K27 [""]
      843 SETTABLEKS                       R100 R98 K179 ["Text"]
      845 LOADB                            R100 0
      846 SETTABLEKS                       R100 R98 K180 ["AutoButtonColor"]
      848 LOADN                            R100 0
      849 SETTABLEKS                       R100 R98 K181 ["BorderSizePixel"]
      851 LOADN                            R100 1
      852 SETTABLEKS                       R100 R98 K182 ["BackgroundTransparency"]
      854 SETTABLEKS                       R99 R98 K173 ["ZIndex"]
      856 GETIMPORT                        R99 K162 [Vector2.new]
      858 LOADK                            R100 K67 [0.5]
      859 LOADN                            R101 1
      860 CALL                             R99 2 1
      861 SETTABLEKS                       R99 R98 K183 ["AnchorPoint"]
      863 GETIMPORT                        R99 K185 [UDim2.new]
      865 LOADK                            R100 K67 [0.5]
      866 LOADN                            R101 0
      867 LOADN                            R102 0
      868 LOADN                            R103 16
      869 CALL                             R99 4 1
      870 SETTABLEKS                       R99 R98 K186 ["Position"]
      872 GETIMPORT                        R99 K188 [UDim2.fromOffset]
      874 GETTABLEKS                       R100 R46 K41 ["ControlHeight"]
      876 GETTABLEKS                       R101 R46 K41 ["ControlHeight"]
      878 CALL                             R99 2 1
      879 SETTABLEKS                       R99 R98 K189 ["Size"]
      881 GETTABLEKS                       R99 R46 K45 ["RadiusCircle"]
      883 GETIMPORT                        R100 K175 [Instance.new]
      885 LOADK                            R101 K190 ["UICorner"]
      886 CALL                             R100 1 1
      887 SETTABLEKS                       R99 R100 K191 ["CornerRadius"]
      889 SETTABLEKS                       R98 R100 K192 ["Parent"]
      891 GETTABLEKS                       R101 R98 K173 ["ZIndex"]
      893 ADDK                             R100 R101 K169 [1]
      894 GETIMPORT                        R101 K175 [Instance.new]
      896 LOADK                            R102 K193 ["TextLabel"]
      897 CALL                             R101 1 1
      898 MOVE                             R99 R101
      899 LOADK                            R101 K194 ["Icon"]
      900 SETTABLEKS                       R101 R99 K178 ["Name"]
      902 LOADN                            R101 1
      903 SETTABLEKS                       R101 R99 K182 ["BackgroundTransparency"]
      905 GETIMPORT                        R101 K188 [UDim2.fromOffset]
      907 GETTABLEKS                       R102 R46 K42 ["IconSize"]
      909 GETTABLEKS                       R103 R46 K42 ["IconSize"]
      911 CALL                             R101 2 1
      912 SETTABLEKS                       R101 R99 K189 ["Size"]
      914 SETTABLEKS                       R54 R99 K195 ["FontFace"]
      916 GETTABLEKS                       R101 R46 K42 ["IconSize"]
      918 SETTABLEKS                       R101 R99 K50 ["TextSize"]
      920 GETTABLEKS                       R101 R50 K81 ["ContentEmphasis"]
      922 SETTABLEKS                       R101 R99 K196 ["TextColor3"]
      924 LOADK                            R101 K197 ["grid"]
      925 SETTABLEKS                       R101 R99 K179 ["Text"]
      927 SETTABLEKS                       R100 R99 K173 ["ZIndex"]
      929 SETTABLEKS                       R98 R99 K192 ["Parent"]
      931 GETIMPORT                        R100 K162 [Vector2.new]
      933 LOADK                            R101 K67 [0.5]
      934 LOADK                            R102 K67 [0.5]
      935 CALL                             R100 2 1
      936 SETTABLEKS                       R100 R99 K183 ["AnchorPoint"]
      938 GETIMPORT                        R100 K199 [UDim2.fromScale]
      940 LOADK                            R101 K67 [0.5]
      941 LOADK                            R102 K67 [0.5]
      942 CALL                             R100 2 1
      943 SETTABLEKS                       R100 R99 K186 ["Position"]
      945 SETTABLEKS                       R20 R98 K192 ["Parent"]
      947 LOADB                            R100 0
      948 SETTABLEKS                       R100 R20 K200 ["ClipsDescendants"]
      950 LOADB                            R100 0
      951 LOADNIL                          R101
      952 LOADNIL                          R102
      953 NEWCLOSURE                       R103 P42
      954 CAPTURE                          VAL R97
      955 CAPTURE                          REF R101
      956 CAPTURE                          VAL R98
      957 CAPTURE                          VAL R50
      958 CAPTURE                          REF R100
      959 CAPTURE                          VAL R99
      960 SETTABLEKS                       R103 R97 K170 ["apply"]
      962 NEWCLOSURE                       R104 P43
      963 CAPTURE                          REF R102
      964 CAPTURE                          REF R101
      965 CAPTURE                          VAL R103
      966 GETIMPORT                        R105 K1 [game]
      968 GETTABLEKS                       R105 R105 K201 ["Workspace"]
      970 LOADK                            R107 K202 ["CurrentCamera"]
      971 NAMECALL                         R105 R105 K203 ["GetPropertyChangedSignal"]
      973 CALL                             R105 2 1
      974 MOVE                             R107 R104
      975 NAMECALL                         R105 R105 K112 ["Connect"]
      977 CALL                             R105 2 0
      978 JUMPIFNOT                        R102 ; [+4]
      979 NAMECALL                         R105 R102 K204 ["Disconnect"]
      981 CALL                             R105 1 0
      982 LOADNIL                          R102
      983 GETIMPORT                        R105 K1 [game]
      985 GETTABLEKS                       R105 R105 K201 ["Workspace"]
      987 GETTABLEKS                       R101 R105 K202 ["CurrentCamera"]
      989 JUMPIFNOT                        R101 ; [+9]
      990 LOADK                            R107 K205 ["ProjectionType"]
      991 NAMECALL                         R105 R101 K203 ["GetPropertyChangedSignal"]
      993 CALL                             R105 2 1
      994 MOVE                             R107 R103
      995 NAMECALL                         R105 R105 K112 ["Connect"]
      997 CALL                             R105 2 1
      998 MOVE                             R102 R105
      999 MOVE                             R105 R103
     1000 CALL                             R105 0 0
     1001 FASTCALL2                        TABLE_INSERT R52 R103 ; [+5]
     1003 MOVE                             R106 R52
     1004 MOVE                             R107 R103
     1005 GETIMPORT                        R105 K208 [table.insert]
     1007 CALL                             R105 2 0
     1008 MOVE                             R105 R103
     1009 CALL                             R105 0 0
     1010 GETTABLEKS                       R105 R98 K209 ["Activated"]
     1012 DUPCLOSURE                       R107 K210 [PROTO_62]
     1013 CAPTURE                          VAL R95
     1014 CAPTURE                          VAL R96
     1015 NAMECALL                         R105 R105 K112 ["Connect"]
     1017 CALL                             R105 2 0
     1018 GETTABLEKS                       R105 R98 K153 ["MouseEnter"]
     1020 NEWCLOSURE                       R107 P45
     1021 CAPTURE                          REF R100
     1022 CAPTURE                          VAL R103
     1023 NAMECALL                         R105 R105 K112 ["Connect"]
     1025 CALL                             R105 2 0
     1026 GETTABLEKS                       R105 R9 K211 ["MouseLeaveStudioViewport"]
     1028 NEWCLOSURE                       R107 P46
     1029 CAPTURE                          REF R100
     1030 CAPTURE                          REF R66
     1031 CAPTURE                          VAL R103
     1032 NAMECALL                         R105 R105 K112 ["Connect"]
     1034 CALL                             R105 2 0
     1035 GETTABLEKS                       R105 R98 K154 ["MouseLeave"]
     1037 NEWCLOSURE                       R107 P47
     1038 CAPTURE                          REF R100
     1039 CAPTURE                          VAL R103
     1040 NAMECALL                         R105 R105 K112 ["Connect"]
     1042 CALL                             R105 2 0
     1043 MOVE                             R105 R68
     1044 MOVE                             R106 R98
     1045 DUPTABLE                         R107 K216 [{["title"] = "Studio.ViewSelector2.Orthographic.Title", ["body"] = "Studio.ViewSelector2.Orthographic.Body"}]
     1046 LOADK                            R108 K117 ["Top"]
     1047 CALL                             R105 3 0
     1048 CLOSEUPVALS                      R100
     1049 GETIMPORT                        R98 K1 [game]
     1051 LOADK                            R100 K217 ["NewCameraControls"]
     1052 NAMECALL                         R98 R98 K10 ["GetEngineFeature"]
     1054 CALL                             R98 2 1
     1055 JUMPIFNOT                        R98 ; [+1162]
     1056 JUMPIFNOT                        R41 ; [+2]
     1057 LOADN                            R98 40
     1058 JUMP                             ; [+1]
     1059 LOADN                            R98 20
     1060 GETIMPORT                        R99 K219 [TweenInfo.new]
     1062 LOADK                            R100 K220 [0.2]
     1063 GETIMPORT                        R101 K223 [Enum.EasingStyle.Linear]
     1065 CALL                             R99 2 1
     1066 GETTABLEKS                       R100 R20 K224 ["CamSpeed"]
     1068 GETTABLEKS                       R101 R100 K225 ["UIStroke"]
     1070 GETTABLEKS                       R102 R100 K226 ["Slider"]
     1072 JUMPIFNOT                        R41 ; [+2]
     1073 LOADN                            R103 55
     1074 JUMP                             ; [+1]
     1075 LOADN                            R103 96
     1076 MOVE                             R106 R100
     1077 MOVE                             R107 R99
     1078 DUPTABLE                         R108 K228 [{["TextTransparency"] = 1, ["BackgroundTransparency"] = 1}]
     1079 NAMECALL                         R104 R8 K229 ["Create"]
     1081 CALL                             R104 4 1
     1082 MOVE                             R107 R102
     1083 MOVE                             R108 R99
     1084 DUPTABLE                         R109 K230 [{["BackgroundTransparency"] = 1}]
     1085 NAMECALL                         R105 R8 K229 ["Create"]
     1087 CALL                             R105 4 1
     1088 LOADNIL                          R106
     1089 JUMPIFNOT                        R41 ; [+57]
     1090 GETIMPORT                        R107 K188 [UDim2.fromOffset]
     1092 MOVE                             R108 R103
     1093 GETTABLEKS                       R109 R46 K41 ["ControlHeight"]
     1095 CALL                             R107 2 1
     1096 SETTABLEKS                       R107 R100 K189 ["Size"]
     1098 GETTABLEKS                       R107 R46 K48 ["TitleFont"]
     1100 SETTABLEKS                       R107 R100 K195 ["FontFace"]
     1102 GETTABLEKS                       R107 R46 K50 ["TextSize"]
     1104 SETTABLEKS                       R107 R100 K50 ["TextSize"]
     1106 GETIMPORT                        R107 K232 [Enum.TextXAlignment.Left]
     1108 SETTABLEKS                       R107 R100 K231 ["TextXAlignment"]
     1110 MOVE                             R107 R61
     1111 MOVE                             R108 R100
     1112 LOADN                            R109 0
     1113 LOADN                            R110 0
     1114 GETTABLEKS                       R111 R46 K40 ["Size_200"]
     1116 GETTABLEKS                       R112 R46 K40 ["Size_200"]
     1118 CALL                             R107 5 0
     1119 GETTABLEKS                       R107 R100 K190 ["UICorner"]
     1121 GETTABLEKS                       R108 R46 K45 ["RadiusCircle"]
     1123 SETTABLEKS                       R108 R107 K191 ["CornerRadius"]
     1125 LOADB                            R107 0
     1126 SETTABLEKS                       R107 R102 K233 ["Visible"]
     1128 DUPCLOSURE                       R107 K234 [PROTO_66]
     1129 CAPTURE                          VAL R100
     1130 CAPTURE                          VAL R50
     1131 FASTCALL2                        TABLE_INSERT R52 R107 ; [+5]
     1133 MOVE                             R109 R52
     1134 MOVE                             R110 R107
     1135 GETIMPORT                        R108 K208 [table.insert]
     1137 CALL                             R108 2 0
     1138 GETTABLEKS                       R108 R50 K100 ["Control"]
     1140 SETTABLEKS                       R108 R100 K235 ["BackgroundColor3"]
     1142 GETTABLEKS                       R108 R50 K105 ["ControlContentDefault"]
     1144 SETTABLEKS                       R108 R100 K196 ["TextColor3"]
     1146 JUMP                             ; [+37]
     1147 GETIMPORT                        R107 K185 [UDim2.new]
     1149 LOADN                            R108 0
     1150 LOADN                            R109 96
     1151 LOADN                            R110 0
     1152 LOADN                            R111 22
     1153 CALL                             R107 4 1
     1154 SETTABLEKS                       R107 R100 K189 ["Size"]
     1156 GETIMPORT                        R107 K93 [Color3.new]
     1158 LOADN                            R108 1
     1159 LOADN                            R109 1
     1160 LOADN                            R110 1
     1161 CALL                             R107 3 1
     1162 SETTABLEKS                       R107 R100 K235 ["BackgroundColor3"]
     1164 GETIMPORT                        R107 K93 [Color3.new]
     1166 LOADN                            R108 1
     1167 LOADN                            R109 1
     1168 LOADN                            R110 1
     1169 CALL                             R107 3 1
     1170 SETTABLEKS                       R107 R102 K235 ["BackgroundColor3"]
     1172 GETTABLEKS                       R108 R100 K186 ["Position"]
     1174 GETIMPORT                        R109 K185 [UDim2.new]
     1176 LOADN                            R110 0
     1177 LOADN                            R111 13
     1178 LOADN                            R112 0
     1179 LOADN                            R113 3
     1180 CALL                             R109 4 1
     1181 ADD                              R107 R108 R109
     1182 SETTABLEKS                       R107 R100 K186 ["Position"]
     1184 GETIMPORT                        R107 K1 [game]
     1186 LOADK                            R109 K236 ["StudioCameraService"]
     1187 NAMECALL                         R107 R107 K3 ["GetService"]
     1189 CALL                             R107 2 1
     1190 LOADB                            R108 0
     1191 SETTABLEKS                       R108 R100 K200 ["ClipsDescendants"]
     1193 LOADNIL                          R108
     1194 DUPTABLE                         R109 K246 [{["mouseOverViewSelector"] = False, ["mouseOverSlider"] = False, ["isDraggingSlider"] = False, ["hoveredNavButtons"], ["mouseOverNavModel"] = False, ["menuOpen"] = False, ["editingSpeed"] = False, ["approaching"] = False}]
     1195 NEWTABLE                         R110 0 0
     1197 SETTABLEKS                       R110 R109 K241 ["hoveredNavButtons"]
     1199 LOADNIL                          R110
     1200 LOADNIL                          R111
     1201 JUMPIFNOT                        R41 ; [+500]
     1202 GETTABLEKS                       R112 R46 K41 ["ControlHeight"]
     1204 GETIMPORT                        R113 K175 [Instance.new]
     1206 LOADK                            R114 K247 ["Frame"]
     1207 CALL                             R113 1 1
     1208 LOADK                            R114 K248 ["NavRow"]
     1209 SETTABLEKS                       R114 R113 K178 ["Name"]
     1211 LOADN                            R114 1
     1212 SETTABLEKS                       R114 R113 K182 ["BackgroundTransparency"]
     1214 GETIMPORT                        R114 K162 [Vector2.new]
     1216 LOADK                            R115 K67 [0.5]
     1217 LOADN                            R116 0
     1218 CALL                             R114 2 1
     1219 SETTABLEKS                       R114 R113 K183 ["AnchorPoint"]
     1221 GETIMPORT                        R114 K185 [UDim2.new]
     1223 LOADK                            R115 K67 [0.5]
     1224 LOADN                            R116 0
     1225 LOADN                            R117 0
     1226 GETTABLEKS                       R119 R100 K186 ["Position"]
     1228 GETTABLEKS                       R119 R119 K250 ["Y"]
     1230 GETTABLEKS                       R119 R119 K251 ["Offset"]
     1232 ADDK                             R118 R119 K249 [3]
     1233 CALL                             R114 4 1
     1234 SETTABLEKS                       R114 R113 K186 ["Position"]
     1236 GETIMPORT                        R114 K254 [Enum.AutomaticSize.X]
     1238 SETTABLEKS                       R114 R113 K252 ["AutomaticSize"]
     1240 GETIMPORT                        R114 K188 [UDim2.fromOffset]
     1242 LOADN                            R115 0
     1243 MOVE                             R116 R112
     1244 CALL                             R114 2 1
     1245 SETTABLEKS                       R114 R113 K189 ["Size"]
     1247 LOADN                            R114 20
     1248 SETTABLEKS                       R114 R113 K173 ["ZIndex"]
     1250 GETTABLEKS                       R114 R46 K40 ["Size_200"]
     1252 GETIMPORT                        R115 K175 [Instance.new]
     1254 LOADK                            R116 K255 ["UIListLayout"]
     1255 CALL                             R115 1 1
     1256 GETIMPORT                        R116 K258 [Enum.FillDirection.Horizontal]
     1258 SETTABLEKS                       R116 R115 K256 ["FillDirection"]
     1260 GETIMPORT                        R116 K261 [Enum.SortOrder.LayoutOrder]
     1262 SETTABLEKS                       R116 R115 K259 ["SortOrder"]
     1264 GETIMPORT                        R116 K264 [Enum.VerticalAlignment.Center]
     1266 SETTABLEKS                       R116 R115 K262 ["VerticalAlignment"]
     1268 GETIMPORT                        R116 K66 [UDim.new]
     1270 LOADN                            R117 0
     1271 MOVE                             R118 R114
     1272 CALL                             R116 2 1
     1273 SETTABLEKS                       R116 R115 K265 ["Padding"]
     1275 SETTABLEKS                       R113 R115 K192 ["Parent"]
     1277 SETTABLEKS                       R20 R113 K192 ["Parent"]
     1279 LOADB                            R114 0
     1280 SETTABLEKS                       R114 R20 K200 ["ClipsDescendants"]
     1282 DUPTABLE                         R114 K274 [{["name"] = "Adaptive", ["glyph"] = "frame-small-diamond", ["keys"], ["locked"] = False, ["model"] = }]
     1283 DUPTABLE                         R115 K277 [{["title"] = "Studio.ViewSelector2.Adaptive.Title", ["body"] = "Studio.ViewSelector2.Adaptive.Body"}]
     1284 SETTABLEKS                       R115 R114 K270 ["keys"]
     1286 DUPTABLE                         R115 K281 [{["name"] = "FirstPerson", ["glyph"] = "ps-dpad-up", ["keys"], ["locked"] = True, ["model"]}]
     1287 DUPTABLE                         R116 K284 [{["title"] = "Studio.ViewSelector2.FirstPerson.Title", ["body"] = "Studio.ViewSelector2.FirstPerson.Body"}]
     1288 SETTABLEKS                       R116 R115 K270 ["keys"]
     1290 GETIMPORT                        R116 K287 [Enum.CameraNavigationModel.Roblox]
     1292 SETTABLEKS                       R116 R115 K272 ["model"]
     1294 DUPTABLE                         R116 K290 [{["name"] = "Orbit", ["glyph"] = "arrow-spin-clockwise-dashed-dot", ["keys"], ["locked"] = True, ["model"]}]
     1295 DUPTABLE                         R117 K293 [{["title"] = "Studio.ViewSelector2.Orbit.Title", ["body"] = "Studio.ViewSelector2.Orbit.Body"}]
     1296 SETTABLEKS                       R117 R116 K270 ["keys"]
     1298 GETIMPORT                        R117 K295 [Enum.CameraNavigationModel.IndustryCompatible]
     1300 SETTABLEKS                       R117 R116 K272 ["model"]
     1302 NEWTABLE                         R117 0 3
     1304 MOVE                             R118 R114
     1305 MOVE                             R119 R115
     1306 MOVE                             R120 R116
     1307 SETLIST                          R117 R118 3 [1]
     1309 DUPCLOSURE                       R118 K296 [PROTO_67]
     1310 CAPTURE                          VAL R10
     1311 CAPTURE                          VAL R114
     1312 CAPTURE                          VAL R115
     1313 CAPTURE                          VAL R116
     1314 GETIMPORT                        R119 K175 [Instance.new]
     1316 LOADK                            R120 K176 ["TextButton"]
     1317 CALL                             R119 1 1
     1318 LOADK                            R120 K297 ["CameraMode"]
     1319 SETTABLEKS                       R120 R119 K178 ["Name"]
     1321 LOADK                            R120 K27 [""]
     1322 SETTABLEKS                       R120 R119 K179 ["Text"]
     1324 LOADB                            R120 0
     1325 SETTABLEKS                       R120 R119 K180 ["AutoButtonColor"]
     1327 LOADN                            R120 0
     1328 SETTABLEKS                       R120 R119 K181 ["BorderSizePixel"]
     1330 LOADN                            R120 1
     1331 SETTABLEKS                       R120 R119 K182 ["BackgroundTransparency"]
     1333 LOADN                            R120 20
     1334 SETTABLEKS                       R120 R119 K173 ["ZIndex"]
     1336 LOADN                            R120 1
     1337 SETTABLEKS                       R120 R119 K260 ["LayoutOrder"]
     1339 GETIMPORT                        R120 K254 [Enum.AutomaticSize.X]
     1341 SETTABLEKS                       R120 R119 K252 ["AutomaticSize"]
     1343 GETIMPORT                        R120 K188 [UDim2.fromOffset]
     1345 LOADN                            R121 0
     1346 MOVE                             R122 R112
     1347 CALL                             R120 2 1
     1348 SETTABLEKS                       R120 R119 K189 ["Size"]
     1350 GETTABLEKS                       R120 R46 K45 ["RadiusCircle"]
     1352 GETIMPORT                        R121 K175 [Instance.new]
     1354 LOADK                            R122 K190 ["UICorner"]
     1355 CALL                             R121 1 1
     1356 SETTABLEKS                       R120 R121 K191 ["CornerRadius"]
     1358 SETTABLEKS                       R119 R121 K192 ["Parent"]
     1360 MOVE                             R120 R61
     1361 MOVE                             R121 R119
     1362 LOADN                            R122 0
     1363 LOADN                            R123 0
     1364 GETTABLEKS                       R124 R46 K40 ["Size_200"]
     1366 GETTABLEKS                       R125 R46 K39 ["Size_150"]
     1368 CALL                             R120 5 0
     1369 GETTABLEKS                       R120 R46 K38 ["Size_100"]
     1371 GETIMPORT                        R121 K175 [Instance.new]
     1373 LOADK                            R122 K255 ["UIListLayout"]
     1374 CALL                             R121 1 1
     1375 GETIMPORT                        R122 K258 [Enum.FillDirection.Horizontal]
     1377 SETTABLEKS                       R122 R121 K256 ["FillDirection"]
     1379 GETIMPORT                        R122 K261 [Enum.SortOrder.LayoutOrder]
     1381 SETTABLEKS                       R122 R121 K259 ["SortOrder"]
     1383 GETIMPORT                        R122 K264 [Enum.VerticalAlignment.Center]
     1385 SETTABLEKS                       R122 R121 K262 ["VerticalAlignment"]
     1387 GETIMPORT                        R122 K66 [UDim.new]
     1389 LOADN                            R123 0
     1390 MOVE                             R124 R120
     1391 CALL                             R122 2 1
     1392 SETTABLEKS                       R122 R121 K265 ["Padding"]
     1394 SETTABLEKS                       R119 R121 K192 ["Parent"]
     1396 GETIMPORT                        R120 K175 [Instance.new]
     1398 LOADK                            R121 K193 ["TextLabel"]
     1399 CALL                             R120 1 1
     1400 LOADK                            R121 K194 ["Icon"]
     1401 SETTABLEKS                       R121 R120 K178 ["Name"]
     1403 LOADN                            R121 1
     1404 SETTABLEKS                       R121 R120 K182 ["BackgroundTransparency"]
     1406 GETIMPORT                        R121 K188 [UDim2.fromOffset]
     1408 GETTABLEKS                       R122 R46 K42 ["IconSize"]
     1410 GETTABLEKS                       R123 R46 K42 ["IconSize"]
     1412 CALL                             R121 2 1
     1413 SETTABLEKS                       R121 R120 K189 ["Size"]
     1415 SETTABLEKS                       R54 R120 K195 ["FontFace"]
     1417 GETTABLEKS                       R121 R46 K42 ["IconSize"]
     1419 SETTABLEKS                       R121 R120 K50 ["TextSize"]
     1421 GETTABLEKS                       R121 R50 K81 ["ContentEmphasis"]
     1423 SETTABLEKS                       R121 R120 K196 ["TextColor3"]
     1425 LOADK                            R121 K27 [""]
     1426 SETTABLEKS                       R121 R120 K179 ["Text"]
     1428 LOADN                            R121 21
     1429 SETTABLEKS                       R121 R120 K173 ["ZIndex"]
     1431 SETTABLEKS                       R119 R120 K192 ["Parent"]
     1433 LOADN                            R121 1
     1434 SETTABLEKS                       R121 R120 K260 ["LayoutOrder"]
     1436 GETIMPORT                        R121 K175 [Instance.new]
     1438 LOADK                            R122 K193 ["TextLabel"]
     1439 CALL                             R121 1 1
     1440 LOADK                            R122 K194 ["Icon"]
     1441 SETTABLEKS                       R122 R121 K178 ["Name"]
     1443 LOADN                            R122 1
     1444 SETTABLEKS                       R122 R121 K182 ["BackgroundTransparency"]
     1446 GETIMPORT                        R122 K188 [UDim2.fromOffset]
     1448 GETTABLEKS                       R123 R46 K42 ["IconSize"]
     1450 GETTABLEKS                       R124 R46 K42 ["IconSize"]
     1452 CALL                             R122 2 1
     1453 SETTABLEKS                       R122 R121 K189 ["Size"]
     1455 SETTABLEKS                       R54 R121 K195 ["FontFace"]
     1457 GETTABLEKS                       R122 R46 K42 ["IconSize"]
     1459 SETTABLEKS                       R122 R121 K50 ["TextSize"]
     1461 GETTABLEKS                       R122 R50 K81 ["ContentEmphasis"]
     1463 SETTABLEKS                       R122 R121 K196 ["TextColor3"]
     1465 LOADK                            R122 K298 ["chevron-small-down"]
     1466 SETTABLEKS                       R122 R121 K179 ["Text"]
     1468 LOADN                            R122 21
     1469 SETTABLEKS                       R122 R121 K173 ["ZIndex"]
     1471 SETTABLEKS                       R119 R121 K192 ["Parent"]
     1473 LOADN                            R122 2
     1474 SETTABLEKS                       R122 R121 K260 ["LayoutOrder"]
     1476 SETTABLEKS                       R113 R119 K192 ["Parent"]
     1478 GETIMPORT                        R122 K300 [Vector2.zero]
     1480 SETTABLEKS                       R122 R100 K183 ["AnchorPoint"]
     1482 LOADN                            R122 2
     1483 SETTABLEKS                       R122 R100 K260 ["LayoutOrder"]
     1485 SETTABLEKS                       R113 R100 K192 ["Parent"]
     1487 LOADK                            R124 K177 ["OrthographicButton"]
     1488 NAMECALL                         R122 R20 K301 ["FindFirstChild"]
     1490 CALL                             R122 2 1
     1491 JUMPIFNOT                        R122 ; [+12]
     1492 GETIMPORT                        R123 K300 [Vector2.zero]
     1494 SETTABLEKS                       R123 R122 K183 ["AnchorPoint"]
     1496 LOADN                            R123 3
     1497 SETTABLEKS                       R123 R122 K260 ["LayoutOrder"]
     1499 SETTABLEKS                       R113 R122 K192 ["Parent"]
     1501 LOADN                            R123 0
     1502 SETTABLEKS                       R123 R55 K117 ["Top"]
     1504 GETIMPORT                        R123 K175 [Instance.new]
     1506 LOADK                            R124 K302 ["NumberValue"]
     1507 CALL                             R123 1 1
     1508 LOADK                            R124 K303 ["Fade"]
     1509 SETTABLEKS                       R124 R123 K178 ["Name"]
     1511 SETTABLEKS                       R113 R123 K192 ["Parent"]
     1513 LOADB                            R124 0
     1514 MOVE                             R127 R123
     1515 MOVE                             R128 R99
     1516 DUPTABLE                         R129 K305 [{["Value"] = 0}]
     1517 NAMECALL                         R125 R8 K229 ["Create"]
     1519 CALL                             R125 4 1
     1520 MOVE                             R128 R123
     1521 MOVE                             R129 R99
     1522 DUPTABLE                         R130 K306 [{["Value"] = 1}]
     1523 NAMECALL                         R126 R8 K229 ["Create"]
     1525 CALL                             R126 4 1
     1526 NEWCLOSURE                       R127 P50
     1527 CAPTURE                          VAL R123
     1528 CAPTURE                          VAL R120
     1529 CAPTURE                          VAL R10
     1530 CAPTURE                          VAL R114
     1531 CAPTURE                          VAL R115
     1532 CAPTURE                          VAL R116
     1533 CAPTURE                          VAL R119
     1534 CAPTURE                          REF R124
     1535 CAPTURE                          VAL R50
     1536 CAPTURE                          VAL R109
     1537 CAPTURE                          VAL R121
     1538 CAPTURE                          VAL R97
     1539 CAPTURE                          VAL R100
     1540 GETTABLEKS                       R128 R123 K307 ["Changed"]
     1542 MOVE                             R130 R127
     1543 NAMECALL                         R128 R128 K112 ["Connect"]
     1545 CALL                             R128 2 0
     1546 GETTABLEKS                       R128 R119 K153 ["MouseEnter"]
     1548 NEWCLOSURE                       R130 P51
     1549 CAPTURE                          REF R124
     1550 CAPTURE                          VAL R127
     1551 NAMECALL                         R128 R128 K112 ["Connect"]
     1553 CALL                             R128 2 0
     1554 GETTABLEKS                       R128 R119 K154 ["MouseLeave"]
     1556 NEWCLOSURE                       R130 P52
     1557 CAPTURE                          REF R124
     1558 CAPTURE                          VAL R127
     1559 NAMECALL                         R128 R128 K112 ["Connect"]
     1561 CALL                             R128 2 0
     1562 GETTABLEKS                       R128 R9 K211 ["MouseLeaveStudioViewport"]
     1564 NEWCLOSURE                       R130 P53
     1565 CAPTURE                          REF R124
     1566 CAPTURE                          VAL R127
     1567 NAMECALL                         R128 R128 K112 ["Connect"]
     1569 CALL                             R128 2 0
     1570 FASTCALL2                        TABLE_INSERT R52 R127 ; [+5]
     1572 MOVE                             R129 R52
     1573 MOVE                             R130 R127
     1574 GETIMPORT                        R128 K208 [table.insert]
     1576 CALL                             R128 2 0
     1577 MOVE                             R128 R127
     1578 CALL                             R128 0 0
     1579 DUPCLOSURE                       R128 K308 [PROTO_74]
     1580 CAPTURE                          VAL R10
     1581 CAPTURE                          VAL R95
     1582 CAPTURE                          VAL R107
     1583 DUPCLOSURE                       R129 K309 [PROTO_75]
     1584 CAPTURE                          VAL R128
     1585 CAPTURE                          VAL R10
     1586 LOADNIL                          R130
     1587 LOADNIL                          R131
     1588 NEWTABLE                         R132 0 0
     1590 NEWCLOSURE                       R133 P56
     1591 CAPTURE                          REF R130
     1592 CAPTURE                          VAL R132
     1593 CAPTURE                          REF R66
     1594 CAPTURE                          REF R131
     1595 CAPTURE                          REF R67
     1596 CAPTURE                          VAL R109
     1597 CAPTURE                          VAL R127
     1598 CAPTURE                          REF R110
     1599 NEWCLOSURE                       R134 P57
     1600 CAPTURE                          REF R66
     1601 CAPTURE                          REF R67
     1602 CAPTURE                          VAL R109
     1603 CAPTURE                          VAL R127
     1604 CAPTURE                          REF R110
     1605 CAPTURE                          VAL R50
     1606 CAPTURE                          VAL R46
     1607 CAPTURE                          VAL R61
     1608 CAPTURE                          VAL R10
     1609 CAPTURE                          VAL R114
     1610 CAPTURE                          VAL R115
     1611 CAPTURE                          VAL R116
     1612 CAPTURE                          VAL R117
     1613 CAPTURE                          VAL R112
     1614 CAPTURE                          VAL R54
     1615 CAPTURE                          VAL R64
     1616 CAPTURE                          VAL R59
     1617 CAPTURE                          VAL R128
     1618 CAPTURE                          VAL R133
     1619 CAPTURE                          VAL R68
     1620 CAPTURE                          VAL R119
     1621 CAPTURE                          REF R19
     1622 CAPTURE                          VAL R2
     1623 CAPTURE                          REF R131
     1624 CAPTURE                          REF R130
     1625 CAPTURE                          VAL R132
     1626 CAPTURE                          VAL R5
     1627 GETTABLEKS                       R135 R119 K155 ["MouseButton1Down"]
     1629 NEWCLOSURE                       R137 P58
     1630 CAPTURE                          REF R130
     1631 CAPTURE                          VAL R134
     1632 NAMECALL                         R135 R135 K112 ["Connect"]
     1634 CALL                             R135 2 0
     1635 MOVE                             R135 R68
     1636 MOVE                             R136 R119
     1637 DUPCLOSURE                       R137 K310 [PROTO_86]
     1638 CAPTURE                          VAL R10
     1639 CAPTURE                          VAL R114
     1640 CAPTURE                          VAL R115
     1641 CAPTURE                          VAL R116
     1642 LOADK                            R138 K118 ["Bottom"]
     1643 CALL                             R135 3 0
     1644 NEWCLOSURE                       R135 P60
     1645 CAPTURE                          VAL R113
     1646 CAPTURE                          REF R20
     1647 CAPTURE                          VAL R46
     1648 CAPTURE                          VAL R55
     1649 CAPTURE                          REF R19
     1650 CAPTURE                          VAL R84
     1651 LOADK                            R138 K311 ["AbsoluteSize"]
     1652 NAMECALL                         R136 R113 K203 ["GetPropertyChangedSignal"]
     1654 CALL                             R136 2 1
     1655 MOVE                             R138 R135
     1656 NAMECALL                         R136 R136 K112 ["Connect"]
     1658 CALL                             R136 2 0
     1659 MOVE                             R136 R135
     1660 CALL                             R136 0 0
     1661 DUPTABLE                         R136 K318 [{"refresh", "refreshLock", "repaint", "show", "hide", "buttons"}]
     1662 SETTABLEKS                       R127 R136 K312 ["refresh"]
     1664 SETTABLEKS                       R127 R136 K313 ["refreshLock"]
     1666 SETTABLEKS                       R127 R136 K314 ["repaint"]
     1668 DUPCLOSURE                       R137 K319 [PROTO_88]
     1669 CAPTURE                          VAL R125
     1670 CAPTURE                          VAL R126
     1671 CAPTURE                          VAL R123
     1672 SETTABLEKS                       R137 R136 K315 ["show"]
     1674 NEWCLOSURE                       R137 P62
     1675 CAPTURE                          REF R66
     1676 CAPTURE                          VAL R126
     1677 CAPTURE                          VAL R123
     1678 CAPTURE                          VAL R125
     1679 SETTABLEKS                       R137 R136 K316 ["hide"]
     1681 JUMPIFNOT                        R122 ; [+7]
     1682 NEWTABLE                         R137 0 2
     1684 MOVE                             R138 R119
     1685 MOVE                             R139 R122
     1686 SETLIST                          R137 R138 2 [1]
     1688 JUMP                             ; [+5]
     1689 NEWTABLE                         R137 0 1
     1691 MOVE                             R138 R119
     1692 SETLIST                          R137 R138 1 [1]
     1694 SETTABLEKS                       R137 R136 K317 ["buttons"]
     1696 MOVE                             R108 R136
     1697 GETTABLEKS                       R136 R108 K312 ["refresh"]
     1699 CALL                             R136 0 0
     1700 CLOSEUPVALS                      R124
     1701 JUMP                             ; [+120]
     1702 GETIMPORT                        R112 K175 [Instance.new]
     1704 LOADK                            R113 K320 ["ImageButton"]
     1705 MOVE                             R114 R100
     1706 CALL                             R112 2 1
     1707 MOVE                             R111 R112
     1708 LOADK                            R112 K321 ["NavModelButton"]
     1709 SETTABLEKS                       R112 R111 K178 ["Name"]
     1711 LOADN                            R112 0
     1712 SETTABLEKS                       R112 R111 K182 ["BackgroundTransparency"]
     1714 GETIMPORT                        R112 K93 [Color3.new]
     1716 LOADN                            R113 1
     1717 LOADN                            R114 1
     1718 LOADN                            R115 1
     1719 CALL                             R112 3 1
     1720 SETTABLEKS                       R112 R111 K235 ["BackgroundColor3"]
     1722 LOADN                            R112 0
     1723 SETTABLEKS                       R112 R111 K181 ["BorderSizePixel"]
     1725 GETIMPORT                        R112 K162 [Vector2.new]
     1727 LOADN                            R113 1
     1728 LOADN                            R114 0
     1729 CALL                             R112 2 1
     1730 SETTABLEKS                       R112 R111 K183 ["AnchorPoint"]
     1732 GETIMPORT                        R112 K185 [UDim2.new]
     1734 LOADN                            R113 0
     1735 LOADN                            R114 -5
     1736 LOADN                            R115 0
     1737 LOADN                            R116 0
     1738 CALL                             R112 4 1
     1739 SETTABLEKS                       R112 R111 K186 ["Position"]
     1741 GETIMPORT                        R112 K185 [UDim2.new]
     1743 LOADN                            R113 0
     1744 LOADN                            R114 22
     1745 LOADN                            R115 0
     1746 LOADN                            R116 22
     1747 CALL                             R112 4 1
     1748 SETTABLEKS                       R112 R111 K189 ["Size"]
     1750 LOADN                            R112 20
     1751 SETTABLEKS                       R112 R111 K173 ["ZIndex"]
     1753 GETIMPORT                        R112 K324 [Enum.ScaleType.Fit]
     1755 SETTABLEKS                       R112 R111 K322 ["ScaleType"]
     1757 GETIMPORT                        R112 K93 [Color3.new]
     1759 LOADN                            R113 0
     1760 LOADN                            R114 0
     1761 LOADN                            R115 0
     1762 CALL                             R112 3 1
     1763 SETTABLEKS                       R112 R111 K325 ["ImageColor3"]
     1765 LOADN                            R112 0
     1766 SETTABLEKS                       R112 R111 K326 ["ImageTransparency"]
     1768 GETIMPORT                        R112 K175 [Instance.new]
     1770 LOADK                            R113 K190 ["UICorner"]
     1771 MOVE                             R114 R111
     1772 CALL                             R112 2 1
     1773 GETIMPORT                        R113 K66 [UDim.new]
     1775 LOADN                            R114 0
     1776 LOADN                            R115 4
     1777 CALL                             R113 2 1
     1778 SETTABLEKS                       R113 R112 K191 ["CornerRadius"]
     1780 MOVE                             R115 R111
     1781 MOVE                             R116 R99
     1782 DUPTABLE                         R117 K327 [{["ImageTransparency"] = 1, ["BackgroundTransparency"] = 1}]
     1783 NAMECALL                         R113 R8 K229 ["Create"]
     1785 CALL                             R113 4 1
     1786 NEWCLOSURE                       R114 P63
     1787 CAPTURE                          VAL R10
     1788 CAPTURE                          REF R111
     1789 GETTABLEKS                       R115 R10 K285 ["CameraNavigationModel"]
     1791 GETIMPORT                        R116 K287 [Enum.CameraNavigationModel.Roblox]
     1793 JUMPIFNOTEQ                      R115 R116 ; [+5]
     1795 LOADK                            R116 K328 ["rbxasset://textures/StudioCameraUI/iconFPS.png"]
     1796 SETTABLEKS                       R116 R111 K329 ["Image"]
     1798 JUMP                             ; [+3]
     1799 LOADK                            R116 K330 ["rbxasset://textures/StudioCameraUI/iconFocus.png"]
     1800 SETTABLEKS                       R116 R111 K329 ["Image"]
     1802 LOADK                            R117 K285 ["CameraNavigationModel"]
     1803 NAMECALL                         R115 R10 K203 ["GetPropertyChangedSignal"]
     1805 CALL                             R115 2 1
     1806 NEWCLOSURE                       R117 P64
     1807 CAPTURE                          VAL R10
     1808 CAPTURE                          REF R111
     1809 NAMECALL                         R115 R115 K112 ["Connect"]
     1811 CALL                             R115 2 0
     1812 NEWCLOSURE                       R110 P65
     1813 CAPTURE                          VAL R104
     1814 CAPTURE                          VAL R105
     1815 CAPTURE                          VAL R113
     1816 CAPTURE                          REF R106
     1817 CAPTURE                          VAL R100
     1818 CAPTURE                          VAL R102
     1819 CAPTURE                          VAL R109
     1820 CAPTURE                          VAL R101
     1821 CAPTURE                          REF R111
     1822 DUPCLOSURE                       R112 K331 [PROTO_94]
     1823 CAPTURE                          VAL R41
     1824 CAPTURE                          VAL R10
     1825 DUPCLOSURE                       R113 K332 [PROTO_95]
     1826 CAPTURE                          VAL R109
     1827 DUPCLOSURE                       R114 K333 [PROTO_96]
     1828 NEWCLOSURE                       R115 P69
     1829 CAPTURE                          VAL R109
     1830 CAPTURE                          REF R106
     1831 CAPTURE                          REF R108
     1832 CAPTURE                          REF R114
     1833 NEWCLOSURE                       R116 P70
     1834 CAPTURE                          REF R106
     1835 CAPTURE                          VAL R109
     1836 CAPTURE                          REF R108
     1837 CAPTURE                          REF R114
     1838 DUPCLOSURE                       R117 K334 [PROTO_100]
     1839 CAPTURE                          VAL R109
     1840 CAPTURE                          VAL R101
     1841 JUMPIFNOT                        R41 ; [+6]
     1842 NEWCLOSURE                       R110 P72
     1843 CAPTURE                          REF R106
     1844 CAPTURE                          VAL R109
     1845 CAPTURE                          VAL R101
     1846 CAPTURE                          REF R108
     1847 CAPTURE                          VAL R116
     1848 DUPCLOSURE                       R118 K335 [PROTO_102]
     1849 CAPTURE                          VAL R98
     1850 CAPTURE                          VAL R103
     1851 DUPCLOSURE                       R119 K336 [PROTO_103]
     1852 CAPTURE                          VAL R100
     1853 CAPTURE                          VAL R103
     1854 CAPTURE                          VAL R98
     1855 DUPCLOSURE                       R120 K337 [PROTO_104]
     1856 CAPTURE                          VAL R41
     1857 CAPTURE                          VAL R10
     1858 DUPCLOSURE                       R121 K338 [PROTO_105]
     1859 CAPTURE                          VAL R41
     1860 CAPTURE                          VAL R10
     1861 DUPCLOSURE                       R122 K339 [PROTO_106]
     1862 CAPTURE                          VAL R41
     1863 CAPTURE                          VAL R10
     1864 CAPTURE                          VAL R100
     1865 CAPTURE                          VAL R121
     1866 CAPTURE                          VAL R102
     1867 CAPTURE                          VAL R98
     1868 CAPTURE                          VAL R103
     1869 LOADNIL                          R123
     1870 DUPCLOSURE                       R124 K340 [PROTO_107]
     1871 JUMPIFNOT                        R41 ; [+77]
     1872 GETIMPORT                        R125 K175 [Instance.new]
     1874 LOADK                            R126 K341 ["TextBox"]
     1875 CALL                             R125 1 1
     1876 LOADK                            R126 K342 ["SpeedInput"]
     1877 SETTABLEKS                       R126 R125 K178 ["Name"]
     1879 LOADN                            R126 1
     1880 SETTABLEKS                       R126 R125 K182 ["BackgroundTransparency"]
     1882 GETIMPORT                        R126 K199 [UDim2.fromScale]
     1884 LOADN                            R127 1
     1885 LOADN                            R128 1
     1886 CALL                             R126 2 1
     1887 SETTABLEKS                       R126 R125 K189 ["Size"]
     1889 GETTABLEKS                       R126 R46 K48 ["TitleFont"]
     1891 SETTABLEKS                       R126 R125 K195 ["FontFace"]
     1893 GETTABLEKS                       R126 R46 K50 ["TextSize"]
     1895 SETTABLEKS                       R126 R125 K50 ["TextSize"]
     1897 LOADB                            R126 0
     1898 SETTABLEKS                       R126 R125 K343 ["ClearTextOnFocus"]
     1900 DUPCLOSURE                       R126 K344 [PROTO_108]
     1901 CAPTURE                          VAL R125
     1902 CAPTURE                          VAL R50
     1903 FASTCALL2                        TABLE_INSERT R52 R126 ; [+5]
     1905 MOVE                             R128 R52
     1906 MOVE                             R129 R126
     1907 GETIMPORT                        R127 K208 [table.insert]
     1909 CALL                             R127 2 0
     1910 GETTABLEKS                       R127 R50 K106 ["ControlContentEmphasis"]
     1912 SETTABLEKS                       R127 R125 K196 ["TextColor3"]
     1914 LOADB                            R126 0
     1915 SETTABLEKS                       R126 R125 K233 ["Visible"]
     1917 GETTABLEKS                       R127 R100 K173 ["ZIndex"]
     1919 ADDK                             R126 R127 K169 [1]
     1920 SETTABLEKS                       R126 R125 K173 ["ZIndex"]
     1922 GETIMPORT                        R126 K232 [Enum.TextXAlignment.Left]
     1924 SETTABLEKS                       R126 R125 K231 ["TextXAlignment"]
     1926 SETTABLEKS                       R100 R125 K192 ["Parent"]
     1928 MOVE                             R123 R125
     1929 NEWCLOSURE                       R124 P80
     1930 CAPTURE                          VAL R109
     1931 CAPTURE                          VAL R125
     1932 CAPTURE                          VAL R121
     1933 CAPTURE                          VAL R10
     1934 CAPTURE                          VAL R41
     1935 CAPTURE                          REF R110
     1936 GETTABLEKS                       R126 R125 K345 ["FocusLost"]
     1938 NEWCLOSURE                       R128 P81
     1939 CAPTURE                          VAL R125
     1940 CAPTURE                          VAL R10
     1941 CAPTURE                          VAL R41
     1942 CAPTURE                          VAL R98
     1943 CAPTURE                          VAL R109
     1944 CAPTURE                          VAL R122
     1945 CAPTURE                          REF R110
     1946 NAMECALL                         R126 R126 K112 ["Connect"]
     1948 CALL                             R126 2 0
     1949 LOADK                            R127 K346 ["Camera Speed"]
     1950 NAMECALL                         R125 R10 K203 ["GetPropertyChangedSignal"]
     1952 CALL                             R125 2 1
     1953 NEWCLOSURE                       R127 P82
     1954 CAPTURE                          VAL R122
     1955 CAPTURE                          REF R110
     1956 NAMECALL                         R125 R125 K112 ["Connect"]
     1958 CALL                             R125 2 0
     1959 JUMPIFNOT                        R41 ; [+10]
     1960 LOADK                            R127 K347 ["Camera Orbit Speed"]
     1961 NAMECALL                         R125 R10 K203 ["GetPropertyChangedSignal"]
     1963 CALL                             R125 2 1
     1964 NEWCLOSURE                       R127 P83
     1965 CAPTURE                          VAL R122
     1966 CAPTURE                          REF R110
     1967 NAMECALL                         R125 R125 K112 ["Connect"]
     1969 CALL                             R125 2 0
     1970 GETTABLEKS                       R125 R107 K348 ["ShowCameraSpeed"]
     1972 NEWCLOSURE                       R127 P84
     1973 CAPTURE                          VAL R122
     1974 CAPTURE                          REF R110
     1975 NAMECALL                         R125 R125 K112 ["Connect"]
     1977 CALL                             R125 2 0
     1978 GETTABLEKS                       R125 R32 K153 ["MouseEnter"]
     1980 NEWCLOSURE                       R127 P85
     1981 CAPTURE                          VAL R109
     1982 CAPTURE                          REF R110
     1983 NAMECALL                         R125 R125 K112 ["Connect"]
     1985 CALL                             R125 2 0
     1986 GETTABLEKS                       R125 R32 K154 ["MouseLeave"]
     1988 NEWCLOSURE                       R127 P86
     1989 CAPTURE                          VAL R109
     1990 CAPTURE                          REF R110
     1991 NAMECALL                         R125 R125 K112 ["Connect"]
     1993 CALL                             R125 2 0
     1994 JUMPIFNOT                        R41 ; [+60]
     1995 NEWTABLE                         R125 0 0
     1997 LOADNIL                          R126
     1998 LOADN                            R127 0
     1999 LOADB                            R128 0
     2000 LOADN                            R129 0
     2001 NEWCLOSURE                       R114 P87
     2002 CAPTURE                          REF R128
     2003 NEWCLOSURE                       R130 P88
     2004 CAPTURE                          REF R128
     2005 CAPTURE                          REF R129
     2006 NEWCLOSURE                       R131 P89
     2007 CAPTURE                          REF R126
     2008 CAPTURE                          VAL R109
     2009 CAPTURE                          REF R110
     2010 DUPCLOSURE                       R132 K349 [PROTO_119]
     2011 DUPCLOSURE                       R133 K350 [PROTO_120]
     2012 NEWCLOSURE                       R134 P92
     2013 CAPTURE                          REF R127
     2014 CAPTURE                          REF R126
     2015 CAPTURE                          VAL R109
     2016 CAPTURE                          REF R110
     2017 GETTABLEKS                       R135 R5 K157 ["InputChanged"]
     2019 NEWCLOSURE                       R137 P93
     2020 CAPTURE                          REF R19
     2021 CAPTURE                          VAL R5
     2022 CAPTURE                          VAL R2
     2023 CAPTURE                          VAL R125
     2024 CAPTURE                          REF R20
     2025 CAPTURE                          VAL R55
     2026 CAPTURE                          REF R128
     2027 CAPTURE                          REF R129
     2028 CAPTURE                          VAL R133
     2029 CAPTURE                          REF R126
     2030 CAPTURE                          VAL R109
     2031 CAPTURE                          REF R110
     2032 CAPTURE                          REF R106
     2033 CAPTURE                          REF R108
     2034 CAPTURE                          REF R114
     2035 CAPTURE                          REF R127
     2036 NAMECALL                         R135 R135 K112 ["Connect"]
     2038 CALL                             R135 2 0
     2039 GETTABLEKS                       R135 R9 K211 ["MouseLeaveStudioViewport"]
     2041 NEWCLOSURE                       R137 P94
     2042 CAPTURE                          VAL R109
     2043 CAPTURE                          REF R126
     2044 CAPTURE                          VAL R125
     2045 CAPTURE                          VAL R101
     2046 CAPTURE                          REF R128
     2047 CAPTURE                          REF R106
     2048 CAPTURE                          REF R108
     2049 CAPTURE                          REF R114
     2050 CAPTURE                          VAL R116
     2051 NAMECALL                         R135 R135 K112 ["Connect"]
     2053 CALL                             R135 2 0
     2054 CLOSEUPVALS                      R126
     2055 GETTABLEKS                       R125 R100 K153 ["MouseEnter"]
     2057 NEWCLOSURE                       R127 P95
     2058 CAPTURE                          VAL R109
     2059 CAPTURE                          REF R30
     2060 CAPTURE                          REF R110
     2061 NAMECALL                         R125 R125 K112 ["Connect"]
     2063 CALL                             R125 2 0
     2064 GETTABLEKS                       R125 R100 K154 ["MouseLeave"]
     2066 NEWCLOSURE                       R127 P96
     2067 CAPTURE                          VAL R109
     2068 CAPTURE                          VAL R80
     2069 CAPTURE                          REF R110
     2070 NAMECALL                         R125 R125 K112 ["Connect"]
     2072 CALL                             R125 2 0
     2073 GETTABLEKS                       R125 R100 K155 ["MouseButton1Down"]
     2075 NEWCLOSURE                       R127 P97
     2076 CAPTURE                          VAL R41
     2077 CAPTURE                          REF R123
     2078 CAPTURE                          REF R124
     2079 CAPTURE                          VAL R109
     2080 CAPTURE                          REF R110
     2081 CAPTURE                          VAL R5
     2082 CAPTURE                          VAL R100
     2083 CAPTURE                          VAL R103
     2084 CAPTURE                          VAL R98
     2085 CAPTURE                          VAL R0
     2086 NAMECALL                         R125 R125 K112 ["Connect"]
     2088 CALL                             R125 2 0
     2089 GETTABLEKS                       R125 R100 K157 ["InputChanged"]
     2091 DUPCLOSURE                       R127 K351 [PROTO_128]
     2092 CAPTURE                          VAL R41
     2093 CAPTURE                          VAL R109
     2094 CAPTURE                          VAL R10
     2095 CAPTURE                          VAL R98
     2096 CAPTURE                          VAL R103
     2097 NAMECALL                         R125 R125 K112 ["Connect"]
     2099 CALL                             R125 2 0
     2100 JUMPIFNOT                        R41 ; [+61]
     2101 GETTABLEKS                       R125 R108 K317 ["buttons"]
     2103 LOADNIL                          R126
     2104 LOADNIL                          R127
     2105 FORGPREP                         R125
     2106 GETTABLEKS                       R130 R129 K153 ["MouseEnter"]
     2108 NEWCLOSURE                       R132 P99
     2109 CAPTURE                          VAL R109
     2110 CAPTURE                          VAL R129
     2111 CAPTURE                          REF R30
     2112 CAPTURE                          REF R110
     2113 NAMECALL                         R130 R130 K112 ["Connect"]
     2115 CALL                             R130 2 0
     2116 GETTABLEKS                       R130 R129 K154 ["MouseLeave"]
     2118 NEWCLOSURE                       R132 P100
     2119 CAPTURE                          VAL R109
     2120 CAPTURE                          VAL R129
     2121 CAPTURE                          VAL R80
     2122 CAPTURE                          REF R110
     2123 NAMECALL                         R130 R130 K112 ["Connect"]
     2125 CALL                             R130 2 0
     2126 FORGLOOP                         R125 2 ; [-21]
     2128 LOADK                            R127 K285 ["CameraNavigationModel"]
     2129 NAMECALL                         R125 R10 K203 ["GetPropertyChangedSignal"]
     2131 CALL                             R125 2 1
     2132 NEWCLOSURE                       R127 P101
     2133 CAPTURE                          REF R108
     2134 CAPTURE                          VAL R122
     2135 CAPTURE                          REF R110
     2136 NAMECALL                         R125 R125 K112 ["Connect"]
     2138 CALL                             R125 2 0
     2139 LOADK                            R127 K352 ["CameraNavigationModelLocked"]
     2140 NAMECALL                         R125 R10 K203 ["GetPropertyChangedSignal"]
     2142 CALL                             R125 2 1
     2143 NEWCLOSURE                       R127 P102
     2144 CAPTURE                          REF R108
     2145 CAPTURE                          REF R110
     2146 NAMECALL                         R125 R125 K112 ["Connect"]
     2148 CALL                             R125 2 0
     2149 MOVE                             R125 R122
     2150 CALL                             R125 0 0
     2151 LOADN                            R125 1
     2152 SETTABLEKS                       R125 R101 K353 ["Transparency"]
     2154 GETTABLEKS                       R125 R108 K316 ["hide"]
     2156 LOADB                            R126 1
     2157 CALL                             R125 1 0
     2158 GETTABLEKS                       R125 R108 K314 ["repaint"]
     2160 CALL                             R125 0 0
     2161 JUMP                             ; [+54]
     2162 GETTABLEKS                       R125 R111 K153 ["MouseEnter"]
     2164 NEWCLOSURE                       R127 P103
     2165 CAPTURE                          VAL R109
     2166 CAPTURE                          REF R30
     2167 CAPTURE                          REF R110
     2168 NAMECALL                         R125 R125 K112 ["Connect"]
     2170 CALL                             R125 2 0
     2171 GETTABLEKS                       R125 R111 K154 ["MouseLeave"]
     2173 NEWCLOSURE                       R127 P104
     2174 CAPTURE                          VAL R109
     2175 CAPTURE                          VAL R80
     2176 CAPTURE                          REF R110
     2177 NAMECALL                         R125 R125 K112 ["Connect"]
     2179 CALL                             R125 2 0
     2180 GETTABLEKS                       R125 R111 K209 ["Activated"]
     2182 DUPCLOSURE                       R127 K354 [PROTO_135]
     2183 CAPTURE                          VAL R10
     2184 NAMECALL                         R125 R125 K112 ["Connect"]
     2186 CALL                             R125 2 0
     2187 LOADK                            R127 K285 ["CameraNavigationModel"]
     2188 NAMECALL                         R125 R10 K203 ["GetPropertyChangedSignal"]
     2190 CALL                             R125 2 1
     2191 NEWCLOSURE                       R127 P106
     2192 CAPTURE                          REF R110
     2193 NAMECALL                         R125 R125 K112 ["Connect"]
     2195 CALL                             R125 2 0
     2196 MOVE                             R125 R122
     2197 CALL                             R125 0 0
     2198 LOADN                            R125 1
     2199 SETTABLEKS                       R125 R100 K182 ["BackgroundTransparency"]
     2201 LOADN                            R125 1
     2202 SETTABLEKS                       R125 R100 K227 ["TextTransparency"]
     2204 LOADN                            R125 1
     2205 SETTABLEKS                       R125 R101 K353 ["Transparency"]
     2207 LOADN                            R125 1
     2208 SETTABLEKS                       R125 R102 K182 ["BackgroundTransparency"]
     2210 LOADN                            R125 1
     2211 SETTABLEKS                       R125 R111 K326 ["ImageTransparency"]
     2213 LOADN                            R125 1
     2214 SETTABLEKS                       R125 R111 K182 ["BackgroundTransparency"]
     2216 CLOSEUPVALS                      R106
     2217 JUMP                             ; [+5]
     2218 GETTABLEKS                       R98 R20 K224 ["CamSpeed"]
     2220 NAMECALL                         R98 R98 K355 ["Destroy"]
     2222 CALL                             R98 1 0
     2223 CLOSEUPVALS                      R13
     2224 RETURN                           R0 0
