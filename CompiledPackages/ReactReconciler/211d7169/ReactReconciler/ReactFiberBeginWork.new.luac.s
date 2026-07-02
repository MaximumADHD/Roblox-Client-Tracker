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
        0 GETIMPORT                        R5 K1 [_G]
        2 GETTABLEKS                       R5 R5 K2 ["__DEV__"]
        4 JUMPIF                           R5 ; [+5]
        5 GETIMPORT                        R5 K1 [_G]
        7 GETTABLEKS                       R5 R5 K3 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
        9 JUMPIFNOT                        R5 ; [+21]
       10 GETTABLEKS                       R5 R1 K4 ["type"]
       12 GETTABLEKS                       R6 R1 K5 ["elementType"]
       14 JUMPIFEQ                         R5 R6 ; [+16]
       16 GETTABLEKS                       R5 R2 K6 ["propTypes"]
       18 GETTABLEKS                       R6 R2 K7 ["validateProps"]
       20 JUMPIF                           R5 ; [+1]
       21 JUMPIFNOT                        R6 ; [+9]
       22 GETUPVAL                         R7 0
       23 MOVE                             R8 R5
       24 MOVE                             R9 R6
       25 MOVE                             R10 R3
       26 LOADK                            R11 K8 ["prop"]
       27 GETUPVAL                         R12 1
       28 MOVE                             R13 R2
       29 CALL                             R12 1 -1
       30 CALL                             R7 -1 0
       31 GETTABLEKS                       R5 R2 K9 ["render"]
       33 GETTABLEKS                       R6 R1 K10 ["ref"]
       35 LOADNIL                          R7
       36 GETUPVAL                         R8 2
       37 MOVE                             R9 R1
       38 MOVE                             R10 R4
       39 GETUPVAL                         R11 3
       40 GETTABLEKS                       R11 R11 K11 ["markWorkInProgressReceivedUpdate"]
       42 CALL                             R8 3 0
       43 GETIMPORT                        R8 K1 [_G]
       45 GETTABLEKS                       R8 R8 K2 ["__DEV__"]
       47 JUMPIFNOT                        R8 ; [+52]
       48 GETUPVAL                         R8 4
       49 SETTABLEKS                       R1 R8 K12 ["current"]
       51 GETUPVAL                         R8 5
       52 LOADB                            R9 1
       53 CALL                             R8 1 0
       54 GETUPVAL                         R8 6
       55 MOVE                             R9 R0
       56 MOVE                             R10 R1
       57 MOVE                             R11 R5
       58 MOVE                             R12 R3
       59 MOVE                             R13 R6
       60 MOVE                             R14 R4
       61 CALL                             R8 6 1
       62 MOVE                             R7 R8
       63 GETUPVAL                         R8 7
       64 JUMPIFNOT                        R8 ; [+31]
       65 GETTABLEKS                       R9 R1 K13 ["mode"]
       67 GETUPVAL                         R10 8
       68 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       70 GETIMPORT                        R8 K16 [bit32.band]
       72 CALL                             R8 2 1
       73 JUMPIFEQKN                       R8 K17 [0] ; [+22]
       75 GETUPVAL                         R8 9
       76 CALL                             R8 0 0
       77 GETIMPORT                        R8 K19 [pcall]
       79 GETUPVAL                         R9 6
       80 MOVE                             R10 R0
       81 MOVE                             R11 R1
       82 MOVE                             R12 R5
       83 MOVE                             R13 R3
       84 MOVE                             R14 R6
       85 MOVE                             R15 R4
       86 CALL                             R8 7 2
       87 JUMPIFNOT                        R8 ; [+1]
       88 MOVE                             R7 R9
       89 GETUPVAL                         R10 10
       90 CALL                             R10 0 0
       91 JUMPIF                           R8 ; [+4]
       92 GETIMPORT                        R10 K21 [error]
       94 MOVE                             R11 R9
       95 CALL                             R10 1 0
       96 GETUPVAL                         R8 5
       97 LOADB                            R9 0
       98 CALL                             R8 1 0
       99 JUMP                             ; [+9]
      100 GETUPVAL                         R8 6
      101 MOVE                             R9 R0
      102 MOVE                             R10 R1
      103 MOVE                             R11 R5
      104 MOVE                             R12 R3
      105 MOVE                             R13 R6
      106 MOVE                             R14 R4
      107 CALL                             R8 6 1
      108 MOVE                             R7 R8
      109 JUMPIFEQKNIL                     R0 ; [+14]
      111 GETUPVAL                         R8 11
      112 JUMPIF                           R8 ; [+11]
      113 GETUPVAL                         R8 12
      114 MOVE                             R9 R0
      115 MOVE                             R10 R1
      116 MOVE                             R11 R4
      117 CALL                             R8 3 0
      118 GETUPVAL                         R8 13
      119 MOVE                             R9 R0
      120 MOVE                             R10 R1
      121 MOVE                             R11 R4
      122 CALL                             R8 3 -1
      123 RETURN                           R8 -1
      124 GETTABLEKS                       R9 R1 K22 ["flags"]
      126 GETUPVAL                         R10 14
      127 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
      129 GETIMPORT                        R8 K24 [bit32.bor]
      131 CALL                             R8 2 1
      132 SETTABLEKS                       R8 R1 K22 ["flags"]
      134 MOVE                             R8 R7
      135 JUMPIFNOTEQKNIL                  R0 ; [+10]
      137 GETUPVAL                         R9 15
      138 MOVE                             R10 R1
      139 LOADNIL                          R11
      140 MOVE                             R12 R8
      141 MOVE                             R13 R4
      142 CALL                             R9 4 1
      143 SETTABLEKS                       R9 R1 K25 ["child"]
      145 JUMP                             ; [+9]
      146 GETUPVAL                         R9 16
      147 MOVE                             R10 R1
      148 GETTABLEKS                       R11 R0 K25 ["child"]
      150 MOVE                             R12 R8
      151 MOVE                             R13 R4
      152 CALL                             R9 4 1
      153 SETTABLEKS                       R9 R1 K25 ["child"]
      155 GETTABLEKS                       R8 R1 K25 ["child"]
      157 RETURN                           R8 1

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R0 ; [+102]
        2 GETTABLEKS                       R6 R2 K0 ["type"]
        4 GETUPVAL                         R7 0
        5 MOVE                             R8 R6
        6 CALL                             R7 1 1
        7 JUMPIFNOT                        R7 ; [+42]
        8 GETTABLEKS                       R7 R2 K1 ["compare"]
       10 JUMPIFNOTEQKNIL                  R7 ; [+39]
       12 GETTABLEKS                       R7 R2 K2 ["defaultProps"]
       14 JUMPIFNOTEQKNIL                  R7 ; [+35]
       16 MOVE                             R7 R6
       17 GETIMPORT                        R8 K4 [_G]
       19 GETTABLEKS                       R8 R8 K5 ["__DEV__"]
       21 JUMPIFNOT                        R8 ; [+4]
       22 GETUPVAL                         R8 1
       23 MOVE                             R9 R6
       24 CALL                             R8 1 1
       25 MOVE                             R7 R8
       26 GETUPVAL                         R8 2
       27 SETTABLEKS                       R8 R1 K6 ["tag"]
       29 SETTABLEKS                       R7 R1 K0 ["type"]
       31 GETIMPORT                        R8 K4 [_G]
       33 GETTABLEKS                       R8 R8 K5 ["__DEV__"]
       35 JUMPIFNOT                        R8 ; [+5]
       36 GETGLOBAL                        R8 K7 ["validateFunctionComponentInDev"]
       38 MOVE                             R9 R1
       39 MOVE                             R10 R6
       40 CALL                             R8 2 0
       41 GETUPVAL                         R8 3
       42 MOVE                             R9 R0
       43 MOVE                             R10 R1
       44 MOVE                             R11 R7
       45 MOVE                             R12 R3
       46 MOVE                             R13 R4
       47 MOVE                             R14 R5
       48 CALL                             R8 6 -1
       49 RETURN                           R8 -1
       50 GETIMPORT                        R7 K4 [_G]
       52 GETTABLEKS                       R7 R7 K5 ["__DEV__"]
       54 JUMPIF                           R7 ; [+5]
       55 GETIMPORT                        R7 K4 [_G]
       57 GETTABLEKS                       R7 R7 K8 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
       59 JUMPIFNOT                        R7 ; [+24]
       60 LOADNIL                          R7
       61 LOADNIL                          R8
       62 FASTCALL1                        TYPEOF R6 ; [+3]
       63 MOVE                             R10 R6
       64 GETIMPORT                        R9 K10 [typeof]
       66 CALL                             R9 1 1
       67 JUMPIFNOTEQKS                    R9 K11 ["table"] ; [+5]
       69 GETTABLEKS                       R7 R6 K12 ["propTypes"]
       71 GETTABLEKS                       R8 R6 K13 ["validateProps"]
       73 JUMPIF                           R7 ; [+1]
       74 JUMPIFNOT                        R8 ; [+9]
       75 GETUPVAL                         R9 4
       76 MOVE                             R10 R7
       77 MOVE                             R11 R8
       78 MOVE                             R12 R3
       79 LOADK                            R13 K14 ["prop"]
       80 GETUPVAL                         R14 5
       81 MOVE                             R15 R6
       82 CALL                             R14 1 -1
       83 CALL                             R9 -1 0
       84 GETUPVAL                         R7 6
       85 GETTABLEKS                       R8 R2 K0 ["type"]
       87 LOADNIL                          R9
       88 MOVE                             R10 R3
       89 MOVE                             R11 R1
       90 GETTABLEKS                       R12 R1 K15 ["mode"]
       92 MOVE                             R13 R5
       93 CALL                             R7 6 1
       94 GETTABLEKS                       R8 R1 K16 ["ref"]
       96 SETTABLEKS                       R8 R7 K16 ["ref"]
       98 SETTABLEKS                       R1 R7 K17 ["return_"]
      100 SETTABLEKS                       R7 R1 K18 ["child"]
      102 RETURN                           R7 1
      103 GETIMPORT                        R6 K4 [_G]
      105 GETTABLEKS                       R6 R6 K5 ["__DEV__"]
      107 JUMPIF                           R6 ; [+5]
      108 GETIMPORT                        R6 K4 [_G]
      110 GETTABLEKS                       R6 R6 K8 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
      112 JUMPIFNOT                        R6 ; [+26]
      113 GETTABLEKS                       R6 R2 K0 ["type"]
      115 LOADNIL                          R7
      116 LOADNIL                          R8
      117 FASTCALL1                        TYPEOF R6 ; [+3]
      118 MOVE                             R10 R6
      119 GETIMPORT                        R9 K10 [typeof]
      121 CALL                             R9 1 1
      122 JUMPIFNOTEQKS                    R9 K11 ["table"] ; [+5]
      124 GETTABLEKS                       R7 R6 K12 ["propTypes"]
      126 GETTABLEKS                       R8 R6 K13 ["validateProps"]
      128 JUMPIF                           R7 ; [+1]
      129 JUMPIFNOT                        R8 ; [+9]
      130 GETUPVAL                         R9 4
      131 MOVE                             R10 R7
      132 MOVE                             R11 R8
      133 MOVE                             R12 R3
      134 LOADK                            R13 K14 ["prop"]
      135 GETUPVAL                         R14 5
      136 MOVE                             R15 R6
      137 CALL                             R14 1 -1
      138 CALL                             R9 -1 0
      139 GETTABLEKS                       R6 R0 K18 ["child"]
      141 GETUPVAL                         R7 7
      142 GETTABLEKS                       R7 R7 K19 ["includesSomeLane"]
      144 MOVE                             R8 R4
      145 MOVE                             R9 R5
      146 CALL                             R7 2 1
      147 JUMPIF                           R7 ; [+24]
      148 GETTABLEKS                       R7 R6 K20 ["memoizedProps"]
      150 GETTABLEKS                       R8 R2 K1 ["compare"]
      152 JUMPIFNOTEQKNIL                  R8 ; [+2]
      154 GETUPVAL                         R8 8
      155 MOVE                             R9 R8
      156 MOVE                             R10 R7
      157 MOVE                             R11 R3
      158 CALL                             R9 2 1
      159 JUMPIFNOT                        R9 ; [+12]
      160 GETTABLEKS                       R9 R0 K16 ["ref"]
      162 GETTABLEKS                       R10 R1 K16 ["ref"]
      164 JUMPIFNOTEQ                      R9 R10 ; [+7]
      166 GETUPVAL                         R9 9
      167 MOVE                             R10 R0
      168 MOVE                             R11 R1
      169 MOVE                             R12 R5
      170 CALL                             R9 3 -1
      171 RETURN                           R9 -1
      172 GETTABLEKS                       R8 R1 K21 ["flags"]
      174 GETUPVAL                         R9 10
      175 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      177 GETIMPORT                        R7 K24 [bit32.bor]
      179 CALL                             R7 2 1
      180 SETTABLEKS                       R7 R1 K21 ["flags"]
      182 GETUPVAL                         R7 11
      183 MOVE                             R8 R6
      184 MOVE                             R9 R3
      185 CALL                             R7 2 1
      186 GETTABLEKS                       R8 R1 K16 ["ref"]
      188 SETTABLEKS                       R8 R7 K16 ["ref"]
      190 SETTABLEKS                       R1 R7 K17 ["return_"]
      192 SETTABLEKS                       R7 R1 K18 ["child"]
      194 RETURN                           R7 1

PROTO_9:
        0 GETIMPORT                        R6 K1 [_G]
        2 GETTABLEKS                       R6 R6 K2 ["__DEV__"]
        4 JUMPIF                           R6 ; [+5]
        5 GETIMPORT                        R6 K1 [_G]
        7 GETTABLEKS                       R6 R6 K3 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
        9 JUMPIFNOT                        R6 ; [+51]
       10 GETTABLEKS                       R6 R1 K4 ["type"]
       12 GETTABLEKS                       R7 R1 K5 ["elementType"]
       14 JUMPIFEQ                         R6 R7 ; [+46]
       16 GETTABLEKS                       R6 R1 K5 ["elementType"]
       18 GETTABLEKS                       R7 R6 K6 ["$$typeof"]
       20 GETUPVAL                         R8 0
       21 JUMPIFNOTEQ                      R7 R8 ; [+39]
       23 MOVE                             R7 R6
       24 GETTABLEKS                       R8 R7 K7 ["_payload"]
       26 GETTABLEKS                       R9 R7 K8 ["_init"]
       28 GETIMPORT                        R10 K10 [pcall]
       30 MOVE                             R11 R9
       31 MOVE                             R12 R8
       32 CALL                             R10 2 2
       33 JUMPIFNOT                        R10 ; [+2]
       34 MOVE                             R6 R11
       35 JUMP                             ; [+1]
       36 LOADNIL                          R6
       37 LOADNIL                          R12
       38 LOADNIL                          R13
       39 FASTCALL1                        TYPEOF R6 ; [+3]
       40 MOVE                             R15 R6
       41 GETIMPORT                        R14 K12 [typeof]
       43 CALL                             R14 1 1
       44 JUMPIFNOTEQKS                    R14 K13 ["table"] ; [+5]
       46 GETTABLEKS                       R12 R6 K14 ["propTypes"]
       48 GETTABLEKS                       R13 R6 K15 ["validateProps"]
       50 JUMPIF                           R12 ; [+1]
       51 JUMPIFNOT                        R13 ; [+9]
       52 GETUPVAL                         R14 1
       53 MOVE                             R15 R12
       54 MOVE                             R16 R13
       55 MOVE                             R17 R3
       56 LOADK                            R18 K16 ["prop"]
       57 GETUPVAL                         R19 2
       58 MOVE                             R20 R6
       59 CALL                             R19 1 -1
       60 CALL                             R14 -1 0
       61 JUMPIFEQKNIL                     R0 ; [+61]
       63 GETTABLEKS                       R6 R0 K17 ["memoizedProps"]
       65 LOADB                            R7 1
       66 GETIMPORT                        R8 K1 [_G]
       68 GETTABLEKS                       R8 R8 K2 ["__DEV__"]
       70 JUMPIFNOT                        R8 ; [+8]
       71 GETTABLEKS                       R8 R1 K4 ["type"]
       73 GETTABLEKS                       R9 R0 K4 ["type"]
       75 JUMPIFEQ                         R8 R9 ; [+2]
       77 LOADB                            R7 0 +1
       78 LOADB                            R7 1
       79 GETUPVAL                         R8 3
       80 MOVE                             R9 R6
       81 MOVE                             R10 R3
       82 CALL                             R8 2 1
       83 JUMPIFNOT                        R8 ; [+39]
       84 GETTABLEKS                       R8 R0 K18 ["ref"]
       86 GETTABLEKS                       R9 R1 K18 ["ref"]
       88 JUMPIFNOTEQ                      R8 R9 ; [+34]
       90 JUMPIFNOT                        R7 ; [+32]
       91 LOADB                            R8 0
       92 SETUPVAL                         R8 4
       93 GETUPVAL                         R8 5
       94 GETTABLEKS                       R8 R8 K19 ["includesSomeLane"]
       96 MOVE                             R9 R5
       97 MOVE                             R10 R4
       98 CALL                             R8 2 1
       99 JUMPIF                           R8 ; [+10]
      100 GETTABLEKS                       R8 R0 K20 ["lanes"]
      102 SETTABLEKS                       R8 R1 K20 ["lanes"]
      104 GETUPVAL                         R8 6
      105 MOVE                             R9 R0
      106 MOVE                             R10 R1
      107 MOVE                             R11 R5
      108 CALL                             R8 3 -1
      109 RETURN                           R8 -1
      110 GETTABLEKS                       R9 R0 K21 ["flags"]
      112 GETUPVAL                         R10 7
      113 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      115 GETIMPORT                        R8 K24 [bit32.band]
      117 CALL                             R8 2 1
      118 GETUPVAL                         R9 8
      119 JUMPIFEQ                         R8 R9 ; [+3]
      121 LOADB                            R8 1
      122 SETUPVAL                         R8 4
      123 GETUPVAL                         R6 9
      124 MOVE                             R7 R0
      125 MOVE                             R8 R1
      126 MOVE                             R9 R2
      127 MOVE                             R10 R3
      128 MOVE                             R11 R5
      129 CALL                             R6 5 -1
      130 RETURN                           R6 -1

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
        0 GETIMPORT                        R5 K1 [_G]
        2 GETTABLEKS                       R5 R5 K2 ["__DEV__"]
        4 JUMPIF                           R5 ; [+5]
        5 GETIMPORT                        R5 K1 [_G]
        7 GETTABLEKS                       R5 R5 K3 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
        9 JUMPIFNOT                        R5 ; [+37]
       10 FASTCALL1                        TYPEOF R2 ; [+3]
       11 MOVE                             R6 R2
       12 GETIMPORT                        R5 K5 [typeof]
       14 CALL                             R5 1 1
       15 JUMPIFEQKS                       R5 K6 ["function"] ; [+31]
       17 GETTABLEKS                       R5 R1 K7 ["type"]
       19 GETTABLEKS                       R6 R1 K8 ["elementType"]
       21 JUMPIFEQ                         R5 R6 ; [+25]
       23 LOADNIL                          R5
       24 LOADNIL                          R6
       25 FASTCALL1                        TYPEOF R2 ; [+3]
       26 MOVE                             R8 R2
       27 GETIMPORT                        R7 K5 [typeof]
       29 CALL                             R7 1 1
       30 JUMPIFNOTEQKS                    R7 K9 ["table"] ; [+5]
       32 GETTABLEKS                       R5 R2 K10 ["propTypes"]
       34 GETTABLEKS                       R6 R2 K11 ["validateProps"]
       36 JUMPIF                           R5 ; [+1]
       37 JUMPIFNOT                        R6 ; [+9]
       38 GETUPVAL                         R7 0
       39 MOVE                             R8 R5
       40 MOVE                             R9 R6
       41 MOVE                             R10 R3
       42 LOADK                            R11 K12 ["prop"]
       43 GETUPVAL                         R12 1
       44 MOVE                             R13 R2
       45 CALL                             R12 1 -1
       46 CALL                             R7 -1 0
       47 LOADNIL                          R5
       48 GETUPVAL                         R6 2
       49 JUMPIF                           R6 ; [+10]
       50 GETUPVAL                         R6 3
       51 MOVE                             R7 R1
       52 MOVE                             R8 R2
       53 LOADB                            R9 1
       54 CALL                             R6 3 1
       55 GETUPVAL                         R7 4
       56 MOVE                             R8 R1
       57 MOVE                             R9 R6
       58 CALL                             R7 2 1
       59 MOVE                             R5 R7
       60 LOADNIL                          R6
       61 GETUPVAL                         R7 5
       62 MOVE                             R8 R1
       63 MOVE                             R9 R4
       64 GETUPVAL                         R10 6
       65 GETTABLEKS                       R10 R10 K13 ["markWorkInProgressReceivedUpdate"]
       67 CALL                             R7 3 0
       68 GETIMPORT                        R7 K1 [_G]
       70 GETTABLEKS                       R7 R7 K2 ["__DEV__"]
       72 JUMPIFNOT                        R7 ; [+52]
       73 GETUPVAL                         R7 7
       74 SETTABLEKS                       R1 R7 K14 ["current"]
       76 GETUPVAL                         R7 8
       77 LOADB                            R8 1
       78 CALL                             R7 1 0
       79 GETUPVAL                         R7 9
       80 MOVE                             R8 R0
       81 MOVE                             R9 R1
       82 MOVE                             R10 R2
       83 MOVE                             R11 R3
       84 MOVE                             R12 R5
       85 MOVE                             R13 R4
       86 CALL                             R7 6 1
       87 MOVE                             R6 R7
       88 GETUPVAL                         R7 10
       89 JUMPIFNOT                        R7 ; [+31]
       90 GETTABLEKS                       R8 R1 K15 ["mode"]
       92 GETUPVAL                         R9 11
       93 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       95 GETIMPORT                        R7 K18 [bit32.band]
       97 CALL                             R7 2 1
       98 JUMPIFEQKN                       R7 K19 [0] ; [+22]
      100 GETUPVAL                         R7 12
      101 CALL                             R7 0 0
      102 GETIMPORT                        R7 K21 [pcall]
      104 GETUPVAL                         R8 9
      105 MOVE                             R9 R0
      106 MOVE                             R10 R1
      107 MOVE                             R11 R2
      108 MOVE                             R12 R3
      109 MOVE                             R13 R5
      110 MOVE                             R14 R4
      111 CALL                             R7 7 2
      112 GETUPVAL                         R9 13
      113 CALL                             R9 0 0
      114 JUMPIFNOT                        R7 ; [+2]
      115 MOVE                             R6 R8
      116 JUMP                             ; [+4]
      117 GETIMPORT                        R9 K23 [error]
      119 MOVE                             R10 R8
      120 CALL                             R9 1 0
      121 GETUPVAL                         R7 8
      122 LOADB                            R8 0
      123 CALL                             R7 1 0
      124 JUMP                             ; [+9]
      125 GETUPVAL                         R7 9
      126 MOVE                             R8 R0
      127 MOVE                             R9 R1
      128 MOVE                             R10 R2
      129 MOVE                             R11 R3
      130 MOVE                             R12 R5
      131 MOVE                             R13 R4
      132 CALL                             R7 6 1
      133 MOVE                             R6 R7
      134 JUMPIFEQKNIL                     R0 ; [+14]
      136 GETUPVAL                         R7 14
      137 JUMPIF                           R7 ; [+11]
      138 GETUPVAL                         R7 15
      139 MOVE                             R8 R0
      140 MOVE                             R9 R1
      141 MOVE                             R10 R4
      142 CALL                             R7 3 0
      143 GETUPVAL                         R7 16
      144 MOVE                             R8 R0
      145 MOVE                             R9 R1
      146 MOVE                             R10 R4
      147 CALL                             R7 3 -1
      148 RETURN                           R7 -1
      149 GETTABLEKS                       R8 R1 K24 ["flags"]
      151 GETUPVAL                         R9 17
      152 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      154 GETIMPORT                        R7 K26 [bit32.bor]
      156 CALL                             R7 2 1
      157 SETTABLEKS                       R7 R1 K24 ["flags"]
      159 MOVE                             R7 R6
      160 JUMPIFNOTEQKNIL                  R0 ; [+10]
      162 GETUPVAL                         R8 18
      163 MOVE                             R9 R1
      164 LOADNIL                          R10
      165 MOVE                             R11 R7
      166 MOVE                             R12 R4
      167 CALL                             R8 4 1
      168 SETTABLEKS                       R8 R1 K27 ["child"]
      170 JUMP                             ; [+9]
      171 GETUPVAL                         R8 19
      172 MOVE                             R9 R1
      173 GETTABLEKS                       R10 R0 K27 ["child"]
      175 MOVE                             R11 R7
      176 MOVE                             R12 R4
      177 CALL                             R8 4 1
      178 SETTABLEKS                       R8 R1 K27 ["child"]
      180 GETTABLEKS                       R7 R1 K27 ["child"]
      182 RETURN                           R7 1

PROTO_16:
        0 GETIMPORT                        R5 K1 [_G]
        2 GETTABLEKS                       R5 R5 K2 ["__DEV__"]
        4 JUMPIF                           R5 ; [+5]
        5 GETIMPORT                        R5 K1 [_G]
        7 GETTABLEKS                       R5 R5 K3 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
        9 JUMPIFNOT                        R5 ; [+21]
       10 GETTABLEKS                       R5 R1 K4 ["type"]
       12 GETTABLEKS                       R6 R1 K5 ["elementType"]
       14 JUMPIFEQ                         R5 R6 ; [+16]
       16 GETTABLEKS                       R5 R2 K6 ["propTypes"]
       18 GETTABLEKS                       R6 R2 K7 ["validateProps"]
       20 JUMPIF                           R5 ; [+1]
       21 JUMPIFNOT                        R6 ; [+9]
       22 GETUPVAL                         R7 0
       23 MOVE                             R8 R5
       24 MOVE                             R9 R6
       25 MOVE                             R10 R3
       26 LOADK                            R11 K8 ["prop"]
       27 GETUPVAL                         R12 1
       28 MOVE                             R13 R2
       29 CALL                             R12 1 -1
       30 CALL                             R7 -1 0
       31 LOADNIL                          R5
       32 GETUPVAL                         R6 2
       33 MOVE                             R7 R2
       34 CALL                             R6 1 1
       35 JUMPIFNOT                        R6 ; [+5]
       36 LOADB                            R5 1
       37 GETUPVAL                         R6 3
       38 MOVE                             R7 R1
       39 CALL                             R6 1 0
       40 JUMP                             ; [+1]
       41 LOADB                            R5 0
       42 GETUPVAL                         R6 4
       43 MOVE                             R7 R1
       44 MOVE                             R8 R4
       45 GETUPVAL                         R9 5
       46 GETTABLEKS                       R9 R9 K9 ["markWorkInProgressReceivedUpdate"]
       48 CALL                             R6 3 0
       49 GETTABLEKS                       R6 R1 K10 ["stateNode"]
       51 LOADNIL                          R7
       52 JUMPIFNOTEQKNIL                  R6 ; [+32]
       54 JUMPIFEQKNIL                     R0 ; [+17]
       56 LOADNIL                          R8
       57 SETTABLEKS                       R8 R0 K11 ["alternate"]
       59 LOADNIL                          R8
       60 SETTABLEKS                       R8 R1 K11 ["alternate"]
       62 GETTABLEKS                       R9 R1 K12 ["flags"]
       64 GETUPVAL                         R10 6
       65 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
       67 GETIMPORT                        R8 K15 [bit32.bor]
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R1 K12 ["flags"]
       72 GETUPVAL                         R8 7
       73 MOVE                             R9 R1
       74 MOVE                             R10 R2
       75 MOVE                             R11 R3
       76 CALL                             R8 3 0
       77 GETUPVAL                         R8 8
       78 MOVE                             R9 R1
       79 MOVE                             R10 R2
       80 MOVE                             R11 R3
       81 MOVE                             R12 R4
       82 CALL                             R8 4 0
       83 LOADB                            R7 1
       84 JUMP                             ; [+18]
       85 JUMPIFNOTEQKNIL                  R0 ; [+9]
       87 GETUPVAL                         R8 9
       88 MOVE                             R9 R1
       89 MOVE                             R10 R2
       90 MOVE                             R11 R3
       91 MOVE                             R12 R4
       92 CALL                             R8 4 1
       93 MOVE                             R7 R8
       94 JUMP                             ; [+8]
       95 GETUPVAL                         R8 10
       96 MOVE                             R9 R0
       97 MOVE                             R10 R1
       98 MOVE                             R11 R2
       99 MOVE                             R12 R3
      100 MOVE                             R13 R4
      101 CALL                             R8 5 1
      102 MOVE                             R7 R8
      103 GETGLOBAL                        R8 K16 ["finishClassComponent"]
      105 MOVE                             R9 R0
      106 MOVE                             R10 R1
      107 MOVE                             R11 R2
      108 MOVE                             R12 R7
      109 MOVE                             R13 R5
      110 MOVE                             R14 R4
      111 CALL                             R8 6 1
      112 GETIMPORT                        R9 K1 [_G]
      114 GETTABLEKS                       R9 R9 K2 ["__DEV__"]
      116 JUMPIFNOT                        R9 ; [+25]
      117 GETTABLEKS                       R9 R1 K10 ["stateNode"]
      119 JUMPIFNOT                        R7 ; [+22]
      120 GETTABLEKS                       R10 R9 K17 ["props"]
      122 JUMPIFEQ                         R10 R3 ; [+19]
      124 GETUPVAL                         R10 5
      125 GETTABLEKS                       R10 R10 K18 ["didWarnAboutReassigningProps"]
      127 JUMPIF                           R10 ; [+10]
      128 GETUPVAL                         R10 11
      129 GETTABLEKS                       R10 R10 K19 ["error"]
      131 LOADK                            R11 K20 ["It looks like %s is reassigning its own `this.props` while rendering. This is not supported and can lead to confusing bugs."]
      132 GETUPVAL                         R13 1
      133 GETTABLEKS                       R14 R1 K4 ["type"]
      135 CALL                             R13 1 1
      136 ORK                              R12 R13 K21 ["a component"]
      137 CALL                             R10 2 0
      138 GETUPVAL                         R10 5
      139 LOADB                            R11 1
      140 SETTABLEKS                       R11 R10 K18 ["didWarnAboutReassigningProps"]
      142 RETURN                           R8 1

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
       55 JUMPIFNOT                        R6 ; [+15]
       56 GETTABLEKS                       R10 R2 K9 ["getDerivedStateFromError"]
       58 FASTCALL1                        TYPEOF R10 ; [+2]
       59 GETIMPORT                        R9 K11 [typeof]
       61 CALL                             R9 1 1
       62 JUMPIFEQKS                       R9 K12 ["function"] ; [+8]
       64 LOADNIL                          R8
       65 GETUPVAL                         R9 6
       66 JUMPIFNOT                        R9 ; [+51]
       67 GETUPVAL                         R9 7
       68 MOVE                             R10 R1
       69 CALL                             R9 1 0
       70 JUMP                             ; [+47]
       71 GETIMPORT                        R9 K14 [_G]
       73 GETTABLEKS                       R9 R9 K15 ["__DEV__"]
       75 JUMPIFNOT                        R9 ; [+38]
       76 GETUPVAL                         R9 8
       77 LOADB                            R10 1
       78 CALL                             R9 1 0
       79 NAMECALL                         R9 R7 K16 ["render"]
       81 CALL                             R9 1 1
       82 MOVE                             R8 R9
       83 GETUPVAL                         R9 9
       84 JUMPIFNOT                        R9 ; [+25]
       85 GETTABLEKS                       R10 R1 K17 ["mode"]
       87 GETUPVAL                         R11 10
       88 FASTCALL2                        BIT32_BAND R10 R11 ; [+3]
       90 GETIMPORT                        R9 K6 [bit32.band]
       92 CALL                             R9 2 1
       93 JUMPIFEQKN                       R9 K18 [0] ; [+16]
       95 GETUPVAL                         R9 11
       96 CALL                             R9 0 0
       97 GETIMPORT                        R9 K20 [pcall]
       99 GETTABLEKS                       R10 R7 K16 ["render"]
      101 MOVE                             R11 R7
      102 CALL                             R9 2 2
      103 GETUPVAL                         R11 12
      104 CALL                             R11 0 0
      105 JUMPIF                           R9 ; [+4]
      106 GETIMPORT                        R11 K22 [error]
      108 MOVE                             R12 R10
      109 CALL                             R11 1 0
      110 GETUPVAL                         R9 8
      111 LOADB                            R10 0
      112 CALL                             R9 1 0
      113 JUMP                             ; [+4]
      114 NAMECALL                         R9 R7 K16 ["render"]
      116 CALL                             R9 1 1
      117 MOVE                             R8 R9
      118 GETTABLEKS                       R10 R1 K1 ["flags"]
      120 GETUPVAL                         R11 13
      121 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
      123 GETIMPORT                        R9 K4 [bit32.bor]
      125 CALL                             R9 2 1
      126 SETTABLEKS                       R9 R1 K1 ["flags"]
      128 JUMPIFEQKNIL                     R0 ; [+21]
      130 JUMPIFNOT                        R6 ; [+19]
      131 MOVE                             R9 R8
      132 GETUPVAL                         R10 14
      133 MOVE                             R11 R1
      134 GETTABLEKS                       R12 R0 K23 ["child"]
      136 LOADNIL                          R13
      137 MOVE                             R14 R5
      138 CALL                             R10 4 1
      139 SETTABLEKS                       R10 R1 K23 ["child"]
      141 GETUPVAL                         R10 14
      142 MOVE                             R11 R1
      143 LOADNIL                          R12
      144 MOVE                             R13 R9
      145 MOVE                             R14 R5
      146 CALL                             R10 4 1
      147 SETTABLEKS                       R10 R1 K23 ["child"]
      149 JUMP                             ; [+21]
      150 MOVE                             R9 R8
      151 JUMPIFNOTEQKNIL                  R0 ; [+10]
      153 GETUPVAL                         R10 15
      154 MOVE                             R11 R1
      155 LOADNIL                          R12
      156 MOVE                             R13 R9
      157 MOVE                             R14 R5
      158 CALL                             R10 4 1
      159 SETTABLEKS                       R10 R1 K23 ["child"]
      161 JUMP                             ; [+9]
      162 GETUPVAL                         R10 14
      163 MOVE                             R11 R1
      164 GETTABLEKS                       R12 R0 K23 ["child"]
      166 MOVE                             R13 R9
      167 MOVE                             R14 R5
      168 CALL                             R10 4 1
      169 SETTABLEKS                       R10 R1 K23 ["child"]
      171 GETTABLEKS                       R9 R7 K24 ["state"]
      173 SETTABLEKS                       R9 R1 K25 ["memoizedState"]
      175 JUMPIFNOT                        R4 ; [+5]
      176 GETUPVAL                         R9 3
      177 MOVE                             R10 R1
      178 MOVE                             R11 R2
      179 LOADB                            R12 1
      180 CALL                             R9 3 0
      181 GETTABLEKS                       R9 R1 K23 ["child"]
      183 RETURN                           R9 1

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
       42 JUMPIFNOTEQ                      R9 R12 ; [+26]
       44 GETIMPORT                        R12 K11 [_G]
       46 GETTABLEKS                       R12 R12 K12 ["__DEV__"]
       48 JUMPIFNOT                        R12 ; [+11]
       49 GETGLOBAL                        R12 K13 ["validateFunctionComponentInDev"]
       51 MOVE                             R13 R1
       52 MOVE                             R14 R8
       53 CALL                             R12 2 0
       54 GETUPVAL                         R12 4
       55 MOVE                             R13 R8
       56 CALL                             R12 1 1
       57 MOVE                             R8 R12
       58 SETTABLEKS                       R8 R1 K8 ["type"]
       60 GETUPVAL                         R12 5
       61 LOADNIL                          R13
       62 MOVE                             R14 R1
       63 MOVE                             R15 R8
       64 MOVE                             R16 R10
       65 MOVE                             R17 R4
       66 CALL                             R12 5 1
       67 MOVE                             R11 R12
       68 RETURN                           R11 1
       69 GETUPVAL                         R12 6
       70 JUMPIFNOTEQ                      R9 R12 ; [+21]
       72 GETIMPORT                        R12 K11 [_G]
       74 GETTABLEKS                       R12 R12 K12 ["__DEV__"]
       76 JUMPIFNOT                        R12 ; [+6]
       77 GETUPVAL                         R12 7
       78 MOVE                             R13 R8
       79 CALL                             R12 1 1
       80 MOVE                             R8 R12
       81 SETTABLEKS                       R8 R1 K8 ["type"]
       83 GETUPVAL                         R12 8
       84 LOADNIL                          R13
       85 MOVE                             R14 R1
       86 MOVE                             R15 R8
       87 MOVE                             R16 R10
       88 MOVE                             R17 R4
       89 CALL                             R12 5 1
       90 MOVE                             R11 R12
       91 RETURN                           R11 1
       92 GETUPVAL                         R12 9
       93 JUMPIFNOTEQ                      R9 R12 ; [+21]
       95 GETIMPORT                        R12 K11 [_G]
       97 GETTABLEKS                       R12 R12 K12 ["__DEV__"]
       99 JUMPIFNOT                        R12 ; [+6]
      100 GETUPVAL                         R12 10
      101 MOVE                             R13 R8
      102 CALL                             R12 1 1
      103 MOVE                             R8 R12
      104 SETTABLEKS                       R8 R1 K8 ["type"]
      106 GETUPVAL                         R12 11
      107 LOADNIL                          R13
      108 MOVE                             R14 R1
      109 MOVE                             R15 R8
      110 MOVE                             R16 R10
      111 MOVE                             R17 R4
      112 CALL                             R12 5 1
      113 MOVE                             R11 R12
      114 RETURN                           R11 1
      115 GETUPVAL                         R12 12
      116 JUMPIFNOTEQ                      R9 R12 ; [+46]
      118 GETIMPORT                        R12 K11 [_G]
      120 GETTABLEKS                       R12 R12 K12 ["__DEV__"]
      122 JUMPIF                           R12 ; [+5]
      123 GETIMPORT                        R12 K11 [_G]
      125 GETTABLEKS                       R12 R12 K14 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
      127 JUMPIFNOT                        R12 ; [+21]
      128 GETTABLEKS                       R12 R1 K8 ["type"]
      130 GETTABLEKS                       R13 R1 K15 ["elementType"]
      132 JUMPIFEQ                         R12 R13 ; [+16]
      134 GETTABLEKS                       R12 R8 K16 ["propTypes"]
      136 GETTABLEKS                       R13 R8 K17 ["validateProps"]
      138 JUMPIF                           R12 ; [+1]
      139 JUMPIFNOT                        R13 ; [+9]
      140 GETUPVAL                         R14 13
      141 MOVE                             R15 R12
      142 MOVE                             R16 R13
      143 MOVE                             R17 R10
      144 LOADK                            R18 K18 ["prop"]
      145 GETUPVAL                         R19 14
      146 MOVE                             R20 R8
      147 CALL                             R19 1 -1
      148 CALL                             R14 -1 0
      149 GETUPVAL                         R12 15
      150 LOADNIL                          R13
      151 MOVE                             R14 R1
      152 MOVE                             R15 R8
      153 GETUPVAL                         R16 2
      154 GETTABLEKS                       R17 R8 K8 ["type"]
      156 MOVE                             R18 R10
      157 CALL                             R16 2 1
      158 MOVE                             R17 R3
      159 MOVE                             R18 R4
      160 CALL                             R12 6 1
      161 MOVE                             R11 R12
      162 RETURN                           R11 1
      163 LOADK                            R12 K19 [""]
      164 GETIMPORT                        R13 K11 [_G]
      166 GETTABLEKS                       R13 R13 K12 ["__DEV__"]
      168 JUMPIFNOT                        R13 ; [+32]
      169 JUMPIFEQKNIL                     R8 ; [+15]
      171 FASTCALL1                        TYPEOF R8 ; [+3]
      172 MOVE                             R14 R8
      173 GETIMPORT                        R13 K21 [typeof]
      175 CALL                             R13 1 1
      176 JUMPIFNOTEQKS                    R13 K22 ["table"] ; [+8]
      178 GETTABLEKS                       R13 R8 K23 ["$$typeof"]
      180 GETUPVAL                         R14 16
      181 JUMPIFNOTEQ                      R13 R14 ; [+3]
      183 LOADK                            R12 K24 [" Did you wrap a component in React.lazy() more than once?"]
      184 JUMP                             ; [+16]
      185 FASTCALL1                        TYPEOF R8 ; [+3]
      186 MOVE                             R14 R8
      187 GETIMPORT                        R13 K21 [typeof]
      189 CALL                             R13 1 1
      190 JUMPIFNOTEQKS                    R13 K22 ["table"] ; [+10]
      192 GETTABLEKS                       R13 R8 K23 ["$$typeof"]
      194 JUMPIFNOTEQKNIL                  R13 ; [+6]
      196 LOADK                            R13 K25 ["\n"]
      197 GETUPVAL                         R14 17
      198 MOVE                             R15 R8
      199 CALL                             R14 1 1
      200 CONCAT                           R12 R13 R14
      201 GETUPVAL                         R13 18
      202 LOADB                            R14 0
      203 LOADK                            R15 K26 ["Element type is invalid. Received a promise that resolves to: %s. Lazy element type must resolve to a class or function.%s"]
      204 FASTCALL1                        TOSTRING R8 ; [+3]
      205 MOVE                             R17 R8
      206 GETIMPORT                        R16 K28 [tostring]
      208 CALL                             R16 1 1
      209 MOVE                             R17 R12
      210 CALL                             R13 4 0
      211 LOADNIL                          R13
      212 RETURN                           R13 1

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
       41 GETIMPORT                        R7 K8 [_G]
       43 GETTABLEKS                       R7 R7 K9 ["__DEV__"]
       45 JUMPIFNOT                        R7 ; [+71]
       46 FASTCALL1                        TYPEOF R2 ; [+3]
       47 MOVE                             R8 R2
       48 GETIMPORT                        R7 K11 [typeof]
       50 CALL                             R7 1 1
       51 JUMPIFNOTEQKS                    R7 K12 ["table"] ; [+30]
       53 GETTABLEKS                       R8 R2 K13 ["render"]
       55 FASTCALL1                        TYPEOF R8 ; [+2]
       56 GETIMPORT                        R7 K11 [typeof]
       58 CALL                             R7 1 1
       59 JUMPIFNOTEQKS                    R7 K14 ["function"] ; [+22]
       61 GETUPVAL                         R8 6
       62 MOVE                             R9 R2
       63 CALL                             R8 1 1
       64 ORK                              R7 R8 K15 ["Unknown"]
       65 GETUPVAL                         R9 7
       66 GETTABLEKS                       R9 R9 K16 ["didWarnAboutBadClass"]
       68 GETTABLE                         R8 R9 R7
       69 JUMPIF                           R8 ; [+12]
       70 GETUPVAL                         R8 8
       71 GETTABLEKS                       R8 R8 K17 ["error"]
       73 LOADK                            R9 K18 ["The <%s /> component appears to have a render method, but doesn't extend React.Component. This is likely to cause errors. Change %s to extend React.Component instead."]
       74 MOVE                             R10 R7
       75 MOVE                             R11 R7
       76 CALL                             R8 3 0
       77 GETUPVAL                         R8 7
       78 GETTABLEKS                       R8 R8 K16 ["didWarnAboutBadClass"]
       80 LOADB                            R9 1
       81 SETTABLE                         R9 R8 R7
       82 GETTABLEKS                       R8 R1 K19 ["mode"]
       84 GETUPVAL                         R9 9
       85 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       87 GETIMPORT                        R7 K21 [bit32.band]
       89 CALL                             R7 2 1
       90 JUMPIFEQKN                       R7 K22 [0] ; [+7]
       92 GETUPVAL                         R7 10
       93 GETTABLEKS                       R7 R7 K23 ["recordLegacyContextWarning"]
       95 MOVE                             R8 R1
       96 LOADNIL                          R9
       97 CALL                             R7 2 0
       98 GETUPVAL                         R7 11
       99 LOADB                            R8 1
      100 CALL                             R7 1 0
      101 GETUPVAL                         R7 12
      102 SETTABLEKS                       R1 R7 K24 ["current"]
      104 GETUPVAL                         R7 13
      105 LOADNIL                          R8
      106 MOVE                             R9 R1
      107 MOVE                             R10 R2
      108 MOVE                             R11 R4
      109 MOVE                             R12 R5
      110 MOVE                             R13 R3
      111 CALL                             R7 6 1
      112 MOVE                             R6 R7
      113 GETUPVAL                         R7 11
      114 LOADB                            R8 0
      115 CALL                             R7 1 0
      116 JUMP                             ; [+9]
      117 GETUPVAL                         R7 13
      118 LOADNIL                          R8
      119 MOVE                             R9 R1
      120 MOVE                             R10 R2
      121 MOVE                             R11 R4
      122 MOVE                             R12 R5
      123 MOVE                             R13 R3
      124 CALL                             R7 6 1
      125 MOVE                             R6 R7
      126 GETTABLEKS                       R8 R1 K1 ["flags"]
      128 GETUPVAL                         R9 14
      129 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      131 GETIMPORT                        R7 K4 [bit32.bor]
      133 CALL                             R7 2 1
      134 SETTABLEKS                       R7 R1 K1 ["flags"]
      136 GETIMPORT                        R7 K8 [_G]
      138 GETTABLEKS                       R7 R7 K9 ["__DEV__"]
      140 JUMPIFNOT                        R7 ; [+42]
      141 FASTCALL1                        TYPEOF R6 ; [+3]
      142 MOVE                             R8 R6
      143 GETIMPORT                        R7 K11 [typeof]
      145 CALL                             R7 1 1
      146 JUMPIFNOTEQKS                    R7 K12 ["table"] ; [+36]
      148 JUMPIFEQKNIL                     R6 ; [+34]
      150 GETTABLEKS                       R8 R6 K13 ["render"]
      152 FASTCALL1                        TYPEOF R8 ; [+2]
      153 GETIMPORT                        R7 K11 [typeof]
      155 CALL                             R7 1 1
      156 JUMPIFNOTEQKS                    R7 K14 ["function"] ; [+26]
      158 GETTABLEKS                       R7 R6 K25 ["$$typeof"]
      160 JUMPIFNOTEQKNIL                  R7 ; [+22]
      162 GETUPVAL                         R8 6
      163 MOVE                             R9 R2
      164 CALL                             R8 1 1
      165 ORK                              R7 R8 K15 ["Unknown"]
      166 GETUPVAL                         R9 7
      167 GETTABLEKS                       R9 R9 K26 ["didWarnAboutModulePatternComponent"]
      169 GETTABLE                         R8 R9 R7
      170 JUMPIF                           R8 ; [+12]
      171 GETUPVAL                         R8 8
      172 GETTABLEKS                       R8 R8 K17 ["error"]
      174 LOADK                            R9 K27 ["The <%s /> component appears to be a function component that returns a class instance. Change %s to a class that extends React.Component instead. "]
      175 MOVE                             R10 R7
      176 MOVE                             R11 R7
      177 CALL                             R8 3 0
      178 GETUPVAL                         R8 7
      179 GETTABLEKS                       R8 R8 K26 ["didWarnAboutModulePatternComponent"]
      181 LOADB                            R9 1
      182 SETTABLE                         R9 R8 R7
      183 GETUPVAL                         R7 15
      184 JUMPIF                           R7 ; [+117]
      185 FASTCALL1                        TYPEOF R6 ; [+3]
      186 MOVE                             R8 R6
      187 GETIMPORT                        R7 K11 [typeof]
      189 CALL                             R7 1 1
      190 JUMPIFNOTEQKS                    R7 K12 ["table"] ; [+111]
      192 GETTABLEKS                       R8 R6 K13 ["render"]
      194 FASTCALL1                        TYPEOF R8 ; [+2]
      195 GETIMPORT                        R7 K11 [typeof]
      197 CALL                             R7 1 1
      198 JUMPIFNOTEQKS                    R7 K14 ["function"] ; [+103]
      200 GETTABLEKS                       R7 R6 K25 ["$$typeof"]
      202 JUMPIFNOTEQKNIL                  R7 ; [+99]
      204 GETIMPORT                        R7 K8 [_G]
      206 GETTABLEKS                       R7 R7 K9 ["__DEV__"]
      208 JUMPIFNOT                        R7 ; [+23]
      209 GETUPVAL                         R8 6
      210 MOVE                             R9 R2
      211 CALL                             R8 1 1
      212 ORK                              R7 R8 K15 ["Unknown"]
      213 GETUPVAL                         R9 7
      214 GETTABLEKS                       R9 R9 K26 ["didWarnAboutModulePatternComponent"]
      216 GETTABLE                         R8 R9 R7
      217 JUMPIF                           R8 ; [+14]
      218 GETUPVAL                         R8 8
      219 GETTABLEKS                       R8 R8 K17 ["error"]
      221 LOADK                            R10 K28 ["The <%s /> component appears to be a function component that returns a class instance. "]
      222 LOADK                            R11 K29 ["Change %s to a class that extends React.Component instead. "]
      223 MOVE                             R12 R7
      224 CONCAT                           R9 R10 R12
      225 MOVE                             R10 R7
      226 CALL                             R8 2 0
      227 GETUPVAL                         R8 7
      228 GETTABLEKS                       R8 R8 K26 ["didWarnAboutModulePatternComponent"]
      230 LOADB                            R9 1
      231 SETTABLE                         R9 R8 R7
      232 GETUPVAL                         R7 16
      233 SETTABLEKS                       R7 R1 K30 ["tag"]
      235 LOADNIL                          R7
      236 SETTABLEKS                       R7 R1 K31 ["memoizedState"]
      238 LOADNIL                          R7
      239 SETTABLEKS                       R7 R1 K32 ["updateQueue"]
      241 LOADB                            R7 0
      242 GETUPVAL                         R8 17
      243 MOVE                             R9 R2
      244 CALL                             R8 1 1
      245 JUMPIFNOT                        R8 ; [+5]
      246 LOADB                            R7 1
      247 GETUPVAL                         R8 18
      248 MOVE                             R9 R1
      249 CALL                             R8 1 0
      250 JUMP                             ; [+1]
      251 LOADB                            R7 0
      252 GETTABLEKS                       R8 R6 K33 ["state"]
      254 SETTABLEKS                       R8 R1 K31 ["memoizedState"]
      256 GETUPVAL                         R8 19
      257 MOVE                             R9 R1
      258 CALL                             R8 1 0
      259 LOADNIL                          R8
      260 FASTCALL1                        TYPEOF R2 ; [+3]
      261 MOVE                             R10 R2
      262 GETIMPORT                        R9 K11 [typeof]
      264 CALL                             R9 1 1
      265 JUMPIFEQKS                       R9 K14 ["function"] ; [+3]
      267 GETTABLEKS                       R8 R2 K34 ["getDerivedStateFromProps"]
      269 FASTCALL1                        TYPEOF R8 ; [+3]
      270 MOVE                             R10 R8
      271 GETIMPORT                        R9 K11 [typeof]
      273 CALL                             R9 1 1
      274 JUMPIFNOTEQKS                    R9 K14 ["function"] ; [+7]
      276 GETUPVAL                         R9 20
      277 MOVE                             R10 R1
      278 MOVE                             R11 R2
      279 MOVE                             R12 R8
      280 MOVE                             R13 R4
      281 CALL                             R9 4 0
      282 GETUPVAL                         R9 21
      283 MOVE                             R10 R1
      284 MOVE                             R11 R6
      285 CALL                             R9 2 0
      286 GETUPVAL                         R9 22
      287 MOVE                             R10 R1
      288 MOVE                             R11 R2
      289 MOVE                             R12 R4
      290 MOVE                             R13 R3
      291 CALL                             R9 4 0
      292 GETGLOBAL                        R9 K35 ["finishClassComponent"]
      294 LOADNIL                          R10
      295 MOVE                             R11 R1
      296 MOVE                             R12 R2
      297 LOADB                            R13 1
      298 MOVE                             R14 R7
      299 MOVE                             R15 R3
      300 CALL                             R9 6 -1
      301 RETURN                           R9 -1
      302 GETUPVAL                         R7 23
      303 SETTABLEKS                       R7 R1 K30 ["tag"]
      305 GETIMPORT                        R7 K8 [_G]
      307 GETTABLEKS                       R7 R7 K9 ["__DEV__"]
      309 JUMPIFNOT                        R7 ; [+47]
      310 GETUPVAL                         R7 1
      311 JUMPIFNOT                        R7 ; [+12]
      312 GETTABLEKS                       R7 R2 K36 ["contextTypes"]
      314 JUMPIFNOT                        R7 ; [+9]
      315 GETUPVAL                         R7 8
      316 GETTABLEKS                       R7 R7 K17 ["error"]
      318 LOADK                            R8 K37 ["%s uses the legacy contextTypes API which is no longer supported. Use React.createContext() with React.useContext() instead."]
      319 GETUPVAL                         R10 6
      320 MOVE                             R11 R2
      321 CALL                             R10 1 1
      322 ORK                              R9 R10 K15 ["Unknown"]
      323 CALL                             R7 2 0
      324 GETUPVAL                         R7 24
      325 JUMPIFNOT                        R7 ; [+31]
      326 GETTABLEKS                       R8 R1 K19 ["mode"]
      328 GETUPVAL                         R9 9
      329 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
      331 GETIMPORT                        R7 K21 [bit32.band]
      333 CALL                             R7 2 1
      334 JUMPIFEQKN                       R7 K22 [0] ; [+22]
      336 GETUPVAL                         R7 25
      337 CALL                             R7 0 0
      338 GETIMPORT                        R7 K39 [pcall]
      340 GETUPVAL                         R8 13
      341 LOADNIL                          R9
      342 MOVE                             R10 R1
      343 MOVE                             R11 R2
      344 MOVE                             R12 R4
      345 MOVE                             R13 R5
      346 MOVE                             R14 R3
      347 CALL                             R7 7 2
      348 GETUPVAL                         R9 26
      349 CALL                             R9 0 0
      350 JUMPIFNOT                        R7 ; [+2]
      351 MOVE                             R6 R8
      352 JUMP                             ; [+4]
      353 GETIMPORT                        R9 K40 [error]
      355 MOVE                             R10 R8
      356 CALL                             R9 1 0
      357 MOVE                             R7 R6
      358 GETUPVAL                         R8 27
      359 MOVE                             R9 R1
      360 LOADNIL                          R10
      361 MOVE                             R11 R7
      362 MOVE                             R12 R3
      363 CALL                             R8 4 1
      364 SETTABLEKS                       R8 R1 K41 ["child"]
      366 GETIMPORT                        R7 K8 [_G]
      368 GETTABLEKS                       R7 R7 K9 ["__DEV__"]
      370 JUMPIFNOT                        R7 ; [+5]
      371 GETGLOBAL                        R7 K42 ["validateFunctionComponentInDev"]
      373 MOVE                             R8 R1
      374 MOVE                             R9 R2
      375 CALL                             R7 2 0
      376 GETTABLEKS                       R7 R1 K41 ["child"]
      378 RETURN                           R7 1

PROTO_25:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+151]
        5 GETTABLEKS                       R2 R0 K3 ["ref"]
        7 JUMPIFEQKNIL                     R2 ; [+41]
        9 LOADK                            R2 K4 [""]
       10 GETUPVAL                         R3 0
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+5]
       13 MOVE                             R4 R2
       14 LOADK                            R5 K5 ["\n\nCheck the render method of `"]
       15 MOVE                             R6 R3
       16 LOADK                            R7 K6 ["`."]
       17 CONCAT                           R2 R4 R7
       18 MOVE                             R4 R3
       19 JUMPIF                           R4 ; [+4]
       20 GETTABLEKS                       R4 R0 K7 ["_debugID"]
       22 JUMPIF                           R4 ; [+1]
       23 LOADK                            R4 K4 [""]
       24 GETTABLEKS                       R5 R0 K8 ["_debugSource"]
       26 JUMPIFNOT                        R5 ; [+6]
       27 GETTABLEKS                       R6 R5 K9 ["fileName"]
       29 LOADK                            R7 K10 [":"]
       30 GETTABLEKS                       R8 R5 K11 ["lineNumber"]
       32 CONCAT                           R4 R6 R8
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K12 ["didWarnAboutFunctionRefs"]
       36 GETTABLE                         R6 R7 R4
       37 JUMPIF                           R6 ; [+11]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K12 ["didWarnAboutFunctionRefs"]
       41 LOADB                            R7 1
       42 SETTABLE                         R7 R6 R4
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K13 ["error"]
       46 LOADK                            R7 K14 ["Function components cannot be given refs. Attempts to access this ref will fail. Did you mean to use React.forwardRef()?%s"]
       47 MOVE                             R8 R2
       48 CALL                             R6 2 0
       49 GETUPVAL                         R2 3
       50 JUMPIFNOT                        R2 ; [+31]
       51 FASTCALL1                        TYPEOF R1 ; [+3]
       52 MOVE                             R3 R1
       53 GETIMPORT                        R2 K16 [typeof]
       55 CALL                             R2 1 1
       56 JUMPIFEQKS                       R2 K17 ["function"] ; [+25]
       58 GETTABLEKS                       R2 R1 K18 ["defaultProps"]
       60 JUMPIFEQKNIL                     R2 ; [+21]
       62 GETUPVAL                         R3 4
       63 MOVE                             R4 R1
       64 CALL                             R3 1 1
       65 ORK                              R2 R3 K19 ["Unknown"]
       66 GETUPVAL                         R4 1
       67 GETTABLEKS                       R4 R4 K20 ["didWarnAboutDefaultPropsOnFunctionComponent"]
       69 GETTABLE                         R3 R4 R2
       70 JUMPIF                           R3 ; [+11]
       71 GETUPVAL                         R3 2
       72 GETTABLEKS                       R3 R3 K13 ["error"]
       74 LOADK                            R4 K21 ["%s: Support for defaultProps will be removed from function components in a future major release."]
       75 MOVE                             R5 R2
       76 CALL                             R3 2 0
       77 GETUPVAL                         R3 1
       78 GETTABLEKS                       R3 R3 K20 ["didWarnAboutDefaultPropsOnFunctionComponent"]
       80 LOADB                            R4 1
       81 SETTABLE                         R4 R3 R2
       82 FASTCALL1                        TYPEOF R1 ; [+3]
       83 MOVE                             R3 R1
       84 GETIMPORT                        R2 K16 [typeof]
       86 CALL                             R2 1 1
       87 JUMPIFEQKS                       R2 K17 ["function"] ; [+29]
       89 GETTABLEKS                       R3 R1 K22 ["getDerivedStateFromProps"]
       91 FASTCALL1                        TYPEOF R3 ; [+2]
       92 GETIMPORT                        R2 K16 [typeof]
       94 CALL                             R2 1 1
       95 JUMPIFNOTEQKS                    R2 K17 ["function"] ; [+21]
       97 GETUPVAL                         R3 4
       98 MOVE                             R4 R1
       99 CALL                             R3 1 1
      100 ORK                              R2 R3 K19 ["Unknown"]
      101 GETUPVAL                         R4 1
      102 GETTABLEKS                       R4 R4 K23 ["didWarnAboutGetDerivedStateOnFunctionComponent"]
      104 GETTABLE                         R3 R4 R2
      105 JUMPIF                           R3 ; [+11]
      106 GETUPVAL                         R3 2
      107 GETTABLEKS                       R3 R3 K13 ["error"]
      109 LOADK                            R4 K24 ["%s: Function components do not support getDerivedStateFromProps."]
      110 MOVE                             R5 R2
      111 CALL                             R3 2 0
      112 GETUPVAL                         R3 1
      113 GETTABLEKS                       R3 R3 K23 ["didWarnAboutGetDerivedStateOnFunctionComponent"]
      115 LOADB                            R4 1
      116 SETTABLE                         R4 R3 R2
      117 FASTCALL1                        TYPEOF R1 ; [+3]
      118 MOVE                             R3 R1
      119 GETIMPORT                        R2 K16 [typeof]
      121 CALL                             R2 1 1
      122 JUMPIFEQKS                       R2 K17 ["function"] ; [+33]
      124 GETTABLEKS                       R3 R1 K25 ["contextType"]
      126 FASTCALL1                        TYPEOF R3 ; [+2]
      127 GETIMPORT                        R2 K16 [typeof]
      129 CALL                             R2 1 1
      130 JUMPIFNOTEQKS                    R2 K26 ["table"] ; [+25]
      132 GETTABLEKS                       R2 R1 K25 ["contextType"]
      134 JUMPIFEQKNIL                     R2 ; [+21]
      136 GETUPVAL                         R3 4
      137 MOVE                             R4 R1
      138 CALL                             R3 1 1
      139 ORK                              R2 R3 K19 ["Unknown"]
      140 GETUPVAL                         R4 1
      141 GETTABLEKS                       R4 R4 K27 ["didWarnAboutContextTypeOnFunctionComponent"]
      143 GETTABLE                         R3 R4 R2
      144 JUMPIF                           R3 ; [+11]
      145 GETUPVAL                         R3 2
      146 GETTABLEKS                       R3 R3 K13 ["error"]
      148 LOADK                            R4 K28 ["%s: Function components do not support contextType."]
      149 MOVE                             R5 R2
      150 CALL                             R3 2 0
      151 GETUPVAL                         R3 1
      152 GETTABLEKS                       R3 R3 K27 ["didWarnAboutContextTypeOnFunctionComponent"]
      154 LOADB                            R4 1
      155 SETTABLE                         R4 R3 R2
      156 RETURN                           R0 0

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
        2 GETIMPORT                        R4 K2 [_G]
        4 GETTABLEKS                       R4 R4 K3 ["__DEV__"]
        6 JUMPIFNOT                        R4 ; [+34]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K4 ["shouldSuspendRef"]
       10 JUMPIF                           R5 ; [+14]
       11 GETUPVAL                         R5 0
       12 GETIMPORT                        R6 K6 [require]
       14 GETIMPORT                        R7 K8 [script]
       16 GETTABLEKS                       R7 R7 K9 ["Parent"]
       18 GETTABLEKS                       R7 R7 K10 ["ReactFiberReconciler"]
       20 CALL                             R6 1 1
       21 GETTABLEKS                       R6 R6 K11 ["shouldSuspend"]
       23 SETTABLEKS                       R6 R5 K4 ["shouldSuspendRef"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K4 ["shouldSuspendRef"]
       28 MOVE                             R5 R1
       29 CALL                             R4 1 1
       30 JUMPIFNOT                        R4 ; [+10]
       31 GETTABLEKS                       R5 R1 K12 ["flags"]
       33 GETUPVAL                         R6 1
       34 FASTCALL2                        BIT32_BOR R5 R6 ; [+3]
       36 GETIMPORT                        R4 K15 [bit32.bor]
       38 CALL                             R4 2 1
       39 SETTABLEKS                       R4 R1 K12 ["flags"]
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K16 ["current"]
       44 LOADB                            R5 0
       45 GETTABLEKS                       R8 R1 K12 ["flags"]
       47 GETUPVAL                         R9 1
       48 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       50 GETIMPORT                        R7 K18 [bit32.band]
       52 CALL                             R7 2 1
       53 GETUPVAL                         R8 3
       54 JUMPIFNOTEQ                      R7 R8 ; [+2]
       56 LOADB                            R6 0 +1
       57 LOADB                            R6 1
       58 JUMPIF                           R6 ; [+15]
       59 MOVE                             R8 R4
       60 JUMPIFEQKNIL                     R0 ; [+7]
       62 GETTABLEKS                       R9 R0 K19 ["memoizedState"]
       64 JUMPIFNOTEQKNIL                  R9 ; [+3]
       66 LOADB                            R7 0
       67 JUMP                             ; [+5]
       68 GETUPVAL                         R9 4
       69 MOVE                             R10 R8
       70 GETUPVAL                         R11 5
       71 CALL                             R9 2 1
       72 MOVE                             R7 R9
       73 JUMPIFNOT                        R7 ; [+16]
       74 LOADB                            R5 1
       75 GETTABLEKS                       R8 R1 K12 ["flags"]
       77 GETUPVAL                         R10 1
       78 FASTCALL1                        BIT32_BNOT R10 ; [+2]
       79 GETIMPORT                        R9 K21 [bit32.bnot]
       81 CALL                             R9 1 1
       82 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       84 GETIMPORT                        R7 K18 [bit32.band]
       86 CALL                             R7 2 1
       87 SETTABLEKS                       R7 R1 K12 ["flags"]
       89 JUMP                             ; [+19]
       90 JUMPIFEQKNIL                     R0 ; [+5]
       92 GETTABLEKS                       R7 R0 K19 ["memoizedState"]
       94 JUMPIFEQKNIL                     R7 ; [+14]
       96 GETTABLEKS                       R7 R3 K22 ["fallback"]
       98 JUMPIFEQKNIL                     R7 ; [+10]
      100 GETTABLEKS                       R7 R3 K23 ["unstable_avoidThisFallback"]
      102 JUMPIFEQKB                       R7 TRUE ; [+6]
      104 GETUPVAL                         R7 6
      105 MOVE                             R8 R4
      106 GETUPVAL                         R9 7
      107 CALL                             R7 2 1
      108 MOVE                             R4 R7
      109 GETUPVAL                         R7 8
      110 MOVE                             R8 R4
      111 CALL                             R7 1 1
      112 MOVE                             R4 R7
      113 GETUPVAL                         R7 9
      114 MOVE                             R8 R1
      115 MOVE                             R9 R4
      116 CALL                             R7 2 0
      117 JUMPIFNOTEQKNIL                  R0 ; [+91]
      119 GETTABLEKS                       R7 R3 K22 ["fallback"]
      121 JUMPIFEQKNIL                     R7 ; [+20]
      123 GETUPVAL                         R7 10
      124 MOVE                             R8 R1
      125 CALL                             R7 1 0
      126 GETUPVAL                         R7 11
      127 JUMPIFNOT                        R7 ; [+14]
      128 GETTABLEKS                       R7 R1 K19 ["memoizedState"]
      130 JUMPIFEQKNIL                     R7 ; [+11]
      132 GETTABLEKS                       R8 R7 K24 ["dehydrated"]
      134 JUMPIFEQKNIL                     R8 ; [+7]
      136 GETUPVAL                         R9 12
      137 MOVE                             R10 R1
      138 MOVE                             R11 R8
      139 MOVE                             R12 R2
      140 CALL                             R9 3 -1
      141 RETURN                           R9 -1
      142 GETTABLEKS                       R7 R3 K25 ["children"]
      144 GETTABLEKS                       R8 R3 K22 ["fallback"]
      146 JUMPIFNOT                        R5 ; [+18]
      147 GETGLOBAL                        R9 K26 ["mountSuspenseFallbackChildren"]
      149 MOVE                             R10 R1
      150 MOVE                             R11 R7
      151 MOVE                             R12 R8
      152 MOVE                             R13 R2
      153 CALL                             R9 4 1
      154 GETTABLEKS                       R10 R1 K27 ["child"]
      156 DUPTABLE                         R11 K29 [{"baseLanes"}]
      157 SETTABLEKS                       R2 R11 K28 ["baseLanes"]
      159 SETTABLEKS                       R11 R10 K19 ["memoizedState"]
      161 GETUPVAL                         R11 13
      162 SETTABLEKS                       R11 R1 K19 ["memoizedState"]
      164 RETURN                           R9 1
      165 GETTABLEKS                       R10 R3 K30 ["unstable_expectedLoadTime"]
      167 FASTCALL1                        TYPEOF R10 ; [+2]
      168 GETIMPORT                        R9 K32 [typeof]
      170 CALL                             R9 1 1
      171 JUMPIFNOTEQKS                    R9 K33 ["number"] ; [+31]
      173 GETGLOBAL                        R9 K26 ["mountSuspenseFallbackChildren"]
      175 MOVE                             R10 R1
      176 MOVE                             R11 R7
      177 MOVE                             R12 R8
      178 MOVE                             R13 R2
      179 CALL                             R9 4 1
      180 GETTABLEKS                       R10 R1 K27 ["child"]
      182 DUPTABLE                         R11 K29 [{"baseLanes"}]
      183 SETTABLEKS                       R2 R11 K28 ["baseLanes"]
      185 SETTABLEKS                       R11 R10 K19 ["memoizedState"]
      187 GETUPVAL                         R11 13
      188 SETTABLEKS                       R11 R1 K19 ["memoizedState"]
      190 GETUPVAL                         R11 14
      191 GETTABLEKS                       R11 R11 K34 ["SomeRetryLane"]
      193 SETTABLEKS                       R11 R1 K35 ["lanes"]
      195 GETUPVAL                         R11 15
      196 JUMPIFNOT                        R11 ; [+5]
      197 GETUPVAL                         R11 16
      198 GETUPVAL                         R12 14
      199 GETTABLEKS                       R12 R12 K34 ["SomeRetryLane"]
      201 CALL                             R11 1 0
      202 RETURN                           R9 1
      203 GETUPVAL                         R9 17
      204 MOVE                             R10 R1
      205 MOVE                             R11 R7
      206 MOVE                             R12 R2
      207 CALL                             R9 3 -1
      208 RETURN                           R9 -1
      209 GETTABLEKS                       R7 R0 K19 ["memoizedState"]
      211 JUMPIFEQKNIL                     R7 ; [+121]
      213 GETUPVAL                         R8 11
      214 JUMPIFNOT                        R8 ; [+55]
      215 GETTABLEKS                       R8 R7 K24 ["dehydrated"]
      217 JUMPIFEQKNIL                     R8 ; [+52]
      219 JUMPIF                           R6 ; [+8]
      220 GETUPVAL                         R9 18
      221 MOVE                             R10 R0
      222 MOVE                             R11 R1
      223 MOVE                             R12 R8
      224 MOVE                             R13 R7
      225 MOVE                             R14 R2
      226 CALL                             R9 5 -1
      227 RETURN                           R9 -1
      228 GETTABLEKS                       R9 R1 K19 ["memoizedState"]
      230 JUMPIFEQKNIL                     R9 ; [+16]
      232 GETTABLEKS                       R9 R0 K27 ["child"]
      234 SETTABLEKS                       R9 R1 K27 ["child"]
      236 GETUPVAL                         R11 1
      237 FASTCALL2                        BIT32_BOR R1 R11 ; [+4]
      239 MOVE                             R10 R1
      240 GETIMPORT                        R9 K15 [bit32.bor]
      242 CALL                             R9 2 1
      243 SETTABLEKS                       R9 R1 K12 ["flags"]
      245 LOADNIL                          R9
      246 RETURN                           R9 1
      247 GETTABLEKS                       R9 R3 K25 ["children"]
      249 GETTABLEKS                       R10 R3 K22 ["fallback"]
      251 GETGLOBAL                        R11 K36 ["mountSuspenseFallbackAfterRetryWithoutHydrating"]
      253 MOVE                             R12 R0
      254 MOVE                             R13 R1
      255 MOVE                             R14 R9
      256 MOVE                             R15 R10
      257 MOVE                             R16 R2
      258 CALL                             R11 5 1
      259 GETTABLEKS                       R12 R1 K27 ["child"]
      261 DUPTABLE                         R13 K29 [{"baseLanes"}]
      262 SETTABLEKS                       R2 R13 K28 ["baseLanes"]
      264 SETTABLEKS                       R13 R12 K19 ["memoizedState"]
      266 GETUPVAL                         R13 13
      267 SETTABLEKS                       R13 R1 K19 ["memoizedState"]
      269 RETURN                           R11 1
      270 JUMPIFNOT                        R5 ; [+50]
      271 GETTABLEKS                       R8 R3 K22 ["fallback"]
      273 GETTABLEKS                       R9 R3 K25 ["children"]
      275 GETUPVAL                         R10 19
      276 MOVE                             R11 R0
      277 MOVE                             R12 R1
      278 MOVE                             R13 R9
      279 MOVE                             R14 R8
      280 MOVE                             R15 R2
      281 CALL                             R10 5 1
      282 GETTABLEKS                       R11 R1 K27 ["child"]
      284 GETTABLEKS                       R12 R0 K27 ["child"]
      286 GETTABLEKS                       R12 R12 K19 ["memoizedState"]
      288 JUMPIFNOTEQKNIL                  R12 ; [+7]
      290 DUPTABLE                         R13 K29 [{"baseLanes"}]
      291 SETTABLEKS                       R2 R13 K28 ["baseLanes"]
      293 SETTABLEKS                       R13 R11 K19 ["memoizedState"]
      295 JUMP                             ; [+12]
      296 DUPTABLE                         R13 K29 [{"baseLanes"}]
      297 GETUPVAL                         R14 14
      298 GETTABLEKS                       R14 R14 K37 ["mergeLanes"]
      300 GETTABLEKS                       R15 R12 K28 ["baseLanes"]
      302 MOVE                             R16 R2
      303 CALL                             R14 2 1
      304 SETTABLEKS                       R14 R13 K28 ["baseLanes"]
      306 SETTABLEKS                       R13 R11 K19 ["memoizedState"]
      308 GETUPVAL                         R13 14
      309 GETTABLEKS                       R13 R13 K38 ["removeLanes"]
      311 GETTABLEKS                       R14 R0 K39 ["childLanes"]
      313 MOVE                             R15 R2
      314 CALL                             R13 2 1
      315 SETTABLEKS                       R13 R11 K39 ["childLanes"]
      317 GETUPVAL                         R13 13
      318 SETTABLEKS                       R13 R1 K19 ["memoizedState"]
      320 RETURN                           R10 1
      321 GETTABLEKS                       R8 R3 K25 ["children"]
      323 GETUPVAL                         R9 20
      324 MOVE                             R10 R0
      325 MOVE                             R11 R1
      326 MOVE                             R12 R8
      327 MOVE                             R13 R2
      328 CALL                             R9 4 1
      329 LOADNIL                          R10
      330 SETTABLEKS                       R10 R1 K19 ["memoizedState"]
      332 RETURN                           R9 1
      333 JUMPIFNOT                        R5 ; [+50]
      334 GETTABLEKS                       R8 R3 K22 ["fallback"]
      336 GETTABLEKS                       R9 R3 K25 ["children"]
      338 GETUPVAL                         R10 19
      339 MOVE                             R11 R0
      340 MOVE                             R12 R1
      341 MOVE                             R13 R9
      342 MOVE                             R14 R8
      343 MOVE                             R15 R2
      344 CALL                             R10 5 1
      345 GETTABLEKS                       R11 R1 K27 ["child"]
      347 GETTABLEKS                       R12 R0 K27 ["child"]
      349 GETTABLEKS                       R12 R12 K19 ["memoizedState"]
      351 JUMPIFNOTEQKNIL                  R12 ; [+7]
      353 DUPTABLE                         R13 K29 [{"baseLanes"}]
      354 SETTABLEKS                       R2 R13 K28 ["baseLanes"]
      356 SETTABLEKS                       R13 R11 K19 ["memoizedState"]
      358 JUMP                             ; [+12]
      359 DUPTABLE                         R13 K29 [{"baseLanes"}]
      360 GETUPVAL                         R14 14
      361 GETTABLEKS                       R14 R14 K37 ["mergeLanes"]
      363 GETTABLEKS                       R15 R12 K28 ["baseLanes"]
      365 MOVE                             R16 R2
      366 CALL                             R14 2 1
      367 SETTABLEKS                       R14 R13 K28 ["baseLanes"]
      369 SETTABLEKS                       R13 R11 K19 ["memoizedState"]
      371 GETUPVAL                         R13 14
      372 GETTABLEKS                       R13 R13 K38 ["removeLanes"]
      374 GETTABLEKS                       R14 R0 K39 ["childLanes"]
      376 MOVE                             R15 R2
      377 CALL                             R13 2 1
      378 SETTABLEKS                       R13 R11 K39 ["childLanes"]
      380 GETUPVAL                         R13 13
      381 SETTABLEKS                       R13 R1 K19 ["memoizedState"]
      383 RETURN                           R10 1
      384 GETTABLEKS                       R8 R3 K25 ["children"]
      386 GETUPVAL                         R9 20
      387 MOVE                             R10 R0
      388 MOVE                             R11 R1
      389 MOVE                             R12 R8
      390 MOVE                             R13 R2
      391 CALL                             R9 4 1
      392 LOADNIL                          R10
      393 SETTABLEKS                       R10 R1 K19 ["memoizedState"]
      395 RETURN                           R9 1

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
        9 JUMPIFNOTEQ                      R3 R4 ; [+21]
       11 GETIMPORT                        R3 K5 [_G]
       13 GETTABLEKS                       R3 R3 K6 ["__DEV__"]
       15 JUMPIFNOT                        R3 ; [+5]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K7 ["error"]
       19 LOADK                            R4 K8 ["Cannot hydrate Suspense in legacy mode. Switch fromReactDOM.hydrate(element, container) to ReactDOM.createBlockingRoot(container, { hydrate: true }).render(element) or remove the Suspense componentsthe server rendered components."]
       20 CALL                             R3 1 0
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K9 ["laneToLanes"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K10 ["SyncLane"]
       27 CALL                             R3 1 1
       28 SETTABLEKS                       R3 R0 K11 ["lanes"]
       30 JUMP                             ; [+37]
       31 GETUPVAL                         R3 4
       32 MOVE                             R4 R1
       33 CALL                             R3 1 1
       34 JUMPIFNOT                        R3 ; [+17]
       35 GETUPVAL                         R3 5
       36 JUMPIFNOT                        R3 ; [+5]
       37 GETUPVAL                         R3 6
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K12 ["DefaultHydrationLane"]
       41 CALL                             R3 1 0
       42 GETUPVAL                         R3 3
       43 GETTABLEKS                       R3 R3 K9 ["laneToLanes"]
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R4 R4 K12 ["DefaultHydrationLane"]
       48 CALL                             R3 1 1
       49 SETTABLEKS                       R3 R0 K11 ["lanes"]
       51 JUMP                             ; [+16]
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R3 R3 K9 ["laneToLanes"]
       55 GETUPVAL                         R4 3
       56 GETTABLEKS                       R4 R4 K13 ["OffscreenLane"]
       58 CALL                             R3 1 1
       59 SETTABLEKS                       R3 R0 K11 ["lanes"]
       61 GETUPVAL                         R3 5
       62 JUMPIFNOT                        R3 ; [+5]
       63 GETUPVAL                         R3 6
       64 GETUPVAL                         R4 3
       65 GETTABLEKS                       R4 R4 K13 ["OffscreenLane"]
       67 CALL                             R3 1 0
       68 LOADNIL                          R3
       69 RETURN                           R3 1

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
       10 GETIMPORT                        R8 K6 [_G]
       12 GETTABLEKS                       R8 R8 K7 ["__DEV__"]
       14 JUMPIF                           R8 ; [+5]
       15 GETIMPORT                        R8 K6 [_G]
       17 GETTABLEKS                       R8 R8 K8 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
       19 JUMPIFNOT                        R8 ; [+39]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K9 ["indexOf"]
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K10 ["keys"]
       26 MOVE                             R10 R5
       27 CALL                             R9 1 1
       28 LOADK                            R10 K4 ["value"]
       29 CALL                             R8 2 1
       30 LOADN                            R9 1
       31 JUMPIFNOTLT                      R8 R9 ; [+10]
       33 GETUPVAL                         R8 2
       34 JUMPIF                           R8 ; [+7]
       35 LOADB                            R8 1
       36 SETUPVAL                         R8 2
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R8 R8 K11 ["error"]
       40 LOADK                            R9 K12 ["The `value` prop is required for the `<Context.Provider>`. Did you misspell it or forget to pass it?"]
       41 CALL                             R8 1 0
       42 GETTABLEKS                       R8 R1 K0 ["type"]
       44 GETTABLEKS                       R8 R8 K13 ["propTypes"]
       46 GETTABLEKS                       R9 R1 K0 ["type"]
       48 GETTABLEKS                       R9 R9 K14 ["validateProps"]
       50 JUMPIF                           R8 ; [+1]
       51 JUMPIFNOT                        R9 ; [+7]
       52 GETUPVAL                         R10 4
       53 MOVE                             R11 R8
       54 MOVE                             R12 R9
       55 MOVE                             R13 R5
       56 LOADK                            R14 K15 ["prop"]
       57 LOADK                            R15 K16 ["Context.Provider"]
       58 CALL                             R10 5 0
       59 GETUPVAL                         R8 5
       60 MOVE                             R9 R1
       61 MOVE                             R10 R7
       62 CALL                             R8 2 0
       63 JUMPIFEQKNIL                     R6 ; [+32]
       65 GETTABLEKS                       R8 R6 K4 ["value"]
       67 GETUPVAL                         R9 6
       68 MOVE                             R10 R4
       69 MOVE                             R11 R7
       70 MOVE                             R12 R8
       71 CALL                             R9 3 1
       72 JUMPIFNOTEQKN                    R9 K17 [0] ; [+17]
       74 GETTABLEKS                       R10 R6 K18 ["children"]
       76 GETTABLEKS                       R11 R5 K18 ["children"]
       78 JUMPIFNOTEQ                      R10 R11 ; [+17]
       80 GETUPVAL                         R10 7
       81 CALL                             R10 0 1
       82 JUMPIF                           R10 ; [+13]
       83 GETUPVAL                         R10 8
       84 MOVE                             R11 R0
       85 MOVE                             R12 R1
       86 MOVE                             R13 R2
       87 CALL                             R10 3 -1
       88 RETURN                           R10 -1
       89 JUMP                             ; [+6]
       90 GETUPVAL                         R10 9
       91 MOVE                             R11 R1
       92 MOVE                             R12 R4
       93 MOVE                             R13 R9
       94 MOVE                             R14 R2
       95 CALL                             R10 4 0
       96 GETTABLEKS                       R8 R5 K18 ["children"]
       98 JUMPIFNOTEQKNIL                  R0 ; [+10]
      100 GETUPVAL                         R9 10
      101 MOVE                             R10 R1
      102 LOADNIL                          R11
      103 MOVE                             R12 R8
      104 MOVE                             R13 R2
      105 CALL                             R9 4 1
      106 SETTABLEKS                       R9 R1 K19 ["child"]
      108 JUMP                             ; [+9]
      109 GETUPVAL                         R9 11
      110 MOVE                             R10 R1
      111 GETTABLEKS                       R11 R0 K19 ["child"]
      113 MOVE                             R12 R8
      114 MOVE                             R13 R2
      115 CALL                             R9 4 1
      116 SETTABLEKS                       R9 R1 K19 ["child"]
      118 GETTABLEKS                       R9 R1 K19 ["child"]
      120 RETURN                           R9 1

PROTO_43:
        0 GETTABLEKS                       R3 R1 K0 ["type"]
        2 GETIMPORT                        R4 K2 [_G]
        4 GETTABLEKS                       R4 R4 K3 ["__DEV__"]
        6 JUMPIFNOT                        R4 ; [+24]
        7 GETTABLEKS                       R4 R3 K4 ["_context"]
        9 JUMPIFNOTEQKNIL                  R4 ; [+19]
       11 GETTABLEKS                       R4 R3 K5 ["Consumer"]
       13 JUMPIFEQ                         R3 R4 ; [+17]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K6 ["usingContextAsConsumer"]
       18 JUMPIF                           R4 ; [+12]
       19 GETUPVAL                         R4 0
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K6 ["usingContextAsConsumer"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K7 ["error"]
       26 LOADK                            R5 K8 ["Rendering <Context> directly is not supported and will be removed in a future major release. Did you mean to render <Context.Consumer> instead?"]
       27 CALL                             R4 1 0
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R3 R3 K4 ["_context"]
       31 GETTABLEKS                       R4 R1 K9 ["pendingProps"]
       33 LOADNIL                          R5
       34 GETTABLEKS                       R6 R4 K10 ["render"]
       36 JUMPIFNOT                        R6 ; [+26]
       37 GETIMPORT                        R6 K2 [_G]
       39 GETTABLEKS                       R6 R6 K3 ["__DEV__"]
       41 JUMPIFNOT                        R6 ; [+18]
       42 GETIMPORT                        R6 K2 [_G]
       44 GETTABLEKS                       R6 R6 K11 ["__COMPAT_WARNINGS__"]
       46 JUMPIFNOT                        R6 ; [+13]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K12 ["usingLegacyConsumer"]
       50 JUMPIF                           R6 ; [+9]
       51 GETUPVAL                         R6 0
       52 LOADB                            R7 1
       53 SETTABLEKS                       R7 R6 K12 ["usingLegacyConsumer"]
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K13 ["warn"]
       58 LOADK                            R7 K14 ["Your Context.Consumer component is using legacy Roact syntax, which won't be supported in future versions of Roact. \nPlease provide no props and supply the 'render' function as a child (the 3rd argument of createElement). For example: \n       createElement(ContextConsumer, {render = function(...) end})\nbecomes:\n       createElement(ContextConsumer, nil, function(...) end)\nFor more info, reference the React documentation here: \nhttps://reactjs.org/docs/context.html#contextconsumer"]
       59 CALL                             R6 1 0
       60 GETTABLEKS                       R5 R4 K10 ["render"]
       62 JUMP                             ; [+2]
       63 GETTABLEKS                       R5 R4 K15 ["children"]
       65 GETIMPORT                        R6 K2 [_G]
       67 GETTABLEKS                       R6 R6 K3 ["__DEV__"]
       69 JUMPIFNOT                        R6 ; [+12]
       70 FASTCALL1                        TYPEOF R5 ; [+3]
       71 MOVE                             R7 R5
       72 GETIMPORT                        R6 K17 [typeof]
       74 CALL                             R6 1 1
       75 JUMPIFEQKS                       R6 K18 ["function"] ; [+6]
       77 GETUPVAL                         R6 1
       78 GETTABLEKS                       R6 R6 K7 ["error"]
       80 LOADK                            R7 K19 ["A context consumer was rendered with multiple children, or a child that isn't a function. A context consumer expects a single child that is a function. If you did pass a function, make sure there is no trailing or leading whitespace around it."]
       81 CALL                             R6 1 0
       82 GETUPVAL                         R6 2
       83 MOVE                             R7 R1
       84 MOVE                             R8 R2
       85 GETUPVAL                         R9 3
       86 GETTABLEKS                       R9 R9 K20 ["markWorkInProgressReceivedUpdate"]
       88 CALL                             R6 3 0
       89 GETUPVAL                         R6 4
       90 MOVE                             R7 R3
       91 GETTABLEKS                       R8 R4 K21 ["unstable_observedBits"]
       93 CALL                             R6 2 1
       94 LOADNIL                          R7
       95 GETIMPORT                        R8 K2 [_G]
       97 GETTABLEKS                       R8 R8 K3 ["__DEV__"]
       99 JUMPIFNOT                        R8 ; [+14]
      100 GETUPVAL                         R8 5
      101 SETTABLEKS                       R1 R8 K22 ["current"]
      103 GETUPVAL                         R8 6
      104 LOADB                            R9 1
      105 CALL                             R8 1 0
      106 MOVE                             R8 R5
      107 MOVE                             R9 R6
      108 CALL                             R8 1 1
      109 MOVE                             R7 R8
      110 GETUPVAL                         R8 6
      111 LOADB                            R9 0
      112 CALL                             R8 1 0
      113 JUMP                             ; [+4]
      114 MOVE                             R8 R5
      115 MOVE                             R9 R6
      116 CALL                             R8 1 1
      117 MOVE                             R7 R8
      118 GETTABLEKS                       R9 R1 K23 ["flags"]
      120 GETUPVAL                         R10 7
      121 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
      123 GETIMPORT                        R8 K26 [bit32.bor]
      125 CALL                             R8 2 1
      126 SETTABLEKS                       R8 R1 K23 ["flags"]
      128 MOVE                             R8 R7
      129 JUMPIFNOTEQKNIL                  R0 ; [+10]
      131 GETUPVAL                         R9 8
      132 MOVE                             R10 R1
      133 LOADNIL                          R11
      134 MOVE                             R12 R8
      135 MOVE                             R13 R2
      136 CALL                             R9 4 1
      137 SETTABLEKS                       R9 R1 K27 ["child"]
      139 JUMP                             ; [+9]
      140 GETUPVAL                         R9 9
      141 MOVE                             R10 R1
      142 GETTABLEKS                       R11 R0 K27 ["child"]
      144 MOVE                             R12 R8
      145 MOVE                             R13 R2
      146 CALL                             R9 4 1
      147 SETTABLEKS                       R9 R1 K27 ["child"]
      149 GETTABLEKS                       R8 R1 K27 ["child"]
      151 RETURN                           R8 1

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
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R3 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+100]
        5 GETTABLEKS                       R3 R1 K3 ["return_"]
        7 JUMPIFNOTEQKNIL                  R3 ; [+5]
        9 GETIMPORT                        R4 K5 [error]
       11 LOADK                            R5 K6 ["Cannot swap the root fiber."]
       12 CALL                             R4 1 0
       13 LOADNIL                          R4
       14 SETTABLEKS                       R4 R0 K7 ["alternate"]
       16 LOADNIL                          R4
       17 SETTABLEKS                       R4 R1 K7 ["alternate"]
       19 GETTABLEKS                       R4 R1 K8 ["index"]
       21 SETTABLEKS                       R4 R2 K8 ["index"]
       23 GETTABLEKS                       R4 R1 K9 ["sibling"]
       25 SETTABLEKS                       R4 R2 K9 ["sibling"]
       27 GETTABLEKS                       R4 R1 K3 ["return_"]
       29 SETTABLEKS                       R4 R2 K3 ["return_"]
       31 GETTABLEKS                       R4 R1 K10 ["ref"]
       33 SETTABLEKS                       R4 R2 K10 ["ref"]
       35 GETTABLEKS                       R4 R3 K11 ["child"]
       37 JUMPIFNOTEQ                      R1 R4 ; [+4]
       39 SETTABLEKS                       R2 R3 K11 ["child"]
       41 JUMP                             ; [+23]
       42 GETTABLEKS                       R4 R3 K11 ["child"]
       44 JUMPIFNOTEQKNIL                  R4 ; [+5]
       46 GETIMPORT                        R5 K5 [error]
       48 LOADK                            R6 K12 ["Expected parent to have a child."]
       49 CALL                             R5 1 0
       50 GETTABLEKS                       R5 R4 K9 ["sibling"]
       52 JUMPIFEQ                         R5 R1 ; [+10]
       54 GETTABLEKS                       R4 R4 K9 ["sibling"]
       56 JUMPIFNOTEQKNIL                  R4 ; [+5]
       58 GETIMPORT                        R5 K5 [error]
       60 LOADK                            R6 K13 ["Expected to find the previous sibling."]
       61 CALL                             R5 1 0
       62 JUMPBACK                         ; [-13]
       63 SETTABLEKS                       R2 R4 K9 ["sibling"]
       65 GETTABLEKS                       R4 R3 K14 ["deletions"]
       67 JUMPIFNOTEQKNIL                  R4 ; [+19]
       69 NEWTABLE                         R5 0 1
       71 MOVE                             R6 R0
       72 SETLIST                          R5 R6 1 [1]
       74 SETTABLEKS                       R5 R3 K14 ["deletions"]
       76 GETTABLEKS                       R6 R3 K15 ["flags"]
       78 GETUPVAL                         R7 0
       79 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       81 GETIMPORT                        R5 K18 [bit32.bor]
       83 CALL                             R5 2 1
       84 SETTABLEKS                       R5 R3 K15 ["flags"]
       86 JUMP                             ; [+7]
       87 FASTCALL2                        TABLE_INSERT R4 R0 ; [+5]
       89 MOVE                             R6 R4
       90 MOVE                             R7 R0
       91 GETIMPORT                        R5 K21 [table.insert]
       93 CALL                             R5 2 0
       94 GETTABLEKS                       R6 R2 K15 ["flags"]
       96 GETUPVAL                         R7 1
       97 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       99 GETIMPORT                        R5 K18 [bit32.bor]
      101 CALL                             R5 2 1
      102 SETTABLEKS                       R5 R2 K15 ["flags"]
      104 RETURN                           R2 1
      105 GETIMPORT                        R3 K5 [error]
      107 LOADK                            R4 K22 ["Did not expect this call in production. This is a bug in React. Please file an issue."]
      108 CALL                             R3 1 0
      109 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R3 R1 K0 ["lanes"]
        2 GETIMPORT                        R4 K2 [_G]
        4 GETTABLEKS                       R4 R4 K3 ["__DEV__"]
        6 JUMPIFNOT                        R4 ; [+26]
        7 GETTABLEKS                       R4 R1 K4 ["_debugNeedsRemount"]
        9 JUMPIFNOT                        R4 ; [+23]
       10 JUMPIFEQKNIL                     R0 ; [+22]
       12 GETGLOBAL                        R4 K5 ["remountFiber"]
       14 MOVE                             R5 R0
       15 MOVE                             R6 R1
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R8 R1 K6 ["type"]
       19 GETTABLEKS                       R9 R1 K7 ["key"]
       21 GETTABLEKS                       R10 R1 K8 ["pendingProps"]
       23 GETTABLEKS                       R12 R1 K10 ["_debugOwner"]
       25 ORK                              R11 R12 K9 []
       26 GETTABLEKS                       R12 R1 K11 ["mode"]
       28 GETTABLEKS                       R13 R1 K0 ["lanes"]
       30 CALL                             R7 6 -1
       31 CALL                             R4 -1 -1
       32 RETURN                           R4 -1
       33 JUMPIFEQKNIL                     R0 ; [+301]
       35 GETTABLEKS                       R4 R0 K12 ["memoizedProps"]
       37 GETTABLEKS                       R5 R1 K8 ["pendingProps"]
       39 LOADNIL                          R6
       40 GETIMPORT                        R7 K2 [_G]
       42 GETTABLEKS                       R7 R7 K3 ["__DEV__"]
       44 JUMPIFNOT                        R7 ; [+9]
       45 GETTABLEKS                       R7 R1 K6 ["type"]
       47 GETTABLEKS                       R8 R0 K6 ["type"]
       49 JUMPIFNOTEQ                      R7 R8 ; [+2]
       51 LOADB                            R6 0 +1
       52 LOADB                            R6 1
       53 JUMP                             ; [+1]
       54 LOADB                            R6 0
       55 JUMPIFNOTEQ                      R4 R5 ; [+5]
       57 GETUPVAL                         R7 1
       58 CALL                             R7 0 1
       59 JUMPIF                           R7 ; [+1]
       60 JUMPIFNOT                        R6 ; [+3]
       61 LOADB                            R7 1
       62 SETUPVAL                         R7 2
       63 JUMP                             ; [+273]
       64 GETUPVAL                         R7 3
       65 GETTABLEKS                       R7 R7 K13 ["includesSomeLane"]
       67 MOVE                             R8 R2
       68 MOVE                             R9 R3
       69 CALL                             R7 2 1
       70 JUMPIF                           R7 ; [+247]
       71 LOADB                            R7 0
       72 SETUPVAL                         R7 2
       73 GETTABLEKS                       R7 R1 K14 ["tag"]
       75 GETUPVAL                         R8 4
       76 JUMPIFNOTEQ                      R7 R8 ; [+37]
       78 GETTABLEKS                       R7 R1 K15 ["stateNode"]
       80 GETTABLEKS                       R8 R7 K16 ["pendingContext"]
       82 JUMPIFNOT                        R8 ; [+14]
       83 GETUPVAL                         R8 5
       84 MOVE                             R9 R1
       85 GETTABLEKS                       R10 R7 K16 ["pendingContext"]
       87 GETTABLEKS                       R12 R7 K16 ["pendingContext"]
       89 GETTABLEKS                       R13 R7 K17 ["context"]
       91 JUMPIFNOTEQ                      R12 R13 ; [+2]
       93 LOADB                            R11 0 +1
       94 LOADB                            R11 1
       95 CALL                             R8 3 0
       96 JUMP                             ; [+9]
       97 GETTABLEKS                       R8 R7 K17 ["context"]
       99 JUMPIFNOT                        R8 ; [+6]
      100 GETUPVAL                         R8 5
      101 MOVE                             R9 R1
      102 GETTABLEKS                       R10 R7 K17 ["context"]
      104 LOADB                            R11 0
      105 CALL                             R8 3 0
      106 GETUPVAL                         R8 6
      107 MOVE                             R9 R1
      108 GETTABLEKS                       R10 R7 K18 ["containerInfo"]
      110 CALL                             R8 2 0
      111 GETUPVAL                         R7 7
      112 CALL                             R7 0 0
      113 JUMP                             ; [+198]
      114 GETTABLEKS                       R7 R1 K14 ["tag"]
      116 GETUPVAL                         R8 8
      117 JUMPIFNOTEQ                      R7 R8 ; [+5]
      119 GETUPVAL                         R7 9
      120 MOVE                             R8 R1
      121 CALL                             R7 1 0
      122 JUMP                             ; [+189]
      123 GETTABLEKS                       R7 R1 K14 ["tag"]
      125 GETUPVAL                         R8 10
      126 JUMPIFNOTEQ                      R7 R8 ; [+11]
      128 GETTABLEKS                       R7 R1 K6 ["type"]
      130 GETUPVAL                         R8 11
      131 MOVE                             R9 R7
      132 CALL                             R8 1 1
      133 JUMPIFNOT                        R8 ; [+178]
      134 GETUPVAL                         R8 12
      135 MOVE                             R9 R1
      136 CALL                             R8 1 0
      137 JUMP                             ; [+174]
      138 GETTABLEKS                       R7 R1 K14 ["tag"]
      140 GETUPVAL                         R8 13
      141 JUMPIFNOTEQ                      R7 R8 ; [+9]
      143 GETUPVAL                         R7 6
      144 MOVE                             R8 R1
      145 GETTABLEKS                       R9 R1 K15 ["stateNode"]
      147 GETTABLEKS                       R9 R9 K18 ["containerInfo"]
      149 CALL                             R7 2 0
      150 JUMP                             ; [+161]
      151 GETTABLEKS                       R7 R1 K14 ["tag"]
      153 GETUPVAL                         R8 14
      154 JUMPIFNOTEQ                      R7 R8 ; [+10]
      156 GETTABLEKS                       R7 R1 K12 ["memoizedProps"]
      158 GETTABLEKS                       R7 R7 K19 ["value"]
      160 GETUPVAL                         R8 15
      161 MOVE                             R9 R1
      162 MOVE                             R10 R7
      163 CALL                             R8 2 0
      164 JUMP                             ; [+147]
      165 GETTABLEKS                       R7 R1 K14 ["tag"]
      167 GETUPVAL                         R8 16
      168 JUMPIFNOTEQ                      R7 R8 ; [+12]
      170 GETUPVAL                         R7 17
      171 JUMPIFNOT                        R7 ; [+140]
      172 GETTABLEKS                       R7 R1 K15 ["stateNode"]
      174 LOADN                            R8 0
      175 SETTABLEKS                       R8 R7 K20 ["effectDuration"]
      177 LOADN                            R8 0
      178 SETTABLEKS                       R8 R7 K21 ["passiveEffectDuration"]
      180 JUMP                             ; [+131]
      181 GETTABLEKS                       R7 R1 K14 ["tag"]
      183 GETUPVAL                         R8 18
      184 JUMPIFNOTEQ                      R7 R8 ; [+77]
      186 GETTABLEKS                       R7 R1 K22 ["memoizedState"]
      188 JUMPIFEQKNIL                     R7 ; [+64]
      190 GETUPVAL                         R8 19
      191 JUMPIFNOT                        R8 ; [+24]
      192 GETTABLEKS                       R8 R7 K23 ["dehydrated"]
      194 JUMPIFEQKNIL                     R8 ; [+21]
      196 GETUPVAL                         R8 20
      197 MOVE                             R9 R1
      198 GETUPVAL                         R10 21
      199 GETUPVAL                         R11 22
      200 GETTABLEKS                       R11 R11 K24 ["current"]
      202 CALL                             R10 1 -1
      203 CALL                             R8 -1 0
      204 GETTABLEKS                       R9 R1 K25 ["flags"]
      206 GETUPVAL                         R10 23
      207 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
      209 GETIMPORT                        R8 K28 [bit32.bor]
      211 CALL                             R8 2 1
      212 SETTABLEKS                       R8 R1 K25 ["flags"]
      214 LOADNIL                          R8
      215 RETURN                           R8 1
      216 GETTABLEKS                       R8 R1 K29 ["child"]
      218 GETTABLEKS                       R9 R8 K30 ["childLanes"]
      220 GETUPVAL                         R10 3
      221 GETTABLEKS                       R10 R10 K13 ["includesSomeLane"]
      223 MOVE                             R11 R2
      224 MOVE                             R12 R9
      225 CALL                             R10 2 1
      226 JUMPIFNOT                        R10 ; [+6]
      227 GETUPVAL                         R10 24
      228 MOVE                             R11 R0
      229 MOVE                             R12 R1
      230 MOVE                             R13 R2
      231 CALL                             R10 3 -1
      232 RETURN                           R10 -1
      233 GETUPVAL                         R10 20
      234 MOVE                             R11 R1
      235 GETUPVAL                         R12 21
      236 GETUPVAL                         R13 22
      237 GETTABLEKS                       R13 R13 K24 ["current"]
      239 CALL                             R12 1 -1
      240 CALL                             R10 -1 0
      241 GETUPVAL                         R10 25
      242 MOVE                             R11 R0
      243 MOVE                             R12 R1
      244 MOVE                             R13 R2
      245 CALL                             R10 3 1
      246 JUMPIFEQKNIL                     R10 ; [+4]
      248 GETTABLEKS                       R11 R10 K31 ["sibling"]
      250 RETURN                           R11 1
      251 LOADNIL                          R11
      252 RETURN                           R11 1
      253 GETUPVAL                         R8 20
      254 MOVE                             R9 R1
      255 GETUPVAL                         R10 21
      256 GETUPVAL                         R11 22
      257 GETTABLEKS                       R11 R11 K24 ["current"]
      259 CALL                             R10 1 -1
      260 CALL                             R8 -1 0
      261 JUMP                             ; [+50]
      262 GETTABLEKS                       R7 R1 K14 ["tag"]
      264 GETUPVAL                         R8 26
      265 JUMPIFNOTEQ                      R7 R8 ; [+25]
      267 GETIMPORT                        R7 K33 [print]
      269 LOADK                            R8 K34 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
      270 CALL                             R7 1 0
      271 GETIMPORT                        R7 K33 [print]
      273 LOADK                            R8 K34 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
      274 CALL                             R7 1 0
      275 GETIMPORT                        R7 K33 [print]
      277 LOADK                            R9 K35 ["UNIMPLEMENTED ERROR: "]
      278 LOADK                            R11 K36 ["beginWork: SuspenseListComponent"]
      279 FASTCALL1                        TOSTRING R11 ; [+2]
      280 GETIMPORT                        R10 K38 [tostring]
      282 CALL                             R10 1 1
      283 CONCAT                           R8 R9 R10
      284 CALL                             R7 1 0
      285 GETIMPORT                        R7 K40 [error]
      287 LOADK                            R8 K41 ["FIXME (roblox): beginWork: SuspenseListComponent is unimplemented"]
      288 LOADN                            R9 2
      289 CALL                             R7 2 0
      290 JUMP                             ; [+21]
      291 GETTABLEKS                       R7 R1 K14 ["tag"]
      293 GETUPVAL                         R8 27
      294 JUMPIFEQ                         R7 R8 ; [+6]
      296 GETTABLEKS                       R7 R1 K14 ["tag"]
      298 GETUPVAL                         R8 28
      299 JUMPIFNOTEQ                      R7 R8 ; [+12]
      301 GETUPVAL                         R7 3
      302 GETTABLEKS                       R7 R7 K42 ["NoLanes"]
      304 SETTABLEKS                       R7 R1 K0 ["lanes"]
      306 GETUPVAL                         R7 29
      307 MOVE                             R8 R0
      308 MOVE                             R9 R1
      309 MOVE                             R10 R2
      310 CALL                             R7 3 1
      311 RETURN                           R7 1
      312 GETUPVAL                         R7 25
      313 MOVE                             R8 R0
      314 MOVE                             R9 R1
      315 MOVE                             R10 R2
      316 CALL                             R7 3 -1
      317 RETURN                           R7 -1
      318 GETTABLEKS                       R8 R0 K25 ["flags"]
      320 GETUPVAL                         R9 30
      321 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
      323 GETIMPORT                        R7 K44 [bit32.band]
      325 CALL                             R7 2 1
      326 GETUPVAL                         R8 31
      327 JUMPIFEQ                         R7 R8 ; [+4]
      329 LOADB                            R7 1
      330 SETUPVAL                         R7 2
      331 JUMP                             ; [+5]
      332 LOADB                            R7 0
      333 SETUPVAL                         R7 2
      334 JUMP                             ; [+2]
      335 LOADB                            R4 0
      336 SETUPVAL                         R4 2
      337 GETUPVAL                         R4 3
      338 GETTABLEKS                       R4 R4 K42 ["NoLanes"]
      340 SETTABLEKS                       R4 R1 K0 ["lanes"]
      342 GETTABLEKS                       R4 R1 K14 ["tag"]
      344 GETUPVAL                         R5 32
      345 GETTABLEKS                       R5 R5 K45 ["IndeterminateComponent"]
      347 JUMPIFNOTEQ                      R4 R5 ; [+9]
      349 GETUPVAL                         R4 33
      350 MOVE                             R5 R0
      351 MOVE                             R6 R1
      352 GETTABLEKS                       R7 R1 K6 ["type"]
      354 MOVE                             R8 R2
      355 CALL                             R4 4 -1
      356 RETURN                           R4 -1
      357 GETTABLEKS                       R4 R1 K14 ["tag"]
      359 GETUPVAL                         R5 34
      360 JUMPIFNOTEQ                      R4 R5 ; [+11]
      362 GETTABLEKS                       R4 R1 K46 ["elementType"]
      364 GETUPVAL                         R5 35
      365 MOVE                             R6 R0
      366 MOVE                             R7 R1
      367 MOVE                             R8 R4
      368 MOVE                             R9 R3
      369 MOVE                             R10 R2
      370 CALL                             R5 5 1
      371 RETURN                           R5 1
      372 GETTABLEKS                       R4 R1 K14 ["tag"]
      374 GETUPVAL                         R5 36
      375 JUMPIFNOTEQ                      R4 R5 ; [+25]
      377 GETTABLEKS                       R4 R1 K6 ["type"]
      379 GETTABLEKS                       R5 R1 K8 ["pendingProps"]
      381 LOADNIL                          R6
      382 GETTABLEKS                       R7 R1 K46 ["elementType"]
      384 JUMPIFNOTEQ                      R7 R4 ; [+3]
      386 MOVE                             R6 R5
      387 JUMP                             ; [+5]
      388 GETUPVAL                         R7 37
      389 MOVE                             R8 R4
      390 MOVE                             R9 R5
      391 CALL                             R7 2 1
      392 MOVE                             R6 R7
      393 GETUPVAL                         R7 38
      394 MOVE                             R8 R0
      395 MOVE                             R9 R1
      396 MOVE                             R10 R4
      397 MOVE                             R11 R6
      398 MOVE                             R12 R2
      399 CALL                             R7 5 -1
      400 RETURN                           R7 -1
      401 GETTABLEKS                       R4 R1 K14 ["tag"]
      403 GETUPVAL                         R5 10
      404 JUMPIFNOTEQ                      R4 R5 ; [+23]
      406 GETTABLEKS                       R4 R1 K6 ["type"]
      408 GETTABLEKS                       R5 R1 K8 ["pendingProps"]
      410 GETTABLEKS                       R7 R1 K46 ["elementType"]
      412 JUMPIFNOTEQ                      R7 R4 ; [+3]
      414 MOVE                             R6 R5
      415 JUMPIF                           R6 ; [+4]
      416 GETUPVAL                         R6 37
      417 MOVE                             R7 R4
      418 MOVE                             R8 R5
      419 CALL                             R6 2 1
      420 GETUPVAL                         R7 39
      421 MOVE                             R8 R0
      422 MOVE                             R9 R1
      423 MOVE                             R10 R4
      424 MOVE                             R11 R6
      425 MOVE                             R12 R2
      426 CALL                             R7 5 1
      427 RETURN                           R7 1
      428 GETTABLEKS                       R4 R1 K14 ["tag"]
      430 GETUPVAL                         R5 4
      431 JUMPIFNOTEQ                      R4 R5 ; [+7]
      433 GETUPVAL                         R4 40
      434 MOVE                             R5 R0
      435 MOVE                             R6 R1
      436 MOVE                             R7 R2
      437 CALL                             R4 3 -1
      438 RETURN                           R4 -1
      439 GETTABLEKS                       R4 R1 K14 ["tag"]
      441 GETUPVAL                         R5 8
      442 JUMPIFNOTEQ                      R4 R5 ; [+7]
      444 GETUPVAL                         R4 41
      445 MOVE                             R5 R0
      446 MOVE                             R6 R1
      447 MOVE                             R7 R2
      448 CALL                             R4 3 1
      449 RETURN                           R4 1
      450 GETTABLEKS                       R4 R1 K14 ["tag"]
      452 GETUPVAL                         R5 42
      453 JUMPIFNOTEQ                      R4 R5 ; [+8]
      455 JUMPIFNOTEQKNIL                  R0 ; [+4]
      457 GETUPVAL                         R5 43
      458 MOVE                             R6 R1
      459 CALL                             R5 1 0
      460 LOADNIL                          R4
      461 RETURN                           R4 1
      462 GETTABLEKS                       R4 R1 K14 ["tag"]
      464 GETUPVAL                         R5 18
      465 JUMPIFNOTEQ                      R4 R5 ; [+7]
      467 GETUPVAL                         R4 24
      468 MOVE                             R5 R0
      469 MOVE                             R6 R1
      470 MOVE                             R7 R2
      471 CALL                             R4 3 -1
      472 RETURN                           R4 -1
      473 GETTABLEKS                       R4 R1 K14 ["tag"]
      475 GETUPVAL                         R5 13
      476 JUMPIFNOTEQ                      R4 R5 ; [+8]
      478 GETGLOBAL                        R4 K47 ["updatePortalComponent"]
      480 MOVE                             R5 R0
      481 MOVE                             R6 R1
      482 MOVE                             R7 R2
      483 CALL                             R4 3 -1
      484 RETURN                           R4 -1
      485 GETTABLEKS                       R4 R1 K14 ["tag"]
      487 GETUPVAL                         R5 44
      488 JUMPIFNOTEQ                      R4 R5 ; [+23]
      490 GETTABLEKS                       R4 R1 K6 ["type"]
      492 GETTABLEKS                       R5 R1 K8 ["pendingProps"]
      494 MOVE                             R6 R5
      495 GETTABLEKS                       R7 R1 K46 ["elementType"]
      497 JUMPIFEQ                         R7 R4 ; [+6]
      499 GETUPVAL                         R7 37
      500 MOVE                             R8 R4
      501 MOVE                             R9 R5
      502 CALL                             R7 2 1
      503 MOVE                             R6 R7
      504 GETUPVAL                         R7 45
      505 MOVE                             R8 R0
      506 MOVE                             R9 R1
      507 MOVE                             R10 R4
      508 MOVE                             R11 R6
      509 MOVE                             R12 R2
      510 CALL                             R7 5 -1
      511 RETURN                           R7 -1
      512 GETTABLEKS                       R4 R1 K14 ["tag"]
      514 GETUPVAL                         R5 46
      515 JUMPIFNOTEQ                      R4 R5 ; [+8]
      517 GETGLOBAL                        R4 K48 ["updateFragment"]
      519 MOVE                             R5 R0
      520 MOVE                             R6 R1
      521 MOVE                             R7 R2
      522 CALL                             R4 3 -1
      523 RETURN                           R4 -1
      524 GETTABLEKS                       R4 R1 K14 ["tag"]
      526 GETUPVAL                         R5 47
      527 JUMPIFNOTEQ                      R4 R5 ; [+8]
      529 GETGLOBAL                        R4 K49 ["updateMode"]
      531 MOVE                             R5 R0
      532 MOVE                             R6 R1
      533 MOVE                             R7 R2
      534 CALL                             R4 3 -1
      535 RETURN                           R4 -1
      536 GETTABLEKS                       R4 R1 K14 ["tag"]
      538 GETUPVAL                         R5 16
      539 JUMPIFNOTEQ                      R4 R5 ; [+8]
      541 GETGLOBAL                        R4 K50 ["updateProfiler"]
      543 MOVE                             R5 R0
      544 MOVE                             R6 R1
      545 MOVE                             R7 R2
      546 CALL                             R4 3 -1
      547 RETURN                           R4 -1
      548 GETTABLEKS                       R4 R1 K14 ["tag"]
      550 GETUPVAL                         R5 14
      551 JUMPIFNOTEQ                      R4 R5 ; [+7]
      553 GETUPVAL                         R4 48
      554 MOVE                             R5 R0
      555 MOVE                             R6 R1
      556 MOVE                             R7 R2
      557 CALL                             R4 3 -1
      558 RETURN                           R4 -1
      559 GETTABLEKS                       R4 R1 K14 ["tag"]
      561 GETUPVAL                         R5 49
      562 JUMPIFNOTEQ                      R4 R5 ; [+8]
      564 GETGLOBAL                        R4 K51 ["updateContextConsumer"]
      566 MOVE                             R5 R0
      567 MOVE                             R6 R1
      568 MOVE                             R7 R2
      569 CALL                             R4 3 -1
      570 RETURN                           R4 -1
      571 GETTABLEKS                       R4 R1 K14 ["tag"]
      573 GETUPVAL                         R5 50
      574 JUMPIFNOTEQ                      R4 R5 ; [+64]
      576 GETTABLEKS                       R4 R1 K6 ["type"]
      578 GETTABLEKS                       R5 R1 K8 ["pendingProps"]
      580 GETUPVAL                         R6 37
      581 MOVE                             R7 R4
      582 MOVE                             R8 R5
      583 CALL                             R6 2 1
      584 GETIMPORT                        R7 K2 [_G]
      586 GETTABLEKS                       R7 R7 K3 ["__DEV__"]
      588 JUMPIF                           R7 ; [+5]
      589 GETIMPORT                        R7 K2 [_G]
      591 GETTABLEKS                       R7 R7 K52 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
      593 JUMPIFNOT                        R7 ; [+30]
      594 GETTABLEKS                       R7 R1 K6 ["type"]
      596 GETTABLEKS                       R8 R1 K46 ["elementType"]
      598 JUMPIFEQ                         R7 R8 ; [+25]
      600 LOADNIL                          R7
      601 LOADNIL                          R8
      602 FASTCALL1                        TYPEOF R4 ; [+3]
      603 MOVE                             R10 R4
      604 GETIMPORT                        R9 K54 [typeof]
      606 CALL                             R9 1 1
      607 JUMPIFNOTEQKS                    R9 K55 ["table"] ; [+5]
      609 GETTABLEKS                       R7 R4 K56 ["propTypes"]
      611 GETTABLEKS                       R8 R4 K57 ["validateProps"]
      613 JUMPIF                           R7 ; [+1]
      614 JUMPIFNOT                        R8 ; [+9]
      615 GETUPVAL                         R9 51
      616 MOVE                             R10 R7
      617 MOVE                             R11 R8
      618 MOVE                             R12 R6
      619 LOADK                            R13 K58 ["prop"]
      620 GETUPVAL                         R14 52
      621 MOVE                             R15 R4
      622 CALL                             R14 1 -1
      623 CALL                             R9 -1 0
      624 GETUPVAL                         R7 37
      625 GETTABLEKS                       R8 R4 K6 ["type"]
      627 MOVE                             R9 R6
      628 CALL                             R7 2 1
      629 MOVE                             R6 R7
      630 GETUPVAL                         R7 53
      631 MOVE                             R8 R0
      632 MOVE                             R9 R1
      633 MOVE                             R10 R4
      634 MOVE                             R11 R6
      635 MOVE                             R12 R3
      636 MOVE                             R13 R2
      637 CALL                             R7 6 -1
      638 RETURN                           R7 -1
      639 GETTABLEKS                       R4 R1 K14 ["tag"]
      641 GETUPVAL                         R5 54
      642 JUMPIFNOTEQ                      R4 R5 ; [+12]
      644 GETUPVAL                         R4 55
      645 MOVE                             R5 R0
      646 MOVE                             R6 R1
      647 GETTABLEKS                       R7 R1 K6 ["type"]
      649 GETTABLEKS                       R8 R1 K8 ["pendingProps"]
      651 MOVE                             R9 R3
      652 MOVE                             R10 R2
      653 CALL                             R4 6 -1
      654 RETURN                           R4 -1
      655 GETTABLEKS                       R4 R1 K14 ["tag"]
      657 GETUPVAL                         R5 56
      658 JUMPIFNOTEQ                      R4 R5 ; [+24]
      660 GETTABLEKS                       R4 R1 K6 ["type"]
      662 GETTABLEKS                       R5 R1 K8 ["pendingProps"]
      664 GETTABLEKS                       R7 R1 K46 ["elementType"]
      666 JUMPIFNOTEQ                      R7 R4 ; [+3]
      668 MOVE                             R6 R5
      669 JUMPIF                           R6 ; [+4]
      670 GETUPVAL                         R6 37
      671 MOVE                             R7 R4
      672 MOVE                             R8 R5
      673 CALL                             R6 2 1
      674 GETGLOBAL                        R7 K59 ["mountIncompleteClassComponent"]
      676 MOVE                             R8 R0
      677 MOVE                             R9 R1
      678 MOVE                             R10 R4
      679 MOVE                             R11 R6
      680 MOVE                             R12 R2
      681 CALL                             R7 5 -1
      682 RETURN                           R7 -1
      683 GETTABLEKS                       R4 R1 K14 ["tag"]
      685 GETUPVAL                         R5 27
      686 JUMPIFNOTEQ                      R4 R5 ; [+7]
      688 GETUPVAL                         R4 29
      689 MOVE                             R5 R0
      690 MOVE                             R6 R1
      691 MOVE                             R7 R2
      692 CALL                             R4 3 1
      693 RETURN                           R4 1
      694 GETTABLEKS                       R4 R1 K14 ["tag"]
      696 GETUPVAL                         R5 28
      697 JUMPIFNOTEQ                      R4 R5 ; [+7]
      699 GETUPVAL                         R4 57
      700 MOVE                             R5 R0
      701 MOVE                             R6 R1
      702 MOVE                             R7 R2
      703 CALL                             R4 3 1
      704 RETURN                           R4 1
      705 GETUPVAL                         R4 58
      706 LOADB                            R5 0
      707 LOADK                            R6 K60 ["Unknown unit of work tag (%s). This error is likely caused by a bug in React. Please file an issue."]
      708 GETTABLEKS                       R8 R1 K14 ["tag"]
      710 FASTCALL1                        TOSTRING R8 ; [+2]
      711 GETIMPORT                        R7 K38 [tostring]
      713 CALL                             R7 1 1
      714 CALL                             R4 3 0
      715 LOADNIL                          R4
      716 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R1 K2 [script]
        4 GETTABLEKS                       R1 R1 K3 ["Parent"]
        6 GETTABLEKS                       R1 R1 K3 ["Parent"]
        8 GETIMPORT                        R2 K5 [require]
       10 GETTABLEKS                       R3 R1 K6 ["Shared"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K7 ["console"]
       15 GETIMPORT                        R4 K5 [require]
       17 GETTABLEKS                       R5 R1 K8 ["LuauPolyfill"]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R4 K9 ["Array"]
       22 GETTABLEKS                       R6 R4 K10 ["Object"]
       24 GETTABLEKS                       R7 R4 K11 ["util"]
       26 GETTABLEKS                       R7 R7 K12 ["inspect"]
       28 GETIMPORT                        R8 K5 [require]
       30 GETTABLEKS                       R9 R1 K6 ["Shared"]
       32 CALL                             R8 1 1
       33 GETIMPORT                        R9 K5 [require]
       35 GETTABLEKS                       R10 R1 K13 ["React"]
       37 CALL                             R9 1 1
       38 GETIMPORT                        R10 K5 [require]
       40 GETIMPORT                        R11 K2 [script]
       42 GETTABLEKS                       R11 R11 K3 ["Parent"]
       44 GETTABLEKS                       R11 R11 K14 ["ReactInternalTypes"]
       46 CALL                             R10 1 1
       47 GETIMPORT                        R11 K5 [require]
       49 GETIMPORT                        R12 K2 [script]
       51 GETTABLEKS                       R12 R12 K3 ["Parent"]
       53 GETTABLEKS                       R12 R12 K15 ["ReactFiberLane"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K5 [require]
       58 GETIMPORT                        R14 K2 [script]
       60 GETTABLEKS                       R14 R14 K3 ["Parent"]
       62 GETTABLEKS                       R13 R14 K16 ["ReactFiberSuspenseComponent.new"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K5 [require]
       67 GETIMPORT                        R15 K2 [script]
       69 GETTABLEKS                       R15 R15 K3 ["Parent"]
       71 GETTABLEKS                       R14 R15 K17 ["ReactFiberSuspenseContext.new"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETIMPORT                        R15 K2 [script]
       78 GETTABLEKS                       R15 R15 K3 ["Parent"]
       80 GETTABLEKS                       R15 R15 K18 ["ReactFiberOffscreenComponent"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R16 R1 K6 ["Shared"]
       87 CALL                             R15 1 1
       88 GETTABLEKS                       R15 R15 K19 ["checkPropTypes"]
       90 GETIMPORT                        R16 K5 [require]
       92 GETIMPORT                        R17 K2 [script]
       94 GETTABLEKS                       R17 R17 K3 ["Parent"]
       96 GETTABLEKS                       R17 R17 K20 ["ReactWorkTags"]
       98 CALL                             R16 1 1
       99 GETTABLEKS                       R17 R16 K21 ["FunctionComponent"]
      101 GETTABLEKS                       R18 R16 K22 ["ClassComponent"]
      103 GETTABLEKS                       R19 R16 K23 ["HostRoot"]
      105 GETTABLEKS                       R20 R16 K24 ["HostComponent"]
      107 GETTABLEKS                       R21 R16 K25 ["HostText"]
      109 GETTABLEKS                       R22 R16 K26 ["HostPortal"]
      111 GETTABLEKS                       R23 R16 K27 ["ForwardRef"]
      113 GETTABLEKS                       R24 R16 K28 ["Fragment"]
      115 GETTABLEKS                       R25 R16 K29 ["Mode"]
      117 GETTABLEKS                       R26 R16 K30 ["ContextProvider"]
      119 GETTABLEKS                       R27 R16 K31 ["ContextConsumer"]
      121 GETTABLEKS                       R28 R16 K32 ["Profiler"]
      123 GETTABLEKS                       R29 R16 K33 ["SuspenseComponent"]
      125 GETTABLEKS                       R30 R16 K34 ["SuspenseListComponent"]
      127 GETTABLEKS                       R31 R16 K35 ["MemoComponent"]
      129 GETTABLEKS                       R32 R16 K36 ["SimpleMemoComponent"]
      131 GETTABLEKS                       R33 R16 K37 ["LazyComponent"]
      133 GETTABLEKS                       R34 R16 K38 ["IncompleteClassComponent"]
      135 GETTABLEKS                       R35 R16 K39 ["OffscreenComponent"]
      137 GETTABLEKS                       R36 R16 K40 ["LegacyHiddenComponent"]
      139 GETIMPORT                        R37 K5 [require]
      141 GETIMPORT                        R38 K2 [script]
      143 GETTABLEKS                       R38 R38 K3 ["Parent"]
      145 GETTABLEKS                       R38 R38 K41 ["ReactFiberFlags"]
      147 CALL                             R37 1 1
      148 GETTABLEKS                       R38 R37 K42 ["NoFlags"]
      150 GETTABLEKS                       R39 R37 K43 ["StaticMask"]
      152 GETTABLEKS                       R40 R37 K44 ["PerformedWork"]
      154 GETTABLEKS                       R41 R37 K45 ["Placement"]
      156 GETTABLEKS                       R42 R37 K46 ["Hydrating"]
      158 GETTABLEKS                       R43 R37 K47 ["ContentReset"]
      160 GETTABLEKS                       R44 R37 K48 ["DidCapture"]
      162 GETTABLEKS                       R45 R37 K49 ["Ref"]
      164 GETTABLEKS                       R46 R37 K50 ["Deletion"]
      166 GETTABLEKS                       R47 R37 K51 ["ForceUpdateForLegacySuspense"]
      168 GETIMPORT                        R48 K5 [require]
      170 GETTABLEKS                       R49 R1 K6 ["Shared"]
      172 CALL                             R48 1 1
      173 GETTABLEKS                       R48 R48 K52 ["ReactSharedInternals"]
      175 GETIMPORT                        R49 K5 [require]
      177 GETTABLEKS                       R50 R1 K6 ["Shared"]
      179 CALL                             R49 1 1
      180 GETTABLEKS                       R49 R49 K53 ["ReactFeatureFlags"]
      182 GETTABLEKS                       R50 R49 K54 ["debugRenderPhaseSideEffectsForStrictMode"]
      184 GETTABLEKS                       R51 R49 K55 ["disableLegacyContext"]
      186 GETTABLEKS                       R52 R49 K56 ["disableModulePatternComponents"]
      188 GETTABLEKS                       R53 R49 K57 ["enableProfilerTimer"]
      190 GETTABLEKS                       R54 R49 K58 ["enableSchedulerTracing"]
      192 GETTABLEKS                       R55 R49 K59 ["enableSuspenseServerRenderer"]
      194 GETTABLEKS                       R56 R49 K60 ["warnAboutDefaultPropsOnFunctionComponents"]
      196 GETIMPORT                        R57 K5 [require]
      198 GETTABLEKS                       R58 R1 K6 ["Shared"]
      200 CALL                             R57 1 1
      201 GETTABLEKS                       R57 R57 K61 ["invariant"]
      203 GETIMPORT                        R58 K5 [require]
      205 GETTABLEKS                       R59 R1 K6 ["Shared"]
      207 CALL                             R58 1 1
      208 GETTABLEKS                       R58 R58 K62 ["shallowEqual"]
      210 GETIMPORT                        R59 K5 [require]
      212 GETTABLEKS                       R60 R1 K6 ["Shared"]
      214 CALL                             R59 1 1
      215 GETTABLEKS                       R59 R59 K63 ["getComponentName"]
      217 GETIMPORT                        R60 K5 [require]
      219 GETTABLEKS                       R61 R1 K6 ["Shared"]
      221 CALL                             R60 1 1
      222 GETTABLEKS                       R60 R60 K64 ["ReactSymbols"]
      224 GETTABLEKS                       R61 R60 K65 ["REACT_LAZY_TYPE"]
      226 GETTABLEKS                       R62 R60 K66 ["getIteratorFn"]
      228 GETIMPORT                        R63 K5 [require]
      230 GETIMPORT                        R65 K2 [script]
      232 GETTABLEKS                       R65 R65 K3 ["Parent"]
      234 GETTABLEKS                       R64 R65 K67 ["ReactStrictModeWarnings.new"]
      236 CALL                             R63 1 1
      237 GETIMPORT                        R64 K5 [require]
      239 GETIMPORT                        R65 K2 [script]
      241 GETTABLEKS                       R65 R65 K3 ["Parent"]
      243 GETTABLEKS                       R65 R65 K68 ["ReactCurrentFiber"]
      245 CALL                             R64 1 1
      246 GETTABLEKS                       R65 R64 K69 ["getCurrentFiberOwnerNameInDevOrNull"]
      248 GETTABLEKS                       R66 R64 K70 ["setIsRendering"]
      250 GETIMPORT                        R67 K5 [require]
      252 GETIMPORT                        R69 K2 [script]
      254 GETTABLEKS                       R69 R69 K3 ["Parent"]
      256 GETTABLEKS                       R68 R69 K71 ["ReactFiberHotReloading.new"]
      258 CALL                             R67 1 1
      259 GETTABLEKS                       R68 R67 K72 ["resolveFunctionForHotReloading"]
      261 GETTABLEKS                       R69 R67 K73 ["resolveForwardRefForHotReloading"]
      263 GETTABLEKS                       R70 R67 K74 ["resolveClassForHotReloading"]
      265 GETIMPORT                        R71 K5 [require]
      267 GETIMPORT                        R73 K2 [script]
      269 GETTABLEKS                       R73 R73 K3 ["Parent"]
      271 GETTABLEKS                       R72 R73 K75 ["ReactChildFiber.new"]
      273 CALL                             R71 1 1
      274 GETTABLEKS                       R72 R71 K76 ["mountChildFibers"]
      276 GETTABLEKS                       R73 R71 K77 ["reconcileChildFibers"]
      278 GETTABLEKS                       R74 R71 K78 ["cloneChildFibers"]
      280 GETIMPORT                        R75 K5 [require]
      282 GETIMPORT                        R77 K2 [script]
      284 GETTABLEKS                       R77 R77 K3 ["Parent"]
      286 GETTABLEKS                       R76 R77 K79 ["ReactUpdateQueue.new"]
      288 CALL                             R75 1 1
      289 GETTABLEKS                       R76 R75 K80 ["processUpdateQueue"]
      291 GETTABLEKS                       R77 R75 K81 ["cloneUpdateQueue"]
      293 GETTABLEKS                       R78 R75 K82 ["initializeUpdateQueue"]
      295 GETIMPORT                        R79 K5 [require]
      297 GETIMPORT                        R80 K2 [script]
      299 GETTABLEKS                       R80 R80 K3 ["Parent"]
      301 GETTABLEKS                       R80 R80 K83 ["ReactTypeOfMode"]
      303 CALL                             R79 1 1
      304 GETTABLEKS                       R80 R79 K84 ["ConcurrentMode"]
      306 GETTABLEKS                       R81 R79 K85 ["NoMode"]
      308 GETTABLEKS                       R82 R79 K86 ["ProfileMode"]
      310 GETTABLEKS                       R83 R79 K87 ["StrictMode"]
      312 GETTABLEKS                       R84 R79 K88 ["BlockingMode"]
      314 GETIMPORT                        R85 K5 [require]
      316 GETIMPORT                        R86 K2 [script]
      318 GETTABLEKS                       R86 R86 K3 ["Parent"]
      320 GETTABLEKS                       R86 R86 K89 ["ReactFiberHostConfig"]
      322 CALL                             R85 1 1
      323 GETTABLEKS                       R86 R85 K90 ["shouldSetTextContent"]
      325 GETTABLEKS                       R87 R85 K91 ["isSuspenseInstancePending"]
      327 GETTABLEKS                       R88 R85 K92 ["isSuspenseInstanceFallback"]
      329 GETTABLEKS                       R89 R85 K93 ["registerSuspenseInstanceRetry"]
      331 GETTABLEKS                       R90 R85 K94 ["supportsHydration"]
      333 GETIMPORT                        R91 K5 [require]
      335 GETIMPORT                        R93 K2 [script]
      337 GETTABLEKS                       R93 R93 K3 ["Parent"]
      339 GETTABLEKS                       R92 R93 K95 ["ReactFiberHostContext.new"]
      341 CALL                             R91 1 1
      342 GETTABLEKS                       R92 R91 K96 ["pushHostContext"]
      344 GETTABLEKS                       R93 R91 K97 ["pushHostContainer"]
      346 GETTABLEKS                       R94 R13 K98 ["suspenseStackCursor"]
      348 GETTABLEKS                       R95 R13 K99 ["hasSuspenseContext"]
      350 GETTABLEKS                       R96 R13 K100 ["ForceSuspenseFallback"]
      352 GETTABLEKS                       R97 R13 K101 ["addSubtreeSuspenseContext"]
      354 GETTABLEKS                       R98 R13 K102 ["InvisibleParentSuspenseContext"]
      356 GETTABLEKS                       R99 R13 K103 ["pushSuspenseContext"]
      358 GETTABLEKS                       R100 R13 K104 ["setDefaultShallowSuspenseContext"]
      360 GETIMPORT                        R101 K5 [require]
      362 GETIMPORT                        R103 K2 [script]
      364 GETTABLEKS                       R103 R103 K3 ["Parent"]
      366 GETTABLEKS                       R102 R103 K105 ["ReactFiberNewContext.new"]
      368 CALL                             R101 1 1
      369 GETTABLEKS                       R102 R101 K106 ["propagateContextChange"]
      371 GETTABLEKS                       R103 R101 K107 ["readContext"]
      373 GETTABLEKS                       R104 R101 K108 ["calculateChangedBits"]
      375 GETTABLEKS                       R105 R101 K109 ["prepareToReadContext"]
      377 GETTABLEKS                       R106 R101 K110 ["pushProvider"]
      379 DUPTABLE                         R107 K115 [{["renderWithHooksRef"] = , ["bailoutHooksRef"] = , ["shouldSuspendRef"] = }]
      380 DUPCLOSURE                       R108 K116 [PROTO_1]
      381 CAPTURE                          VAL R107
      382 DUPCLOSURE                       R109 K117 [PROTO_2]
      383 CAPTURE                          VAL R107
      384 DUPCLOSURE                       R110 K118 [PROTO_3]
      385 CAPTURE                          VAL R107
      386 DUPCLOSURE                       R111 K119 [PROTO_4]
      387 CAPTURE                          VAL R107
      388 GETIMPORT                        R112 K5 [require]
      390 GETIMPORT                        R114 K2 [script]
      392 GETTABLEKS                       R114 R114 K3 ["Parent"]
      394 GETTABLEKS                       R113 R114 K120 ["ReactProfilerTimer.new"]
      396 CALL                             R112 1 1
      397 GETTABLEKS                       R112 R112 K121 ["stopProfilerTimerIfRunning"]
      399 GETIMPORT                        R113 K5 [require]
      401 GETIMPORT                        R115 K2 [script]
      403 GETTABLEKS                       R115 R115 K3 ["Parent"]
      405 GETTABLEKS                       R114 R115 K122 ["ReactFiberContext.new"]
      407 CALL                             R113 1 1
      408 GETTABLEKS                       R114 R113 K123 ["getMaskedContext"]
      410 GETTABLEKS                       R115 R113 K124 ["getUnmaskedContext"]
      412 GETTABLEKS                       R116 R113 K125 ["hasContextChanged"]
      414 GETTABLEKS                       R117 R113 K126 ["pushContextProvider"]
      416 GETTABLEKS                       R118 R113 K127 ["isContextProvider"]
      418 GETTABLEKS                       R119 R113 K128 ["pushTopLevelContextObject"]
      420 GETTABLEKS                       R120 R113 K129 ["invalidateContextProvider"]
      422 GETIMPORT                        R121 K5 [require]
      424 GETIMPORT                        R123 K2 [script]
      426 GETTABLEKS                       R123 R123 K3 ["Parent"]
      428 GETTABLEKS                       R122 R123 K130 ["ReactFiberHydrationContext.new"]
      430 CALL                             R121 1 1
      431 GETTABLEKS                       R122 R121 K131 ["resetHydrationState"]
      433 GETTABLEKS                       R123 R121 K132 ["enterHydrationState"]
      435 GETTABLEKS                       R124 R121 K133 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
      437 GETTABLEKS                       R125 R121 K134 ["tryToClaimNextHydratableInstance"]
      439 GETTABLEKS                       R126 R121 K135 ["warnIfHydrating"]
      441 GETIMPORT                        R127 K5 [require]
      443 GETIMPORT                        R129 K2 [script]
      445 GETTABLEKS                       R129 R129 K3 ["Parent"]
      447 GETTABLEKS                       R128 R129 K136 ["ReactFiberClassComponent.new"]
      449 CALL                             R127 1 1
      450 GETTABLEKS                       R128 R127 K137 ["adoptClassInstance"]
      452 GETTABLEKS                       R129 R127 K138 ["applyDerivedStateFromProps"]
      454 GETTABLEKS                       R130 R127 K139 ["constructClassInstance"]
      456 GETTABLEKS                       R131 R127 K140 ["mountClassInstance"]
      458 GETTABLEKS                       R132 R127 K141 ["resumeMountClassInstance"]
      460 GETTABLEKS                       R133 R127 K142 ["updateClassInstance"]
      462 GETIMPORT                        R134 K5 [require]
      464 GETIMPORT                        R136 K2 [script]
      466 GETTABLEKS                       R136 R136 K3 ["Parent"]
      468 GETTABLEKS                       R135 R136 K143 ["ReactFiberLazyComponent.new"]
      470 CALL                             R134 1 1
      471 GETTABLEKS                       R134 R134 K144 ["resolveDefaultProps"]
      473 GETIMPORT                        R135 K5 [require]
      475 GETIMPORT                        R137 K2 [script]
      477 GETTABLEKS                       R137 R137 K3 ["Parent"]
      479 GETTABLEKS                       R136 R137 K145 ["ReactFiber.new"]
      481 CALL                             R135 1 1
      482 GETTABLEKS                       R136 R135 K146 ["resolveLazyComponentTag"]
      484 GETTABLEKS                       R137 R135 K147 ["createFiberFromFragment"]
      486 GETTABLEKS                       R138 R135 K148 ["createFiberFromOffscreen"]
      488 GETTABLEKS                       R139 R135 K149 ["createFiberFromTypeAndProps"]
      490 GETTABLEKS                       R140 R135 K150 ["isSimpleFunctionComponent"]
      492 GETTABLEKS                       R141 R135 K151 ["createWorkInProgress"]
      494 GETIMPORT                        R142 K5 [require]
      496 GETIMPORT                        R144 K2 [script]
      498 GETTABLEKS                       R144 R144 K3 ["Parent"]
      500 GETTABLEKS                       R143 R144 K152 ["ReactFiberWorkLoop.new"]
      502 CALL                             R142 1 1
      503 GETTABLEKS                       R143 R142 K153 ["pushRenderLanes"]
      505 GETTABLEKS                       R144 R142 K154 ["markSpawnedWork"]
      507 GETTABLEKS                       R145 R142 K155 ["retryDehydratedSuspenseBoundary"]
      509 GETTABLEKS                       R146 R142 K156 ["scheduleUpdateOnFiber"]
      511 GETTABLEKS                       R147 R142 K157 ["renderDidSuspendDelayIfPossible"]
      513 GETTABLEKS                       R148 R142 K158 ["getWorkInProgressRoot"]
      515 GETTABLEKS                       R149 R142 K159 ["getExecutionContext"]
      517 GETTABLEKS                       R150 R142 K160 ["RetryAfterError"]
      519 GETTABLEKS                       R151 R142 K161 ["NoContext"]
      521 LOADNIL                          R152
      522 GETIMPORT                        R153 K5 [require]
      524 GETIMPORT                        R155 K2 [script]
      526 GETTABLEKS                       R155 R155 K3 ["Parent"]
      528 GETTABLEKS                       R154 R155 K162 ["ReactMutableSource.new"]
      530 CALL                             R153 1 1
      531 GETTABLEKS                       R153 R153 K163 ["setWorkInProgressVersion"]
      533 GETIMPORT                        R154 K5 [require]
      535 GETIMPORT                        R155 K2 [script]
      537 GETTABLEKS                       R155 R155 K3 ["Parent"]
      539 GETTABLEKS                       R155 R155 K164 ["ReactFiberWorkInProgress"]
      541 CALL                             R154 1 1
      542 GETTABLEKS                       R154 R154 K165 ["markSkippedUpdateLanes"]
      544 GETIMPORT                        R155 K5 [require]
      546 GETTABLEKS                       R156 R1 K6 ["Shared"]
      548 CALL                             R155 1 1
      549 GETTABLEKS                       R155 R155 K166 ["ConsolePatchingDev"]
      551 GETTABLEKS                       R156 R155 K167 ["disableLogs"]
      553 GETTABLEKS                       R157 R155 K168 ["reenableLogs"]
      555 GETTABLEKS                       R158 R48 K169 ["ReactCurrentOwner"]
      557 NEWTABLE                         R159 4 0
      559 LOADNIL                          R160
      560 LOADNIL                          R161
      561 LOADB                            R162 0
      562 DUPTABLE                         R163 K176 [{["didWarnAboutBadClass"] = , ["didWarnAboutModulePatternComponent"] = , ["didWarnAboutContextTypeOnFunctionComponent"] = , ["didWarnAboutGetDerivedStateOnFunctionComponent"] = , ["didWarnAboutFunctionRefs"] = , ["didWarnAboutDefaultPropsOnFunctionComponent"] = }]
      563 LOADNIL                          R164
      564 GETIMPORT                        R165 K178 [_G]
      566 GETTABLEKS                       R165 R165 K179 ["__DEV__"]
      568 JUMPIFNOT                        R165 ; [+27]
      569 NEWTABLE                         R165 0 0
      571 SETTABLEKS                       R165 R163 K170 ["didWarnAboutBadClass"]
      573 NEWTABLE                         R165 0 0
      575 SETTABLEKS                       R165 R163 K171 ["didWarnAboutModulePatternComponent"]
      577 NEWTABLE                         R165 0 0
      579 SETTABLEKS                       R165 R163 K172 ["didWarnAboutContextTypeOnFunctionComponent"]
      581 NEWTABLE                         R165 0 0
      583 SETTABLEKS                       R165 R163 K173 ["didWarnAboutGetDerivedStateOnFunctionComponent"]
      585 NEWTABLE                         R165 0 0
      587 SETTABLEKS                       R165 R163 K174 ["didWarnAboutFunctionRefs"]
      589 LOADB                            R165 0
      590 SETTABLEKS                       R165 R159 K180 ["didWarnAboutReassigningProps"]
      592 NEWTABLE                         R165 0 0
      594 SETTABLEKS                       R165 R163 K175 ["didWarnAboutDefaultPropsOnFunctionComponent"]
      596 DUPCLOSURE                       R165 K181 [PROTO_5]
      597 CAPTURE                          VAL R72
      598 CAPTURE                          VAL R73
      599 DUPCLOSURE                       R166 K182 [PROTO_6]
      600 CAPTURE                          VAL R73
      601 NEWCLOSURE                       R167 P7
      602 CAPTURE                          VAL R15
      603 CAPTURE                          VAL R59
      604 CAPTURE                          VAL R105
      605 CAPTURE                          VAL R159
      606 CAPTURE                          VAL R158
      607 CAPTURE                          VAL R66
      608 CAPTURE                          VAL R110
      609 CAPTURE                          VAL R50
      610 CAPTURE                          VAL R83
      611 CAPTURE                          VAL R156
      612 CAPTURE                          VAL R157
      613 CAPTURE                          REF R162
      614 CAPTURE                          VAL R111
      615 CAPTURE                          REF R160
      616 CAPTURE                          VAL R40
      617 CAPTURE                          VAL R72
      618 CAPTURE                          VAL R73
      619 NEWCLOSURE                       R168 P8
      620 CAPTURE                          VAL R140
      621 CAPTURE                          VAL R68
      622 CAPTURE                          VAL R32
      623 CAPTURE                          REF R164
      624 CAPTURE                          VAL R15
      625 CAPTURE                          VAL R59
      626 CAPTURE                          VAL R139
      627 CAPTURE                          VAL R11
      628 CAPTURE                          VAL R58
      629 CAPTURE                          REF R160
      630 CAPTURE                          VAL R40
      631 CAPTURE                          VAL R141
      632 NEWCLOSURE                       R164 P9
      633 CAPTURE                          VAL R61
      634 CAPTURE                          VAL R15
      635 CAPTURE                          VAL R59
      636 CAPTURE                          VAL R58
      637 CAPTURE                          REF R162
      638 CAPTURE                          VAL R11
      639 CAPTURE                          REF R160
      640 CAPTURE                          VAL R47
      641 CAPTURE                          VAL R38
      642 CAPTURE                          REF R161
      643 DUPCLOSURE                       R169 K183 [PROTO_10]
      644 CAPTURE                          VAL R80
      645 CAPTURE                          VAL R81
      646 CAPTURE                          VAL R11
      647 CAPTURE                          VAL R143
      648 CAPTURE                          VAL R54
      649 CAPTURE                          VAL R144
      650 CAPTURE                          VAL R72
      651 CAPTURE                          VAL R73
      652 DUPCLOSURE                       R170 K184 [PROTO_11]
      653 CAPTURE                          VAL R72
      654 CAPTURE                          VAL R73
      655 SETGLOBAL                        R170 K185 ["updateFragment"]
      657 DUPCLOSURE                       R170 K186 [PROTO_12]
      658 CAPTURE                          VAL R72
      659 CAPTURE                          VAL R73
      660 SETGLOBAL                        R170 K187 ["updateMode"]
      662 DUPCLOSURE                       R170 K188 [PROTO_13]
      663 CAPTURE                          VAL R53
      664 CAPTURE                          VAL R72
      665 CAPTURE                          VAL R73
      666 SETGLOBAL                        R170 K189 ["updateProfiler"]
      668 DUPCLOSURE                       R170 K190 [PROTO_14]
      669 CAPTURE                          VAL R45
      670 NEWCLOSURE                       R161 P15
      671 CAPTURE                          VAL R15
      672 CAPTURE                          VAL R59
      673 CAPTURE                          VAL R51
      674 CAPTURE                          VAL R115
      675 CAPTURE                          VAL R114
      676 CAPTURE                          VAL R105
      677 CAPTURE                          VAL R159
      678 CAPTURE                          VAL R158
      679 CAPTURE                          VAL R66
      680 CAPTURE                          VAL R110
      681 CAPTURE                          VAL R50
      682 CAPTURE                          VAL R83
      683 CAPTURE                          VAL R156
      684 CAPTURE                          VAL R157
      685 CAPTURE                          REF R162
      686 CAPTURE                          VAL R111
      687 CAPTURE                          REF R160
      688 CAPTURE                          VAL R40
      689 CAPTURE                          VAL R72
      690 CAPTURE                          VAL R73
      691 DUPCLOSURE                       R171 K191 [PROTO_16]
      692 CAPTURE                          VAL R15
      693 CAPTURE                          VAL R59
      694 CAPTURE                          VAL R118
      695 CAPTURE                          VAL R117
      696 CAPTURE                          VAL R105
      697 CAPTURE                          VAL R159
      698 CAPTURE                          VAL R41
      699 CAPTURE                          VAL R130
      700 CAPTURE                          VAL R131
      701 CAPTURE                          VAL R132
      702 CAPTURE                          VAL R133
      703 CAPTURE                          VAL R3
      704 NEWCLOSURE                       R172 P17
      705 CAPTURE                          VAL R45
      706 CAPTURE                          VAL R44
      707 CAPTURE                          VAL R38
      708 CAPTURE                          VAL R120
      709 CAPTURE                          REF R160
      710 CAPTURE                          VAL R158
      711 CAPTURE                          VAL R53
      712 CAPTURE                          VAL R112
      713 CAPTURE                          VAL R66
      714 CAPTURE                          VAL R50
      715 CAPTURE                          VAL R83
      716 CAPTURE                          VAL R156
      717 CAPTURE                          VAL R157
      718 CAPTURE                          VAL R40
      719 CAPTURE                          VAL R73
      720 CAPTURE                          VAL R72
      721 SETGLOBAL                        R172 K192 ["finishClassComponent"]
      723 DUPCLOSURE                       R172 K193 [PROTO_18]
      724 CAPTURE                          VAL R119
      725 CAPTURE                          VAL R93
      726 NEWCLOSURE                       R173 P19
      727 CAPTURE                          VAL R119
      728 CAPTURE                          VAL R93
      729 CAPTURE                          VAL R57
      730 CAPTURE                          VAL R77
      731 CAPTURE                          VAL R76
      732 CAPTURE                          VAL R122
      733 CAPTURE                          REF R160
      734 CAPTURE                          VAL R123
      735 CAPTURE                          VAL R90
      736 CAPTURE                          VAL R153
      737 CAPTURE                          VAL R72
      738 CAPTURE                          VAL R41
      739 CAPTURE                          VAL R42
      740 CAPTURE                          VAL R73
      741 DUPCLOSURE                       R174 K194 [PROTO_20]
      742 CAPTURE                          VAL R92
      743 CAPTURE                          VAL R125
      744 CAPTURE                          VAL R86
      745 CAPTURE                          VAL R43
      746 CAPTURE                          VAL R40
      747 CAPTURE                          VAL R45
      748 CAPTURE                          VAL R72
      749 CAPTURE                          VAL R73
      750 DUPCLOSURE                       R175 K195 [PROTO_21]
      751 CAPTURE                          VAL R125
      752 NEWCLOSURE                       R176 P22
      753 CAPTURE                          VAL R41
      754 CAPTURE                          VAL R136
      755 CAPTURE                          VAL R134
      756 CAPTURE                          VAL R17
      757 CAPTURE                          VAL R68
      758 CAPTURE                          REF R161
      759 CAPTURE                          VAL R18
      760 CAPTURE                          VAL R70
      761 CAPTURE                          VAL R171
      762 CAPTURE                          VAL R23
      763 CAPTURE                          VAL R69
      764 CAPTURE                          VAL R167
      765 CAPTURE                          VAL R31
      766 CAPTURE                          VAL R15
      767 CAPTURE                          VAL R59
      768 CAPTURE                          VAL R168
      769 CAPTURE                          VAL R61
      770 CAPTURE                          VAL R7
      771 CAPTURE                          VAL R57
      772 DUPCLOSURE                       R177 K196 [PROTO_23]
      773 CAPTURE                          VAL R41
      774 CAPTURE                          VAL R18
      775 CAPTURE                          VAL R118
      776 CAPTURE                          VAL R117
      777 CAPTURE                          VAL R105
      778 CAPTURE                          VAL R159
      779 CAPTURE                          VAL R130
      780 CAPTURE                          VAL R131
      781 SETGLOBAL                        R177 K197 ["mountIncompleteClassComponent"]
      783 DUPCLOSURE                       R177 K198 [PROTO_24]
      784 CAPTURE                          VAL R41
      785 CAPTURE                          VAL R51
      786 CAPTURE                          VAL R115
      787 CAPTURE                          VAL R114
      788 CAPTURE                          VAL R105
      789 CAPTURE                          VAL R159
      790 CAPTURE                          VAL R59
      791 CAPTURE                          VAL R163
      792 CAPTURE                          VAL R3
      793 CAPTURE                          VAL R83
      794 CAPTURE                          VAL R63
      795 CAPTURE                          VAL R66
      796 CAPTURE                          VAL R158
      797 CAPTURE                          VAL R110
      798 CAPTURE                          VAL R40
      799 CAPTURE                          VAL R52
      800 CAPTURE                          VAL R18
      801 CAPTURE                          VAL R118
      802 CAPTURE                          VAL R117
      803 CAPTURE                          VAL R78
      804 CAPTURE                          VAL R129
      805 CAPTURE                          VAL R128
      806 CAPTURE                          VAL R131
      807 CAPTURE                          VAL R17
      808 CAPTURE                          VAL R50
      809 CAPTURE                          VAL R156
      810 CAPTURE                          VAL R157
      811 CAPTURE                          VAL R72
      812 DUPCLOSURE                       R178 K199 [PROTO_25]
      813 CAPTURE                          VAL R65
      814 CAPTURE                          VAL R163
      815 CAPTURE                          VAL R3
      816 CAPTURE                          VAL R56
      817 CAPTURE                          VAL R59
      818 SETGLOBAL                        R178 K200 ["validateFunctionComponentInDev"]
      820 DUPTABLE                         R178 K203 [{["dehydrated"] = , ["retryLane"]}]
      821 GETTABLEKS                       R179 R11 K204 ["NoLane"]
      823 SETTABLEKS                       R179 R178 K202 ["retryLane"]
      825 DUPCLOSURE                       R179 K205 [PROTO_26]
      826 DUPCLOSURE                       R180 K206 [PROTO_27]
      827 CAPTURE                          VAL R11
      828 DUPCLOSURE                       R181 K207 [PROTO_28]
      829 CAPTURE                          VAL R95
      830 CAPTURE                          VAL R96
      831 DUPCLOSURE                       R182 K208 [PROTO_29]
      832 CAPTURE                          VAL R11
      833 LOADNIL                          R183
      834 LOADNIL                          R184
      835 LOADNIL                          R185
      836 LOADNIL                          R186
      837 LOADNIL                          R187
      838 NEWCLOSURE                       R188 P30
      839 CAPTURE                          VAL R107
      840 CAPTURE                          VAL R44
      841 CAPTURE                          VAL R94
      842 CAPTURE                          VAL R38
      843 CAPTURE                          VAL R95
      844 CAPTURE                          VAL R96
      845 CAPTURE                          VAL R97
      846 CAPTURE                          VAL R98
      847 CAPTURE                          VAL R100
      848 CAPTURE                          VAL R99
      849 CAPTURE                          VAL R125
      850 CAPTURE                          VAL R55
      851 CAPTURE                          REF R184
      852 CAPTURE                          VAL R178
      853 CAPTURE                          VAL R11
      854 CAPTURE                          VAL R54
      855 CAPTURE                          VAL R144
      856 CAPTURE                          REF R185
      857 CAPTURE                          REF R187
      858 CAPTURE                          REF R186
      859 CAPTURE                          REF R183
      860 DUPCLOSURE                       R185 K209 [PROTO_31]
      861 CAPTURE                          VAL R138
      862 DUPCLOSURE                       R189 K210 [PROTO_32]
      863 CAPTURE                          VAL R84
      864 CAPTURE                          VAL R81
      865 CAPTURE                          VAL R11
      866 CAPTURE                          VAL R53
      867 CAPTURE                          VAL R82
      868 CAPTURE                          VAL R137
      869 CAPTURE                          VAL R138
      870 SETGLOBAL                        R189 K211 ["mountSuspenseFallbackChildren"]
      872 DUPCLOSURE                       R189 K212 [PROTO_33]
      873 CAPTURE                          VAL R141
      874 DUPCLOSURE                       R183 K213 [PROTO_34]
      875 CAPTURE                          VAL R141
      876 CAPTURE                          VAL R84
      877 CAPTURE                          VAL R81
      878 CAPTURE                          VAL R46
      879 DUPCLOSURE                       R186 K214 [PROTO_35]
      880 CAPTURE                          VAL R84
      881 CAPTURE                          VAL R81
      882 CAPTURE                          VAL R11
      883 CAPTURE                          VAL R53
      884 CAPTURE                          VAL R82
      885 CAPTURE                          VAL R141
      886 CAPTURE                          VAL R39
      887 CAPTURE                          VAL R137
      888 CAPTURE                          VAL R41
      889 NEWCLOSURE                       R190 P36
      890 CAPTURE                          VAL R73
      891 CAPTURE                          REF R185
      892 CAPTURE                          VAL R41
      893 DUPCLOSURE                       R191 K215 [PROTO_37]
      894 CAPTURE                          VAL R138
      895 CAPTURE                          VAL R11
      896 CAPTURE                          VAL R137
      897 CAPTURE                          VAL R41
      898 CAPTURE                          VAL R84
      899 CAPTURE                          VAL R81
      900 CAPTURE                          VAL R73
      901 SETGLOBAL                        R191 K216 ["mountSuspenseFallbackAfterRetryWithoutHydrating"]
      903 DUPCLOSURE                       R184 K217 [PROTO_38]
      904 CAPTURE                          VAL R84
      905 CAPTURE                          VAL R81
      906 CAPTURE                          VAL R3
      907 CAPTURE                          VAL R11
      908 CAPTURE                          VAL R88
      909 CAPTURE                          VAL R54
      910 CAPTURE                          VAL R144
      911 NEWCLOSURE                       R187 P39
      912 CAPTURE                          VAL R126
      913 CAPTURE                          VAL R149
      914 CAPTURE                          VAL R150
      915 CAPTURE                          VAL R151
      916 CAPTURE                          VAL R73
      917 CAPTURE                          REF R185
      918 CAPTURE                          VAL R41
      919 CAPTURE                          VAL R84
      920 CAPTURE                          VAL R81
      921 CAPTURE                          VAL R88
      922 CAPTURE                          VAL R11
      923 CAPTURE                          REF R162
      924 CAPTURE                          VAL R148
      925 CAPTURE                          VAL R146
      926 CAPTURE                          VAL R147
      927 CAPTURE                          VAL R87
      928 CAPTURE                          VAL R44
      929 CAPTURE                          VAL R145
      930 CAPTURE                          VAL R54
      931 CAPTURE                          REF R152
      932 CAPTURE                          VAL R1
      933 CAPTURE                          VAL R89
      934 CAPTURE                          VAL R124
      935 CAPTURE                          VAL R42
      936 DUPCLOSURE                       R191 K218 [PROTO_41]
      937 CAPTURE                          VAL R93
      938 CAPTURE                          VAL R73
      939 CAPTURE                          VAL R72
      940 SETGLOBAL                        R191 K219 ["updatePortalComponent"]
      942 LOADB                            R191 0
      943 NEWCLOSURE                       R192 P41
      944 CAPTURE                          VAL R5
      945 CAPTURE                          VAL R6
      946 CAPTURE                          REF R191
      947 CAPTURE                          VAL R3
      948 CAPTURE                          VAL R15
      949 CAPTURE                          VAL R106
      950 CAPTURE                          VAL R104
      951 CAPTURE                          VAL R116
      952 CAPTURE                          REF R160
      953 CAPTURE                          VAL R102
      954 CAPTURE                          VAL R72
      955 CAPTURE                          VAL R73
      956 DUPTABLE                         R193 K223 [{["usingContextAsConsumer"] = False, ["usingLegacyConsumer"] = False}]
      957 DUPCLOSURE                       R194 K224 [PROTO_43]
      958 CAPTURE                          VAL R193
      959 CAPTURE                          VAL R3
      960 CAPTURE                          VAL R105
      961 CAPTURE                          VAL R159
      962 CAPTURE                          VAL R103
      963 CAPTURE                          VAL R158
      964 CAPTURE                          VAL R66
      965 CAPTURE                          VAL R40
      966 CAPTURE                          VAL R72
      967 CAPTURE                          VAL R73
      968 SETGLOBAL                        R194 K225 ["updateContextConsumer"]
      970 NEWCLOSURE                       R194 P43
      971 CAPTURE                          REF R162
      972 SETTABLEKS                       R194 R159 K226 ["markWorkInProgressReceivedUpdate"]
      974 DUPCLOSURE                       R160 K227 [PROTO_45]
      975 CAPTURE                          VAL R53
      976 CAPTURE                          VAL R112
      977 CAPTURE                          VAL R154
      978 CAPTURE                          VAL R11
      979 CAPTURE                          VAL R74
      980 DUPCLOSURE                       R194 K228 [PROTO_46]
      981 CAPTURE                          VAL R46
      982 CAPTURE                          VAL R41
      983 SETGLOBAL                        R194 K229 ["remountFiber"]
      985 NEWCLOSURE                       R194 P46
      986 CAPTURE                          VAL R139
      987 CAPTURE                          VAL R116
      988 CAPTURE                          REF R162
      989 CAPTURE                          VAL R11
      990 CAPTURE                          VAL R19
      991 CAPTURE                          VAL R119
      992 CAPTURE                          VAL R93
      993 CAPTURE                          VAL R122
      994 CAPTURE                          VAL R20
      995 CAPTURE                          VAL R92
      996 CAPTURE                          VAL R18
      997 CAPTURE                          VAL R118
      998 CAPTURE                          VAL R117
      999 CAPTURE                          VAL R22
     1000 CAPTURE                          VAL R26
     1001 CAPTURE                          VAL R106
     1002 CAPTURE                          VAL R28
     1003 CAPTURE                          VAL R53
     1004 CAPTURE                          VAL R29
     1005 CAPTURE                          VAL R55
     1006 CAPTURE                          VAL R99
     1007 CAPTURE                          VAL R100
     1008 CAPTURE                          VAL R94
     1009 CAPTURE                          VAL R44
     1010 CAPTURE                          VAL R188
     1011 CAPTURE                          REF R160
     1012 CAPTURE                          VAL R30
     1013 CAPTURE                          VAL R35
     1014 CAPTURE                          VAL R36
     1015 CAPTURE                          VAL R169
     1016 CAPTURE                          VAL R47
     1017 CAPTURE                          VAL R38
     1018 CAPTURE                          VAL R16
     1019 CAPTURE                          VAL R177
     1020 CAPTURE                          VAL R33
     1021 CAPTURE                          VAL R176
     1022 CAPTURE                          VAL R17
     1023 CAPTURE                          VAL R134
     1024 CAPTURE                          REF R161
     1025 CAPTURE                          VAL R171
     1026 CAPTURE                          VAL R173
     1027 CAPTURE                          VAL R174
     1028 CAPTURE                          VAL R21
     1029 CAPTURE                          VAL R125
     1030 CAPTURE                          VAL R23
     1031 CAPTURE                          VAL R167
     1032 CAPTURE                          VAL R24
     1033 CAPTURE                          VAL R25
     1034 CAPTURE                          VAL R192
     1035 CAPTURE                          VAL R27
     1036 CAPTURE                          VAL R31
     1037 CAPTURE                          VAL R15
     1038 CAPTURE                          VAL R59
     1039 CAPTURE                          VAL R168
     1040 CAPTURE                          VAL R32
     1041 CAPTURE                          REF R164
     1042 CAPTURE                          VAL R34
     1043 CAPTURE                          VAL R169
     1044 CAPTURE                          VAL R57
     1045 SETTABLEKS                       R194 R159 K230 ["beginWork"]
     1047 CLOSEUPVALS                      R152
     1048 RETURN                           R159 1
