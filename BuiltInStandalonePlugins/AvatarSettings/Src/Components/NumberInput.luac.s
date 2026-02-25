PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIFNOT                        R1 ; [+7]
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K0 ["setValue"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 0
       10 RETURN                           R0 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["contextMenuProps"]
        3 JUMPIFNOT                        R2 ; [+14]
        4 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
        6 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton2]
        8 JUMPIFNOTEQ                      R2 R3 ; [+9]
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["contextMenuProps"]
       15 GETTABLEKS                       R4 R5 K5 ["menuActions"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K0 ["General"]
        9 LOADK                            R5 K1 ["InvalidInput"]
       10 NAMECALL                         R2 R2 K2 ["getText"]
       12 CALL                             R2 3 -1
       13 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 GETUPVAL                         R4 3
       10 NAMECALL                         R4 R4 K0 ["use"]
       12 CALL                             R4 1 1
       13 NAMECALL                         R4 R4 K1 ["get"]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 4
       17 GETUPVAL                         R6 5
       18 NEWTABLE                         R7 2 0
       20 GETIMPORT                        R8 K5 [Enum.AutomaticSize.XY]
       22 SETTABLEKS                       R8 R7 K3 ["AutomaticSize"]
       24 GETUPVAL                         R10 6
       25 GETTABLEKS                       R9 R10 K6 ["Event"]
       27 GETTABLEKS                       R8 R9 K7 ["InputBegan"]
       29 NEWCLOSURE                       R9 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          VAL R4
       33 SETTABLE                         R9 R7 R8
       34 DUPTABLE                         R8 K10 [{"InputWrap", "Tooltip"}]
       35 GETUPVAL                         R9 4
       36 GETUPVAL                         R10 5
       37 NEWTABLE                         R11 4 0
       39 GETUPVAL                         R13 6
       40 GETTABLEKS                       R12 R13 K11 ["Tag"]
       42 LOADK                            R13 K12 ["X-Left X-RowM"]
       43 SETTABLE                         R13 R11 R12
       44 GETTABLEKS                       R12 R0 K13 ["layoutOrder"]
       46 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       48 GETIMPORT                        R12 K5 [Enum.AutomaticSize.XY]
       50 SETTABLEKS                       R12 R11 K3 ["AutomaticSize"]
       52 DUPTABLE                         R12 K17 [{"Input", "Descriptor"}]
       53 GETUPVAL                         R13 4
       54 GETUPVAL                         R14 8
       55 DUPTABLE                         R15 K23 [{"LayoutOrder", "Size", "Text", "OnEnter", "OnFocusLost", "OnValidateText"}]
       56 MOVE                             R16 R2
       57 CALL                             R16 0 1
       58 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
       60 GETIMPORT                        R16 K26 [UDim2.fromOffset]
       62 LOADN                            R17 48
       63 GETUPVAL                         R19 9
       64 GETTABLEKS                       R18 R19 K27 ["STANDARD_HEIGHT"]
       66 CALL                             R16 2 1
       67 SETTABLEKS                       R16 R15 K18 ["Size"]
       69 GETTABLEKS                       R17 R0 K28 ["value"]
       71 FASTCALL1                        TOSTRING R17 ; [+2]
       72 GETIMPORT                        R16 K30 [tostring]
       74 CALL                             R16 1 1
       75 SETTABLEKS                       R16 R15 K19 ["Text"]
       77 SETTABLEKS                       R3 R15 K20 ["OnEnter"]
       79 SETTABLEKS                       R3 R15 K21 ["OnFocusLost"]
       81 NEWCLOSURE                       R16 P2
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R16 R15 K22 ["OnValidateText"]
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K15 ["Input"]
       89 GETUPVAL                         R13 4
       90 LOADK                            R14 K31 ["TextLabel"]
       91 NEWTABLE                         R15 8 0
       93 GETUPVAL                         R17 6
       94 GETTABLEKS                       R16 R17 K11 ["Tag"]
       96 LOADK                            R17 K32 ["Component-TextLabel"]
       97 SETTABLE                         R17 R15 R16
       98 MOVE                             R16 R2
       99 CALL                             R16 0 1
      100 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
      102 GETIMPORT                        R16 K26 [UDim2.fromOffset]
      104 LOADN                            R17 0
      105 LOADN                            R18 28
      106 CALL                             R16 2 1
      107 SETTABLEKS                       R16 R15 K18 ["Size"]
      109 GETTABLEKS                       R16 R0 K33 ["text"]
      111 SETTABLEKS                       R16 R15 K19 ["Text"]
      113 GETIMPORT                        R16 K35 [Enum.AutomaticSize.X]
      115 SETTABLEKS                       R16 R15 K3 ["AutomaticSize"]
      117 CALL                             R13 2 1
      118 SETTABLEKS                       R13 R12 K16 ["Descriptor"]
      120 CALL                             R9 3 1
      121 SETTABLEKS                       R9 R8 K8 ["InputWrap"]
      123 LOADB                            R9 0
      124 GETTABLEKS                       R10 R0 K36 ["tooltipProps"]
      126 JUMPIFEQKNIL                     R10 ; [+6]
      128 GETUPVAL                         R9 4
      129 GETUPVAL                         R10 10
      130 GETTABLEKS                       R11 R0 K36 ["tooltipProps"]
      132 CALL                             R9 2 1
      133 SETTABLEKS                       R9 R8 K9 ["Tooltip"]
      135 CALL                             R5 3 -1
      136 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Src"]
       41 GETTABLEKS                       R7 R8 K7 ["Util"]
       43 GETTABLEKS                       R6 R7 K13 ["isValidNumberInput"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K14 ["UI"]
       48 GETTABLEKS                       R7 R6 K15 ["Pane"]
       50 GETTABLEKS                       R8 R6 K16 ["TextInput"]
       52 GETTABLEKS                       R9 R6 K17 ["Tooltip"]
       54 GETTABLEKS                       R10 R6 K18 ["showContextMenu"]
       56 GETTABLEKS                       R11 R2 K19 ["ContextServices"]
       58 GETTABLEKS                       R12 R11 K20 ["Localization"]
       60 GETTABLEKS                       R13 R11 K21 ["Plugin"]
       62 GETTABLEKS                       R14 R4 K22 ["createNextOrder"]
       64 GETTABLEKS                       R15 R3 K23 ["createElement"]
       66 DUPCLOSURE                       R16 K24 [PROTO_3]
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R14
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R15
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R9
       78 RETURN                           R16 1
