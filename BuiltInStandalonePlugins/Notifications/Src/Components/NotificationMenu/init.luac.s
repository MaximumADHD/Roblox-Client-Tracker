PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Header"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["getText"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["MENU_OPTIONS"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 LOADK                            R8 K0 ["Header"]
        3 MOVE                             R9 R1
        4 NAMECALL                         R6 R6 K1 ["getText"]
        6 CALL                             R6 3 1
        7 GETUPVAL                         R8 2
        8 GETTABLEKS                       R7 R8 K2 ["TEXT_SIZE"]
       10 GETUPVAL                         R9 2
       11 GETTABLEKS                       R8 R9 K3 ["TEXT_FONT"]
       13 GETIMPORT                        R9 K6 [Vector2.new]
       15 LOADK                            R10 K7 [∞]
       16 LOADK                            R11 K7 [∞]
       17 CALL                             R9 2 -1
       18 NAMECALL                         R4 R4 K8 ["GetTextSize"]
       20 CALL                             R4 -1 1
       21 GETTABLEKS                       R3 R4 K9 ["X"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R4 R5 K10 ["TEXT_WIDTH_PADDING"]
       26 ADD                              R2 R3 R4
       27 FASTCALL2                        MATH_MAX R0 R2 ; [+5]
       29 MOVE                             R4 R0
       30 MOVE                             R5 R2
       31 GETIMPORT                        R3 K13 [math.max]
       33 CALL                             R3 2 1
       34 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["MENU_OPTIONS"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U1
        8 LOADN                            R3 0
        9 CALL                             R0 3 -1
       10 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K1 ["BORDER_SIZE"]
        4 MULK                             R2 R3 K0 [2]
        5 SUB                              R0 R1 R2
        6 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R1 K2 ["Unknown notification menu option: "]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKS                    R0 K0 ["MarkAllAsRead"] ; [+5]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["OnMarkAllAsReadClicked"]
        5 RETURN                           R1 1
        6 JUMPIFNOTEQKS                    R0 K2 ["Settings"] ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["OnSettingsClicked"]
       11 RETURN                           R1 1
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 LOADK                            R3 K1 ["TextButton"]
        4 NEWTABLE                         R4 8 0
        6 SETTABLEKS                       R1 R4 K2 ["LayoutOrder"]
        8 LOADB                            R5 0
        9 SETTABLEKS                       R5 R4 K3 ["AutoButtonColor"]
       11 GETIMPORT                        R5 K6 [UDim2.new]
       13 LOADN                            R6 0
       14 GETUPVAL                         R7 1
       15 LOADN                            R8 0
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R9 R10 K7 ["BUTTON_HEIGHT"]
       19 CALL                             R5 4 1
       20 SETTABLEKS                       R5 R4 K8 ["Size"]
       22 GETUPVAL                         R5 3
       23 LOADK                            R7 K9 ["Header"]
       24 MOVE                             R8 R0
       25 NAMECALL                         R5 R5 K10 ["getText"]
       27 CALL                             R5 3 1
       28 SETTABLEKS                       R5 R4 K11 ["Text"]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K12 ["Event"]
       33 GETTABLEKS                       R5 R6 K13 ["MouseButton1Click"]
       35 GETUPVAL                         R6 4
       36 MOVE                             R7 R0
       37 CALL                             R6 1 1
       38 SETTABLE                         R6 R4 R5
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K14 ["Tag"]
       42 LOADK                            R6 K15 ["Component-NotificationMenuOptionButton"]
       43 SETTABLE                         R6 R4 R5
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R4 0 1
       13 MOVE                             R5 R1
       14 SETLIST                          R4 R5 1 [1]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R1
       25 MOVE                             R5 R2
       26 CALL                             R3 2 1
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       30 NEWCLOSURE                       R5 P2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U3
       33 NEWTABLE                         R6 0 1
       35 MOVE                             R7 R3
       36 SETLIST                          R6 R7 1 [1]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       42 NEWCLOSURE                       R6 P3
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R7 0 2
       46 GETTABLEKS                       R8 R0 K3 ["OnSettingsClicked"]
       48 GETTABLEKS                       R9 R0 K4 ["OnMarkAllAsReadClicked"]
       50 SETLIST                          R7 R8 2 [1]
       52 CALL                             R5 2 1
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R6 R7 K5 ["createElement"]
       56 GETUPVAL                         R7 6
       57 DUPTABLE                         R8 K7 [{"OnFocusLost"}]
       58 GETTABLEKS                       R9 R0 K8 ["OnDropdownMenuFocusLost"]
       60 SETTABLEKS                       R9 R8 K6 ["OnFocusLost"]
       62 NEWTABLE                         R9 0 1
       64 GETUPVAL                         R11 1
       65 GETTABLEKS                       R10 R11 K5 ["createElement"]
       67 LOADK                            R11 K9 ["Frame"]
       68 NEWTABLE                         R12 4 0
       70 GETIMPORT                        R13 K12 [Vector2.new]
       72 LOADN                            R14 1
       73 LOADN                            R15 0
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K13 ["AnchorPoint"]
       77 GETIMPORT                        R13 K15 [UDim2.new]
       79 LOADN                            R14 1
       80 LOADN                            R15 242
       81 LOADN                            R16 0
       82 LOADN                            R17 38
       83 CALL                             R13 4 1
       84 SETTABLEKS                       R13 R12 K16 ["Position"]
       86 GETIMPORT                        R13 K15 [UDim2.new]
       88 LOADN                            R14 0
       89 MOVE                             R15 R3
       90 LOADN                            R16 0
       91 GETUPVAL                         R18 3
       92 GETTABLEKS                       R17 R18 K17 ["TOTAL_MENU_HEIGHT"]
       94 CALL                             R13 4 1
       95 SETTABLEKS                       R13 R12 K18 ["Size"]
       97 GETUPVAL                         R14 1
       98 GETTABLEKS                       R13 R14 K19 ["Tag"]
      100 LOADK                            R14 K20 ["Component-NotificationMenu"]
      101 SETTABLE                         R14 R12 R13
      102 NEWTABLE                         R13 0 1
      104 GETUPVAL                         R15 1
      105 GETTABLEKS                       R14 R15 K5 ["createElement"]
      107 LOADK                            R15 K9 ["Frame"]
      108 NEWTABLE                         R16 4 0
      110 GETIMPORT                        R17 K12 [Vector2.new]
      112 LOADN                            R18 0
      113 LOADN                            R19 0
      114 CALL                             R17 2 1
      115 SETTABLEKS                       R17 R16 K13 ["AnchorPoint"]
      117 GETIMPORT                        R17 K15 [UDim2.new]
      119 LOADN                            R18 0
      120 GETUPVAL                         R20 3
      121 GETTABLEKS                       R19 R20 K21 ["BORDER_SIZE"]
      123 LOADN                            R20 0
      124 GETUPVAL                         R22 3
      125 GETTABLEKS                       R21 R22 K21 ["BORDER_SIZE"]
      127 CALL                             R17 4 1
      128 SETTABLEKS                       R17 R16 K16 ["Position"]
      130 GETIMPORT                        R17 K15 [UDim2.new]
      132 LOADN                            R18 0
      133 MOVE                             R19 R4
      134 LOADN                            R20 0
      135 GETUPVAL                         R22 3
      136 GETTABLEKS                       R21 R22 K22 ["INNER_MENU_HEIGHT"]
      138 CALL                             R17 4 1
      139 SETTABLEKS                       R17 R16 K18 ["Size"]
      141 GETUPVAL                         R18 1
      142 GETTABLEKS                       R17 R18 K19 ["Tag"]
      144 LOADK                            R18 K23 ["Component-NotificationMenuInner"]
      145 SETTABLE                         R18 R16 R17
      146 GETUPVAL                         R17 2
      147 GETUPVAL                         R19 3
      148 GETTABLEKS                       R18 R19 K24 ["MENU_OPTIONS"]
      150 NEWCLOSURE                       R19 P4
      151 CAPTURE                          UPVAL U1
      152 CAPTURE                          VAL R4
      153 CAPTURE                          UPVAL U3
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R5
      156 CALL                             R17 2 -1
      157 CALL                             R14 -1 -1
      158 SETLIST                          R13 R14 -1 [1]
      160 CALL                             R10 3 -1
      161 SETLIST                          R9 R10 -1 [1]
      163 CALL                             R6 3 -1
      164 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Dash"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["reduce"]
       32 GETTABLEKS                       R5 R3 K10 ["map"]
       34 GETTABLEKS                       R7 R2 K11 ["ContextServices"]
       36 GETTABLEKS                       R6 R7 K12 ["Localization"]
       38 GETTABLEKS                       R8 R2 K13 ["UI"]
       40 GETTABLEKS                       R7 R8 K14 ["CaptureFocus"]
       42 GETIMPORT                        R8 K16 [game]
       44 LOADK                            R10 K17 ["TextService"]
       45 NAMECALL                         R8 R8 K18 ["GetService"]
       47 CALL                             R8 2 1
       48 GETIMPORT                        R9 K4 [require]
       50 GETTABLEKS                       R13 R0 K19 ["Src"]
       52 GETTABLEKS                       R12 R13 K20 ["Components"]
       54 GETTABLEKS                       R11 R12 K21 ["NotificationMenu"]
       56 GETTABLEKS                       R10 R11 K22 ["constants"]
       58 CALL                             R9 1 1
       59 DUPCLOSURE                       R10 K23 [PROTO_8]
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R7
       67 RETURN                           R10 1
