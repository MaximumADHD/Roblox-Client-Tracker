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
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R7 R7 K7 ["numberMin"]
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
       74 GETUPVAL                         R9 3
       75 GETTABLEKS                       R9 R9 K18 ["Tag"]
       77 GETUPVAL                         R10 4
       78 LOADK                            R11 K19 ["Component-DragBar"]
       79 JUMPIFNOT                        R4 ; [+2]
       80 LOADK                            R12 K20 ["Transparent"]
       81 JUMP                             ; [+1]
       82 LOADK                            R12 K21 [""]
       83 CALL                             R10 2 1
       84 SETTABLE                         R10 R8 R9
       85 MOVE                             R7 R8
       86 GETUPVAL                         R8 5
       87 GETTABLEKS                       R8 R8 K22 ["createElement"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["ContextServices"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R0 K4 ["Parent"]
       25 LOADK                            R6 K9 ["React"]
       26 NAMECALL                         R4 R4 K10 ["FindFirstChild"]
       28 CALL                             R4 2 1
       29 JUMPIFNOT                        R4 ; [+8]
       30 GETIMPORT                        R3 K6 [require]
       32 GETTABLEKS                       R4 R0 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K9 ["React"]
       36 CALL                             R3 1 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R3
       39 GETIMPORT                        R4 K6 [require]
       41 GETTABLEKS                       R5 R0 K11 ["Styling"]
       43 GETTABLEKS                       R5 R5 K12 ["supportsStyleSheets"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K6 [require]
       48 GETTABLEKS                       R6 R0 K11 ["Styling"]
       50 GETTABLEKS                       R6 R6 K13 ["joinTags"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K6 [require]
       55 GETTABLEKS                       R7 R0 K2 ["UI"]
       57 GETTABLEKS                       R7 R7 K7 ["ContextServices"]
       59 GETTABLEKS                       R7 R7 K14 ["Mouse"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R7 R1 K15 ["withContext"]
       64 GETIMPORT                        R8 K6 [require]
       66 GETTABLEKS                       R9 R0 K16 ["Util"]
       68 GETTABLEKS                       R9 R9 K17 ["Typecheck"]
       70 GETTABLEKS                       R9 R9 K18 ["t"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K6 [require]
       75 GETIMPORT                        R10 K1 [script]
       77 GETTABLEKS                       R10 R10 K19 ["style"]
       79 CALL                             R9 1 1
       80 GETTABLEKS                       R10 R0 K2 ["UI"]
       82 GETIMPORT                        R11 K6 [require]
       84 GETTABLEKS                       R12 R10 K20 ["Components"]
       86 GETTABLEKS                       R12 R12 K21 ["Pane"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R13 R0 K4 ["Parent"]
       93 GETTABLEKS                       R13 R13 K22 ["Dash"]
       95 CALL                             R12 1 1
       96 GETTABLEKS                       R13 R12 K23 ["join"]
       98 GETIMPORT                        R14 K6 [require]
      100 GETIMPORT                        R15 K1 [script]
      102 GETTABLEKS                       R15 R15 K24 ["styles"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K6 [require]
      107 GETTABLEKS                       R16 R0 K25 ["Wrappers"]
      109 GETTABLEKS                       R16 R16 K26 ["withControl"]
      111 CALL                             R15 1 1
      112 GETTABLEKS                       R16 R2 K27 ["PureComponent"]
      114 LOADK                            R18 K28 ["DragBar"]
      115 NAMECALL                         R16 R16 K29 ["extend"]
      117 CALL                             R16 2 1
      118 DUPCLOSURE                       R17 K30 [PROTO_0]
      119 SETTABLEKS                       R17 R16 K31 ["didUpdate"]
      121 DUPCLOSURE                       R17 K32 [PROTO_1]
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R13
      130 SETTABLEKS                       R17 R16 K33 ["render"]
      132 MOVE                             R17 R7
      133 DUPTABLE                         R18 K35 [{"Mouse", "Stylizer"}]
      134 GETTABLEKS                       R19 R1 K14 ["Mouse"]
      136 SETTABLEKS                       R19 R18 K14 ["Mouse"]
      138 JUMPIFNOT                        R4 ; [+2]
      139 LOADNIL                          R19
      140 JUMP                             ; [+2]
      141 GETTABLEKS                       R19 R1 K34 ["Stylizer"]
      143 SETTABLEKS                       R19 R18 K34 ["Stylizer"]
      145 CALL                             R17 1 1
      146 MOVE                             R18 R16
      147 CALL                             R17 1 1
      148 MOVE                             R16 R17
      149 MOVE                             R17 R15
      150 MOVE                             R18 R16
      151 CALL                             R17 1 -1
      152 RETURN                           R17 -1
