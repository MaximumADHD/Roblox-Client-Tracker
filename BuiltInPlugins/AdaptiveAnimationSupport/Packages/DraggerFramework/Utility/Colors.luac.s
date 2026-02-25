PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["Z_AXIS"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+8]
        7 GETIMPORT                        R1 K3 [Color3.new]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 LOADK                            R4 K4 [0.6]
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K5 ["BLACK"]
       17 GETUPVAL                         R5 0
       18 JUMPIFNOT                        R5 ; [+2]
       19 LOADK                            R4 K6 [0.2]
       20 JUMP                             ; [+1]
       21 LOADK                            R4 K7 [0.3]
       22 NAMECALL                         R1 R0 K8 ["Lerp"]
       24 CALL                             R1 3 -1
       25 RETURN                           R1 -1

PROTO_1:
        0 LOADK                            R4 K0 [0.2126]
        1 GETTABLEKS                       R6 R0 K2 ["R"]
        3 POWK                             R5 R6 K1 [2.2]
        4 MUL                              R3 R4 R5
        5 LOADK                            R5 K3 [0.7152]
        6 GETTABLEKS                       R7 R0 K4 ["G"]
        8 POWK                             R6 R7 K1 [2.2]
        9 MUL                              R4 R5 R6
       10 ADD                              R2 R3 R4
       11 LOADK                            R4 K5 [0.0722]
       12 GETTABLEKS                       R6 R0 K6 ["B"]
       14 POWK                             R5 R6 K1 [2.2]
       15 MUL                              R3 R4 R5
       16 ADD                              R1 R2 R3
       17 LOADK                            R2 K7 [0.217637640824031]
       18 JUMPIFNOTLT                      R2 R1 ; [+5]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K8 ["BLACK"]
       23 RETURN                           R2 1
       24 GETUPVAL                         R2 1
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Flags"]
       11 GETTABLEKS                       R2 R3 K6 ["getFFlagDraggerImprovements"]
       13 CALL                             R1 1 1
       14 CALL                             R1 0 1
       15 NEWTABLE                         R2 16 0
       17 GETIMPORT                        R3 K9 [Color3.new]
       19 LOADN                            R4 1
       20 LOADN                            R5 1
       21 LOADN                            R6 1
       22 CALL                             R3 3 1
       23 SETTABLEKS                       R3 R2 K10 ["WHITE"]
       25 GETIMPORT                        R3 K9 [Color3.new]
       27 LOADN                            R4 0
       28 LOADN                            R5 0
       29 LOADN                            R6 0
       30 CALL                             R3 3 1
       31 SETTABLEKS                       R3 R2 K11 ["BLACK"]
       33 GETIMPORT                        R3 K9 [Color3.new]
       35 LOADK                            R4 K12 [0.7]
       36 LOADK                            R5 K12 [0.7]
       37 LOADK                            R6 K12 [0.7]
       38 CALL                             R3 3 1
       39 SETTABLEKS                       R3 R2 K13 ["GRAY"]
       41 GETIMPORT                        R3 K9 [Color3.new]
       43 LOADN                            R4 1
       44 LOADN                            R5 0
       45 LOADN                            R6 0
       46 CALL                             R3 3 1
       47 SETTABLEKS                       R3 R2 K14 ["X_AXIS"]
       49 GETIMPORT                        R3 K9 [Color3.new]
       51 LOADN                            R4 0
       52 LOADN                            R5 1
       53 LOADN                            R6 0
       54 CALL                             R3 3 1
       55 SETTABLEKS                       R3 R2 K15 ["Y_AXIS"]
       57 JUMPIFNOT                        R1 ; [+7]
       58 GETIMPORT                        R3 K9 [Color3.new]
       60 LOADK                            R4 K16 [0.15]
       61 LOADK                            R5 K16 [0.15]
       62 LOADN                            R6 1
       63 CALL                             R3 3 1
       64 JUMP                             ; [+6]
       65 GETIMPORT                        R3 K9 [Color3.new]
       67 LOADN                            R4 0
       68 LOADN                            R5 0
       69 LOADN                            R6 1
       70 CALL                             R3 3 1
       71 SETTABLEKS                       R3 R2 K17 ["Z_AXIS"]
       73 GETIMPORT                        R3 K9 [Color3.new]
       75 LOADN                            R4 1
       76 LOADN                            R5 1
       77 LOADN                            R6 1
       78 CALL                             R3 3 1
       79 SETTABLEKS                       R3 R2 K18 ["WeldJoint"]
       81 GETIMPORT                        R3 K9 [Color3.new]
       83 LOADN                            R4 0
       84 LOADN                            R5 0
       85 LOADN                            R6 1
       86 CALL                             R3 3 1
       87 SETTABLEKS                       R3 R2 K19 ["RotatingJoint"]
       89 GETIMPORT                        R3 K9 [Color3.new]
       91 LOADN                            R4 1
       92 LOADN                            R5 0
       93 LOADN                            R6 0
       94 CALL                             R3 3 1
       95 SETTABLEKS                       R3 R2 K20 ["InvalidJoint"]
       97 GETIMPORT                        R3 K9 [Color3.new]
       99 LOADN                            R4 1
      100 LOADN                            R5 1
      101 LOADN                            R6 0
      102 CALL                             R3 3 1
      103 SETTABLEKS                       R3 R2 K21 ["SizeLimitReached"]
      105 DUPCLOSURE                       R3 K22 [PROTO_0]
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R2
      108 SETTABLEKS                       R3 R2 K23 ["makeDimmed"]
      110 GETIMPORT                        R3 K9 [Color3.new]
      112 LOADK                            R4 K24 [0.75]
      113 LOADK                            R5 K24 [0.75]
      114 LOADK                            R6 K24 [0.75]
      115 CALL                             R3 3 1
      116 DUPCLOSURE                       R4 K25 [PROTO_1]
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R3
      119 SETTABLEKS                       R4 R2 K26 ["mostConstrasting"]
      121 RETURN                           R2 1
