PROTO_0:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFNOT                        R2 ; [+3]
        5 LOADNIL                          R2
        6 LOADN                            R3 1
        7 RETURN                           R2 2
        8 GETUPVAL                         R3 1
        9 GETTABLE                         R2 R3 R0
       10 JUMPIF                           R2 ; [+3]
       11 LOADNIL                          R3
       12 LOADN                            R4 1
       13 RETURN                           R3 2
       14 GETIMPORT                        R3 K2 [Vector2.new]
       16 GETTABLEKS                       R6 R2 K3 ["ImageRectSize"]
       18 GETTABLEKS                       R5 R6 K4 ["X"]
       20 GETUPVAL                         R6 2
       21 DIV                              R4 R5 R6
       22 GETTABLEKS                       R7 R2 K3 ["ImageRectSize"]
       24 GETTABLEKS                       R6 R7 K5 ["Y"]
       26 GETUPVAL                         R7 2
       27 DIV                              R5 R6 R7
       28 CALL                             R3 2 1
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R4 R5 K6 ["Medium"]
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R5 R6 K7 ["includes"]
       35 GETUPVAL                         R7 5
       36 GETUPVAL                         R9 3
       37 GETTABLEKS                       R8 R9 K8 ["Small"]
       39 GETTABLE                         R6 R7 R8
       40 MOVE                             R7 R3
       41 CALL                             R5 2 1
       42 JUMPIFNOT                        R5 ; [+4]
       43 GETUPVAL                         R5 3
       44 GETTABLEKS                       R4 R5 K8 ["Small"]
       46 JUMP                             ; [+29]
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R5 R6 K7 ["includes"]
       50 GETUPVAL                         R7 5
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R8 R9 K6 ["Medium"]
       54 GETTABLE                         R6 R7 R8
       55 MOVE                             R7 R3
       56 CALL                             R5 2 1
       57 JUMPIFNOT                        R5 ; [+4]
       58 GETUPVAL                         R5 3
       59 GETTABLEKS                       R4 R5 K6 ["Medium"]
       61 JUMP                             ; [+14]
       62 GETUPVAL                         R6 4
       63 GETTABLEKS                       R5 R6 K7 ["includes"]
       65 GETUPVAL                         R7 5
       66 GETUPVAL                         R9 3
       67 GETTABLEKS                       R8 R9 K9 ["Large"]
       69 GETTABLE                         R6 R7 R8
       70 MOVE                             R7 R3
       71 CALL                             R5 2 1
       72 JUMPIFNOT                        R5 ; [+3]
       73 GETUPVAL                         R5 3
       74 GETTABLEKS                       R4 R5 K9 ["Large"]
       76 MOVE                             R5 R3
       77 GETUPVAL                         R8 6
       78 GETTABLE                         R7 R8 R4
       79 GETTABLE                         R6 R7 R1
       80 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["FoundationImages"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["Images"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Utility"]
       25 GETTABLEKS                       R6 R7 K11 ["isBuilderIcon"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R8 R0 K12 ["Enums"]
       32 GETTABLEKS                       R7 R8 K13 ["IconSize"]
       34 CALL                             R6 1 1
       35 NEWTABLE                         R7 4 0
       37 GETTABLEKS                       R8 R6 K14 ["Small"]
       39 NEWTABLE                         R9 0 2
       41 GETIMPORT                        R10 K17 [Vector2.new]
       43 LOADN                            R11 16
       44 LOADN                            R12 16
       45 CALL                             R10 2 1
       46 GETIMPORT                        R11 K17 [Vector2.new]
       48 LOADN                            R12 18
       49 LOADN                            R13 18
       50 CALL                             R11 2 -1
       51 SETLIST                          R9 R10 -1 [1]
       53 SETTABLE                         R9 R7 R8
       54 GETTABLEKS                       R8 R6 K18 ["Medium"]
       56 NEWTABLE                         R9 0 2
       58 GETIMPORT                        R10 K17 [Vector2.new]
       60 LOADN                            R11 28
       61 LOADN                            R12 28
       62 CALL                             R10 2 1
       63 GETIMPORT                        R11 K17 [Vector2.new]
       65 LOADN                            R12 36
       66 LOADN                            R13 36
       67 CALL                             R11 2 -1
       68 SETLIST                          R9 R10 -1 [1]
       70 SETTABLE                         R9 R7 R8
       71 GETTABLEKS                       R8 R6 K19 ["Large"]
       73 NEWTABLE                         R9 0 1
       75 GETIMPORT                        R10 K17 [Vector2.new]
       77 LOADN                            R11 48
       78 LOADN                            R12 48
       79 CALL                             R10 2 -1
       80 SETLIST                          R9 R10 -1 [1]
       82 SETTABLE                         R9 R7 R8
       83 GETTABLEKS                       R8 R3 K20 ["getResolutionScale"]
       85 CALL                             R8 0 1
       86 DUPTABLE                         R9 K21 [{"Small", "Medium", "Large"}]
       87 NEWTABLE                         R10 4 0
       89 GETTABLEKS                       R11 R6 K22 ["XSmall"]
       91 LOADK                            R12 K23 [0.66667]
       92 SETTABLE                         R12 R10 R11
       93 GETTABLEKS                       R11 R6 K14 ["Small"]
       95 LOADK                            R12 K24 [0.88889]
       96 SETTABLE                         R12 R10 R11
       97 GETTABLEKS                       R11 R6 K18 ["Medium"]
       99 LOADK                            R12 K25 [1.11111]
      100 SETTABLE                         R12 R10 R11
      101 GETTABLEKS                       R11 R6 K19 ["Large"]
      103 LOADK                            R12 K26 [1.33333]
      104 SETTABLE                         R12 R10 R11
      105 SETTABLEKS                       R10 R9 K14 ["Small"]
      107 NEWTABLE                         R10 4 0
      109 GETTABLEKS                       R11 R6 K22 ["XSmall"]
      111 LOADK                            R12 K27 [0.45]
      112 SETTABLE                         R12 R10 R11
      113 GETTABLEKS                       R11 R6 K14 ["Small"]
      115 LOADK                            R12 K28 [0.600003]
      116 SETTABLE                         R12 R10 R11
      117 GETTABLEKS                       R11 R6 K18 ["Medium"]
      119 LOADK                            R12 K29 [0.749997]
      120 SETTABLE                         R12 R10 R11
      121 GETTABLEKS                       R11 R6 K19 ["Large"]
      123 LOADK                            R12 K30 [0.9]
      124 SETTABLE                         R12 R10 R11
      125 SETTABLEKS                       R10 R9 K18 ["Medium"]
      127 NEWTABLE                         R10 4 0
      129 GETTABLEKS                       R11 R6 K22 ["XSmall"]
      131 LOADK                            R12 K31 [0.245457]
      132 SETTABLE                         R12 R10 R11
      133 GETTABLEKS                       R11 R6 K14 ["Small"]
      135 LOADK                            R12 K32 [0.327276]
      136 SETTABLE                         R12 R10 R11
      137 GETTABLEKS                       R11 R6 K18 ["Medium"]
      139 LOADK                            R12 K33 [0.409095]
      140 SETTABLE                         R12 R10 R11
      141 GETTABLEKS                       R11 R6 K19 ["Large"]
      143 LOADK                            R12 K34 [0.490905]
      144 SETTABLE                         R12 R10 R11
      145 SETTABLEKS                       R10 R9 K19 ["Large"]
      147 DUPCLOSURE                       R10 K35 [PROTO_0]
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R9
      155 RETURN                           R10 1
