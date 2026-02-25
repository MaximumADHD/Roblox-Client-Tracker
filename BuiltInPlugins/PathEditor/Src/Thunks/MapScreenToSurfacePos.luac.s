PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["PathReducer"]
        5 GETTABLEKS                       R2 R1 K2 ["SelectedObject"]
        7 JUMPIFEQKNIL                     R2 ; [+5]
        9 GETTABLEKS                       R2 R1 K3 ["SelectedObjectGui"]
       11 JUMPIFNOTEQKNIL                  R2 ; [+3]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R1 K3 ["SelectedObjectGui"]
       17 LOADK                            R4 K4 ["SurfaceGui"]
       18 NAMECALL                         R2 R2 K5 ["IsA"]
       20 CALL                             R2 2 1
       21 JUMPIF                           R2 ; [+2]
       22 GETUPVAL                         R2 0
       23 RETURN                           R2 1
       24 GETTABLEKS                       R4 R1 K3 ["SelectedObjectGui"]
       26 GETTABLEKS                       R3 R4 K6 ["Adornee"]
       28 JUMPIFNOT                        R3 ; [+5]
       29 GETTABLEKS                       R3 R1 K3 ["SelectedObjectGui"]
       31 GETTABLEKS                       R2 R3 K6 ["Adornee"]
       33 JUMP                             ; [+4]
       34 GETTABLEKS                       R3 R1 K3 ["SelectedObjectGui"]
       36 GETTABLEKS                       R2 R3 K7 ["Parent"]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R3 R4 K8 ["CurrentCamera"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K9 ["X"]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R7 R8 K10 ["Y"]
       47 NAMECALL                         R4 R3 K11 ["ScreenPointToRay"]
       49 CALL                             R4 3 1
       50 GETIMPORT                        R5 K14 [RaycastParams.new]
       52 CALL                             R5 0 1
       53 GETIMPORT                        R6 K18 [Enum.RaycastFilterType.Whitelist]
       55 SETTABLEKS                       R6 R5 K19 ["FilterType"]
       57 MOVE                             R8 R2
       58 NAMECALL                         R6 R5 K20 ["AddToFilter"]
       60 CALL                             R6 2 0
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R8 R4 K21 ["Origin"]
       64 GETTABLEKS                       R10 R4 K22 ["Direction"]
       66 GETUPVAL                         R12 2
       67 GETTABLEKS                       R11 R12 K23 ["SurfaceGuiDragRaycastDepth"]
       69 MUL                              R9 R10 R11
       70 MOVE                             R10 R5
       71 NAMECALL                         R6 R6 K24 ["Raycast"]
       73 CALL                             R6 4 1
       74 JUMPIF                           R6 ; [+2]
       75 LOADNIL                          R7
       76 RETURN                           R7 1
       77 GETIMPORT                        R7 K26 [CFrame.new]
       79 GETTABLEKS                       R8 R6 K27 ["Position"]
       81 CALL                             R7 1 1
       82 GETTABLEKS                       R9 R2 K25 ["CFrame"]
       84 MOVE                             R11 R7
       85 NAMECALL                         R9 R9 K28 ["ToObjectSpace"]
       87 CALL                             R9 2 1
       88 GETTABLEKS                       R8 R9 K27 ["Position"]
       90 GETUPVAL                         R10 3
       91 GETTABLEKS                       R12 R1 K3 ["SelectedObjectGui"]
       93 GETTABLEKS                       R11 R12 K29 ["Face"]
       95 GETTABLE                         R9 R10 R11
       96 GETTABLEKS                       R13 R9 K31 ["axisX"]
       98 GETTABLE                         R12 R8 R13
       99 GETTABLEKS                       R14 R2 K32 ["Size"]
      101 GETTABLEKS                       R15 R9 K31 ["axisX"]
      103 GETTABLE                         R13 R14 R15
      104 DIV                              R11 R12 R13
      105 ADDK                             R10 R11 K30 [0.5]
      106 GETTABLEKS                       R14 R9 K33 ["axisY"]
      108 GETTABLE                         R13 R8 R14
      109 GETTABLEKS                       R15 R2 K32 ["Size"]
      111 GETTABLEKS                       R16 R9 K33 ["axisY"]
      113 GETTABLE                         R14 R15 R16
      114 DIV                              R12 R13 R14
      115 ADDK                             R11 R12 K30 [0.5]
      116 GETTABLEKS                       R12 R9 K34 ["invertX"]
      118 JUMPIFNOT                        R12 ; [+1]
      119 SUBRK                            R10 R35 K10 ["Y"]
      120 GETTABLEKS                       R12 R9 K36 ["invertY"]
      122 JUMPIFNOT                        R12 ; [+1]
      123 SUBRK                            R11 R35 K11 ["ScreenPointToRay"]
      124 GETIMPORT                        R12 K38 [Vector2.new]
      126 GETTABLEKS                       R16 R1 K3 ["SelectedObjectGui"]
      128 GETTABLEKS                       R15 R16 K39 ["AbsoluteSize"]
      130 GETTABLEKS                       R14 R15 K9 ["X"]
      132 MUL                              R13 R10 R14
      133 GETTABLEKS                       R17 R1 K3 ["SelectedObjectGui"]
      135 GETTABLEKS                       R16 R17 K39 ["AbsoluteSize"]
      137 GETTABLEKS                       R15 R16 K10 ["Y"]
      139 MUL                              R14 R11 R15
      140 CALL                             R12 2 -1
      141 RETURN                           R12 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R5 R1 K9 ["Src"]
       19 GETTABLEKS                       R4 R5 K10 ["Resources"]
       21 GETTABLEKS                       R3 R4 K11 ["Constants"]
       23 CALL                             R2 1 1
       24 NEWTABLE                         R3 8 0
       26 GETIMPORT                        R4 K15 [Enum.NormalId.Top]
       28 DUPTABLE                         R5 K20 [{"axisX", "axisY", "invertX", "invertY"}]
       29 LOADK                            R6 K21 ["Z"]
       30 SETTABLEKS                       R6 R5 K16 ["axisX"]
       32 LOADK                            R6 K22 ["X"]
       33 SETTABLEKS                       R6 R5 K17 ["axisY"]
       35 LOADB                            R6 1
       36 SETTABLEKS                       R6 R5 K18 ["invertX"]
       38 LOADB                            R6 0
       39 SETTABLEKS                       R6 R5 K19 ["invertY"]
       41 SETTABLE                         R5 R3 R4
       42 GETIMPORT                        R4 K24 [Enum.NormalId.Bottom]
       44 DUPTABLE                         R5 K20 [{"axisX", "axisY", "invertX", "invertY"}]
       45 LOADK                            R6 K21 ["Z"]
       46 SETTABLEKS                       R6 R5 K16 ["axisX"]
       48 LOADK                            R6 K22 ["X"]
       49 SETTABLEKS                       R6 R5 K17 ["axisY"]
       51 LOADB                            R6 1
       52 SETTABLEKS                       R6 R5 K18 ["invertX"]
       54 LOADB                            R6 1
       55 SETTABLEKS                       R6 R5 K19 ["invertY"]
       57 SETTABLE                         R5 R3 R4
       58 GETIMPORT                        R4 K26 [Enum.NormalId.Left]
       60 DUPTABLE                         R5 K20 [{"axisX", "axisY", "invertX", "invertY"}]
       61 LOADK                            R6 K21 ["Z"]
       62 SETTABLEKS                       R6 R5 K16 ["axisX"]
       64 LOADK                            R6 K27 ["Y"]
       65 SETTABLEKS                       R6 R5 K17 ["axisY"]
       67 LOADB                            R6 0
       68 SETTABLEKS                       R6 R5 K18 ["invertX"]
       70 LOADB                            R6 1
       71 SETTABLEKS                       R6 R5 K19 ["invertY"]
       73 SETTABLE                         R5 R3 R4
       74 GETIMPORT                        R4 K29 [Enum.NormalId.Right]
       76 DUPTABLE                         R5 K20 [{"axisX", "axisY", "invertX", "invertY"}]
       77 LOADK                            R6 K21 ["Z"]
       78 SETTABLEKS                       R6 R5 K16 ["axisX"]
       80 LOADK                            R6 K27 ["Y"]
       81 SETTABLEKS                       R6 R5 K17 ["axisY"]
       83 LOADB                            R6 1
       84 SETTABLEKS                       R6 R5 K18 ["invertX"]
       86 LOADB                            R6 1
       87 SETTABLEKS                       R6 R5 K19 ["invertY"]
       89 SETTABLE                         R5 R3 R4
       90 GETIMPORT                        R4 K31 [Enum.NormalId.Front]
       92 DUPTABLE                         R5 K20 [{"axisX", "axisY", "invertX", "invertY"}]
       93 LOADK                            R6 K22 ["X"]
       94 SETTABLEKS                       R6 R5 K16 ["axisX"]
       96 LOADK                            R6 K27 ["Y"]
       97 SETTABLEKS                       R6 R5 K17 ["axisY"]
       99 LOADB                            R6 1
      100 SETTABLEKS                       R6 R5 K18 ["invertX"]
      102 LOADB                            R6 1
      103 SETTABLEKS                       R6 R5 K19 ["invertY"]
      105 SETTABLE                         R5 R3 R4
      106 GETIMPORT                        R4 K33 [Enum.NormalId.Back]
      108 DUPTABLE                         R5 K20 [{"axisX", "axisY", "invertX", "invertY"}]
      109 LOADK                            R6 K22 ["X"]
      110 SETTABLEKS                       R6 R5 K16 ["axisX"]
      112 LOADK                            R6 K27 ["Y"]
      113 SETTABLEKS                       R6 R5 K17 ["axisY"]
      115 LOADB                            R6 0
      116 SETTABLEKS                       R6 R5 K18 ["invertX"]
      118 LOADB                            R6 1
      119 SETTABLEKS                       R6 R5 K19 ["invertY"]
      121 SETTABLE                         R5 R3 R4
      122 DUPCLOSURE                       R4 K34 [PROTO_1]
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 RETURN                           R4 1
