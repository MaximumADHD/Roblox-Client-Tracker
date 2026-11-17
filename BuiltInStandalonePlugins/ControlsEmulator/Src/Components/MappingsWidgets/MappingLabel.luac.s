PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["side"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Left"] ; [+7]
        5 GETIMPORT                        R0 K4 [Vector2.new]
        7 LOADN                            R1 1
        8 LOADK                            R2 K5 [0.5]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K0 ["side"]
       14 JUMPIFNOTEQKS                    R0 K6 ["Right"] ; [+7]
       16 GETIMPORT                        R0 K4 [Vector2.new]
       18 LOADN                            R1 0
       19 LOADK                            R2 K5 [0.5]
       20 CALL                             R0 2 -1
       21 RETURN                           R0 -1
       22 GETIMPORT                        R0 K4 [Vector2.new]
       24 LOADK                            R1 K5 [0.5]
       25 LOADK                            R2 K5 [0.5]
       26 CALL                             R0 2 -1
       27 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["side"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Left"] ; [+25]
        5 GETIMPORT                        R0 K4 [UDim2.new]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K5 ["Position"]
       10 GETTABLEKS                       R2 R2 K6 ["X"]
       12 GETTABLEKS                       R2 R2 K7 ["Scale"]
       14 GETUPVAL                         R3 1
       15 SUB                              R1 R2 R3
       16 LOADN                            R2 0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K5 ["Position"]
       20 GETTABLEKS                       R4 R4 K8 ["Y"]
       22 GETTABLEKS                       R4 R4 K7 ["Scale"]
       24 GETUPVAL                         R5 2
       25 SUB                              R3 R4 R5
       26 LOADN                            R4 0
       27 CALL                             R0 4 -1
       28 RETURN                           R0 -1
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K0 ["side"]
       32 JUMPIFNOTEQKS                    R0 K9 ["Right"] ; [+26]
       34 GETIMPORT                        R0 K4 [UDim2.new]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K5 ["Position"]
       39 GETTABLEKS                       R2 R2 K6 ["X"]
       41 GETTABLEKS                       R2 R2 K7 ["Scale"]
       43 GETUPVAL                         R4 1
       44 DIVK                             R3 R4 K10 [2]
       45 ADD                              R1 R2 R3
       46 LOADN                            R2 0
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K5 ["Position"]
       50 GETTABLEKS                       R4 R4 K8 ["Y"]
       52 GETTABLEKS                       R4 R4 K7 ["Scale"]
       54 GETUPVAL                         R5 2
       55 SUB                              R3 R4 R5
       56 LOADN                            R4 0
       57 CALL                             R0 4 -1
       58 RETURN                           R0 -1
       59 GETIMPORT                        R0 K4 [UDim2.new]
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R2 R2 K5 ["Position"]
       64 GETTABLEKS                       R2 R2 K6 ["X"]
       66 GETTABLEKS                       R2 R2 K7 ["Scale"]
       68 GETUPVAL                         R3 1
       69 SUB                              R1 R2 R3
       70 LOADN                            R2 0
       71 GETUPVAL                         R4 0
       72 GETTABLEKS                       R4 R4 K5 ["Position"]
       74 GETTABLEKS                       R4 R4 K8 ["Y"]
       76 GETTABLEKS                       R4 R4 K7 ["Scale"]
       78 GETUPVAL                         R5 2
       79 SUB                              R3 R4 R5
       80 LOADN                            R4 0
       81 CALL                             R0 4 -1
       82 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["gamepadId"]
        7 GETTABLEKS                       R5 R1 K2 ["mappings"]
        9 GETTABLE                         R4 R5 R2
       10 JUMPIF                           R4 ; [+2]
       11 NEWTABLE                         R4 0 0
       13 GETTABLEKS                       R5 R0 K3 ["keyName"]
       15 GETTABLE                         R3 R4 R5
       16 JUMPIF                           R3 ; [+2]
       17 NEWTABLE                         R3 0 0
       19 GETUPVAL                         R4 2
       20 MOVE                             R5 R3
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R7 0 1
       29 GETTABLEKS                       R8 R0 K5 ["side"]
       31 SETLIST                          R7 R8 1 [1]
       33 CALL                             R5 2 1
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U4
       41 NEWTABLE                         R8 0 2
       43 GETTABLEKS                       R9 R0 K5 ["side"]
       45 GETTABLEKS                       R10 R0 K6 ["Position"]
       47 SETLIST                          R8 R9 2 [1]
       49 CALL                             R6 2 1
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K7 ["createElement"]
       53 LOADK                            R8 K8 ["Frame"]
       54 NEWTABLE                         R9 4 0
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K9 ["Tag"]
       59 LOADK                            R11 K10 ["Mapping-Label Width-Scaling"]
       60 SETTABLE                         R11 R9 R10
       61 SETTABLEKS                       R6 R9 K6 ["Position"]
       63 SETTABLEKS                       R5 R9 K11 ["AnchorPoint"]
       65 DUPTABLE                         R10 K13 [{"UpLabel"}]
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R11 R11 K7 ["createElement"]
       69 LOADK                            R12 K14 ["TextLabel"]
       70 DUPTABLE                         R13 K17 [{"Text", "Size"}]
       71 SETTABLEKS                       R4 R13 K15 ["Text"]
       73 GETIMPORT                        R14 K20 [UDim2.new]
       75 LOADN                            R16 1
       76 GETUPVAL                         R17 5
       77 MUL                              R15 R16 R17
       78 LOADN                            R16 0
       79 LOADN                            R18 1
       80 GETUPVAL                         R19 5
       81 MUL                              R17 R18 R19
       82 LOADN                            R18 0
       83 CALL                             R14 4 1
       84 SETTABLEKS                       R14 R13 K16 ["Size"]
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K12 ["UpLabel"]
       89 CALL                             R7 3 -1
       90 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["MappingsContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["enumToDisplayKeyCode"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["Constants"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K13 ["MAPPING_LABELS_TEXT_SCALE"]
       43 GETTABLEKS                       R6 R4 K14 ["MAPPING_LABELS_TEXT_GAP_X"]
       45 GETTABLEKS                       R7 R4 K15 ["MAPPING_LABELS_TEXT_GAP_Y"]
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K8 ["Src"]
       51 GETTABLEKS                       R9 R9 K9 ["Util"]
       53 GETTABLEKS                       R9 R9 K16 ["KeyNamesConstants"]
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K17 [PROTO_2]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R5
       63 GETTABLEKS                       R10 R1 K18 ["memo"]
       65 MOVE                             R11 R9
       66 CALL                             R10 1 -1
       67 RETURN                           R10 -1
