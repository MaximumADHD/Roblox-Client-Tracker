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
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["__DEV__"]
        4 JUMPIFNOT                        R4 ; [+28]
        5 JUMPIFNOT                        R2 ; [+27]
        6 FASTCALL1                        TYPE R2 ; [+3]
        7 MOVE                             R5 R2
        8 GETIMPORT                        R4 K2 [type]
       10 CALL                             R4 1 1
       11 JUMPIFNOTEQKS                    R4 K3 ["function"] ; [+7]
       13 GETIMPORT                        R3 K6 [debug.info]
       15 MOVE                             R4 R2
       16 LOADK                            R5 K7 ["n"]
       17 CALL                             R3 2 1
       18 JUMP                             ; [+14]
       19 FASTCALL1                        TYPE R2 ; [+3]
       20 MOVE                             R5 R2
       21 GETIMPORT                        R4 K2 [type]
       23 CALL                             R4 1 1
       24 JUMPIFNOTEQKS                    R4 K8 ["table"] ; [+7]
       26 FASTCALL1                        TOSTRING R2 ; [+3]
       27 MOVE                             R4 R2
       28 GETIMPORT                        R3 K10 [tostring]
       30 CALL                             R3 1 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R3
       33 GETUPVAL                         R4 1
       34 MOVE                             R5 R0
       35 MOVE                             R6 R1
       36 MOVE                             R7 R3
       37 CALL                             R4 3 -1
       38 RETURN                           R4 -1

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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["__DEV__"]
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETUPVAL                         R3 2
       10 GETTABLE                         R2 R3 R0
       11 JUMPIFEQKNIL                     R2 ; [+2]
       13 RETURN                           R2 1
       14 LOADNIL                          R2
       15 LOADB                            R3 1
       16 SETUPVAL                         R3 0
       17 LOADNIL                          R3
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K1 ["__DEV__"]
       21 JUMPIFNOT                        R4 ; [+9]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R3 R4 K2 ["current"]
       25 GETUPVAL                         R4 3
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K2 ["current"]
       29 GETUPVAL                         R4 4
       30 CALL                             R4 0 0
       31 LOADNIL                          R4
       32 GETIMPORT                        R5 K4 [xpcall]
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          REF R4
       37 CAPTURE                          REF R2
       38 CAPTURE                          VAL R0
       39 NEWCLOSURE                       R7 P1
       40 CAPTURE                          REF R4
       41 CALL                             R5 2 2
       42 LOADNIL                          R7
       43 JUMPIFNOT                        R6 ; [+82]
       44 JUMPIFNOT                        R2 ; [+81]
       45 GETTABLEKS                       R9 R6 K5 ["stack"]
       47 FASTCALL1                        TYPE R9 ; [+2]
       48 GETIMPORT                        R8 K7 [type]
       50 CALL                             R8 1 1
       51 JUMPIFNOTEQKS                    R8 K8 ["string"] ; [+74]
       53 GETIMPORT                        R8 K10 [string.split]
       55 GETTABLEKS                       R9 R6 K5 ["stack"]
       57 LOADK                            R10 K11 ["\n"]
       58 CALL                             R8 2 1
       59 GETIMPORT                        R9 K10 [string.split]
       61 GETTABLEKS                       R10 R2 K5 ["stack"]
       63 LOADK                            R11 K11 ["\n"]
       64 CALL                             R9 2 1
       65 LENGTH                           R11 R8
       66 SUBK                             R10 R11 K12 [1]
       67 LENGTH                           R12 R9
       68 SUBK                             R11 R12 K12 [1]
       69 LOADN                            R12 2
       70 JUMPIFNOTLE                      R12 R10 ; [+10]
       72 LOADN                            R12 0
       73 JUMPIFNOTLE                      R12 R11 ; [+7]
       75 GETTABLE                         R12 R8 R10
       76 GETTABLE                         R13 R9 R11
       77 JUMPIFEQ                         R12 R13 ; [+3]
       79 SUBK                             R11 R11 K12 [1]
       80 JUMPBACK                         ; [-12]
       81 LOADN                            R12 3
       82 JUMPIFNOTLE                      R12 R10 ; [+43]
       84 LOADN                            R12 1
       85 JUMPIFNOTLE                      R12 R11 ; [+40]
       87 SUBK                             R10 R10 K12 [1]
       88 SUBK                             R11 R11 K12 [1]
       89 GETTABLE                         R12 R8 R10
       90 GETTABLE                         R13 R9 R11
       91 JUMPIFEQ                         R12 R13 ; [+33]
       93 JUMPIFNOTEQKN                    R10 K12 [1] ; [+3]
       95 JUMPIFEQKN                       R11 K12 [1] ; [+30]
       97 SUBK                             R10 R10 K12 [1]
       98 SUBK                             R11 R11 K12 [1]
       99 LOADN                            R12 0
      100 JUMPIFLT                         R11 R12 ; [+5]
      102 GETTABLE                         R12 R8 R10
      103 GETTABLE                         R13 R9 R11
      104 JUMPIFEQ                         R12 R13 ; [+12]
      106 LOADK                            R13 K11 ["\n"]
      107 LOADK                            R14 K13 ["    in "]
      108 GETTABLE                         R15 R8 R10
      109 CONCAT                           R12 R13 R15
      110 GETUPVAL                         R14 1
      111 GETTABLEKS                       R13 R14 K1 ["__DEV__"]
      113 JUMPIFNOT                        R13 ; [+2]
      114 GETUPVAL                         R13 2
      115 SETTABLE                         R12 R13 R0
      116 MOVE                             R7 R12
      117 LOADN                            R12 3
      118 JUMPIFNOTLE                      R12 R10 ; [+7]
      120 LOADN                            R12 1
      121 JUMPIFNOTLE                      R12 R11 ; [+4]
      123 JUMPBACK                         ; [-27]
      124 JUMP                             ; [+1]
      125 JUMPBACK                         ; [-45]
      126 LOADB                            R8 0
      127 SETUPVAL                         R8 0
      128 GETUPVAL                         R9 1
      129 GETTABLEKS                       R8 R9 K1 ["__DEV__"]
      131 JUMPIFNOT                        R8 ; [+5]
      132 GETUPVAL                         R8 3
      133 SETTABLEKS                       R3 R8 K2 ["current"]
      135 GETUPVAL                         R8 5
      136 CALL                             R8 0 0
      137 JUMPIFEQKNIL                     R7 ; [+3]
      139 CLOSEUPVALS                      R2
      140 RETURN                           R7 1
      141 FASTCALL1                        TYPE R0 ; [+3]
      142 MOVE                             R10 R0
      143 GETIMPORT                        R9 K7 [type]
      145 CALL                             R9 1 1
      146 JUMPIFNOTEQKS                    R9 K14 ["function"] ; [+7]
      148 GETIMPORT                        R8 K17 [debug.info]
      150 MOVE                             R9 R0
      151 LOADK                            R10 K18 ["n"]
      152 CALL                             R8 2 1
      153 JUMP                             ; [+14]
      154 FASTCALL1                        TYPE R0 ; [+3]
      155 MOVE                             R10 R0
      156 GETIMPORT                        R9 K7 [type]
      158 CALL                             R9 1 1
      159 JUMPIFNOTEQKS                    R9 K19 ["table"] ; [+7]
      161 FASTCALL1                        TOSTRING R0 ; [+3]
      162 MOVE                             R9 R0
      163 GETIMPORT                        R8 K21 [tostring]
      165 CALL                             R8 1 1
      166 JUMP                             ; [+1]
      167 LOADK                            R8 K0 [""]
      168 LOADK                            R9 K0 [""]
      169 JUMPIFEQKNIL                     R8 ; [+13]
      171 JUMPIFEQKS                       R8 K0 [""] ; [+11]
      173 LOADNIL                          R10
      174 GETUPVAL                         R12 1
      175 GETTABLEKS                       R11 R12 K1 ["__DEV__"]
      177 GETUPVAL                         R11 6
      178 MOVE                             R12 R8
      179 LOADNIL                          R13
      180 MOVE                             R14 R10
      181 CALL                             R11 3 1
      182 MOVE                             R9 R11
      183 GETUPVAL                         R11 1
      184 GETTABLEKS                       R10 R11 K1 ["__DEV__"]
      186 JUMPIFNOT                        R10 ; [+2]
      187 GETUPVAL                         R10 2
      188 SETTABLE                         R9 R10 R0
      189 CLOSEUPVALS                      R2
      190 RETURN                           R9 1

PROTO_6:
        0 LOADK                            R3 K0 [""]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K1 ["__DEV__"]
        4 JUMPIFNOT                        R4 ; [+42]
        5 JUMPIFNOT                        R1 ; [+41]
        6 GETTABLEKS                       R4 R1 K2 ["fileName"]
        8 GETIMPORT                        R5 K5 [string.gsub]
       10 MOVE                             R6 R4
       11 LOADK                            R7 K6 ["^(.*)[\\/]"]
       12 LOADK                            R8 K0 [""]
       13 CALL                             R5 3 1
       14 GETIMPORT                        R6 K8 [string.match]
       16 MOVE                             R7 R5
       17 LOADK                            R8 K9 ["^init%."]
       18 CALL                             R6 2 1
       19 JUMPIFNOT                        R6 ; [+19]
       20 GETIMPORT                        R6 K8 [string.match]
       22 MOVE                             R7 R4
       23 LOADK                            R8 K6 ["^(.*)[\\/]"]
       24 CALL                             R6 2 1
       25 JUMPIFNOT                        R6 ; [+13]
       26 LENGTH                           R7 R6
       27 JUMPIFEQKN                       R7 K10 [0] ; [+11]
       29 GETIMPORT                        R7 K5 [string.gsub]
       31 MOVE                             R8 R6
       32 LOADK                            R9 K6 ["^(.*)[\\/]"]
       33 LOADK                            R10 K0 [""]
       34 CALL                             R7 3 1
       35 MOVE                             R8 R7
       36 LOADK                            R9 K11 ["/"]
       37 MOVE                             R10 R5
       38 CONCAT                           R5 R8 R10
       39 LOADK                            R6 K12 [" (at "]
       40 MOVE                             R7 R5
       41 LOADK                            R8 K13 [":"]
       42 GETTABLEKS                       R9 R1 K14 ["lineNumber"]
       44 LOADK                            R10 K15 [")"]
       45 CONCAT                           R3 R6 R10
       46 JUMP                             ; [+5]
       47 JUMPIFNOT                        R2 ; [+4]
       48 LOADK                            R4 K16 [" (created by "]
       49 MOVE                             R5 R2
       50 LOADK                            R6 K15 [")"]
       51 CONCAT                           R3 R4 R6
       52 LOADK                            R5 K17 ["\n    in "]
       53 ORK                              R6 R0 K18 ["Unknown"]
       54 MOVE                             R7 R3
       55 CONCAT                           R4 R5 R7
       56 RETURN                           R4 1

PROTO_7:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 LOADNIL                          R4
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K2 ["__DEV__"]
        9 JUMPIFNOT                        R5 ; [+28]
       10 JUMPIFNOT                        R2 ; [+27]
       11 FASTCALL1                        TYPE R2 ; [+3]
       12 MOVE                             R6 R2
       13 GETIMPORT                        R5 K4 [type]
       15 CALL                             R5 1 1
       16 JUMPIFNOTEQKS                    R5 K5 ["function"] ; [+7]
       18 GETIMPORT                        R4 K8 [debug.info]
       20 MOVE                             R5 R2
       21 LOADK                            R6 K9 ["n"]
       22 CALL                             R4 2 1
       23 JUMP                             ; [+14]
       24 FASTCALL1                        TYPE R2 ; [+3]
       25 MOVE                             R6 R2
       26 GETIMPORT                        R5 K4 [type]
       28 CALL                             R5 1 1
       29 JUMPIFNOTEQKS                    R5 K10 ["table"] ; [+7]
       31 FASTCALL1                        TOSTRING R2 ; [+3]
       32 MOVE                             R5 R2
       33 GETIMPORT                        R4 K1 [tostring]
       35 CALL                             R4 1 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R4
       38 GETUPVAL                         R5 1
       39 MOVE                             R6 R3
       40 MOVE                             R7 R1
       41 MOVE                             R8 R4
       42 CALL                             R5 3 -1
       43 RETURN                           R5 -1

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
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K10 ["__DEV__"]
       25 JUMPIFNOT                        R5 ; [+28]
       26 JUMPIFNOT                        R2 ; [+27]
       27 FASTCALL1                        TYPE R2 ; [+3]
       28 MOVE                             R6 R2
       29 GETIMPORT                        R5 K2 [type]
       31 CALL                             R5 1 1
       32 JUMPIFNOTEQKS                    R5 K3 ["function"] ; [+7]
       34 GETIMPORT                        R4 K6 [debug.info]
       36 MOVE                             R5 R2
       37 LOADK                            R6 K7 ["n"]
       38 CALL                             R4 2 1
       39 JUMP                             ; [+14]
       40 FASTCALL1                        TYPE R2 ; [+3]
       41 MOVE                             R6 R2
       42 GETIMPORT                        R5 K2 [type]
       44 CALL                             R5 1 1
       45 JUMPIFNOTEQKS                    R5 K11 ["table"] ; [+7]
       47 FASTCALL1                        TOSTRING R2 ; [+3]
       48 MOVE                             R5 R2
       49 GETIMPORT                        R4 K9 [tostring]
       51 CALL                             R4 1 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R4
       54 GETUPVAL                         R5 1
       55 MOVE                             R6 R3
       56 MOVE                             R7 R1
       57 MOVE                             R8 R4
       58 CALL                             R5 3 -1
       59 RETURN                           R5 -1

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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["__DEV__"]
        3 JUMPIF                           R3 ; [+2]
        4 LOADK                            R3 K1 [""]
        5 RETURN                           R3 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+3]
        8 LOADK                            R3 K1 [""]
        9 RETURN                           R3 1
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R4 R0
       12 GETIMPORT                        R3 K3 [type]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+15]
       17 GETTABLEKS                       R4 R0 K5 ["__ctor"]
       19 FASTCALL1                        TYPE R4 ; [+2]
       20 GETIMPORT                        R3 K3 [type]
       22 CALL                             R3 1 1
       23 JUMPIFNOTEQKS                    R3 K6 ["function"] ; [+7]
       25 GETUPVAL                         R3 1
       26 MOVE                             R4 R0
       27 MOVE                             R5 R1
       28 MOVE                             R6 R2
       29 CALL                             R3 3 -1
       30 RETURN                           R3 -1
       31 FASTCALL1                        TYPE R0 ; [+3]
       32 MOVE                             R4 R0
       33 GETIMPORT                        R3 K3 [type]
       35 CALL                             R3 1 1
       36 JUMPIFNOTEQKS                    R3 K6 ["function"] ; [+7]
       38 GETUPVAL                         R3 2
       39 MOVE                             R4 R0
       40 MOVE                             R5 R1
       41 MOVE                             R6 R2
       42 CALL                             R3 3 -1
       43 RETURN                           R3 -1
       44 FASTCALL1                        TYPE R0 ; [+3]
       45 MOVE                             R4 R0
       46 GETIMPORT                        R3 K3 [type]
       48 CALL                             R3 1 1
       49 JUMPIFNOTEQKS                    R3 K7 ["string"] ; [+7]
       51 GETUPVAL                         R3 3
       52 MOVE                             R4 R0
       53 MOVE                             R5 R1
       54 MOVE                             R6 R2
       55 CALL                             R3 3 -1
       56 RETURN                           R3 -1
       57 GETUPVAL                         R3 4
       58 JUMPIFNOTEQ                      R0 R3 ; [+7]
       60 GETUPVAL                         R3 3
       61 LOADK                            R4 K8 ["Suspense"]
       62 MOVE                             R5 R1
       63 MOVE                             R6 R2
       64 CALL                             R3 3 -1
       65 RETURN                           R3 -1
       66 GETUPVAL                         R3 5
       67 JUMPIFNOTEQ                      R0 R3 ; [+7]
       69 GETUPVAL                         R3 3
       70 LOADK                            R4 K9 ["SuspenseList"]
       71 MOVE                             R5 R1
       72 MOVE                             R6 R2
       73 CALL                             R3 3 -1
       74 RETURN                           R3 -1
       75 FASTCALL1                        TYPE R0 ; [+3]
       76 MOVE                             R4 R0
       77 GETIMPORT                        R3 K3 [type]
       79 CALL                             R3 1 1
       80 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+51]
       82 GETTABLEKS                       R3 R0 K10 ["$$typeof"]
       84 GETUPVAL                         R4 6
       85 JUMPIFNOTEQ                      R3 R4 ; [+8]
       87 GETUPVAL                         R4 2
       88 GETTABLEKS                       R5 R0 K11 ["render"]
       90 MOVE                             R6 R1
       91 MOVE                             R7 R2
       92 CALL                             R4 3 -1
       93 RETURN                           R4 -1
       94 GETUPVAL                         R4 7
       95 JUMPIFNOTEQ                      R3 R4 ; [+8]
       97 GETUPVAL                         R4 8
       98 GETTABLEKS                       R5 R0 K2 ["type"]
      100 MOVE                             R6 R1
      101 MOVE                             R7 R2
      102 CALL                             R4 3 -1
      103 RETURN                           R4 -1
      104 GETUPVAL                         R4 9
      105 JUMPIFNOTEQ                      R3 R4 ; [+8]
      107 GETUPVAL                         R4 2
      108 GETTABLEKS                       R5 R0 K12 ["_render"]
      110 MOVE                             R6 R1
      111 MOVE                             R7 R2
      112 CALL                             R4 3 -1
      113 RETURN                           R4 -1
      114 GETUPVAL                         R4 10
      115 JUMPIFNOTEQ                      R3 R4 ; [+16]
      117 GETTABLEKS                       R4 R0 K13 ["_payload"]
      119 GETTABLEKS                       R5 R0 K14 ["_init"]
      121 GETIMPORT                        R6 K16 [pcall]
      123 NEWCLOSURE                       R7 P0
      124 CAPTURE                          UPVAL U8
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R2
      129 CALL                             R6 1 2
      130 JUMPIFNOT                        R6 ; [+1]
      131 RETURN                           R7 1
      132 LOADK                            R3 K1 [""]
      133 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R5 K1 [script]
       16 GETTABLEKS                       R4 R5 K2 ["Parent"]
       18 GETTABLEKS                       R3 R4 K6 ["ReactElementType"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R5 R6 K2 ["Parent"]
       27 GETTABLEKS                       R4 R5 K7 ["flowtypes.roblox"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R6 R7 K2 ["Parent"]
       36 GETTABLEKS                       R5 R6 K8 ["ReactSymbols"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K9 ["REACT_SUSPENSE_TYPE"]
       41 GETTABLEKS                       R6 R4 K10 ["REACT_SUSPENSE_LIST_TYPE"]
       43 GETTABLEKS                       R7 R4 K11 ["REACT_FORWARD_REF_TYPE"]
       45 GETTABLEKS                       R8 R4 K12 ["REACT_MEMO_TYPE"]
       47 GETTABLEKS                       R9 R4 K13 ["REACT_BLOCK_TYPE"]
       49 GETTABLEKS                       R10 R4 K14 ["REACT_LAZY_TYPE"]
       51 GETIMPORT                        R11 K4 [require]
       53 GETIMPORT                        R14 K1 [script]
       55 GETTABLEKS                       R13 R14 K2 ["Parent"]
       57 GETTABLEKS                       R12 R13 K15 ["ConsolePatchingDev.roblox"]
       59 CALL                             R11 1 1
       60 GETTABLEKS                       R12 R11 K16 ["disableLogs"]
       62 GETTABLEKS                       R13 R11 K17 ["reenableLogs"]
       64 GETIMPORT                        R14 K4 [require]
       66 GETIMPORT                        R17 K1 [script]
       68 GETTABLEKS                       R16 R17 K2 ["Parent"]
       70 GETTABLEKS                       R15 R16 K18 ["ReactSharedInternals"]
       72 CALL                             R14 1 1
       73 GETTABLEKS                       R15 R14 K19 ["ReactCurrentDispatcher"]
       75 LOADNIL                          R16
       76 LOADNIL                          R17
       77 DUPCLOSURE                       R18 K20 [PROTO_0]
       78 NEWCLOSURE                       R19 P1
       79 CAPTURE                          VAL R1
       80 CAPTURE                          REF R16
       81 LOADB                            R20 0
       82 LOADNIL                          R21
       83 GETTABLEKS                       R22 R1 K21 ["__DEV__"]
       85 JUMPIFNOT                        R22 ; [+12]
       86 NEWTABLE                         R23 0 0
       88 DUPTABLE                         R24 K23 [{"__mode"}]
       89 LOADK                            R25 K24 ["k"]
       90 SETTABLEKS                       R25 R24 K22 ["__mode"]
       92 FASTCALL2                        SETMETATABLE R23 R24 ; [+3]
       94 GETIMPORT                        R22 K26 [setmetatable]
       96 CALL                             R22 2 1
       97 MOVE                             R21 R22
       98 NEWCLOSURE                       R22 P2
       99 CAPTURE                          REF R20
      100 CAPTURE                          VAL R1
      101 CAPTURE                          REF R21
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R13
      105 CAPTURE                          REF R16
      106 DUPCLOSURE                       R16 K27 [PROTO_6]
      107 CAPTURE                          VAL R1
      108 NEWCLOSURE                       R23 P4
      109 CAPTURE                          VAL R1
      110 CAPTURE                          REF R16
      111 NEWCLOSURE                       R17 P5
      112 CAPTURE                          VAL R1
      113 CAPTURE                          REF R16
      114 NEWCLOSURE                       R24 P6
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R23
      117 CAPTURE                          REF R17
      118 CAPTURE                          VAL R19
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R24
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R10
      126 DUPTABLE                         R25 K34 [{"describeComponentFrame", "describeBuiltInComponentFrame", "describeNativeComponentFrame", "describeClassComponentFrame", "describeFunctionComponentFrame", "describeUnknownElementTypeFrameInDEV"}]
      127 SETTABLEKS                       R16 R25 K28 ["describeComponentFrame"]
      129 SETTABLEKS                       R19 R25 K29 ["describeBuiltInComponentFrame"]
      131 SETTABLEKS                       R22 R25 K30 ["describeNativeComponentFrame"]
      133 SETTABLEKS                       R23 R25 K31 ["describeClassComponentFrame"]
      135 SETTABLEKS                       R17 R25 K32 ["describeFunctionComponentFrame"]
      137 SETTABLEKS                       R24 R25 K33 ["describeUnknownElementTypeFrameInDEV"]
      139 CLOSEUPVALS                      R16
      140 RETURN                           R25 1
