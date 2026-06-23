PROTO_0:
        0 DUPTABLE                         R1 K3 [{"time", "sinTime", "animatingBlockIndex"}]
        1 LOADK                            R2 K4 [1.5707963267949]
        2 SETTABLEKS                       R2 R1 K0 ["time"]
        4 LOADN                            R2 1
        5 SETTABLEKS                       R2 R1 K1 ["sinTime"]
        7 LOADN                            R2 1
        8 SETTABLEKS                       R2 R1 K2 ["animatingBlockIndex"]
       10 SETTABLEKS                       R1 R0 K5 ["state"]
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["updateAnimation"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RenderStepped"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["connect"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K2 ["animationConnection"]
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["animationConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["animationConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 NAMECALL                         R2 R0 K0 ["setState"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["AnchorPoint"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["ZIndex"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R1 K6 ["Stylizer"]
       14 GETTABLEKS                       R8 R7 K7 ["Size"]
       16 GETTABLEKS                       R10 R1 K7 ["Size"]
       18 OR                               R9 R10 R8
       19 GETTABLEKS                       R10 R7 K8 ["StartColor"]
       21 GETTABLEKS                       R11 R7 K9 ["EndColor"]
       23 DUPTABLE                         R12 K11 [{"UIListLayout"}]
       24 GETUPVAL                         R13 0
       25 GETTABLEKS                       R13 R13 K12 ["createElement"]
       27 LOADK                            R14 K10 ["UIListLayout"]
       28 DUPTABLE                         R15 K18 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       29 GETIMPORT                        R16 K20 [Enum.SortOrder.LayoutOrder]
       31 SETTABLEKS                       R16 R15 K13 ["SortOrder"]
       33 GETIMPORT                        R16 K22 [Enum.FillDirection.Horizontal]
       35 SETTABLEKS                       R16 R15 K14 ["FillDirection"]
       37 GETIMPORT                        R16 K25 [UDim.new]
       39 LOADK                            R17 K26 [0.230769230769231]
       40 LOADN                            R18 0
       41 CALL                             R16 2 1
       42 SETTABLEKS                       R16 R15 K15 ["Padding"]
       44 GETIMPORT                        R16 K28 [Enum.HorizontalAlignment.Center]
       46 SETTABLEKS                       R16 R15 K16 ["HorizontalAlignment"]
       48 GETIMPORT                        R16 K29 [Enum.VerticalAlignment.Center]
       50 SETTABLEKS                       R16 R15 K17 ["VerticalAlignment"]
       52 CALL                             R13 2 1
       53 SETTABLEKS                       R13 R12 K10 ["UIListLayout"]
       55 GETTABLEKS                       R14 R2 K30 ["sinTime"]
       57 FASTCALL1                        MATH_ABS R14 ; [+2]
       58 GETIMPORT                        R13 K33 [math.abs]
       60 CALL                             R13 1 1
       61 GETTABLEKS                       R14 R2 K34 ["animatingBlockIndex"]
       63 LOADN                            R17 1
       64 LOADN                            R15 3
       65 LOADN                            R16 1
       66 FORNPREP                         R15
       67 LOADK                            R18 K35 [0.6]
       68 MOVE                             R19 R10
       69 JUMPIFNOTEQ                      R17 R14 ; [+10]
       71 SUBRK                            R21 R36 K18 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       72 MUL                              R20 R21 R13
       73 ADD                              R18 R18 R20
       74 MOVE                             R22 R11
       75 MOVE                             R23 R13
       76 NAMECALL                         R20 R10 K37 ["lerp"]
       78 CALL                             R20 3 1
       79 MOVE                             R19 R20
       80 LOADK                            R21 K38 ["Frame"]
       81 MOVE                             R22 R17
       82 CONCAT                           R20 R21 R22
       83 GETUPVAL                         R21 0
       84 GETTABLEKS                       R21 R21 K12 ["createElement"]
       86 LOADK                            R22 K38 ["Frame"]
       87 DUPTABLE                         R23 K41 [{"Size", "LayoutOrder", "BorderSizePixel", "BackgroundColor3"}]
       88 GETIMPORT                        R24 K43 [UDim2.new]
       90 LOADK                            R25 K44 [0.153846153846154]
       91 LOADN                            R26 0
       92 MOVE                             R27 R18
       93 LOADN                            R28 0
       94 CALL                             R24 4 1
       95 SETTABLEKS                       R24 R23 K7 ["Size"]
       97 SETTABLEKS                       R17 R23 K5 ["LayoutOrder"]
       99 LOADN                            R24 0
      100 SETTABLEKS                       R24 R23 K39 ["BorderSizePixel"]
      102 SETTABLEKS                       R19 R23 K40 ["BackgroundColor3"]
      104 CALL                             R21 2 1
      105 SETTABLE                         R21 R12 R20
      106 FORNLOOP                         R15
      107 GETUPVAL                         R15 0
      108 GETTABLEKS                       R15 R15 K12 ["createElement"]
      110 LOADK                            R16 K38 ["Frame"]
      111 DUPTABLE                         R17 K46 [{"AnchorPoint", "Position", "Size", "ZIndex", "LayoutOrder", "BorderSizePixel", "BackgroundTransparency"}]
      112 SETTABLEKS                       R3 R17 K2 ["AnchorPoint"]
      114 SETTABLEKS                       R4 R17 K3 ["Position"]
      116 SETTABLEKS                       R9 R17 K7 ["Size"]
      118 SETTABLEKS                       R5 R17 K4 ["ZIndex"]
      120 SETTABLEKS                       R6 R17 K5 ["LayoutOrder"]
      122 LOADN                            R18 0
      123 SETTABLEKS                       R18 R17 K39 ["BorderSizePixel"]
      125 LOADN                            R18 1
      126 SETTABLEKS                       R18 R17 K45 ["BackgroundTransparency"]
      128 MOVE                             R18 R12
      129 CALL                             R15 3 -1
      130 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R3 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R1 K6 ["UI"]
       26 GETTABLEKS                       R4 R4 K12 ["ContextServices"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K13 ["withContext"]
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R6 R1 K14 ["Util"]
       35 GETTABLEKS                       R6 R6 K15 ["Typecheck"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R2 K16 ["PureComponent"]
       40 LOADK                            R8 K17 ["LoadingIndicator"]
       41 NAMECALL                         R6 R6 K18 ["extend"]
       43 CALL                             R6 2 1
       44 GETTABLEKS                       R7 R5 K19 ["wrap"]
       46 MOVE                             R8 R6
       47 GETIMPORT                        R9 K5 [script]
       49 CALL                             R7 2 0
       50 DUPCLOSURE                       R7 K20 [PROTO_0]
       51 SETTABLEKS                       R7 R6 K21 ["init"]
       53 DUPCLOSURE                       R7 K22 [PROTO_2]
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R7 R6 K23 ["didMount"]
       57 DUPCLOSURE                       R7 K24 [PROTO_3]
       58 SETTABLEKS                       R7 R6 K25 ["willUnmount"]
       60 DUPCLOSURE                       R7 K26 [PROTO_5]
       61 SETTABLEKS                       R7 R6 K27 ["updateAnimation"]
       63 DUPCLOSURE                       R7 K28 [PROTO_6]
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R7 R6 K29 ["render"]
       67 MOVE                             R7 R4
       68 DUPTABLE                         R8 K31 [{"Stylizer"}]
       69 GETTABLEKS                       R9 R3 K30 ["Stylizer"]
       71 SETTABLEKS                       R9 R8 K30 ["Stylizer"]
       73 CALL                             R7 1 1
       74 MOVE                             R8 R6
       75 CALL                             R7 1 1
       76 MOVE                             R6 R7
       77 RETURN                           R6 1
