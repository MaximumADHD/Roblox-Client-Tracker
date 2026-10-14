PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 RETURN                           R0 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+2]
        2 RETURN                           R0 1
        3 GETIMPORT                        R1 K1 [pcall]
        5 DUPCLOSURE                       R2 K2 [PROTO_0]
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+5]
        8 JUMPIFEQKNIL                     R2 ; [+4]
       10 GETTABLEKS                       R3 R2 K3 ["Name"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 JUMPIFEQKS                       R3 K4 ["Dark"] ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 RETURN                           R4 1

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 MOVE                             R1 R0
        3 JUMP                             ; [+15]
        4 GETIMPORT                        R2 K1 [pcall]
        6 DUPCLOSURE                       R3 K2 [PROTO_0]
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R2 ; [+5]
        9 JUMPIFEQKNIL                     R3 ; [+4]
       11 GETTABLEKS                       R4 R3 K3 ["Name"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R4
       15 JUMPIFEQKS                       R4 K4 ["Dark"] ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 JUMPIFNOT                        R1 ; [+5]
       20 GETUPVAL                         R1 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K5 ["default"]
       24 RETURN                           R1 2
       25 GETUPVAL                         R1 2
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R2 R2 K5 ["default"]
       29 RETURN                           R1 2

PROTO_3:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 MOVE                             R4 R1
        3 JUMP                             ; [+15]
        4 GETIMPORT                        R5 K1 [pcall]
        6 DUPCLOSURE                       R6 K2 [PROTO_0]
        7 CALL                             R5 1 2
        8 JUMPIFNOT                        R5 ; [+5]
        9 JUMPIFEQKNIL                     R6 ; [+4]
       11 GETTABLEKS                       R7 R6 K3 ["Name"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R7
       15 JUMPIFEQKS                       R7 K4 ["Dark"] ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 JUMPIFNOT                        R4 ; [+5]
       20 GETUPVAL                         R2 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K5 ["default"]
       24 JUMP                             ; [+4]
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K5 ["default"]
       29 GETTABLE                         R5 R2 R0
       30 OR                               R4 R5 R3
       31 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Networking"]
       15 GETTABLEKS                       R2 R2 K7 ["Requests"]
       17 GETTABLEKS                       R2 R2 K8 ["Constants"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R1 R1 K9 ["granularCollaboratorUpdatedLightModeColorsMap"]
       22 GETIMPORT                        R2 K4 [require]
       24 GETTABLEKS                       R3 R0 K5 ["Src"]
       26 GETTABLEKS                       R3 R3 K6 ["Networking"]
       28 GETTABLEKS                       R3 R3 K7 ["Requests"]
       30 GETTABLEKS                       R3 R3 K8 ["Constants"]
       32 CALL                             R2 1 1
       33 GETTABLEKS                       R2 R2 K10 ["granularCollaboratorUpdatedDarkModeColorsMap"]
       35 NEWTABLE                         R3 32 0
       37 LOADN                            R4 0
       38 GETTABLEKS                       R5 R1 K11 ["default"]
       40 SETTABLE                         R5 R3 R4
       41 GETTABLEKS                       R4 R1 K12 ["Blue"]
       43 SETTABLEN                        R4 R3 1
       44 GETTABLEKS                       R4 R1 K13 ["Green"]
       46 SETTABLEN                        R4 R3 2
       47 GETTABLEKS                       R4 R1 K14 ["Purple"]
       49 SETTABLEN                        R4 R3 3
       50 GETTABLEKS                       R4 R1 K15 ["Yellow"]
       52 SETTABLEN                        R4 R3 4
       53 GETTABLEKS                       R4 R1 K16 ["Orange"]
       55 SETTABLEN                        R4 R3 5
       56 GETTABLEKS                       R4 R1 K17 ["Red"]
       58 SETTABLEN                        R4 R3 6
       59 GETTABLEKS                       R4 R1 K18 ["Magenta"]
       61 SETTABLEN                        R4 R3 7
       62 GETTABLEKS                       R4 R1 K19 ["Teal"]
       64 SETTABLEN                        R4 R3 8
       65 GETTABLEKS                       R4 R1 K20 ["Turquoise"]
       67 SETTABLEN                        R4 R3 9
       68 GETTABLEKS                       R4 R1 K21 ["Rust"]
       70 SETTABLEN                        R4 R3 10
       71 GETTABLEKS                       R4 R1 K22 ["Pistachio"]
       73 SETTABLEN                        R4 R3 11
       74 GETTABLEKS                       R4 R1 K23 ["Midnight"]
       76 SETTABLEN                        R4 R3 12
       77 GETTABLEKS                       R4 R1 K24 ["Lavender"]
       79 SETTABLEN                        R4 R3 13
       80 GETTABLEKS                       R4 R1 K25 ["Pink"]
       82 SETTABLEN                        R4 R3 14
       83 GETTABLEKS                       R4 R1 K26 ["Crimson"]
       85 SETTABLEN                        R4 R3 15
       86 GETTABLEKS                       R4 R1 K27 ["Plum"]
       88 SETTABLEN                        R4 R3 16
       89 NEWTABLE                         R4 32 0
       91 LOADN                            R5 0
       92 GETTABLEKS                       R6 R2 K11 ["default"]
       94 SETTABLE                         R6 R4 R5
       95 GETTABLEKS                       R5 R2 K12 ["Blue"]
       97 SETTABLEN                        R5 R4 1
       98 GETTABLEKS                       R5 R2 K13 ["Green"]
      100 SETTABLEN                        R5 R4 2
      101 GETTABLEKS                       R5 R2 K14 ["Purple"]
      103 SETTABLEN                        R5 R4 3
      104 GETTABLEKS                       R5 R2 K15 ["Yellow"]
      106 SETTABLEN                        R5 R4 4
      107 GETTABLEKS                       R5 R2 K16 ["Orange"]
      109 SETTABLEN                        R5 R4 5
      110 GETTABLEKS                       R5 R2 K17 ["Red"]
      112 SETTABLEN                        R5 R4 6
      113 GETTABLEKS                       R5 R2 K18 ["Magenta"]
      115 SETTABLEN                        R5 R4 7
      116 GETTABLEKS                       R5 R2 K19 ["Teal"]
      118 SETTABLEN                        R5 R4 8
      119 GETTABLEKS                       R5 R2 K20 ["Turquoise"]
      121 SETTABLEN                        R5 R4 9
      122 GETTABLEKS                       R5 R2 K21 ["Rust"]
      124 SETTABLEN                        R5 R4 10
      125 GETTABLEKS                       R5 R2 K22 ["Pistachio"]
      127 SETTABLEN                        R5 R4 11
      128 GETTABLEKS                       R5 R2 K23 ["Midnight"]
      130 SETTABLEN                        R5 R4 12
      131 GETTABLEKS                       R5 R2 K24 ["Lavender"]
      133 SETTABLEN                        R5 R4 13
      134 GETTABLEKS                       R5 R2 K25 ["Pink"]
      136 SETTABLEN                        R5 R4 14
      137 GETTABLEKS                       R5 R2 K26 ["Crimson"]
      139 SETTABLEN                        R5 R4 15
      140 GETTABLEKS                       R5 R2 K27 ["Plum"]
      142 SETTABLEN                        R5 R4 16
      143 DUPCLOSURE                       R5 K28 [PROTO_1]
      144 DUPCLOSURE                       R6 K29 [PROTO_2]
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R1
      149 DUPCLOSURE                       R7 K30 [PROTO_3]
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R1
      154 RETURN                           R7 1
