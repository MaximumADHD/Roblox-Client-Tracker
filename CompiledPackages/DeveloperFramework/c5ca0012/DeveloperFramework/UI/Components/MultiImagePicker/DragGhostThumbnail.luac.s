PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+29]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["imageRef"]
        9 GETTABLEKS                       R2 R3 K5 ["current"]
       11 GETTABLEKS                       R3 R0 K6 ["AbsolutePosition"]
       13 GETIMPORT                        R4 K9 [UDim2.new]
       15 LOADN                            R5 0
       16 GETTABLEKS                       R8 R1 K10 ["Position"]
       18 GETTABLEKS                       R7 R8 K11 ["x"]
       20 GETTABLEKS                       R8 R3 K11 ["x"]
       22 SUB                              R6 R7 R8
       23 LOADN                            R7 0
       24 GETTABLEKS                       R10 R1 K10 ["Position"]
       26 GETTABLEKS                       R9 R10 K12 ["y"]
       28 GETTABLEKS                       R10 R3 K12 ["y"]
       30 SUB                              R8 R9 R10
       31 CALL                             R4 4 1
       32 SETTABLEKS                       R4 R2 K10 ["Position"]
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R1 K1 ["UserInputType"]
        5 GETIMPORT                        R4 K4 [Enum.UserInputType.MouseButton1]
        7 JUMPIFNOTEQ                      R3 R4 ; [+4]
        9 GETTABLEKS                       R3 R2 K5 ["StopDragging"]
       11 CALL                             R3 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["imageRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K2 ["inputChanged"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K3 ["inputEnded"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Theme"]
        4 GETTABLEKS                       R3 R1 K2 ["Image"]
        6 GETTABLEKS                       R4 R1 K3 ["Enabled"]
        8 GETTABLEKS                       R5 R1 K4 ["ThumbnailSize"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K5 ["createElement"]
       13 LOADK                            R7 K6 ["Frame"]
       14 NEWTABLE                         R8 8 0
       16 LOADN                            R9 1
       17 SETTABLEKS                       R9 R8 K7 ["BackgroundTransparency"]
       19 GETIMPORT                        R9 K10 [UDim2.new]
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 LOADN                            R12 1
       24 LOADN                            R13 0
       25 CALL                             R9 4 1
       26 SETTABLEKS                       R9 R8 K11 ["Size"]
       28 LOADN                            R9 10
       29 SETTABLEKS                       R9 R8 K12 ["ZIndex"]
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R10 R11 K13 ["Event"]
       34 GETTABLEKS                       R9 R10 K14 ["InputChanged"]
       36 GETTABLEKS                       R10 R0 K15 ["inputChanged"]
       38 SETTABLE                         R10 R8 R9
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R10 R11 K13 ["Event"]
       42 GETTABLEKS                       R9 R10 K16 ["InputEnded"]
       44 GETTABLEKS                       R10 R0 K17 ["inputEnded"]
       46 SETTABLE                         R10 R8 R9
       47 DUPTABLE                         R9 K19 [{"Ghost"}]
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R10 R11 K5 ["createElement"]
       51 LOADK                            R11 K20 ["ImageLabel"]
       52 NEWTABLE                         R12 16 0
       54 SETTABLEKS                       R4 R12 K21 ["Visible"]
       56 LOADK                            R13 K22 [0.85]
       57 SETTABLEKS                       R13 R12 K7 ["BackgroundTransparency"]
       59 GETTABLEKS                       R14 R2 K23 ["Colors"]
       61 GETTABLEKS                       R13 R14 K24 ["Blue"]
       63 SETTABLEKS                       R13 R12 K25 ["BackgroundColor3"]
       65 GETTABLEKS                       R14 R2 K23 ["Colors"]
       67 GETTABLEKS                       R13 R14 K24 ["Blue"]
       69 SETTABLEKS                       R13 R12 K26 ["BorderColor3"]
       71 LOADN                            R13 3
       72 SETTABLEKS                       R13 R12 K27 ["BorderSizePixel"]
       74 SETTABLEKS                       R5 R12 K11 ["Size"]
       76 GETIMPORT                        R13 K29 [Vector2.new]
       78 LOADK                            R14 K30 [0.5]
       79 LOADK                            R15 K30 [0.5]
       80 CALL                             R13 2 1
       81 SETTABLEKS                       R13 R12 K31 ["AnchorPoint"]
       83 MOVE                             R13 R3
       84 JUMPIF                           R13 ; [+2]
       85 GETTABLEKS                       R13 R2 K32 ["VideoPlaceholder"]
       87 SETTABLEKS                       R13 R12 K2 ["Image"]
       89 JUMPIFNOTEQKNIL                  R3 ; [+6]
       91 GETTABLEKS                       R14 R2 K33 ["Thumbnail"]
       93 GETTABLEKS                       R13 R14 K34 ["Background"]
       95 JUMPIF                           R13 ; [+1]
       96 LOADNIL                          R13
       97 SETTABLEKS                       R13 R12 K35 ["ImageColor3"]
       99 LOADK                            R13 K30 [0.5]
      100 SETTABLEKS                       R13 R12 K36 ["ImageTransparency"]
      102 GETIMPORT                        R13 K40 [Enum.ScaleType.Fit]
      104 SETTABLEKS                       R13 R12 K38 ["ScaleType"]
      106 LOADN                            R13 3
      107 SETTABLEKS                       R13 R12 K12 ["ZIndex"]
      109 GETUPVAL                         R14 0
      110 GETTABLEKS                       R13 R14 K41 ["Ref"]
      112 GETTABLEKS                       R14 R0 K42 ["imageRef"]
      114 SETTABLE                         R14 R12 R13
      115 CALL                             R10 2 1
      116 SETTABLEKS                       R10 R9 K18 ["Ghost"]
      118 CALL                             R6 3 -1
      119 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["PureComponent"]
       18 LOADK                            R4 K9 ["DragGhostThumbnail"]
       19 NAMECALL                         R2 R2 K10 ["extend"]
       21 CALL                             R2 2 1
       22 DUPCLOSURE                       R3 K11 [PROTO_2]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R3 R2 K12 ["init"]
       26 DUPCLOSURE                       R3 K13 [PROTO_3]
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R3 R2 K14 ["render"]
       30 RETURN                           R2 1
