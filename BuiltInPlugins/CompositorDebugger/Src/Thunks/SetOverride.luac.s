PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["DebugData"]
        5 GETTABLEKS                       R2 R1 K2 ["FrameBuffer"]
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETTABLEKS                       R3 R1 K2 ["FrameBuffer"]
       10 GETTABLEN                        R2 R3 1
       11 MOVE                             R3 R2
       12 JUMPIFNOT                        R3 ; [+4]
       13 GETTABLEKS                       R4 R2 K3 ["layerMap"]
       15 GETUPVAL                         R5 0
       16 GETTABLE                         R3 R4 R5
       17 GETTABLEKS                       R4 R1 K4 ["Overrides"]
       19 GETUPVAL                         R6 1
       20 GETTABLEN                        R5 R6 1
       21 GETUPVAL                         R6 2
       22 JUMPIFNOTEQKNIL                  R6 ; [+27]
       24 GETUPVAL                         R6 3
       25 MOVE                             R7 R4
       26 NEWTABLE                         R8 1 0
       28 GETUPVAL                         R9 0
       29 GETUPVAL                         R10 3
       30 GETUPVAL                         R12 0
       31 GETTABLE                         R11 R4 R12
       32 NEWTABLE                         R12 1 0
       34 GETUPVAL                         R13 4
       35 SETTABLE                         R13 R12 R5
       36 CALL                             R10 2 1
       37 SETTABLE                         R10 R8 R9
       38 CALL                             R6 2 1
       39 MOVE                             R4 R6
       40 GETIMPORT                        R6 K6 [next]
       42 GETUPVAL                         R8 0
       43 GETTABLE                         R7 R4 R8
       44 CALL                             R6 1 1
       45 JUMPIF                           R6 ; [+65]
       46 GETUPVAL                         R6 0
       47 LOADNIL                          R7
       48 SETTABLE                         R7 R4 R6
       49 JUMP                             ; [+61]
       50 GETUPVAL                         R6 3
       51 MOVE                             R7 R4
       52 NEWTABLE                         R8 0 0
       54 CALL                             R6 2 1
       55 MOVE                             R4 R6
       56 GETUPVAL                         R6 0
       57 GETUPVAL                         R8 0
       58 GETTABLE                         R7 R4 R8
       59 JUMPIF                           R7 ; [+2]
       60 NEWTABLE                         R7 0 0
       62 SETTABLE                         R7 R4 R6
       63 GETUPVAL                         R8 0
       64 GETTABLE                         R7 R4 R8
       65 GETTABLE                         R6 R7 R5
       66 JUMPIF                           R6 ; [+20]
       67 JUMPIFNOT                        R3 ; [+19]
       68 GETTABLEKS                       R8 R3 K7 ["props"]
       70 GETTABLE                         R7 R8 R5
       71 FASTCALL1                        TYPE R7 ; [+2]
       72 GETIMPORT                        R6 K9 [type]
       74 CALL                             R6 1 1
       75 JUMPIFNOTEQKS                    R6 K10 ["table"] ; [+11]
       77 GETUPVAL                         R7 0
       78 GETTABLE                         R6 R4 R7
       79 GETUPVAL                         R7 5
       80 NEWTABLE                         R8 0 0
       82 GETTABLEKS                       R10 R3 K7 ["props"]
       84 GETTABLE                         R9 R10 R5
       85 CALL                             R7 2 1
       86 SETTABLE                         R7 R6 R5
       87 GETUPVAL                         R7 0
       88 GETTABLE                         R6 R4 R7
       89 GETUPVAL                         R7 1
       90 LOADNIL                          R8
       91 LOADNIL                          R9
       92 FORGPREP                         R7
       93 GETUPVAL                         R13 1
       94 LENGTH                           R12 R13
       95 JUMPIFNOTLT                      R10 R12 ; [+7]
       97 GETTABLE                         R12 R6 R11
       98 JUMPIF                           R12 ; [+3]
       99 NEWTABLE                         R12 0 0
      101 SETTABLE                         R12 R6 R11
      102 GETTABLE                         R6 R6 R11
      103 FORGLOOP                         R7 2 ; [-11]
      105 GETUPVAL                         R8 1
      106 GETUPVAL                         R10 1
      107 LENGTH                           R9 R10
      108 GETTABLE                         R7 R8 R9
      109 GETUPVAL                         R8 2
      110 SETTABLE                         R8 R6 R7
      111 GETUPVAL                         R8 6
      112 MOVE                             R9 R4
      113 CALL                             R8 1 -1
      114 NAMECALL                         R6 R0 K11 ["dispatch"]
      116 CALL                             R6 -1 0
      117 NAMECALL                         R8 R0 K0 ["getState"]
      119 CALL                             R8 1 1
      120 GETTABLEKS                       R7 R8 K12 ["Status"]
      122 GETTABLEKS                       R6 R7 K13 ["PropertyOverridesEvent"]
      124 JUMPIFNOT                        R6 ; [+4]
      125 MOVE                             R9 R4
      126 NAMECALL                         R7 R6 K14 ["Fire"]
      128 CALL                             R7 2 0
      129 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["join"]
       16 GETTABLEKS                       R3 R1 K9 ["joinDeep"]
       18 GETTABLEKS                       R4 R1 K10 ["None"]
       20 GETTABLEKS                       R6 R0 K11 ["Src"]
       22 GETTABLEKS                       R5 R6 K12 ["Actions"]
       24 GETIMPORT                        R6 K5 [require]
       26 GETTABLEKS                       R7 R5 K13 ["SetOverrides"]
       28 CALL                             R6 1 1
       29 DUPCLOSURE                       R7 K14 [PROTO_1]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R6
       34 RETURN                           R7 1
