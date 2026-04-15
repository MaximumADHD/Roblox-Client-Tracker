PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Editing"]
        3 JUMPIFNOT                        R0 ; [+41]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+37]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K1 ["current"]
       11 LOADK                            R3 K2 ["TextBox"]
       12 NAMECALL                         R1 R1 K3 ["IsA"]
       14 CALL                             R1 2 1
       15 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       17 LOADK                            R2 K4 ["Tab expected to be a TextBox"]
       18 GETIMPORT                        R0 K6 [assert]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R0 R1 K1 ["current"]
       24 NAMECALL                         R0 R0 K7 ["CaptureFocus"]
       26 CALL                             R0 1 0
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K1 ["current"]
       30 GETTABLEKS                       R1 R2 K8 ["Text"]
       32 LENGTH                           R0 R1
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R1 R2 K1 ["current"]
       36 LOADN                            R2 1
       37 SETTABLEKS                       R2 R1 K9 ["SelectionStart"]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R1 R2 K1 ["current"]
       42 ADDK                             R2 R0 K10 [1]
       43 SETTABLEKS                       R2 R1 K11 ["CursorPosition"]
       45 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnEditCommitted"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["OnEditCommitted"]
        7 GETTABLEKS                       R2 R0 K1 ["Text"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["TextFits"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETIMPORT                        R1 K4 [Enum.TextXAlignment.Center]
        5 JUMP                             ; [+2]
        6 GETIMPORT                        R1 K6 [Enum.TextXAlignment.Right]
        8 SETTABLEKS                       R1 R0 K2 ["TextXAlignment"]
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+23]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["OnSelected"]
        9 JUMPIFNOT                        R2 ; [+51]
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+4]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K5 ["cancelShowTooltip"]
       15 CALL                             R2 0 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K4 ["OnSelected"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K6 ["Uri"]
       22 GETUPVAL                         R4 3
       23 NAMECALL                         R4 R4 K7 ["isDoubleClick"]
       25 CALL                             R4 1 -1
       26 CALL                             R2 -1 0
       27 RETURN                           R0 0
       28 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       30 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseButton2]
       32 JUMPIFNOTEQ                      R2 R3 ; [+28]
       34 GETUPVAL                         R3 4
       35 LENGTH                           R2 R3
       36 LOADN                            R3 0
       37 JUMPIFNOTLT                      R3 R2 ; [+23]
       39 GETUPVAL                         R2 1
       40 JUMPIFNOT                        R2 ; [+4]
       41 GETUPVAL                         R3 2
       42 GETTABLEKS                       R2 R3 K5 ["cancelShowTooltip"]
       44 CALL                             R2 0 0
       45 GETIMPORT                        R2 K12 [Vector2.new]
       47 GETTABLEKS                       R4 R1 K13 ["Position"]
       49 GETTABLEKS                       R3 R4 K14 ["X"]
       51 GETTABLEKS                       R5 R1 K13 ["Position"]
       53 GETTABLEKS                       R4 R5 K15 ["Y"]
       55 CALL                             R2 2 1
       56 GETUPVAL                         R3 5
       57 GETTABLEKS                       R5 R0 K16 ["AbsolutePosition"]
       59 SUB                              R4 R2 R5
       60 CALL                             R3 1 0
       61 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["OnHover"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K0 ["OnHover"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+8]
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R0 R1 K0 ["OnHoverEnd"]
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R0 R1 K0 ["OnHoverEnd"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Uri"]
        3 GETTABLEKS                       R3 R0 K1 ["ForwardRef"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R3 R0 K2 ["Tooltip"]
        8 JUMPIFNOT                        R3 ; [+12]
        9 GETTABLEKS                       R4 R0 K2 ["Tooltip"]
       11 GETTABLEKS                       R3 R4 K3 ["Text"]
       13 JUMPIF                           R3 ; [+5]
       14 GETTABLEKS                       R4 R0 K2 ["Tooltip"]
       16 GETTABLEKS                       R3 R4 K4 ["Title"]
       18 JUMPIFNOT                        R3 ; [+2]
       19 LOADB                            R2 1
       20 JUMP                             ; [+1]
       21 LOADB                            R2 0
       22 GETUPVAL                         R3 1
       23 DUPTABLE                         R4 K6 [{"Uri", "Title", "Text", "WidgetRef"}]
       24 GETTABLEKS                       R5 R0 K0 ["Uri"]
       26 SETTABLEKS                       R5 R4 K0 ["Uri"]
       28 GETTABLEKS                       R6 R0 K2 ["Tooltip"]
       30 JUMPIFNOT                        R6 ; [+5]
       31 GETTABLEKS                       R6 R0 K2 ["Tooltip"]
       33 GETTABLEKS                       R5 R6 K4 ["Title"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R5
       37 SETTABLEKS                       R5 R4 K4 ["Title"]
       39 GETTABLEKS                       R6 R0 K2 ["Tooltip"]
       41 JUMPIFNOT                        R6 ; [+5]
       42 GETTABLEKS                       R6 R0 K2 ["Tooltip"]
       44 GETTABLEKS                       R5 R6 K3 ["Text"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R5
       48 SETTABLEKS                       R5 R4 K3 ["Text"]
       50 SETTABLEKS                       R1 R4 K5 ["WidgetRef"]
       52 CALL                             R3 1 2
       53 GETUPVAL                         R5 2
       54 NEWCLOSURE                       R6 P0
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R1
       57 NEWTABLE                         R7 0 2
       59 GETTABLEKS                       R8 R0 K7 ["Editing"]
       61 MOVE                             R9 R1
       62 SETLIST                          R7 R8 2 [1]
       64 CALL                             R5 2 0
       65 GETUPVAL                         R5 3
       66 GETUPVAL                         R7 4
       67 GETTABLEKS                       R6 R7 K8 ["new"]
       69 CALL                             R6 0 -1
       70 CALL                             R5 -1 1
       71 GETTABLEKS                       R7 R0 K9 ["ContextMenuItems"]
       73 JUMPIFNOT                        R7 ; [+3]
       74 GETTABLEKS                       R6 R0 K9 ["ContextMenuItems"]
       76 JUMP                             ; [+2]
       77 NEWTABLE                         R6 0 0
       79 GETUPVAL                         R7 5
       80 GETTABLEKS                       R8 R0 K0 ["Uri"]
       82 MOVE                             R9 R6
       83 GETTABLEKS                       R10 R0 K10 ["OnContextMenuItemSelected"]
       85 CALL                             R7 3 1
       86 GETTABLEKS                       R8 R0 K7 ["Editing"]
       88 JUMPIFNOT                        R8 ; [+47]
       89 GETUPVAL                         R8 6
       90 LOADK                            R9 K11 ["TextBox"]
       91 NEWTABLE                         R10 8 0
       93 SETTABLEKS                       R1 R10 K12 ["ref"]
       95 GETTABLEKS                       R11 R0 K3 ["Text"]
       97 SETTABLEKS                       R11 R10 K3 ["Text"]
       99 LOADB                            R11 0
      100 SETTABLEKS                       R11 R10 K13 ["ClearTextOnFocus"]
      102 GETTABLEKS                       R11 R0 K14 ["LayoutOrder"]
      104 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      106 GETUPVAL                         R12 7
      107 GETTABLEKS                       R11 R12 K15 ["Tag"]
      109 LOADK                            R13 K16 ["Component-RibbonTab State-Editing X-Fit data-testid=%*"]
      110 GETUPVAL                         R15 8
      111 GETTABLEKS                       R16 R0 K0 ["Uri"]
      113 CALL                             R15 1 1
      114 NAMECALL                         R13 R13 K17 ["format"]
      116 CALL                             R13 2 1
      117 MOVE                             R12 R13
      118 SETTABLE                         R12 R10 R11
      119 GETUPVAL                         R13 7
      120 GETTABLEKS                       R12 R13 K18 ["Event"]
      122 GETTABLEKS                       R11 R12 K19 ["FocusLost"]
      124 NEWCLOSURE                       R12 P1
      125 CAPTURE                          VAL R0
      126 SETTABLE                         R12 R10 R11
      127 GETUPVAL                         R13 7
      128 GETTABLEKS                       R12 R13 K20 ["Change"]
      130 GETTABLEKS                       R11 R12 K21 ["TextFits"]
      132 DUPCLOSURE                       R12 K22 [PROTO_2]
      133 SETTABLE                         R12 R10 R11
      134 CALL                             R8 2 -1
      135 RETURN                           R8 -1
      136 GETTABLEKS                       R9 R0 K23 ["Enabled"]
      138 JUMPIFNOTEQKNIL                  R9 ; [+3]
      140 LOADB                            R8 1
      141 JUMP                             ; [+2]
      142 GETTABLEKS                       R8 R0 K23 ["Enabled"]
      144 GETUPVAL                         R9 6
      145 LOADK                            R10 K24 ["TextButton"]
      146 NEWTABLE                         R11 8 0
      148 SETTABLEKS                       R1 R11 K12 ["ref"]
      150 GETTABLEKS                       R12 R0 K3 ["Text"]
      152 SETTABLEKS                       R12 R11 K3 ["Text"]
      154 GETTABLEKS                       R12 R0 K14 ["LayoutOrder"]
      156 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
      158 GETUPVAL                         R13 7
      159 GETTABLEKS                       R12 R13 K15 ["Tag"]
      161 GETUPVAL                         R13 9
      162 LOADK                            R15 K25 ["Component-RibbonTab X-Fit data-testid=%*"]
      163 GETUPVAL                         R17 8
      164 GETTABLEKS                       R18 R0 K0 ["Uri"]
      166 CALL                             R17 1 1
      167 NAMECALL                         R15 R15 K17 ["format"]
      169 CALL                             R15 2 1
      170 MOVE                             R14 R15
      171 JUMPIF                           R8 ; [+2]
      172 LOADK                            R15 K26 ["State-Disabled"]
      173 JUMP                             ; [+6]
      174 GETTABLEKS                       R16 R0 K27 ["Selected"]
      176 JUMPIFNOT                        R16 ; [+2]
      177 LOADK                            R15 K28 ["State-Selected"]
      178 JUMP                             ; [+1]
      179 LOADK                            R15 K29 ["State-Default"]
      180 CALL                             R13 2 1
      181 SETTABLE                         R13 R11 R12
      182 GETUPVAL                         R14 7
      183 GETTABLEKS                       R13 R14 K18 ["Event"]
      185 GETTABLEKS                       R12 R13 K30 ["InputBegan"]
      187 NEWCLOSURE                       R13 P3
      188 CAPTURE                          VAL R0
      189 CAPTURE                          VAL R2
      190 CAPTURE                          UPVAL U10
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R7
      194 SETTABLE                         R13 R11 R12
      195 GETUPVAL                         R14 7
      196 GETTABLEKS                       R13 R14 K18 ["Event"]
      198 GETTABLEKS                       R12 R13 K31 ["MouseEnter"]
      200 NEWCLOSURE                       R13 P4
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R3
      203 CAPTURE                          VAL R0
      204 SETTABLE                         R13 R11 R12
      205 GETUPVAL                         R14 7
      206 GETTABLEKS                       R13 R14 K18 ["Event"]
      208 GETTABLEKS                       R12 R13 K32 ["MouseLeave"]
      210 NEWCLOSURE                       R13 P5
      211 CAPTURE                          VAL R2
      212 CAPTURE                          VAL R4
      213 CAPTURE                          UPVAL U11
      214 CAPTURE                          VAL R0
      215 SETTABLE                         R13 R11 R12
      216 CALL                             R9 2 -1
      217 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["uriToTestId"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Hooks"]
       36 GETTABLEKS                       R5 R6 K13 ["useRelativeMenu"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Packages"]
       43 GETTABLEKS                       R6 R7 K14 ["StudioFoundation"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R7 R5 K12 ["Hooks"]
       48 GETTABLEKS                       R6 R7 K15 ["useWidgetRef"]
       50 GETTABLEKS                       R8 R1 K10 ["Util"]
       52 GETTABLEKS                       R7 R8 K16 ["DoubleClickDetector"]
       54 GETTABLEKS                       R8 R2 K17 ["createElement"]
       56 GETTABLEKS                       R10 R1 K18 ["Styling"]
       58 GETTABLEKS                       R9 R10 K19 ["joinTags"]
       60 GETTABLEKS                       R10 R2 K20 ["useState"]
       62 GETTABLEKS                       R11 R2 K21 ["useEffect"]
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R15 R0 K9 ["Src"]
       68 GETTABLEKS                       R14 R15 K12 ["Hooks"]
       70 GETTABLEKS                       R13 R14 K22 ["TooltipSettings"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R16 R0 K9 ["Src"]
       77 GETTABLEKS                       R15 R16 K12 ["Hooks"]
       79 GETTABLEKS                       R14 R15 K23 ["useTooltip"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K5 [require]
       84 GETTABLEKS                       R17 R0 K9 ["Src"]
       86 GETTABLEKS                       R16 R17 K24 ["SharedFlags"]
       88 GETTABLEKS                       R15 R16 K25 ["getFFlagRibbonCancelShowFloatingTask"]
       90 CALL                             R14 1 1
       91 DUPCLOSURE                       R15 K26 [PROTO_6]
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R14
      104 RETURN                           R15 1
