PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+7]
        7 GETIMPORT                        R1 K5 [debug.info]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K6 ["n"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1
       13 FASTCALL1                        TYPE R0 ; [+3]
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K1 [type]
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKS                    R1 K7 ["table"] ; [+7]
       20 FASTCALL1                        TOSTRING R0 ; [+3]
       21 MOVE                             R2 R0
       22 GETIMPORT                        R1 K9 [tostring]
       24 CALL                             R1 1 1
       25 RETURN                           R1 1
       26 LOADNIL                          R1
       27 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R3
        1 GETIMPORT                        R4 K1 [_G]
        3 GETTABLEKS                       R4 R4 K2 ["__DEV__"]
        5 JUMPIFNOT                        R4 ; [+28]
        6 JUMPIFNOT                        R2 ; [+27]
        7 FASTCALL1                        TYPE R2 ; [+3]
        8 MOVE                             R5 R2
        9 GETIMPORT                        R4 K4 [type]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K5 ["function"] ; [+7]
       14 GETIMPORT                        R3 K8 [debug.info]
       16 MOVE                             R4 R2
       17 LOADK                            R5 K9 ["n"]
       18 CALL                             R3 2 1
       19 JUMP                             ; [+14]
       20 FASTCALL1                        TYPE R2 ; [+3]
       21 MOVE                             R5 R2
       22 GETIMPORT                        R4 K4 [type]
       24 CALL                             R4 1 1
       25 JUMPIFNOTEQKS                    R4 K10 ["table"] ; [+7]
       27 FASTCALL1                        TOSTRING R2 ; [+3]
       28 MOVE                             R4 R2
       29 GETIMPORT                        R3 K12 [tostring]
       31 CALL                             R3 1 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R3
       34 GETUPVAL                         R4 0
       35 MOVE                             R5 R0
       36 MOVE                             R6 R1
       37 MOVE                             R7 R3
       38 CALL                             R4 3 -1
       39 RETURN                           R4 -1

PROTO_2:
        0 GETIMPORT                        R0 K2 [debug.traceback]
        2 CALL                             R0 0 1
        3 SETUPVAL                         R0 0
        4 GETIMPORT                        R0 K4 [error]
        6 DUPTABLE                         R1 K6 [{"stack"}]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K5 ["stack"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R0 K1 [pcall]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R0 1 2
        8 SETUPVAL                         R1 2
        9 GETUPVAL                         R2 3
       10 CALL                             R2 0 0
       11 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"message", "stack"}]
        1 SETTABLEKS                       R0 R1 K0 ["message"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K1 ["stack"]
        6 RETURN                           R1 1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+2]
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADK                            R2 K0 [""]
        4 RETURN                           R2 1
        5 GETIMPORT                        R2 K2 [_G]
        7 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R3 1
       11 GETTABLE                         R2 R3 R0
       12 JUMPIFEQKNIL                     R2 ; [+2]
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 LOADB                            R3 1
       17 SETUPVAL                         R3 0
       18 LOADNIL                          R3
       19 GETIMPORT                        R4 K2 [_G]
       21 GETTABLEKS                       R4 R4 K3 ["__DEV__"]
       23 JUMPIFNOT                        R4 ; [+9]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R3 R4 K4 ["current"]
       27 GETUPVAL                         R4 2
       28 LOADNIL                          R5
       29 SETTABLEKS                       R5 R4 K4 ["current"]
       31 GETUPVAL                         R4 3
       32 CALL                             R4 0 0
       33 LOADNIL                          R4
       34 GETIMPORT                        R5 K6 [xpcall]
       36 NEWCLOSURE                       R6 P0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          REF R4
       39 CAPTURE                          REF R2
       40 CAPTURE                          VAL R0
       41 NEWCLOSURE                       R7 P1
       42 CAPTURE                          REF R4
       43 CALL                             R5 2 2
       44 LOADNIL                          R7
       45 JUMPIFNOT                        R6 ; [+83]
       46 JUMPIFNOT                        R2 ; [+82]
       47 GETTABLEKS                       R9 R6 K7 ["stack"]
       49 FASTCALL1                        TYPE R9 ; [+2]
       50 GETIMPORT                        R8 K9 [type]
       52 CALL                             R8 1 1
       53 JUMPIFNOTEQKS                    R8 K10 ["string"] ; [+75]
       55 GETIMPORT                        R8 K12 [string.split]
       57 GETTABLEKS                       R9 R6 K7 ["stack"]
       59 LOADK                            R10 K13 ["\n"]
       60 CALL                             R8 2 1
       61 GETIMPORT                        R9 K12 [string.split]
       63 GETTABLEKS                       R10 R2 K7 ["stack"]
       65 LOADK                            R11 K13 ["\n"]
       66 CALL                             R9 2 1
       67 LENGTH                           R11 R8
       68 SUBK                             R10 R11 K14 [1]
       69 LENGTH                           R12 R9
       70 SUBK                             R11 R12 K14 [1]
       71 LOADN                            R12 2
       72 JUMPIFNOTLE                      R12 R10 ; [+10]
       74 LOADN                            R12 0
       75 JUMPIFNOTLE                      R12 R11 ; [+7]
       77 GETTABLE                         R12 R8 R10
       78 GETTABLE                         R13 R9 R11
       79 JUMPIFEQ                         R12 R13 ; [+3]
       81 SUBK                             R11 R11 K14 [1]
       82 JUMPBACK                         ; [-12]
       83 LOADN                            R12 3
       84 JUMPIFNOTLE                      R12 R10 ; [+44]
       86 LOADN                            R12 1
       87 JUMPIFNOTLE                      R12 R11 ; [+41]
       89 SUBK                             R10 R10 K14 [1]
       90 SUBK                             R11 R11 K14 [1]
       91 GETTABLE                         R12 R8 R10
       92 GETTABLE                         R13 R9 R11
       93 JUMPIFEQ                         R12 R13 ; [+34]
       95 JUMPIFNOTEQKN                    R10 K14 [1] ; [+3]
       97 JUMPIFEQKN                       R11 K14 [1] ; [+31]
       99 SUBK                             R10 R10 K14 [1]
      100 SUBK                             R11 R11 K14 [1]
      101 LOADN                            R12 0
      102 JUMPIFLT                         R11 R12 ; [+5]
      104 GETTABLE                         R12 R8 R10
      105 GETTABLE                         R13 R9 R11
      106 JUMPIFEQ                         R12 R13 ; [+13]
      108 LOADK                            R13 K13 ["\n"]
      109 LOADK                            R14 K15 ["    in "]
      110 GETTABLE                         R15 R8 R10
      111 CONCAT                           R12 R13 R15
      112 GETIMPORT                        R13 K2 [_G]
      114 GETTABLEKS                       R13 R13 K3 ["__DEV__"]
      116 JUMPIFNOT                        R13 ; [+2]
      117 GETUPVAL                         R13 1
      118 SETTABLE                         R12 R13 R0
      119 MOVE                             R7 R12
      120 LOADN                            R12 3
      121 JUMPIFNOTLE                      R12 R10 ; [+7]
      123 LOADN                            R12 1
      124 JUMPIFNOTLE                      R12 R11 ; [+4]
      126 JUMPBACK                         ; [-28]
      127 JUMP                             ; [+1]
      128 JUMPBACK                         ; [-46]
      129 LOADB                            R8 0
      130 SETUPVAL                         R8 0
      131 GETIMPORT                        R8 K2 [_G]
      133 GETTABLEKS                       R8 R8 K3 ["__DEV__"]
      135 JUMPIFNOT                        R8 ; [+5]
      136 GETUPVAL                         R8 2
      137 SETTABLEKS                       R3 R8 K4 ["current"]
      139 GETUPVAL                         R8 4
      140 CALL                             R8 0 0
      141 JUMPIFEQKNIL                     R7 ; [+3]
      143 CLOSEUPVALS                      R2
      144 RETURN                           R7 1
      145 FASTCALL1                        TYPE R0 ; [+3]
      146 MOVE                             R10 R0
      147 GETIMPORT                        R9 K9 [type]
      149 CALL                             R9 1 1
      150 JUMPIFNOTEQKS                    R9 K16 ["function"] ; [+7]
      152 GETIMPORT                        R8 K19 [debug.info]
      154 MOVE                             R9 R0
      155 LOADK                            R10 K20 ["n"]
      156 CALL                             R8 2 1
      157 JUMP                             ; [+14]
      158 FASTCALL1                        TYPE R0 ; [+3]
      159 MOVE                             R10 R0
      160 GETIMPORT                        R9 K9 [type]
      162 CALL                             R9 1 1
      163 JUMPIFNOTEQKS                    R9 K21 ["table"] ; [+7]
      165 FASTCALL1                        TOSTRING R0 ; [+3]
      166 MOVE                             R9 R0
      167 GETIMPORT                        R8 K23 [tostring]
      169 CALL                             R8 1 1
      170 JUMP                             ; [+1]
      171 LOADK                            R8 K0 [""]
      172 LOADK                            R9 K0 [""]
      173 JUMPIFEQKNIL                     R8 ; [+14]
      175 JUMPIFEQKS                       R8 K0 [""] ; [+12]
      177 LOADNIL                          R10
      178 GETIMPORT                        R11 K2 [_G]
      180 GETTABLEKS                       R11 R11 K3 ["__DEV__"]
      182 GETUPVAL                         R11 5
      183 MOVE                             R12 R8
      184 LOADNIL                          R13
      185 MOVE                             R14 R10
      186 CALL                             R11 3 1
      187 MOVE                             R9 R11
      188 GETIMPORT                        R10 K2 [_G]
      190 GETTABLEKS                       R10 R10 K3 ["__DEV__"]
      192 JUMPIFNOT                        R10 ; [+2]
      193 GETUPVAL                         R10 1
      194 SETTABLE                         R9 R10 R0
      195 CLOSEUPVALS                      R2
      196 RETURN                           R9 1

PROTO_6:
        0 LOADK                            R3 K0 [""]
        1 GETIMPORT                        R4 K2 [_G]
        3 GETTABLEKS                       R4 R4 K3 ["__DEV__"]
        5 JUMPIFNOT                        R4 ; [+42]
        6 JUMPIFNOT                        R1 ; [+41]
        7 GETTABLEKS                       R4 R1 K4 ["fileName"]
        9 GETIMPORT                        R5 K7 [string.gsub]
       11 MOVE                             R6 R4
       12 LOADK                            R7 K8 ["^(.*)[\\/]"]
       13 LOADK                            R8 K0 [""]
       14 CALL                             R5 3 1
       15 GETIMPORT                        R6 K10 [string.match]
       17 MOVE                             R7 R5
       18 LOADK                            R8 K11 ["^init%."]
       19 CALL                             R6 2 1
       20 JUMPIFNOT                        R6 ; [+19]
       21 GETIMPORT                        R6 K10 [string.match]
       23 MOVE                             R7 R4
       24 LOADK                            R8 K8 ["^(.*)[\\/]"]
       25 CALL                             R6 2 1
       26 JUMPIFNOT                        R6 ; [+13]
       27 LENGTH                           R7 R6
       28 JUMPIFEQKN                       R7 K12 [0] ; [+11]
       30 GETIMPORT                        R7 K7 [string.gsub]
       32 MOVE                             R8 R6
       33 LOADK                            R9 K8 ["^(.*)[\\/]"]
       34 LOADK                            R10 K0 [""]
       35 CALL                             R7 3 1
       36 MOVE                             R8 R7
       37 LOADK                            R9 K13 ["/"]
       38 MOVE                             R10 R5
       39 CONCAT                           R5 R8 R10
       40 LOADK                            R6 K14 [" (at "]
       41 MOVE                             R7 R5
       42 LOADK                            R8 K15 [":"]
       43 GETTABLEKS                       R9 R1 K16 ["lineNumber"]
       45 LOADK                            R10 K17 [")"]
       46 CONCAT                           R3 R6 R10
       47 JUMP                             ; [+5]
       48 JUMPIFNOT                        R2 ; [+4]
       49 LOADK                            R4 K18 [" (created by "]
       50 MOVE                             R5 R2
       51 LOADK                            R6 K17 [")"]
       52 CONCAT                           R3 R4 R6
       53 LOADK                            R5 K19 ["\n    in "]
       54 ORK                              R6 R0 K20 ["Unknown"]
       55 MOVE                             R7 R3
       56 CONCAT                           R4 R5 R7
       57 RETURN                           R4 1

PROTO_7:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 LOADNIL                          R4
        6 GETIMPORT                        R5 K3 [_G]
        8 GETTABLEKS                       R5 R5 K4 ["__DEV__"]
       10 JUMPIFNOT                        R5 ; [+28]
       11 JUMPIFNOT                        R2 ; [+27]
       12 FASTCALL1                        TYPE R2 ; [+3]
       13 MOVE                             R6 R2
       14 GETIMPORT                        R5 K6 [type]
       16 CALL                             R5 1 1
       17 JUMPIFNOTEQKS                    R5 K7 ["function"] ; [+7]
       19 GETIMPORT                        R4 K10 [debug.info]
       21 MOVE                             R5 R2
       22 LOADK                            R6 K11 ["n"]
       23 CALL                             R4 2 1
       24 JUMP                             ; [+14]
       25 FASTCALL1                        TYPE R2 ; [+3]
       26 MOVE                             R6 R2
       27 GETIMPORT                        R5 K6 [type]
       29 CALL                             R5 1 1
       30 JUMPIFNOTEQKS                    R5 K12 ["table"] ; [+7]
       32 FASTCALL1                        TOSTRING R2 ; [+3]
       33 MOVE                             R5 R2
       34 GETIMPORT                        R4 K1 [tostring]
       36 CALL                             R4 1 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 GETUPVAL                         R5 0
       40 MOVE                             R6 R3
       41 MOVE                             R7 R1
       42 MOVE                             R8 R4
       43 CALL                             R5 3 -1
       44 RETURN                           R5 -1

PROTO_8:
        0 JUMPIF                           R0 ; [+2]
        1 LOADK                            R3 K0 [""]
        2 RETURN                           R3 1
        3 FASTCALL1                        TYPE R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K2 [type]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K3 ["function"] ; [+7]
       10 GETIMPORT                        R3 K6 [debug.info]
       12 MOVE                             R4 R0
       13 LOADK                            R5 K7 ["n"]
       14 CALL                             R3 2 1
       15 JUMP                             ; [+5]
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K9 [tostring]
       20 CALL                             R3 1 1
       21 LOADNIL                          R4
       22 GETIMPORT                        R5 K11 [_G]
       24 GETTABLEKS                       R5 R5 K12 ["__DEV__"]
       26 JUMPIFNOT                        R5 ; [+28]
       27 JUMPIFNOT                        R2 ; [+27]
       28 FASTCALL1                        TYPE R2 ; [+3]
       29 MOVE                             R6 R2
       30 GETIMPORT                        R5 K2 [type]
       32 CALL                             R5 1 1
       33 JUMPIFNOTEQKS                    R5 K3 ["function"] ; [+7]
       35 GETIMPORT                        R4 K6 [debug.info]
       37 MOVE                             R5 R2
       38 LOADK                            R6 K7 ["n"]
       39 CALL                             R4 2 1
       40 JUMP                             ; [+14]
       41 FASTCALL1                        TYPE R2 ; [+3]
       42 MOVE                             R6 R2
       43 GETIMPORT                        R5 K2 [type]
       45 CALL                             R5 1 1
       46 JUMPIFNOTEQKS                    R5 K13 ["table"] ; [+7]
       48 FASTCALL1                        TOSTRING R2 ; [+3]
       49 MOVE                             R5 R2
       50 GETIMPORT                        R4 K9 [tostring]
       52 CALL                             R4 1 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R4
       55 GETUPVAL                         R5 0
       56 MOVE                             R6 R3
       57 MOVE                             R7 R1
       58 MOVE                             R8 R4
       59 CALL                             R5 3 -1
       60 RETURN                           R5 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 3
        5 GETUPVAL                         R3 4
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R3 R3 K2 ["__DEV__"]
        4 JUMPIF                           R3 ; [+2]
        5 LOADK                            R3 K3 [""]
        6 RETURN                           R3 1
        7 JUMPIFNOTEQKNIL                  R0 ; [+3]
        9 LOADK                            R3 K3 [""]
       10 RETURN                           R3 1
       11 FASTCALL1                        TYPE R0 ; [+3]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R3 K5 [type]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+15]
       18 GETTABLEKS                       R4 R0 K7 ["__ctor"]
       20 FASTCALL1                        TYPE R4 ; [+2]
       21 GETIMPORT                        R3 K5 [type]
       23 CALL                             R3 1 1
       24 JUMPIFNOTEQKS                    R3 K8 ["function"] ; [+7]
       26 GETUPVAL                         R3 0
       27 MOVE                             R4 R0
       28 MOVE                             R5 R1
       29 MOVE                             R6 R2
       30 CALL                             R3 3 -1
       31 RETURN                           R3 -1
       32 FASTCALL1                        TYPE R0 ; [+3]
       33 MOVE                             R4 R0
       34 GETIMPORT                        R3 K5 [type]
       36 CALL                             R3 1 1
       37 JUMPIFNOTEQKS                    R3 K8 ["function"] ; [+7]
       39 GETUPVAL                         R3 1
       40 MOVE                             R4 R0
       41 MOVE                             R5 R1
       42 MOVE                             R6 R2
       43 CALL                             R3 3 -1
       44 RETURN                           R3 -1
       45 FASTCALL1                        TYPE R0 ; [+3]
       46 MOVE                             R4 R0
       47 GETIMPORT                        R3 K5 [type]
       49 CALL                             R3 1 1
       50 JUMPIFNOTEQKS                    R3 K9 ["string"] ; [+7]
       52 GETUPVAL                         R3 2
       53 MOVE                             R4 R0
       54 MOVE                             R5 R1
       55 MOVE                             R6 R2
       56 CALL                             R3 3 -1
       57 RETURN                           R3 -1
       58 GETUPVAL                         R3 3
       59 JUMPIFNOTEQ                      R0 R3 ; [+7]
       61 GETUPVAL                         R3 2
       62 LOADK                            R4 K10 ["Suspense"]
       63 MOVE                             R5 R1
       64 MOVE                             R6 R2
       65 CALL                             R3 3 -1
       66 RETURN                           R3 -1
       67 GETUPVAL                         R3 4
       68 JUMPIFNOTEQ                      R0 R3 ; [+7]
       70 GETUPVAL                         R3 2
       71 LOADK                            R4 K11 ["SuspenseList"]
       72 MOVE                             R5 R1
       73 MOVE                             R6 R2
       74 CALL                             R3 3 -1
       75 RETURN                           R3 -1
       76 FASTCALL1                        TYPE R0 ; [+3]
       77 MOVE                             R4 R0
       78 GETIMPORT                        R3 K5 [type]
       80 CALL                             R3 1 1
       81 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+51]
       83 GETTABLEKS                       R3 R0 K12 ["$$typeof"]
       85 GETUPVAL                         R4 5
       86 JUMPIFNOTEQ                      R3 R4 ; [+8]
       88 GETUPVAL                         R4 1
       89 GETTABLEKS                       R5 R0 K13 ["render"]
       91 MOVE                             R6 R1
       92 MOVE                             R7 R2
       93 CALL                             R4 3 -1
       94 RETURN                           R4 -1
       95 GETUPVAL                         R4 6
       96 JUMPIFNOTEQ                      R3 R4 ; [+8]
       98 GETUPVAL                         R4 7
       99 GETTABLEKS                       R5 R0 K4 ["type"]
      101 MOVE                             R6 R1
      102 MOVE                             R7 R2
      103 CALL                             R4 3 -1
      104 RETURN                           R4 -1
      105 GETUPVAL                         R4 8
      106 JUMPIFNOTEQ                      R3 R4 ; [+8]
      108 GETUPVAL                         R4 1
      109 GETTABLEKS                       R5 R0 K14 ["_render"]
      111 MOVE                             R6 R1
      112 MOVE                             R7 R2
      113 CALL                             R4 3 -1
      114 RETURN                           R4 -1
      115 GETUPVAL                         R4 9
      116 JUMPIFNOTEQ                      R3 R4 ; [+16]
      118 GETTABLEKS                       R4 R0 K15 ["_payload"]
      120 GETTABLEKS                       R5 R0 K16 ["_init"]
      122 GETIMPORT                        R6 K18 [pcall]
      124 NEWCLOSURE                       R7 P0
      125 CAPTURE                          UPVAL U7
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R2
      130 CALL                             R6 1 2
      131 JUMPIFNOT                        R6 ; [+1]
      132 RETURN                           R7 1
      133 LOADK                            R3 K3 [""]
      134 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["ReactElementType"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R3 K3 [script]
       14 GETTABLEKS                       R3 R3 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["flowtypes.roblox"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["ReactSymbols"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R2 K8 ["REACT_SUSPENSE_TYPE"]
       30 GETTABLEKS                       R4 R2 K9 ["REACT_SUSPENSE_LIST_TYPE"]
       32 GETTABLEKS                       R5 R2 K10 ["REACT_FORWARD_REF_TYPE"]
       34 GETTABLEKS                       R6 R2 K11 ["REACT_MEMO_TYPE"]
       36 GETTABLEKS                       R7 R2 K12 ["REACT_BLOCK_TYPE"]
       38 GETTABLEKS                       R8 R2 K13 ["REACT_LAZY_TYPE"]
       40 GETIMPORT                        R9 K1 [require]
       42 GETIMPORT                        R11 K3 [script]
       44 GETTABLEKS                       R11 R11 K4 ["Parent"]
       46 GETTABLEKS                       R10 R11 K14 ["ConsolePatchingDev.roblox"]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R10 R9 K15 ["disableLogs"]
       51 GETTABLEKS                       R11 R9 K16 ["reenableLogs"]
       53 GETIMPORT                        R12 K1 [require]
       55 GETIMPORT                        R13 K3 [script]
       57 GETTABLEKS                       R13 R13 K4 ["Parent"]
       59 GETTABLEKS                       R13 R13 K17 ["ReactSharedInternals"]
       61 CALL                             R12 1 1
       62 GETTABLEKS                       R13 R12 K18 ["ReactCurrentDispatcher"]
       64 LOADNIL                          R14
       65 LOADNIL                          R15
       66 DUPCLOSURE                       R16 K19 [PROTO_0]
       67 NEWCLOSURE                       R17 P1
       68 CAPTURE                          REF R14
       69 LOADB                            R18 0
       70 LOADNIL                          R19
       71 GETIMPORT                        R20 K21 [_G]
       73 GETTABLEKS                       R20 R20 K22 ["__DEV__"]
       75 JUMPIFNOT                        R20 ; [+12]
       76 NEWTABLE                         R21 0 0
       78 DUPTABLE                         R22 K24 [{"__mode"}]
       79 LOADK                            R23 K25 ["k"]
       80 SETTABLEKS                       R23 R22 K23 ["__mode"]
       82 FASTCALL2                        SETMETATABLE R21 R22 ; [+3]
       84 GETIMPORT                        R20 K27 [setmetatable]
       86 CALL                             R20 2 1
       87 MOVE                             R19 R20
       88 NEWCLOSURE                       R20 P2
       89 CAPTURE                          REF R18
       90 CAPTURE                          REF R19
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R11
       94 CAPTURE                          REF R14
       95 DUPCLOSURE                       R14 K28 [PROTO_6]
       96 NEWCLOSURE                       R21 P4
       97 CAPTURE                          REF R14
       98 NEWCLOSURE                       R15 P5
       99 CAPTURE                          REF R14
      100 NEWCLOSURE                       R22 P6
      101 CAPTURE                          VAL R21
      102 CAPTURE                          REF R15
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R22
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R8
      111 DUPTABLE                         R23 K35 [{"describeComponentFrame", "describeBuiltInComponentFrame", "describeNativeComponentFrame", "describeClassComponentFrame", "describeFunctionComponentFrame", "describeUnknownElementTypeFrameInDEV"}]
      112 SETTABLEKS                       R14 R23 K29 ["describeComponentFrame"]
      114 SETTABLEKS                       R17 R23 K30 ["describeBuiltInComponentFrame"]
      116 SETTABLEKS                       R20 R23 K31 ["describeNativeComponentFrame"]
      118 SETTABLEKS                       R21 R23 K32 ["describeClassComponentFrame"]
      120 SETTABLEKS                       R15 R23 K33 ["describeFunctionComponentFrame"]
      122 SETTABLEKS                       R22 R23 K34 ["describeUnknownElementTypeFrameInDEV"]
      124 CLOSEUPVALS                      R14
      125 RETURN                           R23 1
