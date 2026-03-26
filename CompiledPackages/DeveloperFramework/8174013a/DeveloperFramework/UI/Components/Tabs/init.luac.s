PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["TabsListRef"]
        4 JUMPIFEQKNIL                     R1 ; [+24]
        6 GETTABLEKS                       R4 R0 K0 ["props"]
        8 GETTABLEKS                       R1 R4 K2 ["Tabs"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETTABLEKS                       R8 R0 K0 ["props"]
       15 GETTABLEKS                       R7 R8 K1 ["TabsListRef"]
       17 GETTABLEKS                       R6 R7 K3 ["current"]
       19 GETTABLEKS                       R8 R5 K4 ["Key"]
       21 OR                               R7 R8 R4
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K5 ["createRef"]
       25 CALL                             R8 0 1
       26 SETTABLE                         R8 R6 R7
       27 FORGLOOP                         R1 2 ; [-15]
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["SelectedTab"]
        3 JUMPIFEQ                         R0 R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Key"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["SelectedTab"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 NEWTABLE                         R4 8 0
        6 GETUPVAL                         R6 2
        7 JUMPIFNOT                        R6 ; [+11]
        8 GETUPVAL                         R6 3
        9 JUMPIFNOT                        R6 ; [+9]
       10 GETTABLEKS                       R5 R0 K1 ["Key"]
       12 JUMPIF                           R5 ; [+7]
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R6 R0
       15 GETIMPORT                        R5 K3 [tostring]
       17 CALL                             R5 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R5
       20 SETTABLEKS                       R5 R4 K4 ["key"]
       22 SETTABLEKS                       R0 R4 K5 ["Tab"]
       24 SETTABLEKS                       R1 R4 K6 ["Index"]
       26 GETTABLEKS                       R5 R0 K7 ["Disabled"]
       28 SETTABLEKS                       R5 R4 K7 ["Disabled"]
       30 GETUPVAL                         R6 4
       31 JUMPIFEQ                         R6 R1 ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K8 ["Selected"]
       37 GETUPVAL                         R6 5
       38 GETTABLEKS                       R5 R6 K9 ["OnTabSelected"]
       40 SETTABLEKS                       R5 R4 K9 ["OnTabSelected"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R5 R6 K10 ["Ref"]
       45 GETUPVAL                         R8 5
       46 GETTABLEKS                       R7 R8 K11 ["TabsListRef"]
       48 JUMPIFEQKNIL                     R7 ; [+11]
       50 GETUPVAL                         R9 5
       51 GETTABLEKS                       R8 R9 K11 ["TabsListRef"]
       53 GETTABLEKS                       R7 R8 K12 ["current"]
       55 GETTABLEKS                       R9 R0 K1 ["Key"]
       57 OR                               R8 R9 R1
       58 GETTABLE                         R6 R7 R8
       59 JUMP                             ; [+1]
       60 LOADNIL                          R6
       61 SETTABLE                         R6 R4 R5
       62 CALL                             R2 2 -1
       63 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["TabComponent"]
        4 JUMPIF                           R2 ; [+1]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R1 K2 ["SelectedTab"]
        8 GETTABLEKS                       R5 R1 K2 ["SelectedTab"]
       10 FASTCALL1                        TYPEOF R5 ; [+2]
       11 GETIMPORT                        R4 K4 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K5 ["table"] ; [+9]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R5 R1 K6 ["Tabs"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R1
       21 CALL                             R4 2 1
       22 MOVE                             R3 R4
       23 JUMP                             ; [+15]
       24 GETTABLEKS                       R5 R1 K2 ["SelectedTab"]
       26 FASTCALL1                        TYPEOF R5 ; [+2]
       27 GETIMPORT                        R4 K4 [typeof]
       29 CALL                             R4 1 1
       30 JUMPIFNOTEQKS                    R4 K7 ["string"] ; [+8]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R5 R1 K6 ["Tabs"]
       35 NEWCLOSURE                       R6 P1
       36 CAPTURE                          VAL R1
       37 CALL                             R4 2 1
       38 MOVE                             R3 R4
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R5 R1 K6 ["Tabs"]
       42 NEWCLOSURE                       R6 P2
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          REF R3
       48 CAPTURE                          VAL R1
       49 CALL                             R4 2 1
       50 GETTABLEKS                       R6 R1 K8 ["FillDirection"]
       52 JUMPIFNOT                        R6 ; [+3]
       53 GETTABLEKS                       R5 R1 K8 ["FillDirection"]
       55 JUMP                             ; [+2]
       56 GETIMPORT                        R5 K11 [Enum.FillDirection.Horizontal]
       58 GETUPVAL                         R7 3
       59 GETTABLEKS                       R6 R7 K12 ["createElement"]
       61 GETUPVAL                         R7 6
       62 GETUPVAL                         R9 7
       63 JUMPIFNOT                        R9 ; [+40]
       64 NEWTABLE                         R8 4 0
       66 GETTABLEKS                       R9 R1 K13 ["LayoutOrder"]
       68 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       70 GETUPVAL                         R10 8
       71 GETTABLEKS                       R9 R10 K14 ["Tag"]
       73 GETUPVAL                         R10 9
       74 LOADK                            R11 K15 ["Component-Tabs"]
       75 GETUPVAL                         R15 8
       76 GETTABLEKS                       R14 R15 K14 ["Tag"]
       78 GETTABLE                         R13 R1 R14
       79 ORK                              R12 R13 K16 ["X-Fit"]
       80 GETIMPORT                        R14 K18 [Enum.FillDirection.Vertical]
       82 JUMPIFNOTEQ                      R5 R14 ; [+3]
       84 LOADK                            R13 K19 ["X-Column"]
       85 JUMP                             ; [+1]
       86 LOADK                            R13 K20 ["X-Row"]
       87 CALL                             R10 3 1
       88 SETTABLE                         R10 R8 R9
       89 GETUPVAL                         R10 3
       90 GETTABLEKS                       R9 R10 K21 ["Ref"]
       92 GETTABLEKS                       R10 R1 K22 ["ForwardRef"]
       94 SETTABLE                         R10 R8 R9
       95 GETUPVAL                         R11 8
       96 GETTABLEKS                       R10 R11 K23 ["Change"]
       98 GETTABLEKS                       R9 R10 K24 ["AbsoluteSize"]
      100 GETTABLEKS                       R10 R1 K25 ["OnAbsoluteSizeChanged"]
      102 SETTABLE                         R10 R8 R9
      103 JUMP                             ; [+34]
      104 NEWTABLE                         R8 8 0
      106 GETIMPORT                        R9 K28 [Enum.AutomaticSize.XY]
      108 SETTABLEKS                       R9 R8 K26 ["AutomaticSize"]
      110 SETTABLEKS                       R5 R8 K29 ["Layout"]
      112 GETTABLEKS                       R9 R1 K13 ["LayoutOrder"]
      114 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
      116 GETIMPORT                        R9 K32 [Enum.HorizontalAlignment.Left]
      118 SETTABLEKS                       R9 R8 K30 ["HorizontalAlignment"]
      120 GETIMPORT                        R9 K35 [Enum.VerticalAlignment.Top]
      122 SETTABLEKS                       R9 R8 K33 ["VerticalAlignment"]
      124 GETUPVAL                         R10 3
      125 GETTABLEKS                       R9 R10 K21 ["Ref"]
      127 GETTABLEKS                       R10 R1 K22 ["ForwardRef"]
      129 SETTABLE                         R10 R8 R9
      130 GETUPVAL                         R11 3
      131 GETTABLEKS                       R10 R11 K23 ["Change"]
      133 GETTABLEKS                       R9 R10 K24 ["AbsoluteSize"]
      135 GETTABLEKS                       R10 R1 K25 ["OnAbsoluteSizeChanged"]
      137 SETTABLE                         R10 R8 R9
      138 MOVE                             R9 R4
      139 CALL                             R6 3 -1
      140 CLOSEUPVALS                      R3
      141 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R2 R3 K7 ["types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K4 ["Parent"]
       29 GETTABLEKS                       R5 R6 K10 ["Roact"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R0 K11 ["Util"]
       36 GETTABLEKS                       R6 R7 K12 ["Typecheck"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Wrappers"]
       43 GETTABLEKS                       R7 R8 K14 ["withForwardRef"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R8 R0 K4 ["Parent"]
       48 LOADK                            R10 K15 ["React"]
       49 NAMECALL                         R8 R8 K16 ["FindFirstChild"]
       51 CALL                             R8 2 1
       52 JUMPIFNOT                        R8 ; [+8]
       53 GETIMPORT                        R7 K6 [require]
       55 GETTABLEKS                       R9 R0 K4 ["Parent"]
       57 GETTABLEKS                       R8 R9 K15 ["React"]
       59 CALL                             R7 1 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R7
       62 GETIMPORT                        R8 K6 [require]
       64 GETTABLEKS                       R10 R0 K17 ["Styling"]
       66 GETTABLEKS                       R9 R10 K18 ["supportsStyleSheets"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K6 [require]
       71 GETTABLEKS                       R11 R0 K17 ["Styling"]
       73 GETTABLEKS                       R10 R11 K19 ["joinTags"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K6 [require]
       78 GETTABLEKS                       R12 R0 K4 ["Parent"]
       80 GETTABLEKS                       R11 R12 K20 ["Dash"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R10 K21 ["map"]
       85 GETTABLEKS                       R12 R10 K22 ["findIndex"]
       87 GETIMPORT                        R13 K6 [require]
       89 GETTABLEKS                       R16 R0 K2 ["UI"]
       91 GETTABLEKS                       R15 R16 K23 ["Components"]
       93 GETTABLEKS                       R14 R15 K24 ["Pane"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K6 [require]
       98 GETTABLEKS                       R17 R0 K2 ["UI"]
      100 GETTABLEKS                       R16 R17 K23 ["Components"]
      102 GETTABLEKS                       R15 R16 K25 ["SimpleTab"]
      104 CALL                             R14 1 1
      105 GETTABLEKS                       R15 R4 K26 ["PureComponent"]
      107 LOADK                            R17 K27 ["Tabs"]
      108 NAMECALL                         R15 R15 K28 ["extend"]
      110 CALL                             R15 2 1
      111 GETTABLEKS                       R16 R5 K29 ["wrap"]
      113 MOVE                             R17 R15
      114 GETIMPORT                        R18 K1 [script]
      116 CALL                             R16 2 0
      117 GETIMPORT                        R16 K6 [require]
      119 GETTABLEKS                       R18 R0 K30 ["SharedFlags"]
      121 GETTABLEKS                       R17 R18 K31 ["getFFlagDevFrameworkFixMissingKeyErrors"]
      123 CALL                             R16 1 1
      124 CALL                             R16 0 1
      125 GETIMPORT                        R17 K6 [require]
      127 GETTABLEKS                       R19 R0 K11 ["Util"]
      129 GETTABLEKS                       R18 R19 K32 ["isRoact17"]
      131 CALL                             R17 1 1
      132 MOVE                             R18 R4
      133 CALL                             R17 1 1
      134 DUPCLOSURE                       R18 K33 [PROTO_0]
      135 CAPTURE                          VAL R4
      136 SETTABLEKS                       R18 R15 K34 ["init"]
      138 DUPCLOSURE                       R18 K35 [PROTO_4]
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R9
      149 SETTABLEKS                       R18 R15 K36 ["render"]
      151 MOVE                             R18 R3
      152 DUPTABLE                         R19 K38 [{"Stylizer"}]
      153 JUMPIFNOT                        R8 ; [+2]
      154 LOADNIL                          R20
      155 JUMP                             ; [+2]
      156 GETTABLEKS                       R20 R2 K37 ["Stylizer"]
      158 SETTABLEKS                       R20 R19 K37 ["Stylizer"]
      160 CALL                             R18 1 1
      161 MOVE                             R19 R15
      162 CALL                             R18 1 1
      163 MOVE                             R15 R18
      164 MOVE                             R18 R6
      165 MOVE                             R19 R15
      166 CALL                             R18 1 -1
      167 RETURN                           R18 -1
