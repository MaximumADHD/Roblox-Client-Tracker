PROTO_0:
        0 LOADK                            R2 K0 ["PrettyFormatPluginError"]
        1 SETTABLEKS                       R2 R0 K1 ["name"]
        3 SETTABLEKS                       R1 R0 K2 ["message"]
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADK                            R1 K0 ["nan"]
        5 RETURN                           R1 1
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K2 [tostring]
       10 CALL                             R1 1 1
       11 RETURN                           R1 1

PROTO_2:
        0 JUMPIF                           R1 ; [+2]
        1 LOADK                            R2 K0 ["[Function]"]
        2 RETURN                           R2 1
        3 GETIMPORT                        R2 K3 [debug.info]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K4 ["n"]
        7 CALL                             R2 2 1
        8 JUMPIFEQKNIL                     R2 ; [+3]
       10 JUMPIFNOTEQKS                    R2 K5 [""] ; [+2]
       12 LOADK                            R2 K6 ["anonymous"]
       13 LOADK                            R4 K7 ["[Function "]
       14 MOVE                             R5 R2
       15 LOADK                            R6 K8 ["]"]
       16 CONCAT                           R3 R4 R6
       17 RETURN                           R3 1

PROTO_3:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R2 K0 ["["]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R6 R0
        3 GETIMPORT                        R5 K2 [tostring]
        5 CALL                             R5 1 1
        6 MOVE                             R3 R5
        7 LOADK                            R4 K3 ["]"]
        8 CONCAT                           R1 R2 R4
        9 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 JUMPIFEQKS                       R4 K0 ["boolean"] ; [+3]
        5 JUMPIFNOTEQKS                    R4 K1 ["nil"] ; [+7]
        7 FASTCALL1                        TOSTRING R0 ; [+3]
        8 MOVE                             R6 R0
        9 GETIMPORT                        R5 K3 [tostring]
       11 CALL                             R5 1 1
       12 RETURN                           R5 1
       13 JUMPIFNOTEQKS                    R4 K4 ["number"] ; [+15]
       15 MOVE                             R6 R0
       16 GETUPVAL                         R7 1
       17 MOVE                             R8 R6
       18 CALL                             R7 1 1
       19 JUMPIFNOT                        R7 ; [+2]
       20 LOADK                            R5 K5 ["nan"]
       21 RETURN                           R5 1
       22 FASTCALL1                        TOSTRING R6 ; [+3]
       23 MOVE                             R8 R6
       24 GETIMPORT                        R7 K3 [tostring]
       26 CALL                             R7 1 1
       27 MOVE                             R5 R7
       28 RETURN                           R5 1
       29 JUMPIFNOTEQKS                    R4 K6 ["string"] ; [+24]
       31 JUMPIFNOT                        R3 ; [+17]
       32 LOADK                            R7 K7 ["\\"]
       33 LOADK                            R8 K8 ["\\\\"]
       34 NAMECALL                         R5 R0 K9 ["gsub"]
       36 CALL                             R5 3 1
       37 MOVE                             R0 R5
       38 LOADK                            R7 K10 ["\""]
       39 LOADK                            R8 K11 ["\\\""]
       40 NAMECALL                         R5 R0 K9 ["gsub"]
       42 CALL                             R5 3 1
       43 MOVE                             R0 R5
       44 LOADK                            R6 K10 ["\""]
       45 MOVE                             R7 R0
       46 LOADK                            R8 K10 ["\""]
       47 CONCAT                           R5 R6 R8
       48 RETURN                           R5 1
       49 LOADK                            R6 K10 ["\""]
       50 MOVE                             R7 R0
       51 LOADK                            R8 K10 ["\""]
       52 CONCAT                           R5 R6 R8
       53 RETURN                           R5 1
       54 JUMPIFNOTEQKS                    R4 K12 ["function"] ; [+20]
       56 MOVE                             R6 R0
       57 JUMPIF                           R1 ; [+2]
       58 LOADK                            R5 K13 ["[Function]"]
       59 RETURN                           R5 1
       60 GETIMPORT                        R7 K16 [debug.info]
       62 MOVE                             R8 R6
       63 LOADK                            R9 K17 ["n"]
       64 CALL                             R7 2 1
       65 JUMPIFEQKNIL                     R7 ; [+3]
       67 JUMPIFNOTEQKS                    R7 K18 [""] ; [+2]
       69 LOADK                            R7 K19 ["anonymous"]
       70 LOADK                            R8 K20 ["[Function "]
       71 MOVE                             R9 R7
       72 LOADK                            R10 K21 ["]"]
       73 CONCAT                           R5 R8 R10
       74 RETURN                           R5 1
       75 JUMPIFNOTEQKS                    R4 K22 ["symbol"] ; [+9]
       77 MOVE                             R6 R0
       78 FASTCALL1                        TOSTRING R6 ; [+3]
       79 MOVE                             R8 R6
       80 GETIMPORT                        R7 K3 [tostring]
       82 CALL                             R7 1 1
       83 MOVE                             R5 R7
       84 RETURN                           R5 1
       85 JUMPIFNOTEQKS                    R4 K23 ["DateTime"] ; [+25]
       87 NAMECALL                         R11 R0 K24 ["ToIsoDate"]
       89 CALL                             R11 1 1
       90 LOADN                            R12 1
       91 LOADN                            R13 254
       92 FASTCALL                         STRING_SUB ; [+2]
       93 GETIMPORT                        R10 K26 [string.sub]
       95 CALL                             R10 3 1
       96 MOVE                             R6 R10
       97 LOADK                            R7 K27 ["."]
       98 GETIMPORT                        R10 K29 [string.format]
      100 LOADK                            R11 K30 ["%03d"]
      101 NAMECALL                         R13 R0 K31 ["ToUniversalTime"]
      103 CALL                             R13 1 1
      104 GETTABLEKS                       R12 R13 K32 ["Millisecond"]
      106 CALL                             R10 2 1
      107 MOVE                             R8 R10
      108 LOADK                            R9 K33 ["Z"]
      109 CONCAT                           R5 R6 R9
      110 RETURN                           R5 1
      111 JUMPIFNOTEQKS                    R4 K34 ["error"] ; [+12]
      113 MOVE                             R6 R0
      114 LOADK                            R7 K35 ["["]
      115 FASTCALL1                        TOSTRING R6 ; [+3]
      116 MOVE                             R11 R6
      117 GETIMPORT                        R10 K3 [tostring]
      119 CALL                             R10 1 1
      120 MOVE                             R8 R10
      121 LOADK                            R9 K21 ["]"]
      122 CONCAT                           R5 R7 R9
      123 RETURN                           R5 1
      124 JUMPIFNOTEQKS                    R4 K36 ["regexp"] ; [+16]
      126 FASTCALL1                        TOSTRING R0 ; [+3]
      127 MOVE                             R6 R0
      128 GETIMPORT                        R5 K3 [tostring]
      130 CALL                             R5 1 1
      131 MOVE                             R0 R5
      132 JUMPIFNOT                        R2 ; [+7]
      133 LOADK                            R7 K37 ["[\\%^%$%*%+%?%.%(%)|%[%]{}]"]
      134 LOADK                            R8 K38 ["\\%1"]
      135 NAMECALL                         R5 R0 K9 ["gsub"]
      137 CALL                             R5 3 1
      138 MOVE                             R0 R5
      139 RETURN                           R0 1
      140 RETURN                           R0 1
      141 JUMPIFNOTEQKS                    R4 K39 ["Instance"] ; [+4]
      143 GETTABLEKS                       R5 R0 K40 ["ClassName"]
      145 RETURN                           R5 1
      146 GETUPVAL                         R5 2
      147 MOVE                             R6 R0
      148 CALL                             R5 1 1
      149 JUMPIFNOT                        R5 ; [+11]
      150 GETIMPORT                        R5 K29 [string.format]
      152 LOADK                            R6 K41 ["%s(%s)"]
      153 MOVE                             R7 R4
      154 FASTCALL1                        TOSTRING R0 ; [+3]
      155 MOVE                             R9 R0
      156 GETIMPORT                        R8 K3 [tostring]
      158 CALL                             R8 1 1
      159 CALL                             R5 3 -1
      160 RETURN                           R5 -1
      161 JUMPIFNOTEQKS                    R4 K42 ["userdata"] ; [+7]
      163 FASTCALL1                        TOSTRING R0 ; [+3]
      164 MOVE                             R6 R0
      165 GETIMPORT                        R5 K3 [tostring]
      167 CALL                             R5 1 1
      168 RETURN                           R5 1
      169 LOADNIL                          R5
      170 RETURN                           R5 1

PROTO_6:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 LENGTH                           R1 R0
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R2 R1 ; [+3]
       13 LOADB                            R1 1
       14 RETURN                           R1 1
       15 GETIMPORT                        R1 K4 [pairs]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 3
       19 FORGPREP_NEXT                    R1
       20 LOADB                            R6 0
       21 RETURN                           R6 1
       22 FORGLOOP                         R1 2 ; [-3]
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R6 K2 [table.find]
        2 MOVE                             R7 R4
        3 MOVE                             R8 R0
        4 CALL                             R6 2 1
        5 JUMPIFEQKNIL                     R6 ; [+3]
        7 LOADK                            R6 K3 ["[Circular]"]
        8 RETURN                           R6 1
        9 NEWTABLE                         R6 0 1
       11 FASTCALL1                        TABLE_UNPACK R4 ; [+3]
       12 MOVE                             R8 R4
       13 GETIMPORT                        R7 K5 [unpack]
       15 CALL                             R7 1 -1
       16 SETLIST                          R6 R7 -1 [1]
       18 MOVE                             R4 R6
       19 FASTCALL2                        TABLE_INSERT R4 R0 ; [+5]
       21 MOVE                             R7 R4
       22 MOVE                             R8 R0
       23 GETIMPORT                        R6 K7 [table.insert]
       25 CALL                             R6 2 0
       26 ADDK                             R3 R3 K8 [1]
       27 GETTABLEKS                       R7 R1 K9 ["maxDepth"]
       29 JUMPIFLT                         R7 R3 ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 GETTABLEKS                       R7 R1 K10 ["min"]
       35 GETTABLEKS                       R8 R1 K11 ["callToJSON"]
       37 JUMPIFNOT                        R8 ; [+24]
       38 JUMPIF                           R6 ; [+23]
       39 GETTABLEKS                       R8 R0 K12 ["toJSON"]
       41 JUMPIFNOT                        R8 ; [+20]
       42 GETTABLEKS                       R9 R0 K12 ["toJSON"]
       44 FASTCALL1                        TYPEOF R9 ; [+2]
       45 GETIMPORT                        R8 K14 [typeof]
       47 CALL                             R8 1 1
       48 JUMPIFNOTEQKS                    R8 K15 ["function"] ; [+13]
       50 JUMPIF                           R5 ; [+11]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R9 R0 K12 ["toJSON"]
       54 CALL                             R9 0 1
       55 MOVE                             R10 R1
       56 MOVE                             R11 R2
       57 MOVE                             R12 R3
       58 MOVE                             R13 R4
       59 LOADB                            R14 1
       60 CALL                             R8 6 -1
       61 RETURN                           R8 -1
       62 JUMPIFNOT                        R6 ; [+9]
       63 GETUPVAL                         R8 1
       64 MOVE                             R9 R0
       65 CALL                             R8 1 1
       66 JUMPIFNOTEQKS                    R8 K16 ["set"] ; [+3]
       68 LOADK                            R8 K17 ["[Set]"]
       69 RETURN                           R8 1
       70 LOADK                            R8 K18 ["[Table]"]
       71 RETURN                           R8 1
       72 LOADK                            R8 K19 [""]
       73 JUMPIF                           R7 ; [+6]
       74 GETTABLEKS                       R9 R1 K20 ["printBasicPrototype"]
       76 JUMPIFNOT                        R9 ; [+2]
       77 LOADK                            R8 K21 ["Table "]
       78 JUMP                             ; [+1]
       79 LOADK                            R8 K19 [""]
       80 FASTCALL1                        TYPE R0 ; [+3]
       81 MOVE                             R11 R0
       82 GETIMPORT                        R10 K23 [type]
       84 CALL                             R10 1 1
       85 JUMPIFEQKS                       R10 K0 ["table"] ; [+3]
       87 LOADB                            R9 0
       88 JUMP                             ; [+16]
       89 LENGTH                           R10 R0
       90 LOADN                            R11 0
       91 JUMPIFNOTLT                      R11 R10 ; [+3]
       93 LOADB                            R9 1
       94 JUMP                             ; [+10]
       95 GETIMPORT                        R10 K25 [pairs]
       97 MOVE                             R11 R0
       98 CALL                             R10 1 3
       99 FORGPREP_NEXT                    R10
      100 LOADB                            R9 0
      101 JUMP                             ; [+3]
      102 FORGLOOP                         R10 2 ; [-3]
      104 LOADB                            R9 1
      105 JUMPIFNOT                        R9 ; [+14]
      106 MOVE                             R10 R8
      107 LOADK                            R11 K26 ["{"]
      108 GETUPVAL                         R14 2
      109 MOVE                             R15 R0
      110 MOVE                             R16 R1
      111 MOVE                             R17 R2
      112 MOVE                             R18 R3
      113 MOVE                             R19 R4
      114 GETUPVAL                         R20 0
      115 CALL                             R14 6 1
      116 MOVE                             R12 R14
      117 LOADK                            R13 K27 ["}"]
      118 CONCAT                           R9 R10 R13
      119 RETURN                           R9 1
      120 GETUPVAL                         R9 1
      121 MOVE                             R10 R0
      122 CALL                             R9 1 1
      123 JUMPIFNOTEQKS                    R9 K16 ["set"] ; [+18]
      125 JUMPIFNOT                        R6 ; [+2]
      126 LOADK                            R9 K17 ["[Set]"]
      127 RETURN                           R9 1
      128 LOADK                            R10 K28 ["Set {"]
      129 GETUPVAL                         R13 2
      130 GETTABLEKS                       R14 R0 K29 ["_array"]
      132 MOVE                             R15 R1
      133 MOVE                             R16 R2
      134 MOVE                             R17 R3
      135 MOVE                             R18 R4
      136 GETUPVAL                         R19 0
      137 CALL                             R13 6 1
      138 MOVE                             R11 R13
      139 LOADK                            R12 K27 ["}"]
      140 CONCAT                           R9 R10 R12
      141 RETURN                           R9 1
      142 MOVE                             R10 R8
      143 LOADK                            R11 K26 ["{"]
      144 GETUPVAL                         R14 3
      145 MOVE                             R15 R0
      146 MOVE                             R16 R1
      147 MOVE                             R17 R2
      148 MOVE                             R18 R3
      149 MOVE                             R19 R4
      150 GETUPVAL                         R20 0
      151 CALL                             R14 6 1
      152 MOVE                             R12 R14
      153 LOADK                            R13 K27 ["}"]
      154 CONCAT                           R9 R10 R13
      155 RETURN                           R9 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["serialize"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 GETUPVAL                         R5 3
        5 GETUPVAL                         R6 4
        6 CALL                             R1 5 -1
        7 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["indent"]
        4 CONCAT                           R1 R2 R3
        5 MOVE                             R3 R1
        6 LOADK                            R6 K1 ["\n"]
        7 LOADK                            R8 K1 ["\n"]
        8 MOVE                             R9 R1
        9 CONCAT                           R7 R8 R9
       10 NAMECALL                         R4 R0 K2 ["gsub"]
       12 CALL                             R4 3 1
       13 CONCAT                           R2 R3 R4
       14 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["serialize"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 JUMPIFNOT                        R0 ; [+12]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K0 ["serialize"]
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R2 3
       13 GETUPVAL                         R3 4
       14 GETUPVAL                         R4 5
       15 GETUPVAL                         R5 6
       16 GETUPVAL                         R6 7
       17 CALL                             R0 6 1
       18 SETUPVAL                         R0 1
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R0 R1 K1 ["print"]
       23 GETUPVAL                         R1 2
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 NEWCLOSURE                       R3 P1
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U3
       33 DUPTABLE                         R4 K5 [{"edgeSpacing", "min", "spacing"}]
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R5 R6 K6 ["spacingOuter"]
       37 SETTABLEKS                       R5 R4 K2 ["edgeSpacing"]
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R5 R6 K3 ["min"]
       42 SETTABLEKS                       R5 R4 K3 ["min"]
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R5 R6 K7 ["spacingInner"]
       47 SETTABLEKS                       R5 R4 K4 ["spacing"]
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R5 R6 K8 ["colors"]
       52 CALL                             R0 5 1
       53 SETUPVAL                         R0 1
       54 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R6
        1 GETIMPORT                        R7 K1 [pcall]
        3 NEWCLOSURE                       R8 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          REF R6
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R5
       11 CAPTURE                          UPVAL U0
       12 CALL                             R7 1 2
       13 JUMPIF                           R7 ; [+6]
       14 GETIMPORT                        R9 K3 [error]
       16 GETUPVAL                         R10 1
       17 MOVE                             R11 R8
       18 CALL                             R10 1 -1
       19 CALL                             R9 -1 0
       20 FASTCALL1                        TYPEOF R6 ; [+3]
       21 MOVE                             R10 R6
       22 GETIMPORT                        R9 K5 [typeof]
       24 CALL                             R9 1 1
       25 JUMPIFEQKS                       R9 K6 ["string"] ; [+15]
       27 GETIMPORT                        R9 K3 [error]
       29 GETUPVAL                         R10 2
       30 GETIMPORT                        R11 K8 [string.format]
       32 LOADK                            R12 K9 ["pretty-format: Plugin must return type \"string\" but instead returned \"%s\"."]
       33 FASTCALL1                        TYPEOF R6 ; [+3]
       34 MOVE                             R14 R6
       35 GETIMPORT                        R13 K5 [typeof]
       37 CALL                             R13 1 1
       38 CALL                             R11 2 -1
       39 CALL                             R10 -1 -1
       40 CALL                             R9 -1 0
       41 CLOSEUPVALS                      R6
       42 RETURN                           R6 1

PROTO_13:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 GETIMPORT                        R7 K3 [pcall]
        7 GETTABLEKS                       R8 R6 K4 ["test"]
        9 MOVE                             R9 R1
       10 CALL                             R7 2 2
       11 JUMPIF                           R7 ; [+7]
       12 GETIMPORT                        R9 K6 [error]
       14 GETUPVAL                         R10 0
       15 MOVE                             R11 R8
       16 CALL                             R10 1 -1
       17 CALL                             R9 -1 0
       18 JUMP                             ; [+2]
       19 JUMPIFNOT                        R8 ; [+1]
       20 RETURN                           R6 1
       21 FORGLOOP                         R2 2 [inext] ; [-17]
       23 LOADNIL                          R2
       24 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R7 R1 K0 ["plugins"]
        3 MOVE                             R8 R0
        4 CALL                             R6 2 1
        5 JUMPIFEQKNIL                     R6 ; [+11]
        7 GETGLOBAL                        R7 K1 ["printPlugin"]
        9 MOVE                             R8 R6
       10 MOVE                             R9 R0
       11 MOVE                             R10 R1
       12 MOVE                             R11 R2
       13 MOVE                             R12 R3
       14 MOVE                             R13 R4
       15 CALL                             R7 6 -1
       16 RETURN                           R7 -1
       17 GETUPVAL                         R7 1
       18 MOVE                             R8 R0
       19 GETTABLEKS                       R9 R1 K2 ["printFunctionName"]
       21 GETTABLEKS                       R10 R1 K3 ["escapeRegex"]
       23 GETTABLEKS                       R11 R1 K4 ["escapeString"]
       25 CALL                             R7 4 1
       26 JUMPIFEQKNIL                     R7 ; [+2]
       28 RETURN                           R7 1
       29 GETUPVAL                         R8 2
       30 MOVE                             R9 R0
       31 MOVE                             R10 R1
       32 MOVE                             R11 R2
       33 MOVE                             R12 R3
       34 MOVE                             R13 R4
       35 MOVE                             R14 R5
       36 CALL                             R8 6 -1
       37 RETURN                           R8 -1

PROTO_15:
        0 GETIMPORT                        R1 K1 [pairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 GETUPVAL                         R7 0
        6 GETTABLE                         R6 R7 R4
        7 JUMPIFNOTEQKNIL                  R6 ; [+15]
        9 GETIMPORT                        R6 K3 [error]
       11 GETUPVAL                         R7 1
       12 GETIMPORT                        R8 K6 [string.format]
       14 LOADK                            R9 K7 ["pretty-format: Unknown option \"%s\"."]
       15 FASTCALL1                        TOSTRING R4 ; [+3]
       16 MOVE                             R11 R4
       17 GETIMPORT                        R10 K9 [tostring]
       19 CALL                             R10 1 1
       20 CALL                             R8 2 -1
       21 CALL                             R7 -1 -1
       22 CALL                             R6 -1 0
       23 FORGLOOP                         R1 2 ; [-19]
       25 GETTABLEKS                       R1 R0 K10 ["min"]
       27 JUMPIFNOT                        R1 ; [+14]
       28 GETTABLEKS                       R1 R0 K11 ["indent"]
       30 JUMPIFEQKNIL                     R1 ; [+11]
       32 GETTABLEKS                       R1 R0 K11 ["indent"]
       34 JUMPIFEQKN                       R1 K12 [0] ; [+7]
       36 GETIMPORT                        R1 K3 [error]
       38 GETUPVAL                         R2 1
       39 LOADK                            R3 K13 ["pretty-format: Options \"min\" and \"indent\" cannot be used together."]
       40 CALL                             R2 1 -1
       41 CALL                             R1 -1 0
       42 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETTABLE                         R2 R0 R1
        2 JUMPIFEQKNIL                     R2 ; [+3]
        4 GETTABLE                         R2 R0 R1
        5 RETURN                           R2 1
        6 GETUPVAL                         R3 0
        7 GETTABLE                         R2 R3 R1
        8 RETURN                           R2 1

PROTO_17:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETTABLEKS                       R1 R0 K0 ["min"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADK                            R1 K1 [""]
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["indent"]
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETTABLEKS                       R2 R0 K2 ["indent"]
       12 JUMPIFEQKNIL                     R2 ; [+3]
       14 GETTABLEKS                       R1 R0 K2 ["indent"]
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R1
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1

PROTO_18:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETTABLEKS                       R1 R0 K0 ["min"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADK                            R1 K1 [" "]
        5 RETURN                           R1 1
        6 LOADK                            R1 K2 ["\n"]
        7 RETURN                           R1 1

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETTABLEKS                       R1 R0 K0 ["min"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADK                            R1 K1 [""]
        5 RETURN                           R1 1
        6 LOADK                            R1 K2 ["\n"]
        7 RETURN                           R1 1

PROTO_20:
        0 DUPTABLE                         R1 K13 [{"callToJSON", "colors", "compareKeys", "escapeRegex", "escapeString", "indent", "maxDepth", "min", "plugins", "printBasicPrototype", "printFunctionName", "spacingInner", "spacingOuter"}]
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETTABLEKS                       R3 R0 K0 ["callToJSON"]
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEKS                       R2 R0 K0 ["callToJSON"]
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["callToJSON"]
       12 SETTABLEKS                       R2 R1 K0 ["callToJSON"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K1 ["colors"]
       17 JUMPIFEQKNIL                     R0 ; [+12]
       19 GETTABLEKS                       R4 R0 K2 ["compareKeys"]
       21 FASTCALL1                        TYPEOF R4 ; [+2]
       22 GETIMPORT                        R3 K15 [typeof]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKS                    R3 K16 ["function"] ; [+4]
       27 GETTABLEKS                       R2 R0 K2 ["compareKeys"]
       29 JUMP                             ; [+3]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K2 ["compareKeys"]
       33 SETTABLEKS                       R2 R1 K2 ["compareKeys"]
       35 JUMPIFNOT                        R0 ; [+7]
       36 GETTABLEKS                       R3 R0 K3 ["escapeRegex"]
       38 JUMPIFEQKNIL                     R3 ; [+4]
       40 GETTABLEKS                       R2 R0 K3 ["escapeRegex"]
       42 JUMP                             ; [+3]
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R2 R3 K3 ["escapeRegex"]
       46 SETTABLEKS                       R2 R1 K3 ["escapeRegex"]
       48 JUMPIFNOT                        R0 ; [+7]
       49 GETTABLEKS                       R3 R0 K4 ["escapeString"]
       51 JUMPIFEQKNIL                     R3 ; [+4]
       53 GETTABLEKS                       R2 R0 K4 ["escapeString"]
       55 JUMP                             ; [+3]
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R2 R3 K4 ["escapeString"]
       59 SETTABLEKS                       R2 R1 K4 ["escapeString"]
       61 JUMPIFNOT                        R0 ; [+5]
       62 GETTABLEKS                       R3 R0 K7 ["min"]
       64 JUMPIFNOT                        R3 ; [+2]
       65 LOADK                            R2 K17 [""]
       66 JUMP                             ; [+14]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R3 R4 K5 ["indent"]
       70 JUMPIFNOT                        R0 ; [+6]
       71 GETTABLEKS                       R4 R0 K5 ["indent"]
       73 JUMPIFEQKNIL                     R4 ; [+3]
       75 GETTABLEKS                       R3 R0 K5 ["indent"]
       77 GETUPVAL                         R4 1
       78 MOVE                             R5 R3
       79 CALL                             R4 1 1
       80 MOVE                             R2 R4
       81 SETTABLEKS                       R2 R1 K5 ["indent"]
       83 JUMPIFNOT                        R0 ; [+7]
       84 GETTABLEKS                       R3 R0 K6 ["maxDepth"]
       86 JUMPIFEQKNIL                     R3 ; [+4]
       88 GETTABLEKS                       R2 R0 K6 ["maxDepth"]
       90 JUMP                             ; [+3]
       91 GETUPVAL                         R3 0
       92 GETTABLEKS                       R2 R3 K6 ["maxDepth"]
       94 SETTABLEKS                       R2 R1 K6 ["maxDepth"]
       96 JUMPIFNOT                        R0 ; [+7]
       97 GETTABLEKS                       R3 R0 K7 ["min"]
       99 JUMPIFEQKNIL                     R3 ; [+4]
      101 GETTABLEKS                       R2 R0 K7 ["min"]
      103 JUMP                             ; [+3]
      104 GETUPVAL                         R3 0
      105 GETTABLEKS                       R2 R3 K7 ["min"]
      107 SETTABLEKS                       R2 R1 K7 ["min"]
      109 JUMPIFNOT                        R0 ; [+7]
      110 GETTABLEKS                       R3 R0 K8 ["plugins"]
      112 JUMPIFEQKNIL                     R3 ; [+4]
      114 GETTABLEKS                       R2 R0 K8 ["plugins"]
      116 JUMP                             ; [+3]
      117 GETUPVAL                         R3 0
      118 GETTABLEKS                       R2 R3 K8 ["plugins"]
      120 SETTABLEKS                       R2 R1 K8 ["plugins"]
      122 JUMPIFEQKNIL                     R0 ; [+8]
      124 GETTABLEKS                       R3 R0 K9 ["printBasicPrototype"]
      126 JUMPIFEQKNIL                     R3 ; [+4]
      128 GETTABLEKS                       R2 R0 K9 ["printBasicPrototype"]
      130 JUMP                             ; [+1]
      131 LOADB                            R2 1
      132 SETTABLEKS                       R2 R1 K9 ["printBasicPrototype"]
      134 JUMPIFNOT                        R0 ; [+7]
      135 GETTABLEKS                       R3 R0 K10 ["printFunctionName"]
      137 JUMPIFEQKNIL                     R3 ; [+4]
      139 GETTABLEKS                       R2 R0 K10 ["printFunctionName"]
      141 JUMP                             ; [+3]
      142 GETUPVAL                         R3 0
      143 GETTABLEKS                       R2 R3 K10 ["printFunctionName"]
      145 SETTABLEKS                       R2 R1 K10 ["printFunctionName"]
      147 JUMPIFNOT                        R0 ; [+5]
      148 GETTABLEKS                       R3 R0 K7 ["min"]
      150 JUMPIFNOT                        R3 ; [+2]
      151 LOADK                            R2 K18 [" "]
      152 JUMP                             ; [+1]
      153 LOADK                            R2 K19 ["\n"]
      154 SETTABLEKS                       R2 R1 K11 ["spacingInner"]
      156 JUMPIFNOT                        R0 ; [+5]
      157 GETTABLEKS                       R3 R0 K7 ["min"]
      159 JUMPIFNOT                        R3 ; [+2]
      160 LOADK                            R2 K17 [""]
      161 JUMP                             ; [+1]
      162 LOADK                            R2 K19 ["\n"]
      163 SETTABLEKS                       R2 R1 K12 ["spacingOuter"]
      165 RETURN                           R1 1

PROTO_21:
        0 GETIMPORT                        R1 K2 [string.rep]
        2 LOADK                            R2 K3 [" "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_22:
        0 JUMPIFNOT                        R1 ; [+26]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R1
        3 CALL                             R2 1 0
        4 GETTABLEKS                       R2 R1 K0 ["plugins"]
        6 JUMPIFNOT                        R2 ; [+20]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R1 K0 ["plugins"]
       10 MOVE                             R4 R0
       11 CALL                             R2 2 1
       12 JUMPIFEQKNIL                     R2 ; [+14]
       14 GETGLOBAL                        R3 K1 ["printPlugin"]
       16 MOVE                             R4 R2
       17 MOVE                             R5 R0
       18 GETUPVAL                         R6 2
       19 MOVE                             R7 R1
       20 CALL                             R6 1 1
       21 LOADK                            R7 K2 [""]
       22 LOADN                            R8 0
       23 NEWTABLE                         R9 0 0
       25 CALL                             R3 6 -1
       26 RETURN                           R3 -1
       27 GETUPVAL                         R2 3
       28 MOVE                             R3 R0
       29 JUMPIFNOT                        R1 ; [+7]
       30 GETTABLEKS                       R5 R1 K3 ["printFunctionName"]
       32 JUMPIFEQKNIL                     R5 ; [+4]
       34 GETTABLEKS                       R4 R1 K3 ["printFunctionName"]
       36 JUMP                             ; [+3]
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R4 R5 K3 ["printFunctionName"]
       40 JUMPIFNOT                        R1 ; [+7]
       41 GETTABLEKS                       R6 R1 K4 ["escapeRegex"]
       43 JUMPIFEQKNIL                     R6 ; [+4]
       45 GETTABLEKS                       R5 R1 K4 ["escapeRegex"]
       47 JUMP                             ; [+3]
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R5 R6 K4 ["escapeRegex"]
       51 JUMPIFNOT                        R1 ; [+7]
       52 GETTABLEKS                       R7 R1 K5 ["escapeString"]
       54 JUMPIFEQKNIL                     R7 ; [+4]
       56 GETTABLEKS                       R6 R1 K5 ["escapeString"]
       58 JUMP                             ; [+3]
       59 GETUPVAL                         R7 4
       60 GETTABLEKS                       R6 R7 K5 ["escapeString"]
       62 CALL                             R2 4 1
       63 JUMPIFEQKNIL                     R2 ; [+2]
       65 RETURN                           R2 1
       66 GETUPVAL                         R3 5
       67 MOVE                             R4 R0
       68 GETUPVAL                         R5 2
       69 MOVE                             R6 R1
       70 CALL                             R5 1 1
       71 LOADK                            R6 K2 [""]
       72 LOADN                            R7 0
       73 NEWTABLE                         R8 0 0
       75 LOADNIL                          R9
       76 CALL                             R3 6 -1
       77 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K6 ["Error"]
       12 GETTABLEKS                       R4 R2 K7 ["Object"]
       14 GETTABLEKS                       R5 R2 K8 ["extends"]
       16 GETTABLEKS                       R7 R2 K9 ["Number"]
       18 GETTABLEKS                       R6 R7 K10 ["isNaN"]
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R0 K11 ["Collections"]
       24 CALL                             R7 1 1
       25 GETTABLEKS                       R8 R7 K12 ["printTableEntries"]
       27 GETTABLEKS                       R9 R7 K13 ["printListItems"]
       29 GETIMPORT                        R10 K4 [require]
       31 GETTABLEKS                       R12 R0 K14 ["plugins"]
       33 GETTABLEKS                       R11 R12 K15 ["AsymmetricMatcher"]
       35 CALL                             R10 1 1
       36 GETIMPORT                        R11 K4 [require]
       38 GETTABLEKS                       R13 R0 K14 ["plugins"]
       40 GETTABLEKS                       R12 R13 K16 ["ConvertAnsi"]
       42 CALL                             R11 1 1
       43 GETIMPORT                        R12 K4 [require]
       45 GETTABLEKS                       R14 R0 K14 ["plugins"]
       47 GETTABLEKS                       R13 R14 K17 ["RobloxInstance"]
       49 CALL                             R12 1 1
       50 GETIMPORT                        R13 K4 [require]
       52 GETTABLEKS                       R15 R0 K14 ["plugins"]
       54 GETTABLEKS                       R14 R15 K18 ["ReactElement"]
       56 CALL                             R13 1 1
       57 GETIMPORT                        R14 K4 [require]
       59 GETTABLEKS                       R16 R0 K14 ["plugins"]
       61 GETTABLEKS                       R15 R16 K19 ["ReactTestComponent"]
       63 CALL                             R14 1 1
       64 GETIMPORT                        R15 K4 [require]
       66 GETTABLEKS                       R16 R1 K20 ["JestGetType"]
       68 CALL                             R15 1 1
       69 GETTABLEKS                       R16 R15 K21 ["getType"]
       71 GETTABLEKS                       R17 R15 K22 ["isRobloxBuiltin"]
       73 GETIMPORT                        R18 K4 [require]
       75 GETTABLEKS                       R19 R0 K23 ["Types"]
       77 CALL                             R18 1 1
       78 MOVE                             R19 R5
       79 MOVE                             R20 R3
       80 LOADK                            R21 K24 ["PrettyFormatPluginError"]
       81 DUPCLOSURE                       R22 K25 [PROTO_0]
       82 CALL                             R19 3 1
       83 LOADNIL                          R20
       84 LOADNIL                          R21
       85 DUPCLOSURE                       R22 K26 [PROTO_1]
       86 CAPTURE                          VAL R6
       87 DUPCLOSURE                       R23 K27 [PROTO_2]
       88 DUPCLOSURE                       R24 K28 [PROTO_3]
       89 DUPCLOSURE                       R25 K29 [PROTO_4]
       90 DUPCLOSURE                       R26 K30 [PROTO_5]
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R17
       94 DUPCLOSURE                       R27 K31 [PROTO_6]
       95 NEWCLOSURE                       R28 P7
       96 CAPTURE                          REF R20
       97 CAPTURE                          VAL R16
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R8
      100 DUPCLOSURE                       R29 K32 [PROTO_8]
      101 NEWCLOSURE                       R30 P9
      102 CAPTURE                          REF R20
      103 CAPTURE                          VAL R19
      104 CAPTURE                          VAL R3
      105 SETGLOBAL                        R30 K33 ["printPlugin"]
      107 DUPCLOSURE                       R30 K34 [PROTO_13]
      108 CAPTURE                          VAL R19
      109 DUPCLOSURE                       R20 K35 [PROTO_14]
      110 CAPTURE                          VAL R30
      111 CAPTURE                          VAL R26
      112 CAPTURE                          VAL R28
      113 DUPTABLE                         R31 K47 [{"callToJSON", "compareKeys", "escapeRegex", "escapeString", "highlight", "indent", "maxDepth", "min", "plugins", "printBasicPrototype", "printFunctionName", "theme"}]
      114 LOADB                            R32 1
      115 SETTABLEKS                       R32 R31 K36 ["callToJSON"]
      117 GETTABLEKS                       R32 R4 K48 ["None"]
      119 SETTABLEKS                       R32 R31 K37 ["compareKeys"]
      121 LOADB                            R32 0
      122 SETTABLEKS                       R32 R31 K38 ["escapeRegex"]
      124 LOADB                            R32 1
      125 SETTABLEKS                       R32 R31 K39 ["escapeString"]
      127 LOADB                            R32 0
      128 SETTABLEKS                       R32 R31 K40 ["highlight"]
      130 LOADN                            R32 2
      131 SETTABLEKS                       R32 R31 K41 ["indent"]
      133 LOADK                            R32 K49 [∞]
      134 SETTABLEKS                       R32 R31 K42 ["maxDepth"]
      136 LOADB                            R32 0
      137 SETTABLEKS                       R32 R31 K43 ["min"]
      139 NEWTABLE                         R32 0 0
      141 SETTABLEKS                       R32 R31 K14 ["plugins"]
      143 LOADB                            R32 1
      144 SETTABLEKS                       R32 R31 K44 ["printBasicPrototype"]
      146 LOADB                            R32 1
      147 SETTABLEKS                       R32 R31 K45 ["printFunctionName"]
      149 LOADNIL                          R32
      150 SETTABLEKS                       R32 R31 K46 ["theme"]
      152 DUPCLOSURE                       R32 K50 [PROTO_15]
      153 CAPTURE                          VAL R31
      154 CAPTURE                          VAL R3
      155 DUPCLOSURE                       R33 K51 [PROTO_16]
      156 CAPTURE                          VAL R31
      157 NEWCLOSURE                       R34 P14
      158 CAPTURE                          VAL R31
      159 CAPTURE                          REF R21
      160 DUPCLOSURE                       R35 K52 [PROTO_18]
      161 DUPCLOSURE                       R36 K53 [PROTO_19]
      162 NEWCLOSURE                       R37 P17
      163 CAPTURE                          VAL R31
      164 CAPTURE                          REF R21
      165 DUPCLOSURE                       R21 K54 [PROTO_21]
      166 DUPCLOSURE                       R38 K55 [PROTO_22]
      167 CAPTURE                          VAL R32
      168 CAPTURE                          VAL R30
      169 CAPTURE                          VAL R37
      170 CAPTURE                          VAL R26
      171 CAPTURE                          VAL R31
      172 CAPTURE                          VAL R28
      173 DUPTABLE                         R39 K56 [{"AsymmetricMatcher", "ConvertAnsi", "ReactElement", "ReactTestComponent", "RobloxInstance"}]
      174 SETTABLEKS                       R10 R39 K15 ["AsymmetricMatcher"]
      176 SETTABLEKS                       R11 R39 K16 ["ConvertAnsi"]
      178 SETTABLEKS                       R13 R39 K18 ["ReactElement"]
      180 SETTABLEKS                       R14 R39 K19 ["ReactTestComponent"]
      182 SETTABLEKS                       R12 R39 K17 ["RobloxInstance"]
      184 DUPTABLE                         R40 K60 [{"format", "default", "plugins", "DEFAULT_OPTIONS"}]
      185 SETTABLEKS                       R38 R40 K57 ["format"]
      187 SETTABLEKS                       R38 R40 K58 ["default"]
      189 SETTABLEKS                       R39 R40 K14 ["plugins"]
      191 SETTABLEKS                       R31 R40 K59 ["DEFAULT_OPTIONS"]
      193 CLOSEUPVALS                      R20
      194 RETURN                           R40 1
