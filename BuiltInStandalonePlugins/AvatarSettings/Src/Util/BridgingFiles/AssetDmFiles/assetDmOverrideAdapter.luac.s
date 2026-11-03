PROTO_0:
        0 DUPTABLE                         R4 K4 [{"name", "override", "gate", "overrideClass"}]
        1 SETTABLEKS                       R0 R4 K0 ["name"]
        3 SETTABLEKS                       R1 R4 K1 ["override"]
        5 SETTABLEKS                       R2 R4 K2 ["gate"]
        7 SETTABLEKS                       R3 R4 K3 ["overrideClass"]
        9 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["gate"]
        2 JUMPIFNOTEQKS                    R3 K1 ["OnValue"] ; [+8]
        4 GETTABLEKS                       R4 R0 K2 ["onValue"]
        6 JUMPIFEQ                         R2 R4 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 RETURN                           R3 1
       11 GETTABLEKS                       R4 R2 K3 ["Value"]
       13 JUMPIFNOTEQKN                    R4 K4 [0] ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R6 R1 K0 ["gate"]
        2 JUMPIFNOTEQKS                    R6 K1 ["OnValue"] ; [+8]
        4 GETTABLEKS                       R6 R0 K2 ["onValue"]
        6 JUMPIFEQ                         R2 R6 ; [+2]
        8 LOADB                            R5 0 +1
        9 LOADB                            R5 1
       10 JUMP                             ; [+6]
       11 GETTABLEKS                       R6 R2 K3 ["Value"]
       13 JUMPIFNOTEQKN                    R6 K4 [0] ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 JUMPIFNOT                        R5 ; [+1]
       18 JUMPIF                           R3 ; [+2]
       19 LOADN                            R5 0
       20 RETURN                           R5 1
       21 LOADN                            R6 0
       22 JUMPIFNOTLT                      R6 R4 ; [+3]
       24 MOVE                             R5 R4
       25 RETURN                           R5 1
       26 LOADN                            R5 -1
       27 RETURN                           R5 1

PROTO_3:
        0 LOADB                            R2 1
        1 JUMPIFEQ                         R0 R1 ; [+10]
        3 LOADB                            R2 0
        4 LOADN                            R3 0
        5 JUMPIFNOTLT                      R0 R3 ; [+6]
        7 LOADN                            R3 0
        8 JUMPIFLT                         R1 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["overrideClass"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 1
        4 GETTABLEKS                       R3 R0 K1 ["Parent"]
        6 JUMPIFNOT                        R3 ; [+5]
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R3 K2 ["FindFirstChildWhichIsA"]
       10 CALL                             R4 2 1
       11 RETURN                           R4 1
       12 LOADNIL                          R4
       13 RETURN                           R4 1

PROTO_5:
        0 GETTABLEKS                       R3 R1 K0 ["overrideClass"]
        2 JUMPIF                           R3 ; [+2]
        3 MOVE                             R2 R0
        4 JUMP                             ; [+10]
        5 GETTABLEKS                       R4 R0 K1 ["Parent"]
        7 JUMPIFNOT                        R4 ; [+6]
        8 MOVE                             R7 R3
        9 NAMECALL                         R5 R4 K2 ["FindFirstChildWhichIsA"]
       11 CALL                             R5 2 1
       12 MOVE                             R2 R5
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 JUMPIFNOT                        R2 ; [+4]
       16 GETTABLEKS                       R4 R1 K3 ["override"]
       18 GETTABLE                         R3 R2 R4
       19 RETURN                           R3 1
       20 LOADN                            R3 0
       21 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["ClassName"]
        3 GETTABLE                         R2 R3 R4
        4 LOADB                            R3 0
        5 JUMPIFEQKNIL                     R2 ; [+6]
        7 GETTABLE                         R4 R2 R1
        8 JUMPIFEQKB                       R4 TRUE ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 RETURN                           R3 1

PROTO_7:
        0 LOADK                            R3 K0 ["AvatarRules"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+20]
        5 LOADK                            R3 K2 ["AvatarBodyRules"]
        6 NAMECALL                         R1 R0 K3 ["FindFirstChildWhichIsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+14]
       10 GETTABLEKS                       R2 R1 K4 ["AvatarType"]
       12 GETTABLEKS                       R3 R0 K4 ["AvatarType"]
       14 JUMPIFEQ                         R2 R3 ; [+9]
       16 LOADB                            R2 1
       17 SETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R0 K4 ["AvatarType"]
       20 SETTABLEKS                       R2 R1 K4 ["AvatarType"]
       22 LOADB                            R2 0
       23 SETUPVAL                         R2 0
       24 RETURN                           R0 0
       25 LOADK                            R3 K5 ["AvatarCollisionRules"]
       26 NAMECALL                         R1 R0 K1 ["IsA"]
       28 CALL                             R1 2 1
       29 JUMPIFNOT                        R1 ; [+22]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K6 ["isSupported"]
       33 CALL                             R1 0 1
       34 JUMPIFNOT                        R1 ; [+16]
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K7 ["fromLegacy"]
       38 GETTABLEKS                       R2 R0 K8 ["HitAndTouchDetectionMode"]
       40 CALL                             R1 1 1
       41 GETTABLEKS                       R2 R0 K9 ["TouchAndQueryDetectionMode"]
       43 JUMPIFEQ                         R2 R1 ; [+7]
       45 LOADB                            R2 1
       46 SETUPVAL                         R2 0
       47 SETTABLEKS                       R1 R0 K9 ["TouchAndQueryDetectionMode"]
       49 LOADB                            R2 0
       50 SETUPVAL                         R2 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R2 2
       53 GETTABLEKS                       R3 R0 K10 ["ClassName"]
       55 GETTABLE                         R1 R2 R3
       56 JUMPIF                           R1 ; [+1]
       57 RETURN                           R0 0
       58 GETTABLEKS                       R3 R1 K11 ["modeProperty"]
       60 GETTABLE                         R2 R0 R3
       61 LOADB                            R3 1
       62 SETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R1 K12 ["slots"]
       65 LOADNIL                          R4
       66 LOADNIL                          R5
       67 FORGPREP                         R3
       68 GETTABLEKS                       R9 R7 K13 ["overrideClass"]
       70 JUMPIF                           R9 ; [+2]
       71 MOVE                             R8 R0
       72 JUMP                             ; [+10]
       73 GETTABLEKS                       R10 R0 K14 ["Parent"]
       75 JUMPIFNOT                        R10 ; [+6]
       76 MOVE                             R13 R9
       77 NAMECALL                         R11 R10 K3 ["FindFirstChildWhichIsA"]
       79 CALL                             R11 2 1
       80 MOVE                             R8 R11
       81 JUMP                             ; [+1]
       82 LOADNIL                          R8
       83 JUMPIFNOT                        R8 ; [+56]
       84 GETTABLEKS                       R12 R7 K15 ["name"]
       86 LOADK                            R13 K16 ["Enabled"]
       87 CONCAT                           R11 R12 R13
       88 GETTABLE                         R10 R0 R11
       89 GETTABLEKS                       R13 R7 K15 ["name"]
       91 LOADK                            R14 K17 ["Id"]
       92 CONCAT                           R12 R13 R14
       93 GETTABLE                         R11 R0 R12
       94 GETTABLEKS                       R13 R7 K18 ["gate"]
       96 JUMPIFNOTEQKS                    R13 K19 ["OnValue"] ; [+8]
       98 GETTABLEKS                       R13 R1 K20 ["onValue"]
      100 JUMPIFEQ                         R2 R13 ; [+2]
      102 LOADB                            R12 0 +1
      103 LOADB                            R12 1
      104 JUMP                             ; [+6]
      105 GETTABLEKS                       R13 R2 K21 ["Value"]
      107 JUMPIFNOTEQKN                    R13 K22 [0] ; [+2]
      109 LOADB                            R12 0 +1
      110 LOADB                            R12 1
      111 JUMPIFNOT                        R12 ; [+1]
      112 JUMPIF                           R10 ; [+2]
      113 LOADN                            R9 0
      114 JUMP                             ; [+6]
      115 LOADN                            R12 0
      116 JUMPIFNOTLT                      R12 R11 ; [+3]
      118 MOVE                             R9 R11
      119 JUMP                             ; [+1]
      120 LOADN                            R9 -1
      121 GETTABLEKS                       R12 R7 K23 ["override"]
      123 GETTABLE                         R11 R8 R12
      124 LOADB                            R10 1
      125 JUMPIFEQ                         R11 R9 ; [+10]
      127 LOADB                            R10 0
      128 LOADN                            R12 0
      129 JUMPIFNOTLT                      R11 R12 ; [+6]
      131 LOADN                            R12 0
      132 JUMPIFLT                         R9 R12 ; [+2]
      134 LOADB                            R10 0 +1
      135 LOADB                            R10 1
      136 JUMPIF                           R10 ; [+3]
      137 GETTABLEKS                       R10 R7 K23 ["override"]
      139 SETTABLE                         R9 R8 R10
      140 FORGLOOP                         R3 2 ; [-73]
      142 LOADB                            R3 0
      143 SETUPVAL                         R3 0
      144 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["ClassName"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R1 K1 ["modeProperty"]
        8 GETTABLE                         R2 R0 R3
        9 GETTABLEKS                       R3 R1 K2 ["slots"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R10 R7 K3 ["overrideClass"]
       16 JUMPIF                           R10 ; [+2]
       17 MOVE                             R9 R0
       18 JUMP                             ; [+10]
       19 GETTABLEKS                       R11 R0 K4 ["Parent"]
       21 JUMPIFNOT                        R11 ; [+6]
       22 MOVE                             R14 R10
       23 NAMECALL                         R12 R11 K5 ["FindFirstChildWhichIsA"]
       25 CALL                             R12 2 1
       26 MOVE                             R9 R12
       27 JUMP                             ; [+1]
       28 LOADNIL                          R9
       29 JUMPIFNOT                        R9 ; [+4]
       30 GETTABLEKS                       R10 R7 K6 ["override"]
       32 GETTABLE                         R8 R9 R10
       33 JUMP                             ; [+1]
       34 LOADN                            R8 0
       35 JUMPIFEQKN                       R8 K7 [0] ; [+26]
       37 MOVE                             R9 R2
       38 GETTABLEKS                       R10 R7 K8 ["gate"]
       40 JUMPIFNOTEQKS                    R10 K9 ["OnValue"] ; [+8]
       42 GETTABLEKS                       R10 R1 K10 ["onValue"]
       44 JUMPIFEQ                         R9 R10 ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 JUMP                             ; [+6]
       49 GETTABLEKS                       R10 R9 K11 ["Value"]
       51 JUMPIFNOTEQKN                    R10 K7 [0] ; [+2]
       53 LOADB                            R8 0 +1
       54 LOADB                            R8 1
       55 JUMPIF                           R8 ; [+6]
       56 GETTABLEKS                       R2 R1 K10 ["onValue"]
       58 GETTABLEKS                       R8 R1 K1 ["modeProperty"]
       60 SETTABLE                         R2 R0 R8
       61 JUMP                             ; [+2]
       62 FORGLOOP                         R3 2 ; [-49]
       64 GETTABLEKS                       R3 R1 K2 ["slots"]
       66 LOADNIL                          R4
       67 LOADNIL                          R5
       68 FORGPREP                         R3
       69 GETTABLEKS                       R9 R7 K12 ["name"]
       71 LOADK                            R10 K13 ["Enabled"]
       72 CONCAT                           R8 R9 R10
       73 GETTABLEKS                       R10 R7 K12 ["name"]
       75 LOADK                            R11 K14 ["Id"]
       76 CONCAT                           R9 R10 R11
       77 GETTABLEKS                       R12 R7 K3 ["overrideClass"]
       79 JUMPIF                           R12 ; [+2]
       80 MOVE                             R11 R0
       81 JUMP                             ; [+10]
       82 GETTABLEKS                       R13 R0 K4 ["Parent"]
       84 JUMPIFNOT                        R13 ; [+6]
       85 MOVE                             R16 R12
       86 NAMECALL                         R14 R13 K5 ["FindFirstChildWhichIsA"]
       88 CALL                             R14 2 1
       89 MOVE                             R11 R14
       90 JUMP                             ; [+1]
       91 LOADNIL                          R11
       92 JUMPIFNOT                        R11 ; [+4]
       93 GETTABLEKS                       R12 R7 K6 ["override"]
       95 GETTABLE                         R10 R11 R12
       96 JUMP                             ; [+1]
       97 LOADN                            R10 0
       98 MOVE                             R12 R2
       99 GETTABLE                         R13 R0 R8
      100 GETTABLE                         R14 R0 R9
      101 GETTABLEKS                       R16 R7 K8 ["gate"]
      103 JUMPIFNOTEQKS                    R16 K9 ["OnValue"] ; [+8]
      105 GETTABLEKS                       R16 R1 K10 ["onValue"]
      107 JUMPIFEQ                         R12 R16 ; [+2]
      109 LOADB                            R15 0 +1
      110 LOADB                            R15 1
      111 JUMP                             ; [+6]
      112 GETTABLEKS                       R16 R12 K11 ["Value"]
      114 JUMPIFNOTEQKN                    R16 K7 [0] ; [+2]
      116 LOADB                            R15 0 +1
      117 LOADB                            R15 1
      118 JUMPIFNOT                        R15 ; [+1]
      119 JUMPIF                           R13 ; [+2]
      120 LOADN                            R11 0
      121 JUMP                             ; [+6]
      122 LOADN                            R15 0
      123 JUMPIFNOTLT                      R15 R14 ; [+3]
      125 MOVE                             R11 R14
      126 JUMP                             ; [+1]
      127 LOADN                            R11 -1
      128 LOADB                            R12 1
      129 JUMPIFEQ                         R10 R11 ; [+10]
      131 LOADB                            R12 0
      132 LOADN                            R13 0
      133 JUMPIFNOTLT                      R10 R13 ; [+6]
      135 LOADN                            R13 0
      136 JUMPIFLT                         R11 R13 ; [+2]
      138 LOADB                            R12 0 +1
      139 LOADB                            R12 1
      140 JUMPIF                           R12 ; [+15]
      141 JUMPIFNOTEQKN                    R10 K7 [0] ; [+2]
      143 LOADB                            R12 0 +1
      144 LOADB                            R12 1
      145 SETTABLE                         R12 R0 R8
      146 LOADN                            R12 0
      147 JUMPIFNOTLT                      R12 R10 ; [+3]
      149 SETTABLE                         R10 R0 R9
      150 JUMP                             ; [+5]
      151 LOADN                            R12 0
      152 JUMPIFNOTLT                      R10 R12 ; [+3]
      154 LOADN                            R12 0
      155 SETTABLE                         R12 R0 R9
      156 FORGLOOP                         R3 2 ; [-88]
      158 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["AvatarType"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["AvatarType"]
        8 JUMPIFEQ                         R0 R1 ; [+7]
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["AvatarType"]
       14 SETTABLEKS                       R1 R0 K0 ["AvatarType"]
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toLegacy"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["TouchAndQueryDetectionMode"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 2
        8 JUMPIF                           R1 ; [+8]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["HitAndTouchDetectionMode"]
       12 JUMPIFEQ                         R1 R0 ; [+4]
       14 GETUPVAL                         R1 1
       15 SETTABLEKS                       R0 R1 K2 ["HitAndTouchDetectionMode"]
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["syncLegacyProperties"]
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["AvatarBodyRules"]
        3 NAMECALL                         R2 R0 K1 ["FindFirstChildWhichIsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+29]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 GETUPVAL                         R4 0
       12 JUMPIF                           R4 ; [+10]
       13 GETTABLEKS                       R4 R0 K2 ["AvatarType"]
       15 GETTABLEKS                       R5 R2 K2 ["AvatarType"]
       17 JUMPIFEQ                         R4 R5 ; [+5]
       19 GETTABLEKS                       R4 R2 K2 ["AvatarType"]
       21 SETTABLEKS                       R4 R0 K2 ["AvatarType"]
       23 MOVE                             R5 R1
       24 LOADK                            R8 K2 ["AvatarType"]
       25 NAMECALL                         R6 R2 K3 ["GetPropertyChangedSignal"]
       27 CALL                             R6 2 1
       28 MOVE                             R8 R3
       29 NAMECALL                         R6 R6 K4 ["Connect"]
       31 CALL                             R6 2 -1
       32 FASTCALL                         TABLE_INSERT ; [+2]
       33 GETIMPORT                        R4 K7 [table.insert]
       35 CALL                             R4 -1 0
       36 LOADK                            R5 K8 ["AvatarCollisionRules"]
       37 NAMECALL                         R3 R0 K1 ["FindFirstChildWhichIsA"]
       39 CALL                             R3 2 1
       40 JUMPIFNOT                        R3 ; [+36]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K9 ["isSupported"]
       44 CALL                             R4 0 1
       45 JUMPIFNOT                        R4 ; [+31]
       46 NEWCLOSURE                       R4 P1
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          VAL R3
       49 CAPTURE                          UPVAL U0
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K10 ["toLegacy"]
       53 GETTABLEKS                       R6 R3 K11 ["TouchAndQueryDetectionMode"]
       55 CALL                             R5 1 1
       56 GETUPVAL                         R6 0
       57 JUMPIF                           R6 ; [+6]
       58 GETTABLEKS                       R6 R3 K12 ["HitAndTouchDetectionMode"]
       60 JUMPIFEQ                         R6 R5 ; [+3]
       62 SETTABLEKS                       R5 R3 K12 ["HitAndTouchDetectionMode"]
       64 MOVE                             R6 R1
       65 LOADK                            R9 K11 ["TouchAndQueryDetectionMode"]
       66 NAMECALL                         R7 R3 K3 ["GetPropertyChangedSignal"]
       68 CALL                             R7 2 1
       69 MOVE                             R9 R4
       70 NAMECALL                         R7 R7 K4 ["Connect"]
       72 CALL                             R7 2 -1
       73 FASTCALL                         TABLE_INSERT ; [+2]
       74 GETIMPORT                        R5 K7 [table.insert]
       76 CALL                             R5 -1 0
       77 GETUPVAL                         R4 2
       78 LOADNIL                          R5
       79 LOADNIL                          R6
       80 FORGPREP                         R4
       81 MOVE                             R11 R7
       82 NAMECALL                         R9 R0 K1 ["FindFirstChildWhichIsA"]
       84 CALL                             R9 2 1
       85 JUMPIFNOT                        R9 ; [+46]
       86 GETUPVAL                         R10 3
       87 GETTABLEKS                       R10 R10 K13 ["syncLegacyProperties"]
       89 MOVE                             R11 R9
       90 CALL                             R10 1 0
       91 NEWCLOSURE                       R10 P2
       92 CAPTURE                          UPVAL U0
       93 CAPTURE                          UPVAL U3
       94 CAPTURE                          VAL R9
       95 GETTABLEKS                       R11 R8 K14 ["slots"]
       97 LOADNIL                          R12
       98 LOADNIL                          R13
       99 FORGPREP                         R11
      100 GETTABLEKS                       R17 R15 K15 ["overrideClass"]
      102 JUMPIF                           R17 ; [+2]
      103 MOVE                             R16 R9
      104 JUMP                             ; [+10]
      105 GETTABLEKS                       R18 R9 K16 ["Parent"]
      107 JUMPIFNOT                        R18 ; [+6]
      108 MOVE                             R21 R17
      109 NAMECALL                         R19 R18 K1 ["FindFirstChildWhichIsA"]
      111 CALL                             R19 2 1
      112 MOVE                             R16 R19
      113 JUMP                             ; [+1]
      114 LOADNIL                          R16
      115 JUMPIFNOT                        R16 ; [+14]
      116 MOVE                             R18 R1
      117 GETTABLEKS                       R21 R15 K17 ["override"]
      119 NAMECALL                         R19 R16 K3 ["GetPropertyChangedSignal"]
      121 CALL                             R19 2 1
      122 MOVE                             R21 R10
      123 NAMECALL                         R19 R19 K4 ["Connect"]
      125 CALL                             R19 2 -1
      126 FASTCALL                         TABLE_INSERT ; [+2]
      127 GETIMPORT                        R17 K7 [table.insert]
      129 CALL                             R17 -1 0
      130 FORGLOOP                         R11 2 ; [-31]
      132 FORGLOOP                         R4 2 ; [-52]
      134 RETURN                           R1 1

PROTO_13:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R0
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R2 1
        6 GETTABLEKS                       R5 R3 K0 ["modeProperty"]
        8 GETTABLE                         R4 R1 R5
        9 GETTABLEKS                       R5 R3 K1 ["slots"]
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 GETTABLEKS                       R11 R9 K2 ["name"]
       16 GETTABLE                         R10 R1 R11
       17 GETTABLEKS                       R12 R9 K3 ["overrideClass"]
       19 OR                               R11 R12 R0
       20 GETTABLE                         R12 R2 R11
       21 JUMPIF                           R12 ; [+2]
       22 NEWTABLE                         R12 0 0
       24 SETTABLE                         R12 R2 R11
       25 GETTABLE                         R12 R2 R11
       26 GETTABLEKS                       R13 R9 K4 ["override"]
       28 GETTABLEKS                       R15 R10 K5 ["Enabled"]
       30 GETTABLEKS                       R16 R10 K6 ["AssetId"]
       32 GETTABLEKS                       R18 R9 K7 ["gate"]
       34 JUMPIFNOTEQKS                    R18 K8 ["OnValue"] ; [+8]
       36 GETTABLEKS                       R18 R3 K9 ["onValue"]
       38 JUMPIFEQ                         R4 R18 ; [+2]
       40 LOADB                            R17 0 +1
       41 LOADB                            R17 1
       42 JUMP                             ; [+6]
       43 GETTABLEKS                       R18 R4 K10 ["Value"]
       45 JUMPIFNOTEQKN                    R18 K11 [0] ; [+2]
       47 LOADB                            R17 0 +1
       48 LOADB                            R17 1
       49 JUMPIFNOT                        R17 ; [+1]
       50 JUMPIF                           R15 ; [+2]
       51 LOADN                            R14 0
       52 JUMP                             ; [+6]
       53 LOADN                            R17 0
       54 JUMPIFNOTLT                      R17 R16 ; [+3]
       56 MOVE                             R14 R16
       57 JUMP                             ; [+1]
       58 LOADN                            R14 -1
       59 SETTABLE                         R14 R12 R13
       60 FORGLOOP                         R5 2 ; [-47]
       62 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["TouchAndQueryDetectionMode"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 GETTABLEKS                       R3 R3 K10 ["getEngineFeatureAvatarSettingsClothingOverrideRenames"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 8 0
       27 DUPCLOSURE                       R4 K11 [PROTO_0]
       28 DUPTABLE                         R5 K16 [{"AvatarBodyRules", "AvatarAnimationRules", "AvatarAccessoryRules", "AvatarClothingRules"}]
       29 DUPTABLE                         R6 K21 [{["modeProperty"] = "AppearanceMode", ["onValue"], ["slots"]}]
       30 GETIMPORT                        R7 K25 [Enum.AvatarSettingsAppearanceMode.CustomParts]
       32 SETTABLEKS                       R7 R6 K19 ["onValue"]
       34 NEWTABLE                         R7 0 7
       36 DUPTABLE                         R8 K34 [{["name"] = "CustomHead", ["override"] = "HeadOverride", ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
       37 DUPTABLE                         R9 K37 [{["name"] = "CustomTorso", ["override"] = "TorsoOverride", ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
       38 DUPTABLE                         R10 K40 [{["name"] = "CustomLeftArm", ["override"] = "LeftArmOverride", ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
       39 DUPTABLE                         R11 K43 [{["name"] = "CustomRightArm", ["override"] = "RightArmOverride", ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
       40 DUPTABLE                         R12 K46 [{["name"] = "CustomLeftLeg", ["override"] = "LeftLegOverride", ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
       41 DUPTABLE                         R13 K49 [{["name"] = "CustomRightLeg", ["override"] = "RightLegOverride", ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
       42 DUPTABLE                         R14 K53 [{["name"] = "CustomMood", ["override"] = "MoodAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = "AvatarAnimationRules"}]
       43 SETLIST                          R7 R8 7 [1]
       45 SETTABLEKS                       R7 R6 K20 ["slots"]
       47 SETTABLEKS                       R6 R5 K12 ["AvatarBodyRules"]
       49 DUPTABLE                         R6 K55 [{["modeProperty"] = "AnimationClipsMode", ["onValue"], ["slots"]}]
       50 GETIMPORT                        R7 K58 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
       52 SETTABLEKS                       R7 R6 K19 ["onValue"]
       54 NEWTABLE                         R7 0 9
       56 DUPTABLE                         R8 K61 [{["name"] = "CustomRunAnimation", ["override"] = "RunAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       57 DUPTABLE                         R9 K64 [{["name"] = "CustomWalkAnimation", ["override"] = "WalkAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       58 DUPTABLE                         R10 K67 [{["name"] = "CustomFallAnimation", ["override"] = "FallAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       59 DUPTABLE                         R11 K70 [{["name"] = "CustomJumpAnimation", ["override"] = "JumpAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       60 DUPTABLE                         R12 K73 [{["name"] = "CustomIdleAnimation", ["override"] = "IdleAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       61 DUPTABLE                         R13 K76 [{["name"] = "CustomIdleAlt1Animation", ["override"] = "IdleAltAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       62 DUPTABLE                         R14 K79 [{["name"] = "CustomSwimAnimation", ["override"] = "SwimAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       63 DUPTABLE                         R15 K82 [{["name"] = "CustomSwimIdleAnimation", ["override"] = "SwimIdleAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       64 DUPTABLE                         R16 K85 [{["name"] = "CustomClimbAnimation", ["override"] = "ClimbAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       65 SETLIST                          R7 R8 9 [1]
       67 SETTABLEKS                       R7 R6 K20 ["slots"]
       69 SETTABLEKS                       R6 R5 K13 ["AvatarAnimationRules"]
       71 DUPTABLE                         R6 K87 [{["modeProperty"] = "CustomAccessoryMode", ["onValue"], ["slots"]}]
       72 GETIMPORT                        R7 K90 [Enum.AvatarSettingsCustomAccessoryMode.CustomAccessories]
       74 SETTABLEKS                       R7 R6 K19 ["onValue"]
       76 NEWTABLE                         R7 0 0
       78 SETTABLEKS                       R7 R6 K20 ["slots"]
       80 SETTABLEKS                       R6 R5 K14 ["AvatarAccessoryRules"]
       82 DUPTABLE                         R6 K92 [{["modeProperty"] = "CustomClothingMode", ["onValue"], ["slots"]}]
       83 GETIMPORT                        R7 K95 [Enum.AvatarSettingsCustomClothingMode.CustomClothing]
       85 SETTABLEKS                       R7 R6 K19 ["onValue"]
       87 NEWTABLE                         R7 0 0
       89 SETTABLEKS                       R7 R6 K20 ["slots"]
       91 SETTABLEKS                       R6 R5 K15 ["AvatarClothingRules"]
       93 NEWTABLE                         R6 0 8
       95 LOADK                            R9 K96 ["Hair"]
       96 LOADK                            R10 K97 ["Head"]
       97 LOADK                            R11 K98 ["Face"]
       98 LOADK                            R12 K99 ["Neck"]
       99 LOADK                            R13 K100 ["Shoulder"]
      100 LOADK                            R14 K101 ["Front"]
      101 LOADK                            R15 K102 ["Back"]
      102 LOADK                            R16 K103 ["Waist"]
      103 SETLIST                          R6 R9 8 [1]
      105 LOADNIL                          R7
      106 LOADNIL                          R8
      107 FORGPREP                         R6
      108 GETTABLEKS                       R12 R5 K14 ["AvatarAccessoryRules"]
      110 GETTABLEKS                       R12 R12 K20 ["slots"]
      112 LOADK                            R15 K104 ["Custom"]
      113 MOVE                             R16 R10
      114 LOADK                            R17 K105 ["Accessory"]
      115 CONCAT                           R14 R15 R17
      116 MOVE                             R16 R10
      117 LOADK                            R17 K106 ["AccessoryOverride"]
      118 CONCAT                           R15 R16 R17
      119 DUPTABLE                         R13 K107 [{["name"], ["override"], ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
      120 SETTABLEKS                       R14 R13 K26 ["name"]
      122 SETTABLEKS                       R15 R13 K28 ["override"]
      124 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      126 GETIMPORT                        R11 K110 [table.insert]
      128 CALL                             R11 2 0
      129 FORGLOOP                         R6 2 ; [-22]
      131 DUPTABLE                         R6 K121 [{["LeftShoes"] = "LeftShoeAccessoryOverride", ["RightShoes"] = "RightShoeAccessoryOverride", ["ClassicShirts"] = "ClassicShirtOverride", ["ClassicTShirts"] = "ClassicTShirtOverride", ["ClassicPants"] = "ClassicPantsOverride"}]
      132 NEWTABLE                         R7 0 12
      134 LOADK                            R10 K122 ["TShirt"]
      135 LOADK                            R11 K123 ["Shirt"]
      136 LOADK                            R12 K124 ["Jacket"]
      137 LOADK                            R13 K125 ["Sweater"]
      138 LOADK                            R14 K126 ["Pants"]
      139 LOADK                            R15 K127 ["Shorts"]
      140 LOADK                            R16 K128 ["DressSkirt"]
      141 LOADK                            R17 K111 ["LeftShoes"]
      142 LOADK                            R18 K113 ["RightShoes"]
      143 LOADK                            R19 K115 ["ClassicShirts"]
      144 LOADK                            R20 K117 ["ClassicTShirts"]
      145 LOADK                            R21 K119 ["ClassicPants"]
      146 SETLIST                          R7 R10 12 [1]
      148 LOADNIL                          R8
      149 LOADNIL                          R9
      150 FORGPREP                         R7
      151 MOVE                             R13 R11
      152 LOADK                            R14 K106 ["AccessoryOverride"]
      153 CONCAT                           R12 R13 R14
      154 MOVE                             R13 R2
      155 CALL                             R13 0 1
      156 JUMPIFNOT                        R13 ; [+2]
      157 GETTABLE                         R13 R6 R11
      158 OR                               R12 R13 R12
      159 GETTABLEKS                       R14 R5 K15 ["AvatarClothingRules"]
      161 GETTABLEKS                       R14 R14 K20 ["slots"]
      163 LOADK                            R17 K104 ["Custom"]
      164 MOVE                             R18 R11
      165 LOADK                            R19 K105 ["Accessory"]
      166 CONCAT                           R16 R17 R19
      167 MOVE                             R17 R12
      168 DUPTABLE                         R15 K107 [{["name"], ["override"], ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
      169 SETTABLEKS                       R16 R15 K26 ["name"]
      171 SETTABLEKS                       R17 R15 K28 ["override"]
      173 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      175 GETIMPORT                        R13 K110 [table.insert]
      177 CALL                             R13 2 0
      178 FORGLOOP                         R7 2 ; [-28]
      180 DUPTABLE                         R7 K130 [{"AvatarRules"}]
      181 DUPTABLE                         R8 K133 [{["AvatarType"] = True}]
      182 SETTABLEKS                       R8 R7 K129 ["AvatarRules"]
      184 GETTABLEKS                       R8 R1 K134 ["isSupported"]
      186 CALL                             R8 0 1
      187 JUMPIFNOT                        R8 ; [+3]
      188 DUPTABLE                         R8 K136 [{["HitAndTouchDetectionMode"] = True}]
      189 SETTABLEKS                       R8 R7 K137 ["AvatarCollisionRules"]
      191 MOVE                             R8 R5
      192 LOADNIL                          R9
      193 LOADNIL                          R10
      194 FORGPREP                         R8
      195 NEWTABLE                         R13 1 0
      197 GETTABLEKS                       R14 R12 K17 ["modeProperty"]
      199 LOADB                            R15 1
      200 SETTABLE                         R15 R13 R14
      201 GETTABLEKS                       R14 R12 K20 ["slots"]
      203 LOADNIL                          R15
      204 LOADNIL                          R16
      205 FORGPREP                         R14
      206 GETTABLEKS                       R20 R18 K26 ["name"]
      208 LOADK                            R21 K138 ["Enabled"]
      209 CONCAT                           R19 R20 R21
      210 LOADB                            R20 1
      211 SETTABLE                         R20 R13 R19
      212 GETTABLEKS                       R20 R18 K26 ["name"]
      214 LOADK                            R21 K139 ["Id"]
      215 CONCAT                           R19 R20 R21
      216 LOADB                            R20 1
      217 SETTABLE                         R20 R13 R19
      218 FORGLOOP                         R14 2 ; [-13]
      220 SETTABLE                         R13 R7 R11
      221 FORGLOOP                         R8 2 ; [-27]
      223 LOADB                            R8 0
      224 DUPCLOSURE                       R9 K140 [PROTO_1]
      225 DUPCLOSURE                       R10 K141 [PROTO_2]
      226 DUPCLOSURE                       R11 K142 [PROTO_3]
      227 DUPCLOSURE                       R12 K143 [PROTO_4]
      228 DUPCLOSURE                       R13 K144 [PROTO_5]
      229 DUPCLOSURE                       R14 K145 [PROTO_6]
      230 CAPTURE                          VAL R7
      231 SETTABLEKS                       R14 R3 K146 ["isOverrideBacked"]
      233 NEWCLOSURE                       R14 P7
      234 CAPTURE                          REF R8
      235 CAPTURE                          VAL R1
      236 CAPTURE                          VAL R5
      237 SETTABLEKS                       R14 R3 K147 ["writeOverrides"]
      239 DUPCLOSURE                       R14 K148 [PROTO_8]
      240 CAPTURE                          VAL R5
      241 SETTABLEKS                       R14 R3 K149 ["syncLegacyProperties"]
      243 NEWCLOSURE                       R14 P9
      244 CAPTURE                          REF R8
      245 CAPTURE                          VAL R1
      246 CAPTURE                          VAL R5
      247 CAPTURE                          VAL R3
      248 SETTABLEKS                       R14 R3 K150 ["connect"]
      250 DUPCLOSURE                       R14 K151 [PROTO_13]
      251 CAPTURE                          VAL R5
      252 SETTABLEKS                       R14 R3 K152 ["computeOverrides"]
      254 CLOSEUPVALS                      R8
      255 RETURN                           R3 1
