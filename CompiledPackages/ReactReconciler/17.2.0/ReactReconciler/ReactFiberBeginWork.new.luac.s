PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K1 [print]
        6 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K1 [print]
       10 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: "]
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R5 R0
       13 GETIMPORT                        R4 K5 [tostring]
       15 CALL                             R4 1 1
       16 CONCAT                           R2 R3 R4
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K7 [error]
       20 LOADK                            R3 K8 ["FIXME (roblox): "]
       21 MOVE                             R4 R0
       22 LOADK                            R5 K9 [" is unimplemented"]
       23 CONCAT                           R2 R3 R5
       24 LOADN                            R3 2
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldSuspendRef"]
        3 JUMPIF                           R1 ; [+14]
        4 GETUPVAL                         R1 0
        5 GETIMPORT                        R2 K2 [require]
        7 GETIMPORT                        R3 K4 [script]
        9 GETTABLEKS                       R3 R3 K5 ["Parent"]
       11 GETTABLEKS                       R3 R3 K6 ["ReactFiberReconciler"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R2 R2 K7 ["shouldSuspend"]
       16 SETTABLEKS                       R2 R1 K0 ["shouldSuspendRef"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["shouldSuspendRef"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R2 K4 [script]
        4 GETTABLEKS                       R2 R2 K5 ["Parent"]
        6 GETTABLEKS                       R1 R2 K2 ["ReactFiberHooks.new"]
        8 CALL                             R0 1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R2 R0 K6 ["renderWithHooks"]
       12 SETTABLEKS                       R2 R1 K7 ["renderWithHooksRef"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R2 R0 K8 ["bailoutHooks"]
       17 SETTABLEKS                       R2 R1 K9 ["bailoutHooksRef"]
       19 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["renderWithHooksRef"]
        4 JUMPIF                           R0 ; [+19]
        5 GETIMPORT                        R0 K2 [require]
        7 GETIMPORT                        R2 K5 [script]
        9 GETTABLEKS                       R2 R2 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K3 ["ReactFiberHooks.new"]
       13 CALL                             R0 1 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R2 R0 K7 ["renderWithHooks"]
       17 SETTABLEKS                       R2 R1 K0 ["renderWithHooksRef"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R2 R0 K8 ["bailoutHooks"]
       22 SETTABLEKS                       R2 R1 K9 ["bailoutHooksRef"]
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["renderWithHooksRef"]
       27 GETVARARGS                       R1 -1
       28 CALL                             R0 -1 -1
       29 RETURN                           R0 -1

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["bailoutHooksRef"]
        4 JUMPIF                           R0 ; [+19]
        5 GETIMPORT                        R0 K2 [require]
        7 GETIMPORT                        R2 K5 [script]
        9 GETTABLEKS                       R2 R2 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K3 ["ReactFiberHooks.new"]
       13 CALL                             R0 1 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R2 R0 K7 ["renderWithHooks"]
       17 SETTABLEKS                       R2 R1 K8 ["renderWithHooksRef"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R2 R0 K9 ["bailoutHooks"]
       22 SETTABLEKS                       R2 R1 K0 ["bailoutHooksRef"]
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["bailoutHooksRef"]
       27 GETVARARGS                       R1 -1
       28 CALL                             R0 -1 -1
       29 RETURN                           R0 -1

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R0 ; [+10]
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R1
        4 LOADNIL                          R6
        5 MOVE                             R7 R2
        6 MOVE                             R8 R3
        7 CALL                             R4 4 1
        8 SETTABLEKS                       R4 R1 K0 ["child"]
       10 RETURN                           R0 0
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R1
       13 GETTABLEKS                       R6 R0 K0 ["child"]
       15 MOVE                             R7 R2
       16 MOVE                             R8 R3
       17 CALL                             R4 4 1
       18 SETTABLEKS                       R4 R1 K0 ["child"]
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 GETTABLEKS                       R6 R0 K0 ["child"]
        4 LOADNIL                          R7
        5 MOVE                             R8 R3
        6 CALL                             R4 4 1
        7 SETTABLEKS                       R4 R1 K0 ["child"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R1
       11 LOADNIL                          R6
       12 MOVE                             R7 R2
       13 MOVE                             R8 R3
       14 CALL                             R4 4 1
       15 SETTABLEKS                       R4 R1 K0 ["child"]
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R5 0
        1 JUMPIF                           R5 ; [+2]
        2 GETUPVAL                         R5 1
        3 JUMPIFNOT                        R5 ; [+21]
        4 GETTABLEKS                       R5 R1 K0 ["type"]
        6 GETTABLEKS                       R6 R1 K1 ["elementType"]
        8 JUMPIFEQ                         R5 R6 ; [+16]
       10 GETTABLEKS                       R5 R2 K2 ["propTypes"]
       12 GETTABLEKS                       R6 R2 K3 ["validateProps"]
       14 JUMPIF                           R5 ; [+1]
       15 JUMPIFNOT                        R6 ; [+9]
       16 GETUPVAL                         R7 2
       17 MOVE                             R8 R5
       18 MOVE                             R9 R6
       19 MOVE                             R10 R3
       20 LOADK                            R11 K4 ["prop"]
       21 GETUPVAL                         R12 3
       22 MOVE                             R13 R2
       23 CALL                             R12 1 -1
       24 CALL                             R7 -1 0
       25 GETTABLEKS                       R5 R2 K5 ["render"]
       27 GETTABLEKS                       R6 R1 K6 ["ref"]
       29 LOADNIL                          R7
       30 GETUPVAL                         R8 4
       31 MOVE                             R9 R1
       32 MOVE                             R10 R4
       33 GETUPVAL                         R11 5
       34 GETTABLEKS                       R11 R11 K7 ["markWorkInProgressReceivedUpdate"]
       36 CALL                             R8 3 0
       37 GETUPVAL                         R8 0
       38 JUMPIFNOT                        R8 ; [+53]
       39 GETUPVAL                         R8 6
       40 SETTABLEKS                       R1 R8 K8 ["current"]
       42 GETUPVAL                         R8 7
       43 LOADB                            R9 1
       44 CALL                             R8 1 0
       45 GETUPVAL                         R8 8
       46 MOVE                             R9 R0
       47 MOVE                             R10 R1
       48 MOVE                             R11 R5
       49 MOVE                             R12 R3
       50 MOVE                             R13 R6
       51 MOVE                             R14 R4
       52 CALL                             R8 6 1
       53 MOVE                             R7 R8
       54 GETUPVAL                         R8 9
       55 JUMPIFNOT                        R8 ; [+32]
       56 GETTABLEKS                       R9 R1 K9 ["mode"]
       58 GETUPVAL                         R10 10
       59 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       61 GETIMPORT                        R8 K12 [bit32.band]
       63 CALL                             R8 2 1
       64 JUMPIFEQKN                       R8 K13 [0] ; [+23]
       66 GETUPVAL                         R8 11
       67 CALL                             R8 0 0
       68 GETIMPORT                        R8 K15 [xpcall]
       70 GETUPVAL                         R9 8
       71 GETUPVAL                         R10 12
       72 MOVE                             R11 R0
       73 MOVE                             R12 R1
       74 MOVE                             R13 R5
       75 MOVE                             R14 R3
       76 MOVE                             R15 R6
       77 MOVE                             R16 R4
       78 CALL                             R8 8 2
       79 JUMPIFNOT                        R8 ; [+1]
       80 MOVE                             R7 R9
       81 GETUPVAL                         R10 13
       82 CALL                             R10 0 0
       83 JUMPIF                           R8 ; [+4]
       84 GETIMPORT                        R10 K17 [error]
       86 MOVE                             R11 R9
       87 CALL                             R10 1 0
       88 GETUPVAL                         R8 7
       89 LOADB                            R9 0
       90 CALL                             R8 1 0
       91 JUMP                             ; [+9]
       92 GETUPVAL                         R8 8
       93 MOVE                             R9 R0
       94 MOVE                             R10 R1
       95 MOVE                             R11 R5
       96 MOVE                             R12 R3
       97 MOVE                             R13 R6
       98 MOVE                             R14 R4
       99 CALL                             R8 6 1
      100 MOVE                             R7 R8
      101 JUMPIFEQKNIL                     R0 ; [+14]
      103 GETUPVAL                         R8 14
      104 JUMPIF                           R8 ; [+11]
      105 GETUPVAL                         R8 15
      106 MOVE                             R9 R0
      107 MOVE                             R10 R1
      108 MOVE                             R11 R4
      109 CALL                             R8 3 0
      110 GETUPVAL                         R8 16
      111 MOVE                             R9 R0
      112 MOVE                             R10 R1
      113 MOVE                             R11 R4
      114 CALL                             R8 3 -1
      115 RETURN                           R8 -1
      116 GETTABLEKS                       R9 R1 K18 ["flags"]
      118 GETUPVAL                         R10 17
      119 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
      121 GETIMPORT                        R8 K20 [bit32.bor]
      123 CALL                             R8 2 1
      124 SETTABLEKS                       R8 R1 K18 ["flags"]
      126 MOVE                             R8 R7
      127 JUMPIFNOTEQKNIL                  R0 ; [+10]
      129 GETUPVAL                         R9 18
      130 MOVE                             R10 R1
      131 LOADNIL                          R11
      132 MOVE                             R12 R8
      133 MOVE                             R13 R4
      134 CALL                             R9 4 1
      135 SETTABLEKS                       R9 R1 K21 ["child"]
      137 JUMP                             ; [+9]
      138 GETUPVAL                         R9 19
      139 MOVE                             R10 R1
      140 GETTABLEKS                       R11 R0 K21 ["child"]
      142 MOVE                             R12 R8
      143 MOVE                             R13 R4
      144 CALL                             R9 4 1
      145 SETTABLEKS                       R9 R1 K21 ["child"]
      147 GETTABLEKS                       R8 R1 K21 ["child"]
      149 RETURN                           R8 1

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R0 ; [+90]
        2 GETTABLEKS                       R6 R2 K0 ["type"]
        4 GETUPVAL                         R7 0
        5 MOVE                             R8 R6
        6 CALL                             R7 1 1
        7 JUMPIFNOT                        R7 ; [+36]
        8 GETTABLEKS                       R7 R2 K1 ["compare"]
       10 JUMPIFNOTEQKNIL                  R7 ; [+33]
       12 GETTABLEKS                       R7 R2 K2 ["defaultProps"]
       14 JUMPIFNOTEQKNIL                  R7 ; [+29]
       16 MOVE                             R7 R6
       17 GETUPVAL                         R8 1
       18 JUMPIFNOT                        R8 ; [+4]
       19 GETUPVAL                         R8 2
       20 MOVE                             R9 R6
       21 CALL                             R8 1 1
       22 MOVE                             R7 R8
       23 GETUPVAL                         R8 3
       24 SETTABLEKS                       R8 R1 K3 ["tag"]
       26 SETTABLEKS                       R7 R1 K0 ["type"]
       28 GETUPVAL                         R8 1
       29 JUMPIFNOT                        R8 ; [+5]
       30 GETGLOBAL                        R8 K4 ["validateFunctionComponentInDev"]
       32 MOVE                             R9 R1
       33 MOVE                             R10 R6
       34 CALL                             R8 2 0
       35 GETUPVAL                         R8 4
       36 MOVE                             R9 R0
       37 MOVE                             R10 R1
       38 MOVE                             R11 R7
       39 MOVE                             R12 R3
       40 MOVE                             R13 R4
       41 MOVE                             R14 R5
       42 CALL                             R8 6 -1
       43 RETURN                           R8 -1
       44 GETUPVAL                         R7 1
       45 JUMPIF                           R7 ; [+2]
       46 GETUPVAL                         R7 5
       47 JUMPIFNOT                        R7 ; [+24]
       48 LOADNIL                          R7
       49 LOADNIL                          R8
       50 FASTCALL1                        TYPE R6 ; [+3]
       51 MOVE                             R10 R6
       52 GETIMPORT                        R9 K5 [type]
       54 CALL                             R9 1 1
       55 JUMPIFNOTEQKS                    R9 K6 ["table"] ; [+5]
       57 GETTABLEKS                       R7 R6 K7 ["propTypes"]
       59 GETTABLEKS                       R8 R6 K8 ["validateProps"]
       61 JUMPIF                           R7 ; [+1]
       62 JUMPIFNOT                        R8 ; [+9]
       63 GETUPVAL                         R9 6
       64 MOVE                             R10 R7
       65 MOVE                             R11 R8
       66 MOVE                             R12 R3
       67 LOADK                            R13 K9 ["prop"]
       68 GETUPVAL                         R14 7
       69 MOVE                             R15 R6
       70 CALL                             R14 1 -1
       71 CALL                             R9 -1 0
       72 GETUPVAL                         R7 8
       73 GETTABLEKS                       R8 R2 K0 ["type"]
       75 LOADNIL                          R9
       76 MOVE                             R10 R3
       77 MOVE                             R11 R1
       78 GETTABLEKS                       R12 R1 K10 ["mode"]
       80 MOVE                             R13 R5
       81 CALL                             R7 6 1
       82 GETTABLEKS                       R8 R1 K11 ["ref"]
       84 SETTABLEKS                       R8 R7 K11 ["ref"]
       86 SETTABLEKS                       R1 R7 K12 ["return_"]
       88 SETTABLEKS                       R7 R1 K13 ["child"]
       90 RETURN                           R7 1
       91 GETUPVAL                         R6 1
       92 JUMPIF                           R6 ; [+2]
       93 GETUPVAL                         R6 5
       94 JUMPIFNOT                        R6 ; [+26]
       95 GETTABLEKS                       R6 R2 K0 ["type"]
       97 LOADNIL                          R7
       98 LOADNIL                          R8
       99 FASTCALL1                        TYPE R6 ; [+3]
      100 MOVE                             R10 R6
      101 GETIMPORT                        R9 K5 [type]
      103 CALL                             R9 1 1
      104 JUMPIFNOTEQKS                    R9 K6 ["table"] ; [+5]
      106 GETTABLEKS                       R7 R6 K7 ["propTypes"]
      108 GETTABLEKS                       R8 R6 K8 ["validateProps"]
      110 JUMPIF                           R7 ; [+1]
      111 JUMPIFNOT                        R8 ; [+9]
      112 GETUPVAL                         R9 6
      113 MOVE                             R10 R7
      114 MOVE                             R11 R8
      115 MOVE                             R12 R3
      116 LOADK                            R13 K9 ["prop"]
      117 GETUPVAL                         R14 7
      118 MOVE                             R15 R6
      119 CALL                             R14 1 -1
      120 CALL                             R9 -1 0
      121 GETTABLEKS                       R6 R0 K13 ["child"]
      123 GETUPVAL                         R7 9
      124 GETTABLEKS                       R7 R7 K14 ["includesSomeLane"]
      126 MOVE                             R8 R4
      127 MOVE                             R9 R5
      128 CALL                             R7 2 1
      129 JUMPIF                           R7 ; [+24]
      130 GETTABLEKS                       R7 R6 K15 ["memoizedProps"]
      132 GETTABLEKS                       R8 R2 K1 ["compare"]
      134 JUMPIFNOTEQKNIL                  R8 ; [+2]
      136 GETUPVAL                         R8 10
      137 MOVE                             R9 R8
      138 MOVE                             R10 R7
      139 MOVE                             R11 R3
      140 CALL                             R9 2 1
      141 JUMPIFNOT                        R9 ; [+12]
      142 GETTABLEKS                       R9 R0 K11 ["ref"]
      144 GETTABLEKS                       R10 R1 K11 ["ref"]
      146 JUMPIFNOTEQ                      R9 R10 ; [+7]
      148 GETUPVAL                         R9 11
      149 MOVE                             R10 R0
      150 MOVE                             R11 R1
      151 MOVE                             R12 R5
      152 CALL                             R9 3 -1
      153 RETURN                           R9 -1
      154 GETTABLEKS                       R8 R1 K16 ["flags"]
      156 GETUPVAL                         R9 12
      157 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      159 GETIMPORT                        R7 K19 [bit32.bor]
      161 CALL                             R7 2 1
      162 SETTABLEKS                       R7 R1 K16 ["flags"]
      164 GETUPVAL                         R7 13
      165 MOVE                             R8 R6
      166 MOVE                             R9 R3
      167 CALL                             R7 2 1
      168 GETTABLEKS                       R8 R1 K11 ["ref"]
      170 SETTABLEKS                       R8 R7 K11 ["ref"]
      172 SETTABLEKS                       R1 R7 K12 ["return_"]
      174 SETTABLEKS                       R7 R1 K13 ["child"]
      176 RETURN                           R7 1

PROTO_9:
        0 GETUPVAL                         R6 0
        1 JUMPIF                           R6 ; [+2]
        2 GETUPVAL                         R6 1
        3 JUMPIFNOT                        R6 ; [+54]
        4 GETTABLEKS                       R6 R1 K0 ["type"]
        6 GETTABLEKS                       R7 R1 K1 ["elementType"]
        8 JUMPIFEQ                         R6 R7 ; [+49]
       10 GETTABLEKS                       R6 R1 K1 ["elementType"]
       12 GETTABLEKS                       R7 R6 K2 ["$$typeof"]
       14 GETUPVAL                         R8 2
       15 JUMPIFNOTEQ                      R7 R8 ; [+42]
       17 MOVE                             R7 R6
       18 GETTABLEKS                       R8 R7 K3 ["_payload"]
       20 GETTABLEKS                       R9 R7 K4 ["_init"]
       22 GETIMPORT                        R10 K6 [xpcall]
       24 MOVE                             R11 R9
       25 GETUPVAL                         R12 3
       26 MOVE                             R13 R8
       27 CALL                             R10 3 2
       28 JUMPIFNOT                        R10 ; [+2]
       29 MOVE                             R6 R11
       30 JUMP                             ; [+1]
       31 LOADNIL                          R6
       32 LOADNIL                          R12
       33 LOADNIL                          R13
       34 JUMPIFEQKNIL                     R6 ; [+12]
       36 FASTCALL1                        TYPE R6 ; [+3]
       37 MOVE                             R15 R6
       38 GETIMPORT                        R14 K7 [type]
       40 CALL                             R14 1 1
       41 JUMPIFNOTEQKS                    R14 K8 ["table"] ; [+5]
       43 GETTABLEKS                       R12 R6 K9 ["propTypes"]
       45 GETTABLEKS                       R13 R6 K10 ["validateProps"]
       47 JUMPIF                           R12 ; [+1]
       48 JUMPIFNOT                        R13 ; [+9]
       49 GETUPVAL                         R14 4
       50 MOVE                             R15 R12
       51 MOVE                             R16 R13
       52 MOVE                             R17 R3
       53 LOADK                            R18 K11 ["prop"]
       54 GETUPVAL                         R19 5
       55 MOVE                             R20 R6
       56 CALL                             R19 1 -1
       57 CALL                             R14 -1 0
       58 JUMPIFEQKNIL                     R0 ; [+58]
       60 GETTABLEKS                       R6 R0 K12 ["memoizedProps"]
       62 LOADB                            R7 1
       63 GETUPVAL                         R8 0
       64 JUMPIFNOT                        R8 ; [+8]
       65 GETTABLEKS                       R8 R1 K0 ["type"]
       67 GETTABLEKS                       R9 R0 K0 ["type"]
       69 JUMPIFEQ                         R8 R9 ; [+2]
       71 LOADB                            R7 0 +1
       72 LOADB                            R7 1
       73 GETUPVAL                         R8 6
       74 MOVE                             R9 R6
       75 MOVE                             R10 R3
       76 CALL                             R8 2 1
       77 JUMPIFNOT                        R8 ; [+39]
       78 GETTABLEKS                       R8 R0 K13 ["ref"]
       80 GETTABLEKS                       R9 R1 K13 ["ref"]
       82 JUMPIFNOTEQ                      R8 R9 ; [+34]
       84 JUMPIFNOT                        R7 ; [+32]
       85 LOADB                            R8 0
       86 SETUPVAL                         R8 7
       87 GETUPVAL                         R8 8
       88 GETTABLEKS                       R8 R8 K14 ["includesSomeLane"]
       90 MOVE                             R9 R5
       91 MOVE                             R10 R4
       92 CALL                             R8 2 1
       93 JUMPIF                           R8 ; [+10]
       94 GETTABLEKS                       R8 R0 K15 ["lanes"]
       96 SETTABLEKS                       R8 R1 K15 ["lanes"]
       98 GETUPVAL                         R8 9
       99 MOVE                             R9 R0
      100 MOVE                             R10 R1
      101 MOVE                             R11 R5
      102 CALL                             R8 3 -1
      103 RETURN                           R8 -1
      104 GETTABLEKS                       R9 R0 K16 ["flags"]
      106 GETUPVAL                         R10 10
      107 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      109 GETIMPORT                        R8 K19 [bit32.band]
      111 CALL                             R8 2 1
      112 GETUPVAL                         R9 11
      113 JUMPIFEQ                         R8 R9 ; [+3]
      115 LOADB                            R8 1
      116 SETUPVAL                         R8 7
      117 GETUPVAL                         R6 12
      118 MOVE                             R7 R0
      119 MOVE                             R8 R1
      120 MOVE                             R9 R2
      121 MOVE                             R10 R3
      122 MOVE                             R11 R5
      123 CALL                             R6 5 -1
      124 RETURN                           R6 -1

PROTO_10:
        0 GETTABLEKS                       R3 R1 K0 ["pendingProps"]
        2 GETTABLEKS                       R4 R3 K1 ["children"]
        4 LOADNIL                          R5
        5 JUMPIFEQKNIL                     R0 ; [+3]
        7 GETTABLEKS                       R5 R0 K2 ["memoizedState"]
        9 GETTABLEKS                       R6 R3 K3 ["mode"]
       11 JUMPIFEQKS                       R6 K4 ["hidden"] ; [+5]
       13 GETTABLEKS                       R6 R3 K3 ["mode"]
       15 JUMPIFNOTEQKS                    R6 K5 ["unstable-defer-without-hiding"] ; [+97]
       17 GETTABLEKS                       R7 R1 K3 ["mode"]
       19 GETUPVAL                         R8 0
       20 FASTCALL2                        BIT32_BAND R7 R8 ; [+3]
       22 GETIMPORT                        R6 K8 [bit32.band]
       24 CALL                             R6 2 1
       25 GETUPVAL                         R7 1
       26 JUMPIFNOTEQ                      R6 R7 ; [+14]
       28 DUPTABLE                         R6 K10 [{"baseLanes"}]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K11 ["NoLanes"]
       32 SETTABLEKS                       R7 R6 K9 ["baseLanes"]
       34 SETTABLEKS                       R6 R1 K2 ["memoizedState"]
       36 GETUPVAL                         R7 3
       37 MOVE                             R8 R1
       38 MOVE                             R9 R2
       39 CALL                             R7 2 0
       40 JUMP                             ; [+92]
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K12 ["includesSomeLane"]
       44 MOVE                             R7 R2
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R8 R8 K13 ["OffscreenLane"]
       48 CALL                             R6 2 1
       49 JUMPIF                           R6 ; [+45]
       50 LOADNIL                          R6
       51 JUMPIFEQKNIL                     R5 ; [+11]
       53 GETTABLEKS                       R7 R5 K9 ["baseLanes"]
       55 GETUPVAL                         R8 2
       56 GETTABLEKS                       R8 R8 K14 ["mergeLanes"]
       58 MOVE                             R9 R7
       59 MOVE                             R10 R2
       60 CALL                             R8 2 1
       61 MOVE                             R6 R8
       62 JUMP                             ; [+1]
       63 MOVE                             R6 R2
       64 GETUPVAL                         R7 4
       65 JUMPIFNOT                        R7 ; [+5]
       66 GETUPVAL                         R7 5
       67 GETUPVAL                         R8 2
       68 GETTABLEKS                       R8 R8 K13 ["OffscreenLane"]
       70 CALL                             R7 1 0
       71 GETUPVAL                         R7 2
       72 GETTABLEKS                       R7 R7 K15 ["laneToLanes"]
       74 GETUPVAL                         R8 2
       75 GETTABLEKS                       R8 R8 K13 ["OffscreenLane"]
       77 CALL                             R7 1 1
       78 SETTABLEKS                       R7 R1 K16 ["childLanes"]
       80 GETTABLEKS                       R7 R1 K16 ["childLanes"]
       82 SETTABLEKS                       R7 R1 K17 ["lanes"]
       84 DUPTABLE                         R7 K10 [{"baseLanes"}]
       85 SETTABLEKS                       R6 R7 K9 ["baseLanes"]
       87 SETTABLEKS                       R7 R1 K2 ["memoizedState"]
       89 GETUPVAL                         R8 3
       90 MOVE                             R9 R1
       91 MOVE                             R10 R6
       92 CALL                             R8 2 0
       93 LOADNIL                          R8
       94 RETURN                           R8 1
       95 DUPTABLE                         R6 K10 [{"baseLanes"}]
       96 GETUPVAL                         R7 2
       97 GETTABLEKS                       R7 R7 K11 ["NoLanes"]
       99 SETTABLEKS                       R7 R6 K9 ["baseLanes"]
      101 SETTABLEKS                       R6 R1 K2 ["memoizedState"]
      103 MOVE                             R7 R2
      104 JUMPIFEQKNIL                     R5 ; [+3]
      106 GETTABLEKS                       R7 R5 K9 ["baseLanes"]
      108 GETUPVAL                         R8 3
      109 MOVE                             R9 R1
      110 MOVE                             R10 R7
      111 CALL                             R8 2 0
      112 JUMP                             ; [+20]
      113 LOADNIL                          R6
      114 JUMPIFEQKNIL                     R5 ; [+13]
      116 GETUPVAL                         R7 2
      117 GETTABLEKS                       R7 R7 K14 ["mergeLanes"]
      119 GETTABLEKS                       R8 R5 K9 ["baseLanes"]
      121 MOVE                             R9 R2
      122 CALL                             R7 2 1
      123 MOVE                             R6 R7
      124 LOADNIL                          R7
      125 SETTABLEKS                       R7 R1 K2 ["memoizedState"]
      127 JUMP                             ; [+1]
      128 MOVE                             R6 R2
      129 GETUPVAL                         R7 3
      130 MOVE                             R8 R1
      131 MOVE                             R9 R6
      132 CALL                             R7 2 0
      133 JUMPIFNOTEQKNIL                  R0 ; [+10]
      135 GETUPVAL                         R6 6
      136 MOVE                             R7 R1
      137 LOADNIL                          R8
      138 MOVE                             R9 R4
      139 MOVE                             R10 R2
      140 CALL                             R6 4 1
      141 SETTABLEKS                       R6 R1 K18 ["child"]
      143 JUMP                             ; [+9]
      144 GETUPVAL                         R6 7
      145 MOVE                             R7 R1
      146 GETTABLEKS                       R8 R0 K18 ["child"]
      148 MOVE                             R9 R4
      149 MOVE                             R10 R2
      150 CALL                             R6 4 1
      151 SETTABLEKS                       R6 R1 K18 ["child"]
      153 GETTABLEKS                       R6 R1 K18 ["child"]
      155 RETURN                           R6 1

PROTO_11:
        0 GETTABLEKS                       R3 R1 K0 ["pendingProps"]
        2 JUMPIFNOTEQKNIL                  R0 ; [+10]
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R1
        6 LOADNIL                          R6
        7 MOVE                             R7 R3
        8 MOVE                             R8 R2
        9 CALL                             R4 4 1
       10 SETTABLEKS                       R4 R1 K1 ["child"]
       12 JUMP                             ; [+9]
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R1
       15 GETTABLEKS                       R6 R0 K1 ["child"]
       17 MOVE                             R7 R3
       18 MOVE                             R8 R2
       19 CALL                             R4 4 1
       20 SETTABLEKS                       R4 R1 K1 ["child"]
       22 GETTABLEKS                       R4 R1 K1 ["child"]
       24 RETURN                           R4 1

PROTO_12:
        0 GETTABLEKS                       R3 R1 K0 ["pendingProps"]
        2 GETTABLEKS                       R3 R3 K1 ["children"]
        4 JUMPIFNOTEQKNIL                  R0 ; [+10]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R1
        8 LOADNIL                          R6
        9 MOVE                             R7 R3
       10 MOVE                             R8 R2
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R1 K2 ["child"]
       14 JUMP                             ; [+9]
       15 GETUPVAL                         R4 1
       16 MOVE                             R5 R1
       17 GETTABLEKS                       R6 R0 K2 ["child"]
       19 MOVE                             R7 R3
       20 MOVE                             R8 R2
       21 CALL                             R4 4 1
       22 SETTABLEKS                       R4 R1 K2 ["child"]
       24 GETTABLEKS                       R4 R1 K2 ["child"]
       26 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+8]
        2 GETTABLEKS                       R3 R1 K0 ["stateNode"]
        4 LOADN                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["effectDuration"]
        7 LOADN                            R4 0
        8 SETTABLEKS                       R4 R3 K2 ["passiveEffectDuration"]
       10 GETTABLEKS                       R3 R1 K3 ["pendingProps"]
       12 GETTABLEKS                       R4 R3 K4 ["children"]
       14 JUMPIFNOTEQKNIL                  R0 ; [+10]
       16 GETUPVAL                         R5 1
       17 MOVE                             R6 R1
       18 LOADNIL                          R7
       19 MOVE                             R8 R4
       20 MOVE                             R9 R2
       21 CALL                             R5 4 1
       22 SETTABLEKS                       R5 R1 K5 ["child"]
       24 JUMP                             ; [+9]
       25 GETUPVAL                         R5 2
       26 MOVE                             R6 R1
       27 GETTABLEKS                       R7 R0 K5 ["child"]
       29 MOVE                             R8 R4
       30 MOVE                             R9 R2
       31 CALL                             R5 4 1
       32 SETTABLEKS                       R5 R1 K5 ["child"]
       34 GETTABLEKS                       R5 R1 K5 ["child"]
       36 RETURN                           R5 1

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["ref"]
        2 JUMPIFNOTEQKNIL                  R0 ; [+3]
        4 JUMPIFNOTEQKNIL                  R2 ; [+7]
        6 JUMPIFEQKNIL                     R0 ; [+15]
        8 GETTABLEKS                       R3 R0 K0 ["ref"]
       10 JUMPIFEQ                         R3 R2 ; [+11]
       12 GETTABLEKS                       R4 R1 K1 ["flags"]
       14 GETUPVAL                         R5 0
       15 FASTCALL2                        BIT32_BOR R4 R5 ; [+3]
       17 GETIMPORT                        R3 K4 [bit32.bor]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R1 K1 ["flags"]
       22 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R5 0
        1 JUMPIF                           R5 ; [+2]
        2 GETUPVAL                         R5 1
        3 JUMPIFNOT                        R5 ; [+37]
        4 FASTCALL1                        TYPE R2 ; [+3]
        5 MOVE                             R6 R2
        6 GETIMPORT                        R5 K1 [type]
        8 CALL                             R5 1 1
        9 JUMPIFEQKS                       R5 K2 ["function"] ; [+31]
       11 GETTABLEKS                       R5 R1 K0 ["type"]
       13 GETTABLEKS                       R6 R1 K3 ["elementType"]
       15 JUMPIFEQ                         R5 R6 ; [+25]
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FASTCALL1                        TYPE R2 ; [+3]
       20 MOVE                             R8 R2
       21 GETIMPORT                        R7 K1 [type]
       23 CALL                             R7 1 1
       24 JUMPIFNOTEQKS                    R7 K4 ["table"] ; [+5]
       26 GETTABLEKS                       R5 R2 K5 ["propTypes"]
       28 GETTABLEKS                       R6 R2 K6 ["validateProps"]
       30 JUMPIF                           R5 ; [+1]
       31 JUMPIFNOT                        R6 ; [+9]
       32 GETUPVAL                         R7 2
       33 MOVE                             R8 R5
       34 MOVE                             R9 R6
       35 MOVE                             R10 R3
       36 LOADK                            R11 K7 ["prop"]
       37 GETUPVAL                         R12 3
       38 MOVE                             R13 R2
       39 CALL                             R12 1 -1
       40 CALL                             R7 -1 0
       41 LOADNIL                          R5
       42 GETUPVAL                         R6 4
       43 JUMPIF                           R6 ; [+10]
       44 GETUPVAL                         R6 5
       45 MOVE                             R7 R1
       46 MOVE                             R8 R2
       47 LOADB                            R9 1
       48 CALL                             R6 3 1
       49 GETUPVAL                         R7 6
       50 MOVE                             R8 R1
       51 MOVE                             R9 R6
       52 CALL                             R7 2 1
       53 MOVE                             R5 R7
       54 LOADNIL                          R6
       55 GETUPVAL                         R7 7
       56 MOVE                             R8 R1
       57 MOVE                             R9 R4
       58 GETUPVAL                         R10 8
       59 GETTABLEKS                       R10 R10 K8 ["markWorkInProgressReceivedUpdate"]
       61 CALL                             R7 3 0
       62 GETUPVAL                         R7 0
       63 JUMPIFNOT                        R7 ; [+53]
       64 GETUPVAL                         R7 9
       65 SETTABLEKS                       R1 R7 K9 ["current"]
       67 GETUPVAL                         R7 10
       68 LOADB                            R8 1
       69 CALL                             R7 1 0
       70 GETUPVAL                         R7 11
       71 MOVE                             R8 R0
       72 MOVE                             R9 R1
       73 MOVE                             R10 R2
       74 MOVE                             R11 R3
       75 MOVE                             R12 R5
       76 MOVE                             R13 R4
       77 CALL                             R7 6 1
       78 MOVE                             R6 R7
       79 GETUPVAL                         R7 12
       80 JUMPIFNOT                        R7 ; [+32]
       81 GETTABLEKS                       R8 R1 K10 ["mode"]
       83 GETUPVAL                         R9 13
       84 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       86 GETIMPORT                        R7 K13 [bit32.band]
       88 CALL                             R7 2 1
       89 JUMPIFEQKN                       R7 K14 [0] ; [+23]
       91 GETUPVAL                         R7 14
       92 CALL                             R7 0 0
       93 GETIMPORT                        R7 K16 [xpcall]
       95 GETUPVAL                         R8 11
       96 GETUPVAL                         R9 15
       97 MOVE                             R10 R0
       98 MOVE                             R11 R1
       99 MOVE                             R12 R2
      100 MOVE                             R13 R3
      101 MOVE                             R14 R5
      102 MOVE                             R15 R4
      103 CALL                             R7 8 2
      104 GETUPVAL                         R9 16
      105 CALL                             R9 0 0
      106 JUMPIFNOT                        R7 ; [+2]
      107 MOVE                             R6 R8
      108 JUMP                             ; [+4]
      109 GETIMPORT                        R9 K18 [error]
      111 MOVE                             R10 R8
      112 CALL                             R9 1 0
      113 GETUPVAL                         R7 10
      114 LOADB                            R8 0
      115 CALL                             R7 1 0
      116 JUMP                             ; [+9]
      117 GETUPVAL                         R7 11
      118 MOVE                             R8 R0
      119 MOVE                             R9 R1
      120 MOVE                             R10 R2
      121 MOVE                             R11 R3
      122 MOVE                             R12 R5
      123 MOVE                             R13 R4
      124 CALL                             R7 6 1
      125 MOVE                             R6 R7
      126 JUMPIFEQKNIL                     R0 ; [+14]
      128 GETUPVAL                         R7 17
      129 JUMPIF                           R7 ; [+11]
      130 GETUPVAL                         R7 18
      131 MOVE                             R8 R0
      132 MOVE                             R9 R1
      133 MOVE                             R10 R4
      134 CALL                             R7 3 0
      135 GETUPVAL                         R7 19
      136 MOVE                             R8 R0
      137 MOVE                             R9 R1
      138 MOVE                             R10 R4
      139 CALL                             R7 3 -1
      140 RETURN                           R7 -1
      141 GETTABLEKS                       R8 R1 K19 ["flags"]
      143 GETUPVAL                         R9 20
      144 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      146 GETIMPORT                        R7 K21 [bit32.bor]
      148 CALL                             R7 2 1
      149 SETTABLEKS                       R7 R1 K19 ["flags"]
      151 MOVE                             R7 R6
      152 JUMPIFNOTEQKNIL                  R0 ; [+10]
      154 GETUPVAL                         R8 21
      155 MOVE                             R9 R1
      156 LOADNIL                          R10
      157 MOVE                             R11 R7
      158 MOVE                             R12 R4
      159 CALL                             R8 4 1
      160 SETTABLEKS                       R8 R1 K22 ["child"]
      162 JUMP                             ; [+9]
      163 GETUPVAL                         R8 22
      164 MOVE                             R9 R1
      165 GETTABLEKS                       R10 R0 K22 ["child"]
      167 MOVE                             R11 R7
      168 MOVE                             R12 R4
      169 CALL                             R8 4 1
      170 SETTABLEKS                       R8 R1 K22 ["child"]
      172 GETTABLEKS                       R7 R1 K22 ["child"]
      174 RETURN                           R7 1

PROTO_16:
        0 GETUPVAL                         R5 0
        1 JUMPIF                           R5 ; [+2]
        2 GETUPVAL                         R5 1
        3 JUMPIFNOT                        R5 ; [+21]
        4 GETTABLEKS                       R5 R1 K0 ["type"]
        6 GETTABLEKS                       R6 R1 K1 ["elementType"]
        8 JUMPIFEQ                         R5 R6 ; [+16]
       10 GETTABLEKS                       R5 R2 K2 ["propTypes"]
       12 GETTABLEKS                       R6 R2 K3 ["validateProps"]
       14 JUMPIF                           R5 ; [+1]
       15 JUMPIFNOT                        R6 ; [+9]
       16 GETUPVAL                         R7 2
       17 MOVE                             R8 R5
       18 MOVE                             R9 R6
       19 MOVE                             R10 R3
       20 LOADK                            R11 K4 ["prop"]
       21 GETUPVAL                         R12 3
       22 MOVE                             R13 R2
       23 CALL                             R12 1 -1
       24 CALL                             R7 -1 0
       25 LOADNIL                          R5
       26 GETUPVAL                         R6 4
       27 MOVE                             R7 R2
       28 CALL                             R6 1 1
       29 JUMPIFNOT                        R6 ; [+5]
       30 LOADB                            R5 1
       31 GETUPVAL                         R6 5
       32 MOVE                             R7 R1
       33 CALL                             R6 1 0
       34 JUMP                             ; [+1]
       35 LOADB                            R5 0
       36 GETUPVAL                         R6 6
       37 MOVE                             R7 R1
       38 MOVE                             R8 R4
       39 GETUPVAL                         R9 7
       40 GETTABLEKS                       R9 R9 K5 ["markWorkInProgressReceivedUpdate"]
       42 CALL                             R6 3 0
       43 GETTABLEKS                       R6 R1 K6 ["stateNode"]
       45 LOADNIL                          R7
       46 JUMPIFNOTEQKNIL                  R6 ; [+32]
       48 JUMPIFEQKNIL                     R0 ; [+17]
       50 LOADNIL                          R8
       51 SETTABLEKS                       R8 R0 K7 ["alternate"]
       53 LOADNIL                          R8
       54 SETTABLEKS                       R8 R1 K7 ["alternate"]
       56 GETTABLEKS                       R9 R1 K8 ["flags"]
       58 GETUPVAL                         R10 8
       59 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
       61 GETIMPORT                        R8 K11 [bit32.bor]
       63 CALL                             R8 2 1
       64 SETTABLEKS                       R8 R1 K8 ["flags"]
       66 GETUPVAL                         R8 9
       67 MOVE                             R9 R1
       68 MOVE                             R10 R2
       69 MOVE                             R11 R3
       70 CALL                             R8 3 0
       71 GETUPVAL                         R8 10
       72 MOVE                             R9 R1
       73 MOVE                             R10 R2
       74 MOVE                             R11 R3
       75 MOVE                             R12 R4
       76 CALL                             R8 4 0
       77 LOADB                            R7 1
       78 JUMP                             ; [+18]
       79 JUMPIFNOTEQKNIL                  R0 ; [+9]
       81 GETUPVAL                         R8 11
       82 MOVE                             R9 R1
       83 MOVE                             R10 R2
       84 MOVE                             R11 R3
       85 MOVE                             R12 R4
       86 CALL                             R8 4 1
       87 MOVE                             R7 R8
       88 JUMP                             ; [+8]
       89 GETUPVAL                         R8 12
       90 MOVE                             R9 R0
       91 MOVE                             R10 R1
       92 MOVE                             R11 R2
       93 MOVE                             R12 R3
       94 MOVE                             R13 R4
       95 CALL                             R8 5 1
       96 MOVE                             R7 R8
       97 GETGLOBAL                        R8 K12 ["finishClassComponent"]
       99 MOVE                             R9 R0
      100 MOVE                             R10 R1
      101 MOVE                             R11 R2
      102 MOVE                             R12 R7
      103 MOVE                             R13 R5
      104 MOVE                             R14 R4
      105 CALL                             R8 6 1
      106 GETUPVAL                         R9 0
      107 JUMPIFNOT                        R9 ; [+25]
      108 GETTABLEKS                       R9 R1 K6 ["stateNode"]
      110 JUMPIFNOT                        R7 ; [+22]
      111 GETTABLEKS                       R10 R9 K13 ["props"]
      113 JUMPIFEQ                         R10 R3 ; [+19]
      115 GETUPVAL                         R10 7
      116 GETTABLEKS                       R10 R10 K14 ["didWarnAboutReassigningProps"]
      118 JUMPIF                           R10 ; [+10]
      119 GETUPVAL                         R10 13
      120 GETTABLEKS                       R10 R10 K15 ["error"]
      122 LOADK                            R11 K16 ["It looks like %s is reassigning its own `this.props` while rendering. This is not supported and can lead to confusing bugs."]
      123 GETUPVAL                         R13 3
      124 GETTABLEKS                       R14 R1 K0 ["type"]
      126 CALL                             R13 1 1
      127 ORK                              R12 R13 K17 ["a component"]
      128 CALL                             R10 2 0
      129 GETUPVAL                         R10 7
      130 LOADB                            R11 1
      131 SETTABLEKS                       R11 R10 K14 ["didWarnAboutReassigningProps"]
      133 RETURN                           R8 1

PROTO_17:
        0 GETTABLEKS                       R6 R1 K0 ["ref"]
        2 JUMPIFNOTEQKNIL                  R0 ; [+3]
        4 JUMPIFNOTEQKNIL                  R6 ; [+7]
        6 JUMPIFEQKNIL                     R0 ; [+15]
        8 GETTABLEKS                       R7 R0 K0 ["ref"]
       10 JUMPIFEQ                         R7 R6 ; [+11]
       12 GETTABLEKS                       R8 R1 K1 ["flags"]
       14 GETUPVAL                         R9 0
       15 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
       17 GETIMPORT                        R7 K4 [bit32.bor]
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R1 K1 ["flags"]
       22 GETTABLEKS                       R8 R1 K1 ["flags"]
       24 GETUPVAL                         R9 1
       25 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       27 GETIMPORT                        R7 K6 [bit32.band]
       29 CALL                             R7 2 1
       30 GETUPVAL                         R8 2
       31 JUMPIFNOTEQ                      R7 R8 ; [+2]
       33 LOADB                            R6 0 +1
       34 LOADB                            R6 1
       35 JUMPIF                           R3 ; [+13]
       36 JUMPIF                           R6 ; [+12]
       37 JUMPIFNOT                        R4 ; [+5]
       38 GETUPVAL                         R7 3
       39 MOVE                             R8 R1
       40 MOVE                             R9 R2
       41 LOADB                            R10 0
       42 CALL                             R7 3 0
       43 GETUPVAL                         R7 4
       44 MOVE                             R8 R0
       45 MOVE                             R9 R1
       46 MOVE                             R10 R5
       47 CALL                             R7 3 -1
       48 RETURN                           R7 -1
       49 GETTABLEKS                       R7 R1 K7 ["stateNode"]
       51 GETUPVAL                         R8 5
       52 SETTABLEKS                       R1 R8 K8 ["current"]
       54 LOADNIL                          R8
       55 JUMPIFNOT                        R6 ; [+19]
       56 GETTABLEKS                       R9 R2 K9 ["getDerivedStateFromError"]
       58 JUMPIFEQKNIL                     R9 ; [+9]
       60 GETTABLEKS                       R10 R2 K9 ["getDerivedStateFromError"]
       62 FASTCALL1                        TYPE R10 ; [+2]
       63 GETIMPORT                        R9 K11 [type]
       65 CALL                             R9 1 1
       66 JUMPIFEQKS                       R9 K12 ["function"] ; [+8]
       68 LOADNIL                          R8
       69 GETUPVAL                         R9 6
       70 JUMPIFNOT                        R9 ; [+49]
       71 GETUPVAL                         R9 7
       72 MOVE                             R10 R1
       73 CALL                             R9 1 0
       74 JUMP                             ; [+45]
       75 GETUPVAL                         R9 8
       76 JUMPIFNOT                        R9 ; [+39]
       77 GETUPVAL                         R9 9
       78 LOADB                            R10 1
       79 CALL                             R9 1 0
       80 NAMECALL                         R9 R7 K13 ["render"]
       82 CALL                             R9 1 1
       83 MOVE                             R8 R9
       84 GETUPVAL                         R9 10
       85 JUMPIFNOT                        R9 ; [+26]
       86 GETTABLEKS                       R10 R1 K14 ["mode"]
       88 GETUPVAL                         R11 11
       89 FASTCALL2                        BIT32_BAND R10 R11 ; [+3]
       91 GETIMPORT                        R9 K6 [bit32.band]
       93 CALL                             R9 2 1
       94 JUMPIFEQKN                       R9 K15 [0] ; [+17]
       96 GETUPVAL                         R9 12
       97 CALL                             R9 0 0
       98 GETIMPORT                        R9 K17 [xpcall]
      100 GETTABLEKS                       R10 R7 K13 ["render"]
      102 GETUPVAL                         R11 13
      103 MOVE                             R12 R7
      104 CALL                             R9 3 2
      105 GETUPVAL                         R11 14
      106 CALL                             R11 0 0
      107 JUMPIF                           R9 ; [+4]
      108 GETIMPORT                        R11 K19 [error]
      110 MOVE                             R12 R10
      111 CALL                             R11 1 0
      112 GETUPVAL                         R9 9
      113 LOADB                            R10 0
      114 CALL                             R9 1 0
      115 JUMP                             ; [+4]
      116 NAMECALL                         R9 R7 K13 ["render"]
      118 CALL                             R9 1 1
      119 MOVE                             R8 R9
      120 GETTABLEKS                       R10 R1 K1 ["flags"]
      122 GETUPVAL                         R11 15
      123 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
      125 GETIMPORT                        R9 K4 [bit32.bor]
      127 CALL                             R9 2 1
      128 SETTABLEKS                       R9 R1 K1 ["flags"]
      130 JUMPIFEQKNIL                     R0 ; [+21]
      132 JUMPIFNOT                        R6 ; [+19]
      133 MOVE                             R9 R8
      134 GETUPVAL                         R10 16
      135 MOVE                             R11 R1
      136 GETTABLEKS                       R12 R0 K20 ["child"]
      138 LOADNIL                          R13
      139 MOVE                             R14 R5
      140 CALL                             R10 4 1
      141 SETTABLEKS                       R10 R1 K20 ["child"]
      143 GETUPVAL                         R10 16
      144 MOVE                             R11 R1
      145 LOADNIL                          R12
      146 MOVE                             R13 R9
      147 MOVE                             R14 R5
      148 CALL                             R10 4 1
      149 SETTABLEKS                       R10 R1 K20 ["child"]
      151 JUMP                             ; [+21]
      152 MOVE                             R9 R8
      153 JUMPIFNOTEQKNIL                  R0 ; [+10]
      155 GETUPVAL                         R10 17
      156 MOVE                             R11 R1
      157 LOADNIL                          R12
      158 MOVE                             R13 R9
      159 MOVE                             R14 R5
      160 CALL                             R10 4 1
      161 SETTABLEKS                       R10 R1 K20 ["child"]
      163 JUMP                             ; [+9]
      164 GETUPVAL                         R10 16
      165 MOVE                             R11 R1
      166 GETTABLEKS                       R12 R0 K20 ["child"]
      168 MOVE                             R13 R9
      169 MOVE                             R14 R5
      170 CALL                             R10 4 1
      171 SETTABLEKS                       R10 R1 K20 ["child"]
      173 GETTABLEKS                       R9 R7 K21 ["state"]
      175 SETTABLEKS                       R9 R1 K22 ["memoizedState"]
      177 JUMPIFNOT                        R4 ; [+5]
      178 GETUPVAL                         R9 3
      179 MOVE                             R10 R1
      180 MOVE                             R11 R2
      181 LOADB                            R12 1
      182 CALL                             R9 3 0
      183 GETTABLEKS                       R9 R1 K20 ["child"]
      185 RETURN                           R9 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["stateNode"]
        2 GETTABLEKS                       R2 R1 K1 ["pendingContext"]
        4 JUMPIFNOT                        R2 ; [+14]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 GETTABLEKS                       R4 R1 K1 ["pendingContext"]
        9 GETTABLEKS                       R6 R1 K1 ["pendingContext"]
       11 GETTABLEKS                       R7 R1 K2 ["context"]
       13 JUMPIFNOTEQ                      R6 R7 ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 CALL                             R2 3 0
       18 JUMP                             ; [+9]
       19 GETTABLEKS                       R2 R1 K2 ["context"]
       21 JUMPIFNOT                        R2 ; [+6]
       22 GETUPVAL                         R2 0
       23 MOVE                             R3 R0
       24 GETTABLEKS                       R4 R1 K2 ["context"]
       26 LOADB                            R5 0
       27 CALL                             R2 3 0
       28 GETUPVAL                         R2 1
       29 MOVE                             R3 R0
       30 GETTABLEKS                       R4 R1 K3 ["containerInfo"]
       32 CALL                             R2 2 0
       33 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R1 K0 ["stateNode"]
        2 GETTABLEKS                       R4 R3 K1 ["pendingContext"]
        4 JUMPIFNOT                        R4 ; [+14]
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R1
        7 GETTABLEKS                       R6 R3 K1 ["pendingContext"]
        9 GETTABLEKS                       R8 R3 K1 ["pendingContext"]
       11 GETTABLEKS                       R9 R3 K2 ["context"]
       13 JUMPIFNOTEQ                      R8 R9 ; [+2]
       15 LOADB                            R7 0 +1
       16 LOADB                            R7 1
       17 CALL                             R4 3 0
       18 JUMP                             ; [+9]
       19 GETTABLEKS                       R4 R3 K2 ["context"]
       21 JUMPIFNOT                        R4 ; [+6]
       22 GETUPVAL                         R4 0
       23 MOVE                             R5 R1
       24 GETTABLEKS                       R6 R3 K2 ["context"]
       26 LOADB                            R7 0
       27 CALL                             R4 3 0
       28 GETUPVAL                         R4 1
       29 MOVE                             R5 R1
       30 GETTABLEKS                       R6 R3 K3 ["containerInfo"]
       32 CALL                             R4 2 0
       33 GETTABLEKS                       R3 R1 K4 ["updateQueue"]
       35 GETUPVAL                         R4 2
       36 LOADB                            R5 0
       37 JUMPIFEQKNIL                     R0 ; [+5]
       39 JUMPIFNOTEQKNIL                  R3 ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 LOADK                            R6 K5 ["If the root does not have an updateQueue, we should have already bailed out. This error is likely caused by a bug in React. Please file an issue."]
       44 CALL                             R4 2 0
       45 GETTABLEKS                       R4 R1 K6 ["pendingProps"]
       47 GETTABLEKS                       R5 R1 K7 ["memoizedState"]
       49 LOADNIL                          R6
       50 JUMPIFEQKNIL                     R5 ; [+3]
       52 GETTABLEKS                       R6 R5 K8 ["element"]
       54 GETUPVAL                         R7 3
       55 MOVE                             R8 R0
       56 MOVE                             R9 R1
       57 CALL                             R7 2 0
       58 GETUPVAL                         R7 4
       59 MOVE                             R8 R1
       60 MOVE                             R9 R4
       61 LOADNIL                          R10
       62 MOVE                             R11 R2
       63 CALL                             R7 4 0
       64 GETTABLEKS                       R7 R1 K7 ["memoizedState"]
       66 GETTABLEKS                       R8 R7 K8 ["element"]
       68 JUMPIFNOTEQ                      R8 R6 ; [+9]
       70 GETUPVAL                         R9 5
       71 CALL                             R9 0 0
       72 GETUPVAL                         R9 6
       73 MOVE                             R10 R0
       74 MOVE                             R11 R1
       75 MOVE                             R12 R2
       76 CALL                             R9 3 -1
       77 RETURN                           R9 -1
       78 GETTABLEKS                       R9 R1 K0 ["stateNode"]
       80 GETTABLEKS                       R10 R9 K9 ["hydrate"]
       82 JUMPIFNOT                        R10 ; [+56]
       83 GETUPVAL                         R10 7
       84 MOVE                             R11 R1
       85 CALL                             R10 1 1
       86 JUMPIFNOT                        R10 ; [+52]
       87 GETUPVAL                         R10 8
       88 JUMPIFNOT                        R10 ; [+16]
       89 GETTABLEKS                       R10 R9 K10 ["mutableSourceEagerHydrationData"]
       91 JUMPIFEQKNIL                     R10 ; [+13]
       93 LOADN                            R13 1
       94 LENGTH                           R11 R10
       95 LOADN                            R12 2
       96 FORNPREP                         R11
       97 GETTABLE                         R14 R10 R13
       98 ADDK                             R16 R13 K11 [1]
       99 GETTABLE                         R15 R10 R16
      100 GETUPVAL                         R16 9
      101 MOVE                             R17 R14
      102 MOVE                             R18 R15
      103 CALL                             R16 2 0
      104 FORNLOOP                         R11
      105 GETUPVAL                         R10 10
      106 MOVE                             R11 R1
      107 LOADNIL                          R12
      108 MOVE                             R13 R8
      109 MOVE                             R14 R2
      110 CALL                             R10 4 1
      111 SETTABLEKS                       R10 R1 K12 ["child"]
      113 MOVE                             R11 R10
      114 JUMPIFNOT                        R11 ; [+46]
      115 GETTABLEKS                       R14 R11 K13 ["flags"]
      117 GETUPVAL                         R16 11
      118 FASTCALL1                        BIT32_BNOT R16 ; [+2]
      119 GETIMPORT                        R15 K16 [bit32.bnot]
      121 CALL                             R15 1 1
      122 FASTCALL2                        BIT32_BAND R14 R15 ; [+3]
      124 GETIMPORT                        R13 K18 [bit32.band]
      126 CALL                             R13 2 1
      127 GETUPVAL                         R14 12
      128 FASTCALL2                        BIT32_BOR R13 R14 ; [+3]
      130 GETIMPORT                        R12 K20 [bit32.bor]
      132 CALL                             R12 2 1
      133 SETTABLEKS                       R12 R11 K13 ["flags"]
      135 GETTABLEKS                       R11 R11 K21 ["sibling"]
      137 JUMPBACK                         ; [-24]
      138 JUMP                             ; [+22]
      139 JUMPIFNOTEQKNIL                  R0 ; [+10]
      141 GETUPVAL                         R10 10
      142 MOVE                             R11 R1
      143 LOADNIL                          R12
      144 MOVE                             R13 R8
      145 MOVE                             R14 R2
      146 CALL                             R10 4 1
      147 SETTABLEKS                       R10 R1 K12 ["child"]
      149 JUMP                             ; [+9]
      150 GETUPVAL                         R10 13
      151 MOVE                             R11 R1
      152 GETTABLEKS                       R12 R0 K12 ["child"]
      154 MOVE                             R13 R8
      155 MOVE                             R14 R2
      156 CALL                             R10 4 1
      157 SETTABLEKS                       R10 R1 K12 ["child"]
      159 GETUPVAL                         R10 5
      160 CALL                             R10 0 0
      161 GETTABLEKS                       R10 R1 K12 ["child"]
      163 RETURN                           R10 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 0
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R3 1 0
        8 GETTABLEKS                       R3 R1 K0 ["type"]
       10 GETTABLEKS                       R4 R1 K1 ["pendingProps"]
       12 LOADNIL                          R5
       13 JUMPIFEQKNIL                     R0 ; [+3]
       15 GETTABLEKS                       R5 R0 K2 ["memoizedProps"]
       17 GETTABLEKS                       R6 R4 K3 ["children"]
       19 GETUPVAL                         R7 2
       20 MOVE                             R8 R3
       21 MOVE                             R9 R4
       22 CALL                             R7 2 1
       23 JUMPIFNOT                        R7 ; [+2]
       24 LOADNIL                          R6
       25 JUMP                             ; [+17]
       26 JUMPIFEQKNIL                     R5 ; [+16]
       28 GETUPVAL                         R8 2
       29 MOVE                             R9 R3
       30 MOVE                             R10 R5
       31 CALL                             R8 2 1
       32 JUMPIFNOT                        R8 ; [+10]
       33 GETTABLEKS                       R9 R1 K4 ["flags"]
       35 GETUPVAL                         R10 3
       36 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
       38 GETIMPORT                        R8 K7 [bit32.bor]
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R1 K4 ["flags"]
       43 GETTABLEKS                       R9 R1 K4 ["flags"]
       45 GETUPVAL                         R10 4
       46 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
       48 GETIMPORT                        R8 K7 [bit32.bor]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R1 K4 ["flags"]
       53 GETTABLEKS                       R8 R1 K8 ["ref"]
       55 JUMPIFNOTEQKNIL                  R0 ; [+3]
       57 JUMPIFNOTEQKNIL                  R8 ; [+7]
       59 JUMPIFEQKNIL                     R0 ; [+15]
       61 GETTABLEKS                       R9 R0 K8 ["ref"]
       63 JUMPIFEQ                         R9 R8 ; [+11]
       65 GETTABLEKS                       R10 R1 K4 ["flags"]
       67 GETUPVAL                         R11 5
       68 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
       70 GETIMPORT                        R9 K7 [bit32.bor]
       72 CALL                             R9 2 1
       73 SETTABLEKS                       R9 R1 K4 ["flags"]
       75 MOVE                             R8 R6
       76 JUMPIFNOTEQKNIL                  R0 ; [+10]
       78 GETUPVAL                         R9 6
       79 MOVE                             R10 R1
       80 LOADNIL                          R11
       81 MOVE                             R12 R8
       82 MOVE                             R13 R2
       83 CALL                             R9 4 1
       84 SETTABLEKS                       R9 R1 K9 ["child"]
       86 JUMP                             ; [+9]
       87 GETUPVAL                         R9 7
       88 MOVE                             R10 R1
       89 GETTABLEKS                       R11 R0 K9 ["child"]
       91 MOVE                             R12 R8
       92 MOVE                             R13 R2
       93 CALL                             R9 4 1
       94 SETTABLEKS                       R9 R1 K9 ["child"]
       96 GETTABLEKS                       R8 R1 K9 ["child"]
       98 RETURN                           R8 1

PROTO_21:
        0 JUMPIFNOTEQKNIL                  R0 ; [+4]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 LOADNIL                          R2
        6 RETURN                           R2 1

PROTO_22:
        0 JUMPIFEQKNIL                     R0 ; [+17]
        2 LOADNIL                          R5
        3 SETTABLEKS                       R5 R0 K0 ["alternate"]
        5 LOADNIL                          R5
        6 SETTABLEKS                       R5 R1 K0 ["alternate"]
        8 GETTABLEKS                       R6 R1 K1 ["flags"]
       10 GETUPVAL                         R7 0
       11 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       13 GETIMPORT                        R5 K4 [bit32.bor]
       15 CALL                             R5 2 1
       16 SETTABLEKS                       R5 R1 K1 ["flags"]
       18 GETTABLEKS                       R5 R1 K5 ["pendingProps"]
       20 GETTABLEKS                       R6 R2 K6 ["_payload"]
       22 GETTABLEKS                       R7 R2 K7 ["_init"]
       24 MOVE                             R8 R7
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLEKS                       R8 R1 K8 ["type"]
       29 GETUPVAL                         R9 1
       30 MOVE                             R10 R8
       31 CALL                             R9 1 1
       32 SETTABLEKS                       R9 R1 K9 ["tag"]
       34 GETTABLEKS                       R9 R1 K9 ["tag"]
       36 GETUPVAL                         R10 2
       37 MOVE                             R11 R8
       38 MOVE                             R12 R5
       39 CALL                             R10 2 1
       40 LOADNIL                          R11
       41 GETUPVAL                         R12 3
       42 JUMPIFNOTEQ                      R9 R12 ; [+23]
       44 GETUPVAL                         R12 4
       45 JUMPIFNOT                        R12 ; [+11]
       46 GETGLOBAL                        R12 K10 ["validateFunctionComponentInDev"]
       48 MOVE                             R13 R1
       49 MOVE                             R14 R8
       50 CALL                             R12 2 0
       51 GETUPVAL                         R12 5
       52 MOVE                             R13 R8
       53 CALL                             R12 1 1
       54 MOVE                             R8 R12
       55 SETTABLEKS                       R8 R1 K8 ["type"]
       57 GETUPVAL                         R12 6
       58 LOADNIL                          R13
       59 MOVE                             R14 R1
       60 MOVE                             R15 R8
       61 MOVE                             R16 R10
       62 MOVE                             R17 R4
       63 CALL                             R12 5 1
       64 MOVE                             R11 R12
       65 RETURN                           R11 1
       66 GETUPVAL                         R12 7
       67 JUMPIFNOTEQ                      R9 R12 ; [+18]
       69 GETUPVAL                         R12 4
       70 JUMPIFNOT                        R12 ; [+6]
       71 GETUPVAL                         R12 8
       72 MOVE                             R13 R8
       73 CALL                             R12 1 1
       74 MOVE                             R8 R12
       75 SETTABLEKS                       R8 R1 K8 ["type"]
       77 GETUPVAL                         R12 9
       78 LOADNIL                          R13
       79 MOVE                             R14 R1
       80 MOVE                             R15 R8
       81 MOVE                             R16 R10
       82 MOVE                             R17 R4
       83 CALL                             R12 5 1
       84 MOVE                             R11 R12
       85 RETURN                           R11 1
       86 GETUPVAL                         R12 10
       87 JUMPIFNOTEQ                      R9 R12 ; [+18]
       89 GETUPVAL                         R12 4
       90 JUMPIFNOT                        R12 ; [+6]
       91 GETUPVAL                         R12 11
       92 MOVE                             R13 R8
       93 CALL                             R12 1 1
       94 MOVE                             R8 R12
       95 SETTABLEKS                       R8 R1 K8 ["type"]
       97 GETUPVAL                         R12 12
       98 LOADNIL                          R13
       99 MOVE                             R14 R1
      100 MOVE                             R15 R8
      101 MOVE                             R16 R10
      102 MOVE                             R17 R4
      103 CALL                             R12 5 1
      104 MOVE                             R11 R12
      105 RETURN                           R11 1
      106 GETUPVAL                         R12 13
      107 JUMPIFNOTEQ                      R9 R12 ; [+40]
      109 GETUPVAL                         R12 4
      110 JUMPIF                           R12 ; [+2]
      111 GETUPVAL                         R12 14
      112 JUMPIFNOT                        R12 ; [+21]
      113 GETTABLEKS                       R12 R1 K8 ["type"]
      115 GETTABLEKS                       R13 R1 K11 ["elementType"]
      117 JUMPIFEQ                         R12 R13 ; [+16]
      119 GETTABLEKS                       R12 R8 K12 ["propTypes"]
      121 GETTABLEKS                       R13 R8 K13 ["validateProps"]
      123 JUMPIF                           R12 ; [+1]
      124 JUMPIFNOT                        R13 ; [+9]
      125 GETUPVAL                         R14 15
      126 MOVE                             R15 R12
      127 MOVE                             R16 R13
      128 MOVE                             R17 R10
      129 LOADK                            R18 K14 ["prop"]
      130 GETUPVAL                         R19 16
      131 MOVE                             R20 R8
      132 CALL                             R19 1 -1
      133 CALL                             R14 -1 0
      134 GETUPVAL                         R12 17
      135 LOADNIL                          R13
      136 MOVE                             R14 R1
      137 MOVE                             R15 R8
      138 GETUPVAL                         R16 2
      139 GETTABLEKS                       R17 R8 K8 ["type"]
      141 MOVE                             R18 R10
      142 CALL                             R16 2 1
      143 MOVE                             R17 R3
      144 MOVE                             R18 R4
      145 CALL                             R12 6 1
      146 MOVE                             R11 R12
      147 RETURN                           R11 1
      148 LOADK                            R12 K15 [""]
      149 GETUPVAL                         R13 4
      150 JUMPIFNOT                        R13 ; [+32]
      151 JUMPIFEQKNIL                     R8 ; [+15]
      153 FASTCALL1                        TYPE R8 ; [+3]
      154 MOVE                             R14 R8
      155 GETIMPORT                        R13 K16 [type]
      157 CALL                             R13 1 1
      158 JUMPIFNOTEQKS                    R13 K17 ["table"] ; [+8]
      160 GETTABLEKS                       R13 R8 K18 ["$$typeof"]
      162 GETUPVAL                         R14 18
      163 JUMPIFNOTEQ                      R13 R14 ; [+3]
      165 LOADK                            R12 K19 [" Did you wrap a component in React.lazy() more than once?"]
      166 JUMP                             ; [+16]
      167 FASTCALL1                        TYPE R8 ; [+3]
      168 MOVE                             R14 R8
      169 GETIMPORT                        R13 K16 [type]
      171 CALL                             R13 1 1
      172 JUMPIFNOTEQKS                    R13 K17 ["table"] ; [+10]
      174 GETTABLEKS                       R13 R8 K18 ["$$typeof"]
      176 JUMPIFNOTEQKNIL                  R13 ; [+6]
      178 LOADK                            R13 K20 ["\n"]
      179 GETUPVAL                         R14 19
      180 MOVE                             R15 R8
      181 CALL                             R14 1 1
      182 CONCAT                           R12 R13 R14
      183 GETUPVAL                         R13 20
      184 LOADB                            R14 0
      185 LOADK                            R15 K21 ["Element type is invalid. Received a promise that resolves to: %s. Lazy element type must resolve to a class or function.%s"]
      186 FASTCALL1                        TOSTRING R8 ; [+3]
      187 MOVE                             R17 R8
      188 GETIMPORT                        R16 K23 [tostring]
      190 CALL                             R16 1 1
      191 MOVE                             R17 R12
      192 CALL                             R13 4 0
      193 LOADNIL                          R13
      194 RETURN                           R13 1

PROTO_23:
        0 JUMPIFEQKNIL                     R0 ; [+17]
        2 LOADNIL                          R5
        3 SETTABLEKS                       R5 R0 K0 ["alternate"]
        5 LOADNIL                          R5
        6 SETTABLEKS                       R5 R1 K0 ["alternate"]
        8 GETTABLEKS                       R6 R1 K1 ["flags"]
       10 GETUPVAL                         R7 0
       11 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       13 GETIMPORT                        R5 K4 [bit32.bor]
       15 CALL                             R5 2 1
       16 SETTABLEKS                       R5 R1 K1 ["flags"]
       18 GETUPVAL                         R5 1
       19 SETTABLEKS                       R5 R1 K5 ["tag"]
       21 LOADNIL                          R5
       22 GETUPVAL                         R6 2
       23 MOVE                             R7 R2
       24 CALL                             R6 1 1
       25 JUMPIFNOT                        R6 ; [+5]
       26 LOADB                            R5 1
       27 GETUPVAL                         R6 3
       28 MOVE                             R7 R1
       29 CALL                             R6 1 0
       30 JUMP                             ; [+1]
       31 LOADB                            R5 0
       32 GETUPVAL                         R6 4
       33 MOVE                             R7 R1
       34 MOVE                             R8 R4
       35 GETUPVAL                         R9 5
       36 GETTABLEKS                       R9 R9 K6 ["markWorkInProgressReceivedUpdate"]
       38 CALL                             R6 3 0
       39 GETUPVAL                         R6 6
       40 MOVE                             R7 R1
       41 MOVE                             R8 R2
       42 MOVE                             R9 R3
       43 CALL                             R6 3 0
       44 GETUPVAL                         R6 7
       45 MOVE                             R7 R1
       46 MOVE                             R8 R2
       47 MOVE                             R9 R3
       48 MOVE                             R10 R4
       49 CALL                             R6 4 0
       50 GETGLOBAL                        R6 K7 ["finishClassComponent"]
       52 LOADNIL                          R7
       53 MOVE                             R8 R1
       54 MOVE                             R9 R2
       55 LOADB                            R10 1
       56 MOVE                             R11 R5
       57 MOVE                             R12 R4
       58 CALL                             R6 6 -1
       59 RETURN                           R6 -1

PROTO_24:
        0 JUMPIFEQKNIL                     R0 ; [+17]
        2 LOADNIL                          R4
        3 SETTABLEKS                       R4 R0 K0 ["alternate"]
        5 LOADNIL                          R4
        6 SETTABLEKS                       R4 R1 K0 ["alternate"]
        8 GETTABLEKS                       R5 R1 K1 ["flags"]
       10 GETUPVAL                         R6 0
       11 FASTCALL2                        BIT32_BOR R5 R6 ; [+3]
       13 GETIMPORT                        R4 K4 [bit32.bor]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R1 K1 ["flags"]
       18 GETTABLEKS                       R4 R1 K5 ["pendingProps"]
       20 LOADNIL                          R5
       21 GETUPVAL                         R6 1
       22 JUMPIF                           R6 ; [+10]
       23 GETUPVAL                         R6 2
       24 MOVE                             R7 R1
       25 MOVE                             R8 R2
       26 LOADB                            R9 0
       27 CALL                             R6 3 1
       28 GETUPVAL                         R7 3
       29 MOVE                             R8 R1
       30 MOVE                             R9 R6
       31 CALL                             R7 2 1
       32 MOVE                             R5 R7
       33 GETUPVAL                         R6 4
       34 MOVE                             R7 R1
       35 MOVE                             R8 R3
       36 GETUPVAL                         R9 5
       37 GETTABLEKS                       R9 R9 K6 ["markWorkInProgressReceivedUpdate"]
       39 CALL                             R6 3 0
       40 LOADNIL                          R6
       41 GETUPVAL                         R7 6
       42 JUMPIFNOT                        R7 ; [+70]
       43 FASTCALL1                        TYPE R2 ; [+3]
       44 MOVE                             R8 R2
       45 GETIMPORT                        R7 K8 [type]
       47 CALL                             R7 1 1
       48 JUMPIFNOTEQKS                    R7 K9 ["table"] ; [+30]
       50 GETTABLEKS                       R8 R2 K10 ["render"]
       52 FASTCALL1                        TYPE R8 ; [+2]
       53 GETIMPORT                        R7 K8 [type]
       55 CALL                             R7 1 1
       56 JUMPIFNOTEQKS                    R7 K11 ["function"] ; [+22]
       58 GETUPVAL                         R8 7
       59 MOVE                             R9 R2
       60 CALL                             R8 1 1
       61 ORK                              R7 R8 K12 ["Unknown"]
       62 GETUPVAL                         R9 8
       63 GETTABLEKS                       R9 R9 K13 ["didWarnAboutBadClass"]
       65 GETTABLE                         R8 R9 R7
       66 JUMPIF                           R8 ; [+12]
       67 GETUPVAL                         R8 9
       68 GETTABLEKS                       R8 R8 K14 ["error"]
       70 LOADK                            R9 K15 ["The <%s /> component appears to have a render method, but doesn't extend React.Component. This is likely to cause errors. Change %s to extend React.Component instead."]
       71 MOVE                             R10 R7
       72 MOVE                             R11 R7
       73 CALL                             R8 3 0
       74 GETUPVAL                         R8 8
       75 GETTABLEKS                       R8 R8 K13 ["didWarnAboutBadClass"]
       77 LOADB                            R9 1
       78 SETTABLE                         R9 R8 R7
       79 GETTABLEKS                       R8 R1 K16 ["mode"]
       81 GETUPVAL                         R9 10
       82 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       84 GETIMPORT                        R7 K18 [bit32.band]
       86 CALL                             R7 2 1
       87 JUMPIFEQKN                       R7 K19 [0] ; [+6]
       89 GETUPVAL                         R7 11
       90 GETTABLEKS                       R7 R7 K20 ["recordLegacyContextWarning"]
       92 MOVE                             R8 R1
       93 CALL                             R7 1 0
       94 GETUPVAL                         R7 12
       95 LOADB                            R8 1
       96 CALL                             R7 1 0
       97 GETUPVAL                         R7 13
       98 SETTABLEKS                       R1 R7 K21 ["current"]
      100 GETUPVAL                         R7 14
      101 LOADNIL                          R8
      102 MOVE                             R9 R1
      103 MOVE                             R10 R2
      104 MOVE                             R11 R4
      105 MOVE                             R12 R5
      106 MOVE                             R13 R3
      107 CALL                             R7 6 1
      108 MOVE                             R6 R7
      109 GETUPVAL                         R7 12
      110 LOADB                            R8 0
      111 CALL                             R7 1 0
      112 JUMP                             ; [+9]
      113 GETUPVAL                         R7 14
      114 LOADNIL                          R8
      115 MOVE                             R9 R1
      116 MOVE                             R10 R2
      117 MOVE                             R11 R4
      118 MOVE                             R12 R5
      119 MOVE                             R13 R3
      120 CALL                             R7 6 1
      121 MOVE                             R6 R7
      122 GETTABLEKS                       R8 R1 K1 ["flags"]
      124 GETUPVAL                         R9 15
      125 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      127 GETIMPORT                        R7 K4 [bit32.bor]
      129 CALL                             R7 2 1
      130 SETTABLEKS                       R7 R1 K1 ["flags"]
      132 FASTCALL1                        TYPE R6 ; [+3]
      133 MOVE                             R8 R6
      134 GETIMPORT                        R7 K8 [type]
      136 CALL                             R7 1 1
      137 GETUPVAL                         R8 6
      138 JUMPIFNOT                        R8 ; [+37]
      139 JUMPIFEQKNIL                     R6 ; [+36]
      141 JUMPIFNOTEQKS                    R7 K9 ["table"] ; [+34]
      143 GETTABLEKS                       R9 R6 K10 ["render"]
      145 FASTCALL1                        TYPE R9 ; [+2]
      146 GETIMPORT                        R8 K8 [type]
      148 CALL                             R8 1 1
      149 JUMPIFNOTEQKS                    R8 K11 ["function"] ; [+26]
      151 GETTABLEKS                       R8 R6 K22 ["$$typeof"]
      153 JUMPIFNOTEQKNIL                  R8 ; [+22]
      155 GETUPVAL                         R9 7
      156 MOVE                             R10 R2
      157 CALL                             R9 1 1
      158 ORK                              R8 R9 K12 ["Unknown"]
      159 GETUPVAL                         R10 8
      160 GETTABLEKS                       R10 R10 K23 ["didWarnAboutModulePatternComponent"]
      162 GETTABLE                         R9 R10 R8
      163 JUMPIF                           R9 ; [+12]
      164 GETUPVAL                         R9 9
      165 GETTABLEKS                       R9 R9 K14 ["error"]
      167 LOADK                            R10 K24 ["The <%s /> component appears to be a function component that returns a class instance. Change %s to a class that extends React.Component instead. "]
      168 MOVE                             R11 R8
      169 MOVE                             R12 R8
      170 CALL                             R9 3 0
      171 GETUPVAL                         R9 8
      172 GETTABLEKS                       R9 R9 K23 ["didWarnAboutModulePatternComponent"]
      174 LOADB                            R10 1
      175 SETTABLE                         R10 R9 R8
      176 GETUPVAL                         R8 16
      177 JUMPIF                           R8 ; [+113]
      178 JUMPIFEQKNIL                     R6 ; [+112]
      180 JUMPIFNOTEQKS                    R7 K9 ["table"] ; [+110]
      182 GETTABLEKS                       R9 R6 K10 ["render"]
      184 FASTCALL1                        TYPE R9 ; [+2]
      185 GETIMPORT                        R8 K8 [type]
      187 CALL                             R8 1 1
      188 JUMPIFNOTEQKS                    R8 K11 ["function"] ; [+102]
      190 GETTABLEKS                       R8 R6 K22 ["$$typeof"]
      192 JUMPIFNOTEQKNIL                  R8 ; [+98]
      194 GETUPVAL                         R8 6
      195 JUMPIFNOT                        R8 ; [+23]
      196 GETUPVAL                         R9 7
      197 MOVE                             R10 R2
      198 CALL                             R9 1 1
      199 ORK                              R8 R9 K12 ["Unknown"]
      200 GETUPVAL                         R10 8
      201 GETTABLEKS                       R10 R10 K23 ["didWarnAboutModulePatternComponent"]
      203 GETTABLE                         R9 R10 R8
      204 JUMPIF                           R9 ; [+14]
      205 GETUPVAL                         R9 9
      206 GETTABLEKS                       R9 R9 K14 ["error"]
      208 LOADK                            R11 K25 ["The <%s /> component appears to be a function component that returns a class instance. "]
      209 LOADK                            R12 K26 ["Change %s to a class that extends React.Component instead. "]
      210 MOVE                             R13 R8
      211 CONCAT                           R10 R11 R13
      212 MOVE                             R11 R8
      213 CALL                             R9 2 0
      214 GETUPVAL                         R9 8
      215 GETTABLEKS                       R9 R9 K23 ["didWarnAboutModulePatternComponent"]
      217 LOADB                            R10 1
      218 SETTABLE                         R10 R9 R8
      219 GETUPVAL                         R8 17
      220 SETTABLEKS                       R8 R1 K27 ["tag"]
      222 LOADNIL                          R8
      223 SETTABLEKS                       R8 R1 K28 ["memoizedState"]
      225 LOADNIL                          R8
      226 SETTABLEKS                       R8 R1 K29 ["updateQueue"]
      228 LOADB                            R8 0
      229 GETUPVAL                         R9 18
      230 MOVE                             R10 R2
      231 CALL                             R9 1 1
      232 JUMPIFNOT                        R9 ; [+5]
      233 LOADB                            R8 1
      234 GETUPVAL                         R9 19
      235 MOVE                             R10 R1
      236 CALL                             R9 1 0
      237 JUMP                             ; [+1]
      238 LOADB                            R8 0
      239 GETTABLEKS                       R9 R6 K30 ["state"]
      241 SETTABLEKS                       R9 R1 K28 ["memoizedState"]
      243 GETUPVAL                         R9 20
      244 MOVE                             R10 R1
      245 CALL                             R9 1 0
      246 LOADNIL                          R9
      247 FASTCALL1                        TYPE R2 ; [+3]
      248 MOVE                             R11 R2
      249 GETIMPORT                        R10 K8 [type]
      251 CALL                             R10 1 1
      252 JUMPIFEQKS                       R10 K11 ["function"] ; [+3]
      254 GETTABLEKS                       R9 R2 K31 ["getDerivedStateFromProps"]
      256 JUMPIFEQKNIL                     R9 ; [+14]
      258 FASTCALL1                        TYPE R9 ; [+3]
      259 MOVE                             R11 R9
      260 GETIMPORT                        R10 K8 [type]
      262 CALL                             R10 1 1
      263 JUMPIFNOTEQKS                    R10 K11 ["function"] ; [+7]
      265 GETUPVAL                         R10 21
      266 MOVE                             R11 R1
      267 MOVE                             R12 R2
      268 MOVE                             R13 R9
      269 MOVE                             R14 R4
      270 CALL                             R10 4 0
      271 GETUPVAL                         R10 22
      272 MOVE                             R11 R1
      273 MOVE                             R12 R6
      274 CALL                             R10 2 0
      275 GETUPVAL                         R10 23
      276 MOVE                             R11 R1
      277 MOVE                             R12 R2
      278 MOVE                             R13 R4
      279 MOVE                             R14 R3
      280 CALL                             R10 4 0
      281 GETGLOBAL                        R10 K32 ["finishClassComponent"]
      283 LOADNIL                          R11
      284 MOVE                             R12 R1
      285 MOVE                             R13 R2
      286 LOADB                            R14 1
      287 MOVE                             R15 R8
      288 MOVE                             R16 R3
      289 CALL                             R10 6 -1
      290 RETURN                           R10 -1
      291 GETUPVAL                         R8 24
      292 SETTABLEKS                       R8 R1 K27 ["tag"]
      294 GETUPVAL                         R8 6
      295 JUMPIFNOT                        R8 ; [+48]
      296 GETUPVAL                         R8 1
      297 JUMPIFNOT                        R8 ; [+12]
      298 GETTABLEKS                       R8 R2 K33 ["contextTypes"]
      300 JUMPIFNOT                        R8 ; [+9]
      301 GETUPVAL                         R8 9
      302 GETTABLEKS                       R8 R8 K14 ["error"]
      304 LOADK                            R9 K34 ["%s uses the legacy contextTypes API which is no longer supported. Use React.createContext() with React.useContext() instead."]
      305 GETUPVAL                         R11 7
      306 MOVE                             R12 R2
      307 CALL                             R11 1 1
      308 ORK                              R10 R11 K12 ["Unknown"]
      309 CALL                             R8 2 0
      310 GETUPVAL                         R8 25
      311 JUMPIFNOT                        R8 ; [+32]
      312 GETTABLEKS                       R9 R1 K16 ["mode"]
      314 GETUPVAL                         R10 10
      315 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      317 GETIMPORT                        R8 K18 [bit32.band]
      319 CALL                             R8 2 1
      320 JUMPIFEQKN                       R8 K19 [0] ; [+23]
      322 GETUPVAL                         R8 26
      323 CALL                             R8 0 0
      324 GETIMPORT                        R8 K36 [xpcall]
      326 GETUPVAL                         R9 14
      327 GETUPVAL                         R10 27
      328 LOADNIL                          R11
      329 MOVE                             R12 R1
      330 MOVE                             R13 R2
      331 MOVE                             R14 R4
      332 MOVE                             R15 R5
      333 MOVE                             R16 R3
      334 CALL                             R8 8 2
      335 GETUPVAL                         R10 28
      336 CALL                             R10 0 0
      337 JUMPIFNOT                        R8 ; [+2]
      338 MOVE                             R6 R9
      339 JUMP                             ; [+4]
      340 GETIMPORT                        R10 K37 [error]
      342 MOVE                             R11 R9
      343 CALL                             R10 1 0
      344 MOVE                             R8 R6
      345 GETUPVAL                         R9 29
      346 MOVE                             R10 R1
      347 LOADNIL                          R11
      348 MOVE                             R12 R8
      349 MOVE                             R13 R3
      350 CALL                             R9 4 1
      351 SETTABLEKS                       R9 R1 K38 ["child"]
      353 GETUPVAL                         R8 6
      354 JUMPIFNOT                        R8 ; [+5]
      355 GETGLOBAL                        R8 K39 ["validateFunctionComponentInDev"]
      357 MOVE                             R9 R1
      358 MOVE                             R10 R2
      359 CALL                             R8 2 0
      360 GETTABLEKS                       R8 R1 K38 ["child"]
      362 RETURN                           R8 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+155]
        2 GETTABLEKS                       R2 R0 K0 ["ref"]
        4 JUMPIFEQKNIL                     R2 ; [+41]
        6 LOADK                            R2 K1 [""]
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+5]
       10 MOVE                             R4 R2
       11 LOADK                            R5 K2 ["\n\nCheck the render method of `"]
       12 MOVE                             R6 R3
       13 LOADK                            R7 K3 ["`."]
       14 CONCAT                           R2 R4 R7
       15 MOVE                             R4 R3
       16 JUMPIF                           R4 ; [+4]
       17 GETTABLEKS                       R4 R0 K4 ["_debugID"]
       19 JUMPIF                           R4 ; [+1]
       20 LOADK                            R4 K1 [""]
       21 GETTABLEKS                       R5 R0 K5 ["_debugSource"]
       23 JUMPIFNOT                        R5 ; [+6]
       24 GETTABLEKS                       R6 R5 K6 ["fileName"]
       26 LOADK                            R7 K7 [":"]
       27 GETTABLEKS                       R8 R5 K8 ["lineNumber"]
       29 CONCAT                           R4 R6 R8
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K9 ["didWarnAboutFunctionRefs"]
       33 GETTABLE                         R6 R7 R4
       34 JUMPIF                           R6 ; [+11]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R6 R6 K9 ["didWarnAboutFunctionRefs"]
       38 LOADB                            R7 1
       39 SETTABLE                         R7 R6 R4
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R6 R6 K10 ["error"]
       43 LOADK                            R7 K11 ["Function components cannot be given refs. Attempts to access this ref will fail. Did you mean to use React.forwardRef()?%s"]
       44 MOVE                             R8 R2
       45 CALL                             R6 2 0
       46 GETUPVAL                         R2 4
       47 JUMPIFNOT                        R2 ; [+31]
       48 FASTCALL1                        TYPE R1 ; [+3]
       49 MOVE                             R3 R1
       50 GETIMPORT                        R2 K13 [type]
       52 CALL                             R2 1 1
       53 JUMPIFEQKS                       R2 K14 ["function"] ; [+25]
       55 GETTABLEKS                       R2 R1 K15 ["defaultProps"]
       57 JUMPIFEQKNIL                     R2 ; [+21]
       59 GETUPVAL                         R3 5
       60 MOVE                             R4 R1
       61 CALL                             R3 1 1
       62 ORK                              R2 R3 K16 ["Unknown"]
       63 GETUPVAL                         R4 2
       64 GETTABLEKS                       R4 R4 K17 ["didWarnAboutDefaultPropsOnFunctionComponent"]
       66 GETTABLE                         R3 R4 R2
       67 JUMPIF                           R3 ; [+11]
       68 GETUPVAL                         R3 3
       69 GETTABLEKS                       R3 R3 K10 ["error"]
       71 LOADK                            R4 K18 ["%s: Support for defaultProps will be removed from function components in a future major release."]
       72 MOVE                             R5 R2
       73 CALL                             R3 2 0
       74 GETUPVAL                         R3 2
       75 GETTABLEKS                       R3 R3 K17 ["didWarnAboutDefaultPropsOnFunctionComponent"]
       77 LOADB                            R4 1
       78 SETTABLE                         R4 R3 R2
       79 FASTCALL1                        TYPE R1 ; [+3]
       80 MOVE                             R3 R1
       81 GETIMPORT                        R2 K13 [type]
       83 CALL                             R2 1 1
       84 JUMPIFEQKS                       R2 K14 ["function"] ; [+33]
       86 GETTABLEKS                       R2 R1 K19 ["getDerivedStateFromProps"]
       88 JUMPIFEQKNIL                     R2 ; [+29]
       90 GETTABLEKS                       R3 R1 K19 ["getDerivedStateFromProps"]
       92 FASTCALL1                        TYPE R3 ; [+2]
       93 GETIMPORT                        R2 K13 [type]
       95 CALL                             R2 1 1
       96 JUMPIFNOTEQKS                    R2 K14 ["function"] ; [+21]
       98 GETUPVAL                         R3 5
       99 MOVE                             R4 R1
      100 CALL                             R3 1 1
      101 ORK                              R2 R3 K16 ["Unknown"]
      102 GETUPVAL                         R4 2
      103 GETTABLEKS                       R4 R4 K20 ["didWarnAboutGetDerivedStateOnFunctionComponent"]
      105 GETTABLE                         R3 R4 R2
      106 JUMPIF                           R3 ; [+11]
      107 GETUPVAL                         R3 3
      108 GETTABLEKS                       R3 R3 K10 ["error"]
      110 LOADK                            R4 K21 ["%s: Function components do not support getDerivedStateFromProps."]
      111 MOVE                             R5 R2
      112 CALL                             R3 2 0
      113 GETUPVAL                         R3 2
      114 GETTABLEKS                       R3 R3 K20 ["didWarnAboutGetDerivedStateOnFunctionComponent"]
      116 LOADB                            R4 1
      117 SETTABLE                         R4 R3 R2
      118 FASTCALL1                        TYPE R1 ; [+3]
      119 MOVE                             R3 R1
      120 GETIMPORT                        R2 K13 [type]
      122 CALL                             R2 1 1
      123 JUMPIFEQKS                       R2 K14 ["function"] ; [+33]
      125 GETTABLEKS                       R2 R1 K22 ["contextType"]
      127 JUMPIFEQKNIL                     R2 ; [+29]
      129 GETTABLEKS                       R3 R1 K22 ["contextType"]
      131 FASTCALL1                        TYPE R3 ; [+2]
      132 GETIMPORT                        R2 K13 [type]
      134 CALL                             R2 1 1
      135 JUMPIFNOTEQKS                    R2 K23 ["table"] ; [+21]
      137 GETUPVAL                         R3 5
      138 MOVE                             R4 R1
      139 CALL                             R3 1 1
      140 ORK                              R2 R3 K16 ["Unknown"]
      141 GETUPVAL                         R4 2
      142 GETTABLEKS                       R4 R4 K24 ["didWarnAboutContextTypeOnFunctionComponent"]
      144 GETTABLE                         R3 R4 R2
      145 JUMPIF                           R3 ; [+11]
      146 GETUPVAL                         R3 3
      147 GETTABLEKS                       R3 R3 K10 ["error"]
      149 LOADK                            R4 K25 ["%s: Function components do not support contextType."]
      150 MOVE                             R5 R2
      151 CALL                             R3 2 0
      152 GETUPVAL                         R3 2
      153 GETTABLEKS                       R3 R3 K24 ["didWarnAboutContextTypeOnFunctionComponent"]
      155 LOADB                            R4 1
      156 SETTABLE                         R4 R3 R2
      157 RETURN                           R0 0

PROTO_26:
        0 DUPTABLE                         R1 K1 [{"baseLanes"}]
        1 SETTABLEKS                       R0 R1 K0 ["baseLanes"]
        3 RETURN                           R1 1

PROTO_27:
        0 DUPTABLE                         R2 K1 [{"baseLanes"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K2 ["mergeLanes"]
        4 GETTABLEKS                       R4 R0 K0 ["baseLanes"]
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R3 R2 K0 ["baseLanes"]
       10 RETURN                           R2 1

PROTO_28:
        0 JUMPIFEQKNIL                     R1 ; [+7]
        2 GETTABLEKS                       R4 R1 K0 ["memoizedState"]
        4 JUMPIFNOTEQKNIL                  R4 ; [+3]
        6 LOADB                            R5 0
        7 RETURN                           R5 1
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R0
       10 GETUPVAL                         R6 1
       11 CALL                             R4 2 -1
       12 RETURN                           R4 -1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["removeLanes"]
        3 GETTABLEKS                       R3 R0 K1 ["childLanes"]
        5 MOVE                             R4 R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_30:
        0 GETTABLEKS                       R3 R1 K0 ["pendingProps"]
        2 GETUPVAL                         R4 0
        3 JUMPIFNOT                        R4 ; [+34]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["shouldSuspendRef"]
        7 JUMPIF                           R5 ; [+14]
        8 GETUPVAL                         R5 1
        9 GETIMPORT                        R6 K3 [require]
       11 GETIMPORT                        R7 K5 [script]
       13 GETTABLEKS                       R7 R7 K6 ["Parent"]
       15 GETTABLEKS                       R7 R7 K7 ["ReactFiberReconciler"]
       17 CALL                             R6 1 1
       18 GETTABLEKS                       R6 R6 K8 ["shouldSuspend"]
       20 SETTABLEKS                       R6 R5 K1 ["shouldSuspendRef"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K1 ["shouldSuspendRef"]
       25 MOVE                             R5 R1
       26 CALL                             R4 1 1
       27 JUMPIFNOT                        R4 ; [+10]
       28 GETTABLEKS                       R5 R1 K9 ["flags"]
       30 GETUPVAL                         R6 2
       31 FASTCALL2                        BIT32_BOR R5 R6 ; [+3]
       33 GETIMPORT                        R4 K12 [bit32.bor]
       35 CALL                             R4 2 1
       36 SETTABLEKS                       R4 R1 K9 ["flags"]
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K13 ["current"]
       41 LOADB                            R5 0
       42 GETTABLEKS                       R8 R1 K9 ["flags"]
       44 GETUPVAL                         R9 2
       45 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       47 GETIMPORT                        R7 K15 [bit32.band]
       49 CALL                             R7 2 1
       50 GETUPVAL                         R8 4
       51 JUMPIFNOTEQ                      R7 R8 ; [+2]
       53 LOADB                            R6 0 +1
       54 LOADB                            R6 1
       55 JUMPIF                           R6 ; [+15]
       56 MOVE                             R8 R4
       57 JUMPIFEQKNIL                     R0 ; [+7]
       59 GETTABLEKS                       R9 R0 K16 ["memoizedState"]
       61 JUMPIFNOTEQKNIL                  R9 ; [+3]
       63 LOADB                            R7 0
       64 JUMP                             ; [+5]
       65 GETUPVAL                         R9 5
       66 MOVE                             R10 R8
       67 GETUPVAL                         R11 6
       68 CALL                             R9 2 1
       69 MOVE                             R7 R9
       70 JUMPIFNOT                        R7 ; [+16]
       71 LOADB                            R5 1
       72 GETTABLEKS                       R8 R1 K9 ["flags"]
       74 GETUPVAL                         R10 2
       75 FASTCALL1                        BIT32_BNOT R10 ; [+2]
       76 GETIMPORT                        R9 K18 [bit32.bnot]
       78 CALL                             R9 1 1
       79 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       81 GETIMPORT                        R7 K15 [bit32.band]
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R1 K9 ["flags"]
       86 JUMP                             ; [+19]
       87 JUMPIFEQKNIL                     R0 ; [+5]
       89 GETTABLEKS                       R7 R0 K16 ["memoizedState"]
       91 JUMPIFEQKNIL                     R7 ; [+14]
       93 GETTABLEKS                       R7 R3 K19 ["fallback"]
       95 JUMPIFEQKNIL                     R7 ; [+10]
       97 GETTABLEKS                       R7 R3 K20 ["unstable_avoidThisFallback"]
       99 JUMPIFEQKB                       R7 TRUE ; [+6]
      101 GETUPVAL                         R7 7
      102 MOVE                             R8 R4
      103 GETUPVAL                         R9 8
      104 CALL                             R7 2 1
      105 MOVE                             R4 R7
      106 GETUPVAL                         R7 9
      107 MOVE                             R8 R4
      108 CALL                             R7 1 1
      109 MOVE                             R4 R7
      110 GETUPVAL                         R7 10
      111 MOVE                             R8 R1
      112 MOVE                             R9 R4
      113 CALL                             R7 2 0
      114 JUMPIFNOTEQKNIL                  R0 ; [+95]
      116 GETTABLEKS                       R7 R3 K19 ["fallback"]
      118 JUMPIFEQKNIL                     R7 ; [+20]
      120 GETUPVAL                         R7 11
      121 MOVE                             R8 R1
      122 CALL                             R7 1 0
      123 GETUPVAL                         R7 12
      124 JUMPIFNOT                        R7 ; [+14]
      125 GETTABLEKS                       R7 R1 K16 ["memoizedState"]
      127 JUMPIFEQKNIL                     R7 ; [+11]
      129 GETTABLEKS                       R8 R7 K21 ["dehydrated"]
      131 JUMPIFEQKNIL                     R8 ; [+7]
      133 GETUPVAL                         R9 13
      134 MOVE                             R10 R1
      135 MOVE                             R11 R8
      136 MOVE                             R12 R2
      137 CALL                             R9 3 -1
      138 RETURN                           R9 -1
      139 GETTABLEKS                       R7 R3 K22 ["children"]
      141 GETTABLEKS                       R8 R3 K19 ["fallback"]
      143 JUMPIFNOT                        R5 ; [+18]
      144 GETGLOBAL                        R9 K23 ["mountSuspenseFallbackChildren"]
      146 MOVE                             R10 R1
      147 MOVE                             R11 R7
      148 MOVE                             R12 R8
      149 MOVE                             R13 R2
      150 CALL                             R9 4 1
      151 GETTABLEKS                       R10 R1 K24 ["child"]
      153 DUPTABLE                         R11 K26 [{"baseLanes"}]
      154 SETTABLEKS                       R2 R11 K25 ["baseLanes"]
      156 SETTABLEKS                       R11 R10 K16 ["memoizedState"]
      158 GETUPVAL                         R11 14
      159 SETTABLEKS                       R11 R1 K16 ["memoizedState"]
      161 RETURN                           R9 1
      162 GETTABLEKS                       R9 R3 K27 ["unstable_expectedLoadTime"]
      164 JUMPIFEQKNIL                     R9 ; [+39]
      166 GETTABLEKS                       R10 R3 K27 ["unstable_expectedLoadTime"]
      168 FASTCALL1                        TYPE R10 ; [+2]
      169 GETIMPORT                        R9 K29 [type]
      171 CALL                             R9 1 1
      172 JUMPIFNOTEQKS                    R9 K30 ["number"] ; [+31]
      174 GETGLOBAL                        R9 K23 ["mountSuspenseFallbackChildren"]
      176 MOVE                             R10 R1
      177 MOVE                             R11 R7
      178 MOVE                             R12 R8
      179 MOVE                             R13 R2
      180 CALL                             R9 4 1
      181 GETTABLEKS                       R10 R1 K24 ["child"]
      183 DUPTABLE                         R11 K26 [{"baseLanes"}]
      184 SETTABLEKS                       R2 R11 K25 ["baseLanes"]
      186 SETTABLEKS                       R11 R10 K16 ["memoizedState"]
      188 GETUPVAL                         R11 14
      189 SETTABLEKS                       R11 R1 K16 ["memoizedState"]
      191 GETUPVAL                         R11 15
      192 GETTABLEKS                       R11 R11 K31 ["SomeRetryLane"]
      194 SETTABLEKS                       R11 R1 K32 ["lanes"]
      196 GETUPVAL                         R11 16
      197 JUMPIFNOT                        R11 ; [+5]
      198 GETUPVAL                         R11 17
      199 GETUPVAL                         R12 15
      200 GETTABLEKS                       R12 R12 K31 ["SomeRetryLane"]
      202 CALL                             R11 1 0
      203 RETURN                           R9 1
      204 GETUPVAL                         R9 18
      205 MOVE                             R10 R1
      206 MOVE                             R11 R7
      207 MOVE                             R12 R2
      208 CALL                             R9 3 -1
      209 RETURN                           R9 -1
      210 GETTABLEKS                       R7 R0 K16 ["memoizedState"]
      212 JUMPIFEQKNIL                     R7 ; [+122]
      214 GETUPVAL                         R8 12
      215 JUMPIFNOT                        R8 ; [+56]
      216 GETTABLEKS                       R8 R7 K21 ["dehydrated"]
      218 JUMPIFEQKNIL                     R8 ; [+53]
      220 JUMPIF                           R6 ; [+8]
      221 GETUPVAL                         R9 19
      222 MOVE                             R10 R0
      223 MOVE                             R11 R1
      224 MOVE                             R12 R8
      225 MOVE                             R13 R7
      226 MOVE                             R14 R2
      227 CALL                             R9 5 -1
      228 RETURN                           R9 -1
      229 GETTABLEKS                       R9 R1 K16 ["memoizedState"]
      231 JUMPIFEQKNIL                     R9 ; [+17]
      233 GETTABLEKS                       R9 R0 K24 ["child"]
      235 SETTABLEKS                       R9 R1 K24 ["child"]
      237 GETTABLEKS                       R10 R1 K9 ["flags"]
      239 GETUPVAL                         R11 2
      240 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
      242 GETIMPORT                        R9 K12 [bit32.bor]
      244 CALL                             R9 2 1
      245 SETTABLEKS                       R9 R1 K9 ["flags"]
      247 LOADNIL                          R9
      248 RETURN                           R9 1
      249 GETTABLEKS                       R9 R3 K22 ["children"]
      251 GETTABLEKS                       R10 R3 K19 ["fallback"]
      253 GETGLOBAL                        R11 K33 ["mountSuspenseFallbackAfterRetryWithoutHydrating"]
      255 MOVE                             R12 R0
      256 MOVE                             R13 R1
      257 MOVE                             R14 R9
      258 MOVE                             R15 R10
      259 MOVE                             R16 R2
      260 CALL                             R11 5 1
      261 GETTABLEKS                       R12 R1 K24 ["child"]
      263 DUPTABLE                         R13 K26 [{"baseLanes"}]
      264 SETTABLEKS                       R2 R13 K25 ["baseLanes"]
      266 SETTABLEKS                       R13 R12 K16 ["memoizedState"]
      268 GETUPVAL                         R13 14
      269 SETTABLEKS                       R13 R1 K16 ["memoizedState"]
      271 RETURN                           R11 1
      272 JUMPIFNOT                        R5 ; [+50]
      273 GETTABLEKS                       R8 R3 K19 ["fallback"]
      275 GETTABLEKS                       R9 R3 K22 ["children"]
      277 GETUPVAL                         R10 20
      278 MOVE                             R11 R0
      279 MOVE                             R12 R1
      280 MOVE                             R13 R9
      281 MOVE                             R14 R8
      282 MOVE                             R15 R2
      283 CALL                             R10 5 1
      284 GETTABLEKS                       R11 R1 K24 ["child"]
      286 GETTABLEKS                       R12 R0 K24 ["child"]
      288 GETTABLEKS                       R12 R12 K16 ["memoizedState"]
      290 JUMPIFNOTEQKNIL                  R12 ; [+7]
      292 DUPTABLE                         R13 K26 [{"baseLanes"}]
      293 SETTABLEKS                       R2 R13 K25 ["baseLanes"]
      295 SETTABLEKS                       R13 R11 K16 ["memoizedState"]
      297 JUMP                             ; [+12]
      298 DUPTABLE                         R13 K26 [{"baseLanes"}]
      299 GETUPVAL                         R14 15
      300 GETTABLEKS                       R14 R14 K34 ["mergeLanes"]
      302 GETTABLEKS                       R15 R12 K25 ["baseLanes"]
      304 MOVE                             R16 R2
      305 CALL                             R14 2 1
      306 SETTABLEKS                       R14 R13 K25 ["baseLanes"]
      308 SETTABLEKS                       R13 R11 K16 ["memoizedState"]
      310 GETUPVAL                         R13 15
      311 GETTABLEKS                       R13 R13 K35 ["removeLanes"]
      313 GETTABLEKS                       R14 R0 K36 ["childLanes"]
      315 MOVE                             R15 R2
      316 CALL                             R13 2 1
      317 SETTABLEKS                       R13 R11 K36 ["childLanes"]
      319 GETUPVAL                         R13 14
      320 SETTABLEKS                       R13 R1 K16 ["memoizedState"]
      322 RETURN                           R10 1
      323 GETTABLEKS                       R8 R3 K22 ["children"]
      325 GETUPVAL                         R9 21
      326 MOVE                             R10 R0
      327 MOVE                             R11 R1
      328 MOVE                             R12 R8
      329 MOVE                             R13 R2
      330 CALL                             R9 4 1
      331 LOADNIL                          R10
      332 SETTABLEKS                       R10 R1 K16 ["memoizedState"]
      334 RETURN                           R9 1
      335 JUMPIFNOT                        R5 ; [+50]
      336 GETTABLEKS                       R8 R3 K19 ["fallback"]
      338 GETTABLEKS                       R9 R3 K22 ["children"]
      340 GETUPVAL                         R10 20
      341 MOVE                             R11 R0
      342 MOVE                             R12 R1
      343 MOVE                             R13 R9
      344 MOVE                             R14 R8
      345 MOVE                             R15 R2
      346 CALL                             R10 5 1
      347 GETTABLEKS                       R11 R1 K24 ["child"]
      349 GETTABLEKS                       R12 R0 K24 ["child"]
      351 GETTABLEKS                       R12 R12 K16 ["memoizedState"]
      353 JUMPIFNOTEQKNIL                  R12 ; [+7]
      355 DUPTABLE                         R13 K26 [{"baseLanes"}]
      356 SETTABLEKS                       R2 R13 K25 ["baseLanes"]
      358 SETTABLEKS                       R13 R11 K16 ["memoizedState"]
      360 JUMP                             ; [+12]
      361 DUPTABLE                         R13 K26 [{"baseLanes"}]
      362 GETUPVAL                         R14 15
      363 GETTABLEKS                       R14 R14 K34 ["mergeLanes"]
      365 GETTABLEKS                       R15 R12 K25 ["baseLanes"]
      367 MOVE                             R16 R2
      368 CALL                             R14 2 1
      369 SETTABLEKS                       R14 R13 K25 ["baseLanes"]
      371 SETTABLEKS                       R13 R11 K16 ["memoizedState"]
      373 GETUPVAL                         R13 15
      374 GETTABLEKS                       R13 R13 K35 ["removeLanes"]
      376 GETTABLEKS                       R14 R0 K36 ["childLanes"]
      378 MOVE                             R15 R2
      379 CALL                             R13 2 1
      380 SETTABLEKS                       R13 R11 K36 ["childLanes"]
      382 GETUPVAL                         R13 14
      383 SETTABLEKS                       R13 R1 K16 ["memoizedState"]
      385 RETURN                           R10 1
      386 GETTABLEKS                       R8 R3 K22 ["children"]
      388 GETUPVAL                         R9 21
      389 MOVE                             R10 R0
      390 MOVE                             R11 R1
      391 MOVE                             R12 R8
      392 MOVE                             R13 R2
      393 CALL                             R9 4 1
      394 LOADNIL                          R10
      395 SETTABLEKS                       R10 R1 K16 ["memoizedState"]
      397 RETURN                           R9 1

PROTO_31:
        0 GETTABLEKS                       R3 R0 K0 ["mode"]
        2 DUPTABLE                         R4 K3 [{[1] = "visible", ["children"]}]
        3 SETTABLEKS                       R1 R4 K2 ["children"]
        5 GETUPVAL                         R5 0
        6 MOVE                             R6 R4
        7 MOVE                             R7 R3
        8 MOVE                             R8 R2
        9 LOADNIL                          R9
       10 CALL                             R5 4 1
       11 SETTABLEKS                       R0 R5 K4 ["return_"]
       13 SETTABLEKS                       R5 R0 K5 ["child"]
       15 RETURN                           R5 1

PROTO_32:
        0 GETTABLEKS                       R4 R0 K0 ["mode"]
        2 GETTABLEKS                       R5 R0 K1 ["child"]
        4 DUPTABLE                         R6 K4 [{[1] = "hidden", ["children"]}]
        5 SETTABLEKS                       R1 R6 K3 ["children"]
        7 LOADNIL                          R7
        8 LOADNIL                          R8
        9 GETUPVAL                         R11 0
       10 FASTCALL2                        BIT32_BAND R4 R11 ; [+4]
       12 MOVE                             R10 R4
       13 GETIMPORT                        R9 K7 [bit32.band]
       15 CALL                             R9 2 1
       16 GETUPVAL                         R10 1
       17 JUMPIFNOTEQ                      R9 R10 ; [+43]
       19 JUMPIFEQKNIL                     R5 ; [+41]
       21 MOVE                             R7 R5
       22 GETUPVAL                         R9 2
       23 GETTABLEKS                       R9 R9 K8 ["NoLanes"]
       25 SETTABLEKS                       R9 R7 K9 ["childLanes"]
       27 SETTABLEKS                       R6 R7 K10 ["pendingProps"]
       29 GETUPVAL                         R9 3
       30 JUMPIFNOT                        R9 ; [+22]
       31 GETTABLEKS                       R10 R0 K0 ["mode"]
       33 GETUPVAL                         R11 4
       34 FASTCALL2                        BIT32_BAND R10 R11 ; [+3]
       36 GETIMPORT                        R9 K7 [bit32.band]
       38 CALL                             R9 2 1
       39 JUMPIFEQKN                       R9 K11 [0] ; [+13]
       41 LOADN                            R9 0
       42 SETTABLEKS                       R9 R7 K12 ["actualDuration"]
       44 LOADN                            R9 -1
       45 SETTABLEKS                       R9 R7 K13 ["actualStartTime"]
       47 LOADN                            R9 0
       48 SETTABLEKS                       R9 R7 K14 ["selfBaseDuration"]
       50 LOADN                            R9 0
       51 SETTABLEKS                       R9 R7 K15 ["treeBaseDuration"]
       53 GETUPVAL                         R9 5
       54 MOVE                             R10 R2
       55 MOVE                             R11 R4
       56 MOVE                             R12 R3
       57 LOADNIL                          R13
       58 CALL                             R9 4 1
       59 MOVE                             R8 R9
       60 JUMP                             ; [+16]
       61 GETUPVAL                         R9 6
       62 MOVE                             R10 R6
       63 MOVE                             R11 R4
       64 GETUPVAL                         R12 2
       65 GETTABLEKS                       R12 R12 K8 ["NoLanes"]
       67 LOADNIL                          R13
       68 CALL                             R9 4 1
       69 MOVE                             R7 R9
       70 GETUPVAL                         R9 5
       71 MOVE                             R10 R2
       72 MOVE                             R11 R4
       73 MOVE                             R12 R3
       74 LOADNIL                          R13
       75 CALL                             R9 4 1
       76 MOVE                             R8 R9
       77 SETTABLEKS                       R0 R7 K16 ["return_"]
       79 SETTABLEKS                       R0 R8 K16 ["return_"]
       81 SETTABLEKS                       R8 R7 K17 ["sibling"]
       83 SETTABLEKS                       R7 R0 K1 ["child"]
       85 RETURN                           R8 1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_34:
        0 GETTABLEKS                       R4 R0 K0 ["child"]
        2 GETTABLEKS                       R5 R4 K1 ["sibling"]
        4 DUPTABLE                         R7 K5 [{["mode"] = "visible", ["children"]}]
        5 SETTABLEKS                       R2 R7 K4 ["children"]
        7 GETUPVAL                         R8 0
        8 MOVE                             R9 R4
        9 MOVE                             R10 R7
       10 CALL                             R8 2 1
       11 MOVE                             R6 R8
       12 GETTABLEKS                       R8 R1 K2 ["mode"]
       14 GETUPVAL                         R9 1
       15 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       17 GETIMPORT                        R7 K8 [bit32.band]
       19 CALL                             R7 2 1
       20 GETUPVAL                         R8 2
       21 JUMPIFNOTEQ                      R7 R8 ; [+3]
       23 SETTABLEKS                       R3 R6 K9 ["lanes"]
       25 SETTABLEKS                       R1 R6 K10 ["return_"]
       27 LOADNIL                          R7
       28 SETTABLEKS                       R7 R6 K1 ["sibling"]
       30 JUMPIFEQKNIL                     R5 ; [+30]
       32 GETTABLEKS                       R7 R1 K11 ["deletions"]
       34 JUMPIFNOTEQKNIL                  R7 ; [+19]
       36 NEWTABLE                         R8 0 1
       38 MOVE                             R9 R5
       39 SETLIST                          R8 R9 1 [1]
       41 SETTABLEKS                       R8 R1 K11 ["deletions"]
       43 GETTABLEKS                       R9 R1 K12 ["flags"]
       45 GETUPVAL                         R10 3
       46 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
       48 GETIMPORT                        R8 K14 [bit32.bor]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R1 K12 ["flags"]
       53 JUMP                             ; [+7]
       54 FASTCALL2                        TABLE_INSERT R7 R5 ; [+5]
       56 MOVE                             R9 R7
       57 MOVE                             R10 R5
       58 GETIMPORT                        R8 K17 [table.insert]
       60 CALL                             R8 2 0
       61 SETTABLEKS                       R6 R1 K0 ["child"]
       63 RETURN                           R6 1

PROTO_35:
        0 GETTABLEKS                       R5 R1 K0 ["mode"]
        2 GETTABLEKS                       R6 R0 K1 ["child"]
        4 GETTABLEKS                       R7 R6 K2 ["sibling"]
        6 DUPTABLE                         R8 K5 [{[1] = "hidden", ["children"]}]
        7 SETTABLEKS                       R2 R8 K4 ["children"]
        9 LOADNIL                          R9
       10 GETUPVAL                         R12 0
       11 FASTCALL2                        BIT32_BAND R5 R12 ; [+4]
       13 MOVE                             R11 R5
       14 GETIMPORT                        R10 K8 [bit32.band]
       16 CALL                             R10 2 1
       17 GETUPVAL                         R11 1
       18 JUMPIFNOTEQ                      R10 R11 ; [+45]
       20 GETTABLEKS                       R10 R1 K1 ["child"]
       22 JUMPIFEQ                         R10 R6 ; [+41]
       24 GETTABLEKS                       R10 R1 K1 ["child"]
       26 MOVE                             R9 R10
       27 GETUPVAL                         R11 2
       28 GETTABLEKS                       R11 R11 K9 ["NoLanes"]
       30 SETTABLEKS                       R11 R9 K10 ["childLanes"]
       32 SETTABLEKS                       R8 R9 K11 ["pendingProps"]
       34 GETUPVAL                         R11 3
       35 JUMPIFNOT                        R11 ; [+24]
       36 GETTABLEKS                       R12 R1 K0 ["mode"]
       38 GETUPVAL                         R13 4
       39 FASTCALL2                        BIT32_BAND R12 R13 ; [+3]
       41 GETIMPORT                        R11 K8 [bit32.band]
       43 CALL                             R11 2 1
       44 JUMPIFEQKN                       R11 K12 [0] ; [+15]
       46 LOADN                            R11 0
       47 SETTABLEKS                       R11 R9 K13 ["actualDuration"]
       49 LOADN                            R11 -1
       50 SETTABLEKS                       R11 R9 K14 ["actualStartTime"]
       52 GETTABLEKS                       R11 R6 K15 ["selfBaseDuration"]
       54 SETTABLEKS                       R11 R9 K15 ["selfBaseDuration"]
       56 GETTABLEKS                       R11 R6 K16 ["treeBaseDuration"]
       58 SETTABLEKS                       R11 R9 K16 ["treeBaseDuration"]
       60 LOADNIL                          R11
       61 SETTABLEKS                       R11 R1 K17 ["deletions"]
       63 JUMP                             ; [+14]
       64 GETUPVAL                         R9 5
       65 MOVE                             R10 R6
       66 MOVE                             R11 R8
       67 CALL                             R9 2 1
       68 GETTABLEKS                       R11 R6 K18 ["subtreeFlags"]
       70 GETUPVAL                         R12 6
       71 FASTCALL2                        BIT32_BAND R11 R12 ; [+3]
       73 GETIMPORT                        R10 K8 [bit32.band]
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K18 ["subtreeFlags"]
       78 LOADNIL                          R10
       79 JUMPIFEQKNIL                     R7 ; [+7]
       81 GETUPVAL                         R11 5
       82 MOVE                             R12 R7
       83 MOVE                             R13 R3
       84 CALL                             R11 2 1
       85 MOVE                             R10 R11
       86 JUMP                             ; [+17]
       87 GETUPVAL                         R11 7
       88 MOVE                             R12 R3
       89 MOVE                             R13 R5
       90 MOVE                             R14 R4
       91 LOADNIL                          R15
       92 CALL                             R11 4 1
       93 MOVE                             R10 R11
       94 GETTABLEKS                       R12 R10 K19 ["flags"]
       96 GETUPVAL                         R13 8
       97 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
       99 GETIMPORT                        R11 K21 [bit32.bor]
      101 CALL                             R11 2 1
      102 SETTABLEKS                       R11 R10 K19 ["flags"]
      104 SETTABLEKS                       R1 R10 K22 ["return_"]
      106 SETTABLEKS                       R1 R9 K22 ["return_"]
      108 SETTABLEKS                       R10 R9 K2 ["sibling"]
      110 SETTABLEKS                       R9 R1 K1 ["child"]
      112 RETURN                           R10 1

PROTO_36:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 GETTABLEKS                       R5 R0 K0 ["child"]
        4 LOADNIL                          R6
        5 MOVE                             R7 R2
        6 CALL                             R3 4 0
        7 GETTABLEKS                       R3 R1 K1 ["pendingProps"]
        9 GETTABLEKS                       R4 R3 K2 ["children"]
       11 GETUPVAL                         R5 1
       12 MOVE                             R6 R1
       13 MOVE                             R7 R4
       14 MOVE                             R8 R2
       15 CALL                             R5 3 1
       16 GETTABLEKS                       R7 R5 K3 ["flags"]
       18 GETUPVAL                         R8 2
       19 FASTCALL2                        BIT32_BOR R7 R8 ; [+3]
       21 GETIMPORT                        R6 K6 [bit32.bor]
       23 CALL                             R6 2 1
       24 SETTABLEKS                       R6 R5 K3 ["flags"]
       26 LOADNIL                          R6
       27 SETTABLEKS                       R6 R1 K7 ["memoizedState"]
       29 RETURN                           R5 1

PROTO_37:
        0 GETTABLEKS                       R5 R1 K0 ["mode"]
        2 GETUPVAL                         R6 0
        3 MOVE                             R7 R2
        4 MOVE                             R8 R5
        5 GETUPVAL                         R9 1
        6 GETTABLEKS                       R9 R9 K1 ["NoLanes"]
        8 LOADNIL                          R10
        9 CALL                             R6 4 1
       10 GETUPVAL                         R7 2
       11 MOVE                             R8 R3
       12 MOVE                             R9 R5
       13 MOVE                             R10 R4
       14 LOADNIL                          R11
       15 CALL                             R7 4 1
       16 GETTABLEKS                       R9 R7 K2 ["flags"]
       18 GETUPVAL                         R10 3
       19 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
       21 GETIMPORT                        R8 K5 [bit32.bor]
       23 CALL                             R8 2 1
       24 SETTABLEKS                       R8 R7 K2 ["flags"]
       26 SETTABLEKS                       R1 R6 K6 ["return_"]
       28 SETTABLEKS                       R1 R7 K6 ["return_"]
       30 SETTABLEKS                       R7 R6 K7 ["sibling"]
       32 SETTABLEKS                       R6 R1 K8 ["child"]
       34 GETTABLEKS                       R9 R1 K0 ["mode"]
       36 GETUPVAL                         R10 4
       37 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       39 GETIMPORT                        R8 K10 [bit32.band]
       41 CALL                             R8 2 1
       42 GETUPVAL                         R9 5
       43 JUMPIFEQ                         R8 R9 ; [+8]
       45 GETUPVAL                         R8 6
       46 MOVE                             R9 R1
       47 GETTABLEKS                       R10 R0 K8 ["child"]
       49 LOADNIL                          R11
       50 MOVE                             R12 R4
       51 CALL                             R8 4 0
       52 RETURN                           R7 1

PROTO_38:
        0 GETTABLEKS                       R4 R0 K0 ["mode"]
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
        5 GETIMPORT                        R3 K3 [bit32.band]
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 1
        9 JUMPIFNOTEQ                      R3 R4 ; [+18]
       11 GETUPVAL                         R3 2
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K4 ["error"]
       16 LOADK                            R4 K5 ["Cannot hydrate Suspense in legacy mode. Switch fromReactDOM.hydrate(element, container) to ReactDOM.createBlockingRoot(container, { hydrate: true }).render(element) or remove the Suspense componentsthe server rendered components."]
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K6 ["laneToLanes"]
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K7 ["SyncLane"]
       24 CALL                             R3 1 1
       25 SETTABLEKS                       R3 R0 K8 ["lanes"]
       27 JUMP                             ; [+37]
       28 GETUPVAL                         R3 5
       29 MOVE                             R4 R1
       30 CALL                             R3 1 1
       31 JUMPIFNOT                        R3 ; [+17]
       32 GETUPVAL                         R3 6
       33 JUMPIFNOT                        R3 ; [+5]
       34 GETUPVAL                         R3 7
       35 GETUPVAL                         R4 4
       36 GETTABLEKS                       R4 R4 K9 ["DefaultHydrationLane"]
       38 CALL                             R3 1 0
       39 GETUPVAL                         R3 4
       40 GETTABLEKS                       R3 R3 K6 ["laneToLanes"]
       42 GETUPVAL                         R4 4
       43 GETTABLEKS                       R4 R4 K9 ["DefaultHydrationLane"]
       45 CALL                             R3 1 1
       46 SETTABLEKS                       R3 R0 K8 ["lanes"]
       48 JUMP                             ; [+16]
       49 GETUPVAL                         R3 4
       50 GETTABLEKS                       R3 R3 K6 ["laneToLanes"]
       52 GETUPVAL                         R4 4
       53 GETTABLEKS                       R4 R4 K10 ["OffscreenLane"]
       55 CALL                             R3 1 1
       56 SETTABLEKS                       R3 R0 K8 ["lanes"]
       58 GETUPVAL                         R3 6
       59 JUMPIFNOT                        R3 ; [+5]
       60 GETUPVAL                         R3 7
       61 GETUPVAL                         R4 4
       62 GETTABLEKS                       R4 R4 K10 ["OffscreenLane"]
       64 CALL                             R3 1 0
       65 LOADNIL                          R3
       66 RETURN                           R3 1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_40:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 0
        2 GETUPVAL                         R6 1
        3 CALL                             R6 0 1
        4 GETUPVAL                         R7 2
        5 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
        7 GETIMPORT                        R5 K2 [bit32.band]
        9 CALL                             R5 2 1
       10 GETUPVAL                         R6 3
       11 JUMPIFEQ                         R5 R6 ; [+32]
       13 GETUPVAL                         R6 4
       14 MOVE                             R7 R1
       15 GETTABLEKS                       R8 R0 K3 ["child"]
       17 LOADNIL                          R9
       18 MOVE                             R10 R4
       19 CALL                             R6 4 0
       20 GETTABLEKS                       R6 R1 K4 ["pendingProps"]
       22 GETTABLEKS                       R7 R6 K5 ["children"]
       24 GETUPVAL                         R8 5
       25 MOVE                             R9 R1
       26 MOVE                             R10 R7
       27 MOVE                             R11 R4
       28 CALL                             R8 3 1
       29 GETTABLEKS                       R10 R8 K6 ["flags"]
       31 GETUPVAL                         R11 6
       32 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
       34 GETIMPORT                        R9 K8 [bit32.bor]
       36 CALL                             R9 2 1
       37 SETTABLEKS                       R9 R8 K6 ["flags"]
       39 LOADNIL                          R9
       40 SETTABLEKS                       R9 R1 K9 ["memoizedState"]
       42 MOVE                             R5 R8
       43 RETURN                           R5 1
       44 GETTABLEKS                       R6 R1 K10 ["mode"]
       46 GETUPVAL                         R7 7
       47 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       49 GETIMPORT                        R5 K2 [bit32.band]
       51 CALL                             R5 2 1
       52 GETUPVAL                         R6 8
       53 JUMPIFNOTEQ                      R5 R6 ; [+32]
       55 GETUPVAL                         R6 4
       56 MOVE                             R7 R1
       57 GETTABLEKS                       R8 R0 K3 ["child"]
       59 LOADNIL                          R9
       60 MOVE                             R10 R4
       61 CALL                             R6 4 0
       62 GETTABLEKS                       R6 R1 K4 ["pendingProps"]
       64 GETTABLEKS                       R7 R6 K5 ["children"]
       66 GETUPVAL                         R8 5
       67 MOVE                             R9 R1
       68 MOVE                             R10 R7
       69 MOVE                             R11 R4
       70 CALL                             R8 3 1
       71 GETTABLEKS                       R10 R8 K6 ["flags"]
       73 GETUPVAL                         R11 6
       74 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
       76 GETIMPORT                        R9 K8 [bit32.bor]
       78 CALL                             R9 2 1
       79 SETTABLEKS                       R9 R8 K6 ["flags"]
       81 LOADNIL                          R9
       82 SETTABLEKS                       R9 R1 K9 ["memoizedState"]
       84 MOVE                             R5 R8
       85 RETURN                           R5 1
       86 GETUPVAL                         R5 9
       87 MOVE                             R6 R2
       88 CALL                             R5 1 1
       89 JUMPIFNOT                        R5 ; [+31]
       90 GETUPVAL                         R6 4
       91 MOVE                             R7 R1
       92 GETTABLEKS                       R8 R0 K3 ["child"]
       94 LOADNIL                          R9
       95 MOVE                             R10 R4
       96 CALL                             R6 4 0
       97 GETTABLEKS                       R6 R1 K4 ["pendingProps"]
       99 GETTABLEKS                       R7 R6 K5 ["children"]
      101 GETUPVAL                         R8 5
      102 MOVE                             R9 R1
      103 MOVE                             R10 R7
      104 MOVE                             R11 R4
      105 CALL                             R8 3 1
      106 GETTABLEKS                       R10 R8 K6 ["flags"]
      108 GETUPVAL                         R11 6
      109 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
      111 GETIMPORT                        R9 K8 [bit32.bor]
      113 CALL                             R9 2 1
      114 SETTABLEKS                       R9 R8 K6 ["flags"]
      116 LOADNIL                          R9
      117 SETTABLEKS                       R9 R1 K9 ["memoizedState"]
      119 MOVE                             R5 R8
      120 RETURN                           R5 1
      121 GETUPVAL                         R5 10
      122 GETTABLEKS                       R5 R5 K11 ["includesSomeLane"]
      124 MOVE                             R6 R4
      125 GETTABLEKS                       R7 R0 K12 ["childLanes"]
      127 CALL                             R5 2 1
      128 GETUPVAL                         R6 11
      129 JUMPIF                           R6 ; [+1]
      130 JUMPIFNOT                        R5 ; [+63]
      131 GETUPVAL                         R6 12
      132 CALL                             R6 0 1
      133 JUMPIFEQKNIL                     R6 ; [+27]
      135 GETUPVAL                         R7 10
      136 GETTABLEKS                       R7 R7 K13 ["getBumpedLaneForHydration"]
      138 MOVE                             R8 R6
      139 MOVE                             R9 R4
      140 CALL                             R7 2 1
      141 GETUPVAL                         R8 10
      142 GETTABLEKS                       R8 R8 K14 ["NoLane"]
      144 JUMPIFEQ                         R7 R8 ; [+16]
      146 GETTABLEKS                       R8 R3 K15 ["retryLane"]
      148 JUMPIFEQ                         R7 R8 ; [+12]
      150 SETTABLEKS                       R7 R3 K15 ["retryLane"]
      152 GETUPVAL                         R8 10
      153 GETTABLEKS                       R8 R8 K16 ["NoTimestamp"]
      155 GETUPVAL                         R9 13
      156 MOVE                             R10 R0
      157 MOVE                             R11 R7
      158 MOVE                             R12 R8
      159 CALL                             R9 3 0
      160 JUMP                             ; [0]
      161 GETUPVAL                         R7 14
      162 CALL                             R7 0 0
      163 GETUPVAL                         R8 4
      164 MOVE                             R9 R1
      165 GETTABLEKS                       R10 R0 K3 ["child"]
      167 LOADNIL                          R11
      168 MOVE                             R12 R4
      169 CALL                             R8 4 0
      170 GETTABLEKS                       R8 R1 K4 ["pendingProps"]
      172 GETTABLEKS                       R9 R8 K5 ["children"]
      174 GETUPVAL                         R10 5
      175 MOVE                             R11 R1
      176 MOVE                             R12 R9
      177 MOVE                             R13 R4
      178 CALL                             R10 3 1
      179 GETTABLEKS                       R12 R10 K6 ["flags"]
      181 GETUPVAL                         R13 6
      182 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
      184 GETIMPORT                        R11 K8 [bit32.bor]
      186 CALL                             R11 2 1
      187 SETTABLEKS                       R11 R10 K6 ["flags"]
      189 LOADNIL                          R11
      190 SETTABLEKS                       R11 R1 K9 ["memoizedState"]
      192 MOVE                             R7 R10
      193 RETURN                           R7 1
      194 GETUPVAL                         R6 15
      195 MOVE                             R7 R2
      196 CALL                             R6 1 1
      197 JUMPIFNOT                        R6 ; [+43]
      198 GETTABLEKS                       R7 R1 K6 ["flags"]
      200 GETUPVAL                         R8 16
      201 FASTCALL2                        BIT32_BOR R7 R8 ; [+3]
      203 GETIMPORT                        R6 K8 [bit32.bor]
      205 CALL                             R6 2 1
      206 SETTABLEKS                       R6 R1 K6 ["flags"]
      208 GETTABLEKS                       R6 R0 K3 ["child"]
      210 SETTABLEKS                       R6 R1 K3 ["child"]
      212 NEWCLOSURE                       R6 P0
      213 CAPTURE                          UPVAL U17
      214 CAPTURE                          VAL R0
      215 GETUPVAL                         R7 18
      216 JUMPIFNOT                        R7 ; [+18]
      217 GETUPVAL                         R7 19
      218 JUMPIFNOTEQKNIL                  R7 ; [+12]
      220 GETIMPORT                        R7 K18 [require]
      222 GETUPVAL                         R8 20
      223 GETTABLEKS                       R8 R8 K19 ["Scheduler"]
      225 CALL                             R7 1 1
      226 GETTABLEKS                       R7 R7 K20 ["tracing"]
      228 GETTABLEKS                       R7 R7 K21 ["unstable_wrap"]
      230 SETUPVAL                         R7 19
      231 GETUPVAL                         R7 19
      232 MOVE                             R8 R6
      233 CALL                             R7 1 1
      234 MOVE                             R6 R7
      235 GETUPVAL                         R7 21
      236 MOVE                             R8 R2
      237 MOVE                             R9 R6
      238 CALL                             R7 2 0
      239 LOADNIL                          R7
      240 RETURN                           R7 1
      241 GETUPVAL                         R6 22
      242 MOVE                             R7 R1
      243 MOVE                             R8 R2
      244 CALL                             R6 2 0
      245 GETTABLEKS                       R6 R1 K4 ["pendingProps"]
      247 GETTABLEKS                       R7 R6 K5 ["children"]
      249 GETUPVAL                         R8 5
      250 MOVE                             R9 R1
      251 MOVE                             R10 R7
      252 MOVE                             R11 R4
      253 CALL                             R8 3 1
      254 GETTABLEKS                       R10 R8 K6 ["flags"]
      256 GETUPVAL                         R11 23
      257 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
      259 GETIMPORT                        R9 K8 [bit32.bor]
      261 CALL                             R9 2 1
      262 SETTABLEKS                       R9 R8 K6 ["flags"]
      264 RETURN                           R8 1

PROTO_41:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 GETTABLEKS                       R5 R1 K0 ["stateNode"]
        4 GETTABLEKS                       R5 R5 K1 ["containerInfo"]
        6 CALL                             R3 2 0
        7 GETTABLEKS                       R3 R1 K2 ["pendingProps"]
        9 JUMPIFNOTEQKNIL                  R0 ; [+10]
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R1
       13 LOADNIL                          R6
       14 MOVE                             R7 R3
       15 MOVE                             R8 R2
       16 CALL                             R4 4 1
       17 SETTABLEKS                       R4 R1 K3 ["child"]
       19 JUMP                             ; [+20]
       20 JUMPIFNOTEQKNIL                  R0 ; [+10]
       22 GETUPVAL                         R4 2
       23 MOVE                             R5 R1
       24 LOADNIL                          R6
       25 MOVE                             R7 R3
       26 MOVE                             R8 R2
       27 CALL                             R4 4 1
       28 SETTABLEKS                       R4 R1 K3 ["child"]
       30 JUMP                             ; [+9]
       31 GETUPVAL                         R4 1
       32 MOVE                             R5 R1
       33 GETTABLEKS                       R6 R0 K3 ["child"]
       35 MOVE                             R7 R3
       36 MOVE                             R8 R2
       37 CALL                             R4 4 1
       38 SETTABLEKS                       R4 R1 K3 ["child"]
       40 GETTABLEKS                       R4 R1 K3 ["child"]
       42 RETURN                           R4 1

PROTO_42:
        0 GETTABLEKS                       R3 R1 K0 ["type"]
        2 GETTABLEKS                       R4 R3 K1 ["_context"]
        4 GETTABLEKS                       R5 R1 K2 ["pendingProps"]
        6 GETTABLEKS                       R6 R1 K3 ["memoizedProps"]
        8 GETTABLEKS                       R7 R5 K4 ["value"]
       10 GETUPVAL                         R8 0
       11 JUMPIF                           R8 ; [+2]
       12 GETUPVAL                         R8 1
       13 JUMPIFNOT                        R8 ; [+39]
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R8 R8 K5 ["indexOf"]
       17 GETUPVAL                         R9 3
       18 GETTABLEKS                       R9 R9 K6 ["keys"]
       20 MOVE                             R10 R5
       21 CALL                             R9 1 1
       22 LOADK                            R10 K4 ["value"]
       23 CALL                             R8 2 1
       24 LOADN                            R9 1
       25 JUMPIFNOTLT                      R8 R9 ; [+10]
       27 GETUPVAL                         R8 4
       28 JUMPIF                           R8 ; [+7]
       29 LOADB                            R8 1
       30 SETUPVAL                         R8 4
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R8 R8 K7 ["error"]
       34 LOADK                            R9 K8 ["The `value` prop is required for the `<Context.Provider>`. Did you misspell it or forget to pass it?"]
       35 CALL                             R8 1 0
       36 GETTABLEKS                       R8 R1 K0 ["type"]
       38 GETTABLEKS                       R8 R8 K9 ["propTypes"]
       40 GETTABLEKS                       R9 R1 K0 ["type"]
       42 GETTABLEKS                       R9 R9 K10 ["validateProps"]
       44 JUMPIF                           R8 ; [+1]
       45 JUMPIFNOT                        R9 ; [+7]
       46 GETUPVAL                         R10 6
       47 MOVE                             R11 R8
       48 MOVE                             R12 R9
       49 MOVE                             R13 R5
       50 LOADK                            R14 K11 ["prop"]
       51 LOADK                            R15 K12 ["Context.Provider"]
       52 CALL                             R10 5 0
       53 GETUPVAL                         R8 7
       54 MOVE                             R9 R1
       55 MOVE                             R10 R7
       56 CALL                             R8 2 0
       57 JUMPIFEQKNIL                     R6 ; [+32]
       59 GETTABLEKS                       R8 R6 K4 ["value"]
       61 GETUPVAL                         R9 8
       62 MOVE                             R10 R4
       63 MOVE                             R11 R7
       64 MOVE                             R12 R8
       65 CALL                             R9 3 1
       66 JUMPIFNOTEQKN                    R9 K13 [0] ; [+17]
       68 GETTABLEKS                       R10 R6 K14 ["children"]
       70 GETTABLEKS                       R11 R5 K14 ["children"]
       72 JUMPIFNOTEQ                      R10 R11 ; [+17]
       74 GETUPVAL                         R10 9
       75 CALL                             R10 0 1
       76 JUMPIF                           R10 ; [+13]
       77 GETUPVAL                         R10 10
       78 MOVE                             R11 R0
       79 MOVE                             R12 R1
       80 MOVE                             R13 R2
       81 CALL                             R10 3 -1
       82 RETURN                           R10 -1
       83 JUMP                             ; [+6]
       84 GETUPVAL                         R10 11
       85 MOVE                             R11 R1
       86 MOVE                             R12 R4
       87 MOVE                             R13 R9
       88 MOVE                             R14 R2
       89 CALL                             R10 4 0
       90 GETTABLEKS                       R8 R5 K14 ["children"]
       92 JUMPIFNOTEQKNIL                  R0 ; [+10]
       94 GETUPVAL                         R9 12
       95 MOVE                             R10 R1
       96 LOADNIL                          R11
       97 MOVE                             R12 R8
       98 MOVE                             R13 R2
       99 CALL                             R9 4 1
      100 SETTABLEKS                       R9 R1 K15 ["child"]
      102 JUMP                             ; [+9]
      103 GETUPVAL                         R9 13
      104 MOVE                             R10 R1
      105 GETTABLEKS                       R11 R0 K15 ["child"]
      107 MOVE                             R12 R8
      108 MOVE                             R13 R2
      109 CALL                             R9 4 1
      110 SETTABLEKS                       R9 R1 K15 ["child"]
      112 GETTABLEKS                       R9 R1 K15 ["child"]
      114 RETURN                           R9 1

PROTO_43:
        0 GETTABLEKS                       R3 R1 K0 ["type"]
        2 GETUPVAL                         R4 0
        3 JUMPIFNOT                        R4 ; [+24]
        4 GETTABLEKS                       R4 R3 K1 ["_context"]
        6 JUMPIFNOTEQKNIL                  R4 ; [+19]
        8 GETTABLEKS                       R4 R3 K2 ["Consumer"]
       10 JUMPIFEQ                         R3 R4 ; [+17]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["usingContextAsConsumer"]
       15 JUMPIF                           R4 ; [+12]
       16 GETUPVAL                         R4 1
       17 LOADB                            R5 1
       18 SETTABLEKS                       R5 R4 K3 ["usingContextAsConsumer"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["error"]
       23 LOADK                            R5 K5 ["Rendering <Context> directly is not supported and will be removed in a future major release. Did you mean to render <Context.Consumer> instead?"]
       24 CALL                             R4 1 0
       25 JUMP                             ; [+2]
       26 GETTABLEKS                       R3 R3 K1 ["_context"]
       28 GETTABLEKS                       R4 R1 K6 ["pendingProps"]
       30 LOADNIL                          R5
       31 GETTABLEKS                       R6 R4 K7 ["render"]
       33 JUMPIFNOT                        R6 ; [+20]
       34 GETUPVAL                         R6 0
       35 JUMPIFNOT                        R6 ; [+15]
       36 GETUPVAL                         R6 3
       37 JUMPIFNOT                        R6 ; [+13]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K8 ["usingLegacyConsumer"]
       41 JUMPIF                           R6 ; [+9]
       42 GETUPVAL                         R6 1
       43 LOADB                            R7 1
       44 SETTABLEKS                       R7 R6 K8 ["usingLegacyConsumer"]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K9 ["warn"]
       49 LOADK                            R7 K10 ["Your Context.Consumer component is using legacy Roact syntax, which won't be supported in future versions of Roact. \nPlease provide no props and supply the 'render' function as a child (the 3rd argument of createElement). For example: \n       createElement(ContextConsumer, {render = function(...) end})\nbecomes:\n       createElement(ContextConsumer, nil, function(...) end)\nFor more info, reference the React documentation here: \nhttps://reactjs.org/docs/context.html#contextconsumer"]
       50 CALL                             R6 1 0
       51 GETTABLEKS                       R5 R4 K7 ["render"]
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R5 R4 K11 ["children"]
       56 GETUPVAL                         R6 0
       57 JUMPIFNOT                        R6 ; [+12]
       58 FASTCALL1                        TYPE R5 ; [+3]
       59 MOVE                             R7 R5
       60 GETIMPORT                        R6 K12 [type]
       62 CALL                             R6 1 1
       63 JUMPIFEQKS                       R6 K13 ["function"] ; [+6]
       65 GETUPVAL                         R6 2
       66 GETTABLEKS                       R6 R6 K4 ["error"]
       68 LOADK                            R7 K14 ["A context consumer was rendered with multiple children, or a child that isn't a function. A context consumer expects a single child that is a function. If you did pass a function, make sure there is no trailing or leading whitespace around it."]
       69 CALL                             R6 1 0
       70 GETUPVAL                         R6 4
       71 MOVE                             R7 R1
       72 MOVE                             R8 R2
       73 GETUPVAL                         R9 5
       74 GETTABLEKS                       R9 R9 K15 ["markWorkInProgressReceivedUpdate"]
       76 CALL                             R6 3 0
       77 GETUPVAL                         R6 6
       78 MOVE                             R7 R3
       79 GETTABLEKS                       R8 R4 K16 ["unstable_observedBits"]
       81 CALL                             R6 2 1
       82 LOADNIL                          R7
       83 GETUPVAL                         R8 0
       84 JUMPIFNOT                        R8 ; [+14]
       85 GETUPVAL                         R8 7
       86 SETTABLEKS                       R1 R8 K17 ["current"]
       88 GETUPVAL                         R8 8
       89 LOADB                            R9 1
       90 CALL                             R8 1 0
       91 MOVE                             R8 R5
       92 MOVE                             R9 R6
       93 CALL                             R8 1 1
       94 MOVE                             R7 R8
       95 GETUPVAL                         R8 8
       96 LOADB                            R9 0
       97 CALL                             R8 1 0
       98 JUMP                             ; [+4]
       99 MOVE                             R8 R5
      100 MOVE                             R9 R6
      101 CALL                             R8 1 1
      102 MOVE                             R7 R8
      103 GETTABLEKS                       R9 R1 K18 ["flags"]
      105 GETUPVAL                         R10 9
      106 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
      108 GETIMPORT                        R8 K21 [bit32.bor]
      110 CALL                             R8 2 1
      111 SETTABLEKS                       R8 R1 K18 ["flags"]
      113 MOVE                             R8 R7
      114 JUMPIFNOTEQKNIL                  R0 ; [+10]
      116 GETUPVAL                         R9 10
      117 MOVE                             R10 R1
      118 LOADNIL                          R11
      119 MOVE                             R12 R8
      120 MOVE                             R13 R2
      121 CALL                             R9 4 1
      122 SETTABLEKS                       R9 R1 K22 ["child"]
      124 JUMP                             ; [+9]
      125 GETUPVAL                         R9 11
      126 MOVE                             R10 R1
      127 GETTABLEKS                       R11 R0 K22 ["child"]
      129 MOVE                             R12 R8
      130 MOVE                             R13 R2
      131 CALL                             R9 4 1
      132 SETTABLEKS                       R9 R1 K22 ["child"]
      134 GETTABLEKS                       R8 R1 K22 ["child"]
      136 RETURN                           R8 1

PROTO_44:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_45:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETTABLEKS                       R3 R0 K0 ["dependencies"]
        3 SETTABLEKS                       R3 R1 K0 ["dependencies"]
        5 GETUPVAL                         R3 0
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R1
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R4 R1 K1 ["lanes"]
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["includesSomeLane"]
       17 MOVE                             R4 R2
       18 GETTABLEKS                       R5 R1 K3 ["childLanes"]
       20 CALL                             R3 2 1
       21 JUMPIF                           R3 ; [+2]
       22 LOADNIL                          R3
       23 RETURN                           R3 1
       24 GETUPVAL                         R3 4
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 CALL                             R3 2 0
       28 GETTABLEKS                       R3 R1 K4 ["child"]
       30 RETURN                           R3 1

PROTO_46:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+120]
        2 GETTABLEKS                       R3 R1 K0 ["return_"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+5]
        6 GETIMPORT                        R4 K2 [error]
        8 LOADK                            R5 K3 ["Cannot swap the root fiber."]
        9 CALL                             R4 1 0
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 LOADB                            R5 0 +1
       13 LOADB                            R5 1
       14 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       16 LOADK                            R6 K4 ["returnFiber was nil in remountFiber"]
       17 GETIMPORT                        R4 K6 [assert]
       19 CALL                             R4 2 0
       20 LOADNIL                          R4
       21 SETTABLEKS                       R4 R0 K7 ["alternate"]
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R1 K7 ["alternate"]
       26 GETTABLEKS                       R4 R1 K8 ["index"]
       28 SETTABLEKS                       R4 R2 K8 ["index"]
       30 GETTABLEKS                       R4 R1 K9 ["sibling"]
       32 SETTABLEKS                       R4 R2 K9 ["sibling"]
       34 GETTABLEKS                       R4 R1 K0 ["return_"]
       36 SETTABLEKS                       R4 R2 K0 ["return_"]
       38 GETTABLEKS                       R4 R1 K10 ["ref"]
       40 SETTABLEKS                       R4 R2 K10 ["ref"]
       42 GETTABLEKS                       R4 R3 K11 ["child"]
       44 JUMPIFNOTEQ                      R1 R4 ; [+4]
       46 SETTABLEKS                       R2 R3 K11 ["child"]
       48 JUMP                             ; [+33]
       49 GETTABLEKS                       R4 R3 K11 ["child"]
       51 JUMPIFNOTEQKNIL                  R4 ; [+5]
       53 GETIMPORT                        R5 K2 [error]
       55 LOADK                            R6 K12 ["Expected parent to have a child."]
       56 CALL                             R5 1 0
       57 JUMPIFNOTEQKNIL                  R4 ; [+2]
       59 LOADB                            R6 0 +1
       60 LOADB                            R6 1
       61 FASTCALL2K                       ASSERT R6 K13 ; [+4]
       63 LOADK                            R7 K13 ["prevSibling was nil in remountFiber"]
       64 GETIMPORT                        R5 K6 [assert]
       66 CALL                             R5 2 0
       67 GETTABLEKS                       R5 R4 K9 ["sibling"]
       69 JUMPIFEQ                         R5 R1 ; [+10]
       71 GETTABLEKS                       R4 R4 K9 ["sibling"]
       73 JUMPIFNOTEQKNIL                  R4 ; [+5]
       75 GETIMPORT                        R5 K2 [error]
       77 LOADK                            R6 K14 ["Expected to find the previous sibling."]
       78 CALL                             R5 1 0
       79 JUMPBACK                         ; [-13]
       80 SETTABLEKS                       R2 R4 K9 ["sibling"]
       82 GETTABLEKS                       R4 R3 K15 ["deletions"]
       84 JUMPIFNOTEQKNIL                  R4 ; [+19]
       86 NEWTABLE                         R5 0 1
       88 MOVE                             R6 R0
       89 SETLIST                          R5 R6 1 [1]
       91 SETTABLEKS                       R5 R3 K15 ["deletions"]
       93 GETTABLEKS                       R6 R3 K16 ["flags"]
       95 GETUPVAL                         R7 1
       96 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       98 GETIMPORT                        R5 K19 [bit32.bor]
      100 CALL                             R5 2 1
      101 SETTABLEKS                       R5 R3 K16 ["flags"]
      103 JUMP                             ; [+7]
      104 FASTCALL2                        TABLE_INSERT R4 R0 ; [+5]
      106 MOVE                             R6 R4
      107 MOVE                             R7 R0
      108 GETIMPORT                        R5 K22 [table.insert]
      110 CALL                             R5 2 0
      111 GETTABLEKS                       R6 R2 K16 ["flags"]
      113 GETUPVAL                         R7 2
      114 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
      116 GETIMPORT                        R5 K19 [bit32.bor]
      118 CALL                             R5 2 1
      119 SETTABLEKS                       R5 R2 K16 ["flags"]
      121 RETURN                           R2 1
      122 GETIMPORT                        R3 K2 [error]
      124 LOADK                            R4 K23 ["Did not expect this call in production. This is a bug in React. Please file an issue."]
      125 CALL                             R3 1 0
      126 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R3 R1 K0 ["lanes"]
        2 GETUPVAL                         R4 0
        3 JUMPIFNOT                        R4 ; [+26]
        4 GETTABLEKS                       R4 R1 K1 ["_debugNeedsRemount"]
        6 JUMPIFNOT                        R4 ; [+23]
        7 JUMPIFEQKNIL                     R0 ; [+22]
        9 GETGLOBAL                        R4 K2 ["remountFiber"]
       11 MOVE                             R5 R0
       12 MOVE                             R6 R1
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R8 R1 K3 ["type"]
       16 GETTABLEKS                       R9 R1 K4 ["key"]
       18 GETTABLEKS                       R10 R1 K5 ["pendingProps"]
       20 GETTABLEKS                       R12 R1 K7 ["_debugOwner"]
       22 ORK                              R11 R12 K6 []
       23 GETTABLEKS                       R12 R1 K8 ["mode"]
       25 GETTABLEKS                       R13 R1 K0 ["lanes"]
       27 CALL                             R7 6 -1
       28 CALL                             R4 -1 -1
       29 RETURN                           R4 -1
       30 JUMPIFEQKNIL                     R0 ; [+297]
       32 GETTABLEKS                       R4 R0 K9 ["memoizedProps"]
       34 GETTABLEKS                       R5 R1 K5 ["pendingProps"]
       36 JUMPIFNOTEQ                      R4 R5 ; [+17]
       38 GETUPVAL                         R6 2
       39 CALL                             R6 0 1
       40 JUMPIF                           R6 ; [+13]
       41 GETUPVAL                         R7 0
       42 JUMPIFNOT                        R7 ; [+9]
       43 GETTABLEKS                       R7 R1 K3 ["type"]
       45 GETTABLEKS                       R8 R0 K3 ["type"]
       47 JUMPIFNOTEQ                      R7 R8 ; [+2]
       49 LOADB                            R6 0 +1
       50 LOADB                            R6 1
       51 JUMP                             ; [+1]
       52 LOADB                            R6 0
       53 JUMPIFNOT                        R6 ; [+3]
       54 LOADB                            R6 1
       55 SETUPVAL                         R6 3
       56 JUMP                             ; [+273]
       57 GETUPVAL                         R6 4
       58 GETTABLEKS                       R6 R6 K10 ["includesSomeLane"]
       60 MOVE                             R7 R2
       61 MOVE                             R8 R3
       62 CALL                             R6 2 1
       63 JUMPIF                           R6 ; [+247]
       64 LOADB                            R6 0
       65 SETUPVAL                         R6 3
       66 GETTABLEKS                       R6 R1 K11 ["tag"]
       68 GETUPVAL                         R7 5
       69 JUMPIFNOTEQ                      R6 R7 ; [+37]
       71 GETTABLEKS                       R6 R1 K12 ["stateNode"]
       73 GETTABLEKS                       R7 R6 K13 ["pendingContext"]
       75 JUMPIFNOT                        R7 ; [+14]
       76 GETUPVAL                         R7 6
       77 MOVE                             R8 R1
       78 GETTABLEKS                       R9 R6 K13 ["pendingContext"]
       80 GETTABLEKS                       R11 R6 K13 ["pendingContext"]
       82 GETTABLEKS                       R12 R6 K14 ["context"]
       84 JUMPIFNOTEQ                      R11 R12 ; [+2]
       86 LOADB                            R10 0 +1
       87 LOADB                            R10 1
       88 CALL                             R7 3 0
       89 JUMP                             ; [+9]
       90 GETTABLEKS                       R7 R6 K14 ["context"]
       92 JUMPIFNOT                        R7 ; [+6]
       93 GETUPVAL                         R7 6
       94 MOVE                             R8 R1
       95 GETTABLEKS                       R9 R6 K14 ["context"]
       97 LOADB                            R10 0
       98 CALL                             R7 3 0
       99 GETUPVAL                         R7 7
      100 MOVE                             R8 R1
      101 GETTABLEKS                       R9 R6 K15 ["containerInfo"]
      103 CALL                             R7 2 0
      104 GETUPVAL                         R6 8
      105 CALL                             R6 0 0
      106 JUMP                             ; [+198]
      107 GETTABLEKS                       R6 R1 K11 ["tag"]
      109 GETUPVAL                         R7 9
      110 JUMPIFNOTEQ                      R6 R7 ; [+5]
      112 GETUPVAL                         R6 10
      113 MOVE                             R7 R1
      114 CALL                             R6 1 0
      115 JUMP                             ; [+189]
      116 GETTABLEKS                       R6 R1 K11 ["tag"]
      118 GETUPVAL                         R7 11
      119 JUMPIFNOTEQ                      R6 R7 ; [+11]
      121 GETTABLEKS                       R6 R1 K3 ["type"]
      123 GETUPVAL                         R7 12
      124 MOVE                             R8 R6
      125 CALL                             R7 1 1
      126 JUMPIFNOT                        R7 ; [+178]
      127 GETUPVAL                         R7 13
      128 MOVE                             R8 R1
      129 CALL                             R7 1 0
      130 JUMP                             ; [+174]
      131 GETTABLEKS                       R6 R1 K11 ["tag"]
      133 GETUPVAL                         R7 14
      134 JUMPIFNOTEQ                      R6 R7 ; [+9]
      136 GETUPVAL                         R6 7
      137 MOVE                             R7 R1
      138 GETTABLEKS                       R8 R1 K12 ["stateNode"]
      140 GETTABLEKS                       R8 R8 K15 ["containerInfo"]
      142 CALL                             R6 2 0
      143 JUMP                             ; [+161]
      144 GETTABLEKS                       R6 R1 K11 ["tag"]
      146 GETUPVAL                         R7 15
      147 JUMPIFNOTEQ                      R6 R7 ; [+10]
      149 GETTABLEKS                       R6 R1 K9 ["memoizedProps"]
      151 GETTABLEKS                       R6 R6 K16 ["value"]
      153 GETUPVAL                         R7 16
      154 MOVE                             R8 R1
      155 MOVE                             R9 R6
      156 CALL                             R7 2 0
      157 JUMP                             ; [+147]
      158 GETTABLEKS                       R6 R1 K11 ["tag"]
      160 GETUPVAL                         R7 17
      161 JUMPIFNOTEQ                      R6 R7 ; [+12]
      163 GETUPVAL                         R6 18
      164 JUMPIFNOT                        R6 ; [+140]
      165 GETTABLEKS                       R6 R1 K12 ["stateNode"]
      167 LOADN                            R7 0
      168 SETTABLEKS                       R7 R6 K17 ["effectDuration"]
      170 LOADN                            R7 0
      171 SETTABLEKS                       R7 R6 K18 ["passiveEffectDuration"]
      173 JUMP                             ; [+131]
      174 GETTABLEKS                       R6 R1 K11 ["tag"]
      176 GETUPVAL                         R7 19
      177 JUMPIFNOTEQ                      R6 R7 ; [+77]
      179 GETTABLEKS                       R6 R1 K19 ["memoizedState"]
      181 JUMPIFEQKNIL                     R6 ; [+64]
      183 GETUPVAL                         R7 20
      184 JUMPIFNOT                        R7 ; [+24]
      185 GETTABLEKS                       R7 R6 K20 ["dehydrated"]
      187 JUMPIFEQKNIL                     R7 ; [+21]
      189 GETUPVAL                         R7 21
      190 MOVE                             R8 R1
      191 GETUPVAL                         R9 22
      192 GETUPVAL                         R10 23
      193 GETTABLEKS                       R10 R10 K21 ["current"]
      195 CALL                             R9 1 -1
      196 CALL                             R7 -1 0
      197 GETTABLEKS                       R8 R1 K22 ["flags"]
      199 GETUPVAL                         R9 24
      200 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      202 GETIMPORT                        R7 K25 [bit32.bor]
      204 CALL                             R7 2 1
      205 SETTABLEKS                       R7 R1 K22 ["flags"]
      207 LOADNIL                          R7
      208 RETURN                           R7 1
      209 GETTABLEKS                       R7 R1 K26 ["child"]
      211 GETTABLEKS                       R8 R7 K27 ["childLanes"]
      213 GETUPVAL                         R9 4
      214 GETTABLEKS                       R9 R9 K10 ["includesSomeLane"]
      216 MOVE                             R10 R2
      217 MOVE                             R11 R8
      218 CALL                             R9 2 1
      219 JUMPIFNOT                        R9 ; [+6]
      220 GETUPVAL                         R9 25
      221 MOVE                             R10 R0
      222 MOVE                             R11 R1
      223 MOVE                             R12 R2
      224 CALL                             R9 3 -1
      225 RETURN                           R9 -1
      226 GETUPVAL                         R9 21
      227 MOVE                             R10 R1
      228 GETUPVAL                         R11 22
      229 GETUPVAL                         R12 23
      230 GETTABLEKS                       R12 R12 K21 ["current"]
      232 CALL                             R11 1 -1
      233 CALL                             R9 -1 0
      234 GETUPVAL                         R9 26
      235 MOVE                             R10 R0
      236 MOVE                             R11 R1
      237 MOVE                             R12 R2
      238 CALL                             R9 3 1
      239 JUMPIFEQKNIL                     R9 ; [+4]
      241 GETTABLEKS                       R10 R9 K28 ["sibling"]
      243 RETURN                           R10 1
      244 LOADNIL                          R10
      245 RETURN                           R10 1
      246 GETUPVAL                         R7 21
      247 MOVE                             R8 R1
      248 GETUPVAL                         R9 22
      249 GETUPVAL                         R10 23
      250 GETTABLEKS                       R10 R10 K21 ["current"]
      252 CALL                             R9 1 -1
      253 CALL                             R7 -1 0
      254 JUMP                             ; [+50]
      255 GETTABLEKS                       R6 R1 K11 ["tag"]
      257 GETUPVAL                         R7 27
      258 JUMPIFNOTEQ                      R6 R7 ; [+25]
      260 GETIMPORT                        R6 K30 [print]
      262 LOADK                            R7 K31 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
      263 CALL                             R6 1 0
      264 GETIMPORT                        R6 K30 [print]
      266 LOADK                            R7 K31 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
      267 CALL                             R6 1 0
      268 GETIMPORT                        R6 K30 [print]
      270 LOADK                            R8 K32 ["UNIMPLEMENTED ERROR: "]
      271 LOADK                            R10 K33 ["beginWork: SuspenseListComponent"]
      272 FASTCALL1                        TOSTRING R10 ; [+2]
      273 GETIMPORT                        R9 K35 [tostring]
      275 CALL                             R9 1 1
      276 CONCAT                           R7 R8 R9
      277 CALL                             R6 1 0
      278 GETIMPORT                        R6 K37 [error]
      280 LOADK                            R7 K38 ["FIXME (roblox): beginWork: SuspenseListComponent is unimplemented"]
      281 LOADN                            R8 2
      282 CALL                             R6 2 0
      283 JUMP                             ; [+21]
      284 GETTABLEKS                       R6 R1 K11 ["tag"]
      286 GETUPVAL                         R7 28
      287 JUMPIFEQ                         R6 R7 ; [+6]
      289 GETTABLEKS                       R6 R1 K11 ["tag"]
      291 GETUPVAL                         R7 29
      292 JUMPIFNOTEQ                      R6 R7 ; [+12]
      294 GETUPVAL                         R6 4
      295 GETTABLEKS                       R6 R6 K39 ["NoLanes"]
      297 SETTABLEKS                       R6 R1 K0 ["lanes"]
      299 GETUPVAL                         R6 30
      300 MOVE                             R7 R0
      301 MOVE                             R8 R1
      302 MOVE                             R9 R2
      303 CALL                             R6 3 1
      304 RETURN                           R6 1
      305 GETUPVAL                         R6 26
      306 MOVE                             R7 R0
      307 MOVE                             R8 R1
      308 MOVE                             R9 R2
      309 CALL                             R6 3 -1
      310 RETURN                           R6 -1
      311 GETTABLEKS                       R7 R0 K22 ["flags"]
      313 GETUPVAL                         R8 31
      314 FASTCALL2                        BIT32_BAND R7 R8 ; [+3]
      316 GETIMPORT                        R6 K41 [bit32.band]
      318 CALL                             R6 2 1
      319 GETUPVAL                         R7 32
      320 JUMPIFEQ                         R6 R7 ; [+4]
      322 LOADB                            R6 1
      323 SETUPVAL                         R6 3
      324 JUMP                             ; [+5]
      325 LOADB                            R6 0
      326 SETUPVAL                         R6 3
      327 JUMP                             ; [+2]
      328 LOADB                            R4 0
      329 SETUPVAL                         R4 3
      330 GETUPVAL                         R4 4
      331 GETTABLEKS                       R4 R4 K39 ["NoLanes"]
      333 SETTABLEKS                       R4 R1 K0 ["lanes"]
      335 GETTABLEKS                       R4 R1 K11 ["tag"]
      337 GETUPVAL                         R5 33
      338 GETTABLEKS                       R5 R5 K42 ["IndeterminateComponent"]
      340 JUMPIFNOTEQ                      R4 R5 ; [+9]
      342 GETUPVAL                         R4 34
      343 MOVE                             R5 R0
      344 MOVE                             R6 R1
      345 GETTABLEKS                       R7 R1 K3 ["type"]
      347 MOVE                             R8 R2
      348 CALL                             R4 4 -1
      349 RETURN                           R4 -1
      350 GETTABLEKS                       R4 R1 K11 ["tag"]
      352 GETUPVAL                         R5 35
      353 JUMPIFNOTEQ                      R4 R5 ; [+11]
      355 GETTABLEKS                       R4 R1 K43 ["elementType"]
      357 GETUPVAL                         R5 36
      358 MOVE                             R6 R0
      359 MOVE                             R7 R1
      360 MOVE                             R8 R4
      361 MOVE                             R9 R3
      362 MOVE                             R10 R2
      363 CALL                             R5 5 1
      364 RETURN                           R5 1
      365 GETTABLEKS                       R4 R1 K11 ["tag"]
      367 GETUPVAL                         R5 37
      368 JUMPIFNOTEQ                      R4 R5 ; [+25]
      370 GETTABLEKS                       R4 R1 K3 ["type"]
      372 GETTABLEKS                       R5 R1 K5 ["pendingProps"]
      374 LOADNIL                          R6
      375 GETTABLEKS                       R7 R1 K43 ["elementType"]
      377 JUMPIFNOTEQ                      R7 R4 ; [+3]
      379 MOVE                             R6 R5
      380 JUMP                             ; [+5]
      381 GETUPVAL                         R7 38
      382 MOVE                             R8 R4
      383 MOVE                             R9 R5
      384 CALL                             R7 2 1
      385 MOVE                             R6 R7
      386 GETUPVAL                         R7 39
      387 MOVE                             R8 R0
      388 MOVE                             R9 R1
      389 MOVE                             R10 R4
      390 MOVE                             R11 R6
      391 MOVE                             R12 R2
      392 CALL                             R7 5 -1
      393 RETURN                           R7 -1
      394 GETTABLEKS                       R4 R1 K11 ["tag"]
      396 GETUPVAL                         R5 11
      397 JUMPIFNOTEQ                      R4 R5 ; [+23]
      399 GETTABLEKS                       R4 R1 K3 ["type"]
      401 GETTABLEKS                       R5 R1 K5 ["pendingProps"]
      403 GETTABLEKS                       R7 R1 K43 ["elementType"]
      405 JUMPIFNOTEQ                      R7 R4 ; [+3]
      407 MOVE                             R6 R5
      408 JUMPIF                           R6 ; [+4]
      409 GETUPVAL                         R6 38
      410 MOVE                             R7 R4
      411 MOVE                             R8 R5
      412 CALL                             R6 2 1
      413 GETUPVAL                         R7 40
      414 MOVE                             R8 R0
      415 MOVE                             R9 R1
      416 MOVE                             R10 R4
      417 MOVE                             R11 R6
      418 MOVE                             R12 R2
      419 CALL                             R7 5 1
      420 RETURN                           R7 1
      421 GETTABLEKS                       R4 R1 K11 ["tag"]
      423 GETUPVAL                         R5 5
      424 JUMPIFNOTEQ                      R4 R5 ; [+7]
      426 GETUPVAL                         R4 41
      427 MOVE                             R5 R0
      428 MOVE                             R6 R1
      429 MOVE                             R7 R2
      430 CALL                             R4 3 -1
      431 RETURN                           R4 -1
      432 GETTABLEKS                       R4 R1 K11 ["tag"]
      434 GETUPVAL                         R5 9
      435 JUMPIFNOTEQ                      R4 R5 ; [+7]
      437 GETUPVAL                         R4 42
      438 MOVE                             R5 R0
      439 MOVE                             R6 R1
      440 MOVE                             R7 R2
      441 CALL                             R4 3 1
      442 RETURN                           R4 1
      443 GETTABLEKS                       R4 R1 K11 ["tag"]
      445 GETUPVAL                         R5 43
      446 JUMPIFNOTEQ                      R4 R5 ; [+8]
      448 JUMPIFNOTEQKNIL                  R0 ; [+4]
      450 GETUPVAL                         R5 44
      451 MOVE                             R6 R1
      452 CALL                             R5 1 0
      453 LOADNIL                          R4
      454 RETURN                           R4 1
      455 GETTABLEKS                       R4 R1 K11 ["tag"]
      457 GETUPVAL                         R5 19
      458 JUMPIFNOTEQ                      R4 R5 ; [+7]
      460 GETUPVAL                         R4 25
      461 MOVE                             R5 R0
      462 MOVE                             R6 R1
      463 MOVE                             R7 R2
      464 CALL                             R4 3 -1
      465 RETURN                           R4 -1
      466 GETTABLEKS                       R4 R1 K11 ["tag"]
      468 GETUPVAL                         R5 14
      469 JUMPIFNOTEQ                      R4 R5 ; [+8]
      471 GETGLOBAL                        R4 K44 ["updatePortalComponent"]
      473 MOVE                             R5 R0
      474 MOVE                             R6 R1
      475 MOVE                             R7 R2
      476 CALL                             R4 3 -1
      477 RETURN                           R4 -1
      478 GETTABLEKS                       R4 R1 K11 ["tag"]
      480 GETUPVAL                         R5 45
      481 JUMPIFNOTEQ                      R4 R5 ; [+23]
      483 GETTABLEKS                       R4 R1 K3 ["type"]
      485 GETTABLEKS                       R5 R1 K5 ["pendingProps"]
      487 MOVE                             R6 R5
      488 GETTABLEKS                       R7 R1 K43 ["elementType"]
      490 JUMPIFEQ                         R7 R4 ; [+6]
      492 GETUPVAL                         R7 38
      493 MOVE                             R8 R4
      494 MOVE                             R9 R5
      495 CALL                             R7 2 1
      496 MOVE                             R6 R7
      497 GETUPVAL                         R7 46
      498 MOVE                             R8 R0
      499 MOVE                             R9 R1
      500 MOVE                             R10 R4
      501 MOVE                             R11 R6
      502 MOVE                             R12 R2
      503 CALL                             R7 5 -1
      504 RETURN                           R7 -1
      505 GETTABLEKS                       R4 R1 K11 ["tag"]
      507 GETUPVAL                         R5 47
      508 JUMPIFNOTEQ                      R4 R5 ; [+8]
      510 GETGLOBAL                        R4 K45 ["updateFragment"]
      512 MOVE                             R5 R0
      513 MOVE                             R6 R1
      514 MOVE                             R7 R2
      515 CALL                             R4 3 -1
      516 RETURN                           R4 -1
      517 GETTABLEKS                       R4 R1 K11 ["tag"]
      519 GETUPVAL                         R5 48
      520 JUMPIFNOTEQ                      R4 R5 ; [+8]
      522 GETGLOBAL                        R4 K46 ["updateMode"]
      524 MOVE                             R5 R0
      525 MOVE                             R6 R1
      526 MOVE                             R7 R2
      527 CALL                             R4 3 -1
      528 RETURN                           R4 -1
      529 GETTABLEKS                       R4 R1 K11 ["tag"]
      531 GETUPVAL                         R5 17
      532 JUMPIFNOTEQ                      R4 R5 ; [+8]
      534 GETGLOBAL                        R4 K47 ["updateProfiler"]
      536 MOVE                             R5 R0
      537 MOVE                             R6 R1
      538 MOVE                             R7 R2
      539 CALL                             R4 3 -1
      540 RETURN                           R4 -1
      541 GETTABLEKS                       R4 R1 K11 ["tag"]
      543 GETUPVAL                         R5 15
      544 JUMPIFNOTEQ                      R4 R5 ; [+7]
      546 GETUPVAL                         R4 49
      547 MOVE                             R5 R0
      548 MOVE                             R6 R1
      549 MOVE                             R7 R2
      550 CALL                             R4 3 -1
      551 RETURN                           R4 -1
      552 GETTABLEKS                       R4 R1 K11 ["tag"]
      554 GETUPVAL                         R5 50
      555 JUMPIFNOTEQ                      R4 R5 ; [+8]
      557 GETGLOBAL                        R4 K48 ["updateContextConsumer"]
      559 MOVE                             R5 R0
      560 MOVE                             R6 R1
      561 MOVE                             R7 R2
      562 CALL                             R4 3 -1
      563 RETURN                           R4 -1
      564 GETTABLEKS                       R4 R1 K11 ["tag"]
      566 GETUPVAL                         R5 51
      567 JUMPIFNOTEQ                      R4 R5 ; [+58]
      569 GETTABLEKS                       R4 R1 K3 ["type"]
      571 GETTABLEKS                       R5 R1 K5 ["pendingProps"]
      573 GETUPVAL                         R6 38
      574 MOVE                             R7 R4
      575 MOVE                             R8 R5
      576 CALL                             R6 2 1
      577 GETUPVAL                         R7 0
      578 JUMPIF                           R7 ; [+2]
      579 GETUPVAL                         R7 52
      580 JUMPIFNOT                        R7 ; [+30]
      581 GETTABLEKS                       R7 R1 K3 ["type"]
      583 GETTABLEKS                       R8 R1 K43 ["elementType"]
      585 JUMPIFEQ                         R7 R8 ; [+25]
      587 LOADNIL                          R7
      588 LOADNIL                          R8
      589 FASTCALL1                        TYPE R4 ; [+3]
      590 MOVE                             R10 R4
      591 GETIMPORT                        R9 K49 [type]
      593 CALL                             R9 1 1
      594 JUMPIFNOTEQKS                    R9 K50 ["table"] ; [+5]
      596 GETTABLEKS                       R7 R4 K51 ["propTypes"]
      598 GETTABLEKS                       R8 R4 K52 ["validateProps"]
      600 JUMPIF                           R7 ; [+1]
      601 JUMPIFNOT                        R8 ; [+9]
      602 GETUPVAL                         R9 53
      603 MOVE                             R10 R7
      604 MOVE                             R11 R8
      605 MOVE                             R12 R6
      606 LOADK                            R13 K53 ["prop"]
      607 GETUPVAL                         R14 54
      608 MOVE                             R15 R4
      609 CALL                             R14 1 -1
      610 CALL                             R9 -1 0
      611 GETUPVAL                         R7 38
      612 GETTABLEKS                       R8 R4 K3 ["type"]
      614 MOVE                             R9 R6
      615 CALL                             R7 2 1
      616 MOVE                             R6 R7
      617 GETUPVAL                         R7 55
      618 MOVE                             R8 R0
      619 MOVE                             R9 R1
      620 MOVE                             R10 R4
      621 MOVE                             R11 R6
      622 MOVE                             R12 R3
      623 MOVE                             R13 R2
      624 CALL                             R7 6 -1
      625 RETURN                           R7 -1
      626 GETTABLEKS                       R4 R1 K11 ["tag"]
      628 GETUPVAL                         R5 56
      629 JUMPIFNOTEQ                      R4 R5 ; [+12]
      631 GETUPVAL                         R4 57
      632 MOVE                             R5 R0
      633 MOVE                             R6 R1
      634 GETTABLEKS                       R7 R1 K3 ["type"]
      636 GETTABLEKS                       R8 R1 K5 ["pendingProps"]
      638 MOVE                             R9 R3
      639 MOVE                             R10 R2
      640 CALL                             R4 6 -1
      641 RETURN                           R4 -1
      642 GETTABLEKS                       R4 R1 K11 ["tag"]
      644 GETUPVAL                         R5 58
      645 JUMPIFNOTEQ                      R4 R5 ; [+24]
      647 GETTABLEKS                       R4 R1 K3 ["type"]
      649 GETTABLEKS                       R5 R1 K5 ["pendingProps"]
      651 GETTABLEKS                       R7 R1 K43 ["elementType"]
      653 JUMPIFNOTEQ                      R7 R4 ; [+3]
      655 MOVE                             R6 R5
      656 JUMPIF                           R6 ; [+4]
      657 GETUPVAL                         R6 38
      658 MOVE                             R7 R4
      659 MOVE                             R8 R5
      660 CALL                             R6 2 1
      661 GETGLOBAL                        R7 K54 ["mountIncompleteClassComponent"]
      663 MOVE                             R8 R0
      664 MOVE                             R9 R1
      665 MOVE                             R10 R4
      666 MOVE                             R11 R6
      667 MOVE                             R12 R2
      668 CALL                             R7 5 -1
      669 RETURN                           R7 -1
      670 GETTABLEKS                       R4 R1 K11 ["tag"]
      672 GETUPVAL                         R5 28
      673 JUMPIFNOTEQ                      R4 R5 ; [+7]
      675 GETUPVAL                         R4 30
      676 MOVE                             R5 R0
      677 MOVE                             R6 R1
      678 MOVE                             R7 R2
      679 CALL                             R4 3 1
      680 RETURN                           R4 1
      681 GETTABLEKS                       R4 R1 K11 ["tag"]
      683 GETUPVAL                         R5 29
      684 JUMPIFNOTEQ                      R4 R5 ; [+7]
      686 GETUPVAL                         R4 59
      687 MOVE                             R5 R0
      688 MOVE                             R6 R1
      689 MOVE                             R7 R2
      690 CALL                             R4 3 1
      691 RETURN                           R4 1
      692 GETUPVAL                         R4 60
      693 LOADB                            R5 0
      694 LOADK                            R6 K55 ["Unknown unit of work tag (%s). This error is likely caused by a bug in React. Please file an issue."]
      695 GETTABLEKS                       R8 R1 K11 ["tag"]
      697 FASTCALL1                        TOSTRING R8 ; [+2]
      698 GETIMPORT                        R7 K35 [tostring]
      700 CALL                             R7 1 1
      701 CALL                             R4 3 0
      702 LOADNIL                          R4
      703 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R1 K2 [_G]
        4 GETTABLEKS                       R1 R1 K3 ["__DEV__"]
        6 GETIMPORT                        R2 K2 [_G]
        8 GETTABLEKS                       R2 R2 K4 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
       10 GETIMPORT                        R3 K2 [_G]
       12 GETTABLEKS                       R3 R3 K5 ["__COMPAT_WARNINGS__"]
       14 GETIMPORT                        R4 K7 [script]
       16 GETTABLEKS                       R4 R4 K8 ["Parent"]
       18 GETTABLEKS                       R4 R4 K8 ["Parent"]
       20 GETIMPORT                        R5 K10 [require]
       22 GETTABLEKS                       R6 R4 K11 ["Shared"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R6 R5 K12 ["console"]
       27 GETIMPORT                        R7 K10 [require]
       29 GETTABLEKS                       R8 R4 K13 ["LuauPolyfill"]
       31 CALL                             R7 1 1
       32 GETTABLEKS                       R8 R7 K14 ["Array"]
       34 GETTABLEKS                       R9 R7 K15 ["Object"]
       36 GETTABLEKS                       R10 R7 K16 ["util"]
       38 GETTABLEKS                       R10 R10 K17 ["inspect"]
       40 GETIMPORT                        R11 K10 [require]
       42 GETTABLEKS                       R12 R4 K11 ["Shared"]
       44 CALL                             R11 1 1
       45 GETIMPORT                        R12 K10 [require]
       47 GETTABLEKS                       R13 R4 K18 ["React"]
       49 CALL                             R12 1 1
       50 GETIMPORT                        R13 K10 [require]
       52 GETIMPORT                        R14 K7 [script]
       54 GETTABLEKS                       R14 R14 K8 ["Parent"]
       56 GETTABLEKS                       R14 R14 K19 ["ReactInternalTypes"]
       58 CALL                             R13 1 1
       59 GETIMPORT                        R14 K10 [require]
       61 GETIMPORT                        R15 K7 [script]
       63 GETTABLEKS                       R15 R15 K8 ["Parent"]
       65 GETTABLEKS                       R15 R15 K20 ["ReactFiberLane"]
       67 CALL                             R14 1 1
       68 GETIMPORT                        R15 K10 [require]
       70 GETIMPORT                        R17 K7 [script]
       72 GETTABLEKS                       R17 R17 K8 ["Parent"]
       74 GETTABLEKS                       R16 R17 K21 ["ReactFiberSuspenseComponent.new"]
       76 CALL                             R15 1 1
       77 GETIMPORT                        R16 K10 [require]
       79 GETIMPORT                        R18 K7 [script]
       81 GETTABLEKS                       R18 R18 K8 ["Parent"]
       83 GETTABLEKS                       R17 R18 K22 ["ReactFiberSuspenseContext.new"]
       85 CALL                             R16 1 1
       86 GETIMPORT                        R17 K10 [require]
       88 GETIMPORT                        R18 K7 [script]
       90 GETTABLEKS                       R18 R18 K8 ["Parent"]
       92 GETTABLEKS                       R18 R18 K23 ["ReactFiberOffscreenComponent"]
       94 CALL                             R17 1 1
       95 GETIMPORT                        R18 K10 [require]
       97 GETTABLEKS                       R19 R4 K11 ["Shared"]
       99 CALL                             R18 1 1
      100 GETTABLEKS                       R18 R18 K24 ["checkPropTypes"]
      102 GETIMPORT                        R19 K10 [require]
      104 GETIMPORT                        R20 K7 [script]
      106 GETTABLEKS                       R20 R20 K8 ["Parent"]
      108 GETTABLEKS                       R20 R20 K25 ["ReactWorkTags"]
      110 CALL                             R19 1 1
      111 GETTABLEKS                       R20 R19 K26 ["FunctionComponent"]
      113 GETTABLEKS                       R21 R19 K27 ["ClassComponent"]
      115 GETTABLEKS                       R22 R19 K28 ["HostRoot"]
      117 GETTABLEKS                       R23 R19 K29 ["HostComponent"]
      119 GETTABLEKS                       R24 R19 K30 ["HostText"]
      121 GETTABLEKS                       R25 R19 K31 ["HostPortal"]
      123 GETTABLEKS                       R26 R19 K32 ["ForwardRef"]
      125 GETTABLEKS                       R27 R19 K33 ["Fragment"]
      127 GETTABLEKS                       R28 R19 K34 ["Mode"]
      129 GETTABLEKS                       R29 R19 K35 ["ContextProvider"]
      131 GETTABLEKS                       R30 R19 K36 ["ContextConsumer"]
      133 GETTABLEKS                       R31 R19 K37 ["Profiler"]
      135 GETTABLEKS                       R32 R19 K38 ["SuspenseComponent"]
      137 GETTABLEKS                       R33 R19 K39 ["SuspenseListComponent"]
      139 GETTABLEKS                       R34 R19 K40 ["MemoComponent"]
      141 GETTABLEKS                       R35 R19 K41 ["SimpleMemoComponent"]
      143 GETTABLEKS                       R36 R19 K42 ["LazyComponent"]
      145 GETTABLEKS                       R37 R19 K43 ["IncompleteClassComponent"]
      147 GETTABLEKS                       R38 R19 K44 ["OffscreenComponent"]
      149 GETTABLEKS                       R39 R19 K45 ["LegacyHiddenComponent"]
      151 GETIMPORT                        R40 K10 [require]
      153 GETIMPORT                        R41 K7 [script]
      155 GETTABLEKS                       R41 R41 K8 ["Parent"]
      157 GETTABLEKS                       R41 R41 K46 ["ReactFiberFlags"]
      159 CALL                             R40 1 1
      160 GETTABLEKS                       R41 R40 K47 ["NoFlags"]
      162 GETTABLEKS                       R42 R40 K48 ["StaticMask"]
      164 GETTABLEKS                       R43 R40 K49 ["PerformedWork"]
      166 GETTABLEKS                       R44 R40 K50 ["Placement"]
      168 GETTABLEKS                       R45 R40 K51 ["Hydrating"]
      170 GETTABLEKS                       R46 R40 K52 ["ContentReset"]
      172 GETTABLEKS                       R47 R40 K53 ["DidCapture"]
      174 GETTABLEKS                       R48 R40 K54 ["Ref"]
      176 GETTABLEKS                       R49 R40 K55 ["Deletion"]
      178 GETTABLEKS                       R50 R40 K56 ["ForceUpdateForLegacySuspense"]
      180 GETIMPORT                        R51 K10 [require]
      182 GETTABLEKS                       R52 R4 K11 ["Shared"]
      184 CALL                             R51 1 1
      185 GETTABLEKS                       R51 R51 K57 ["ReactSharedInternals"]
      187 GETIMPORT                        R52 K10 [require]
      189 GETTABLEKS                       R53 R4 K11 ["Shared"]
      191 CALL                             R52 1 1
      192 GETTABLEKS                       R52 R52 K58 ["ReactFeatureFlags"]
      194 GETTABLEKS                       R53 R52 K59 ["debugRenderPhaseSideEffectsForStrictMode"]
      196 GETTABLEKS                       R54 R52 K60 ["disableLegacyContext"]
      198 GETTABLEKS                       R55 R52 K61 ["disableModulePatternComponents"]
      200 GETTABLEKS                       R56 R52 K62 ["enableProfilerTimer"]
      202 GETTABLEKS                       R57 R52 K63 ["enableSchedulerTracing"]
      204 GETTABLEKS                       R58 R52 K64 ["enableSuspenseServerRenderer"]
      206 GETTABLEKS                       R59 R52 K65 ["warnAboutDefaultPropsOnFunctionComponents"]
      208 GETIMPORT                        R60 K10 [require]
      210 GETTABLEKS                       R61 R4 K11 ["Shared"]
      212 CALL                             R60 1 1
      213 GETTABLEKS                       R60 R60 K66 ["invariant"]
      215 GETIMPORT                        R61 K10 [require]
      217 GETTABLEKS                       R62 R4 K11 ["Shared"]
      219 CALL                             R61 1 1
      220 GETTABLEKS                       R61 R61 K67 ["describeError"]
      222 GETIMPORT                        R62 K10 [require]
      224 GETTABLEKS                       R63 R4 K11 ["Shared"]
      226 CALL                             R62 1 1
      227 GETTABLEKS                       R62 R62 K68 ["shallowEqual"]
      229 GETIMPORT                        R63 K10 [require]
      231 GETTABLEKS                       R64 R4 K11 ["Shared"]
      233 CALL                             R63 1 1
      234 GETTABLEKS                       R63 R63 K69 ["getComponentName"]
      236 GETIMPORT                        R64 K10 [require]
      238 GETTABLEKS                       R65 R4 K11 ["Shared"]
      240 CALL                             R64 1 1
      241 GETTABLEKS                       R64 R64 K70 ["ReactSymbols"]
      243 GETTABLEKS                       R65 R64 K71 ["REACT_LAZY_TYPE"]
      245 GETTABLEKS                       R66 R64 K72 ["getIteratorFn"]
      247 GETIMPORT                        R67 K10 [require]
      249 GETIMPORT                        R69 K7 [script]
      251 GETTABLEKS                       R69 R69 K8 ["Parent"]
      253 GETTABLEKS                       R68 R69 K73 ["ReactStrictModeWarnings.new"]
      255 CALL                             R67 1 1
      256 GETIMPORT                        R68 K10 [require]
      258 GETIMPORT                        R69 K7 [script]
      260 GETTABLEKS                       R69 R69 K8 ["Parent"]
      262 GETTABLEKS                       R69 R69 K74 ["ReactCurrentFiber"]
      264 CALL                             R68 1 1
      265 GETTABLEKS                       R69 R68 K75 ["getCurrentFiberOwnerNameInDevOrNull"]
      267 GETTABLEKS                       R70 R68 K76 ["setIsRendering"]
      269 GETIMPORT                        R71 K10 [require]
      271 GETIMPORT                        R73 K7 [script]
      273 GETTABLEKS                       R73 R73 K8 ["Parent"]
      275 GETTABLEKS                       R72 R73 K77 ["ReactFiberHotReloading.new"]
      277 CALL                             R71 1 1
      278 GETTABLEKS                       R72 R71 K78 ["resolveFunctionForHotReloading"]
      280 GETTABLEKS                       R73 R71 K79 ["resolveForwardRefForHotReloading"]
      282 GETTABLEKS                       R74 R71 K80 ["resolveClassForHotReloading"]
      284 GETIMPORT                        R75 K10 [require]
      286 GETIMPORT                        R77 K7 [script]
      288 GETTABLEKS                       R77 R77 K8 ["Parent"]
      290 GETTABLEKS                       R76 R77 K81 ["ReactChildFiber.new"]
      292 CALL                             R75 1 1
      293 GETTABLEKS                       R76 R75 K82 ["mountChildFibers"]
      295 GETTABLEKS                       R77 R75 K83 ["reconcileChildFibers"]
      297 GETTABLEKS                       R78 R75 K84 ["cloneChildFibers"]
      299 GETIMPORT                        R79 K10 [require]
      301 GETIMPORT                        R81 K7 [script]
      303 GETTABLEKS                       R81 R81 K8 ["Parent"]
      305 GETTABLEKS                       R80 R81 K85 ["ReactUpdateQueue.new"]
      307 CALL                             R79 1 1
      308 GETTABLEKS                       R80 R79 K86 ["processUpdateQueue"]
      310 GETTABLEKS                       R81 R79 K87 ["cloneUpdateQueue"]
      312 GETTABLEKS                       R82 R79 K88 ["initializeUpdateQueue"]
      314 GETIMPORT                        R83 K10 [require]
      316 GETIMPORT                        R84 K7 [script]
      318 GETTABLEKS                       R84 R84 K8 ["Parent"]
      320 GETTABLEKS                       R84 R84 K89 ["ReactTypeOfMode"]
      322 CALL                             R83 1 1
      323 GETTABLEKS                       R84 R83 K90 ["ConcurrentMode"]
      325 GETTABLEKS                       R85 R83 K91 ["NoMode"]
      327 GETTABLEKS                       R86 R83 K92 ["ProfileMode"]
      329 GETTABLEKS                       R87 R83 K93 ["StrictMode"]
      331 GETTABLEKS                       R88 R83 K94 ["BlockingMode"]
      333 GETIMPORT                        R89 K10 [require]
      335 GETIMPORT                        R90 K7 [script]
      337 GETTABLEKS                       R90 R90 K8 ["Parent"]
      339 GETTABLEKS                       R90 R90 K95 ["ReactFiberHostConfig"]
      341 CALL                             R89 1 1
      342 GETTABLEKS                       R90 R89 K96 ["shouldSetTextContent"]
      344 GETTABLEKS                       R91 R89 K97 ["isSuspenseInstancePending"]
      346 GETTABLEKS                       R92 R89 K98 ["isSuspenseInstanceFallback"]
      348 GETTABLEKS                       R93 R89 K99 ["registerSuspenseInstanceRetry"]
      350 GETTABLEKS                       R94 R89 K100 ["supportsHydration"]
      352 GETIMPORT                        R95 K10 [require]
      354 GETIMPORT                        R97 K7 [script]
      356 GETTABLEKS                       R97 R97 K8 ["Parent"]
      358 GETTABLEKS                       R96 R97 K101 ["ReactFiberHostContext.new"]
      360 CALL                             R95 1 1
      361 GETTABLEKS                       R96 R95 K102 ["pushHostContext"]
      363 GETTABLEKS                       R97 R95 K103 ["pushHostContainer"]
      365 GETTABLEKS                       R98 R16 K104 ["suspenseStackCursor"]
      367 GETTABLEKS                       R99 R16 K105 ["hasSuspenseContext"]
      369 GETTABLEKS                       R100 R16 K106 ["ForceSuspenseFallback"]
      371 GETTABLEKS                       R101 R16 K107 ["addSubtreeSuspenseContext"]
      373 GETTABLEKS                       R102 R16 K108 ["InvisibleParentSuspenseContext"]
      375 GETTABLEKS                       R103 R16 K109 ["pushSuspenseContext"]
      377 GETTABLEKS                       R104 R16 K110 ["setDefaultShallowSuspenseContext"]
      379 GETIMPORT                        R105 K10 [require]
      381 GETIMPORT                        R107 K7 [script]
      383 GETTABLEKS                       R107 R107 K8 ["Parent"]
      385 GETTABLEKS                       R106 R107 K111 ["ReactFiberNewContext.new"]
      387 CALL                             R105 1 1
      388 GETTABLEKS                       R106 R105 K112 ["propagateContextChange"]
      390 GETTABLEKS                       R107 R105 K113 ["readContext"]
      392 GETTABLEKS                       R108 R105 K114 ["calculateChangedBits"]
      394 GETTABLEKS                       R109 R105 K115 ["prepareToReadContext"]
      396 GETTABLEKS                       R110 R105 K116 ["pushProvider"]
      398 DUPTABLE                         R111 K121 [{["renderWithHooksRef"] = , ["bailoutHooksRef"] = , ["shouldSuspendRef"] = }]
      399 DUPCLOSURE                       R112 K122 [PROTO_1]
      400 CAPTURE                          VAL R111
      401 DUPCLOSURE                       R113 K123 [PROTO_2]
      402 CAPTURE                          VAL R111
      403 DUPCLOSURE                       R114 K124 [PROTO_3]
      404 CAPTURE                          VAL R111
      405 DUPCLOSURE                       R115 K125 [PROTO_4]
      406 CAPTURE                          VAL R111
      407 GETIMPORT                        R116 K10 [require]
      409 GETIMPORT                        R118 K7 [script]
      411 GETTABLEKS                       R118 R118 K8 ["Parent"]
      413 GETTABLEKS                       R117 R118 K126 ["ReactProfilerTimer.new"]
      415 CALL                             R116 1 1
      416 GETTABLEKS                       R116 R116 K127 ["stopProfilerTimerIfRunning"]
      418 GETIMPORT                        R117 K10 [require]
      420 GETIMPORT                        R119 K7 [script]
      422 GETTABLEKS                       R119 R119 K8 ["Parent"]
      424 GETTABLEKS                       R118 R119 K128 ["ReactFiberContext.new"]
      426 CALL                             R117 1 1
      427 GETTABLEKS                       R118 R117 K129 ["getMaskedContext"]
      429 GETTABLEKS                       R119 R117 K130 ["getUnmaskedContext"]
      431 GETTABLEKS                       R120 R117 K131 ["hasContextChanged"]
      433 GETTABLEKS                       R121 R117 K132 ["pushContextProvider"]
      435 GETTABLEKS                       R122 R117 K133 ["isContextProvider"]
      437 GETTABLEKS                       R123 R117 K134 ["pushTopLevelContextObject"]
      439 GETTABLEKS                       R124 R117 K135 ["invalidateContextProvider"]
      441 GETIMPORT                        R125 K10 [require]
      443 GETIMPORT                        R127 K7 [script]
      445 GETTABLEKS                       R127 R127 K8 ["Parent"]
      447 GETTABLEKS                       R126 R127 K136 ["ReactFiberHydrationContext.new"]
      449 CALL                             R125 1 1
      450 GETTABLEKS                       R126 R125 K137 ["resetHydrationState"]
      452 GETTABLEKS                       R127 R125 K138 ["enterHydrationState"]
      454 GETTABLEKS                       R128 R125 K139 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
      456 GETTABLEKS                       R129 R125 K140 ["tryToClaimNextHydratableInstance"]
      458 GETTABLEKS                       R130 R125 K141 ["warnIfHydrating"]
      460 GETIMPORT                        R131 K10 [require]
      462 GETIMPORT                        R133 K7 [script]
      464 GETTABLEKS                       R133 R133 K8 ["Parent"]
      466 GETTABLEKS                       R132 R133 K142 ["ReactFiberClassComponent.new"]
      468 CALL                             R131 1 1
      469 GETTABLEKS                       R132 R131 K143 ["adoptClassInstance"]
      471 GETTABLEKS                       R133 R131 K144 ["applyDerivedStateFromProps"]
      473 GETTABLEKS                       R134 R131 K145 ["constructClassInstance"]
      475 GETTABLEKS                       R135 R131 K146 ["mountClassInstance"]
      477 GETTABLEKS                       R136 R131 K147 ["resumeMountClassInstance"]
      479 GETTABLEKS                       R137 R131 K148 ["updateClassInstance"]
      481 GETIMPORT                        R138 K10 [require]
      483 GETIMPORT                        R140 K7 [script]
      485 GETTABLEKS                       R140 R140 K8 ["Parent"]
      487 GETTABLEKS                       R139 R140 K149 ["ReactFiberLazyComponent.new"]
      489 CALL                             R138 1 1
      490 GETTABLEKS                       R138 R138 K150 ["resolveDefaultProps"]
      492 GETIMPORT                        R139 K10 [require]
      494 GETIMPORT                        R141 K7 [script]
      496 GETTABLEKS                       R141 R141 K8 ["Parent"]
      498 GETTABLEKS                       R140 R141 K151 ["ReactFiber.new"]
      500 CALL                             R139 1 1
      501 GETTABLEKS                       R140 R139 K152 ["resolveLazyComponentTag"]
      503 GETTABLEKS                       R141 R139 K153 ["createFiberFromFragment"]
      505 GETTABLEKS                       R142 R139 K154 ["createFiberFromOffscreen"]
      507 GETTABLEKS                       R143 R139 K155 ["createFiberFromTypeAndProps"]
      509 GETTABLEKS                       R144 R139 K156 ["isSimpleFunctionComponent"]
      511 GETTABLEKS                       R145 R139 K157 ["createWorkInProgress"]
      513 GETIMPORT                        R146 K10 [require]
      515 GETIMPORT                        R148 K7 [script]
      517 GETTABLEKS                       R148 R148 K8 ["Parent"]
      519 GETTABLEKS                       R147 R148 K158 ["ReactFiberWorkLoop.new"]
      521 CALL                             R146 1 1
      522 GETTABLEKS                       R147 R146 K159 ["pushRenderLanes"]
      524 GETTABLEKS                       R148 R146 K160 ["markSpawnedWork"]
      526 GETTABLEKS                       R149 R146 K161 ["retryDehydratedSuspenseBoundary"]
      528 GETTABLEKS                       R150 R146 K162 ["scheduleUpdateOnFiber"]
      530 GETTABLEKS                       R151 R146 K163 ["renderDidSuspendDelayIfPossible"]
      532 GETTABLEKS                       R152 R146 K164 ["getWorkInProgressRoot"]
      534 GETTABLEKS                       R153 R146 K165 ["getExecutionContext"]
      536 GETTABLEKS                       R154 R146 K166 ["RetryAfterError"]
      538 GETTABLEKS                       R155 R146 K167 ["NoContext"]
      540 LOADNIL                          R156
      541 GETIMPORT                        R157 K10 [require]
      543 GETIMPORT                        R159 K7 [script]
      545 GETTABLEKS                       R159 R159 K8 ["Parent"]
      547 GETTABLEKS                       R158 R159 K168 ["ReactMutableSource.new"]
      549 CALL                             R157 1 1
      550 GETTABLEKS                       R157 R157 K169 ["setWorkInProgressVersion"]
      552 GETIMPORT                        R158 K10 [require]
      554 GETIMPORT                        R159 K7 [script]
      556 GETTABLEKS                       R159 R159 K8 ["Parent"]
      558 GETTABLEKS                       R159 R159 K170 ["ReactFiberWorkInProgress"]
      560 CALL                             R158 1 1
      561 GETTABLEKS                       R158 R158 K171 ["markSkippedUpdateLanes"]
      563 GETIMPORT                        R159 K10 [require]
      565 GETTABLEKS                       R160 R4 K11 ["Shared"]
      567 CALL                             R159 1 1
      568 GETTABLEKS                       R159 R159 K172 ["ConsolePatchingDev"]
      570 GETTABLEKS                       R160 R159 K173 ["disableLogs"]
      572 GETTABLEKS                       R161 R159 K174 ["reenableLogs"]
      574 GETTABLEKS                       R162 R51 K175 ["ReactCurrentOwner"]
      576 NEWTABLE                         R163 4 0
      578 LOADNIL                          R164
      579 LOADNIL                          R165
      580 LOADB                            R166 0
      581 DUPTABLE                         R167 K182 [{"didWarnAboutBadClass", "didWarnAboutModulePatternComponent", "didWarnAboutContextTypeOnFunctionComponent", "didWarnAboutGetDerivedStateOnFunctionComponent", "didWarnAboutFunctionRefs", "didWarnAboutDefaultPropsOnFunctionComponent"}]
      582 NEWTABLE                         R168 0 0
      584 SETTABLEKS                       R168 R167 K176 ["didWarnAboutBadClass"]
      586 NEWTABLE                         R168 0 0
      588 SETTABLEKS                       R168 R167 K177 ["didWarnAboutModulePatternComponent"]
      590 NEWTABLE                         R168 0 0
      592 SETTABLEKS                       R168 R167 K178 ["didWarnAboutContextTypeOnFunctionComponent"]
      594 NEWTABLE                         R168 0 0
      596 SETTABLEKS                       R168 R167 K179 ["didWarnAboutGetDerivedStateOnFunctionComponent"]
      598 NEWTABLE                         R168 0 0
      600 SETTABLEKS                       R168 R167 K180 ["didWarnAboutFunctionRefs"]
      602 NEWTABLE                         R168 0 0
      604 SETTABLEKS                       R168 R167 K181 ["didWarnAboutDefaultPropsOnFunctionComponent"]
      606 LOADNIL                          R168
      607 JUMPIFNOT                        R1 ; [+27]
      608 NEWTABLE                         R169 0 0
      610 SETTABLEKS                       R169 R167 K176 ["didWarnAboutBadClass"]
      612 NEWTABLE                         R169 0 0
      614 SETTABLEKS                       R169 R167 K177 ["didWarnAboutModulePatternComponent"]
      616 NEWTABLE                         R169 0 0
      618 SETTABLEKS                       R169 R167 K178 ["didWarnAboutContextTypeOnFunctionComponent"]
      620 NEWTABLE                         R169 0 0
      622 SETTABLEKS                       R169 R167 K179 ["didWarnAboutGetDerivedStateOnFunctionComponent"]
      624 NEWTABLE                         R169 0 0
      626 SETTABLEKS                       R169 R167 K180 ["didWarnAboutFunctionRefs"]
      628 LOADB                            R169 0
      629 SETTABLEKS                       R169 R163 K183 ["didWarnAboutReassigningProps"]
      631 NEWTABLE                         R169 0 0
      633 SETTABLEKS                       R169 R167 K181 ["didWarnAboutDefaultPropsOnFunctionComponent"]
      635 DUPCLOSURE                       R169 K184 [PROTO_5]
      636 CAPTURE                          VAL R76
      637 CAPTURE                          VAL R77
      638 DUPCLOSURE                       R170 K185 [PROTO_6]
      639 CAPTURE                          VAL R77
      640 NEWCLOSURE                       R171 P7
      641 CAPTURE                          VAL R1
      642 CAPTURE                          VAL R2
      643 CAPTURE                          VAL R18
      644 CAPTURE                          VAL R63
      645 CAPTURE                          VAL R109
      646 CAPTURE                          VAL R163
      647 CAPTURE                          VAL R162
      648 CAPTURE                          VAL R70
      649 CAPTURE                          VAL R114
      650 CAPTURE                          VAL R53
      651 CAPTURE                          VAL R87
      652 CAPTURE                          VAL R160
      653 CAPTURE                          VAL R61
      654 CAPTURE                          VAL R161
      655 CAPTURE                          REF R166
      656 CAPTURE                          VAL R115
      657 CAPTURE                          REF R164
      658 CAPTURE                          VAL R43
      659 CAPTURE                          VAL R76
      660 CAPTURE                          VAL R77
      661 NEWCLOSURE                       R172 P8
      662 CAPTURE                          VAL R144
      663 CAPTURE                          VAL R1
      664 CAPTURE                          VAL R72
      665 CAPTURE                          VAL R35
      666 CAPTURE                          REF R168
      667 CAPTURE                          VAL R2
      668 CAPTURE                          VAL R18
      669 CAPTURE                          VAL R63
      670 CAPTURE                          VAL R143
      671 CAPTURE                          VAL R14
      672 CAPTURE                          VAL R62
      673 CAPTURE                          REF R164
      674 CAPTURE                          VAL R43
      675 CAPTURE                          VAL R145
      676 NEWCLOSURE                       R168 P9
      677 CAPTURE                          VAL R1
      678 CAPTURE                          VAL R2
      679 CAPTURE                          VAL R65
      680 CAPTURE                          VAL R61
      681 CAPTURE                          VAL R18
      682 CAPTURE                          VAL R63
      683 CAPTURE                          VAL R62
      684 CAPTURE                          REF R166
      685 CAPTURE                          VAL R14
      686 CAPTURE                          REF R164
      687 CAPTURE                          VAL R50
      688 CAPTURE                          VAL R41
      689 CAPTURE                          REF R165
      690 DUPCLOSURE                       R173 K186 [PROTO_10]
      691 CAPTURE                          VAL R84
      692 CAPTURE                          VAL R85
      693 CAPTURE                          VAL R14
      694 CAPTURE                          VAL R147
      695 CAPTURE                          VAL R57
      696 CAPTURE                          VAL R148
      697 CAPTURE                          VAL R76
      698 CAPTURE                          VAL R77
      699 DUPCLOSURE                       R174 K187 [PROTO_11]
      700 CAPTURE                          VAL R76
      701 CAPTURE                          VAL R77
      702 SETGLOBAL                        R174 K188 ["updateFragment"]
      704 DUPCLOSURE                       R174 K189 [PROTO_12]
      705 CAPTURE                          VAL R76
      706 CAPTURE                          VAL R77
      707 SETGLOBAL                        R174 K190 ["updateMode"]
      709 DUPCLOSURE                       R174 K191 [PROTO_13]
      710 CAPTURE                          VAL R56
      711 CAPTURE                          VAL R76
      712 CAPTURE                          VAL R77
      713 SETGLOBAL                        R174 K192 ["updateProfiler"]
      715 DUPCLOSURE                       R174 K193 [PROTO_14]
      716 CAPTURE                          VAL R48
      717 NEWCLOSURE                       R165 P15
      718 CAPTURE                          VAL R1
      719 CAPTURE                          VAL R2
      720 CAPTURE                          VAL R18
      721 CAPTURE                          VAL R63
      722 CAPTURE                          VAL R54
      723 CAPTURE                          VAL R119
      724 CAPTURE                          VAL R118
      725 CAPTURE                          VAL R109
      726 CAPTURE                          VAL R163
      727 CAPTURE                          VAL R162
      728 CAPTURE                          VAL R70
      729 CAPTURE                          VAL R114
      730 CAPTURE                          VAL R53
      731 CAPTURE                          VAL R87
      732 CAPTURE                          VAL R160
      733 CAPTURE                          VAL R61
      734 CAPTURE                          VAL R161
      735 CAPTURE                          REF R166
      736 CAPTURE                          VAL R115
      737 CAPTURE                          REF R164
      738 CAPTURE                          VAL R43
      739 CAPTURE                          VAL R76
      740 CAPTURE                          VAL R77
      741 DUPCLOSURE                       R175 K194 [PROTO_16]
      742 CAPTURE                          VAL R1
      743 CAPTURE                          VAL R2
      744 CAPTURE                          VAL R18
      745 CAPTURE                          VAL R63
      746 CAPTURE                          VAL R122
      747 CAPTURE                          VAL R121
      748 CAPTURE                          VAL R109
      749 CAPTURE                          VAL R163
      750 CAPTURE                          VAL R44
      751 CAPTURE                          VAL R134
      752 CAPTURE                          VAL R135
      753 CAPTURE                          VAL R136
      754 CAPTURE                          VAL R137
      755 CAPTURE                          VAL R6
      756 NEWCLOSURE                       R176 P17
      757 CAPTURE                          VAL R48
      758 CAPTURE                          VAL R47
      759 CAPTURE                          VAL R41
      760 CAPTURE                          VAL R124
      761 CAPTURE                          REF R164
      762 CAPTURE                          VAL R162
      763 CAPTURE                          VAL R56
      764 CAPTURE                          VAL R116
      765 CAPTURE                          VAL R1
      766 CAPTURE                          VAL R70
      767 CAPTURE                          VAL R53
      768 CAPTURE                          VAL R87
      769 CAPTURE                          VAL R160
      770 CAPTURE                          VAL R61
      771 CAPTURE                          VAL R161
      772 CAPTURE                          VAL R43
      773 CAPTURE                          VAL R77
      774 CAPTURE                          VAL R76
      775 SETGLOBAL                        R176 K195 ["finishClassComponent"]
      777 DUPCLOSURE                       R176 K196 [PROTO_18]
      778 CAPTURE                          VAL R123
      779 CAPTURE                          VAL R97
      780 NEWCLOSURE                       R177 P19
      781 CAPTURE                          VAL R123
      782 CAPTURE                          VAL R97
      783 CAPTURE                          VAL R60
      784 CAPTURE                          VAL R81
      785 CAPTURE                          VAL R80
      786 CAPTURE                          VAL R126
      787 CAPTURE                          REF R164
      788 CAPTURE                          VAL R127
      789 CAPTURE                          VAL R94
      790 CAPTURE                          VAL R157
      791 CAPTURE                          VAL R76
      792 CAPTURE                          VAL R44
      793 CAPTURE                          VAL R45
      794 CAPTURE                          VAL R77
      795 DUPCLOSURE                       R178 K197 [PROTO_20]
      796 CAPTURE                          VAL R96
      797 CAPTURE                          VAL R129
      798 CAPTURE                          VAL R90
      799 CAPTURE                          VAL R46
      800 CAPTURE                          VAL R43
      801 CAPTURE                          VAL R48
      802 CAPTURE                          VAL R76
      803 CAPTURE                          VAL R77
      804 DUPCLOSURE                       R179 K198 [PROTO_21]
      805 CAPTURE                          VAL R129
      806 NEWCLOSURE                       R180 P22
      807 CAPTURE                          VAL R44
      808 CAPTURE                          VAL R140
      809 CAPTURE                          VAL R138
      810 CAPTURE                          VAL R20
      811 CAPTURE                          VAL R1
      812 CAPTURE                          VAL R72
      813 CAPTURE                          REF R165
      814 CAPTURE                          VAL R21
      815 CAPTURE                          VAL R74
      816 CAPTURE                          VAL R175
      817 CAPTURE                          VAL R26
      818 CAPTURE                          VAL R73
      819 CAPTURE                          VAL R171
      820 CAPTURE                          VAL R34
      821 CAPTURE                          VAL R2
      822 CAPTURE                          VAL R18
      823 CAPTURE                          VAL R63
      824 CAPTURE                          VAL R172
      825 CAPTURE                          VAL R65
      826 CAPTURE                          VAL R10
      827 CAPTURE                          VAL R60
      828 DUPCLOSURE                       R181 K199 [PROTO_23]
      829 CAPTURE                          VAL R44
      830 CAPTURE                          VAL R21
      831 CAPTURE                          VAL R122
      832 CAPTURE                          VAL R121
      833 CAPTURE                          VAL R109
      834 CAPTURE                          VAL R163
      835 CAPTURE                          VAL R134
      836 CAPTURE                          VAL R135
      837 SETGLOBAL                        R181 K200 ["mountIncompleteClassComponent"]
      839 DUPCLOSURE                       R181 K201 [PROTO_24]
      840 CAPTURE                          VAL R44
      841 CAPTURE                          VAL R54
      842 CAPTURE                          VAL R119
      843 CAPTURE                          VAL R118
      844 CAPTURE                          VAL R109
      845 CAPTURE                          VAL R163
      846 CAPTURE                          VAL R1
      847 CAPTURE                          VAL R63
      848 CAPTURE                          VAL R167
      849 CAPTURE                          VAL R6
      850 CAPTURE                          VAL R87
      851 CAPTURE                          VAL R67
      852 CAPTURE                          VAL R70
      853 CAPTURE                          VAL R162
      854 CAPTURE                          VAL R114
      855 CAPTURE                          VAL R43
      856 CAPTURE                          VAL R55
      857 CAPTURE                          VAL R21
      858 CAPTURE                          VAL R122
      859 CAPTURE                          VAL R121
      860 CAPTURE                          VAL R82
      861 CAPTURE                          VAL R133
      862 CAPTURE                          VAL R132
      863 CAPTURE                          VAL R135
      864 CAPTURE                          VAL R20
      865 CAPTURE                          VAL R53
      866 CAPTURE                          VAL R160
      867 CAPTURE                          VAL R61
      868 CAPTURE                          VAL R161
      869 CAPTURE                          VAL R76
      870 DUPCLOSURE                       R182 K202 [PROTO_25]
      871 CAPTURE                          VAL R1
      872 CAPTURE                          VAL R69
      873 CAPTURE                          VAL R167
      874 CAPTURE                          VAL R6
      875 CAPTURE                          VAL R59
      876 CAPTURE                          VAL R63
      877 SETGLOBAL                        R182 K203 ["validateFunctionComponentInDev"]
      879 DUPTABLE                         R182 K206 [{["dehydrated"] = , ["retryLane"]}]
      880 GETTABLEKS                       R183 R14 K207 ["NoLane"]
      882 SETTABLEKS                       R183 R182 K205 ["retryLane"]
      884 DUPCLOSURE                       R183 K208 [PROTO_26]
      885 DUPCLOSURE                       R184 K209 [PROTO_27]
      886 CAPTURE                          VAL R14
      887 DUPCLOSURE                       R185 K210 [PROTO_28]
      888 CAPTURE                          VAL R99
      889 CAPTURE                          VAL R100
      890 DUPCLOSURE                       R186 K211 [PROTO_29]
      891 CAPTURE                          VAL R14
      892 LOADNIL                          R187
      893 LOADNIL                          R188
      894 LOADNIL                          R189
      895 LOADNIL                          R190
      896 LOADNIL                          R191
      897 NEWCLOSURE                       R192 P30
      898 CAPTURE                          VAL R1
      899 CAPTURE                          VAL R111
      900 CAPTURE                          VAL R47
      901 CAPTURE                          VAL R98
      902 CAPTURE                          VAL R41
      903 CAPTURE                          VAL R99
      904 CAPTURE                          VAL R100
      905 CAPTURE                          VAL R101
      906 CAPTURE                          VAL R102
      907 CAPTURE                          VAL R104
      908 CAPTURE                          VAL R103
      909 CAPTURE                          VAL R129
      910 CAPTURE                          VAL R58
      911 CAPTURE                          REF R188
      912 CAPTURE                          VAL R182
      913 CAPTURE                          VAL R14
      914 CAPTURE                          VAL R57
      915 CAPTURE                          VAL R148
      916 CAPTURE                          REF R189
      917 CAPTURE                          REF R191
      918 CAPTURE                          REF R190
      919 CAPTURE                          REF R187
      920 DUPCLOSURE                       R189 K212 [PROTO_31]
      921 CAPTURE                          VAL R142
      922 DUPCLOSURE                       R193 K213 [PROTO_32]
      923 CAPTURE                          VAL R88
      924 CAPTURE                          VAL R85
      925 CAPTURE                          VAL R14
      926 CAPTURE                          VAL R56
      927 CAPTURE                          VAL R86
      928 CAPTURE                          VAL R141
      929 CAPTURE                          VAL R142
      930 SETGLOBAL                        R193 K214 ["mountSuspenseFallbackChildren"]
      932 DUPCLOSURE                       R193 K215 [PROTO_33]
      933 CAPTURE                          VAL R145
      934 DUPCLOSURE                       R187 K216 [PROTO_34]
      935 CAPTURE                          VAL R145
      936 CAPTURE                          VAL R88
      937 CAPTURE                          VAL R85
      938 CAPTURE                          VAL R49
      939 DUPCLOSURE                       R190 K217 [PROTO_35]
      940 CAPTURE                          VAL R88
      941 CAPTURE                          VAL R85
      942 CAPTURE                          VAL R14
      943 CAPTURE                          VAL R56
      944 CAPTURE                          VAL R86
      945 CAPTURE                          VAL R145
      946 CAPTURE                          VAL R42
      947 CAPTURE                          VAL R141
      948 CAPTURE                          VAL R44
      949 NEWCLOSURE                       R194 P36
      950 CAPTURE                          VAL R77
      951 CAPTURE                          REF R189
      952 CAPTURE                          VAL R44
      953 DUPCLOSURE                       R195 K218 [PROTO_37]
      954 CAPTURE                          VAL R142
      955 CAPTURE                          VAL R14
      956 CAPTURE                          VAL R141
      957 CAPTURE                          VAL R44
      958 CAPTURE                          VAL R88
      959 CAPTURE                          VAL R85
      960 CAPTURE                          VAL R77
      961 SETGLOBAL                        R195 K219 ["mountSuspenseFallbackAfterRetryWithoutHydrating"]
      963 DUPCLOSURE                       R188 K220 [PROTO_38]
      964 CAPTURE                          VAL R88
      965 CAPTURE                          VAL R85
      966 CAPTURE                          VAL R1
      967 CAPTURE                          VAL R6
      968 CAPTURE                          VAL R14
      969 CAPTURE                          VAL R92
      970 CAPTURE                          VAL R57
      971 CAPTURE                          VAL R148
      972 NEWCLOSURE                       R191 P39
      973 CAPTURE                          VAL R130
      974 CAPTURE                          VAL R153
      975 CAPTURE                          VAL R154
      976 CAPTURE                          VAL R155
      977 CAPTURE                          VAL R77
      978 CAPTURE                          REF R189
      979 CAPTURE                          VAL R44
      980 CAPTURE                          VAL R88
      981 CAPTURE                          VAL R85
      982 CAPTURE                          VAL R92
      983 CAPTURE                          VAL R14
      984 CAPTURE                          REF R166
      985 CAPTURE                          VAL R152
      986 CAPTURE                          VAL R150
      987 CAPTURE                          VAL R151
      988 CAPTURE                          VAL R91
      989 CAPTURE                          VAL R47
      990 CAPTURE                          VAL R149
      991 CAPTURE                          VAL R57
      992 CAPTURE                          REF R156
      993 CAPTURE                          VAL R4
      994 CAPTURE                          VAL R93
      995 CAPTURE                          VAL R128
      996 CAPTURE                          VAL R45
      997 DUPCLOSURE                       R195 K221 [PROTO_41]
      998 CAPTURE                          VAL R97
      999 CAPTURE                          VAL R77
     1000 CAPTURE                          VAL R76
     1001 SETGLOBAL                        R195 K222 ["updatePortalComponent"]
     1003 LOADB                            R195 0
     1004 NEWCLOSURE                       R196 P41
     1005 CAPTURE                          VAL R1
     1006 CAPTURE                          VAL R2
     1007 CAPTURE                          VAL R8
     1008 CAPTURE                          VAL R9
     1009 CAPTURE                          REF R195
     1010 CAPTURE                          VAL R6
     1011 CAPTURE                          VAL R18
     1012 CAPTURE                          VAL R110
     1013 CAPTURE                          VAL R108
     1014 CAPTURE                          VAL R120
     1015 CAPTURE                          REF R164
     1016 CAPTURE                          VAL R106
     1017 CAPTURE                          VAL R76
     1018 CAPTURE                          VAL R77
     1019 DUPTABLE                         R197 K226 [{["usingContextAsConsumer"] = False, ["usingLegacyConsumer"] = False}]
     1020 DUPCLOSURE                       R198 K227 [PROTO_43]
     1021 CAPTURE                          VAL R1
     1022 CAPTURE                          VAL R197
     1023 CAPTURE                          VAL R6
     1024 CAPTURE                          VAL R3
     1025 CAPTURE                          VAL R109
     1026 CAPTURE                          VAL R163
     1027 CAPTURE                          VAL R107
     1028 CAPTURE                          VAL R162
     1029 CAPTURE                          VAL R70
     1030 CAPTURE                          VAL R43
     1031 CAPTURE                          VAL R76
     1032 CAPTURE                          VAL R77
     1033 SETGLOBAL                        R198 K228 ["updateContextConsumer"]
     1035 NEWCLOSURE                       R198 P43
     1036 CAPTURE                          REF R166
     1037 SETTABLEKS                       R198 R163 K229 ["markWorkInProgressReceivedUpdate"]
     1039 DUPCLOSURE                       R164 K230 [PROTO_45]
     1040 CAPTURE                          VAL R56
     1041 CAPTURE                          VAL R116
     1042 CAPTURE                          VAL R158
     1043 CAPTURE                          VAL R14
     1044 CAPTURE                          VAL R78
     1045 DUPCLOSURE                       R198 K231 [PROTO_46]
     1046 CAPTURE                          VAL R1
     1047 CAPTURE                          VAL R49
     1048 CAPTURE                          VAL R44
     1049 SETGLOBAL                        R198 K232 ["remountFiber"]
     1051 NEWCLOSURE                       R198 P46
     1052 CAPTURE                          VAL R1
     1053 CAPTURE                          VAL R143
     1054 CAPTURE                          VAL R120
     1055 CAPTURE                          REF R166
     1056 CAPTURE                          VAL R14
     1057 CAPTURE                          VAL R22
     1058 CAPTURE                          VAL R123
     1059 CAPTURE                          VAL R97
     1060 CAPTURE                          VAL R126
     1061 CAPTURE                          VAL R23
     1062 CAPTURE                          VAL R96
     1063 CAPTURE                          VAL R21
     1064 CAPTURE                          VAL R122
     1065 CAPTURE                          VAL R121
     1066 CAPTURE                          VAL R25
     1067 CAPTURE                          VAL R29
     1068 CAPTURE                          VAL R110
     1069 CAPTURE                          VAL R31
     1070 CAPTURE                          VAL R56
     1071 CAPTURE                          VAL R32
     1072 CAPTURE                          VAL R58
     1073 CAPTURE                          VAL R103
     1074 CAPTURE                          VAL R104
     1075 CAPTURE                          VAL R98
     1076 CAPTURE                          VAL R47
     1077 CAPTURE                          VAL R192
     1078 CAPTURE                          REF R164
     1079 CAPTURE                          VAL R33
     1080 CAPTURE                          VAL R38
     1081 CAPTURE                          VAL R39
     1082 CAPTURE                          VAL R173
     1083 CAPTURE                          VAL R50
     1084 CAPTURE                          VAL R41
     1085 CAPTURE                          VAL R19
     1086 CAPTURE                          VAL R181
     1087 CAPTURE                          VAL R36
     1088 CAPTURE                          VAL R180
     1089 CAPTURE                          VAL R20
     1090 CAPTURE                          VAL R138
     1091 CAPTURE                          REF R165
     1092 CAPTURE                          VAL R175
     1093 CAPTURE                          VAL R177
     1094 CAPTURE                          VAL R178
     1095 CAPTURE                          VAL R24
     1096 CAPTURE                          VAL R129
     1097 CAPTURE                          VAL R26
     1098 CAPTURE                          VAL R171
     1099 CAPTURE                          VAL R27
     1100 CAPTURE                          VAL R28
     1101 CAPTURE                          VAL R196
     1102 CAPTURE                          VAL R30
     1103 CAPTURE                          VAL R34
     1104 CAPTURE                          VAL R2
     1105 CAPTURE                          VAL R18
     1106 CAPTURE                          VAL R63
     1107 CAPTURE                          VAL R172
     1108 CAPTURE                          VAL R35
     1109 CAPTURE                          REF R168
     1110 CAPTURE                          VAL R37
     1111 CAPTURE                          VAL R173
     1112 CAPTURE                          VAL R60
     1113 SETTABLEKS                       R198 R163 K233 ["beginWork"]
     1115 CLOSEUPVALS                      R156
     1116 RETURN                           R163 1
