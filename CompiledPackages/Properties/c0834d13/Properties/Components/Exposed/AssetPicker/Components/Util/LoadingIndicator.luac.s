PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["sinTime"]
        2 GETTABLEKS                       R2 R0 K1 ["animatingBlockIndex"]
        4 GETTABLEKS                       R4 R0 K2 ["time"]
        6 GETUPVAL                         R5 0
        7 ADD                              R3 R4 R5
        8 MULK                             R5 R3 K3 [5]
        9 FASTCALL1                        MATH_SIN R5 ; [+2]
       10 GETIMPORT                        R4 K6 [math.sin]
       12 CALL                             R4 1 1
       13 LOADN                            R5 0
       14 JUMPIFNOTLE                      R5 R1 ; [+4]
       16 LOADN                            R5 0
       17 JUMPIFLT                         R4 R5 ; [+7]
       19 LOADN                            R5 0
       20 JUMPIFNOTLT                      R1 R5 ; [+6]
       22 LOADN                            R5 0
       23 JUMPIFNOTLE                      R5 R4 ; [+3]
       25 MODK                             R5 R2 K8 [3]
       26 ADDK                             R2 R5 K7 [1]
       27 DUPTABLE                         R5 K9 [{"time", "sinTime", "animatingBlockIndex"}]
       28 SETTABLEKS                       R3 R5 K2 ["time"]
       30 SETTABLEKS                       R4 R5 K0 ["sinTime"]
       32 SETTABLEKS                       R2 R5 K1 ["animatingBlockIndex"]
       34 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["RenderStepped"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 DUPTABLE                         R2 K4 [{"time", "sinTime", "animatingBlockIndex"}]
        4 LOADK                            R3 K5 [1.5707963267949]
        5 SETTABLEKS                       R3 R2 K1 ["time"]
        7 LOADN                            R3 1
        8 SETTABLEKS                       R3 R2 K2 ["sinTime"]
       10 LOADN                            R3 1
       11 SETTABLEKS                       R3 R2 K3 ["animatingBlockIndex"]
       13 CALL                             R1 1 2
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K6 ["useEffect"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R5 0 0
       22 CALL                             R3 2 0
       23 GETUPVAL                         R3 2
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R0 K7 ["startColor"]
       27 JUMPIF                           R4 ; [+10]
       28 GETTABLEKS                       R8 R3 K8 ["Color"]
       30 GETTABLEKS                       R7 R8 K9 ["Extended"]
       32 GETTABLEKS                       R6 R7 K10 ["Gray"]
       34 GETTABLEKS                       R5 R6 K11 ["Gray_600"]
       36 GETTABLEKS                       R4 R5 K12 ["Color3"]
       38 GETTABLEKS                       R5 R0 K13 ["endColor"]
       40 JUMPIF                           R5 ; [+10]
       41 GETTABLEKS                       R9 R3 K8 ["Color"]
       43 GETTABLEKS                       R8 R9 K9 ["Extended"]
       45 GETTABLEKS                       R7 R8 K14 ["Blue"]
       47 GETTABLEKS                       R6 R7 K15 ["Blue_700"]
       49 GETTABLEKS                       R5 R6 K12 ["Color3"]
       51 GETTABLEKS                       R7 R1 K2 ["sinTime"]
       53 FASTCALL1                        MATH_ABS R7 ; [+2]
       54 GETIMPORT                        R6 K18 [math.abs]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R1 K3 ["animatingBlockIndex"]
       59 DUPTABLE                         R8 K20 [{"UIListLayout"}]
       60 GETUPVAL                         R9 3
       61 LOADK                            R10 K19 ["UIListLayout"]
       62 DUPTABLE                         R11 K26 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       63 GETIMPORT                        R12 K29 [Enum.SortOrder.LayoutOrder]
       65 SETTABLEKS                       R12 R11 K21 ["SortOrder"]
       67 GETIMPORT                        R12 K31 [Enum.FillDirection.Horizontal]
       69 SETTABLEKS                       R12 R11 K22 ["FillDirection"]
       71 GETIMPORT                        R12 K34 [UDim.new]
       73 LOADK                            R13 K35 [0.230769230769231]
       74 LOADN                            R14 0
       75 CALL                             R12 2 1
       76 SETTABLEKS                       R12 R11 K23 ["Padding"]
       78 GETIMPORT                        R12 K37 [Enum.HorizontalAlignment.Center]
       80 SETTABLEKS                       R12 R11 K24 ["HorizontalAlignment"]
       82 GETIMPORT                        R12 K38 [Enum.VerticalAlignment.Center]
       84 SETTABLEKS                       R12 R11 K25 ["VerticalAlignment"]
       86 CALL                             R9 2 1
       87 SETTABLEKS                       R9 R8 K19 ["UIListLayout"]
       89 LOADN                            R11 1
       90 LOADN                            R9 3
       91 LOADN                            R10 1
       92 FORNPREP                         R9
       93 LOADK                            R12 K39 [0.6]
       94 MOVE                             R13 R4
       95 JUMPIFNOTEQ                      R11 R7 ; [+10]
       97 SUBRK                            R15 R40 K12 ["Color3"]
       98 MUL                              R14 R15 R6
       99 ADD                              R12 R12 R14
      100 MOVE                             R16 R5
      101 MOVE                             R17 R6
      102 NAMECALL                         R14 R4 K41 ["Lerp"]
      104 CALL                             R14 3 1
      105 MOVE                             R13 R14
      106 LOADK                            R15 K42 ["Frame"]
      107 MOVE                             R16 R11
      108 CONCAT                           R14 R15 R16
      109 GETUPVAL                         R15 3
      110 LOADK                            R16 K42 ["Frame"]
      111 DUPTABLE                         R17 K47 [{"Size", "LayoutOrder", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency"}]
      112 GETIMPORT                        R18 K50 [UDim2.fromScale]
      114 LOADK                            R19 K51 [0.153846153846154]
      115 MOVE                             R20 R12
      116 CALL                             R18 2 1
      117 SETTABLEKS                       R18 R17 K43 ["Size"]
      119 SETTABLEKS                       R11 R17 K28 ["LayoutOrder"]
      121 LOADN                            R18 0
      122 SETTABLEKS                       R18 R17 K44 ["BorderSizePixel"]
      124 SETTABLEKS                       R13 R17 K45 ["BackgroundColor3"]
      126 LOADN                            R18 0
      127 SETTABLEKS                       R18 R17 K46 ["BackgroundTransparency"]
      129 CALL                             R15 2 1
      130 SETTABLE                         R15 R8 R14
      131 FORNLOOP                         R9
      132 GETUPVAL                         R9 3
      133 LOADK                            R10 K42 ["Frame"]
      134 DUPTABLE                         R11 K54 [{"LayoutOrder", "AnchorPoint", "Position", "Size", "BorderSizePixel", "BackgroundTransparency"}]
      135 GETTABLEKS                       R12 R0 K55 ["layoutOrder"]
      137 SETTABLEKS                       R12 R11 K28 ["LayoutOrder"]
      139 GETTABLEKS                       R12 R0 K56 ["anchorPoint"]
      141 SETTABLEKS                       R12 R11 K52 ["AnchorPoint"]
      143 GETTABLEKS                       R12 R0 K57 ["position"]
      145 SETTABLEKS                       R12 R11 K53 ["Position"]
      147 GETTABLEKS                       R12 R0 K58 ["size"]
      149 SETTABLEKS                       R12 R11 K43 ["Size"]
      151 LOADN                            R12 0
      152 SETTABLEKS                       R12 R11 K44 ["BorderSizePixel"]
      154 LOADN                            R12 1
      155 SETTABLEKS                       R12 R11 K46 ["BackgroundTransparency"]
      157 MOVE                             R12 R8
      158 CALL                             R9 3 -1
      159 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Properties"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Foundation"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["React"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K13 ["createElement"]
       27 GETTABLEKS                       R7 R3 K14 ["Hooks"]
       29 GETTABLEKS                       R6 R7 K15 ["useTokens"]
       31 DUPCLOSURE                       R7 K16 [PROTO_4]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R5
       36 RETURN                           R7 1
