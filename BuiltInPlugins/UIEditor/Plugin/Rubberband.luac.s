PROTO_0:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Frame"]
        3 MOVE                             R5 R0
        4 CALL                             R3 2 1
        5 SETTABLEKS                       R1 R3 K4 ["BorderSizePixel"]
        7 SETTABLEKS                       R2 R3 K5 ["BackgroundColor3"]
        9 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R4 K4 ["Rubberband"]
        5 NAMECALL                         R2 R2 K5 ["findOrCreateFolder"]
        7 CALL                             R2 2 -1
        8 CALL                             R0 -1 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R3 3
       13 GETIMPORT                        R4 K2 [Instance.new]
       15 LOADK                            R5 K6 ["Frame"]
       16 MOVE                             R6 R2
       17 CALL                             R4 2 1
       18 LOADN                            R5 0
       19 SETTABLEKS                       R5 R4 K7 ["BorderSizePixel"]
       21 SETTABLEKS                       R3 R4 K8 ["BackgroundColor3"]
       23 MOVE                             R1 R4
       24 SETTABLEN                        R1 R0 1
       25 GETUPVAL                         R0 2
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R3 3
       28 GETIMPORT                        R4 K2 [Instance.new]
       30 LOADK                            R5 K6 ["Frame"]
       31 MOVE                             R6 R2
       32 CALL                             R4 2 1
       33 LOADN                            R5 0
       34 SETTABLEKS                       R5 R4 K7 ["BorderSizePixel"]
       36 SETTABLEKS                       R3 R4 K8 ["BackgroundColor3"]
       38 MOVE                             R1 R4
       39 SETTABLEN                        R1 R0 2
       40 GETUPVAL                         R0 2
       41 GETUPVAL                         R2 0
       42 GETUPVAL                         R3 3
       43 GETIMPORT                        R4 K2 [Instance.new]
       45 LOADK                            R5 K6 ["Frame"]
       46 MOVE                             R6 R2
       47 CALL                             R4 2 1
       48 LOADN                            R5 0
       49 SETTABLEKS                       R5 R4 K7 ["BorderSizePixel"]
       51 SETTABLEKS                       R3 R4 K8 ["BackgroundColor3"]
       53 MOVE                             R1 R4
       54 SETTABLEN                        R1 R0 3
       55 GETUPVAL                         R0 2
       56 GETUPVAL                         R2 0
       57 GETUPVAL                         R3 3
       58 GETIMPORT                        R4 K2 [Instance.new]
       60 LOADK                            R5 K6 ["Frame"]
       61 MOVE                             R6 R2
       62 CALL                             R4 2 1
       63 LOADN                            R5 0
       64 SETTABLEKS                       R5 R4 K7 ["BorderSizePixel"]
       66 SETTABLEKS                       R3 R4 K8 ["BackgroundColor3"]
       68 MOVE                             R1 R4
       69 SETTABLEN                        R1 R0 4
       70 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R2 1
        1 SETUPVAL                         R2 0
        2 SETUPVAL                         R1 1
        3 SETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 JUMPIF                           R2 ; [+2]
        6 GETUPVAL                         R2 4
        7 CALL                             R2 0 0
        8 GETUPVAL                         R2 5
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K0 ["onRubberbandBegan"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 SETUPVAL                         R1 1
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 SUB                              R2 R3 R4
        7 GETUPVAL                         R4 3
        8 GETTABLEN                        R3 R4 1
        9 GETIMPORT                        R4 K2 [UDim2.new]
       11 LOADN                            R5 0
       12 LOADN                            R6 1
       13 LOADN                            R7 0
       14 GETTABLEKS                       R9 R2 K4 ["Y"]
       16 ADDK                             R8 R9 K3 [1]
       17 CALL                             R4 4 1
       18 SETTABLEKS                       R4 R3 K5 ["Size"]
       20 GETUPVAL                         R4 3
       21 GETTABLEN                        R3 R4 2
       22 GETIMPORT                        R4 K2 [UDim2.new]
       24 LOADN                            R5 0
       25 LOADN                            R6 1
       26 LOADN                            R7 0
       27 GETTABLEKS                       R9 R2 K4 ["Y"]
       29 ADDK                             R8 R9 K3 [1]
       30 CALL                             R4 4 1
       31 SETTABLEKS                       R4 R3 K5 ["Size"]
       33 GETUPVAL                         R4 3
       34 GETTABLEN                        R3 R4 3
       35 GETIMPORT                        R4 K2 [UDim2.new]
       37 LOADN                            R5 0
       38 GETTABLEKS                       R7 R2 K6 ["X"]
       40 ADDK                             R6 R7 K3 [1]
       41 LOADN                            R7 0
       42 LOADN                            R8 1
       43 CALL                             R4 4 1
       44 SETTABLEKS                       R4 R3 K5 ["Size"]
       46 GETUPVAL                         R4 3
       47 GETTABLEN                        R3 R4 4
       48 GETIMPORT                        R4 K2 [UDim2.new]
       50 LOADN                            R5 0
       51 GETTABLEKS                       R7 R2 K6 ["X"]
       53 ADDK                             R6 R7 K3 [1]
       54 LOADN                            R7 0
       55 LOADN                            R8 1
       56 CALL                             R4 4 1
       57 SETTABLEKS                       R4 R3 K5 ["Size"]
       59 GETUPVAL                         R4 3
       60 GETTABLEN                        R3 R4 1
       61 GETIMPORT                        R4 K2 [UDim2.new]
       63 LOADN                            R5 0
       64 GETUPVAL                         R7 2
       65 GETTABLEKS                       R6 R7 K6 ["X"]
       67 LOADN                            R7 0
       68 GETUPVAL                         R9 2
       69 GETTABLEKS                       R8 R9 K4 ["Y"]
       71 CALL                             R4 4 1
       72 SETTABLEKS                       R4 R3 K7 ["Position"]
       74 GETUPVAL                         R4 3
       75 GETTABLEN                        R3 R4 2
       76 GETIMPORT                        R4 K2 [UDim2.new]
       78 LOADN                            R5 0
       79 GETUPVAL                         R8 2
       80 GETTABLEKS                       R7 R8 K6 ["X"]
       82 GETTABLEKS                       R8 R2 K6 ["X"]
       84 ADD                              R6 R7 R8
       85 LOADN                            R7 0
       86 GETUPVAL                         R9 2
       87 GETTABLEKS                       R8 R9 K4 ["Y"]
       89 CALL                             R4 4 1
       90 SETTABLEKS                       R4 R3 K7 ["Position"]
       92 GETUPVAL                         R4 3
       93 GETTABLEN                        R3 R4 3
       94 GETIMPORT                        R4 K2 [UDim2.new]
       96 LOADN                            R5 0
       97 GETUPVAL                         R7 2
       98 GETTABLEKS                       R6 R7 K6 ["X"]
      100 LOADN                            R7 0
      101 GETUPVAL                         R9 2
      102 GETTABLEKS                       R8 R9 K4 ["Y"]
      104 CALL                             R4 4 1
      105 SETTABLEKS                       R4 R3 K7 ["Position"]
      107 GETUPVAL                         R4 3
      108 GETTABLEN                        R3 R4 4
      109 GETIMPORT                        R4 K2 [UDim2.new]
      111 LOADN                            R5 0
      112 GETUPVAL                         R7 2
      113 GETTABLEKS                       R6 R7 K6 ["X"]
      115 LOADN                            R7 0
      116 GETUPVAL                         R10 2
      117 GETTABLEKS                       R9 R10 K4 ["Y"]
      119 GETTABLEKS                       R10 R2 K4 ["Y"]
      121 ADD                              R8 R9 R10
      122 CALL                             R4 4 1
      123 SETTABLEKS                       R4 R3 K7 ["Position"]
      125 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 0
        4 SETUPVAL                         R1 0
        5 LOADNIL                          R1
        6 SETUPVAL                         R1 1
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+9]
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K0 ["Destroy"]
       12 CALL                             R1 1 0
       13 LOADNIL                          R1
       14 SETUPVAL                         R1 2
       15 NEWTABLE                         R1 0 0
       17 SETUPVAL                         R1 3
       18 GETUPVAL                         R1 4
       19 NAMECALL                         R1 R1 K1 ["onRubberbandEnded"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 RETURN                           R1 2

PROTO_7:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["FFlag"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["CoreGuiManager"]
       18 CALL                             R1 1 1
       19 LOADNIL                          R2
       20 LOADB                            R3 0
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 NEWTABLE                         R7 0 4
       26 GETIMPORT                        R8 K9 [Color3.new]
       28 LOADK                            R9 K10 [0.7019]
       29 LOADK                            R10 K10 [0.7019]
       30 LOADK                            R11 K10 [0.7019]
       31 CALL                             R8 3 1
       32 DUPCLOSURE                       R9 K11 [PROTO_0]
       33 NEWCLOSURE                       R10 P1
       34 CAPTURE                          REF R6
       35 CAPTURE                          VAL R1
       36 CAPTURE                          REF R7
       37 CAPTURE                          VAL R8
       38 NEWTABLE                         R11 8 0
       40 NEWCLOSURE                       R12 P2
       41 CAPTURE                          REF R3
       42 CAPTURE                          REF R4
       43 CAPTURE                          REF R5
       44 CAPTURE                          REF R6
       45 CAPTURE                          VAL R10
       46 CAPTURE                          REF R2
       47 SETTABLEKS                       R12 R11 K12 ["startRubberbandDrag"]
       49 NEWCLOSURE                       R12 P3
       50 CAPTURE                          REF R3
       51 CAPTURE                          REF R5
       52 CAPTURE                          REF R4
       53 CAPTURE                          REF R7
       54 SETTABLEKS                       R12 R11 K13 ["updateRubberband"]
       56 NEWCLOSURE                       R12 P4
       57 CAPTURE                          REF R3
       58 CAPTURE                          REF R4
       59 CAPTURE                          REF R6
       60 CAPTURE                          REF R7
       61 CAPTURE                          REF R2
       62 SETTABLEKS                       R12 R11 K14 ["finishRubberbandDrag"]
       64 NEWCLOSURE                       R12 P5
       65 CAPTURE                          REF R3
       66 SETTABLEKS                       R12 R11 K15 ["isDragInProgress"]
       68 NEWCLOSURE                       R12 P6
       69 CAPTURE                          REF R4
       70 CAPTURE                          REF R5
       71 SETTABLEKS                       R12 R11 K16 ["getBounds"]
       73 NEWCLOSURE                       R12 P7
       74 CAPTURE                          REF R2
       75 SETTABLEKS                       R12 R11 K17 ["setActionMediator"]
       77 CLOSEUPVALS                      R2
       78 RETURN                           R11 1
