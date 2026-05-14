PROTO_0:
        0 DUPTABLE                         R2 K4 [{"original", "Size", "layoutSize", "rectangle"}]
        1 SETTABLEKS                       R0 R2 K0 ["original"]
        3 LOADN                            R3 0
        4 SETTABLEKS                       R3 R2 K1 ["Size"]
        6 LOADN                            R3 0
        7 SETTABLEKS                       R3 R2 K2 ["layoutSize"]
        9 LOADNIL                          R3
       10 SETTABLEKS                       R3 R2 K3 ["rectangle"]
       12 GETTABLEKS                       R3 R0 K5 ["Children"]
       14 JUMPIFNOT                        R3 ; [+57]
       15 GETTABLEKS                       R4 R0 K5 ["Children"]
       17 LENGTH                           R3 R4
       18 LOADN                            R4 0
       19 JUMPIFNOTLT                      R4 R3 ; [+52]
       21 NEWTABLE                         R3 0 0
       23 SETTABLEKS                       R3 R2 K5 ["Children"]
       25 LOADN                            R3 0
       26 NEWTABLE                         R4 0 0
       28 LOADB                            R5 0
       29 GETTABLEKS                       R6 R0 K5 ["Children"]
       31 LOADNIL                          R7
       32 LOADNIL                          R8
       33 FORGPREP                         R6
       34 GETUPVAL                         R11 0
       35 MOVE                             R12 R10
       36 MOVE                             R13 R1
       37 CALL                             R11 2 1
       38 GETTABLEKS                       R13 R2 K5 ["Children"]
       40 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       42 MOVE                             R14 R11
       43 GETIMPORT                        R12 K8 [table.insert]
       45 CALL                             R12 2 0
       46 GETTABLEKS                       R12 R11 K1 ["Size"]
       48 ADD                              R3 R3 R12
       49 GETTABLEKS                       R12 R11 K9 ["Sizes"]
       51 JUMPIFNOT                        R12 ; [+12]
       52 LOADB                            R5 1
       53 GETTABLEKS                       R12 R11 K9 ["Sizes"]
       55 LOADNIL                          R13
       56 LOADNIL                          R14
       57 FORGPREP                         R12
       58 GETTABLE                         R19 R4 R15
       59 ORK                              R18 R19 K10 [0]
       60 ADD                              R17 R18 R16
       61 SETTABLE                         R17 R4 R15
       62 FORGLOOP                         R12 2 ; [-5]
       64 FORGLOOP                         R6 2 ; [-31]
       66 SETTABLEKS                       R3 R2 K1 ["Size"]
       68 JUMPIFNOT                        R5 ; [+34]
       69 SETTABLEKS                       R4 R2 K9 ["Sizes"]
       71 JUMP                             ; [+31]
       72 GETTABLEKS                       R5 R0 K1 ["Size"]
       74 FASTCALL1                        TYPE R5 ; [+2]
       75 GETIMPORT                        R4 K12 [type]
       77 CALL                             R4 1 1
       78 JUMPIFNOTEQKS                    R4 K13 ["number"] ; [+4]
       80 GETTABLEKS                       R3 R0 K1 ["Size"]
       82 JUMPIF                           R3 ; [+1]
       83 LOADN                            R3 0
       84 SETTABLEKS                       R3 R2 K1 ["Size"]
       86 GETTABLEKS                       R3 R0 K9 ["Sizes"]
       88 JUMPIFNOT                        R3 ; [+14]
       89 NEWTABLE                         R3 0 0
       91 SETTABLEKS                       R3 R2 K9 ["Sizes"]
       93 GETTABLEKS                       R3 R0 K9 ["Sizes"]
       95 LOADNIL                          R4
       96 LOADNIL                          R5
       97 FORGPREP                         R3
       98 GETTABLEKS                       R8 R2 K9 ["Sizes"]
      100 SETTABLE                         R7 R8 R6
      101 FORGLOOP                         R3 2 ; [-4]
      103 GETTABLEKS                       R3 R2 K9 ["Sizes"]
      105 JUMPIFNOT                        R3 ; [+34]
      106 JUMPIFNOT                        R1 ; [+10]
      107 GETTABLEKS                       R4 R2 K9 ["Sizes"]
      109 GETTABLE                         R3 R4 R1
      110 JUMPIFNOT                        R3 ; [+6]
      111 GETTABLEKS                       R4 R2 K9 ["Sizes"]
      113 GETTABLE                         R3 R4 R1
      114 SETTABLEKS                       R3 R2 K1 ["Size"]
      116 JUMP                             ; [+23]
      117 GETTABLEKS                       R4 R0 K1 ["Size"]
      119 FASTCALL1                        TYPE R4 ; [+2]
      120 GETIMPORT                        R3 K12 [type]
      122 CALL                             R3 1 1
      123 JUMPIFEQKS                       R3 K13 ["number"] ; [+16]
      125 GETIMPORT                        R3 K15 [next]
      127 GETTABLEKS                       R4 R2 K9 ["Sizes"]
      129 CALL                             R3 1 2
      130 JUMPIFNOT                        R4 ; [+9]
      131 FASTCALL1                        TYPE R4 ; [+3]
      132 MOVE                             R6 R4
      133 GETIMPORT                        R5 K12 [type]
      135 CALL                             R5 1 1
      136 JUMPIFNOTEQKS                    R5 K13 ["number"] ; [+3]
      138 SETTABLEKS                       R4 R2 K1 ["Size"]
      140 GETTABLEKS                       R4 R2 K1 ["Size"]
      142 FASTCALL1                        TYPE R4 ; [+2]
      143 GETIMPORT                        R3 K12 [type]
      145 CALL                             R3 1 1
      146 JUMPIFEQKS                       R3 K13 ["number"] ; [+4]
      148 LOADN                            R3 0
      149 SETTABLEKS                       R3 R2 K1 ["Size"]
      151 GETTABLEKS                       R3 R2 K1 ["Size"]
      153 SETTABLEKS                       R3 R2 K2 ["layoutSize"]
      155 RETURN                           R2 1

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
        3 JUMPIFNOTEQKN                    R2 K1 [0] ; [+81]
        5 GETTABLEKS                       R3 R0 K0 ["currentDatas"]
        7 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R2 K4 [table.insert]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R3 R0 K5 ["container"]
       16 GETTABLEKS                       R5 R1 K6 ["layoutSize"]
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
       46 JUMPIFNOTEQ                      R3 R4 ; [+181]
       48 GETTABLEKS                       R3 R0 K7 ["totalData"]
       50 GETTABLEKS                       R4 R1 K6 ["layoutSize"]
       52 JUMPIFNOTLT                      R4 R3 ; [+175]
       54 GETUPVAL                         R3 1
       55 CALL                             R3 0 1
       56 SETTABLEKS                       R3 R0 K11 ["nextLayout"]
       58 GETTABLEKS                       R3 R0 K11 ["nextLayout"]
       60 JUMPIFNOT                        R3 ; [+20]
       61 GETTABLEKS                       R3 R0 K11 ["nextLayout"]
       63 GETUPVAL                         R4 2
       64 GETTABLEKS                       R5 R0 K5 ["container"]
       66 MOVE                             R6 R2
       67 CALL                             R4 2 1
       68 SETTABLEKS                       R4 R3 K5 ["container"]
       70 GETTABLEKS                       R3 R0 K11 ["nextLayout"]
       72 GETTABLEKS                       R5 R0 K7 ["totalData"]
       74 GETTABLEKS                       R6 R1 K6 ["layoutSize"]
       76 SUB                              R4 R5 R6
       77 SETTABLEKS                       R4 R3 K7 ["totalData"]
       79 SETTABLEKS                       R2 R0 K5 ["container"]
       81 GETTABLEKS                       R3 R0 K11 ["nextLayout"]
       83 RETURN                           R3 1
       84 JUMP                             ; [+143]
       85 GETTABLEKS                       R2 R1 K6 ["layoutSize"]
       87 GETTABLEKS                       R3 R0 K0 ["currentDatas"]
       89 LOADNIL                          R4
       90 LOADNIL                          R5
       91 FORGPREP                         R3
       92 GETTABLEKS                       R8 R7 K6 ["layoutSize"]
       94 ADD                              R2 R2 R8
       95 FORGLOOP                         R3 2 ; [-4]
       97 GETUPVAL                         R3 0
       98 GETTABLEKS                       R4 R0 K5 ["container"]
      100 GETTABLEKS                       R6 R0 K7 ["totalData"]
      102 DIV                              R5 R2 R6
      103 CALL                             R3 2 1
      104 GETTABLEKS                       R5 R0 K0 ["currentDatas"]
      106 GETTABLEKS                       R7 R0 K0 ["currentDatas"]
      108 LENGTH                           R6 R7
      109 GETTABLE                         R4 R5 R6
      110 GETTABLEKS                       R4 R4 K6 ["layoutSize"]
      112 GETUPVAL                         R5 3
      113 MOVE                             R6 R3
      114 GETTABLEKS                       R7 R0 K10 ["orientation"]
      116 DIV                              R8 R4 R2
      117 CALL                             R5 3 1
      118 GETTABLEKS                       R7 R5 K8 ["width"]
      120 GETTABLEKS                       R8 R5 K9 ["height"]
      122 JUMPIFNOTLT                      R8 R7 ; [+3]
      124 DIV                              R6 R7 R8
      125 JUMPIF                           R6 ; [+1]
      126 DIV                              R6 R8 R7
      127 LOADN                            R7 0
      128 GETTABLEKS                       R8 R0 K0 ["currentDatas"]
      130 LOADNIL                          R9
      131 LOADNIL                          R10
      132 FORGPREP                         R8
      133 GETTABLEKS                       R13 R12 K6 ["layoutSize"]
      135 ADD                              R7 R7 R13
      136 FORGLOOP                         R8 2 ; [-4]
      138 GETUPVAL                         R8 0
      139 GETTABLEKS                       R9 R0 K5 ["container"]
      141 GETTABLEKS                       R11 R0 K7 ["totalData"]
      143 DIV                              R10 R7 R11
      144 CALL                             R8 2 1
      145 GETTABLEKS                       R10 R0 K0 ["currentDatas"]
      147 GETTABLEKS                       R12 R0 K0 ["currentDatas"]
      149 LENGTH                           R11 R12
      150 GETTABLE                         R9 R10 R11
      151 GETTABLEKS                       R9 R9 K6 ["layoutSize"]
      153 GETUPVAL                         R10 3
      154 MOVE                             R11 R8
      155 GETTABLEKS                       R12 R0 K10 ["orientation"]
      157 DIV                              R13 R9 R7
      158 CALL                             R10 3 1
      159 GETTABLEKS                       R12 R10 K8 ["width"]
      161 GETTABLEKS                       R13 R10 K9 ["height"]
      163 JUMPIFNOTLT                      R13 R12 ; [+3]
      165 DIV                              R11 R12 R13
      166 JUMPIF                           R11 ; [+1]
      167 DIV                              R11 R13 R12
      168 JUMPIFNOTLT                      R6 R11 ; [+10]
      170 GETTABLEKS                       R13 R0 K0 ["currentDatas"]
      172 FASTCALL2                        TABLE_INSERT R13 R1 ; [+4]
      174 MOVE                             R14 R1
      175 GETIMPORT                        R12 K4 [table.insert]
      177 CALL                             R12 2 0
      178 JUMP                             ; [+49]
      179 GETUPVAL                         R12 1
      180 CALL                             R12 0 1
      181 GETUPVAL                         R13 2
      182 GETTABLEKS                       R14 R0 K5 ["container"]
      184 MOVE                             R15 R8
      185 CALL                             R13 2 1
      186 SETTABLEKS                       R13 R12 K5 ["container"]
      188 GETTABLEKS                       R14 R0 K7 ["totalData"]
      190 SUB                              R13 R14 R7
      191 SETTABLEKS                       R13 R12 K7 ["totalData"]
      193 GETUPVAL                         R13 0
      194 GETTABLEKS                       R14 R12 K5 ["container"]
      196 GETTABLEKS                       R16 R1 K6 ["layoutSize"]
      198 GETTABLEKS                       R17 R12 K7 ["totalData"]
      200 DIV                              R15 R16 R17
      201 CALL                             R13 2 1
      202 GETTABLEKS                       R15 R13 K8 ["width"]
      204 GETTABLEKS                       R16 R13 K9 ["height"]
      206 JUMPIFNOTLT                      R15 R16 ; [+3]
      208 LOADN                            R14 1
      209 JUMP                             ; [+1]
      210 LOADN                            R14 0
      211 SETTABLEKS                       R14 R12 K10 ["orientation"]
      213 GETTABLEKS                       R15 R12 K0 ["currentDatas"]
      215 FASTCALL2                        TABLE_INSERT R15 R1 ; [+4]
      217 MOVE                             R16 R1
      218 GETIMPORT                        R14 K4 [table.insert]
      220 CALL                             R14 2 0
      221 SETTABLEKS                       R8 R0 K5 ["container"]
      223 SETTABLEKS                       R12 R0 K11 ["nextLayout"]
      225 GETTABLEKS                       R14 R0 K11 ["nextLayout"]
      227 RETURN                           R14 1
      228 LOADNIL                          R2
      229 RETURN                           R2 1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 GETTABLEKS                       R3 R0 K0 ["currentDatas"]
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K1 ["layoutSize"]
       10 ADD                              R2 R2 R8
       11 FORGLOOP                         R3 2 ; [-4]
       13 MOVE                             R3 R2
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R5 R0 K2 ["container"]
       17 DIV                              R6 R2 R3
       18 CALL                             R4 2 1
       19 GETTABLEKS                       R6 R0 K2 ["container"]
       21 GETTABLEKS                       R6 R6 K3 ["width"]
       23 DIV                              R7 R2 R3
       24 MUL                              R5 R6 R7
       25 GETTABLEKS                       R7 R0 K2 ["container"]
       27 GETTABLEKS                       R7 R7 K4 ["height"]
       29 DIV                              R8 R2 R3
       30 MUL                              R6 R7 R8
       31 GETTABLEKS                       R7 R0 K0 ["currentDatas"]
       33 LOADNIL                          R8
       34 LOADNIL                          R9
       35 FORGPREP                         R7
       36 GETTABLEKS                       R12 R11 K1 ["layoutSize"]
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
       73 GETTABLEKS                       R7 R0 K2 ["container"]
       75 GETTABLEKS                       R7 R7 K10 ["x"]
       77 GETTABLEKS                       R8 R0 K2 ["container"]
       79 GETTABLEKS                       R8 R8 K11 ["y"]
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
       98 GETTABLEKS                       R15 R0 K2 ["container"]
      100 GETTABLEKS                       R15 R15 K11 ["y"]
      102 SETTABLEKS                       R15 R14 K11 ["y"]
      104 SETTABLEKS                       R14 R13 K13 ["rectangle"]
      106 GETTABLE                         R14 R1 R12
      107 ADD                              R7 R7 R14
      108 JUMP                             ; [+18]
      109 DUPTABLE                         R14 K12 [{"width", "height", "x", "y"}]
      110 SETTABLEKS                       R5 R14 K3 ["width"]
      112 GETTABLE                         R15 R1 R12
      113 SETTABLEKS                       R15 R14 K4 ["height"]
      115 GETTABLEKS                       R15 R0 K2 ["container"]
      117 GETTABLEKS                       R15 R15 K10 ["x"]
      119 SETTABLEKS                       R15 R14 K10 ["x"]
      121 SETTABLEKS                       R8 R14 K11 ["y"]
      123 SETTABLEKS                       R14 R13 K13 ["rectangle"]
      125 GETTABLE                         R14 R1 R12
      126 ADD                              R8 R8 R14
      127 FORGLOOP                         R9 2 ; [-42]
      129 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["Children"]
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETTABLEKS                       R4 R0 K0 ["Children"]
        5 LENGTH                           R3 R4
        6 LOADN                            R4 0
        7 JUMPIFNOTLT                      R4 R3 ; [+3]
        9 LOADB                            R3 1
       10 RETURN                           R3 1
       11 LOADB                            R3 0
       12 RETURN                           R3 1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["layoutSize"]
        2 GETTABLEKS                       R3 R1 K0 ["layoutSize"]
        4 JUMPIFEQ                         R2 R3 ; [+6]
        6 JUMPIFLT                         R3 R2 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 RETURN                           R4 1
       11 GETTABLEKS                       R6 R0 K2 ["original"]
       13 GETTABLEKS                       R6 R6 K3 ["Name"]
       15 ORK                              R5 R6 K1 [""]
       16 GETTABLEKS                       R7 R1 K2 ["original"]
       18 GETTABLEKS                       R7 R7 K3 ["Name"]
       20 ORK                              R6 R7 K1 [""]
       21 JUMPIFLT                         R5 R6 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 RETURN                           R4 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["rectangle"]
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETTABLEKS                       R2 R1 K1 ["width"]
        5 LOADN                            R3 10
        6 JUMPIFLT                         R2 R3 ; [+6]
        8 GETTABLEKS                       R2 R1 K2 ["height"]
       10 LOADN                            R3 10
       11 JUMPIFNOTLT                      R2 R3 ; [+3]
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 JUMPIFNOT                        R1 ; [+23]
       16 GETTABLEKS                       R2 R0 K3 ["Children"]
       18 JUMPIFNOT                        R2 ; [+20]
       19 GETTABLEKS                       R3 R0 K3 ["Children"]
       21 LENGTH                           R2 R3
       22 LOADN                            R3 1
       23 JUMPIFNOTLT                      R3 R2 ; [+15]
       25 GETTABLEKS                       R4 R1 K1 ["width"]
       27 GETTABLEKS                       R5 R1 K2 ["height"]
       29 MUL                              R3 R4 R5
       30 GETTABLEKS                       R5 R0 K3 ["Children"]
       32 LENGTH                           R4 R5
       33 DIV                              R2 R3 R4
       34 LOADN                            R3 100
       35 JUMPIFNOTLT                      R2 R3 ; [+3]
       37 LOADB                            R2 1
       38 RETURN                           R2 1
       39 LOADB                            R2 0
       40 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["layoutSize"]
        2 GETTABLEKS                       R4 R1 K0 ["layoutSize"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_15:
        0 JUMPIFLE                         R6 R5 ; [+16]
        2 GETTABLEKS                       R8 R0 K0 ["Children"]
        4 JUMPIFEQKNIL                     R8 ; [+12]
        6 GETTABLEKS                       R9 R0 K0 ["Children"]
        8 LENGTH                           R8 R9
        9 JUMPIFEQKN                       R8 K1 [0] ; [+7]
       11 LOADN                            R8 2
       12 JUMPIFLT                         R3 R8 ; [+4]
       14 LOADN                            R8 2
       15 JUMPIFNOTLT                      R4 R8 ; [+2]
       17 RETURN                           R0 0
       18 LOADN                            R8 0
       19 GETTABLEKS                       R9 R0 K0 ["Children"]
       21 LOADNIL                          R10
       22 LOADNIL                          R11
       23 FORGPREP                         R9
       24 GETTABLEKS                       R14 R13 K2 ["layoutSize"]
       26 ADD                              R8 R8 R14
       27 FORGLOOP                         R9 2 ; [-4]
       29 JUMPIFNOT                        R7 ; [+41]
       30 LOADN                            R9 0
       31 JUMPIFNOTLT                      R9 R7 ; [+39]
       33 LOADN                            R9 1
       34 JUMPIFNOTLT                      R7 R9 ; [+36]
       36 LOADN                            R9 0
       37 JUMPIFNOTLT                      R9 R8 ; [+33]
       39 LOADN                            R9 0
       40 LOADNIL                          R10
       41 GETTABLEKS                       R11 R0 K0 ["Children"]
       43 LOADNIL                          R12
       44 LOADNIL                          R13
       45 FORGPREP                         R11
       46 GETTABLEKS                       R16 R15 K2 ["layoutSize"]
       48 JUMPIFNOTLT                      R9 R16 ; [+4]
       50 GETTABLEKS                       R9 R15 K2 ["layoutSize"]
       52 MOVE                             R10 R15
       53 FORGLOOP                         R11 2 ; [-8]
       55 MUL                              R11 R8 R7
       56 JUMPIFNOTLT                      R11 R9 ; [+14]
       58 SUB                              R12 R8 R9
       59 LOADN                            R13 0
       60 JUMPIFNOTLT                      R13 R12 ; [+10]
       62 MOVE                             R13 R10
       63 SUBRK                            R16 R3 K7 ["height"]
       64 DIV                              R15 R7 R16
       65 MUL                              R14 R12 R15
       66 SETTABLEKS                       R14 R13 K2 ["layoutSize"]
       68 GETTABLEKS                       R14 R13 K2 ["layoutSize"]
       70 ADD                              R8 R12 R14
       71 GETUPVAL                         R9 0
       72 CALL                             R9 0 1
       73 DUPTABLE                         R10 K8 [{"x", "y", "width", "height"}]
       74 SETTABLEKS                       R1 R10 K4 ["x"]
       76 SETTABLEKS                       R2 R10 K5 ["y"]
       78 SETTABLEKS                       R3 R10 K6 ["width"]
       80 SETTABLEKS                       R4 R10 K7 ["height"]
       82 SETTABLEKS                       R10 R9 K9 ["container"]
       84 SETTABLEKS                       R8 R9 K10 ["totalData"]
       86 MOVE                             R10 R9
       87 GETIMPORT                        R11 K13 [table.sort]
       89 GETTABLEKS                       R12 R0 K0 ["Children"]
       91 DUPCLOSURE                       R13 K14 [PROTO_12]
       92 CALL                             R11 2 0
       93 GETTABLEKS                       R11 R0 K0 ["Children"]
       95 LOADNIL                          R12
       96 LOADNIL                          R13
       97 FORGPREP                         R11
       98 GETTABLEKS                       R16 R15 K2 ["layoutSize"]
      100 JUMPIFEQKN                       R16 K1 [0] ; [+7]
      102 GETUPVAL                         R16 1
      103 MOVE                             R17 R10
      104 MOVE                             R18 R15
      105 CALL                             R16 2 1
      106 JUMPIFNOT                        R16 ; [+1]
      107 MOVE                             R10 R16
      108 FORGLOOP                         R11 2 ; [-11]
      110 MOVE                             R10 R9
      111 JUMPIFEQKNIL                     R10 ; [+12]
      113 GETUPVAL                         R11 2
      114 MOVE                             R12 R10
      115 CALL                             R11 1 0
      116 GETTABLEKS                       R11 R10 K15 ["nextLayout"]
      118 JUMPIFNOT                        R11 ; [+5]
      119 GETTABLEKS                       R10 R10 K15 ["nextLayout"]
      121 JUMP                             ; [+1]
      122 JUMP                             ; [+1]
      123 JUMPBACK                         ; [-13]
      124 DUPCLOSURE                       R11 K16 [PROTO_13]
      125 LOADN                            R14 1
      126 LOADN                            R12 4
      127 LOADN                            R13 1
      128 FORNPREP                         R12
      129 LOADB                            R15 0
      130 LOADN                            R16 0
      131 LOADN                            R17 0
      132 GETTABLEKS                       R18 R0 K0 ["Children"]
      134 LOADNIL                          R19
      135 LOADNIL                          R20
      136 FORGPREP                         R18
      137 GETTABLEKS                       R24 R22 K17 ["rectangle"]
      139 JUMPIFNOT                        R24 ; [+12]
      140 GETTABLEKS                       R25 R24 K6 ["width"]
      142 LOADN                            R26 10
      143 JUMPIFLT                         R25 R26 ; [+6]
      145 GETTABLEKS                       R25 R24 K7 ["height"]
      147 LOADN                            R26 10
      148 JUMPIFNOTLT                      R25 R26 ; [+3]
      150 LOADB                            R23 1
      151 JUMP                             ; [+25]
      152 JUMPIFNOT                        R24 ; [+23]
      153 GETTABLEKS                       R25 R22 K0 ["Children"]
      155 JUMPIFNOT                        R25 ; [+20]
      156 GETTABLEKS                       R26 R22 K0 ["Children"]
      158 LENGTH                           R25 R26
      159 LOADN                            R26 1
      160 JUMPIFNOTLT                      R26 R25 ; [+15]
      162 GETTABLEKS                       R27 R24 K6 ["width"]
      164 GETTABLEKS                       R28 R24 K7 ["height"]
      166 MUL                              R26 R27 R28
      167 GETTABLEKS                       R28 R22 K0 ["Children"]
      169 LENGTH                           R27 R28
      170 DIV                              R25 R26 R27
      171 LOADN                            R26 100
      172 JUMPIFNOTLT                      R25 R26 ; [+3]
      174 LOADB                            R23 1
      175 JUMP                             ; [+1]
      176 LOADB                            R23 0
      177 JUMPIFNOT                        R23 ; [+5]
      178 GETTABLEKS                       R23 R22 K2 ["layoutSize"]
      180 ADD                              R17 R17 R23
      181 LOADB                            R15 1
      182 JUMP                             ; [+3]
      183 GETTABLEKS                       R23 R22 K2 ["layoutSize"]
      185 ADD                              R16 R16 R23
      186 FORGLOOP                         R18 2 ; [-50]
      188 JUMPIFNOT                        R15 ; [+136]
      189 LOADN                            R18 0
      190 JUMPIFLE                         R16 R18 ; [+134]
      192 MULK                             R18 R17 K18 [3]
      193 SUB                              R20 R16 R18
      194 DIV                              R19 R20 R16
      195 LOADK                            R20 K19 [0.1]
      196 JUMPIFLT                         R19 R20 ; [+128]
      198 GETTABLEKS                       R20 R0 K0 ["Children"]
      200 LOADNIL                          R21
      201 LOADNIL                          R22
      202 FORGPREP                         R20
      203 GETTABLEKS                       R26 R24 K17 ["rectangle"]
      205 JUMPIFNOT                        R26 ; [+12]
      206 GETTABLEKS                       R27 R26 K6 ["width"]
      208 LOADN                            R28 10
      209 JUMPIFLT                         R27 R28 ; [+6]
      211 GETTABLEKS                       R27 R26 K7 ["height"]
      213 LOADN                            R28 10
      214 JUMPIFNOTLT                      R27 R28 ; [+3]
      216 LOADB                            R25 1
      217 JUMP                             ; [+25]
      218 JUMPIFNOT                        R26 ; [+23]
      219 GETTABLEKS                       R27 R24 K0 ["Children"]
      221 JUMPIFNOT                        R27 ; [+20]
      222 GETTABLEKS                       R28 R24 K0 ["Children"]
      224 LENGTH                           R27 R28
      225 LOADN                            R28 1
      226 JUMPIFNOTLT                      R28 R27 ; [+15]
      228 GETTABLEKS                       R29 R26 K6 ["width"]
      230 GETTABLEKS                       R30 R26 K7 ["height"]
      232 MUL                              R28 R29 R30
      233 GETTABLEKS                       R30 R24 K0 ["Children"]
      235 LENGTH                           R29 R30
      236 DIV                              R27 R28 R29
      237 LOADN                            R28 100
      238 JUMPIFNOTLT                      R27 R28 ; [+3]
      240 LOADB                            R25 1
      241 JUMP                             ; [+1]
      242 LOADB                            R25 0
      243 JUMPIFNOT                        R25 ; [+6]
      244 GETTABLEKS                       R26 R24 K2 ["layoutSize"]
      246 MULK                             R25 R26 K20 [4]
      247 SETTABLEKS                       R25 R24 K2 ["layoutSize"]
      249 JUMP                             ; [+5]
      250 GETTABLEKS                       R26 R24 K2 ["layoutSize"]
      252 MUL                              R25 R26 R19
      253 SETTABLEKS                       R25 R24 K2 ["layoutSize"]
      255 LOADNIL                          R25
      256 SETTABLEKS                       R25 R24 K17 ["rectangle"]
      258 FORGLOOP                         R20 2 ; [-56]
      260 LOADN                            R8 0
      261 GETTABLEKS                       R20 R0 K0 ["Children"]
      263 LOADNIL                          R21
      264 LOADNIL                          R22
      265 FORGPREP                         R20
      266 GETTABLEKS                       R25 R24 K2 ["layoutSize"]
      268 ADD                              R8 R8 R25
      269 FORGLOOP                         R20 2 ; [-4]
      271 GETUPVAL                         R20 0
      272 CALL                             R20 0 1
      273 DUPTABLE                         R21 K8 [{"x", "y", "width", "height"}]
      274 SETTABLEKS                       R1 R21 K4 ["x"]
      276 SETTABLEKS                       R2 R21 K5 ["y"]
      278 SETTABLEKS                       R3 R21 K6 ["width"]
      280 SETTABLEKS                       R4 R21 K7 ["height"]
      282 SETTABLEKS                       R21 R20 K9 ["container"]
      284 SETTABLEKS                       R8 R20 K10 ["totalData"]
      286 MOVE                             R21 R20
      287 GETIMPORT                        R22 K13 [table.sort]
      289 GETTABLEKS                       R23 R0 K0 ["Children"]
      291 DUPCLOSURE                       R24 K21 [PROTO_14]
      292 CALL                             R22 2 0
      293 GETTABLEKS                       R22 R0 K0 ["Children"]
      295 LOADNIL                          R23
      296 LOADNIL                          R24
      297 FORGPREP                         R22
      298 GETTABLEKS                       R27 R26 K2 ["layoutSize"]
      300 JUMPIFEQKN                       R27 K1 [0] ; [+7]
      302 GETUPVAL                         R27 1
      303 MOVE                             R28 R21
      304 MOVE                             R29 R26
      305 CALL                             R27 2 1
      306 JUMPIFNOT                        R27 ; [+1]
      307 MOVE                             R21 R27
      308 FORGLOOP                         R22 2 ; [-11]
      310 MOVE                             R21 R20
      311 JUMPIFEQKNIL                     R21 ; [+12]
      313 GETUPVAL                         R22 2
      314 MOVE                             R23 R21
      315 CALL                             R22 1 0
      316 GETTABLEKS                       R22 R21 K15 ["nextLayout"]
      318 JUMPIFNOT                        R22 ; [+5]
      319 GETTABLEKS                       R21 R21 K15 ["nextLayout"]
      321 JUMP                             ; [+1]
      322 JUMP                             ; [+1]
      323 JUMPBACK                         ; [-13]
      324 FORNLOOP                         R12
      325 GETTABLEKS                       R12 R0 K0 ["Children"]
      327 LOADNIL                          R13
      328 LOADNIL                          R14
      329 FORGPREP                         R12
      330 GETTABLEKS                       R17 R16 K22 ["Size"]
      332 JUMPIFEQKN                       R17 K1 [0] ; [+144]
      334 GETTABLEKS                       R17 R16 K17 ["rectangle"]
      336 JUMPIFEQKNIL                     R17 ; [+140]
      338 GETTABLEKS                       R18 R16 K0 ["Children"]
      340 JUMPIFNOT                        R18 ; [+8]
      341 GETTABLEKS                       R19 R16 K0 ["Children"]
      343 LENGTH                           R18 R19
      344 LOADN                            R19 0
      345 JUMPIFNOTLT                      R19 R18 ; [+3]
      347 LOADB                            R17 1
      348 JUMP                             ; [+1]
      349 LOADB                            R17 0
      350 JUMPIFNOT                        R17 ; [+3]
      351 LOADB                            R17 1
      352 SETTABLEKS                       R17 R16 K23 ["showHeader"]
      354 GETTABLEKS                       R17 R16 K23 ["showHeader"]
      356 JUMPIFNOT                        R17 ; [+47]
      357 GETTABLEKS                       R18 R16 K24 ["original"]
      359 JUMPIFNOT                        R18 ; [+5]
      360 GETTABLEKS                       R17 R16 K24 ["original"]
      362 GETTABLEKS                       R17 R17 K25 ["Name"]
      364 JUMPIF                           R17 ; [+1]
      365 LOADK                            R17 K26 [""]
      366 GETTABLEKS                       R18 R16 K17 ["rectangle"]
      368 GETTABLEKS                       R18 R18 K7 ["height"]
      370 LOADN                            R19 26
      371 JUMPIFLT                         R18 R19 ; [+29]
      373 GETTABLEKS                       R18 R16 K17 ["rectangle"]
      375 GETTABLEKS                       R18 R18 K6 ["width"]
      377 LOADN                            R19 20
      378 JUMPIFLT                         R18 R19 ; [+22]
      380 GETTABLEKS                       R18 R16 K17 ["rectangle"]
      382 GETTABLEKS                       R18 R18 K7 ["height"]
      384 LOADN                            R19 20
      385 JUMPIFLT                         R18 R19 ; [+15]
      387 LOADN                            R18 24
      388 GETTABLEKS                       R20 R16 K17 ["rectangle"]
      390 GETTABLEKS                       R20 R20 K7 ["height"]
      392 MULK                             R19 R20 K27 [0.4]
      393 JUMPIFLT                         R19 R18 ; [+7]
      395 GETIMPORT                        R18 K30 [string.find]
      397 MOVE                             R19 R17
      398 LOADK                            R20 K31 ["^rbxassetid://"]
      399 CALL                             R18 2 1
      400 JUMPIFNOT                        R18 ; [+3]
      401 LOADB                            R18 0
      402 SETTABLEKS                       R18 R16 K23 ["showHeader"]
      404 LOADN                            R17 0
      405 GETTABLEKS                       R18 R16 K0 ["Children"]
      407 JUMPIFEQKNIL                     R18 ; [+6]
      409 GETTABLEKS                       R19 R16 K0 ["Children"]
      411 LENGTH                           R18 R19
      412 JUMPIFNOTEQKN                    R18 K1 [0] ; [+2]
      414 LOADN                            R17 1
      415 GETTABLEKS                       R18 R16 K23 ["showHeader"]
      417 JUMPIFNOT                        R18 ; [+31]
      418 GETUPVAL                         R18 3
      419 MOVE                             R19 R16
      420 GETTABLEKS                       R21 R16 K17 ["rectangle"]
      422 GETTABLEKS                       R21 R21 K4 ["x"]
      424 ADD                              R20 R21 R17
      425 GETTABLEKS                       R23 R16 K17 ["rectangle"]
      427 GETTABLEKS                       R23 R23 K5 ["y"]
      429 ADD                              R22 R23 R17
      430 ADDK                             R21 R22 K32 [24]
      431 GETTABLEKS                       R23 R16 K17 ["rectangle"]
      433 GETTABLEKS                       R23 R23 K6 ["width"]
      435 MULK                             R24 R17 K33 [2]
      436 SUB                              R22 R23 R24
      437 GETTABLEKS                       R24 R16 K17 ["rectangle"]
      439 GETTABLEKS                       R24 R24 K7 ["height"]
      441 MULK                             R26 R17 K33 [2]
      442 ADDK                             R25 R26 K32 [24]
      443 SUB                              R23 R24 R25
      444 ADDK                             R24 R5 K3 [1]
      445 MOVE                             R25 R6
      446 MOVE                             R26 R7
      447 CALL                             R18 8 0
      448 JUMP                             ; [+28]
      449 GETUPVAL                         R18 3
      450 MOVE                             R19 R16
      451 GETTABLEKS                       R21 R16 K17 ["rectangle"]
      453 GETTABLEKS                       R21 R21 K4 ["x"]
      455 ADD                              R20 R21 R17
      456 GETTABLEKS                       R22 R16 K17 ["rectangle"]
      458 GETTABLEKS                       R22 R22 K5 ["y"]
      460 ADD                              R21 R22 R17
      461 GETTABLEKS                       R23 R16 K17 ["rectangle"]
      463 GETTABLEKS                       R23 R23 K6 ["width"]
      465 MULK                             R24 R17 K33 [2]
      466 SUB                              R22 R23 R24
      467 GETTABLEKS                       R24 R16 K17 ["rectangle"]
      469 GETTABLEKS                       R24 R24 K7 ["height"]
      471 MULK                             R25 R17 K33 [2]
      472 SUB                              R23 R24 R25
      473 ADDK                             R24 R5 K3 [1]
      474 MOVE                             R25 R6
      475 MOVE                             R26 R7
      476 CALL                             R18 8 0
      477 FORGLOOP                         R12 2 ; [-148]
      479 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOTEQKNIL                  R1 ; [+4]
        2 NEWTABLE                         R3 0 0
        4 RETURN                           R3 1
        5 JUMPIFNOTEQ                      R1 R2 ; [+8]
        7 NEWTABLE                         R3 0 1
        9 GETTABLEKS                       R4 R1 K0 ["Name"]
       11 SETLIST                          R3 R4 1 [1]
       13 RETURN                           R3 1
       14 NEWTABLE                         R3 0 1
       16 MOVE                             R4 R1
       17 SETLIST                          R3 R4 1 [1]
       19 LOADN                            R4 1
       20 NEWTABLE                         R5 0 0
       22 LOADNIL                          R6
       23 SETTABLE                         R6 R5 R1
       24 LENGTH                           R6 R3
       25 JUMPIFNOTLE                      R4 R6 ; [+45]
       27 GETTABLE                         R6 R3 R4
       28 ADDK                             R4 R4 K1 [1]
       29 GETTABLEKS                       R7 R6 K2 ["Children"]
       31 JUMPIFNOT                        R7 ; [+38]
       32 MOVE                             R8 R7
       33 LOADNIL                          R9
       34 LOADNIL                          R10
       35 FORGPREP                         R8
       36 GETTABLE                         R13 R5 R12
       37 JUMPIFNOTEQKNIL                  R13 ; [+30]
       39 SETTABLE                         R6 R5 R12
       40 JUMPIFNOTEQ                      R12 R2 ; [+24]
       42 NEWTABLE                         R13 0 0
       44 MOVE                             R14 R12
       45 JUMPIFNOT                        R14 ; [+7]
       46 LENGTH                           R16 R13
       47 ADDK                             R15 R16 K1 [1]
       48 GETTABLEKS                       R16 R14 K0 ["Name"]
       50 SETTABLE                         R16 R13 R15
       51 GETTABLE                         R14 R5 R14
       52 JUMPBACK                         ; [-8]
       53 LOADN                            R15 1
       54 LENGTH                           R16 R13
       55 JUMPIFNOTLT                      R15 R16 ; [+8]
       57 GETTABLE                         R17 R13 R16
       58 GETTABLE                         R18 R13 R15
       59 SETTABLE                         R17 R13 R15
       60 SETTABLE                         R18 R13 R16
       61 ADDK                             R15 R15 K1 [1]
       62 SUBK                             R16 R16 K1 [1]
       63 JUMPBACK                         ; [-9]
       64 RETURN                           R13 1
       65 LENGTH                           R14 R3
       66 ADDK                             R13 R14 K1 [1]
       67 SETTABLE                         R12 R3 R13
       68 FORGLOOP                         R8 2 ; [-33]
       70 JUMPBACK                         ; [-47]
       71 NEWTABLE                         R6 0 0
       73 RETURN                           R6 1

PROTO_17:
        0 MOVE                             R8 R1
        1 JUMPIFNOT                        R5 ; [+49]
        2 LENGTH                           R9 R5
        3 LOADN                            R10 0
        4 JUMPIFNOTLT                      R10 R9 ; [+46]
        6 MOVE                             R9 R8
        7 GETTABLEKS                       R10 R8 K0 ["Name"]
        9 GETTABLEN                        R11 R5 1
       10 JUMPIFNOTEQ                      R10 R11 ; [+34]
       12 LOADN                            R12 2
       13 LENGTH                           R10 R5
       14 LOADN                            R11 1
       15 FORNPREP                         R10
       16 GETTABLE                         R13 R5 R12
       17 LOADB                            R14 0
       18 GETTABLEKS                       R15 R9 K1 ["Children"]
       20 JUMPIF                           R15 ; [+2]
       21 NEWTABLE                         R15 0 0
       23 LOADNIL                          R16
       24 LOADNIL                          R17
       25 FORGPREP                         R15
       26 GETTABLEKS                       R20 R19 K0 ["Name"]
       28 JUMPIFNOTEQ                      R20 R13 ; [+4]
       30 MOVE                             R9 R19
       31 LOADB                            R14 1
       32 JUMP                             ; [+2]
       33 FORGLOOP                         R15 2 ; [-8]
       35 JUMPIFNOTEQKB                    R14 FALSE ; [+7]
       37 GETIMPORT                        R15 K3 [warn]
       39 LOADK                            R16 K4 ["Couldn't find zoom down node in tree"]
       40 GETTABLE                         R17 R5 R12
       41 CALL                             R15 2 0
       42 JUMP                             ; [+7]
       43 FORNLOOP                         R10
       44 JUMP                             ; [+5]
       45 GETIMPORT                        R10 K3 [warn]
       47 LOADK                            R11 K4 ["Couldn't find zoom down node in tree"]
       48 GETTABLEN                        R12 R5 1
       49 CALL                             R10 2 0
       50 MOVE                             R8 R9
       51 GETUPVAL                         R9 0
       52 MOVE                             R10 R8
       53 MOVE                             R11 R7
       54 CALL                             R9 2 1
       55 DUPTABLE                         R10 K9 [{"x", "y", "width", "height"}]
       56 LOADN                            R11 0
       57 SETTABLEKS                       R11 R10 K5 ["x"]
       59 LOADN                            R11 0
       60 SETTABLEKS                       R11 R10 K6 ["y"]
       62 SETTABLEKS                       R2 R10 K7 ["width"]
       64 SETTABLEKS                       R3 R10 K8 ["height"]
       66 SETTABLEKS                       R10 R9 K10 ["rectangle"]
       68 GETUPVAL                         R10 1
       69 MOVE                             R11 R9
       70 LOADN                            R12 0
       71 LOADN                            R13 0
       72 MOVE                             R14 R2
       73 MOVE                             R15 R3
       74 LOADN                            R16 0
       75 MOVE                             R17 R4
       76 MOVE                             R18 R6
       77 CALL                             R10 8 0
       78 RETURN                           R9 1

PROTO_18:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R3 R0 K0 ["rectangle"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETTABLEKS                       R3 R0 K0 ["rectangle"]
       10 GETTABLEKS                       R3 R3 K1 ["x"]
       12 JUMPIFLT                         R1 R3 ; [+29]
       14 GETTABLEKS                       R3 R0 K0 ["rectangle"]
       16 GETTABLEKS                       R3 R3 K2 ["y"]
       18 JUMPIFLT                         R2 R3 ; [+23]
       20 GETTABLEKS                       R4 R0 K0 ["rectangle"]
       22 GETTABLEKS                       R4 R4 K1 ["x"]
       24 GETTABLEKS                       R5 R0 K0 ["rectangle"]
       26 GETTABLEKS                       R5 R5 K3 ["width"]
       28 ADD                              R3 R4 R5
       29 JUMPIFLT                         R3 R1 ; [+12]
       31 GETTABLEKS                       R4 R0 K0 ["rectangle"]
       33 GETTABLEKS                       R4 R4 K2 ["y"]
       35 GETTABLEKS                       R5 R0 K0 ["rectangle"]
       37 GETTABLEKS                       R5 R5 K4 ["height"]
       39 ADD                              R3 R4 R5
       40 JUMPIFNOTLT                      R3 R2 ; [+3]
       42 LOADNIL                          R3
       43 RETURN                           R3 1
       44 GETTABLEKS                       R3 R0 K5 ["Children"]
       46 JUMPIFNOT                        R3 ; [+15]
       47 GETTABLEKS                       R3 R0 K5 ["Children"]
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

PROTO_19:
        0 GETGLOBAL                        R6 K0 ["getMouseOver"]
        2 MOVE                             R7 R1
        3 SUB                              R8 R4 R2
        4 SUB                              R9 R5 R3
        5 CALL                             R6 3 -1
        6 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["SceneAnalysis"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Src"]
       13 GETTABLEKS                       R3 R3 K7 ["Components"]
       15 GETTABLEKS                       R3 R3 K8 ["Treemap"]
       17 GETTABLEKS                       R3 R3 K9 ["TreemapTypes"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 CAPTURE                          VAL R3
       22 DUPCLOSURE                       R4 K11 [PROTO_1]
       23 DUPCLOSURE                       R5 K12 [PROTO_2]
       24 DUPCLOSURE                       R6 K13 [PROTO_3]
       25 DUPCLOSURE                       R7 K14 [PROTO_4]
       26 DUPCLOSURE                       R8 K15 [PROTO_5]
       27 DUPCLOSURE                       R9 K16 [PROTO_6]
       28 DUPCLOSURE                       R10 K17 [PROTO_7]
       29 DUPCLOSURE                       R11 K18 [PROTO_8]
       30 DUPCLOSURE                       R12 K19 [PROTO_9]
       31 CAPTURE                          VAL R9
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R10
       34 CAPTURE                          VAL R11
       35 DUPCLOSURE                       R13 K20 [PROTO_10]
       36 CAPTURE                          VAL R9
       37 CAPTURE                          VAL R11
       38 CAPTURE                          VAL R10
       39 DUPCLOSURE                       R14 K21 [PROTO_11]
       40 DUPCLOSURE                       R15 K22 [PROTO_15]
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R12
       43 CAPTURE                          VAL R13
       44 CAPTURE                          VAL R15
       45 DUPCLOSURE                       R16 K23 [PROTO_16]
       46 SETTABLEKS                       R16 R0 K24 ["getPathToNode"]
       48 DUPCLOSURE                       R16 K25 [PROTO_17]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R15
       51 SETTABLEKS                       R16 R0 K26 ["solveTreemap"]
       53 DUPCLOSURE                       R16 K27 [PROTO_18]
       54 SETGLOBAL                        R16 K28 ["getMouseOver"]
       56 DUPCLOSURE                       R16 K29 [PROTO_19]
       57 SETTABLEKS                       R16 R0 K28 ["getMouseOver"]
       59 RETURN                           R0 1
