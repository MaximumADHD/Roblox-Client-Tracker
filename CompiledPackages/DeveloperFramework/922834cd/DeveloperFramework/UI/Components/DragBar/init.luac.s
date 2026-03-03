PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["StyleModifier"]
        4 JUMPIFNOT                        R3 ; [+19]
        5 GETTABLEKS                       R3 R1 K1 ["StyleModifier"]
        7 JUMPIF                           R3 ; [+16]
        8 GETTABLEKS                       R4 R2 K2 ["FillDirection"]
       10 GETIMPORT                        R5 K5 [Enum.FillDirection.Horizontal]
       12 JUMPIFNOTEQ                      R4 R5 ; [+3]
       14 LOADK                            R3 K6 ["SizeNS"]
       15 JUMP                             ; [+1]
       16 LOADK                            R3 K7 ["SizeEW"]
       17 GETTABLEKS                       R4 R2 K8 ["Mouse"]
       19 MOVE                             R6 R3
       20 NAMECALL                         R4 R4 K9 ["__pushCursor"]
       22 CALL                             R4 2 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       26 JUMPIF                           R3 ; [+8]
       27 GETTABLEKS                       R3 R1 K1 ["StyleModifier"]
       29 JUMPIFNOT                        R3 ; [+5]
       30 GETTABLEKS                       R3 R2 K8 ["Mouse"]
       32 NAMECALL                         R3 R3 K10 ["__popCursor"]
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+3]
        4 NEWTABLE                         R2 0 0
        6 JUMP                             ; [+2]
        7 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        9 GETUPVAL                         R4 0
       10 JUMPIFNOT                        R4 ; [+6]
       11 GETUPVAL                         R3 1
       12 LOADK                            R5 K2 ["Weight"]
       13 NAMECALL                         R3 R3 K3 ["GetAttribute"]
       15 CALL                             R3 2 1
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R3 R2 K2 ["Weight"]
       19 GETTABLEKS                       R4 R1 K4 ["Hide"]
       21 JUMPIFNOT                        R4 ; [+2]
       22 LOADK                            R5 K5 ["None"]
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R5 R1 K6 ["BarStyle"]
       26 GETUPVAL                         R6 0
       27 JUMPIFNOT                        R6 ; [+3]
       28 JUMPIFNOTEQKS                    R5 K5 ["None"] ; [+2]
       30 LOADNIL                          R5
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R7 R8 K7 ["numberMin"]
       34 LOADN                            R8 0
       35 CALL                             R7 1 1
       36 MOVE                             R8 R3
       37 CALL                             R7 1 1
       38 FASTCALL2K                       ASSERT R7 K8 ; [+4]
       40 LOADK                            R8 K8 ["Weight style must be a number >= 0"]
       41 GETIMPORT                        R6 K10 [assert]
       43 CALL                             R6 2 0
       44 LOADNIL                          R6
       45 GETTABLEKS                       R7 R1 K11 ["FillDirection"]
       47 GETIMPORT                        R8 K14 [Enum.FillDirection.Horizontal]
       49 JUMPIFNOTEQ                      R7 R8 ; [+10]
       51 GETIMPORT                        R7 K17 [UDim2.new]
       53 LOADN                            R8 1
       54 LOADN                            R9 0
       55 LOADN                            R10 0
       56 MOVE                             R11 R3
       57 CALL                             R7 4 1
       58 MOVE                             R6 R7
       59 JUMP                             ; [+8]
       60 GETIMPORT                        R7 K17 [UDim2.new]
       62 LOADN                            R8 0
       63 MOVE                             R9 R3
       64 LOADN                            R10 1
       65 LOADN                            R11 0
       66 CALL                             R7 4 1
       67 MOVE                             R6 R7
       68 NEWTABLE                         R7 0 0
       70 GETUPVAL                         R8 0
       71 JUMPIFNOT                        R8 ; [+14]
       72 NEWTABLE                         R8 1 0
       74 GETUPVAL                         R10 3
       75 GETTABLEKS                       R9 R10 K18 ["Tag"]
       77 GETUPVAL                         R10 4
       78 LOADK                            R11 K19 ["Component-DragBar"]
       79 JUMPIFNOT                        R4 ; [+2]
       80 LOADK                            R12 K20 ["Transparent"]
       81 JUMP                             ; [+1]
       82 LOADK                            R12 K21 [""]
       83 CALL                             R10 2 1
       84 SETTABLE                         R10 R8 R9
       85 MOVE                             R7 R8
       86 GETUPVAL                         R9 5
       87 GETTABLEKS                       R8 R9 K22 ["createElement"]
       89 GETUPVAL                         R9 6
       90 GETUPVAL                         R10 7
       91 DUPTABLE                         R11 K28 [{"Size", "Position", "Style", "LayoutOrder", "BackgroundColor"}]
       92 SETTABLEKS                       R6 R11 K23 ["Size"]
       94 GETTABLEKS                       R12 R1 K24 ["Position"]
       96 SETTABLEKS                       R12 R11 K24 ["Position"]
       98 SETTABLEKS                       R5 R11 K25 ["Style"]
      100 GETTABLEKS                       R12 R1 K26 ["LayoutOrder"]
      102 SETTABLEKS                       R12 R11 K26 ["LayoutOrder"]
      104 GETUPVAL                         R13 0
      105 JUMPIFNOT                        R13 ; [+2]
      106 LOADNIL                          R12
      107 JUMP                             ; [+2]
      108 GETTABLEKS                       R12 R2 K29 ["Background"]
      110 SETTABLEKS                       R12 R11 K27 ["BackgroundColor"]
      112 GETTABLEKS                       R12 R1 K30 ["WrapperProps"]
      114 MOVE                             R13 R7
      115 CALL                             R10 3 -1
      116 CALL                             R8 -1 -1
      117 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R3 K7 ["ContextServices"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["SharedFlags"]
       27 GETTABLEKS                       R4 R5 K10 ["getFFlagDevFrameworkDragBarStylesheets"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R0 K4 ["Parent"]
       32 LOADK                            R7 K11 ["React"]
       33 NAMECALL                         R5 R5 K12 ["FindFirstChild"]
       35 CALL                             R5 2 1
       36 JUMPIFNOT                        R5 ; [+8]
       37 GETIMPORT                        R4 K6 [require]
       39 GETTABLEKS                       R6 R0 K4 ["Parent"]
       41 GETTABLEKS                       R5 R6 K11 ["React"]
       43 CALL                             R4 1 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R4
       46 MOVE                             R5 R3
       47 CALL                             R5 0 1
       48 JUMPIFNOT                        R5 ; [+7]
       49 GETIMPORT                        R5 K6 [require]
       51 GETTABLEKS                       R7 R0 K13 ["Styling"]
       53 GETTABLEKS                       R6 R7 K14 ["supportsStyleSheets"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K6 [require]
       58 GETTABLEKS                       R8 R0 K13 ["Styling"]
       60 GETTABLEKS                       R7 R8 K15 ["joinTags"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K6 [require]
       65 GETTABLEKS                       R10 R0 K2 ["UI"]
       67 GETTABLEKS                       R9 R10 K7 ["ContextServices"]
       69 GETTABLEKS                       R8 R9 K16 ["Mouse"]
       71 CALL                             R7 1 1
       72 GETTABLEKS                       R8 R1 K17 ["withContext"]
       74 GETIMPORT                        R9 K6 [require]
       76 GETTABLEKS                       R12 R0 K18 ["Util"]
       78 GETTABLEKS                       R11 R12 K19 ["Typecheck"]
       80 GETTABLEKS                       R10 R11 K20 ["t"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K6 [require]
       85 GETIMPORT                        R12 K1 [script]
       87 GETTABLEKS                       R11 R12 K21 ["style"]
       89 CALL                             R10 1 1
       90 GETTABLEKS                       R11 R0 K2 ["UI"]
       92 GETIMPORT                        R12 K6 [require]
       94 GETTABLEKS                       R14 R11 K22 ["Components"]
       96 GETTABLEKS                       R13 R14 K23 ["Pane"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K6 [require]
      101 GETTABLEKS                       R15 R0 K4 ["Parent"]
      103 GETTABLEKS                       R14 R15 K24 ["Dash"]
      105 CALL                             R13 1 1
      106 GETTABLEKS                       R14 R13 K25 ["join"]
      108 GETIMPORT                        R15 K6 [require]
      110 GETIMPORT                        R17 K1 [script]
      112 GETTABLEKS                       R16 R17 K26 ["styles"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K6 [require]
      117 GETTABLEKS                       R18 R0 K27 ["Wrappers"]
      119 GETTABLEKS                       R17 R18 K28 ["withControl"]
      121 CALL                             R16 1 1
      122 GETTABLEKS                       R17 R2 K29 ["PureComponent"]
      124 LOADK                            R19 K30 ["DragBar"]
      125 NAMECALL                         R17 R17 K31 ["extend"]
      127 CALL                             R17 2 1
      128 DUPCLOSURE                       R18 K32 [PROTO_0]
      129 SETTABLEKS                       R18 R17 K33 ["didUpdate"]
      131 DUPCLOSURE                       R18 K34 [PROTO_1]
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R14
      140 SETTABLEKS                       R18 R17 K35 ["render"]
      142 MOVE                             R18 R8
      143 DUPTABLE                         R19 K37 [{"Mouse", "Stylizer"}]
      144 GETTABLEKS                       R20 R1 K16 ["Mouse"]
      146 SETTABLEKS                       R20 R19 K16 ["Mouse"]
      148 JUMPIFNOT                        R5 ; [+2]
      149 LOADNIL                          R20
      150 JUMP                             ; [+2]
      151 GETTABLEKS                       R20 R1 K36 ["Stylizer"]
      153 SETTABLEKS                       R20 R19 K36 ["Stylizer"]
      155 CALL                             R18 1 1
      156 MOVE                             R19 R17
      157 CALL                             R18 1 1
      158 MOVE                             R17 R18
      159 MOVE                             R18 R16
      160 MOVE                             R19 R17
      161 CALL                             R18 1 -1
      162 RETURN                           R18 -1
