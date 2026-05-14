PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"layout"}]
        2 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
        4 GETTABLEKS                       R5 R5 K3 ["X"]
        6 GETTABLEKS                       R6 R0 K2 ["AbsoluteSize"]
        8 GETTABLEKS                       R6 R6 K4 ["Y"]
       10 JUMPIFNOTLT                      R6 R5 ; [+4]
       12 GETIMPORT                        R4 K8 [Enum.FillDirection.Horizontal]
       14 JUMP                             ; [+2]
       15 GETIMPORT                        R4 K10 [Enum.FillDirection.Vertical]
       17 SETTABLEKS                       R4 R3 K0 ["layout"]
       19 NAMECALL                         R1 R1 K11 ["setState"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"layout", "sizes"}]
        1 GETIMPORT                        R2 K6 [Enum.FillDirection.Vertical]
        3 SETTABLEKS                       R2 R1 K0 ["layout"]
        5 GETUPVAL                         R2 0
        6 SETTABLEKS                       R2 R1 K1 ["sizes"]
        8 SETTABLEKS                       R1 R0 K7 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K8 ["onAbsoluteSizeChanged"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K9 ["onSizesChange"]
       18 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R1 K2 ["layout"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 NEWTABLE                         R6 2 0
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K4 ["Change"]
       15 GETTABLEKS                       R7 R7 K5 ["AbsoluteSize"]
       17 GETTABLEKS                       R8 R0 K6 ["onAbsoluteSizeChanged"]
       19 SETTABLE                         R8 R6 R7
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K7 ["Tag"]
       23 LOADK                            R8 K8 ["X-Fill SplitPane"]
       24 SETTABLE                         R8 R6 R7
       25 DUPTABLE                         R7 K10 [{"SplitPane"}]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K3 ["createElement"]
       29 GETUPVAL                         R9 2
       30 DUPTABLE                         R10 K18 [{"Sizes", "OnSizesChange", "MinSizes", "BarStyle", "UseScale", "ClampSize", "Layout"}]
       31 GETTABLEKS                       R11 R1 K19 ["sizes"]
       33 SETTABLEKS                       R11 R10 K11 ["Sizes"]
       35 GETTABLEKS                       R11 R0 K20 ["onSizesChange"]
       37 SETTABLEKS                       R11 R10 K12 ["OnSizesChange"]
       39 GETUPVAL                         R11 3
       40 SETTABLEKS                       R11 R10 K13 ["MinSizes"]
       42 LOADK                            R11 K21 ["BorderBox"]
       43 SETTABLEKS                       R11 R10 K14 ["BarStyle"]
       45 LOADB                            R11 1
       46 SETTABLEKS                       R11 R10 K15 ["UseScale"]
       48 LOADB                            R11 1
       49 SETTABLEKS                       R11 R10 K16 ["ClampSize"]
       51 SETTABLEKS                       R3 R10 K17 ["Layout"]
       53 GETTABLEKS                       R11 R2 K22 ["children"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K9 ["SplitPane"]
       58 CALL                             R4 3 -1
       59 RETURN                           R4 -1

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"FrameBuffer"}]
        1 GETTABLEKS                       R2 R0 K2 ["DebugData"]
        3 GETTABLEKS                       R2 R2 K0 ["FrameBuffer"]
        5 SETTABLEKS                       R2 R1 K0 ["FrameBuffer"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R4 K12 ["Analytics"]
       34 GETTABLEKS                       R7 R4 K13 ["Localization"]
       36 GETTABLEKS                       R8 R1 K14 ["UI"]
       38 GETTABLEKS                       R9 R8 K15 ["Pane"]
       40 GETTABLEKS                       R10 R8 K16 ["SplitPane"]
       42 GETIMPORT                        R11 K5 [require]
       44 GETTABLEKS                       R12 R0 K17 ["Src"]
       46 GETTABLEKS                       R12 R12 K18 ["Types"]
       48 CALL                             R11 1 1
       49 NEWTABLE                         R12 0 2
       51 GETIMPORT                        R13 K21 [UDim.new]
       53 LOADK                            R14 K22 [0.35]
       54 LOADN                            R15 0
       55 CALL                             R13 2 1
       56 GETIMPORT                        R14 K21 [UDim.new]
       58 LOADK                            R15 K23 [0.25]
       59 LOADN                            R16 0
       60 CALL                             R14 2 -1
       61 SETLIST                          R12 R13 -1 [1]
       63 NEWTABLE                         R13 0 2
       65 GETIMPORT                        R14 K21 [UDim.new]
       67 LOADK                            R15 K24 [0.6]
       68 LOADN                            R16 0
       69 CALL                             R14 2 1
       70 GETIMPORT                        R15 K21 [UDim.new]
       72 LOADK                            R16 K25 [0.4]
       73 LOADN                            R17 0
       74 CALL                             R15 2 -1
       75 SETLIST                          R13 R14 -1 [1]
       77 GETTABLEKS                       R14 R2 K26 ["PureComponent"]
       79 LOADK                            R16 K27 ["MainSplitPane"]
       80 NAMECALL                         R14 R14 K28 ["extend"]
       82 CALL                             R14 2 1
       83 DUPCLOSURE                       R15 K29 [PROTO_2]
       84 CAPTURE                          VAL R13
       85 SETTABLEKS                       R15 R14 K30 ["init"]
       87 DUPCLOSURE                       R15 K31 [PROTO_3]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R12
       92 SETTABLEKS                       R15 R14 K32 ["render"]
       94 MOVE                             R15 R5
       95 DUPTABLE                         R16 K33 [{"Analytics", "Localization"}]
       96 SETTABLEKS                       R6 R16 K12 ["Analytics"]
       98 SETTABLEKS                       R7 R16 K13 ["Localization"]
      100 CALL                             R15 1 1
      101 MOVE                             R16 R14
      102 CALL                             R15 1 1
      103 MOVE                             R14 R15
      104 DUPCLOSURE                       R15 K34 [PROTO_4]
      105 GETTABLEKS                       R16 R3 K35 ["connect"]
      107 MOVE                             R17 R15
      108 CALL                             R16 1 1
      109 MOVE                             R17 R14
      110 CALL                             R16 1 1
      111 MOVE                             R14 R16
      112 RETURN                           R14 1
