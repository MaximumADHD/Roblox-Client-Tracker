PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+2]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        6 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        8 JUMPIFNOTEQ                      R2 R3 ; [+18]
       10 GETTABLEKS                       R2 R1 K4 ["UserInputState"]
       12 GETIMPORT                        R3 K6 [Enum.UserInputState.Begin]
       14 JUMPIFNOTEQ                      R2 R3 ; [+12]
       16 GETIMPORT                        R2 K9 [Vector2.new]
       18 GETTABLEKS                       R4 R1 K10 ["Position"]
       20 GETTABLEKS                       R3 R4 K11 ["x"]
       22 GETTABLEKS                       R5 R1 K10 ["Position"]
       24 GETTABLEKS                       R4 R5 K12 ["y"]
       26 CALL                             R2 2 1
       27 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+18]
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 1
       10 GETUPVAL                         R1 2
       11 NAMECALL                         R1 R1 K0 ["Destroy"]
       13 CALL                             R1 1 0
       14 LOADNIL                          R1
       15 SETUPVAL                         R1 2
       16 GETUPVAL                         R1 3
       17 NAMECALL                         R1 R1 K1 ["disconnect"]
       19 CALL                             R1 1 0
       20 LOADNIL                          R1
       21 SETUPVAL                         R1 3
       22 GETUPVAL                         R1 4
       23 LOADK                            R3 K2 ["Text Changed"]
       24 NAMECALL                         R1 R1 K3 ["SetWaypoint"]
       26 CALL                             R1 2 0
       27 GETUPVAL                         R1 5
       28 NAMECALL                         R1 R1 K4 ["onTextEditorEnded"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 LOADK                            R5 K0 ["Text"]
        5 NAMECALL                         R3 R3 K1 ["GetStyled"]
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R3 R2 K0 ["Text"]
       10 GETUPVAL                         R2 2
       11 NAMECALL                         R2 R2 K2 ["finishEditingInstance"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 SETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["AbsolutePosition"]
        3 GETTABLEKS                       R3 R1 K1 ["AbsoluteSize"]
        5 LOADK                            R6 K2 ["Text"]
        6 NAMECALL                         R4 R1 K3 ["GetStyled"]
        8 CALL                             R4 2 1
        9 SETUPVAL                         R4 1
       10 LOADK                            R4 K4 [""]
       11 SETTABLEKS                       R4 R1 K2 ["Text"]
       13 GETUPVAL                         R4 2
       14 JUMPIF                           R4 ; [+127]
       15 GETIMPORT                        R4 K7 [Instance.new]
       17 LOADK                            R5 K8 ["ScreenGui"]
       18 GETUPVAL                         R6 3
       19 LOADK                            R8 K9 ["TextEditor"]
       20 NAMECALL                         R6 R6 K10 ["findOrCreateFolder"]
       22 CALL                             R6 2 -1
       23 CALL                             R4 -1 1
       24 SETUPVAL                         R4 2
       25 GETIMPORT                        R4 K7 [Instance.new]
       27 LOADK                            R5 K11 ["TextBox"]
       28 CALL                             R4 1 1
       29 SETUPVAL                         R4 4
       30 GETUPVAL                         R4 4
       31 GETIMPORT                        R5 K13 [UDim2.new]
       33 LOADN                            R6 0
       34 GETTABLEKS                       R7 R2 K14 ["X"]
       36 LOADN                            R8 0
       37 GETTABLEKS                       R9 R2 K15 ["Y"]
       39 CALL                             R5 4 1
       40 SETTABLEKS                       R5 R4 K16 ["Position"]
       42 GETUPVAL                         R4 4
       43 GETIMPORT                        R5 K13 [UDim2.new]
       45 LOADN                            R6 0
       46 GETTABLEKS                       R7 R3 K14 ["X"]
       48 LOADN                            R8 0
       49 GETTABLEKS                       R9 R3 K15 ["Y"]
       51 CALL                             R5 4 1
       52 SETTABLEKS                       R5 R4 K17 ["Size"]
       54 GETUPVAL                         R4 4
       55 LOADN                            R5 1
       56 SETTABLEKS                       R5 R4 K18 ["BackgroundTransparency"]
       58 GETUPVAL                         R4 4
       59 LOADN                            R5 0
       60 SETTABLEKS                       R5 R4 K19 ["BorderSizePixel"]
       62 GETUPVAL                         R4 4
       63 GETUPVAL                         R5 0
       64 LOADK                            R7 K20 ["Font"]
       65 NAMECALL                         R5 R5 K3 ["GetStyled"]
       67 CALL                             R5 2 1
       68 SETTABLEKS                       R5 R4 K20 ["Font"]
       70 GETUPVAL                         R4 4
       71 GETUPVAL                         R5 0
       72 LOADK                            R7 K21 ["TextColor3"]
       73 NAMECALL                         R5 R5 K3 ["GetStyled"]
       75 CALL                             R5 2 1
       76 SETTABLEKS                       R5 R4 K21 ["TextColor3"]
       78 GETUPVAL                         R4 4
       79 GETUPVAL                         R5 1
       80 SETTABLEKS                       R5 R4 K2 ["Text"]
       82 GETUPVAL                         R4 4
       83 GETUPVAL                         R5 0
       84 LOADK                            R7 K22 ["TextSize"]
       85 NAMECALL                         R5 R5 K3 ["GetStyled"]
       87 CALL                             R5 2 1
       88 SETTABLEKS                       R5 R4 K22 ["TextSize"]
       90 GETUPVAL                         R4 4
       91 GETUPVAL                         R5 0
       92 LOADK                            R7 K23 ["TextScaled"]
       93 NAMECALL                         R5 R5 K3 ["GetStyled"]
       95 CALL                             R5 2 1
       96 SETTABLEKS                       R5 R4 K23 ["TextScaled"]
       98 GETUPVAL                         R4 4
       99 GETUPVAL                         R5 0
      100 LOADK                            R7 K24 ["TextWrapped"]
      101 NAMECALL                         R5 R5 K3 ["GetStyled"]
      103 CALL                             R5 2 1
      104 SETTABLEKS                       R5 R4 K24 ["TextWrapped"]
      106 GETUPVAL                         R4 4
      107 GETUPVAL                         R5 0
      108 LOADK                            R7 K25 ["TextXAlignment"]
      109 NAMECALL                         R5 R5 K3 ["GetStyled"]
      111 CALL                             R5 2 1
      112 SETTABLEKS                       R5 R4 K25 ["TextXAlignment"]
      114 GETUPVAL                         R4 4
      115 GETUPVAL                         R5 0
      116 LOADK                            R7 K26 ["TextYAlignment"]
      117 NAMECALL                         R5 R5 K3 ["GetStyled"]
      119 CALL                             R5 2 1
      120 SETTABLEKS                       R5 R4 K26 ["TextYAlignment"]
      122 GETUPVAL                         R4 4
      123 GETUPVAL                         R5 2
      124 SETTABLEKS                       R5 R4 K27 ["Parent"]
      126 GETUPVAL                         R5 4
      127 GETTABLEKS                       R4 R5 K28 ["FocusLost"]
      129 GETUPVAL                         R6 6
      130 NAMECALL                         R4 R4 K29 ["connect"]
      132 CALL                             R4 2 1
      133 SETUPVAL                         R4 5
      134 GETUPVAL                         R4 4
      135 LOADB                            R5 0
      136 SETTABLEKS                       R5 R4 K30 ["ClearTextOnFocus"]
      138 GETUPVAL                         R4 4
      139 NAMECALL                         R4 R4 K31 ["CaptureFocus"]
      141 CALL                             R4 1 0
      142 GETUPVAL                         R4 7
      143 NAMECALL                         R4 R4 K32 ["onTextEditorBegan"]
      145 CALL                             R4 1 0
      146 RETURN                           R0 0

PROTO_6:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["CoreGuiManager"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [game]
       12 LOADK                            R3 K8 ["ChangeHistoryService"]
       13 NAMECALL                         R1 R1 K9 ["GetService"]
       15 CALL                             R1 2 1
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 LOADK                            R6 K10 [""]
       21 LOADNIL                          R7
       22 NEWTABLE                         R8 8 0
       24 NEWCLOSURE                       R9 P0
       25 CAPTURE                          REF R3
       26 SETTABLEKS                       R9 R8 K11 ["updateInstance"]
       28 NEWCLOSURE                       R9 P1
       29 CAPTURE                          REF R3
       30 CAPTURE                          REF R4
       31 CAPTURE                          REF R5
       32 CAPTURE                          REF R7
       33 CAPTURE                          VAL R1
       34 CAPTURE                          REF R2
       35 SETTABLEKS                       R9 R8 K12 ["finishEditingInstance"]
       37 NEWCLOSURE                       R9 P2
       38 CAPTURE                          REF R3
       39 SETTABLEKS                       R9 R8 K13 ["isCurrentlyEditing"]
       41 NEWCLOSURE                       R9 P3
       42 CAPTURE                          REF R3
       43 SETTABLEKS                       R9 R8 K14 ["getCurrentInstance"]
       45 NEWCLOSURE                       R9 P4
       46 CAPTURE                          REF R3
       47 CAPTURE                          REF R5
       48 CAPTURE                          VAL R8
       49 NEWCLOSURE                       R10 P5
       50 CAPTURE                          REF R3
       51 CAPTURE                          REF R6
       52 CAPTURE                          REF R4
       53 CAPTURE                          VAL R0
       54 CAPTURE                          REF R5
       55 CAPTURE                          REF R7
       56 CAPTURE                          VAL R9
       57 CAPTURE                          REF R2
       58 SETTABLEKS                       R10 R8 K15 ["startEditingInstance"]
       60 NEWCLOSURE                       R10 P6
       61 CAPTURE                          REF R2
       62 SETTABLEKS                       R10 R8 K16 ["setActionMediator"]
       64 CLOSEUPVALS                      R2
       65 RETURN                           R8 1
