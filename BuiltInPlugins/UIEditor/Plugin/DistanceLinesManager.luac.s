PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["setVisible"]
        4 CALL                             R0 2 0
        5 LOADNIL                          R0
        6 SETUPVAL                         R0 1
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getFilteredSelection"]
        3 CALL                             R1 1 1
        4 LENGTH                           R2 R1
        5 JUMPIFEQKN                       R2 K1 [1] ; [+9]
        7 GETUPVAL                         R2 1
        8 LOADB                            R4 0
        9 NAMECALL                         R2 R2 K2 ["setVisible"]
       11 CALL                             R2 2 0
       12 LOADNIL                          R2
       13 SETUPVAL                         R2 2
       14 RETURN                           R0 0
       15 GETTABLEN                        R2 R1 1
       16 GETTABLEKS                       R3 R2 K3 ["Parent"]
       18 LOADK                            R6 K4 ["GuiBase2d"]
       19 NAMECALL                         R4 R3 K5 ["IsA"]
       21 CALL                             R4 2 1
       22 JUMPIF                           R4 ; [+8]
       23 GETUPVAL                         R4 1
       24 LOADB                            R6 0
       25 NAMECALL                         R4 R4 K2 ["setVisible"]
       27 CALL                             R4 2 0
       28 LOADNIL                          R4
       29 SETUPVAL                         R4 2
       30 RETURN                           R0 0
       31 SETUPVAL                         R2 2
       32 GETUPVAL                         R4 1
       33 NAMECALL                         R4 R4 K6 ["update"]
       35 CALL                             R4 1 0
       36 GETUPVAL                         R4 1
       37 LOADB                            R6 1
       38 NAMECALL                         R4 R4 K2 ["setVisible"]
       40 CALL                             R4 2 0
       41 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K1 ["X"]
        6 CALL                             R1 1 1
        7 SETUPVAL                         R1 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K0 ["new"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["Y"]
       14 CALL                             R1 1 1
       15 SETUPVAL                         R1 3
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["destroy"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 0
       10 LOADNIL                          R1
       11 SETUPVAL                         R1 1
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R1 R1 K0 ["update"]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R3 0
       11 NAMECALL                         R1 R1 K0 ["update"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["Parent"]
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["AbsoluteRotation"]
       11 FASTCALL1                        MATH_ABS R4 ; [+2]
       12 GETIMPORT                        R3 K4 [math.abs]
       14 CALL                             R3 1 1
       15 LOADK                            R4 K5 [0.001]
       16 JUMPIFLE                         R4 R3 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 JUMPIFNOT                        R1 ; [+12]
       21 JUMPIFNOT                        R2 ; [+11]
       22 GETUPVAL                         R3 1
       23 LOADB                            R5 0
       24 NAMECALL                         R3 R3 K6 ["setVisible"]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R3 2
       28 LOADB                            R5 0
       29 NAMECALL                         R3 R3 K6 ["setVisible"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R3 1
       34 MOVE                             R5 R1
       35 NAMECALL                         R3 R3 K6 ["setVisible"]
       37 CALL                             R3 2 0
       38 GETUPVAL                         R3 2
       39 MOVE                             R5 R1
       40 NAMECALL                         R3 R3 K6 ["setVisible"]
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R2 R2 K4 ["Parent"]
        9 GETTABLEKS                       R2 R2 K5 ["Enum"]
       11 GETTABLEKS                       R2 R2 K6 ["Axis"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K1 [require]
       16 GETIMPORT                        R3 K3 [script]
       18 GETTABLEKS                       R3 R3 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K7 ["DistanceLine"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K1 [require]
       25 GETIMPORT                        R4 K3 [script]
       27 GETTABLEKS                       R4 R4 K4 ["Parent"]
       29 GETTABLEKS                       R4 R4 K8 ["Log"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K1 [require]
       34 GETIMPORT                        R5 K3 [script]
       36 GETTABLEKS                       R5 R5 K4 ["Parent"]
       38 GETTABLEKS                       R5 R5 K9 ["SelectionManager"]
       40 CALL                             R4 1 1
       41 LOADNIL                          R5
       42 LOADNIL                          R6
       43 LOADNIL                          R7
       44 NEWCLOSURE                       R8 P0
       45 CAPTURE                          VAL R0
       46 CAPTURE                          REF R5
       47 NEWCLOSURE                       R9 P1
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R0
       50 CAPTURE                          REF R5
       51 SETTABLEKS                       R9 R0 K10 ["onSelectionChanged"]
       53 NEWCLOSURE                       R9 P2
       54 CAPTURE                          REF R6
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R1
       57 CAPTURE                          REF R7
       58 SETTABLEKS                       R9 R0 K11 ["On"]
       60 NEWCLOSURE                       R9 P3
       61 CAPTURE                          REF R6
       62 CAPTURE                          REF R7
       63 SETTABLEKS                       R9 R0 K12 ["Off"]
       65 NEWCLOSURE                       R9 P4
       66 CAPTURE                          REF R5
       67 CAPTURE                          REF R6
       68 CAPTURE                          REF R7
       69 SETTABLEKS                       R9 R0 K13 ["update"]
       71 NEWCLOSURE                       R9 P5
       72 CAPTURE                          REF R5
       73 CAPTURE                          REF R6
       74 CAPTURE                          REF R7
       75 SETTABLEKS                       R9 R0 K14 ["setVisible"]
       77 CLOSEUPVALS                      R5
       78 RETURN                           R0 1
