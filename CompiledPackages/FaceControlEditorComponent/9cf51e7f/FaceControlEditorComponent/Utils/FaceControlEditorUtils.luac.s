PROTO_0:
        0 DIVK                             R2 R0 K1 [2]
        1 ADDK                             R1 R2 K0 [0.5]
        2 RETURN                           R1 1

PROTO_1:
        0 SUBRK                            R2 K1 [1] R0
        1 DIVK                             R1 R2 K0 [2]
        2 RETURN                           R1 1

PROTO_2:
        0 SUBK                             R2 R0 K1 [0.5]
        1 MULK                             R1 R2 K0 [2]
        2 RETURN                           R1 1

PROTO_3:
        0 SUBRK                            R2 K1 [0.5] R0
        1 MULK                             R1 R2 K0 [2]
        2 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TYPEOF R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K1 [typeof]
       10 CALL                             R7 1 1
       11 JUMPIFNOTEQKS                    R7 K2 ["Vector2"] ; [+3]
       13 SETTABLE                         R6 R1 R5
       14 JUMP                             ; [+27]
       15 GETUPVAL                         R8 0
       16 GETTABLE                         R7 R8 R5
       17 JUMPIFNOT                        R7 ; [+23]
       18 LOADK                            R8 K3 [0.5]
       19 JUMPIFNOTLT                      R8 R6 ; [+11]
       21 GETTABLEKS                       R8 R7 K4 ["PositiveSlider"]
       23 SUBK                             R10 R6 K3 [0.5]
       24 MULK                             R9 R10 K5 [2]
       25 SETTABLE                         R9 R1 R8
       26 GETTABLEKS                       R8 R7 K6 ["NegativeSlider"]
       28 LOADN                            R9 0
       29 SETTABLE                         R9 R1 R8
       30 JUMP                             ; [+11]
       31 GETTABLEKS                       R8 R7 K6 ["NegativeSlider"]
       33 SUBRK                            R10 K3 [0.5] R6
       34 MULK                             R9 R10 K5 [2]
       35 SETTABLE                         R9 R1 R8
       36 GETTABLEKS                       R8 R7 K4 ["PositiveSlider"]
       38 LOADN                            R9 0
       39 SETTABLE                         R9 R1 R8
       40 JUMP                             ; [+1]
       41 SETTABLE                         R6 R1 R5
       42 FORGLOOP                         R2 2 ; [-37]
       44 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R2 K0 [0.5]
        3 SETTABLEKS                       R2 R1 K1 ["Mouth"]
        5 LOADK                            R2 K0 [0.5]
        6 SETTABLEKS                       R2 R1 K2 ["Jaw"]
        8 LOADK                            R2 K0 [0.5]
        9 SETTABLEKS                       R2 R1 K3 ["Tongue"]
       11 LOADK                            R2 K0 [0.5]
       12 SETTABLEKS                       R2 R1 K4 ["LeftEyeLid"]
       14 LOADK                            R2 K0 [0.5]
       15 SETTABLEKS                       R2 R1 K5 ["RightEyeLid"]
       17 MOVE                             R2 R0
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 FORGPREP                         R2
       21 GETUPVAL                         R8 0
       22 GETTABLE                         R7 R8 R5
       23 JUMPIFNOT                        R7 ; [+10]
       24 JUMPIFEQKN                       R6 K6 [0] ; [+9]
       26 GETTABLEKS                       R8 R7 K7 ["Controls"]
       28 GETTABLEKS                       R9 R7 K8 ["Transformation"]
       30 MOVE                             R10 R6
       31 CALL                             R9 1 1
       32 SETTABLE                         R9 R1 R8
       33 JUMP                             ; [+1]
       34 SETTABLE                         R6 R1 R5
       35 FORGLOOP                         R2 2 ; [-15]
       37 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 JUMPIFNOTEQKS                    R5 K0 ["EyesDragBox"] ; [+57]
        8 GETUPVAL                         R8 0
        9 GETTABLE                         R7 R8 R5
       10 JUMPIFNOT                        R7 ; [+51]
       11 GETTABLEKS                       R8 R6 K1 ["Y"]
       13 LOADN                            R9 0
       14 JUMPIFNOTLT                      R9 R8 ; [+11]
       16 GETTABLEKS                       R8 R7 K2 ["Down"]
       18 GETTABLEKS                       R9 R6 K1 ["Y"]
       20 SETTABLE                         R9 R1 R8
       21 GETTABLEKS                       R8 R7 K3 ["Up"]
       23 LOADN                            R9 0
       24 SETTABLE                         R9 R1 R8
       25 JUMP                             ; [+10]
       26 GETTABLEKS                       R8 R7 K3 ["Up"]
       28 GETTABLEKS                       R10 R6 K1 ["Y"]
       30 MINUS                            R9 R10
       31 SETTABLE                         R9 R1 R8
       32 GETTABLEKS                       R8 R7 K2 ["Down"]
       34 LOADN                            R9 0
       35 SETTABLE                         R9 R1 R8
       36 GETTABLEKS                       R8 R6 K4 ["X"]
       38 LOADN                            R9 0
       39 JUMPIFNOTLT                      R9 R8 ; [+11]
       41 GETTABLEKS                       R8 R7 K5 ["Left"]
       43 GETTABLEKS                       R9 R6 K4 ["X"]
       45 SETTABLE                         R9 R1 R8
       46 GETTABLEKS                       R8 R7 K6 ["Right"]
       48 LOADN                            R9 0
       49 SETTABLE                         R9 R1 R8
       50 JUMP                             ; [+14]
       51 GETTABLEKS                       R8 R7 K6 ["Right"]
       53 GETTABLEKS                       R10 R6 K4 ["X"]
       55 MINUS                            R9 R10
       56 SETTABLE                         R9 R1 R8
       57 GETTABLEKS                       R8 R7 K5 ["Left"]
       59 LOADN                            R9 0
       60 SETTABLE                         R9 R1 R8
       61 JUMP                             ; [+3]
       62 SETTABLE                         R6 R1 R5
       63 JUMP                             ; [+1]
       64 SETTABLE                         R6 R1 R5
       65 FORGLOOP                         R2 2 ; [-60]
       67 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 LOADN                            R3 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 JUMPIFNOTEQKS                    R7 K0 ["EyesLookUp"] ; [+5]
       10 JUMPIFEQKN                       R8 K1 [0] ; [+3]
       12 MINUS                            R2 R8
       13 JUMP                             ; [+17]
       14 JUMPIFNOTEQKS                    R7 K2 ["EyesLookDown"] ; [+5]
       16 JUMPIFEQKN                       R8 K1 [0] ; [+3]
       18 MOVE                             R2 R8
       19 JUMP                             ; [+11]
       20 JUMPIFNOTEQKS                    R7 K3 ["EyesLookLeft"] ; [+5]
       22 JUMPIFEQKN                       R8 K1 [0] ; [+3]
       24 MOVE                             R3 R8
       25 JUMP                             ; [+5]
       26 JUMPIFNOTEQKS                    R7 K4 ["EyesLookRight"] ; [+4]
       28 JUMPIFEQKN                       R8 K1 [0] ; [+2]
       30 MINUS                            R3 R8
       31 JUMPIFEQKS                       R7 K0 ["EyesLookUp"] ; [+8]
       33 JUMPIFEQKS                       R7 K2 ["EyesLookDown"] ; [+6]
       35 JUMPIFEQKS                       R7 K3 ["EyesLookLeft"] ; [+4]
       37 JUMPIFEQKS                       R7 K4 ["EyesLookRight"] ; [+2]
       39 SETTABLE                         R8 R1 R7
       40 FORGLOOP                         R4 2 ; [-33]
       42 GETIMPORT                        R4 K7 [Vector2.new]
       44 MOVE                             R5 R3
       45 MOVE                             R6 R2
       46 CALL                             R4 2 1
       47 SETTABLEKS                       R4 R1 K8 ["EyesDragBox"]
       49 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R2 K0 [""]
        3 GETTABLEKS                       R3 R0 K1 ["name"]
        5 JUMPIFNOTEQKS                    R3 K2 ["Mouth"] ; [+10]
        7 GETTABLEKS                       R3 R0 K3 ["value"]
        9 LOADK                            R4 K4 [0.5]
       10 JUMPIFNOTLT                      R4 R3 ; [+3]
       12 LOADK                            R2 K5 ["MouthLeft"]
       13 JUMP                             ; [+56]
       14 LOADK                            R2 K6 ["MouthRight"]
       15 JUMP                             ; [+54]
       16 GETTABLEKS                       R3 R0 K1 ["name"]
       18 JUMPIFNOTEQKS                    R3 K7 ["Jaw"] ; [+10]
       20 GETTABLEKS                       R3 R0 K3 ["value"]
       22 LOADK                            R4 K4 [0.5]
       23 JUMPIFNOTLT                      R4 R3 ; [+3]
       25 LOADK                            R2 K8 ["JawLeft"]
       26 JUMP                             ; [+43]
       27 LOADK                            R2 K9 ["JawRight"]
       28 JUMP                             ; [+41]
       29 GETTABLEKS                       R3 R0 K1 ["name"]
       31 JUMPIFNOTEQKS                    R3 K10 ["Tongue"] ; [+10]
       33 GETTABLEKS                       R3 R0 K3 ["value"]
       35 LOADK                            R4 K4 [0.5]
       36 JUMPIFNOTLT                      R4 R3 ; [+3]
       38 LOADK                            R2 K11 ["TongueUp"]
       39 JUMP                             ; [+30]
       40 LOADK                            R2 K12 ["TongueDown"]
       41 JUMP                             ; [+28]
       42 GETTABLEKS                       R3 R0 K1 ["name"]
       44 JUMPIFNOTEQKS                    R3 K13 ["LeftEyeLid"] ; [+10]
       46 GETTABLEKS                       R3 R0 K3 ["value"]
       48 LOADK                            R4 K4 [0.5]
       49 JUMPIFNOTLT                      R4 R3 ; [+3]
       51 LOADK                            R2 K14 ["LeftEyeClosed"]
       52 JUMP                             ; [+17]
       53 LOADK                            R2 K15 ["LeftEyeUpperLidRaiser"]
       54 JUMP                             ; [+15]
       55 GETTABLEKS                       R3 R0 K1 ["name"]
       57 JUMPIFNOTEQKS                    R3 K16 ["RightEyeLid"] ; [+10]
       59 GETTABLEKS                       R3 R0 K3 ["value"]
       61 LOADK                            R4 K4 [0.5]
       62 JUMPIFNOTLT                      R4 R3 ; [+3]
       64 LOADK                            R2 K17 ["RightEyeClosed"]
       65 JUMP                             ; [+4]
       66 LOADK                            R2 K18 ["RightEyeUpperLidRaiser"]
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R2 R0 K1 ["name"]
       70 GETTABLEKS                       R3 R0 K1 ["name"]
       72 JUMPIFNOTEQKS                    R3 K19 ["EyesDragBox"] ; [+54]
       74 GETTABLEKS                       R4 R0 K3 ["value"]
       76 FASTCALL1                        TYPEOF R4 ; [+2]
       77 GETIMPORT                        R3 K21 [typeof]
       79 CALL                             R3 1 1
       80 JUMPIFNOTEQKS                    R3 K22 ["Vector2"] ; [+46]
       82 GETTABLEKS                       R3 R0 K3 ["value"]
       84 GETTABLEKS                       R3 R3 K23 ["Y"]
       86 LOADN                            R4 0
       87 JUMPIFNOTLT                      R4 R3 ; [+9]
       89 FASTCALL2K                       TABLE_INSERT R1 K24 ; [+5]
       91 MOVE                             R4 R1
       92 LOADK                            R5 K24 ["EyesLookUp"]
       93 GETIMPORT                        R3 K27 [table.insert]
       95 CALL                             R3 2 0
       96 JUMP                             ; [+7]
       97 FASTCALL2K                       TABLE_INSERT R1 K28 ; [+5]
       99 MOVE                             R4 R1
      100 LOADK                            R5 K28 ["EyesLookDown"]
      101 GETIMPORT                        R3 K27 [table.insert]
      103 CALL                             R3 2 0
      104 GETTABLEKS                       R3 R0 K3 ["value"]
      106 GETTABLEKS                       R3 R3 K29 ["X"]
      108 LOADN                            R4 0
      109 JUMPIFNOTLT                      R4 R3 ; [+9]
      111 FASTCALL2K                       TABLE_INSERT R1 K30 ; [+5]
      113 MOVE                             R4 R1
      114 LOADK                            R5 K30 ["EyesLookLeft"]
      115 GETIMPORT                        R3 K27 [table.insert]
      117 CALL                             R3 2 0
      118 RETURN                           R1 1
      119 FASTCALL2K                       TABLE_INSERT R1 K31 ; [+5]
      121 MOVE                             R4 R1
      122 LOADK                            R5 K31 ["EyesLookRight"]
      123 GETIMPORT                        R3 K27 [table.insert]
      125 CALL                             R3 2 0
      126 RETURN                           R1 1
      127 FASTCALL2                        TABLE_INSERT R1 R2 ; [+5]
      129 MOVE                             R4 R1
      130 MOVE                             R5 R2
      131 GETIMPORT                        R3 K27 [table.insert]
      133 CALL                             R3 2 0
      134 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R3 R0 K0 ["value"]
        4 FASTCALL1                        TYPEOF R3 ; [+2]
        5 GETIMPORT                        R2 K2 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKS                    R2 K3 ["Vector2"] ; [+64]
       10 GETTABLEKS                       R2 R0 K4 ["name"]
       12 JUMPIFNOTEQKS                    R2 K5 ["EyesDragBox"] ; [+100]
       14 GETTABLEKS                       R2 R0 K0 ["value"]
       16 GETTABLEKS                       R2 R2 K6 ["Y"]
       18 LOADN                            R3 0
       19 JUMPIFNOTLT                      R3 R2 ; [+12]
       21 GETTABLEKS                       R4 R0 K0 ["value"]
       23 GETTABLEKS                       R4 R4 K6 ["Y"]
       25 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       27 MOVE                             R3 R1
       28 GETIMPORT                        R2 K9 [table.insert]
       30 CALL                             R2 2 0
       31 JUMP                             ; [+11]
       32 GETTABLEKS                       R5 R0 K0 ["value"]
       34 GETTABLEKS                       R5 R5 K6 ["Y"]
       36 MINUS                            R4 R5
       37 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       39 MOVE                             R3 R1
       40 GETIMPORT                        R2 K9 [table.insert]
       42 CALL                             R2 2 0
       43 GETTABLEKS                       R2 R0 K0 ["value"]
       45 GETTABLEKS                       R2 R2 K10 ["X"]
       47 LOADN                            R3 0
       48 JUMPIFNOTLT                      R3 R2 ; [+12]
       50 GETTABLEKS                       R4 R0 K0 ["value"]
       52 GETTABLEKS                       R4 R4 K10 ["X"]
       54 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       56 MOVE                             R3 R1
       57 GETIMPORT                        R2 K9 [table.insert]
       59 CALL                             R2 2 0
       60 RETURN                           R1 1
       61 GETTABLEKS                       R5 R0 K0 ["value"]
       63 GETTABLEKS                       R5 R5 K10 ["X"]
       65 MINUS                            R4 R5
       66 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       68 MOVE                             R3 R1
       69 GETIMPORT                        R2 K9 [table.insert]
       71 CALL                             R2 2 0
       72 RETURN                           R1 1
       73 GETUPVAL                         R3 0
       74 GETTABLEKS                       R4 R0 K4 ["name"]
       76 GETTABLE                         R2 R3 R4
       77 JUMPIFNOT                        R2 ; [+27]
       78 GETTABLEKS                       R3 R0 K0 ["value"]
       80 LOADK                            R4 K11 [0.5]
       81 JUMPIFNOTLT                      R4 R3 ; [+12]
       83 GETTABLEKS                       R6 R0 K0 ["value"]
       85 SUBK                             R7 R6 K11 [0.5]
       86 MULK                             R5 R7 K12 [2]
       87 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       89 MOVE                             R4 R1
       90 GETIMPORT                        R3 K9 [table.insert]
       92 CALL                             R3 2 0
       93 RETURN                           R1 1
       94 GETTABLEKS                       R6 R0 K0 ["value"]
       96 SUBRK                            R7 K11 [0.5] R6
       97 MULK                             R5 R7 K12 [2]
       98 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      100 MOVE                             R4 R1
      101 GETIMPORT                        R3 K9 [table.insert]
      103 CALL                             R3 2 0
      104 RETURN                           R1 1
      105 GETTABLEKS                       R5 R0 K0 ["value"]
      107 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      109 MOVE                             R4 R1
      110 GETIMPORT                        R3 K9 [table.insert]
      112 CALL                             R3 2 0
      113 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 DUPCLOSURE                       R3 K2 [PROTO_2]
        6 DUPCLOSURE                       R4 K3 [PROTO_3]
        7 DUPTABLE                         R5 K5 [{"EyesDragBox"}]
        8 DUPTABLE                         R6 K14 [{["Up"] = "EyesLookUp", ["Down"] = "EyesLookDown", ["Left"] = "EyesLookLeft", ["Right"] = "EyesLookRight"}]
        9 SETTABLEKS                       R6 R5 K4 ["EyesDragBox"]
       11 DUPTABLE                         R6 K25 [{"MouthLeft", "MouthRight", "JawLeft", "JawRight", "TongueUp", "TongueDown", "LeftEyeClosed", "LeftEyeUpperLidRaiser", "RightEyeClosed", "RightEyeUpperLidRaiser"}]
       12 DUPTABLE                         R7 K29 [{["Controls"] = "Mouth", ["Transformation"]}]
       13 SETTABLEKS                       R1 R7 K28 ["Transformation"]
       15 SETTABLEKS                       R7 R6 K15 ["MouthLeft"]
       17 DUPTABLE                         R7 K29 [{["Controls"] = "Mouth", ["Transformation"]}]
       18 SETTABLEKS                       R2 R7 K28 ["Transformation"]
       20 SETTABLEKS                       R7 R6 K16 ["MouthRight"]
       22 DUPTABLE                         R7 K31 [{["Controls"] = "Jaw", ["Transformation"]}]
       23 SETTABLEKS                       R1 R7 K28 ["Transformation"]
       25 SETTABLEKS                       R7 R6 K17 ["JawLeft"]
       27 DUPTABLE                         R7 K31 [{["Controls"] = "Jaw", ["Transformation"]}]
       28 SETTABLEKS                       R2 R7 K28 ["Transformation"]
       30 SETTABLEKS                       R7 R6 K18 ["JawRight"]
       32 DUPTABLE                         R7 K33 [{["Controls"] = "Tongue", ["Transformation"]}]
       33 SETTABLEKS                       R1 R7 K28 ["Transformation"]
       35 SETTABLEKS                       R7 R6 K19 ["TongueUp"]
       37 DUPTABLE                         R7 K33 [{["Controls"] = "Tongue", ["Transformation"]}]
       38 SETTABLEKS                       R2 R7 K28 ["Transformation"]
       40 SETTABLEKS                       R7 R6 K20 ["TongueDown"]
       42 DUPTABLE                         R7 K35 [{["Controls"] = "LeftEyeLid", ["Transformation"]}]
       43 SETTABLEKS                       R1 R7 K28 ["Transformation"]
       45 SETTABLEKS                       R7 R6 K21 ["LeftEyeClosed"]
       47 DUPTABLE                         R7 K35 [{["Controls"] = "LeftEyeLid", ["Transformation"]}]
       48 SETTABLEKS                       R2 R7 K28 ["Transformation"]
       50 SETTABLEKS                       R7 R6 K22 ["LeftEyeUpperLidRaiser"]
       52 DUPTABLE                         R7 K37 [{["Controls"] = "RightEyeLid", ["Transformation"]}]
       53 SETTABLEKS                       R1 R7 K28 ["Transformation"]
       55 SETTABLEKS                       R7 R6 K23 ["RightEyeClosed"]
       57 DUPTABLE                         R7 K37 [{["Controls"] = "RightEyeLid", ["Transformation"]}]
       58 SETTABLEKS                       R2 R7 K28 ["Transformation"]
       60 SETTABLEKS                       R7 R6 K24 ["RightEyeUpperLidRaiser"]
       62 DUPTABLE                         R7 K38 [{"Mouth", "Jaw", "Tongue", "LeftEyeLid", "RightEyeLid"}]
       63 DUPTABLE                         R8 K41 [{["PositiveSlider"] = "MouthLeft", ["NegativeSlider"] = "MouthRight"}]
       64 SETTABLEKS                       R8 R7 K27 ["Mouth"]
       66 DUPTABLE                         R8 K42 [{["PositiveSlider"] = "JawLeft", ["NegativeSlider"] = "JawRight"}]
       67 SETTABLEKS                       R8 R7 K30 ["Jaw"]
       69 DUPTABLE                         R8 K43 [{["PositiveSlider"] = "TongueUp", ["NegativeSlider"] = "TongueDown"}]
       70 SETTABLEKS                       R8 R7 K32 ["Tongue"]
       72 DUPTABLE                         R8 K44 [{["PositiveSlider"] = "LeftEyeClosed", ["NegativeSlider"] = "LeftEyeUpperLidRaiser"}]
       73 SETTABLEKS                       R8 R7 K34 ["LeftEyeLid"]
       75 DUPTABLE                         R8 K45 [{["PositiveSlider"] = "RightEyeClosed", ["NegativeSlider"] = "RightEyeUpperLidRaiser"}]
       76 SETTABLEKS                       R8 R7 K36 ["RightEyeLid"]
       78 DUPCLOSURE                       R8 K46 [PROTO_4]
       79 CAPTURE                          VAL R7
       80 SETTABLEKS                       R8 R0 K47 ["splitBidirectionalSliders"]
       82 DUPCLOSURE                       R8 K48 [PROTO_5]
       83 CAPTURE                          VAL R6
       84 SETTABLEKS                       R8 R0 K49 ["mergeDirectionalSliders"]
       86 DUPCLOSURE                       R8 K50 [PROTO_6]
       87 CAPTURE                          VAL R5
       88 SETTABLEKS                       R8 R0 K51 ["splitDragboxMaps"]
       90 DUPCLOSURE                       R8 K52 [PROTO_7]
       91 SETTABLEKS                       R8 R0 K53 ["mergeDragboxMaps"]
       93 DUPCLOSURE                       R8 K54 [PROTO_8]
       94 SETTABLEKS                       R8 R0 K55 ["tooltipName"]
       96 DUPCLOSURE                       R8 K56 [PROTO_9]
       97 CAPTURE                          VAL R7
       98 SETTABLEKS                       R8 R0 K57 ["tooltipValue"]
      100 RETURN                           R0 1
