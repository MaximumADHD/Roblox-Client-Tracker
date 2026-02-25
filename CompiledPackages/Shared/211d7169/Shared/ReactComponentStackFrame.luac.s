PROTO_0:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+5]
        2 LOADK                            R4 K0 ["\n"]
        3 LOADK                            R5 K1 ["    in "]
        4 MOVE                             R6 R0
        5 CONCAT                           R3 R4 R6
        6 RETURN                           R3 1
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 LOADNIL                          R6
       11 CALL                             R3 3 -1
       12 RETURN                           R3 -1

PROTO_1:
        0 GETIMPORT                        R0 K2 [debug.traceback]
        2 CALL                             R0 0 1
        3 SETUPVAL                         R0 0
        4 GETIMPORT                        R0 K4 [error]
        6 DUPTABLE                         R1 K6 [{"stack"}]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K5 ["stack"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"message", "stack"}]
        1 SETTABLEKS                       R0 R1 K0 ["message"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K1 ["stack"]
        6 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+2]
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADK                            R2 K0 [""]
        4 RETURN                           R2 1
        5 GETIMPORT                        R3 K2 [_G]
        7 GETTABLEKS                       R2 R3 K3 ["__DEV__"]
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R3 1
       11 GETTABLE                         R2 R3 R0
       12 JUMPIFEQKNIL                     R2 ; [+2]
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 LOADB                            R3 1
       17 SETUPVAL                         R3 0
       18 LOADNIL                          R3
       19 GETIMPORT                        R5 K2 [_G]
       21 GETTABLEKS                       R4 R5 K3 ["__DEV__"]
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
       49 FASTCALL1                        TYPEOF R9 ; [+2]
       50 GETIMPORT                        R8 K9 [typeof]
       52 CALL                             R8 1 1
       53 JUMPIFNOTEQKS                    R8 K10 ["string"] ; [+75]
       55 GETTABLEKS                       R8 R6 K7 ["stack"]
       57 LOADK                            R10 K11 ["\n"]
       58 NAMECALL                         R8 R8 K12 ["split"]
       60 CALL                             R8 2 1
       61 GETTABLEKS                       R9 R2 K7 ["stack"]
       63 LOADK                            R11 K11 ["\n"]
       64 NAMECALL                         R9 R9 K12 ["split"]
       66 CALL                             R9 2 1
       67 LENGTH                           R11 R8
       68 SUBK                             R10 R11 K13 [1]
       69 LENGTH                           R12 R9
       70 SUBK                             R11 R12 K13 [1]
       71 LOADN                            R12 2
       72 JUMPIFNOTLE                      R12 R10 ; [+10]
       74 LOADN                            R12 0
       75 JUMPIFNOTLE                      R12 R11 ; [+7]
       77 GETTABLE                         R12 R8 R10
       78 GETTABLE                         R13 R9 R11
       79 JUMPIFEQ                         R12 R13 ; [+3]
       81 SUBK                             R11 R11 K13 [1]
       82 JUMPBACK                         ; [-12]
       83 LOADN                            R12 3
       84 JUMPIFNOTLE                      R12 R10 ; [+44]
       86 LOADN                            R12 1
       87 JUMPIFNOTLE                      R12 R11 ; [+41]
       89 SUBK                             R10 R10 K13 [1]
       90 SUBK                             R11 R11 K13 [1]
       91 GETTABLE                         R12 R8 R10
       92 GETTABLE                         R13 R9 R11
       93 JUMPIFEQ                         R12 R13 ; [+34]
       95 JUMPIFNOTEQKN                    R10 K13 [1] ; [+3]
       97 JUMPIFEQKN                       R11 K13 [1] ; [+31]
       99 SUBK                             R10 R10 K13 [1]
      100 SUBK                             R11 R11 K13 [1]
      101 LOADN                            R12 0
      102 JUMPIFLT                         R11 R12 ; [+5]
      104 GETTABLE                         R12 R8 R10
      105 GETTABLE                         R13 R9 R11
      106 JUMPIFEQ                         R12 R13 ; [+13]
      108 LOADK                            R13 K11 ["\n"]
      109 LOADK                            R14 K14 ["    in "]
      110 GETTABLE                         R15 R8 R10
      111 CONCAT                           R12 R13 R15
      112 GETIMPORT                        R14 K2 [_G]
      114 GETTABLEKS                       R13 R14 K3 ["__DEV__"]
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
      131 GETIMPORT                        R9 K2 [_G]
      133 GETTABLEKS                       R8 R9 K3 ["__DEV__"]
      135 JUMPIFNOT                        R8 ; [+5]
      136 GETUPVAL                         R8 2
      137 SETTABLEKS                       R3 R8 K4 ["current"]
      139 GETUPVAL                         R8 4
      140 CALL                             R8 0 0
      141 JUMPIFEQKNIL                     R7 ; [+3]
      143 CLOSEUPVALS                      R2
      144 RETURN                           R7 1
      145 LOADK                            R8 K0 [""]
      146 FASTCALL1                        TYPEOF R0 ; [+3]
      147 MOVE                             R10 R0
      148 GETIMPORT                        R9 K9 [typeof]
      150 CALL                             R9 1 1
      151 JUMPIFNOTEQKS                    R9 K15 ["function"] ; [+8]
      153 GETIMPORT                        R9 K18 [debug.info]
      155 MOVE                             R10 R0
      156 LOADK                            R11 K19 ["n"]
      157 CALL                             R9 2 1
      158 MOVE                             R8 R9
      159 JUMP                             ; [+13]
      160 FASTCALL1                        TYPEOF R0 ; [+3]
      161 MOVE                             R10 R0
      162 GETIMPORT                        R9 K9 [typeof]
      164 CALL                             R9 1 1
      165 JUMPIFNOTEQKS                    R9 K20 ["table"] ; [+7]
      167 FASTCALL1                        TOSTRING R0 ; [+3]
      168 MOVE                             R10 R0
      169 GETIMPORT                        R9 K22 [tostring]
      171 CALL                             R9 1 1
      172 MOVE                             R8 R9
      173 LOADK                            R9 K0 [""]
      174 JUMPIFEQKNIL                     R8 ; [+18]
      176 JUMPIFEQKS                       R8 K0 [""] ; [+16]
      178 MOVE                             R10 R8
      179 GETUPVAL                         R11 5
      180 JUMPIFNOT                        R11 ; [+5]
      181 LOADK                            R11 K11 ["\n"]
      182 LOADK                            R12 K14 ["    in "]
      183 MOVE                             R13 R10
      184 CONCAT                           R9 R11 R13
      185 JUMP                             ; [+7]
      186 GETUPVAL                         R11 6
      187 MOVE                             R12 R10
      188 LOADNIL                          R13
      189 LOADNIL                          R14
      190 CALL                             R11 3 1
      191 MOVE                             R9 R11
      192 JUMP                             ; [0]
      193 GETIMPORT                        R11 K2 [_G]
      195 GETTABLEKS                       R10 R11 K3 ["__DEV__"]
      197 JUMPIFNOT                        R10 ; [+2]
      198 GETUPVAL                         R10 1
      199 SETTABLE                         R9 R10 R0
      200 CLOSEUPVALS                      R2
      201 RETURN                           R9 1

PROTO_5:
        0 LOADK                            R3 K0 [""]
        1 GETIMPORT                        R5 K2 [_G]
        3 GETTABLEKS                       R4 R5 K3 ["__DEV__"]
        5 JUMPIFNOT                        R4 ; [+40]
        6 JUMPIFNOT                        R1 ; [+39]
        7 GETTABLEKS                       R4 R1 K4 ["fileName"]
        9 LOADK                            R7 K5 ["^(.*)[\\/]"]
       10 LOADK                            R8 K0 [""]
       11 NAMECALL                         R5 R4 K6 ["gsub"]
       13 CALL                             R5 3 1
       14 LOADK                            R8 K7 ["^init%."]
       15 NAMECALL                         R6 R5 K8 ["match"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+19]
       19 LOADK                            R8 K5 ["^(.*)[\\/]"]
       20 NAMECALL                         R6 R4 K8 ["match"]
       22 CALL                             R6 2 1
       23 JUMPIFNOT                        R6 ; [+14]
       24 NAMECALL                         R7 R6 K9 ["len"]
       26 CALL                             R7 1 1
       27 JUMPIFEQKN                       R7 K10 [0] ; [+10]
       29 LOADK                            R9 K5 ["^(.*)[\\/]"]
       30 LOADK                            R10 K0 [""]
       31 NAMECALL                         R7 R6 K6 ["gsub"]
       33 CALL                             R7 3 1
       34 MOVE                             R8 R7
       35 LOADK                            R9 K11 ["/"]
       36 MOVE                             R10 R5
       37 CONCAT                           R5 R8 R10
       38 LOADK                            R6 K12 [" (at "]
       39 MOVE                             R7 R5
       40 LOADK                            R8 K13 [":"]
       41 GETTABLEKS                       R9 R1 K14 ["lineNumber"]
       43 LOADK                            R10 K15 [")"]
       44 CONCAT                           R3 R6 R10
       45 JUMP                             ; [+5]
       46 JUMPIFNOT                        R2 ; [+4]
       47 LOADK                            R4 K16 [" (created by "]
       48 MOVE                             R5 R2
       49 LOADK                            R6 K15 [")"]
       50 CONCAT                           R3 R4 R6
       51 LOADK                            R5 K17 ["\n    in "]
       52 ORK                              R6 R0 K18 ["Unknown"]
       53 MOVE                             R7 R3
       54 CONCAT                           R4 R5 R7
       55 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 LOADB                            R5 1
        5 CALL                             R3 2 1
        6 RETURN                           R3 1
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 CALL                             R3 3 -1
       12 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 LOADB                            R5 0
        5 CALL                             R3 2 1
        6 RETURN                           R3 1
        7 JUMPIF                           R0 ; [+2]
        8 LOADK                            R3 K0 [""]
        9 RETURN                           R3 1
       10 GETUPVAL                         R3 2
       11 LOADNIL                          R4
       12 MOVE                             R5 R1
       13 LOADNIL                          R6
       14 CALL                             R3 3 -1
       15 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 3
        5 GETUPVAL                         R3 4
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R4 K1 [_G]
        2 GETTABLEKS                       R3 R4 K2 ["__DEV__"]
        4 JUMPIF                           R3 ; [+2]
        5 LOADK                            R3 K3 [""]
        6 RETURN                           R3 1
        7 JUMPIFNOTEQKNIL                  R0 ; [+3]
        9 LOADK                            R3 K3 [""]
       10 RETURN                           R3 1
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R3 K5 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+22]
       18 GETTABLEKS                       R4 R0 K7 ["__ctor"]
       20 FASTCALL1                        TYPEOF R4 ; [+2]
       21 GETIMPORT                        R3 K5 [typeof]
       23 CALL                             R3 1 1
       24 JUMPIFNOTEQKS                    R3 K8 ["function"] ; [+14]
       26 GETUPVAL                         R3 0
       27 JUMPIFNOT                        R3 ; [+5]
       28 GETUPVAL                         R3 1
       29 MOVE                             R4 R0
       30 LOADB                            R5 1
       31 CALL                             R3 2 1
       32 RETURN                           R3 1
       33 GETUPVAL                         R3 2
       34 MOVE                             R4 R0
       35 MOVE                             R5 R1
       36 MOVE                             R6 R2
       37 CALL                             R3 3 -1
       38 RETURN                           R3 -1
       39 FASTCALL1                        TYPEOF R0 ; [+3]
       40 MOVE                             R4 R0
       41 GETIMPORT                        R3 K5 [typeof]
       43 CALL                             R3 1 1
       44 JUMPIFNOTEQKS                    R3 K8 ["function"] ; [+14]
       46 GETUPVAL                         R3 0
       47 JUMPIFNOT                        R3 ; [+5]
       48 GETUPVAL                         R3 1
       49 MOVE                             R4 R0
       50 LOADB                            R5 0
       51 CALL                             R3 2 1
       52 RETURN                           R3 1
       53 GETUPVAL                         R3 2
       54 MOVE                             R4 R0
       55 MOVE                             R5 R1
       56 MOVE                             R6 R2
       57 CALL                             R3 3 -1
       58 RETURN                           R3 -1
       59 FASTCALL1                        TYPEOF R0 ; [+3]
       60 MOVE                             R4 R0
       61 GETIMPORT                        R3 K5 [typeof]
       63 CALL                             R3 1 1
       64 JUMPIFNOTEQKS                    R3 K9 ["string"] ; [+7]
       66 GETUPVAL                         R3 3
       67 MOVE                             R4 R0
       68 MOVE                             R5 R1
       69 MOVE                             R6 R2
       70 CALL                             R3 3 -1
       71 RETURN                           R3 -1
       72 GETUPVAL                         R3 4
       73 JUMPIFNOTEQ                      R0 R3 ; [+7]
       75 GETUPVAL                         R3 3
       76 LOADK                            R4 K10 ["Suspense"]
       77 MOVE                             R5 R1
       78 MOVE                             R6 R2
       79 CALL                             R3 3 -1
       80 RETURN                           R3 -1
       81 GETUPVAL                         R3 5
       82 JUMPIFNOTEQ                      R0 R3 ; [+7]
       84 GETUPVAL                         R3 3
       85 LOADK                            R4 K11 ["SuspenseList"]
       86 MOVE                             R5 R1
       87 MOVE                             R6 R2
       88 CALL                             R3 3 -1
       89 RETURN                           R3 -1
       90 FASTCALL1                        TYPEOF R0 ; [+3]
       91 MOVE                             R4 R0
       92 GETIMPORT                        R3 K5 [typeof]
       94 CALL                             R3 1 1
       95 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+51]
       97 GETTABLEKS                       R3 R0 K12 ["$$typeof"]
       99 GETUPVAL                         R4 6
      100 JUMPIFNOTEQ                      R3 R4 ; [+8]
      102 GETUPVAL                         R4 2
      103 GETTABLEKS                       R5 R0 K13 ["render"]
      105 MOVE                             R6 R1
      106 MOVE                             R7 R2
      107 CALL                             R4 3 -1
      108 RETURN                           R4 -1
      109 GETUPVAL                         R4 7
      110 JUMPIFNOTEQ                      R3 R4 ; [+8]
      112 GETUPVAL                         R4 8
      113 GETTABLEKS                       R5 R0 K14 ["type"]
      115 MOVE                             R6 R1
      116 MOVE                             R7 R2
      117 CALL                             R4 3 -1
      118 RETURN                           R4 -1
      119 GETUPVAL                         R4 9
      120 JUMPIFNOTEQ                      R3 R4 ; [+8]
      122 GETUPVAL                         R4 2
      123 GETTABLEKS                       R5 R0 K15 ["_render"]
      125 MOVE                             R6 R1
      126 MOVE                             R7 R2
      127 CALL                             R4 3 -1
      128 RETURN                           R4 -1
      129 GETUPVAL                         R4 10
      130 JUMPIFNOTEQ                      R3 R4 ; [+16]
      132 GETTABLEKS                       R4 R0 K16 ["_payload"]
      134 GETTABLEKS                       R5 R0 K17 ["_init"]
      136 GETIMPORT                        R6 K19 [pcall]
      138 NEWCLOSURE                       R7 P0
      139 CAPTURE                          UPVAL U8
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R2
      144 CALL                             R6 1 2
      145 JUMPIFNOT                        R6 ; [+1]
      146 RETURN                           R7 1
      147 LOADK                            R3 K3 [""]
      148 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["ReactElementType"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["ReactFeatureFlags"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R1 K7 ["enableComponentStackLocations"]
       21 GETIMPORT                        R3 K1 [require]
       23 GETIMPORT                        R6 K3 [script]
       25 GETTABLEKS                       R5 R6 K4 ["Parent"]
       27 GETTABLEKS                       R4 R5 K8 ["ReactSymbols"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["REACT_SUSPENSE_TYPE"]
       32 GETTABLEKS                       R5 R3 K10 ["REACT_SUSPENSE_LIST_TYPE"]
       34 GETTABLEKS                       R6 R3 K11 ["REACT_FORWARD_REF_TYPE"]
       36 GETTABLEKS                       R7 R3 K12 ["REACT_MEMO_TYPE"]
       38 GETTABLEKS                       R8 R3 K13 ["REACT_BLOCK_TYPE"]
       40 GETTABLEKS                       R9 R3 K14 ["REACT_LAZY_TYPE"]
       42 GETIMPORT                        R10 K1 [require]
       44 GETIMPORT                        R13 K3 [script]
       46 GETTABLEKS                       R12 R13 K4 ["Parent"]
       48 GETTABLEKS                       R11 R12 K15 ["ConsolePatchingDev.roblox"]
       50 CALL                             R10 1 1
       51 GETTABLEKS                       R11 R10 K16 ["disableLogs"]
       53 GETTABLEKS                       R12 R10 K17 ["reenableLogs"]
       55 GETIMPORT                        R13 K1 [require]
       57 GETIMPORT                        R16 K3 [script]
       59 GETTABLEKS                       R15 R16 K4 ["Parent"]
       61 GETTABLEKS                       R14 R15 K18 ["ReactSharedInternals"]
       63 CALL                             R13 1 1
       64 GETTABLEKS                       R14 R13 K19 ["ReactCurrentDispatcher"]
       66 LOADNIL                          R15
       67 LOADNIL                          R16
       68 NEWCLOSURE                       R17 P0
       69 CAPTURE                          VAL R2
       70 CAPTURE                          REF R15
       71 LOADB                            R18 0
       72 LOADNIL                          R19
       73 GETIMPORT                        R21 K21 [_G]
       75 GETTABLEKS                       R20 R21 K22 ["__DEV__"]
       77 JUMPIFNOT                        R20 ; [+12]
       78 NEWTABLE                         R21 0 0
       80 DUPTABLE                         R22 K24 [{"__mode"}]
       81 LOADK                            R23 K25 ["k"]
       82 SETTABLEKS                       R23 R22 K23 ["__mode"]
       84 FASTCALL2                        SETMETATABLE R21 R22 ; [+3]
       86 GETIMPORT                        R20 K27 [setmetatable]
       88 CALL                             R20 2 1
       89 MOVE                             R19 R20
       90 NEWCLOSURE                       R20 P1
       91 CAPTURE                          REF R18
       92 CAPTURE                          REF R19
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R2
       97 CAPTURE                          REF R15
       98 DUPCLOSURE                       R15 K28 [PROTO_5]
       99 NEWCLOSURE                       R21 P3
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R20
      102 CAPTURE                          REF R16
      103 NEWCLOSURE                       R16 P4
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R20
      106 CAPTURE                          REF R15
      107 NEWCLOSURE                       R22 P5
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R20
      110 CAPTURE                          REF R16
      111 CAPTURE                          VAL R17
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R22
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R9
      119 DUPTABLE                         R23 K35 [{"describeComponentFrame", "describeBuiltInComponentFrame", "describeNativeComponentFrame", "describeClassComponentFrame", "describeFunctionComponentFrame", "describeUnknownElementTypeFrameInDEV"}]
      120 SETTABLEKS                       R15 R23 K29 ["describeComponentFrame"]
      122 SETTABLEKS                       R17 R23 K30 ["describeBuiltInComponentFrame"]
      124 SETTABLEKS                       R20 R23 K31 ["describeNativeComponentFrame"]
      126 SETTABLEKS                       R21 R23 K32 ["describeClassComponentFrame"]
      128 SETTABLEKS                       R16 R23 K33 ["describeFunctionComponentFrame"]
      130 SETTABLEKS                       R22 R23 K34 ["describeUnknownElementTypeFrameInDEV"]
      132 CLOSEUPVALS                      R15
      133 RETURN                           R23 1
