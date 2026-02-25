PROTO_0:
        0 DUPTABLE                         R1 K3 [{"original", "size", "rectangle"}]
        1 SETTABLEKS                       R0 R1 K0 ["original"]
        3 GETTABLEKS                       R2 R0 K1 ["size"]
        5 SETTABLEKS                       R2 R1 K1 ["size"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K2 ["rectangle"]
       10 GETTABLEKS                       R2 R0 K4 ["children"]
       12 JUMPIFNOT                        R2 ; [+28]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K4 ["children"]
       17 LOADN                            R2 0
       18 GETTABLEKS                       R3 R0 K4 ["children"]
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 GETUPVAL                         R8 0
       24 MOVE                             R9 R7
       25 CALL                             R8 1 1
       26 GETTABLEKS                       R10 R1 K4 ["children"]
       28 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
       30 MOVE                             R11 R8
       31 GETIMPORT                        R9 K7 [table.insert]
       33 CALL                             R9 2 0
       34 GETTABLEKS                       R9 R8 K1 ["size"]
       36 ADD                              R2 R2 R9
       37 FORGLOOP                         R3 2 ; [-15]
       39 SETTABLEKS                       R2 R1 K1 ["size"]
       41 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTLT                      R1 R0 ; [+3]
        2 DIV                              R2 R0 R1
        3 JUMPIF                           R2 ; [+1]
        4 DIV                              R2 R1 R0
        5 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R0 K4 [{"x", "y", "width", "height"}]
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["x"]
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["y"]
        7 LOADN                            R1 0
        8 SETTABLEKS                       R1 R0 K2 ["width"]
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K3 ["height"]
       13 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["width"]
        2 GETTABLEKS                       R2 R0 K1 ["height"]
        4 JUMPIFNOTLT                      R1 R2 ; [+3]
        6 LOADN                            R1 1
        7 RETURN                           R1 1
        8 LOADN                            R1 0
        9 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R0 K5 [{"container", "orientation", "currentDatas", "totalData", "nextLayout"}]
        1 DUPTABLE                         R1 K10 [{"x", "y", "width", "height"}]
        2 LOADN                            R2 0
        3 SETTABLEKS                       R2 R1 K6 ["x"]
        5 LOADN                            R2 0
        6 SETTABLEKS                       R2 R1 K7 ["y"]
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K8 ["width"]
       11 LOADN                            R2 0
       12 SETTABLEKS                       R2 R1 K9 ["height"]
       14 SETTABLEKS                       R1 R0 K0 ["container"]
       16 LOADN                            R1 0
       17 SETTABLEKS                       R1 R0 K1 ["orientation"]
       19 NEWTABLE                         R1 0 0
       21 SETTABLEKS                       R1 R0 K2 ["currentDatas"]
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K3 ["totalData"]
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K4 ["nextLayout"]
       29 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R1 K4 [{"x", "y", "width", "height"}]
        1 GETTABLEKS                       R3 R0 K0 ["x"]
        3 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        4 GETIMPORT                        R2 K7 [math.floor]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K0 ["x"]
        9 GETTABLEKS                       R3 R0 K1 ["y"]
       11 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       12 GETIMPORT                        R2 K7 [math.floor]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K1 ["y"]
       17 GETTABLEKS                       R3 R0 K2 ["width"]
       19 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       20 GETIMPORT                        R2 K7 [math.floor]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R1 K2 ["width"]
       25 GETTABLEKS                       R3 R0 K3 ["height"]
       27 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       28 GETIMPORT                        R2 K7 [math.floor]
       30 CALL                             R2 1 1
       31 SETTABLEKS                       R2 R1 K3 ["height"]
       33 RETURN                           R1 1

PROTO_6:
        0 LOADN                            R4 0
        1 LOADN                            R5 1
        2 FASTCALL3                        MATH_CLAMP R1 R4 R5
        4 MOVE                             R3 R1
        5 GETIMPORT                        R2 K2 [math.clamp]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 GETTABLEKS                       R2 R0 K3 ["width"]
       11 GETTABLEKS                       R3 R0 K4 ["height"]
       13 JUMPIFNOTLT                      R3 R2 ; [+53]
       15 DUPTABLE                         R3 K7 [{"width", "height", "x", "y"}]
       16 GETTABLEKS                       R5 R0 K3 ["width"]
       18 MUL                              R4 R5 R1
       19 SETTABLEKS                       R4 R3 K3 ["width"]
       21 GETTABLEKS                       R4 R0 K4 ["height"]
       23 SETTABLEKS                       R4 R3 K4 ["height"]
       25 GETTABLEKS                       R4 R0 K5 ["x"]
       27 SETTABLEKS                       R4 R3 K5 ["x"]
       29 GETTABLEKS                       R4 R0 K6 ["y"]
       31 SETTABLEKS                       R4 R3 K6 ["y"]
       33 DUPTABLE                         R2 K8 [{"x", "y", "width", "height"}]
       34 GETTABLEKS                       R5 R3 K5 ["x"]
       36 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       37 GETIMPORT                        R4 K10 [math.floor]
       39 CALL                             R4 1 1
       40 SETTABLEKS                       R4 R2 K5 ["x"]
       42 GETTABLEKS                       R5 R3 K6 ["y"]
       44 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       45 GETIMPORT                        R4 K10 [math.floor]
       47 CALL                             R4 1 1
       48 SETTABLEKS                       R4 R2 K6 ["y"]
       50 GETTABLEKS                       R5 R3 K3 ["width"]
       52 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       53 GETIMPORT                        R4 K10 [math.floor]
       55 CALL                             R4 1 1
       56 SETTABLEKS                       R4 R2 K3 ["width"]
       58 GETTABLEKS                       R5 R3 K4 ["height"]
       60 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       61 GETIMPORT                        R4 K10 [math.floor]
       63 CALL                             R4 1 1
       64 SETTABLEKS                       R4 R2 K4 ["height"]
       66 RETURN                           R2 1
       67 DUPTABLE                         R3 K7 [{"width", "height", "x", "y"}]
       68 GETTABLEKS                       R4 R0 K3 ["width"]
       70 SETTABLEKS                       R4 R3 K3 ["width"]
       72 GETTABLEKS                       R5 R0 K4 ["height"]
       74 MUL                              R4 R5 R1
       75 SETTABLEKS                       R4 R3 K4 ["height"]
       77 GETTABLEKS                       R4 R0 K5 ["x"]
       79 SETTABLEKS                       R4 R3 K5 ["x"]
       81 GETTABLEKS                       R4 R0 K6 ["y"]
       83 SETTABLEKS                       R4 R3 K6 ["y"]
       85 DUPTABLE                         R2 K8 [{"x", "y", "width", "height"}]
       86 GETTABLEKS                       R5 R3 K5 ["x"]
       88 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       89 GETIMPORT                        R4 K10 [math.floor]
       91 CALL                             R4 1 1
       92 SETTABLEKS                       R4 R2 K5 ["x"]
       94 GETTABLEKS                       R5 R3 K6 ["y"]
       96 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       97 GETIMPORT                        R4 K10 [math.floor]
       99 CALL                             R4 1 1
      100 SETTABLEKS                       R4 R2 K6 ["y"]
      102 GETTABLEKS                       R5 R3 K3 ["width"]
      104 FASTCALL1                        MATH_FLOOR R5 ; [+2]
      105 GETIMPORT                        R4 K10 [math.floor]
      107 CALL                             R4 1 1
      108 SETTABLEKS                       R4 R2 K3 ["width"]
      110 GETTABLEKS                       R5 R3 K4 ["height"]
      112 FASTCALL1                        MATH_FLOOR R5 ; [+2]
      113 GETIMPORT                        R4 K10 [math.floor]
      115 CALL                             R4 1 1
      116 SETTABLEKS                       R4 R2 K4 ["height"]
      118 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R4 R1 K0 ["width"]
        2 GETTABLEKS                       R5 R0 K0 ["width"]
        4 SUB                              R3 R4 R5
        5 FASTCALL1                        MATH_ABS R3 ; [+2]
        6 GETIMPORT                        R2 K3 [math.abs]
        8 CALL                             R2 1 1
        9 LOADK                            R3 K4 [0.001]
       10 JUMPIFNOTLT                      R2 R3 ; [+58]
       12 DUPTABLE                         R3 K8 [{"width", "height", "x", "y"}]
       13 GETTABLEKS                       R4 R0 K0 ["width"]
       15 SETTABLEKS                       R4 R3 K0 ["width"]
       17 GETTABLEKS                       R5 R0 K5 ["height"]
       19 GETTABLEKS                       R6 R1 K5 ["height"]
       21 SUB                              R4 R5 R6
       22 SETTABLEKS                       R4 R3 K5 ["height"]
       24 GETTABLEKS                       R4 R0 K6 ["x"]
       26 SETTABLEKS                       R4 R3 K6 ["x"]
       28 GETTABLEKS                       R5 R0 K7 ["y"]
       30 GETTABLEKS                       R6 R1 K5 ["height"]
       32 ADD                              R4 R5 R6
       33 SETTABLEKS                       R4 R3 K7 ["y"]
       35 DUPTABLE                         R2 K9 [{"x", "y", "width", "height"}]
       36 GETTABLEKS                       R5 R3 K6 ["x"]
       38 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       39 GETIMPORT                        R4 K11 [math.floor]
       41 CALL                             R4 1 1
       42 SETTABLEKS                       R4 R2 K6 ["x"]
       44 GETTABLEKS                       R5 R3 K7 ["y"]
       46 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       47 GETIMPORT                        R4 K11 [math.floor]
       49 CALL                             R4 1 1
       50 SETTABLEKS                       R4 R2 K7 ["y"]
       52 GETTABLEKS                       R5 R3 K0 ["width"]
       54 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       55 GETIMPORT                        R4 K11 [math.floor]
       57 CALL                             R4 1 1
       58 SETTABLEKS                       R4 R2 K0 ["width"]
       60 GETTABLEKS                       R5 R3 K5 ["height"]
       62 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       63 GETIMPORT                        R4 K11 [math.floor]
       65 CALL                             R4 1 1
       66 SETTABLEKS                       R4 R2 K5 ["height"]
       68 RETURN                           R2 1
       69 DUPTABLE                         R3 K8 [{"width", "height", "x", "y"}]
       70 GETTABLEKS                       R5 R0 K0 ["width"]
       72 GETTABLEKS                       R6 R1 K0 ["width"]
       74 SUB                              R4 R5 R6
       75 SETTABLEKS                       R4 R3 K0 ["width"]
       77 GETTABLEKS                       R4 R0 K5 ["height"]
       79 SETTABLEKS                       R4 R3 K5 ["height"]
       81 GETTABLEKS                       R5 R0 K6 ["x"]
       83 GETTABLEKS                       R6 R1 K0 ["width"]
       85 ADD                              R4 R5 R6
       86 SETTABLEKS                       R4 R3 K6 ["x"]
       88 GETTABLEKS                       R4 R0 K7 ["y"]
       90 SETTABLEKS                       R4 R3 K7 ["y"]
       92 DUPTABLE                         R2 K9 [{"x", "y", "width", "height"}]
       93 GETTABLEKS                       R5 R3 K6 ["x"]
       95 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       96 GETIMPORT                        R4 K11 [math.floor]
       98 CALL                             R4 1 1
       99 SETTABLEKS                       R4 R2 K6 ["x"]
      101 GETTABLEKS                       R5 R3 K7 ["y"]
      103 FASTCALL1                        MATH_FLOOR R5 ; [+2]
      104 GETIMPORT                        R4 K11 [math.floor]
      106 CALL                             R4 1 1
      107 SETTABLEKS                       R4 R2 K7 ["y"]
      109 GETTABLEKS                       R5 R3 K0 ["width"]
      111 FASTCALL1                        MATH_FLOOR R5 ; [+2]
      112 GETIMPORT                        R4 K11 [math.floor]
      114 CALL                             R4 1 1
      115 SETTABLEKS                       R4 R2 K0 ["width"]
      117 GETTABLEKS                       R5 R3 K5 ["height"]
      119 FASTCALL1                        MATH_FLOOR R5 ; [+2]
      120 GETIMPORT                        R4 K11 [math.floor]
      122 CALL                             R4 1 1
      123 SETTABLEKS                       R4 R2 K5 ["height"]
      125 RETURN                           R2 1

PROTO_8:
        0 LOADN                            R5 0
        1 LOADN                            R6 1
        2 FASTCALL3                        MATH_CLAMP R2 R5 R6
        4 MOVE                             R4 R2
        5 GETIMPORT                        R3 K2 [math.clamp]
        7 CALL                             R3 3 1
        8 MOVE                             R2 R3
        9 JUMPIFNOTEQKN                    R1 K3 [0] ; [+53]
       11 DUPTABLE                         R4 K8 [{"width", "height", "x", "y"}]
       12 GETTABLEKS                       R6 R0 K4 ["width"]
       14 MUL                              R5 R6 R2
       15 SETTABLEKS                       R5 R4 K4 ["width"]
       17 GETTABLEKS                       R5 R0 K5 ["height"]
       19 SETTABLEKS                       R5 R4 K5 ["height"]
       21 GETTABLEKS                       R5 R0 K6 ["x"]
       23 SETTABLEKS                       R5 R4 K6 ["x"]
       25 GETTABLEKS                       R5 R0 K7 ["y"]
       27 SETTABLEKS                       R5 R4 K7 ["y"]
       29 DUPTABLE                         R3 K9 [{"x", "y", "width", "height"}]
       30 GETTABLEKS                       R6 R4 K6 ["x"]
       32 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       33 GETIMPORT                        R5 K11 [math.floor]
       35 CALL                             R5 1 1
       36 SETTABLEKS                       R5 R3 K6 ["x"]
       38 GETTABLEKS                       R6 R4 K7 ["y"]
       40 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       41 GETIMPORT                        R5 K11 [math.floor]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R3 K7 ["y"]
       46 GETTABLEKS                       R6 R4 K4 ["width"]
       48 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       49 GETIMPORT                        R5 K11 [math.floor]
       51 CALL                             R5 1 1
       52 SETTABLEKS                       R5 R3 K4 ["width"]
       54 GETTABLEKS                       R6 R4 K5 ["height"]
       56 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       57 GETIMPORT                        R5 K11 [math.floor]
       59 CALL                             R5 1 1
       60 SETTABLEKS                       R5 R3 K5 ["height"]
       62 RETURN                           R3 1
       63 DUPTABLE                         R4 K8 [{"width", "height", "x", "y"}]
       64 GETTABLEKS                       R5 R0 K4 ["width"]
       66 SETTABLEKS                       R5 R4 K4 ["width"]
       68 GETTABLEKS                       R6 R0 K5 ["height"]
       70 MUL                              R5 R6 R2
       71 SETTABLEKS                       R5 R4 K5 ["height"]
       73 GETTABLEKS                       R5 R0 K6 ["x"]
       75 SETTABLEKS                       R5 R4 K6 ["x"]
       77 GETTABLEKS                       R5 R0 K7 ["y"]
       79 SETTABLEKS                       R5 R4 K7 ["y"]
       81 DUPTABLE                         R3 K9 [{"x", "y", "width", "height"}]
       82 GETTABLEKS                       R6 R4 K6 ["x"]
       84 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       85 GETIMPORT                        R5 K11 [math.floor]
       87 CALL                             R5 1 1
       88 SETTABLEKS                       R5 R3 K6 ["x"]
       90 GETTABLEKS                       R6 R4 K7 ["y"]
       92 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       93 GETIMPORT                        R5 K11 [math.floor]
       95 CALL                             R5 1 1
       96 SETTABLEKS                       R5 R3 K7 ["y"]
       98 GETTABLEKS                       R6 R4 K4 ["width"]
      100 FASTCALL1                        MATH_FLOOR R6 ; [+2]
      101 GETIMPORT                        R5 K11 [math.floor]
      103 CALL                             R5 1 1
      104 SETTABLEKS                       R5 R3 K4 ["width"]
      106 GETTABLEKS                       R6 R4 K5 ["height"]
      108 FASTCALL1                        MATH_FLOOR R6 ; [+2]
      109 GETIMPORT                        R5 K11 [math.floor]
      111 CALL                             R5 1 1
      112 SETTABLEKS                       R5 R3 K5 ["height"]
      114 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["currentDatas"]
        2 LENGTH                           R2 R3
        3 JUMPIFNOTEQKN                    R2 K1 [0] ; [+82]
        5 GETTABLEKS                       R3 R0 K0 ["currentDatas"]
        7 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R2 K4 [table.insert]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R3 R0 K5 ["container"]
       16 GETTABLEKS                       R5 R1 K6 ["size"]
       18 GETTABLEKS                       R6 R0 K7 ["totalData"]
       20 DIV                              R4 R5 R6
       21 CALL                             R2 2 1
       22 GETTABLEKS                       R4 R2 K8 ["width"]
       24 GETTABLEKS                       R5 R2 K9 ["height"]
       26 JUMPIFNOTLT                      R4 R5 ; [+3]
       28 LOADN                            R3 1
       29 JUMP                             ; [+1]
       30 LOADN                            R3 0
       31 SETTABLEKS                       R3 R0 K10 ["orientation"]
       33 GETTABLEKS                       R4 R0 K5 ["container"]
       35 GETTABLEKS                       R5 R4 K8 ["width"]
       37 GETTABLEKS                       R6 R4 K9 ["height"]
       39 JUMPIFNOTLT                      R5 R6 ; [+3]
       41 LOADN                            R3 1
       42 JUMP                             ; [+1]
       43 LOADN                            R3 0
       44 GETTABLEKS                       R4 R0 K10 ["orientation"]
       46 JUMPIFNOTEQ                      R3 R4 ; [+183]
       48 GETTABLEKS                       R3 R0 K7 ["totalData"]
       50 GETTABLEKS                       R4 R1 K6 ["size"]
       52 JUMPIFNOTLT                      R4 R3 ; [+177]
       54 GETGLOBAL                        R3 K11 ["createLayout"]
       56 CALL                             R3 0 1
       57 SETTABLEKS                       R3 R0 K12 ["nextLayout"]
       59 GETTABLEKS                       R3 R0 K12 ["nextLayout"]
       61 JUMPIFNOT                        R3 ; [+20]
       62 GETTABLEKS                       R3 R0 K12 ["nextLayout"]
       64 GETUPVAL                         R4 1
       65 GETTABLEKS                       R5 R0 K5 ["container"]
       67 MOVE                             R6 R2
       68 CALL                             R4 2 1
       69 SETTABLEKS                       R4 R3 K5 ["container"]
       71 GETTABLEKS                       R3 R0 K12 ["nextLayout"]
       73 GETTABLEKS                       R5 R0 K7 ["totalData"]
       75 GETTABLEKS                       R6 R1 K6 ["size"]
       77 SUB                              R4 R5 R6
       78 SETTABLEKS                       R4 R3 K7 ["totalData"]
       80 SETTABLEKS                       R2 R0 K5 ["container"]
       82 GETTABLEKS                       R3 R0 K12 ["nextLayout"]
       84 RETURN                           R3 1
       85 JUMP                             ; [+144]
       86 GETTABLEKS                       R2 R1 K6 ["size"]
       88 GETTABLEKS                       R3 R0 K0 ["currentDatas"]
       90 LOADNIL                          R4
       91 LOADNIL                          R5
       92 FORGPREP                         R3
       93 GETTABLEKS                       R8 R7 K6 ["size"]
       95 ADD                              R2 R2 R8
       96 FORGLOOP                         R3 2 ; [-4]
       98 GETUPVAL                         R3 0
       99 GETTABLEKS                       R4 R0 K5 ["container"]
      101 GETTABLEKS                       R6 R0 K7 ["totalData"]
      103 DIV                              R5 R2 R6
      104 CALL                             R3 2 1
      105 GETTABLEKS                       R6 R0 K0 ["currentDatas"]
      107 GETTABLEKS                       R8 R0 K0 ["currentDatas"]
      109 LENGTH                           R7 R8
      110 GETTABLE                         R5 R6 R7
      111 GETTABLEKS                       R4 R5 K6 ["size"]
      113 GETUPVAL                         R5 2
      114 MOVE                             R6 R3
      115 GETTABLEKS                       R7 R0 K10 ["orientation"]
      117 DIV                              R8 R4 R2
      118 CALL                             R5 3 1
      119 GETTABLEKS                       R7 R5 K8 ["width"]
      121 GETTABLEKS                       R8 R5 K9 ["height"]
      123 JUMPIFNOTLT                      R8 R7 ; [+3]
      125 DIV                              R6 R7 R8
      126 JUMPIF                           R6 ; [+1]
      127 DIV                              R6 R8 R7
      128 LOADN                            R7 0
      129 GETTABLEKS                       R8 R0 K0 ["currentDatas"]
      131 LOADNIL                          R9
      132 LOADNIL                          R10
      133 FORGPREP                         R8
      134 GETTABLEKS                       R13 R12 K6 ["size"]
      136 ADD                              R7 R7 R13
      137 FORGLOOP                         R8 2 ; [-4]
      139 GETUPVAL                         R8 0
      140 GETTABLEKS                       R9 R0 K5 ["container"]
      142 GETTABLEKS                       R11 R0 K7 ["totalData"]
      144 DIV                              R10 R7 R11
      145 CALL                             R8 2 1
      146 GETTABLEKS                       R11 R0 K0 ["currentDatas"]
      148 GETTABLEKS                       R13 R0 K0 ["currentDatas"]
      150 LENGTH                           R12 R13
      151 GETTABLE                         R10 R11 R12
      152 GETTABLEKS                       R9 R10 K6 ["size"]
      154 GETUPVAL                         R10 2
      155 MOVE                             R11 R8
      156 GETTABLEKS                       R12 R0 K10 ["orientation"]
      158 DIV                              R13 R9 R7
      159 CALL                             R10 3 1
      160 GETTABLEKS                       R12 R10 K8 ["width"]
      162 GETTABLEKS                       R13 R10 K9 ["height"]
      164 JUMPIFNOTLT                      R13 R12 ; [+3]
      166 DIV                              R11 R12 R13
      167 JUMPIF                           R11 ; [+1]
      168 DIV                              R11 R13 R12
      169 JUMPIFNOTLT                      R6 R11 ; [+10]
      171 GETTABLEKS                       R13 R0 K0 ["currentDatas"]
      173 FASTCALL2                        TABLE_INSERT R13 R1 ; [+4]
      175 MOVE                             R14 R1
      176 GETIMPORT                        R12 K4 [table.insert]
      178 CALL                             R12 2 0
      179 JUMP                             ; [+50]
      180 GETGLOBAL                        R12 K11 ["createLayout"]
      182 CALL                             R12 0 1
      183 GETUPVAL                         R13 1
      184 GETTABLEKS                       R14 R0 K5 ["container"]
      186 MOVE                             R15 R8
      187 CALL                             R13 2 1
      188 SETTABLEKS                       R13 R12 K5 ["container"]
      190 GETTABLEKS                       R14 R0 K7 ["totalData"]
      192 SUB                              R13 R14 R7
      193 SETTABLEKS                       R13 R12 K7 ["totalData"]
      195 GETUPVAL                         R13 0
      196 GETTABLEKS                       R14 R12 K5 ["container"]
      198 GETTABLEKS                       R16 R1 K6 ["size"]
      200 GETTABLEKS                       R17 R12 K7 ["totalData"]
      202 DIV                              R15 R16 R17
      203 CALL                             R13 2 1
      204 GETTABLEKS                       R15 R13 K8 ["width"]
      206 GETTABLEKS                       R16 R13 K9 ["height"]
      208 JUMPIFNOTLT                      R15 R16 ; [+3]
      210 LOADN                            R14 1
      211 JUMP                             ; [+1]
      212 LOADN                            R14 0
      213 SETTABLEKS                       R14 R12 K10 ["orientation"]
      215 GETTABLEKS                       R15 R12 K0 ["currentDatas"]
      217 FASTCALL2                        TABLE_INSERT R15 R1 ; [+4]
      219 MOVE                             R16 R1
      220 GETIMPORT                        R14 K4 [table.insert]
      222 CALL                             R14 2 0
      223 SETTABLEKS                       R8 R0 K5 ["container"]
      225 SETTABLEKS                       R12 R0 K12 ["nextLayout"]
      227 GETTABLEKS                       R14 R0 K12 ["nextLayout"]
      229 RETURN                           R14 1
      230 LOADNIL                          R2
      231 RETURN                           R2 1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 GETTABLEKS                       R3 R0 K0 ["currentDatas"]
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K1 ["size"]
       10 ADD                              R2 R2 R8
       11 FORGLOOP                         R3 2 ; [-4]
       13 MOVE                             R3 R2
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R5 R0 K2 ["container"]
       17 DIV                              R6 R2 R3
       18 CALL                             R4 2 1
       19 GETTABLEKS                       R7 R0 K2 ["container"]
       21 GETTABLEKS                       R6 R7 K3 ["width"]
       23 DIV                              R7 R2 R3
       24 MUL                              R5 R6 R7
       25 GETTABLEKS                       R8 R0 K2 ["container"]
       27 GETTABLEKS                       R7 R8 K4 ["height"]
       29 DIV                              R8 R2 R3
       30 MUL                              R6 R7 R8
       31 GETTABLEKS                       R7 R0 K0 ["currentDatas"]
       33 LOADNIL                          R8
       34 LOADNIL                          R9
       35 FORGPREP                         R7
       36 GETTABLEKS                       R12 R11 K1 ["size"]
       38 GETUPVAL                         R13 1
       39 MOVE                             R14 R4
       40 GETTABLEKS                       R15 R0 K5 ["orientation"]
       42 DIV                              R16 R12 R2
       43 CALL                             R13 3 1
       44 GETUPVAL                         R14 2
       45 MOVE                             R15 R4
       46 MOVE                             R16 R13
       47 CALL                             R14 2 1
       48 MOVE                             R4 R14
       49 SUB                              R2 R2 R12
       50 GETTABLEKS                       R14 R0 K5 ["orientation"]
       52 JUMPIFNOTEQKN                    R14 K6 [0] ; [+10]
       54 GETTABLEKS                       R16 R13 K3 ["width"]
       56 FASTCALL2                        TABLE_INSERT R1 R16 ; [+4]
       58 MOVE                             R15 R1
       59 GETIMPORT                        R14 K9 [table.insert]
       61 CALL                             R14 2 0
       62 JUMP                             ; [+8]
       63 GETTABLEKS                       R16 R13 K4 ["height"]
       65 FASTCALL2                        TABLE_INSERT R1 R16 ; [+4]
       67 MOVE                             R15 R1
       68 GETIMPORT                        R14 K9 [table.insert]
       70 CALL                             R14 2 0
       71 FORGLOOP                         R7 2 ; [-36]
       73 GETTABLEKS                       R8 R0 K2 ["container"]
       75 GETTABLEKS                       R7 R8 K10 ["x"]
       77 GETTABLEKS                       R9 R0 K2 ["container"]
       79 GETTABLEKS                       R8 R9 K11 ["y"]
       81 GETTABLEKS                       R9 R0 K0 ["currentDatas"]
       83 LOADNIL                          R10
       84 LOADNIL                          R11
       85 FORGPREP                         R9
       86 GETTABLEKS                       R14 R0 K5 ["orientation"]
       88 JUMPIFNOTEQKN                    R14 K6 [0] ; [+20]
       90 DUPTABLE                         R14 K12 [{"width", "height", "x", "y"}]
       91 GETTABLE                         R15 R1 R12
       92 SETTABLEKS                       R15 R14 K3 ["width"]
       94 SETTABLEKS                       R6 R14 K4 ["height"]
       96 SETTABLEKS                       R7 R14 K10 ["x"]
       98 GETTABLEKS                       R16 R0 K2 ["container"]
      100 GETTABLEKS                       R15 R16 K11 ["y"]
      102 SETTABLEKS                       R15 R14 K11 ["y"]
      104 SETTABLEKS                       R14 R13 K13 ["rectangle"]
      106 GETTABLE                         R14 R1 R12
      107 ADD                              R7 R7 R14
      108 JUMP                             ; [+18]
      109 DUPTABLE                         R14 K12 [{"width", "height", "x", "y"}]
      110 SETTABLEKS                       R5 R14 K3 ["width"]
      112 GETTABLE                         R15 R1 R12
      113 SETTABLEKS                       R15 R14 K4 ["height"]
      115 GETTABLEKS                       R16 R0 K2 ["container"]
      117 GETTABLEKS                       R15 R16 K10 ["x"]
      119 SETTABLEKS                       R15 R14 K10 ["x"]
      121 SETTABLEKS                       R8 R14 K11 ["y"]
      123 SETTABLEKS                       R14 R13 K13 ["rectangle"]
      125 GETTABLE                         R14 R1 R12
      126 ADD                              R8 R8 R14
      127 FORGLOOP                         R9 2 ; [-42]
      129 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["size"]
        2 GETTABLEKS                       R4 R1 K0 ["size"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_12:
        0 JUMPIFLE                         R6 R5 ; [+16]
        2 GETTABLEKS                       R7 R0 K0 ["children"]
        4 JUMPIFEQKNIL                     R7 ; [+12]
        6 GETTABLEKS                       R8 R0 K0 ["children"]
        8 LENGTH                           R7 R8
        9 JUMPIFEQKN                       R7 K1 [0] ; [+7]
       11 LOADN                            R7 2
       12 JUMPIFLT                         R3 R7 ; [+4]
       14 LOADN                            R7 2
       15 JUMPIFNOTLT                      R4 R7 ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R8 R0 K2 ["size"]
       20 ORK                              R7 R8 K1 [0]
       21 GETGLOBAL                        R8 K3 ["createLayout"]
       23 CALL                             R8 0 1
       24 DUPTABLE                         R9 K8 [{"x", "y", "width", "height"}]
       25 SETTABLEKS                       R1 R9 K4 ["x"]
       27 SETTABLEKS                       R2 R9 K5 ["y"]
       29 SETTABLEKS                       R3 R9 K6 ["width"]
       31 SETTABLEKS                       R4 R9 K7 ["height"]
       33 SETTABLEKS                       R9 R8 K9 ["container"]
       35 SETTABLEKS                       R7 R8 K10 ["totalData"]
       37 MOVE                             R9 R8
       38 GETIMPORT                        R10 K13 [table.sort]
       40 GETTABLEKS                       R11 R0 K0 ["children"]
       42 DUPCLOSURE                       R12 K14 [PROTO_11]
       43 CALL                             R10 2 0
       44 GETTABLEKS                       R10 R0 K0 ["children"]
       46 LOADNIL                          R11
       47 LOADNIL                          R12
       48 FORGPREP                         R10
       49 GETTABLEKS                       R15 R14 K2 ["size"]
       51 JUMPIFEQKN                       R15 K1 [0] ; [+8]
       53 GETGLOBAL                        R15 K15 ["addData"]
       55 MOVE                             R16 R9
       56 MOVE                             R17 R14
       57 CALL                             R15 2 1
       58 JUMPIFNOT                        R15 ; [+1]
       59 MOVE                             R9 R15
       60 FORGLOOP                         R10 2 ; [-12]
       62 MOVE                             R9 R8
       63 JUMPIFEQKNIL                     R9 ; [+12]
       65 GETUPVAL                         R10 0
       66 MOVE                             R11 R9
       67 CALL                             R10 1 0
       68 GETTABLEKS                       R10 R9 K16 ["nextLayout"]
       70 JUMPIFNOT                        R10 ; [+5]
       71 GETTABLEKS                       R9 R9 K16 ["nextLayout"]
       73 JUMP                             ; [+1]
       74 JUMP                             ; [+1]
       75 JUMPBACK                         ; [-13]
       76 LOADB                            R10 0
       77 JUMPIFNOTEQKN                    R5 K1 [0] ; [+2]
       79 LOADB                            R10 1
       80 GETTABLEKS                       R11 R0 K0 ["children"]
       82 LOADNIL                          R12
       83 LOADNIL                          R13
       84 FORGPREP                         R11
       85 GETTABLEKS                       R16 R15 K2 ["size"]
       87 JUMPIFEQKN                       R16 K1 [0] ; [+65]
       89 GETTABLEKS                       R16 R15 K17 ["rectangle"]
       91 JUMPIFEQKNIL                     R16 ; [+61]
       93 JUMPIFNOT                        R10 ; [+34]
       94 GETTABLEKS                       R17 R15 K17 ["rectangle"]
       96 GETTABLEKS                       R16 R17 K7 ["height"]
       98 LOADN                            R17 22
       99 JUMPIFNOTLT                      R17 R16 ; [+28]
      101 GETUPVAL                         R16 1
      102 MOVE                             R17 R15
      103 GETTABLEKS                       R20 R15 K17 ["rectangle"]
      105 GETTABLEKS                       R19 R20 K4 ["x"]
      107 ADDK                             R18 R19 K18 [1]
      108 GETTABLEKS                       R22 R15 K17 ["rectangle"]
      110 GETTABLEKS                       R21 R22 K5 ["y"]
      112 ADDK                             R20 R21 K18 [1]
      113 ADDK                             R19 R20 K19 [20]
      114 GETTABLEKS                       R22 R15 K17 ["rectangle"]
      116 GETTABLEKS                       R21 R22 K6 ["width"]
      118 SUBK                             R20 R21 K20 [2]
      119 GETTABLEKS                       R23 R15 K17 ["rectangle"]
      121 GETTABLEKS                       R22 R23 K7 ["height"]
      123 SUBK                             R21 R22 K21 [22]
      124 ADDK                             R22 R5 K18 [1]
      125 MOVE                             R23 R6
      126 CALL                             R16 7 0
      127 JUMP                             ; [+25]
      128 GETUPVAL                         R16 1
      129 MOVE                             R17 R15
      130 GETTABLEKS                       R20 R15 K17 ["rectangle"]
      132 GETTABLEKS                       R19 R20 K4 ["x"]
      134 ADDK                             R18 R19 K18 [1]
      135 GETTABLEKS                       R21 R15 K17 ["rectangle"]
      137 GETTABLEKS                       R20 R21 K5 ["y"]
      139 ADDK                             R19 R20 K18 [1]
      140 GETTABLEKS                       R22 R15 K17 ["rectangle"]
      142 GETTABLEKS                       R21 R22 K6 ["width"]
      144 SUBK                             R20 R21 K20 [2]
      145 GETTABLEKS                       R23 R15 K17 ["rectangle"]
      147 GETTABLEKS                       R22 R23 K7 ["height"]
      149 SUBK                             R21 R22 K20 [2]
      150 ADDK                             R22 R5 K18 [1]
      151 MOVE                             R23 R6
      152 CALL                             R16 7 0
      153 FORGLOOP                         R11 2 ; [-69]
      155 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 CALL                             R5 1 1
        3 DUPTABLE                         R6 K4 [{"x", "y", "width", "height"}]
        4 LOADN                            R7 0
        5 SETTABLEKS                       R7 R6 K0 ["x"]
        7 LOADN                            R7 0
        8 SETTABLEKS                       R7 R6 K1 ["y"]
       10 SETTABLEKS                       R2 R6 K2 ["width"]
       12 SETTABLEKS                       R3 R6 K3 ["height"]
       14 SETTABLEKS                       R6 R5 K5 ["rectangle"]
       16 GETUPVAL                         R6 1
       17 MOVE                             R7 R5
       18 LOADN                            R8 0
       19 LOADN                            R9 0
       20 MOVE                             R10 R2
       21 MOVE                             R11 R3
       22 LOADN                            R12 0
       23 MOVE                             R13 R4
       24 CALL                             R6 7 0
       25 RETURN                           R5 1

PROTO_14:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R3 R0 K0 ["rectangle"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETTABLEKS                       R4 R0 K0 ["rectangle"]
       10 GETTABLEKS                       R3 R4 K1 ["x"]
       12 JUMPIFLT                         R1 R3 ; [+29]
       14 GETTABLEKS                       R4 R0 K0 ["rectangle"]
       16 GETTABLEKS                       R3 R4 K2 ["y"]
       18 JUMPIFLT                         R2 R3 ; [+23]
       20 GETTABLEKS                       R5 R0 K0 ["rectangle"]
       22 GETTABLEKS                       R4 R5 K1 ["x"]
       24 GETTABLEKS                       R6 R0 K0 ["rectangle"]
       26 GETTABLEKS                       R5 R6 K3 ["width"]
       28 ADD                              R3 R4 R5
       29 JUMPIFLT                         R3 R1 ; [+12]
       31 GETTABLEKS                       R5 R0 K0 ["rectangle"]
       33 GETTABLEKS                       R4 R5 K2 ["y"]
       35 GETTABLEKS                       R6 R0 K0 ["rectangle"]
       37 GETTABLEKS                       R5 R6 K4 ["height"]
       39 ADD                              R3 R4 R5
       40 JUMPIFNOTLT                      R3 R2 ; [+3]
       42 LOADNIL                          R3
       43 RETURN                           R3 1
       44 GETTABLEKS                       R3 R0 K5 ["children"]
       46 JUMPIFNOT                        R3 ; [+15]
       47 GETTABLEKS                       R3 R0 K5 ["children"]
       49 LOADNIL                          R4
       50 LOADNIL                          R5
       51 FORGPREP                         R3
       52 GETGLOBAL                        R8 K6 ["getMouseOver"]
       54 MOVE                             R9 R7
       55 MOVE                             R10 R1
       56 MOVE                             R11 R2
       57 CALL                             R8 3 1
       58 JUMPIFNOT                        R8 ; [+1]
       59 RETURN                           R8 1
       60 FORGLOOP                         R3 2 ; [-9]
       62 RETURN                           R0 1

PROTO_15:
        0 GETGLOBAL                        R6 K0 ["getMouseOver"]
        2 MOVE                             R7 R1
        3 SUB                              R8 R4 R2
        4 SUB                              R9 R5 R3
        5 CALL                             R6 3 -1
        6 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["SceneAnalysis"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R6 R1 K6 ["Src"]
       13 GETTABLEKS                       R5 R6 K7 ["Components"]
       15 GETTABLEKS                       R4 R5 K8 ["Treemap"]
       17 GETTABLEKS                       R3 R4 K9 ["TreemapTypes"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 CAPTURE                          VAL R3
       22 DUPCLOSURE                       R4 K11 [PROTO_1]
       23 DUPCLOSURE                       R5 K12 [PROTO_2]
       24 DUPCLOSURE                       R6 K13 [PROTO_3]
       25 DUPCLOSURE                       R7 K14 [PROTO_4]
       26 SETGLOBAL                        R7 K15 ["createLayout"]
       28 DUPCLOSURE                       R7 K16 [PROTO_5]
       29 DUPCLOSURE                       R8 K17 [PROTO_6]
       30 DUPCLOSURE                       R9 K18 [PROTO_7]
       31 DUPCLOSURE                       R10 K19 [PROTO_8]
       32 DUPCLOSURE                       R11 K20 [PROTO_9]
       33 CAPTURE                          VAL R8
       34 CAPTURE                          VAL R9
       35 CAPTURE                          VAL R10
       36 SETGLOBAL                        R11 K21 ["addData"]
       38 DUPCLOSURE                       R11 K22 [PROTO_10]
       39 CAPTURE                          VAL R8
       40 CAPTURE                          VAL R10
       41 CAPTURE                          VAL R9
       42 DUPCLOSURE                       R12 K23 [PROTO_12]
       43 CAPTURE                          VAL R11
       44 CAPTURE                          VAL R12
       45 DUPCLOSURE                       R13 K24 [PROTO_13]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R12
       48 SETTABLEKS                       R13 R0 K25 ["SolveTreemap"]
       50 DUPCLOSURE                       R13 K26 [PROTO_14]
       51 SETGLOBAL                        R13 K27 ["getMouseOver"]
       53 DUPCLOSURE                       R13 K28 [PROTO_15]
       54 SETTABLEKS                       R13 R0 K29 ["GetMouseOver"]
       56 RETURN                           R0 1
