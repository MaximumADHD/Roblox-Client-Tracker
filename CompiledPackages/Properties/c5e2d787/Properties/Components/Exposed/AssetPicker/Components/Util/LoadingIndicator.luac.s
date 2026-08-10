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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RenderStepped"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 DUPTABLE                         R2 K6 [{["time"] = 1.5707963267949, ["sinTime"] = 1, ["animatingBlockIndex"] = 1}]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K7 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 2
       15 CALL                             R3 0 1
       16 GETTABLEKS                       R4 R0 K8 ["startColor"]
       18 JUMPIF                           R4 ; [+10]
       19 GETTABLEKS                       R4 R3 K9 ["Color"]
       21 GETTABLEKS                       R4 R4 K10 ["Extended"]
       23 GETTABLEKS                       R4 R4 K11 ["Gray"]
       25 GETTABLEKS                       R4 R4 K12 ["Gray_600"]
       27 GETTABLEKS                       R4 R4 K13 ["Color3"]
       29 GETTABLEKS                       R5 R0 K14 ["endColor"]
       31 JUMPIF                           R5 ; [+10]
       32 GETTABLEKS                       R5 R3 K9 ["Color"]
       34 GETTABLEKS                       R5 R5 K10 ["Extended"]
       36 GETTABLEKS                       R5 R5 K15 ["Blue"]
       38 GETTABLEKS                       R5 R5 K16 ["Blue_700"]
       40 GETTABLEKS                       R5 R5 K13 ["Color3"]
       42 GETTABLEKS                       R7 R1 K3 ["sinTime"]
       44 FASTCALL1                        MATH_ABS R7 ; [+2]
       45 GETIMPORT                        R6 K19 [math.abs]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R1 K5 ["animatingBlockIndex"]
       50 DUPTABLE                         R8 K21 [{"UIListLayout"}]
       51 GETUPVAL                         R9 3
       52 LOADK                            R10 K20 ["UIListLayout"]
       53 DUPTABLE                         R11 K27 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       54 GETIMPORT                        R12 K30 [Enum.SortOrder.LayoutOrder]
       56 SETTABLEKS                       R12 R11 K22 ["SortOrder"]
       58 GETIMPORT                        R12 K32 [Enum.FillDirection.Horizontal]
       60 SETTABLEKS                       R12 R11 K23 ["FillDirection"]
       62 GETIMPORT                        R12 K35 [UDim.new]
       64 LOADK                            R13 K36 [0.230769230769231]
       65 LOADN                            R14 0
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K24 ["Padding"]
       69 GETIMPORT                        R12 K38 [Enum.HorizontalAlignment.Center]
       71 SETTABLEKS                       R12 R11 K25 ["HorizontalAlignment"]
       73 GETIMPORT                        R12 K39 [Enum.VerticalAlignment.Center]
       75 SETTABLEKS                       R12 R11 K26 ["VerticalAlignment"]
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K20 ["UIListLayout"]
       80 LOADN                            R11 1
       81 LOADN                            R9 3
       82 LOADN                            R10 1
       83 FORNPREP                         R9
       84 LOADK                            R12 K40 [0.6]
       85 MOVE                             R13 R4
       86 JUMPIFNOTEQ                      R11 R7 ; [+10]
       88 SUBRK                            R15 K4 [1] R12
       89 MUL                              R14 R15 R6
       90 ADD                              R12 R12 R14
       91 MOVE                             R16 R5
       92 MOVE                             R17 R6
       93 NAMECALL                         R14 R4 K41 ["Lerp"]
       95 CALL                             R14 3 1
       96 MOVE                             R13 R14
       97 LOADK                            R15 K42 ["Frame"]
       98 MOVE                             R16 R11
       99 CONCAT                           R14 R15 R16
      100 GETUPVAL                         R15 3
      101 LOADK                            R16 K42 ["Frame"]
      102 DUPTABLE                         R17 K48 [{["Size"], ["LayoutOrder"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["BackgroundTransparency"] = 0}]
      103 GETIMPORT                        R18 K51 [UDim2.fromScale]
      105 LOADK                            R19 K52 [0.153846153846154]
      106 MOVE                             R20 R12
      107 CALL                             R18 2 1
      108 SETTABLEKS                       R18 R17 K43 ["Size"]
      110 SETTABLEKS                       R11 R17 K29 ["LayoutOrder"]
      112 SETTABLEKS                       R13 R17 K46 ["BackgroundColor3"]
      114 CALL                             R15 2 1
      115 SETTABLE                         R15 R8 R14
      116 FORNLOOP                         R9
      117 GETUPVAL                         R9 3
      118 LOADK                            R10 K42 ["Frame"]
      119 DUPTABLE                         R11 K55 [{["LayoutOrder"], ["AnchorPoint"], ["Position"], ["Size"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
      120 GETTABLEKS                       R12 R0 K56 ["layoutOrder"]
      122 SETTABLEKS                       R12 R11 K29 ["LayoutOrder"]
      124 GETTABLEKS                       R12 R0 K57 ["anchorPoint"]
      126 SETTABLEKS                       R12 R11 K53 ["AnchorPoint"]
      128 GETTABLEKS                       R12 R0 K58 ["position"]
      130 SETTABLEKS                       R12 R11 K54 ["Position"]
      132 GETTABLEKS                       R12 R0 K59 ["size"]
      134 SETTABLEKS                       R12 R11 K43 ["Size"]
      136 MOVE                             R12 R8
      137 CALL                             R9 3 -1
      138 RETURN                           R9 -1

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
       27 GETTABLEKS                       R6 R3 K14 ["Hooks"]
       29 GETTABLEKS                       R6 R6 K15 ["useTokens"]
       31 DUPCLOSURE                       R7 K16 [PROTO_4]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R5
       36 RETURN                           R7 1
