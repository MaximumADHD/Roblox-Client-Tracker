PROTO_0:
        0 LOADN                            R3 1
        1 GETUPVAL                         R4 0
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [math.clamp]
        7 CALL                             R1 3 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["GraphicsQualityLevel"]
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R1 R3 K3 ["GraphicsQualityLevel"]
       14 GETUPVAL                         R3 2
       15 SETTABLEKS                       R1 R3 K4 ["QualityLevel"]
       17 MOVE                             R3 R1
       18 SUB                              R4 R1 R2
       19 RETURN                           R3 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["graphicsQualityAutoMode"]
        5 NOT                              R0 R1
        6 JUMPIFNOT                        R0 ; [+9]
        7 GETUPVAL                         R1 1
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K2 ["GraphicsQualityLevel"]
       11 GETUPVAL                         R1 2
       12 LOADN                            R2 0
       13 SETTABLEKS                       R2 R1 K3 ["QualityLevel"]
       15 JUMP                             ; [+16]
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["state"]
       20 GETTABLEKS                       R2 R2 K4 ["graphicsQuality"]
       22 SETTABLEKS                       R2 R1 K2 ["GraphicsQualityLevel"]
       24 GETUPVAL                         R1 2
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K0 ["state"]
       28 GETTABLEKS                       R2 R2 K4 ["graphicsQuality"]
       30 SETTABLEKS                       R2 R1 K3 ["QualityLevel"]
       32 GETUPVAL                         R1 0
       33 DUPTABLE                         R3 K5 [{"graphicsQualityAutoMode"}]
       34 SETTABLEKS                       R0 R3 K1 ["graphicsQualityAutoMode"]
       36 NAMECALL                         R1 R1 K6 ["setState"]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GraphicsQualityLevel"]
        3 JUMPIFEQKN                       R0 K1 [0] ; [+8]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R3 K3 [{"graphicsQuality"}]
        7 SETTABLEKS                       R0 R3 K2 ["graphicsQuality"]
        9 NAMECALL                         R1 R1 K4 ["setState"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 1
       13 DUPTABLE                         R3 K6 [{"graphicsQualityAutoMode"}]
       14 JUMPIFEQKN                       R0 K1 [0] ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K5 ["graphicsQualityAutoMode"]
       20 NAMECALL                         R1 R1 K4 ["setState"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"graphicsQuality", "graphicsQualityAutoMode"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K3 ["GraphicsQualityLevel"]
        4 SETTABLEKS                       R3 R2 K0 ["graphicsQuality"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["GraphicsQualityLevel"]
        9 JUMPIFEQKN                       R4 K4 [0] ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 SETTABLEKS                       R3 R2 K1 ["graphicsQualityAutoMode"]
       15 SETTABLEKS                       R2 R0 K5 ["state"]
       17 DUPCLOSURE                       R2 K6 [PROTO_0]
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U2
       21 SETTABLEKS                       R2 R0 K7 ["setGraphicsQuality"]
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U2
       27 SETTABLEKS                       R2 R0 K8 ["toggleGraphicsQualityAutomatic"]
       29 NEWCLOSURE                       R2 P2
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R0
       32 GETUPVAL                         R3 3
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R3 K9 ["Connect"]
       36 CALL                             R3 2 1
       37 SETTABLEKS                       R3 R0 K10 ["graphicsQualityLevelChangedConnection"]
       39 GETUPVAL                         R3 4
       40 MOVE                             R5 R2
       41 NAMECALL                         R3 R3 K9 ["Connect"]
       43 CALL                             R3 2 1
       44 SETTABLEKS                       R3 R0 K11 ["savedQualityLevelChangedConnection"]
       46 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["graphicsQualityLevelChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["savedQualityLevelChangedConnection"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K10 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["Padding"] = 10, ["Spacing"] = 10}]
       11 GETIMPORT                        R7 K13 [Enum.AutomaticSize.Y]
       13 SETTABLEKS                       R7 R6 K4 ["AutomaticSize"]
       15 GETIMPORT                        R7 K15 [Enum.HorizontalAlignment.Left]
       17 SETTABLEKS                       R7 R6 K5 ["HorizontalAlignment"]
       19 GETIMPORT                        R7 K18 [Enum.FillDirection.Vertical]
       21 SETTABLEKS                       R7 R6 K6 ["Layout"]
       23 DUPTABLE                         R7 K20 [{"GraphicsQualityPane"}]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K3 ["createElement"]
       27 GETUPVAL                         R9 2
       28 DUPTABLE                         R10 K28 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["AlwaysExpanded"] = True, ["LayoutOrder"] = 1, ["Style"] = "Box", ["Text"]}]
       29 GETIMPORT                        R11 K13 [Enum.AutomaticSize.Y]
       31 SETTABLEKS                       R11 R10 K4 ["AutomaticSize"]
       33 GETIMPORT                        R11 K15 [Enum.HorizontalAlignment.Left]
       35 SETTABLEKS                       R11 R10 K5 ["HorizontalAlignment"]
       37 GETIMPORT                        R11 K18 [Enum.FillDirection.Vertical]
       39 SETTABLEKS                       R11 R10 K6 ["Layout"]
       41 LOADK                            R13 K29 ["GraphicsQuality"]
       42 LOADK                            R14 K30 ["GraphicsQualityLabel"]
       43 NAMECALL                         R11 R3 K31 ["getText"]
       45 CALL                             R11 3 1
       46 SETTABLEKS                       R11 R10 K27 ["Text"]
       48 NEWTABLE                         R11 0 2
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R12 R12 K3 ["createElement"]
       53 GETUPVAL                         R13 3
       54 DUPTABLE                         R14 K42 [{["AnchorPoint"], ["Disabled"], ["Value"], ["Min"] = 0, ["Max"], ["OnValueChanged"], ["Size"], ["Padding"], ["SnapIncrement"] = 1, ["VerticalDragTolerance"] = 0}]
       55 GETIMPORT                        R15 K45 [Vector2.new]
       57 LOADN                            R16 0
       58 LOADK                            R17 K46 [0.5]
       59 CALL                             R15 2 1
       60 SETTABLEKS                       R15 R14 K32 ["AnchorPoint"]
       62 GETTABLEKS                       R15 R2 K47 ["graphicsQualityAutoMode"]
       64 SETTABLEKS                       R15 R14 K33 ["Disabled"]
       66 GETTABLEKS                       R15 R2 K48 ["graphicsQuality"]
       68 SETTABLEKS                       R15 R14 K34 ["Value"]
       70 GETUPVAL                         R15 4
       71 SETTABLEKS                       R15 R14 K37 ["Max"]
       73 GETTABLEKS                       R15 R0 K49 ["setGraphicsQuality"]
       75 SETTABLEKS                       R15 R14 K38 ["OnValueChanged"]
       77 GETIMPORT                        R15 K51 [UDim2.new]
       79 LOADN                            R16 0
       80 LOADN                            R17 200
       81 LOADN                            R18 0
       82 LOADN                            R19 20
       83 CALL                             R15 4 1
       84 SETTABLEKS                       R15 R14 K39 ["Size"]
       86 GETIMPORT                        R15 K53 [UDim.new]
       88 LOADN                            R16 10
       89 LOADN                            R17 10
       90 CALL                             R15 2 1
       91 SETTABLEKS                       R15 R14 K7 ["Padding"]
       93 CALL                             R12 2 1
       94 GETUPVAL                         R13 0
       95 GETTABLEKS                       R13 R13 K3 ["createElement"]
       97 GETUPVAL                         R14 5
       98 DUPTABLE                         R15 K57 [{["Checked"], ["Key"] = "graphicsQualityAutoMode", ["OnClick"], ["Text"]}]
       99 GETTABLEKS                       R16 R2 K47 ["graphicsQualityAutoMode"]
      101 SETTABLEKS                       R16 R15 K54 ["Checked"]
      103 GETTABLEKS                       R16 R0 K58 ["toggleGraphicsQualityAutomatic"]
      105 SETTABLEKS                       R16 R15 K56 ["OnClick"]
      107 LOADK                            R18 K29 ["GraphicsQuality"]
      108 LOADK                            R19 K59 ["AutoGraphicsQualityLabel"]
      109 NAMECALL                         R16 R3 K31 ["getText"]
      111 CALL                             R16 3 1
      112 SETTABLEKS                       R16 R15 K27 ["Text"]
      114 CALL                             R13 2 -1
      115 SETLIST                          R11 R12 -1 [1]
      117 CALL                             R8 3 1
      118 SETTABLEKS                       R8 R7 K19 ["GraphicsQualityPane"]
      120 CALL                             R4 3 -1
      121 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R3 K10 ["Localization"]
       29 GETTABLEKS                       R6 R2 K11 ["UI"]
       31 GETTABLEKS                       R7 R6 K12 ["Pane"]
       33 GETTABLEKS                       R8 R6 K13 ["SimpleExpandablePane"]
       35 GETTABLEKS                       R9 R6 K14 ["Slider"]
       37 GETTABLEKS                       R10 R6 K15 ["Checkbox"]
       39 GETTABLEKS                       R11 R1 K16 ["PureComponent"]
       41 LOADK                            R13 K17 ["GraphicsPane"]
       42 NAMECALL                         R11 R11 K18 ["extend"]
       44 CALL                             R11 2 1
       45 GETIMPORT                        R12 K20 [UserSettings]
       47 CALL                             R12 0 1
       48 LOADK                            R14 K21 ["UserGameSettings"]
       49 NAMECALL                         R12 R12 K22 ["GetService"]
       51 CALL                             R12 2 1
       52 GETIMPORT                        R13 K24 [settings]
       54 CALL                             R13 0 1
       55 GETTABLEKS                       R13 R13 K25 ["Rendering"]
       57 LOADK                            R16 K26 ["SavedQualityLevel"]
       58 NAMECALL                         R14 R12 K27 ["GetPropertyChangedSignal"]
       60 CALL                             R14 2 1
       61 LOADK                            R17 K28 ["GraphicsQualityLevel"]
       62 NAMECALL                         R15 R12 K27 ["GetPropertyChangedSignal"]
       64 CALL                             R15 2 1
       65 NAMECALL                         R17 R13 K30 ["GetMaxQualityLevel"]
       67 CALL                             R17 1 1
       68 SUBK                             R16 R17 K29 [1]
       69 DUPCLOSURE                       R17 K31 [PROTO_3]
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R16
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R15
       74 CAPTURE                          VAL R14
       75 SETTABLEKS                       R17 R11 K32 ["init"]
       77 DUPCLOSURE                       R17 K33 [PROTO_4]
       78 SETTABLEKS                       R17 R11 K34 ["willUnmount"]
       80 DUPCLOSURE                       R17 K35 [PROTO_5]
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R16
       86 CAPTURE                          VAL R10
       87 SETTABLEKS                       R17 R11 K36 ["render"]
       89 MOVE                             R17 R4
       90 DUPTABLE                         R18 K38 [{"Localization", "Stylizer"}]
       91 SETTABLEKS                       R5 R18 K10 ["Localization"]
       93 GETTABLEKS                       R19 R3 K37 ["Stylizer"]
       95 SETTABLEKS                       R19 R18 K37 ["Stylizer"]
       97 CALL                             R17 1 1
       98 MOVE                             R18 R11
       99 CALL                             R17 1 1
      100 MOVE                             R11 R17
      101 RETURN                           R11 1
