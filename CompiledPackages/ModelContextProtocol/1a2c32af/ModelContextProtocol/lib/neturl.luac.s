PROTO_0:
        0 FASTCALL2K                       TONUMBER R0 K0 ; [+5]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K0 [16]
        4 GETIMPORT                        R2 K2 [tonumber]
        6 CALL                             R2 2 1
        7 FASTCALL1                        STRING_CHAR R2 ; [+2]
        8 GETIMPORT                        R1 K5 [string.char]
       10 CALL                             R1 1 1
       11 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["%%(%x%x)"]
        1 DUPCLOSURE                       R4 K1 [PROTO_0]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K2 [string.upper]
        6 GETIMPORT                        R2 K4 [string.format]
        8 LOADK                            R3 K5 ["%%%02x"]
        9 FASTCALL1                        STRING_BYTE R0 ; [+3]
       10 MOVE                             R5 R0
       11 GETIMPORT                        R4 K7 [string.byte]
       13 CALL                             R4 1 -1
       14 CALL                             R2 -1 -1
       15 CALL                             R1 -1 -1
       16 RETURN                           R1 -1

PROTO_3:
        0 LOADK                            R4 K0 ["([^%w])"]
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R2 R0 K1 ["gsub"]
        5 CALL                             R2 3 1
        6 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["options"]
        3 GETTABLEKS                       R1 R1 K1 ["query_plus_is_space"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 LOADK                            R3 K2 ["+"]
        7 LOADK                            R4 K3 [" "]
        8 NAMECALL                         R1 R0 K4 ["gsub"]
       10 CALL                             R1 3 1
       11 MOVE                             R0 R1
       12 MOVE                             R2 R0
       13 LOADK                            R5 K5 ["%%(%x%x)"]
       14 DUPCLOSURE                       R6 K6 [PROTO_0]
       15 NAMECALL                         R3 R2 K4 ["gsub"]
       17 CALL                             R3 3 1
       18 MOVE                             R1 R3
       19 RETURN                           R1 1

PROTO_5:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
        7 NAMECALL                         R5 R0 K3 ["build"]
        9 CALL                             R5 1 1
       10 MOVE                             R3 R5
       11 MOVE                             R4 R1
       12 CONCAT                           R2 R3 R4
       13 RETURN                           R2 1
       14 MOVE                             R3 R0
       15 NAMECALL                         R4 R1 K3 ["build"]
       17 CALL                             R4 1 1
       18 CONCAT                           R2 R3 R4
       19 RETURN                           R2 1

PROTO_6:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+24]
        7 GETTABLEKS                       R3 R0 K3 ["path"]
        9 LOADK                            R4 K4 ["/"]
       10 LOADK                            R8 K5 ["^/+"]
       11 LOADK                            R9 K6 [""]
       12 NAMECALL                         R6 R1 K7 ["gsub"]
       14 CALL                             R6 3 1
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K8 ["options"]
       18 GETTABLEKS                       R7 R7 K9 ["legal_in_path"]
       20 LOADK                            R10 K10 ["([^%w])"]
       21 NEWCLOSURE                       R11 P0
       22 CAPTURE                          VAL R7
       23 NAMECALL                         R8 R6 K7 ["gsub"]
       25 CALL                             R8 3 1
       26 MOVE                             R5 R8
       27 CONCAT                           R2 R3 R5
       28 SETTABLEKS                       R2 R0 K3 ["path"]
       30 RETURN                           R0 1

PROTO_7:
        0 LOADK                            R1 K0 [""]
        1 GETTABLEKS                       R2 R0 K1 ["path"]
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETTABLEKS                       R2 R0 K1 ["path"]
        6 MOVE                             R3 R1
        7 FASTCALL1                        TOSTRING R2 ; [+3]
        8 MOVE                             R5 R2
        9 GETIMPORT                        R4 K3 [tostring]
       11 CALL                             R4 1 1
       12 CONCAT                           R1 R3 R4
       13 GETTABLEKS                       R2 R0 K4 ["query"]
       15 JUMPIFNOT                        R2 ; [+12]
       16 GETTABLEKS                       R3 R0 K4 ["query"]
       18 FASTCALL1                        TOSTRING R3 ; [+2]
       19 GETIMPORT                        R2 K3 [tostring]
       21 CALL                             R2 1 1
       22 JUMPIFEQKS                       R2 K0 [""] ; [+5]
       24 MOVE                             R3 R1
       25 LOADK                            R4 K5 ["?"]
       26 MOVE                             R5 R2
       27 CONCAT                           R1 R3 R5
       28 GETTABLEKS                       R2 R0 K6 ["host"]
       30 JUMPIFNOT                        R2 ; [+64]
       31 GETTABLEKS                       R2 R0 K6 ["host"]
       33 GETTABLEKS                       R3 R0 K7 ["port"]
       35 JUMPIFNOT                        R3 ; [+18]
       36 GETTABLEKS                       R3 R0 K8 ["scheme"]
       38 JUMPIFNOT                        R3 ; [+15]
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K9 ["services"]
       42 GETTABLEKS                       R5 R0 K8 ["scheme"]
       44 GETTABLE                         R3 R4 R5
       45 GETTABLEKS                       R4 R0 K7 ["port"]
       47 JUMPIFEQ                         R3 R4 ; [+6]
       49 MOVE                             R3 R2
       50 LOADK                            R4 K10 [":"]
       51 GETTABLEKS                       R5 R0 K7 ["port"]
       53 CONCAT                           R2 R3 R5
       54 LOADNIL                          R3
       55 GETTABLEKS                       R4 R0 K11 ["user"]
       57 JUMPIFNOT                        R4 ; [+14]
       58 GETTABLEKS                       R4 R0 K11 ["user"]
       60 JUMPIFEQKS                       R4 K0 [""] ; [+11]
       62 GETTABLEKS                       R3 R0 K11 ["user"]
       64 GETTABLEKS                       R4 R0 K12 ["password"]
       66 JUMPIFNOT                        R4 ; [+5]
       67 MOVE                             R4 R3
       68 LOADK                            R5 K10 [":"]
       69 GETTABLEKS                       R6 R0 K12 ["password"]
       71 CONCAT                           R3 R4 R6
       72 JUMPIFNOT                        R3 ; [+6]
       73 JUMPIFEQKS                       R3 K0 [""] ; [+5]
       75 MOVE                             R4 R3
       76 LOADK                            R5 K13 ["@"]
       77 MOVE                             R6 R2
       78 CONCAT                           R2 R4 R6
       79 JUMPIFNOT                        R2 ; [+15]
       80 JUMPIFEQKS                       R1 K0 [""] ; [+11]
       82 LOADK                            R4 K14 ["//"]
       83 MOVE                             R5 R2
       84 LOADK                            R6 K15 ["/"]
       85 LOADK                            R9 K16 ["^/+"]
       86 LOADK                            R10 K0 [""]
       87 NAMECALL                         R7 R1 K17 ["gsub"]
       89 CALL                             R7 3 1
       90 CONCAT                           R1 R4 R7
       91 JUMP                             ; [+3]
       92 LOADK                            R4 K14 ["//"]
       93 MOVE                             R5 R2
       94 CONCAT                           R1 R4 R5
       95 GETTABLEKS                       R2 R0 K8 ["scheme"]
       97 JUMPIFNOT                        R2 ; [+5]
       98 GETTABLEKS                       R2 R0 K8 ["scheme"]
      100 LOADK                            R3 K10 [":"]
      101 MOVE                             R4 R1
      102 CONCAT                           R1 R2 R4
      103 GETTABLEKS                       R2 R0 K18 ["fragment"]
      105 JUMPIFNOT                        R2 ; [+5]
      106 MOVE                             R2 R1
      107 LOADK                            R3 K19 ["#"]
      108 GETTABLEKS                       R4 R0 K18 ["fragment"]
      110 CONCAT                           R1 R2 R4
      111 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R3 K0 ["%03d"]
        1 MOVE                             R4 R1
        2 CONCAT                           R2 R3 R4
        3 FASTCALL1                        TONUMBER R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K2 [tonumber]
        7 CALL                             R4 1 1
        8 NAMECALL                         R2 R2 K3 ["format"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_9:
        0 DUPCLOSURE                       R2 K0 [PROTO_8]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 LOADK                            R6 K3 ["(%d+)(%.)"]
        7 MOVE                             R7 R2
        8 NAMECALL                         R4 R4 K4 ["gsub"]
       10 CALL                             R4 3 1
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R6 R1
       13 GETIMPORT                        R5 K2 [tostring]
       15 CALL                             R5 1 1
       16 LOADK                            R7 K3 ["(%d+)(%.)"]
       17 MOVE                             R8 R2
       18 NAMECALL                         R5 R5 K4 ["gsub"]
       20 CALL                             R5 3 1
       21 JUMPIFLT                         R4 R5 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 RETURN                           R3 1

PROTO_10:
        0 NEWTABLE                         R3 0 0
        2 JUMPIF                           R1 ; [+6]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["options"]
        6 GETTABLEKS                       R4 R4 K2 ["separator"]
        8 ORK                              R1 R4 K0 ["&"]
        9 NEWTABLE                         R4 0 0
       11 GETIMPORT                        R5 K4 [pairs]
       13 MOVE                             R6 R0
       14 CALL                             R5 1 3
       15 FORGPREP_NEXT                    R5
       16 LENGTH                           R11 R4
       17 ADDK                             R10 R11 K5 [1]
       18 SETTABLE                         R8 R4 R10
       19 FORGLOOP                         R5 1 ; [-4]
       21 GETIMPORT                        R5 K8 [table.sort]
       23 MOVE                             R6 R4
       24 DUPCLOSURE                       R7 K9 [PROTO_9]
       25 CALL                             R5 2 0
       26 GETIMPORT                        R5 K11 [ipairs]
       28 MOVE                             R6 R4
       29 CALL                             R5 1 3
       30 FORGPREP_INEXT                   R5
       31 GETTABLE                         R10 R0 R9
       32 FASTCALL1                        TOSTRING R9 ; [+3]
       33 MOVE                             R12 R9
       34 GETIMPORT                        R11 K13 [tostring]
       36 CALL                             R11 1 1
       37 NEWTABLE                         R12 4 0
       39 LOADB                            R13 1
       40 SETTABLEKS                       R13 R12 K14 ["-"]
       42 LOADB                            R13 1
       43 SETTABLEKS                       R13 R12 K15 ["_"]
       45 LOADB                            R13 1
       46 SETTABLEKS                       R13 R12 K16 ["."]
       48 LOADK                            R15 K17 ["([^%w])"]
       49 NEWCLOSURE                       R16 P1
       50 CAPTURE                          VAL R12
       51 NAMECALL                         R13 R11 K18 ["gsub"]
       53 CALL                             R13 3 1
       54 MOVE                             R9 R13
       55 JUMPIFNOT                        R2 ; [+34]
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R11 R11 K1 ["options"]
       59 GETTABLEKS                       R11 R11 K19 ["cumulative_parameters"]
       61 JUMPIFNOT                        R11 ; [+13]
       62 GETIMPORT                        R11 K22 [string.find]
       64 MOVE                             R12 R9
       65 LOADK                            R13 K23 ["^%d+$"]
       66 CALL                             R11 2 1
       67 JUMPIFNOT                        R11 ; [+7]
       68 FASTCALL1                        TOSTRING R2 ; [+3]
       69 MOVE                             R12 R2
       70 GETIMPORT                        R11 K13 [tostring]
       72 CALL                             R11 1 1
       73 MOVE                             R9 R11
       74 JUMP                             ; [+15]
       75 GETIMPORT                        R11 K25 [string.format]
       77 LOADK                            R12 K26 ["%s[%s]"]
       78 FASTCALL1                        TOSTRING R2 ; [+3]
       79 MOVE                             R14 R2
       80 GETIMPORT                        R13 K13 [tostring]
       82 CALL                             R13 1 1
       83 FASTCALL1                        TOSTRING R9 ; [+3]
       84 MOVE                             R15 R9
       85 GETIMPORT                        R14 K13 [tostring]
       87 CALL                             R14 1 1
       88 CALL                             R11 3 1
       89 MOVE                             R9 R11
       90 FASTCALL1                        TYPE R10 ; [+3]
       91 MOVE                             R12 R10
       92 GETIMPORT                        R11 K28 [type]
       94 CALL                             R11 1 1
       95 JUMPIFNOTEQKS                    R11 K6 ["table"] ; [+12]
       97 LENGTH                           R12 R3
       98 ADDK                             R11 R12 K5 [1]
       99 GETUPVAL                         R12 0
      100 GETTABLEKS                       R12 R12 K29 ["buildQuery"]
      102 MOVE                             R13 R10
      103 MOVE                             R14 R1
      104 MOVE                             R15 R9
      105 CALL                             R12 3 1
      106 SETTABLE                         R12 R3 R11
      107 JUMP                             ; [+32]
      108 FASTCALL1                        TOSTRING R10 ; [+3]
      109 MOVE                             R13 R10
      110 GETIMPORT                        R12 K13 [tostring]
      112 CALL                             R12 1 1
      113 GETUPVAL                         R13 0
      114 GETTABLEKS                       R13 R13 K1 ["options"]
      116 GETTABLEKS                       R13 R13 K30 ["legal_in_query"]
      118 LOADK                            R16 K17 ["([^%w])"]
      119 NEWCLOSURE                       R17 P1
      120 CAPTURE                          VAL R13
      121 NAMECALL                         R14 R12 K18 ["gsub"]
      123 CALL                             R14 3 1
      124 MOVE                             R11 R14
      125 JUMPIFEQKS                       R11 K31 [""] ; [+11]
      127 LENGTH                           R13 R3
      128 ADDK                             R12 R13 K5 [1]
      129 GETIMPORT                        R13 K25 [string.format]
      131 LOADK                            R14 K32 ["%s=%s"]
      132 MOVE                             R15 R9
      133 MOVE                             R16 R11
      134 CALL                             R13 3 1
      135 SETTABLE                         R13 R3 R12
      136 JUMP                             ; [+3]
      137 LENGTH                           R13 R3
      138 ADDK                             R12 R13 K5 [1]
      139 SETTABLE                         R9 R3 R12
      140 FORGLOOP                         R5 2 [inext] ; [-110]
      142 GETIMPORT                        R5 K34 [table.concat]
      144 MOVE                             R6 R3
      145 MOVE                             R7 R1
      146 CALL                             R5 2 -1
      147 RETURN                           R5 -1

PROTO_11:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^-?%d+$"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 FASTCALL1                        TONUMBER R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K5 [tonumber]
       10 CALL                             R1 1 1
       11 MOVE                             R0 R1
       12 JUMP                             ; [+20]
       13 MOVE                             R1 R0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K6 ["options"]
       17 GETTABLEKS                       R2 R2 K7 ["query_plus_is_space"]
       19 JUMPIFNOT                        R2 ; [+6]
       20 LOADK                            R4 K8 ["+"]
       21 LOADK                            R5 K9 [" "]
       22 NAMECALL                         R2 R1 K10 ["gsub"]
       24 CALL                             R2 3 1
       25 MOVE                             R1 R2
       26 MOVE                             R2 R1
       27 LOADK                            R5 K11 ["%%(%x%x)"]
       28 DUPCLOSURE                       R6 K12 [PROTO_0]
       29 NAMECALL                         R3 R2 K10 ["gsub"]
       31 CALL                             R3 3 1
       32 MOVE                             R0 R3
       33 GETUPVAL                         R2 1
       34 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       36 MOVE                             R3 R0
       37 GETIMPORT                        R1 K15 [table.insert]
       39 CALL                             R1 2 0
       40 LOADK                            R1 K16 ["="]
       41 RETURN                           R1 1

PROTO_12:
        0 JUMPIF                           R1 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["options"]
        4 GETTABLEKS                       R2 R2 K2 ["separator"]
        6 ORK                              R1 R2 K0 ["&"]
        7 NEWTABLE                         R2 0 0
        9 GETIMPORT                        R5 K5 [string.format]
       11 LOADK                            R6 K6 ["([^%s=]+)(=*[^%s]*)"]
       12 MOVE                             R7 R1
       13 MOVE                             R8 R1
       14 CALL                             R5 3 -1
       15 NAMECALL                         R3 R0 K7 ["gmatch"]
       17 CALL                             R3 -1 3
       18 FORGPREP                         R3
       19 MOVE                             R9 R6
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R10 R10 K1 ["options"]
       23 GETTABLEKS                       R10 R10 K8 ["query_plus_is_space"]
       25 JUMPIFNOT                        R10 ; [+6]
       26 LOADK                            R12 K9 ["+"]
       27 LOADK                            R13 K10 [" "]
       28 NAMECALL                         R10 R9 K11 ["gsub"]
       30 CALL                             R10 3 1
       31 MOVE                             R9 R10
       32 MOVE                             R10 R9
       33 LOADK                            R13 K12 ["%%(%x%x)"]
       34 DUPCLOSURE                       R14 K13 [PROTO_0]
       35 NAMECALL                         R11 R10 K11 ["gsub"]
       37 CALL                             R11 3 1
       38 MOVE                             R8 R11
       39 NEWTABLE                         R9 0 0
       41 LOADK                            R12 K14 ["%[([^%]]*)%]"]
       42 NEWCLOSURE                       R13 P1
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R9
       45 NAMECALL                         R10 R8 K11 ["gsub"]
       47 CALL                             R10 3 1
       48 MOVE                             R8 R10
       49 LOADK                            R12 K15 ["=+.*$"]
       50 LOADK                            R13 K16 [""]
       51 NAMECALL                         R10 R8 K11 ["gsub"]
       53 CALL                             R10 3 1
       54 MOVE                             R8 R10
       55 LOADK                            R12 K17 ["%s"]
       56 LOADK                            R13 K18 ["_"]
       57 NAMECALL                         R10 R8 K11 ["gsub"]
       59 CALL                             R10 3 1
       60 MOVE                             R8 R10
       61 LOADK                            R12 K19 ["^=+"]
       62 LOADK                            R13 K16 [""]
       63 NAMECALL                         R10 R7 K11 ["gsub"]
       65 CALL                             R10 3 1
       66 MOVE                             R7 R10
       67 GETTABLE                         R10 R2 R8
       68 JUMPIF                           R10 ; [+3]
       69 NEWTABLE                         R10 0 0
       71 SETTABLE                         R10 R2 R8
       72 LENGTH                           R10 R9
       73 LOADN                            R11 0
       74 JUMPIFNOTLT                      R11 R10 ; [+12]
       76 GETTABLE                         R11 R2 R8
       77 FASTCALL1                        TYPE R11 ; [+2]
       78 GETIMPORT                        R10 K21 [type]
       80 CALL                             R10 1 1
       81 JUMPIFEQKS                       R10 K22 ["table"] ; [+5]
       83 NEWTABLE                         R10 0 0
       85 SETTABLE                         R10 R2 R8
       86 JUMP                             ; [+77]
       87 LENGTH                           R10 R9
       88 JUMPIFNOTEQKN                    R10 K23 [0] ; [+30]
       90 GETTABLE                         R11 R2 R8
       91 FASTCALL1                        TYPE R11 ; [+2]
       92 GETIMPORT                        R10 K21 [type]
       94 CALL                             R10 1 1
       95 JUMPIFNOTEQKS                    R10 K22 ["table"] ; [+23]
       97 MOVE                             R11 R7
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R12 R12 K1 ["options"]
      101 GETTABLEKS                       R12 R12 K8 ["query_plus_is_space"]
      103 JUMPIFNOT                        R12 ; [+6]
      104 LOADK                            R14 K9 ["+"]
      105 LOADK                            R15 K10 [" "]
      106 NAMECALL                         R12 R11 K11 ["gsub"]
      108 CALL                             R12 3 1
      109 MOVE                             R11 R12
      110 MOVE                             R12 R11
      111 LOADK                            R15 K12 ["%%(%x%x)"]
      112 DUPCLOSURE                       R16 K13 [PROTO_0]
      113 NAMECALL                         R13 R12 K11 ["gsub"]
      115 CALL                             R13 3 1
      116 MOVE                             R10 R13
      117 SETTABLE                         R10 R2 R8
      118 JUMP                             ; [+45]
      119 GETUPVAL                         R10 0
      120 GETTABLEKS                       R10 R10 K1 ["options"]
      122 GETTABLEKS                       R10 R10 K24 ["cumulative_parameters"]
      124 JUMPIFNOT                        R10 ; [+39]
      125 GETTABLE                         R11 R2 R8
      126 FASTCALL1                        TYPE R11 ; [+2]
      127 GETIMPORT                        R10 K21 [type]
      129 CALL                             R10 1 1
      130 JUMPIFNOTEQKS                    R10 K3 ["string"] ; [+33]
      132 NEWTABLE                         R10 0 1
      134 GETTABLE                         R11 R2 R8
      135 SETLIST                          R10 R11 1 [1]
      137 SETTABLE                         R10 R2 R8
      138 GETTABLE                         R11 R2 R8
      139 MOVE                             R13 R7
      140 GETUPVAL                         R14 0
      141 GETTABLEKS                       R14 R14 K1 ["options"]
      143 GETTABLEKS                       R14 R14 K8 ["query_plus_is_space"]
      145 JUMPIFNOT                        R14 ; [+6]
      146 LOADK                            R16 K9 ["+"]
      147 LOADK                            R17 K10 [" "]
      148 NAMECALL                         R14 R13 K11 ["gsub"]
      150 CALL                             R14 3 1
      151 MOVE                             R13 R14
      152 MOVE                             R14 R13
      153 LOADK                            R17 K12 ["%%(%x%x)"]
      154 DUPCLOSURE                       R18 K13 [PROTO_0]
      155 NAMECALL                         R15 R14 K11 ["gsub"]
      157 CALL                             R15 3 1
      158 MOVE                             R12 R15
      159 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      161 GETIMPORT                        R10 K26 [table.insert]
      163 CALL                             R10 2 0
      164 GETTABLE                         R10 R2 R8
      165 GETIMPORT                        R11 K28 [ipairs]
      167 MOVE                             R12 R9
      168 CALL                             R11 1 3
      169 FORGPREP_INEXT                   R11
      170 FASTCALL1                        TYPE R10 ; [+3]
      171 MOVE                             R17 R10
      172 GETIMPORT                        R16 K21 [type]
      174 CALL                             R16 1 1
      175 JUMPIFEQKS                       R16 K22 ["table"] ; [+3]
      177 NEWTABLE                         R10 0 0
      179 JUMPIFNOTEQKS                    R15 K16 [""] ; [+3]
      181 LENGTH                           R16 R10
      182 ADDK                             R15 R16 K29 [1]
      183 GETTABLE                         R16 R10 R15
      184 JUMPIF                           R16 ; [+3]
      185 NEWTABLE                         R16 0 0
      187 SETTABLE                         R16 R10 R15
      188 LENGTH                           R16 R9
      189 JUMPIFNOTEQ                      R14 R16 ; [+2]
      191 SETTABLE                         R7 R10 R15
      192 GETTABLE                         R10 R10 R15
      193 FORGLOOP                         R11 2 [inext] ; [-24]
      195 FORGLOOP                         R3 2 ; [-177]
      197 DUPTABLE                         R5 K31 [{"__tostring"}]
      198 GETUPVAL                         R6 0
      199 GETTABLEKS                       R6 R6 K32 ["buildQuery"]
      201 SETTABLEKS                       R6 R5 K30 ["__tostring"]
      203 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      205 MOVE                             R4 R2
      206 GETIMPORT                        R3 K34 [setmetatable]
      208 CALL                             R3 2 0
      209 RETURN                           R2 1

PROTO_13:
        0 MOVE                             R2 R1
        1 FASTCALL1                        TYPE R2 ; [+3]
        2 MOVE                             R4 R2
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+7]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["buildQuery"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 MOVE                             R2 R3
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["parseQuery"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R0 K5 ["query"]
       21 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["userinfo"]
        3 LOADK                            R1 K1 [""]
        4 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TONUMBER R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [tonumber]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K2 ["port"]
        8 LOADK                            R1 K3 [""]
        9 RETURN                           R1 1

PROTO_16:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R4 K0 ["^(%d+)%.(%d+)%.(%d+)%.(%d+)$"]
        3 NAMECALL                         R2 R0 K1 ["match"]
        5 CALL                             R2 2 -1
        6 SETLIST                          R1 R2 -1 [1]
        8 LENGTH                           R2 R1
        9 JUMPIFNOTEQKN                    R2 K2 [4] ; [+19]
       11 GETIMPORT                        R2 K4 [pairs]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 3
       15 FORGPREP_NEXT                    R2
       16 FASTCALL1                        TONUMBER R6 ; [+3]
       17 MOVE                             R8 R6
       18 GETIMPORT                        R7 K6 [tonumber]
       20 CALL                             R7 1 1
       21 LOADN                            R8 255
       22 JUMPIFNOTLT                      R8 R7 ; [+3]
       24 LOADB                            R7 0
       25 RETURN                           R7 1
       26 FORGLOOP                         R2 2 ; [-11]
       28 RETURN                           R0 1
       29 NEWTABLE                         R2 0 1
       31 LOADK                            R6 K7 ["^%["]
       32 LOADK                            R7 K8 ["([a-fA-F0-9]*):"]
       33 LOADN                            R9 8
       34 NAMECALL                         R7 R7 K9 ["rep"]
       36 CALL                             R7 2 1
       37 LOADK                            R9 K10 [":$"]
       38 LOADK                            R10 K11 ["%%]$"]
       39 NAMECALL                         R7 R7 K12 ["gsub"]
       41 CALL                             R7 3 1
       42 CONCAT                           R5 R6 R7
       43 NAMECALL                         R3 R0 K1 ["match"]
       45 CALL                             R3 2 -1
       46 SETLIST                          R2 R3 -1 [1]
       48 LENGTH                           R3 R2
       49 JUMPIFEQKN                       R3 K13 [8] ; [+21]
       51 LENGTH                           R3 R2
       52 LOADN                            R4 8
       53 JUMPIFNOTLT                      R3 R4 ; [+41]
       55 LOADK                            R5 K14 ["::"]
       56 NAMECALL                         R3 R0 K1 ["match"]
       58 CALL                             R3 2 1
       59 JUMPIFNOT                        R3 ; [+35]
       60 LOADK                            R5 K14 ["::"]
       61 LOADK                            R6 K15 [""]
       62 LOADN                            R7 1
       63 NAMECALL                         R3 R0 K12 ["gsub"]
       65 CALL                             R3 4 1
       66 LOADK                            R5 K14 ["::"]
       67 NAMECALL                         R3 R3 K1 ["match"]
       69 CALL                             R3 2 1
       70 JUMPIF                           R3 ; [+24]
       71 GETIMPORT                        R3 K4 [pairs]
       73 MOVE                             R4 R2
       74 CALL                             R3 1 3
       75 FORGPREP_NEXT                    R3
       76 LENGTH                           R8 R7
       77 LOADN                            R9 0
       78 JUMPIFNOTLT                      R9 R8 ; [+13]
       80 FASTCALL2K                       TONUMBER R7 K16 ; [+5]
       82 MOVE                             R9 R7
       83 LOADK                            R10 K16 [16]
       84 GETIMPORT                        R8 K6 [tonumber]
       86 CALL                             R8 2 1
       87 LOADK                            R9 K17 [65535]
       88 JUMPIFNOTLT                      R9 R8 ; [+3]
       90 LOADB                            R8 0
       91 RETURN                           R8 1
       92 FORGLOOP                         R3 2 ; [-17]
       94 RETURN                           R0 1
       95 LOADNIL                          R3
       96 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["password"]
        3 LOADK                            R1 K1 [""]
        4 RETURN                           R1 1

PROTO_18:
        0 SETTABLEKS                       R1 R0 K0 ["authority"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R0 K1 ["port"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R0 K2 ["host"]
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R0 K3 ["userinfo"]
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R0 K4 ["user"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R0 K5 ["password"]
       17 LOADK                            R4 K6 ["^([^@]*)@"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R2 R1 K7 ["gsub"]
       22 CALL                             R2 3 1
       23 MOVE                             R1 R2
       24 LOADK                            R4 K8 [":(%d+)$"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R2 R1 K7 ["gsub"]
       29 CALL                             R2 3 1
       30 MOVE                             R1 R2
       31 DUPCLOSURE                       R2 K9 [PROTO_16]
       32 MOVE                             R3 R2
       33 MOVE                             R4 R1
       34 CALL                             R3 1 1
       35 JUMPIFNOT                        R3 ; [+3]
       36 SETTABLEKS                       R3 R0 K2 ["host"]
       38 JUMP                             ; [+50]
       39 FASTCALL1                        TYPE R3 ; [+3]
       40 MOVE                             R5 R3
       41 GETIMPORT                        R4 K11 [type]
       43 CALL                             R4 1 1
       44 JUMPIFNOTEQKS                    R4 K12 ["nil"] ; [+44]
       46 JUMPIFEQKS                       R1 K13 [""] ; [+42]
       48 GETTABLEKS                       R4 R0 K2 ["host"]
       50 JUMPIF                           R4 ; [+38]
       51 NAMECALL                         R4 R1 K14 ["lower"]
       53 CALL                             R4 1 1
       54 GETIMPORT                        R5 K17 [string.match]
       56 MOVE                             R6 R4
       57 LOADK                            R7 K18 ["^[%d%a%-%.]+$"]
       58 CALL                             R5 2 1
       59 JUMPIFEQKNIL                     R5 ; [+29]
       61 LOADN                            R7 0
       62 LOADN                            R8 1
       63 FASTCALL3                        STRING_SUB R4 R7 R8
       65 MOVE                             R6 R4
       66 GETIMPORT                        R5 K20 [string.sub]
       68 CALL                             R5 3 1
       69 JUMPIFEQKS                       R5 K21 ["."] ; [+19]
       71 FASTCALL2K                       STRING_SUB R4 K22 ; [+5]
       73 MOVE                             R6 R4
       74 LOADK                            R7 K22 [-1]
       75 GETIMPORT                        R5 K20 [string.sub]
       77 CALL                             R5 2 1
       78 JUMPIFEQKS                       R5 K21 ["."] ; [+10]
       80 GETIMPORT                        R5 K24 [string.find]
       82 MOVE                             R6 R4
       83 LOADK                            R7 K25 ["%.%."]
       84 CALL                             R5 2 1
       85 JUMPIFNOTEQKNIL                  R5 ; [+3]
       87 SETTABLEKS                       R4 R0 K2 ["host"]
       89 GETTABLEKS                       R4 R0 K3 ["userinfo"]
       91 JUMPIFNOT                        R4 ; [+27]
       92 GETTABLEKS                       R4 R0 K3 ["userinfo"]
       94 LOADK                            R7 K26 [":([^:]*)$"]
       95 NEWCLOSURE                       R8 P3
       96 CAPTURE                          VAL R0
       97 NAMECALL                         R5 R4 K7 ["gsub"]
       99 CALL                             R5 3 1
      100 MOVE                             R4 R5
      101 GETIMPORT                        R5 K24 [string.find]
      103 MOVE                             R6 R4
      104 LOADK                            R7 K27 ["^[%w%+%.]+$"]
      105 CALL                             R5 2 1
      106 JUMPIFNOT                        R5 ; [+3]
      107 SETTABLEKS                       R4 R0 K4 ["user"]
      109 RETURN                           R1 1
      110 LOADNIL                          R5
      111 SETTABLEKS                       R5 R0 K3 ["userinfo"]
      113 LOADNIL                          R5
      114 SETTABLEKS                       R5 R0 K4 ["user"]
      116 LOADNIL                          R5
      117 SETTABLEKS                       R5 R0 K5 ["password"]
      119 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["fragment"]
        3 LOADK                            R1 K1 [""]
        4 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["lower"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K1 ["scheme"]
        6 LOADK                            R1 K2 [""]
        7 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setQuery"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 LOADK                            R1 K1 [""]
        7 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setAuthority"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 LOADK                            R1 K1 [""]
        7 RETURN                           R1 1

PROTO_23:
        0 LOADK                            R4 K0 ["%%(%x%x)"]
        1 DUPCLOSURE                       R5 K1 [PROTO_0]
        2 NAMECALL                         R2 R0 K2 ["gsub"]
        4 CALL                             R2 3 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["options"]
        8 GETTABLEKS                       R3 R3 K4 ["legal_in_path"]
       10 LOADK                            R6 K5 ["([^%w])"]
       11 NEWCLOSURE                       R7 P1
       12 CAPTURE                          VAL R3
       13 NAMECALL                         R4 R2 K2 ["gsub"]
       15 CALL                             R4 3 1
       16 MOVE                             R1 R4
       17 RETURN                           R1 1

PROTO_24:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setAuthority"]
        5 MOVE                             R3 R1
        6 LOADK                            R4 K1 [""]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["setQuery"]
       11 MOVE                             R3 R1
       12 LOADK                            R4 K1 [""]
       13 CALL                             R2 2 0
       14 ORK                              R3 R0 K1 [""]
       15 FASTCALL1                        TOSTRING R3 ; [+2]
       16 GETIMPORT                        R2 K4 [tostring]
       18 CALL                             R2 1 1
       19 LOADK                            R5 K5 ["#(.*)$"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R1
       22 NAMECALL                         R3 R2 K6 ["gsub"]
       24 CALL                             R3 3 1
       25 MOVE                             R2 R3
       26 LOADK                            R5 K7 ["^([%w][%w%+%-%.]*)%:"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R1
       29 NAMECALL                         R3 R2 K6 ["gsub"]
       31 CALL                             R3 3 1
       32 MOVE                             R2 R3
       33 LOADK                            R5 K8 ["%?(.*)"]
       34 NEWCLOSURE                       R6 P2
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          VAL R1
       37 NAMECALL                         R3 R2 K6 ["gsub"]
       39 CALL                             R3 3 1
       40 MOVE                             R2 R3
       41 LOADK                            R5 K9 ["^//([^/]*)"]
       42 NEWCLOSURE                       R6 P3
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R1
       45 NAMECALL                         R3 R2 K6 ["gsub"]
       47 CALL                             R3 3 1
       48 MOVE                             R2 R3
       49 LOADK                            R5 K10 ["([^/]+)"]
       50 DUPCLOSURE                       R6 K11 [PROTO_23]
       51 CAPTURE                          UPVAL U0
       52 NAMECALL                         R3 R2 K6 ["gsub"]
       54 CALL                             R3 3 1
       55 SETTABLEKS                       R3 R1 K12 ["path"]
       57 DUPTABLE                         R5 K17 [{"__index", "__tostring", "__concat", "__div"}]
       58 GETUPVAL                         R6 0
       59 SETTABLEKS                       R6 R5 K13 ["__index"]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K18 ["build"]
       64 SETTABLEKS                       R6 R5 K14 ["__tostring"]
       66 GETUPVAL                         R6 1
       67 SETTABLEKS                       R6 R5 K15 ["__concat"]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K19 ["addSegment"]
       72 SETTABLEKS                       R6 R5 K16 ["__div"]
       74 FASTCALL2                        SETMETATABLE R1 R5 ; [+4]
       76 MOVE                             R4 R1
       77 GETIMPORT                        R3 K21 [setmetatable]
       79 CALL                             R3 2 0
       80 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_26:
        0 NEWTABLE                         R1 0 0
        2 FASTCALL1                        STRING_LEN R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K2 [string.len]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKN                    R2 K3 [0] ; [+3]
        9 LOADK                            R2 K4 [""]
       10 RETURN                           R2 1
       11 LOADB                            R2 0
       12 LOADB                            R3 0
       13 LOADN                            R6 1
       14 LOADN                            R7 1
       15 FASTCALL3                        STRING_SUB R0 R6 R7
       17 MOVE                             R5 R0
       18 GETIMPORT                        R4 K6 [string.sub]
       20 CALL                             R4 3 1
       21 JUMPIFNOTEQKS                    R4 K7 ["/"] ; [+2]
       23 LOADB                            R2 1
       24 FASTCALL1                        STRING_LEN R0 ; [+3]
       25 MOVE                             R5 R0
       26 GETIMPORT                        R4 K2 [string.len]
       28 CALL                             R4 1 1
       29 LOADN                            R5 1
       30 JUMPIFLT                         R5 R4 ; [+3]
       32 JUMPIFNOTEQKB                    R2 FALSE ; [+11]
       34 FASTCALL2K                       STRING_SUB R0 K8 ; [+5]
       36 MOVE                             R5 R0
       37 LOADK                            R6 K8 [-1]
       38 GETIMPORT                        R4 K6 [string.sub]
       40 CALL                             R4 2 1
       41 JUMPIFNOTEQKS                    R4 K7 ["/"] ; [+2]
       43 LOADB                            R3 1
       44 LOADK                            R6 K9 ["[^/]+"]
       45 NEWCLOSURE                       R7 P0
       46 CAPTURE                          VAL R1
       47 NAMECALL                         R4 R0 K10 ["gsub"]
       49 CALL                             R4 3 0
       50 NEWTABLE                         R4 0 0
       52 LOADN                            R5 0
       53 GETIMPORT                        R6 K12 [ipairs]
       55 MOVE                             R7 R1
       56 CALL                             R6 1 3
       57 FORGPREP_INEXT                   R6
       58 JUMPIFNOTEQKS                    R10 K13 [".."] ; [+6]
       60 LOADN                            R11 0
       61 JUMPIFNOTLT                      R11 R5 ; [+7]
       63 SUBK                             R5 R5 K14 [1]
       64 JUMP                             ; [+4]
       65 JUMPIFEQKS                       R10 K15 ["."] ; [+3]
       67 ADDK                             R5 R5 K14 [1]
       68 SETTABLE                         R10 R4 R5
       69 FORGLOOP                         R6 2 [inext] ; [-12]
       71 LOADK                            R6 K4 [""]
       72 LENGTH                           R7 R4
       73 LOADN                            R8 0
       74 JUMPIFNOTLT                      R8 R7 ; [+13]
       76 LOADN                            R7 0
       77 JUMPIFNOTLT                      R7 R5 ; [+10]
       79 GETIMPORT                        R7 K18 [table.concat]
       81 MOVE                             R8 R4
       82 LOADK                            R9 K7 ["/"]
       83 LOADN                            R10 1
       84 MOVE                             R11 R5
       85 CALL                             R7 4 1
       86 MOVE                             R6 R7
       87 JUMP                             ; [+1]
       88 LOADK                            R6 K4 [""]
       89 JUMPIFNOT                        R2 ; [+3]
       90 LOADK                            R7 K7 ["/"]
       91 MOVE                             R8 R6
       92 CONCAT                           R6 R7 R8
       93 JUMPIFNOT                        R3 ; [+3]
       94 MOVE                             R7 R6
       95 LOADK                            R8 K7 ["/"]
       96 CONCAT                           R6 R7 R8
       97 RETURN                           R6 1

PROTO_27:
        0 JUMPIFEQKS                       R0 K0 ["./"] ; [+2]
        2 RETURN                           R0 1
        3 LOADK                            R1 K1 [""]
        4 RETURN                           R1 1

PROTO_28:
        0 JUMPIFEQKS                       R0 K0 ["../../"] ; [+3]
        2 LOADK                            R1 K1 [""]
        3 RETURN                           R1 1
        4 RETURN                           R0 1

PROTO_29:
        0 JUMPIFEQKS                       R0 K0 ["../.."] ; [+3]
        2 LOADK                            R1 K1 [""]
        3 RETURN                           R1 1
        4 RETURN                           R0 1

PROTO_30:
        0 LOADN                            R4 1
        1 LOADN                            R5 1
        2 FASTCALL3                        STRING_SUB R1 R4 R5
        4 MOVE                             R3 R1
        5 GETIMPORT                        R2 K2 [string.sub]
        7 CALL                             R2 3 1
        8 JUMPIFNOTEQKS                    R2 K3 ["/"] ; [+10]
       10 LOADK                            R3 K3 ["/"]
       11 GETIMPORT                        R4 K5 [string.gsub]
       13 MOVE                             R5 R1
       14 LOADK                            R6 K6 ["^[%./]+"]
       15 LOADK                            R7 K7 [""]
       16 CALL                             R4 3 1
       17 CONCAT                           R2 R3 R4
       18 RETURN                           R2 1
       19 MOVE                             R2 R0
       20 LOADN                            R6 1
       21 LOADN                            R7 1
       22 FASTCALL3                        STRING_SUB R2 R6 R7
       24 MOVE                             R5 R2
       25 GETIMPORT                        R4 K2 [string.sub]
       27 CALL                             R4 3 1
       28 JUMPIFNOTEQKS                    R4 K3 ["/"] ; [+2]
       30 LOADB                            R3 0 +1
       31 LOADB                            R3 1
       32 JUMPIFEQKS                       R1 K7 [""] ; [+11]
       34 JUMPIFNOT                        R3 ; [+2]
       35 LOADK                            R4 K7 [""]
       36 JUMP                             ; [+1]
       37 LOADK                            R4 K3 ["/"]
       38 LOADK                            R7 K8 ["[^/]*$"]
       39 LOADK                            R8 K7 [""]
       40 NAMECALL                         R5 R2 K4 ["gsub"]
       42 CALL                             R5 3 1
       43 CONCAT                           R2 R4 R5
       44 MOVE                             R4 R2
       45 MOVE                             R5 R1
       46 CONCAT                           R2 R4 R5
       47 LOADK                            R6 K9 ["([^/]*%./)"]
       48 DUPCLOSURE                       R7 K10 [PROTO_27]
       49 NAMECALL                         R4 R2 K4 ["gsub"]
       51 CALL                             R4 3 1
       52 MOVE                             R2 R4
       53 GETIMPORT                        R4 K5 [string.gsub]
       55 MOVE                             R5 R2
       56 LOADK                            R6 K11 ["/%.$"]
       57 LOADK                            R7 K3 ["/"]
       58 CALL                             R4 3 1
       59 MOVE                             R2 R4
       60 LOADNIL                          R4
       61 JUMPIFEQ                         R4 R2 ; [+10]
       63 MOVE                             R4 R2
       64 GETIMPORT                        R5 K5 [string.gsub]
       66 MOVE                             R6 R4
       67 LOADK                            R7 K12 ["([^/]*/%.%./)"]
       68 DUPCLOSURE                       R8 K13 [PROTO_28]
       69 CALL                             R5 3 1
       70 MOVE                             R2 R5
       71 JUMPBACK                         ; [-11]
       72 GETIMPORT                        R5 K5 [string.gsub]
       74 MOVE                             R6 R2
       75 LOADK                            R7 K14 ["([^/]*/%.%.?)$"]
       76 DUPCLOSURE                       R8 K15 [PROTO_29]
       77 CALL                             R5 3 1
       78 MOVE                             R2 R5
       79 LOADNIL                          R5
       80 JUMPIFEQ                         R5 R2 ; [+10]
       82 MOVE                             R5 R2
       83 GETIMPORT                        R6 K5 [string.gsub]
       85 MOVE                             R7 R5
       86 LOADK                            R8 K16 ["^/?%.%./"]
       87 LOADK                            R9 K7 [""]
       88 CALL                             R6 3 1
       89 MOVE                             R2 R6
       90 JUMPBACK                         ; [-11]
       91 JUMPIFNOT                        R3 ; [+2]
       92 LOADK                            R7 K7 [""]
       93 JUMP                             ; [+1]
       94 LOADK                            R7 K3 ["/"]
       95 MOVE                             R8 R2
       96 CONCAT                           R6 R7 R8
       97 RETURN                           R6 1

PROTO_31:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+7]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["parse"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 MOVE                             R0 R2
       13 FASTCALL1                        TYPE R1 ; [+3]
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K1 [type]
       17 CALL                             R2 1 1
       18 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+7]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K3 ["parse"]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 MOVE                             R1 R2
       26 GETTABLEKS                       R2 R1 K4 ["scheme"]
       28 JUMPIFNOT                        R2 ; [+1]
       29 RETURN                           R1 1
       30 GETTABLEKS                       R2 R0 K4 ["scheme"]
       32 SETTABLEKS                       R2 R1 K4 ["scheme"]
       34 GETTABLEKS                       R2 R1 K5 ["authority"]
       36 JUMPIFNOT                        R2 ; [+4]
       37 GETTABLEKS                       R2 R1 K5 ["authority"]
       39 JUMPIFNOTEQKS                    R2 K6 [""] ; [+38]
       41 GETTABLEKS                       R4 R0 K5 ["authority"]
       43 NAMECALL                         R2 R1 K7 ["setAuthority"]
       45 CALL                             R2 2 0
       46 GETTABLEKS                       R2 R1 K8 ["path"]
       48 JUMPIFNOT                        R2 ; [+4]
       49 GETTABLEKS                       R2 R1 K8 ["path"]
       51 JUMPIFNOTEQKS                    R2 K6 [""] ; [+18]
       53 GETTABLEKS                       R2 R0 K8 ["path"]
       55 SETTABLEKS                       R2 R1 K8 ["path"]
       57 GETTABLEKS                       R2 R1 K9 ["query"]
       59 JUMPIFNOT                        R2 ; [+5]
       60 GETIMPORT                        R3 K11 [next]
       62 MOVE                             R4 R2
       63 CALL                             R3 1 1
       64 JUMPIF                           R3 ; [+13]
       65 GETTABLEKS                       R3 R0 K9 ["query"]
       67 SETTABLEKS                       R3 R1 K9 ["query"]
       69 RETURN                           R1 1
       70 GETUPVAL                         R2 1
       71 GETTABLEKS                       R3 R0 K8 ["path"]
       73 GETTABLEKS                       R4 R1 K8 ["path"]
       75 CALL                             R2 2 1
       76 SETTABLEKS                       R2 R1 K8 ["path"]
       78 RETURN                           R1 1

PROTO_32:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+7]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["parse"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 MOVE                             R0 R1
       13 GETTABLEKS                       R1 R0 K4 ["path"]
       15 JUMPIFNOT                        R1 ; [+16]
       16 GETTABLEKS                       R1 R0 K4 ["path"]
       18 GETUPVAL                         R2 1
       19 MOVE                             R3 R1
       20 LOADK                            R4 K5 [""]
       21 CALL                             R2 2 1
       22 MOVE                             R1 R2
       23 GETIMPORT                        R2 K7 [string.gsub]
       25 MOVE                             R3 R1
       26 LOADK                            R4 K8 ["//+"]
       27 LOADK                            R5 K9 ["/"]
       28 CALL                             R2 3 1
       29 MOVE                             R1 R2
       30 SETTABLEKS                       R1 R0 K4 ["path"]
       32 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADK                            R1 K0 ["1.2"]
        4 SETTABLEKS                       R1 R0 K1 ["version"]
        6 DUPTABLE                         R1 K10 [{["separator"] = "&", ["cumulative_parameters"] = False, ["legal_in_path"], ["legal_in_query"], ["query_plus_is_space"] = True}]
        7 NEWTABLE                         R2 16 0
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K11 [":"]
       12 LOADB                            R3 1
       13 SETTABLEKS                       R3 R2 K12 ["-"]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K13 ["_"]
       18 LOADB                            R3 1
       19 SETTABLEKS                       R3 R2 K14 ["."]
       21 LOADB                            R3 1
       22 SETTABLEKS                       R3 R2 K15 ["!"]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R2 K16 ["~"]
       27 LOADB                            R3 1
       28 SETTABLEKS                       R3 R2 K17 ["*"]
       30 LOADB                            R3 1
       31 SETTABLEKS                       R3 R2 K18 ["'"]
       33 LOADB                            R3 1
       34 SETTABLEKS                       R3 R2 K19 ["("]
       36 LOADB                            R3 1
       37 SETTABLEKS                       R3 R2 K20 [")"]
       39 LOADB                            R3 1
       40 SETTABLEKS                       R3 R2 K21 ["@"]
       42 LOADB                            R3 1
       43 SETTABLEKS                       R3 R2 K3 ["&"]
       45 LOADB                            R3 1
       46 SETTABLEKS                       R3 R2 K22 ["="]
       48 LOADB                            R3 1
       49 SETTABLEKS                       R3 R2 K23 ["$"]
       51 LOADB                            R3 1
       52 SETTABLEKS                       R3 R2 K24 [","]
       54 LOADB                            R3 1
       55 SETTABLEKS                       R3 R2 K25 [";"]
       57 SETTABLEKS                       R2 R1 K6 ["legal_in_path"]
       59 NEWTABLE                         R2 16 0
       61 LOADB                            R3 1
       62 SETTABLEKS                       R3 R2 K11 [":"]
       64 LOADB                            R3 1
       65 SETTABLEKS                       R3 R2 K12 ["-"]
       67 LOADB                            R3 1
       68 SETTABLEKS                       R3 R2 K13 ["_"]
       70 LOADB                            R3 1
       71 SETTABLEKS                       R3 R2 K14 ["."]
       73 LOADB                            R3 1
       74 SETTABLEKS                       R3 R2 K24 [","]
       76 LOADB                            R3 1
       77 SETTABLEKS                       R3 R2 K15 ["!"]
       79 LOADB                            R3 1
       80 SETTABLEKS                       R3 R2 K16 ["~"]
       82 LOADB                            R3 1
       83 SETTABLEKS                       R3 R2 K17 ["*"]
       85 LOADB                            R3 1
       86 SETTABLEKS                       R3 R2 K18 ["'"]
       88 LOADB                            R3 1
       89 SETTABLEKS                       R3 R2 K25 [";"]
       91 LOADB                            R3 1
       92 SETTABLEKS                       R3 R2 K19 ["("]
       94 LOADB                            R3 1
       95 SETTABLEKS                       R3 R2 K20 [")"]
       97 LOADB                            R3 1
       98 SETTABLEKS                       R3 R2 K21 ["@"]
      100 LOADB                            R3 1
      101 SETTABLEKS                       R3 R2 K23 ["$"]
      103 SETTABLEKS                       R2 R1 K7 ["legal_in_query"]
      105 SETTABLEKS                       R1 R0 K26 ["options"]
      107 DUPTABLE                         R1 K83 [{["acap"] = 674, ["cap"] = 1026, ["dict"] = 2628, ["ftp"] = 21, ["gopher"] = 70, ["http"] = 80, ["https"] = 443, ["iax"] = 4569, ["icap"] = 1344, ["imap"] = 143, ["ipp"] = 631, ["ldap"] = 389, ["mtqp"] = 1038, ["mupdate"] = 3905, ["news"] = 2009, ["nfs"] = 2049, ["nntp"] = 119, ["rtsp"] = 554, ["sip"] = 5060, ["snmp"] = 161, ["telnet"] = 23, ["tftp"] = 69, ["vemmi"] = 575, ["afs"] = 1483, ["jms"] = 5673, ["rsync"] = 873, ["prospero"] = 191, ["videotex"] = 516}]
      108 SETTABLEKS                       R1 R0 K84 ["services"]
      110 DUPCLOSURE                       R1 K85 [PROTO_1]
      111 DUPCLOSURE                       R2 K86 [PROTO_3]
      112 DUPCLOSURE                       R3 K87 [PROTO_4]
      113 CAPTURE                          VAL R0
      114 DUPCLOSURE                       R4 K88 [PROTO_5]
      115 DUPCLOSURE                       R5 K89 [PROTO_6]
      116 CAPTURE                          VAL R0
      117 SETTABLEKS                       R5 R0 K90 ["addSegment"]
      119 DUPCLOSURE                       R5 K91 [PROTO_7]
      120 CAPTURE                          VAL R0
      121 SETTABLEKS                       R5 R0 K92 ["build"]
      123 DUPCLOSURE                       R5 K93 [PROTO_10]
      124 CAPTURE                          VAL R0
      125 SETTABLEKS                       R5 R0 K94 ["buildQuery"]
      127 DUPCLOSURE                       R5 K95 [PROTO_12]
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R5 R0 K96 ["parseQuery"]
      131 DUPCLOSURE                       R5 K97 [PROTO_13]
      132 CAPTURE                          VAL R0
      133 SETTABLEKS                       R5 R0 K98 ["setQuery"]
      135 DUPCLOSURE                       R5 K99 [PROTO_18]
      136 SETTABLEKS                       R5 R0 K100 ["setAuthority"]
      138 DUPCLOSURE                       R5 K101 [PROTO_24]
      139 CAPTURE                          VAL R0
      140 CAPTURE                          VAL R4
      141 SETTABLEKS                       R5 R0 K102 ["parse"]
      143 DUPCLOSURE                       R5 K103 [PROTO_26]
      144 SETTABLEKS                       R5 R0 K104 ["removeDotSegments"]
      146 DUPCLOSURE                       R5 K105 [PROTO_30]
      147 DUPCLOSURE                       R6 K106 [PROTO_31]
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R5
      150 SETTABLEKS                       R6 R0 K107 ["resolve"]
      152 DUPCLOSURE                       R6 K108 [PROTO_32]
      153 CAPTURE                          VAL R0
      154 CAPTURE                          VAL R5
      155 SETTABLEKS                       R6 R0 K109 ["normalize"]
      157 RETURN                           R0 1
