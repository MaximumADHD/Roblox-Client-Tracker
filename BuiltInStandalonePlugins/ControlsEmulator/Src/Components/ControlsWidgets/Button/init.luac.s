PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["keyCode"]
        5 GETUPVAL                         R4 3
        6 LOADK                            R5 K1 [{0, 0, 0}]
        7 NAMECALL                         R0 R0 K2 ["SendGamepadEventAsync"]
        9 CALL                             R0 5 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["keyCode"]
        5 GETUPVAL                         R4 3
        6 LOADK                            R5 K1 [{0, 0, 0}]
        7 NAMECALL                         R0 R0 K2 ["SendGamepadEventAsync"]
        9 CALL                             R0 5 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 4
        9 LOADB                            R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETIMPORT                        R0 K1 [pcall]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 5
       11 LOADB                            R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+11]
        5 GETIMPORT                        R0 K1 [pcall]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 6
       14 LOADB                            R1 0
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 GETTABLEKS                       R6 R1 K2 ["gamepadId"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R6
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 NEWCLOSURE                       R8 P1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R6
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U4
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       30 NEWCLOSURE                       R10 P2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R3
       36 NEWTABLE                         R11 0 3
       38 MOVE                             R12 R6
       39 GETTABLEKS                       R13 R0 K4 ["keyCode"]
       41 MOVE                             R14 R3
       42 SETLIST                          R11 R12 3 [1]
       44 CALL                             R9 2 1
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K3 ["useCallback"]
       48 NEWCLOSURE                       R11 P3
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R3
       55 NEWTABLE                         R12 0 4
       57 MOVE                             R13 R6
       58 GETTABLEKS                       R14 R0 K4 ["keyCode"]
       60 MOVE                             R15 R2
       61 MOVE                             R16 R3
       62 SETLIST                          R12 R13 4 [1]
       64 CALL                             R10 2 1
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R11 R11 K3 ["useCallback"]
       68 NEWCLOSURE                       R12 P4
       69 CAPTURE                          VAL R5
       70 NEWTABLE                         R13 0 1
       72 MOVE                             R14 R5
       73 SETLIST                          R13 R14 1 [1]
       75 CALL                             R11 2 1
       76 GETUPVAL                         R12 0
       77 GETTABLEKS                       R12 R12 K3 ["useCallback"]
       79 NEWCLOSURE                       R13 P5
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R2
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          VAL R3
       87 NEWTABLE                         R14 0 4
       89 MOVE                             R15 R6
       90 GETTABLEKS                       R16 R0 K4 ["keyCode"]
       92 MOVE                             R17 R2
       93 MOVE                             R18 R5
       94 SETLIST                          R14 R15 4 [1]
       96 CALL                             R12 2 1
       97 LOADB                            R13 1
       98 GETTABLEKS                       R14 R0 K5 ["inputState"]
      100 JUMPIFNOTEQKNIL                  R14 ; [+2]
      102 MOVE                             R13 R2
      103 GETUPVAL                         R14 0
      104 GETTABLEKS                       R14 R14 K6 ["createElement"]
      106 LOADK                            R15 K7 ["TextButton"]
      107 NEWTABLE                         R16 8 0
      109 GETUPVAL                         R17 0
      110 GETTABLEKS                       R17 R17 K8 ["Tag"]
      112 GETUPVAL                         R18 5
      113 LOADK                            R19 K9 ["Widget-Button"]
      114 JUMPIFNOT                        R13 ; [+2]
      115 LOADK                            R20 K10 ["Active"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R20
      118 JUMPIFNOT                        R4 ; [+2]
      119 LOADK                            R21 K11 ["Hovered"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R21
      122 LOADK                            R23 K12 ["data-testid=Widget-Button"]
      123 GETTABLEKS                       R24 R0 K4 ["keyCode"]
      125 GETTABLEKS                       R24 R24 K13 ["Name"]
      127 CONCAT                           R22 R23 R24
      128 CALL                             R18 4 1
      129 SETTABLE                         R18 R16 R17
      130 LOADK                            R17 K14 [""]
      131 SETTABLEKS                       R17 R16 K15 ["Text"]
      133 GETTABLEKS                       R17 R0 K16 ["Position"]
      135 SETTABLEKS                       R17 R16 K16 ["Position"]
      137 GETTABLEKS                       R17 R0 K17 ["Size"]
      139 SETTABLEKS                       R17 R16 K17 ["Size"]
      141 GETUPVAL                         R17 0
      142 GETTABLEKS                       R17 R17 K18 ["Event"]
      144 GETTABLEKS                       R17 R17 K19 ["MouseButton1Down"]
      146 SETTABLE                         R9 R16 R17
      147 GETUPVAL                         R17 0
      148 GETTABLEKS                       R17 R17 K18 ["Event"]
      150 GETTABLEKS                       R17 R17 K20 ["MouseButton1Up"]
      152 SETTABLE                         R10 R16 R17
      153 GETUPVAL                         R17 0
      154 GETTABLEKS                       R17 R17 K18 ["Event"]
      156 GETTABLEKS                       R17 R17 K21 ["MouseEnter"]
      158 SETTABLE                         R11 R16 R17
      159 GETUPVAL                         R17 0
      160 GETTABLEKS                       R17 R17 K18 ["Event"]
      162 GETTABLEKS                       R17 R17 K22 ["MouseLeave"]
      164 SETTABLE                         R12 R16 R17
      165 CALL                             R14 2 -1
      166 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["MockableProxyPluginComponents"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R3 R3 K12 ["StudioDeviceEmulator"]
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K10 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["MappingsContext"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R1 K15 ["Styling"]
       52 GETTABLEKS                       R6 R6 K16 ["joinTags"]
       54 GETTABLEKS                       R7 R4 K17 ["VECTOR_PRESSED"]
       56 GETTABLEKS                       R8 R4 K18 ["VECTOR_RELEASED"]
       58 DUPCLOSURE                       R9 K19 [PROTO_8]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R6
       65 GETTABLEKS                       R10 R2 K20 ["memo"]
       67 MOVE                             R11 R9
       68 CALL                             R10 1 -1
       69 RETURN                           R10 -1
