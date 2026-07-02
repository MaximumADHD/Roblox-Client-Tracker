PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K1 ["getValue"]
        3 CALL                             R1 1 1
        4 ADDK                             R0 R1 K0 [2]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 JUMPIFNOT                        R3 ; [+53]
        9 FASTCALL1                        MATH_RAD R0 ; [+3]
       10 MOVE                             R7 R0
       11 GETIMPORT                        R6 K5 [math.rad]
       13 CALL                             R6 1 1
       14 FASTCALL1                        MATH_SIN R6 ; [+2]
       15 GETIMPORT                        R5 K7 [math.sin]
       17 CALL                             R5 1 1
       18 ADDK                             R4 R5 K2 [1]
       19 DIVK                             R3 R4 K0 [2]
       20 GETTABLEKS                       R5 R1 K8 ["Keypoints"]
       22 GETTABLEN                        R4 R5 1
       23 GETTABLEKS                       R4 R4 K9 ["Value"]
       25 GETTABLEKS                       R6 R1 K8 ["Keypoints"]
       27 GETTABLEKS                       R8 R1 K8 ["Keypoints"]
       29 LENGTH                           R7 R8
       30 GETTABLE                         R5 R6 R7
       31 GETTABLEKS                       R5 R5 K9 ["Value"]
       33 GETIMPORT                        R6 K12 [ColorSequence.new]
       35 MOVE                             R9 R5
       36 MOVE                             R10 R3
       37 NAMECALL                         R7 R4 K13 ["Lerp"]
       39 CALL                             R7 3 -1
       40 CALL                             R6 -1 1
       41 MOVE                             R1 R6
       42 GETTABLEKS                       R7 R2 K8 ["Keypoints"]
       44 GETTABLEN                        R6 R7 1
       45 GETTABLEKS                       R6 R6 K9 ["Value"]
       47 GETTABLEKS                       R8 R2 K8 ["Keypoints"]
       49 GETTABLEKS                       R10 R2 K8 ["Keypoints"]
       51 LENGTH                           R9 R10
       52 GETTABLE                         R7 R8 R9
       53 GETTABLEKS                       R7 R7 K9 ["Value"]
       55 GETIMPORT                        R8 K15 [NumberSequence.new]
       57 SUB                              R11 R7 R6
       58 MUL                              R10 R11 R3
       59 ADD                              R9 R6 R10
       60 CALL                             R8 1 1
       61 MOVE                             R2 R8
       62 GETUPVAL                         R3 4
       63 MOVE                             R4 R0
       64 CALL                             R3 1 0
       65 GETUPVAL                         R3 5
       66 MOVE                             R4 R1
       67 CALL                             R3 1 0
       68 GETUPVAL                         R3 6
       69 MOVE                             R4 R2
       70 CALL                             R3 1 0
       71 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Heartbeat"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 NAMECALL                         R0 R0 K1 ["Connect"]
       13 CALL                             R0 2 1
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K0 ["reducedMotion"]
        6 GETIMPORT                        R3 K3 [ColorSequence.new]
        8 NEWTABLE                         R4 0 2
       10 GETIMPORT                        R5 K5 [ColorSequenceKeypoint.new]
       12 LOADN                            R6 0
       13 GETTABLEKS                       R7 R0 K6 ["Color"]
       15 GETTABLEKS                       R7 R7 K7 ["Selection"]
       17 GETTABLEKS                       R7 R7 K8 ["Start"]
       19 GETTABLEKS                       R7 R7 K9 ["Color3"]
       21 CALL                             R5 2 1
       22 GETIMPORT                        R6 K5 [ColorSequenceKeypoint.new]
       24 LOADN                            R7 1
       25 GETTABLEKS                       R8 R0 K6 ["Color"]
       27 GETTABLEKS                       R8 R8 K7 ["Selection"]
       29 GETTABLEKS                       R8 R8 K10 ["End"]
       31 GETTABLEKS                       R8 R8 K9 ["Color3"]
       33 CALL                             R6 2 -1
       34 SETLIST                          R4 R5 -1 [1]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K12 [NumberSequence.new]
       39 NEWTABLE                         R5 0 2
       41 GETIMPORT                        R6 K14 [NumberSequenceKeypoint.new]
       43 LOADN                            R7 0
       44 GETTABLEKS                       R8 R0 K6 ["Color"]
       46 GETTABLEKS                       R8 R8 K7 ["Selection"]
       48 GETTABLEKS                       R8 R8 K8 ["Start"]
       50 GETTABLEKS                       R8 R8 K15 ["Transparency"]
       52 CALL                             R6 2 1
       53 GETIMPORT                        R7 K14 [NumberSequenceKeypoint.new]
       55 LOADN                            R8 1
       56 GETTABLEKS                       R9 R0 K6 ["Color"]
       58 GETTABLEKS                       R9 R9 K7 ["Selection"]
       60 GETTABLEKS                       R9 R9 K10 ["End"]
       62 GETTABLEKS                       R9 R9 K15 ["Transparency"]
       64 CALL                             R7 2 -1
       65 SETLIST                          R5 R6 -1 [1]
       67 CALL                             R4 1 1
       68 GETUPVAL                         R5 2
       69 GETTABLEKS                       R5 R5 K16 ["useBinding"]
       71 LOADN                            R6 0
       72 CALL                             R5 1 2
       73 GETUPVAL                         R7 2
       74 GETTABLEKS                       R7 R7 K16 ["useBinding"]
       76 MOVE                             R8 R3
       77 CALL                             R7 1 2
       78 GETUPVAL                         R9 2
       79 GETTABLEKS                       R9 R9 K16 ["useBinding"]
       81 MOVE                             R10 R4
       82 CALL                             R9 1 2
       83 GETUPVAL                         R11 2
       84 GETTABLEKS                       R11 R11 K17 ["useEffect"]
       86 NEWCLOSURE                       R12 P0
       87 CAPTURE                          UPVAL U3
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R10
       95 NEWTABLE                         R13 0 2
       97 MOVE                             R14 R3
       98 MOVE                             R15 R4
       99 SETLIST                          R13 R14 2 [1]
      101 CALL                             R11 2 0
      102 GETUPVAL                         R11 2
      103 GETTABLEKS                       R11 R11 K18 ["createElement"]
      105 LOADK                            R12 K19 ["UIGradient"]
      106 DUPTABLE                         R13 K21 [{"Rotation", "Color", "Transparency"}]
      107 SETTABLEKS                       R5 R13 K20 ["Rotation"]
      109 SETTABLEKS                       R7 R13 K6 ["Color"]
      111 SETTABLEKS                       R9 R13 K15 ["Transparency"]
      113 CALL                             R11 2 -1
      114 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Wrappers"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R2 R2 K9 ["Services"]
       18 GETTABLEKS                       R2 R2 K10 ["RunService"]
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K11 ["React"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Providers"]
       29 GETTABLEKS                       R5 R5 K13 ["Style"]
       31 GETTABLEKS                       R5 R5 K14 ["useTokens"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Providers"]
       38 GETTABLEKS                       R6 R6 K15 ["Preferences"]
       40 GETTABLEKS                       R6 R6 K16 ["usePreferences"]
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K17 [PROTO_3]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 RETURN                           R6 1
