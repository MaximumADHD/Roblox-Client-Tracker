PROTO_0:
        0 NEWTABLE                         R1 0 12
        2 GETTABLEKS                       R3 R0 K0 ["pos"]
        4 GETTABLEN                        R2 R3 1
        5 GETTABLEKS                       R4 R0 K0 ["pos"]
        7 GETTABLEN                        R3 R4 2
        8 GETTABLEKS                       R5 R0 K0 ["pos"]
       10 GETTABLEN                        R4 R5 3
       11 GETTABLEKS                       R6 R0 K1 ["rot"]
       13 GETTABLEN                        R5 R6 1
       14 GETTABLEKS                       R7 R0 K1 ["rot"]
       16 GETTABLEN                        R6 R7 2
       17 GETTABLEKS                       R8 R0 K1 ["rot"]
       19 GETTABLEN                        R7 R8 3
       20 GETTABLEKS                       R9 R0 K1 ["rot"]
       22 GETTABLEN                        R8 R9 4
       23 LOADN                            R9 0
       24 LOADN                            R10 0
       25 LOADN                            R11 0
       26 LOADN                            R12 0
       27 LOADN                            R13 0
       28 SETLIST                          R1 R2 12 [1]
       30 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 0 12
        2 LOADN                            R1 0
        3 LOADN                            R2 0
        4 LOADN                            R3 0
        5 LOADN                            R4 0
        6 LOADN                            R5 0
        7 LOADN                            R6 0
        8 LOADN                            R7 1
        9 LOADN                            R8 0
       10 LOADN                            R9 0
       11 LOADN                            R10 0
       12 LOADN                            R11 0
       13 LOADN                            R12 0
       14 SETLIST                          R0 R1 12 [1]
       16 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["rig_type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["R15"] ; [+3]
        4 LOADN                            R2 1
        5 JUMP                             ; [+1]
        6 LOADN                            R2 0
        7 JUMPIFNOTEQKS                    R1 K1 ["R15"] ; [+3]
        9 GETUPVAL                         R3 0
       10 JUMP                             ; [+1]
       11 GETUPVAL                         R3 1
       12 GETIMPORT                        R4 K4 [table.create]
       14 GETTABLEKS                       R6 R0 K5 ["frames"]
       16 LENGTH                           R5 R6
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R5 R0 K5 ["frames"]
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 GETIMPORT                        R10 K4 [table.create]
       25 LOADN                            R11 23
       26 CALL                             R10 1 1
       27 NEWTABLE                         R11 0 12
       29 SUBK                             R12 R8 K6 [1]
       30 GETTABLEKS                       R13 R9 K7 ["t"]
       32 LOADN                            R14 1
       33 MOVE                             R15 R2
       34 GETTABLEKS                       R17 R0 K8 ["looped"]
       36 JUMPIFNOT                        R17 ; [+2]
       37 LOADN                            R16 1
       38 JUMP                             ; [+1]
       39 LOADN                            R16 0
       40 GETTABLEKS                       R17 R0 K9 ["loop_passes"]
       42 GETTABLEKS                       R18 R0 K10 ["source_duration_s"]
       44 GETTABLEKS                       R19 R0 K11 ["fps"]
       46 GETTABLEKS                       R20 R0 K12 ["schema_version"]
       48 GETTABLEKS                       R21 R0 K13 ["n_frames"]
       50 GETTABLEKS                       R22 R0 K14 ["duration_s"]
       52 GETTABLEKS                       R24 R0 K16 ["asset_id"]
       54 ORK                              R23 R24 K15 [0]
       55 SETLIST                          R11 R12 12 [1]
       57 SETTABLEN                        R11 R10 1
       58 GETUPVAL                         R11 2
       59 GETTABLEKS                       R12 R9 K17 ["hrp"]
       61 CALL                             R11 1 1
       62 SETTABLEN                        R11 R10 2
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R12 R9 K18 ["left_hand"]
       66 CALL                             R11 1 1
       67 SETTABLEN                        R11 R10 3
       68 GETUPVAL                         R11 2
       69 GETTABLEKS                       R12 R9 K19 ["right_hand"]
       71 CALL                             R11 1 1
       72 SETTABLEN                        R11 R10 4
       73 GETUPVAL                         R11 2
       74 GETTABLEKS                       R12 R9 K20 ["left_foot"]
       76 CALL                             R11 1 1
       77 SETTABLEN                        R11 R10 5
       78 GETUPVAL                         R11 2
       79 GETTABLEKS                       R12 R9 K21 ["right_foot"]
       81 CALL                             R11 1 1
       82 SETTABLEN                        R11 R10 6
       83 MOVE                             R11 R3
       84 LOADNIL                          R12
       85 LOADNIL                          R13
       86 FORGPREP                         R11
       87 GETTABLEKS                       R17 R9 K22 ["chain"]
       89 GETTABLE                         R16 R17 R15
       90 JUMPIFEQKNIL                     R16 ; [+7]
       92 ADDK                             R17 R14 K23 [6]
       93 GETUPVAL                         R18 2
       94 MOVE                             R19 R16
       95 CALL                             R18 1 1
       96 SETTABLE                         R18 R10 R17
       97 JUMP                             ; [+18]
       98 ADDK                             R17 R14 K23 [6]
       99 NEWTABLE                         R18 0 12
      101 LOADN                            R19 0
      102 LOADN                            R20 0
      103 LOADN                            R21 0
      104 LOADN                            R22 0
      105 LOADN                            R23 0
      106 LOADN                            R24 0
      107 LOADN                            R25 1
      108 LOADN                            R26 0
      109 LOADN                            R27 0
      110 LOADN                            R28 0
      111 LOADN                            R29 0
      112 LOADN                            R30 0
      113 SETLIST                          R18 R19 12 [1]
      115 SETTABLE                         R18 R10 R17
      116 FORGLOOP                         R11 2 ; [-30]
      118 LOADN                            R13 11
      119 LOADN                            R11 23
      120 LOADN                            R12 1
      121 FORNPREP                         R11
      122 GETTABLE                         R14 R10 R13
      123 JUMPIFNOTEQKNIL                  R14 ; [+18]
      125 NEWTABLE                         R14 0 12
      127 LOADN                            R15 0
      128 LOADN                            R16 0
      129 LOADN                            R17 0
      130 LOADN                            R18 0
      131 LOADN                            R19 0
      132 LOADN                            R20 0
      133 LOADN                            R21 0
      134 LOADN                            R22 0
      135 LOADN                            R23 0
      136 LOADN                            R24 0
      137 LOADN                            R25 0
      138 LOADN                            R26 0
      139 SETLIST                          R14 R15 12 [1]
      141 SETTABLE                         R14 R10 R13
      142 FORNLOOP                         R11
      143 SETTABLE                         R10 R4 R8
      144 FORGLOOP                         R5 2 ; [-122]
      146 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 5
        3 LOADK                            R1 K0 ["torso"]
        4 LOADK                            R2 K1 ["left_arm"]
        5 LOADK                            R3 K2 ["right_arm"]
        6 LOADK                            R4 K3 ["left_leg"]
        7 LOADK                            R5 K4 ["right_leg"]
        8 SETLIST                          R0 R1 5 [1]
       10 NEWTABLE                         R1 0 5
       12 LOADK                            R2 K5 ["lower_torso"]
       13 LOADK                            R3 K6 ["left_upper_arm"]
       14 LOADK                            R4 K7 ["right_upper_arm"]
       15 LOADK                            R5 K8 ["left_upper_leg"]
       16 LOADK                            R6 K9 ["right_upper_leg"]
       17 SETLIST                          R1 R2 5 [1]
       19 DUPCLOSURE                       R2 K10 [PROTO_0]
       20 DUPCLOSURE                       R3 K11 [PROTO_1]
       21 DUPCLOSURE                       R4 K12 [PROTO_2]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R2
       25 RETURN                           R4 1
