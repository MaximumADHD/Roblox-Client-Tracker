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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnSelected"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["cancelShowTooltip"]
        9 CALL                             R0 0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["OnSelected"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K2 ["Uri"]
       16 GETUPVAL                         R2 3
       17 NAMECALL                         R2 R2 K3 ["isDoubleClick"]
       19 CALL                             R2 1 -1
       20 CALL                             R0 -1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+28]
        3 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        5 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        7 JUMPIFNOTEQ                      R2 R3 ; [+23]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K4 ["OnSelected"]
       12 JUMPIFNOT                        R2 ; [+51]
       13 GETUPVAL                         R2 2
       14 JUMPIFNOT                        R2 ; [+4]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R2 R3 K5 ["cancelShowTooltip"]
       18 CALL                             R2 0 0
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K4 ["OnSelected"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K6 ["Uri"]
       25 GETUPVAL                         R4 4
       26 NAMECALL                         R4 R4 K7 ["isDoubleClick"]
       28 CALL                             R4 1 -1
       29 CALL                             R2 -1 0
       30 RETURN                           R0 0
       31 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       33 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseButton2]
       35 JUMPIFNOTEQ                      R2 R3 ; [+28]
       37 GETUPVAL                         R3 5
       38 LENGTH                           R2 R3
       39 LOADN                            R3 0
       40 JUMPIFNOTLT                      R3 R2 ; [+23]
       42 GETUPVAL                         R2 2
       43 JUMPIFNOT                        R2 ; [+4]
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R2 R3 K5 ["cancelShowTooltip"]
       47 CALL                             R2 0 0
       48 GETIMPORT                        R2 K12 [Vector2.new]
       50 GETTABLEKS                       R4 R1 K13 ["Position"]
       52 GETTABLEKS                       R3 R4 K14 ["X"]
       54 GETTABLEKS                       R5 R1 K13 ["Position"]
       56 GETTABLEKS                       R4 R5 K15 ["Y"]
       58 CALL                             R2 2 1
       59 GETUPVAL                         R3 6
       60 GETTABLEKS                       R5 R0 K16 ["AbsolutePosition"]
       62 SUB                              R4 R2 R5
       63 CALL                             R3 1 0
       64 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Uri"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R3 R0 K1 ["Tooltip"]
        6 JUMPIFNOT                        R3 ; [+12]
        7 GETTABLEKS                       R4 R0 K1 ["Tooltip"]
        9 GETTABLEKS                       R3 R4 K2 ["Text"]
       11 JUMPIF                           R3 ; [+5]
       12 GETTABLEKS                       R4 R0 K1 ["Tooltip"]
       14 GETTABLEKS                       R3 R4 K3 ["Title"]
       16 JUMPIFNOT                        R3 ; [+2]
       17 LOADB                            R2 1
       18 JUMP                             ; [+1]
       19 LOADB                            R2 0
       20 GETUPVAL                         R3 1
       21 DUPTABLE                         R4 K5 [{"Uri", "Title", "Text", "WidgetRef"}]
       22 GETTABLEKS                       R5 R0 K0 ["Uri"]
       24 SETTABLEKS                       R5 R4 K0 ["Uri"]
       26 GETTABLEKS                       R6 R0 K1 ["Tooltip"]
       28 JUMPIFNOT                        R6 ; [+5]
       29 GETTABLEKS                       R6 R0 K1 ["Tooltip"]
       31 GETTABLEKS                       R5 R6 K3 ["Title"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R5
       35 SETTABLEKS                       R5 R4 K3 ["Title"]
       37 GETTABLEKS                       R6 R0 K1 ["Tooltip"]
       39 JUMPIFNOT                        R6 ; [+5]
       40 GETTABLEKS                       R6 R0 K1 ["Tooltip"]
       42 GETTABLEKS                       R5 R6 K2 ["Text"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R5
       46 SETTABLEKS                       R5 R4 K2 ["Text"]
       48 SETTABLEKS                       R1 R4 K4 ["WidgetRef"]
       50 CALL                             R3 1 2
       51 GETUPVAL                         R5 2
       52 NEWCLOSURE                       R6 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 NEWTABLE                         R7 0 2
       57 GETTABLEKS                       R8 R0 K6 ["Editing"]
       59 MOVE                             R9 R1
       60 SETLIST                          R7 R8 2 [1]
       62 CALL                             R5 2 0
       63 GETUPVAL                         R5 3
       64 GETUPVAL                         R7 4
       65 GETTABLEKS                       R6 R7 K7 ["new"]
       67 CALL                             R6 0 -1
       68 CALL                             R5 -1 1
       69 GETTABLEKS                       R7 R0 K8 ["ContextMenuItems"]
       71 JUMPIFNOT                        R7 ; [+3]
       72 GETTABLEKS                       R6 R0 K8 ["ContextMenuItems"]
       74 JUMP                             ; [+2]
       75 NEWTABLE                         R6 0 0
       77 GETUPVAL                         R7 5
       78 GETTABLEKS                       R8 R0 K0 ["Uri"]
       80 MOVE                             R9 R6
       81 GETTABLEKS                       R10 R0 K9 ["OnContextMenuItemSelected"]
       83 CALL                             R7 3 1
       84 GETTABLEKS                       R8 R0 K6 ["Editing"]
       86 JUMPIFNOT                        R8 ; [+47]
       87 GETUPVAL                         R8 6
       88 LOADK                            R9 K10 ["TextBox"]
       89 NEWTABLE                         R10 8 0
       91 SETTABLEKS                       R1 R10 K11 ["ref"]
       93 GETTABLEKS                       R11 R0 K2 ["Text"]
       95 SETTABLEKS                       R11 R10 K2 ["Text"]
       97 LOADB                            R11 0
       98 SETTABLEKS                       R11 R10 K12 ["ClearTextOnFocus"]
      100 GETTABLEKS                       R11 R0 K13 ["LayoutOrder"]
      102 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
      104 GETUPVAL                         R12 7
      105 GETTABLEKS                       R11 R12 K14 ["Tag"]
      107 LOADK                            R13 K15 ["Component-RibbonTab State-Editing X-Fit data-testid=%*"]
      108 GETUPVAL                         R15 8
      109 GETTABLEKS                       R16 R0 K0 ["Uri"]
      111 CALL                             R15 1 1
      112 NAMECALL                         R13 R13 K16 ["format"]
      114 CALL                             R13 2 1
      115 MOVE                             R12 R13
      116 SETTABLE                         R12 R10 R11
      117 GETUPVAL                         R13 7
      118 GETTABLEKS                       R12 R13 K17 ["Event"]
      120 GETTABLEKS                       R11 R12 K18 ["FocusLost"]
      122 NEWCLOSURE                       R12 P1
      123 CAPTURE                          VAL R0
      124 SETTABLE                         R12 R10 R11
      125 GETUPVAL                         R13 7
      126 GETTABLEKS                       R12 R13 K19 ["Change"]
      128 GETTABLEKS                       R11 R12 K20 ["TextFits"]
      130 DUPCLOSURE                       R12 K21 [PROTO_2]
      131 SETTABLE                         R12 R10 R11
      132 CALL                             R8 2 -1
      133 RETURN                           R8 -1
      134 GETTABLEKS                       R9 R0 K22 ["Enabled"]
      136 JUMPIFNOTEQKNIL                  R9 ; [+3]
      138 LOADB                            R8 1
      139 JUMP                             ; [+2]
      140 GETTABLEKS                       R8 R0 K22 ["Enabled"]
      142 GETUPVAL                         R9 6
      143 LOADK                            R10 K23 ["TextButton"]
      144 NEWTABLE                         R11 8 0
      146 SETTABLEKS                       R1 R11 K11 ["ref"]
      148 GETTABLEKS                       R12 R0 K2 ["Text"]
      150 SETTABLEKS                       R12 R11 K2 ["Text"]
      152 GETTABLEKS                       R12 R0 K13 ["LayoutOrder"]
      154 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      156 GETUPVAL                         R13 7
      157 GETTABLEKS                       R12 R13 K14 ["Tag"]
      159 GETUPVAL                         R13 9
      160 LOADK                            R15 K24 ["Component-RibbonTab X-Fit data-testid=%*"]
      161 GETUPVAL                         R17 8
      162 GETTABLEKS                       R18 R0 K0 ["Uri"]
      164 CALL                             R17 1 1
      165 NAMECALL                         R15 R15 K16 ["format"]
      167 CALL                             R15 2 1
      168 MOVE                             R14 R15
      169 JUMPIF                           R8 ; [+2]
      170 LOADK                            R15 K25 ["State-Disabled"]
      171 JUMP                             ; [+6]
      172 GETTABLEKS                       R16 R0 K26 ["Selected"]
      174 JUMPIFNOT                        R16 ; [+2]
      175 LOADK                            R15 K27 ["State-Selected"]
      176 JUMP                             ; [+1]
      177 LOADK                            R15 K28 ["State-Default"]
      178 CALL                             R13 2 1
      179 SETTABLE                         R13 R11 R12
      180 GETUPVAL                         R14 7
      181 GETTABLEKS                       R13 R14 K17 ["Event"]
      183 GETTABLEKS                       R12 R13 K29 ["Activated"]
      185 GETUPVAL                         R14 10
      186 CALL                             R14 0 1
      187 JUMPIFNOT                        R14 ; [+2]
      188 LOADNIL                          R13
      189 JUMP                             ; [+5]
      190 NEWCLOSURE                       R13 P3
      191 CAPTURE                          VAL R0
      192 CAPTURE                          VAL R2
      193 CAPTURE                          UPVAL U11
      194 CAPTURE                          VAL R5
      195 SETTABLE                         R13 R11 R12
      196 GETUPVAL                         R14 7
      197 GETTABLEKS                       R13 R14 K17 ["Event"]
      199 GETTABLEKS                       R12 R13 K30 ["InputBegan"]
      201 NEWCLOSURE                       R13 P4
      202 CAPTURE                          UPVAL U10
      203 CAPTURE                          VAL R0
      204 CAPTURE                          VAL R2
      205 CAPTURE                          UPVAL U11
      206 CAPTURE                          VAL R5
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R7
      209 SETTABLE                         R13 R11 R12
      210 GETUPVAL                         R14 7
      211 GETTABLEKS                       R13 R14 K17 ["Event"]
      213 GETTABLEKS                       R12 R13 K31 ["MouseEnter"]
      215 NEWCLOSURE                       R13 P5
      216 CAPTURE                          VAL R2
      217 CAPTURE                          VAL R3
      218 CAPTURE                          VAL R0
      219 SETTABLE                         R13 R11 R12
      220 GETUPVAL                         R14 7
      221 GETTABLEKS                       R13 R14 K17 ["Event"]
      223 GETTABLEKS                       R12 R13 K32 ["MouseLeave"]
      225 NEWCLOSURE                       R13 P6
      226 CAPTURE                          VAL R2
      227 CAPTURE                          VAL R4
      228 CAPTURE                          UPVAL U12
      229 CAPTURE                          VAL R0
      230 SETTABLE                         R13 R11 R12
      231 CALL                             R9 2 -1
      232 RETURN                           R9 -1

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
       88 GETTABLEKS                       R15 R16 K25 ["getFeatureRibbonControlsCaching"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K5 [require]
       93 GETTABLEKS                       R18 R0 K9 ["Src"]
       95 GETTABLEKS                       R17 R18 K24 ["SharedFlags"]
       97 GETTABLEKS                       R16 R17 K26 ["getFFlagRibbonCancelShowFloatingTask"]
       99 CALL                             R15 1 1
      100 DUPCLOSURE                       R16 K27 [PROTO_7]
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R15
      114 RETURN                           R16 1
