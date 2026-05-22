PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+16]
        8 LOADB                            R1 0
        9 GETTABLEKS                       R2 R0 K0 ["type"]
       11 JUMPIFNOTEQKS                    R2 K3 ["Expr"] ; [+11]
       13 GETTABLEKS                       R3 R0 K4 ["expr"]
       15 FASTCALL1                        TYPE R3 ; [+2]
       16 GETIMPORT                        R2 K1 [type]
       18 CALL                             R2 1 1
       19 JUMPIFEQKS                       R2 K5 ["string"] ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 MOVE                             R7 R4
        6 NAMECALL                         R5 R5 K0 ["RemoveTag"]
        8 CALL                             R5 2 0
        9 FORGLOOP                         R0 2 ; [-6]
       11 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R5 K0 [" "]
        1 NAMECALL                         R3 R1 K1 ["split"]
        3 CALL                             R3 2 1
        4 MOVE                             R4 R3
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 MOVE                             R11 R8
        9 NAMECALL                         R9 R0 K2 ["AddTag"]
       11 CALL                             R9 2 0
       12 FORGLOOP                         R4 2 ; [-5]
       14 JUMPIFNOT                        R2 ; [+4]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R0
       18 RETURN                           R4 1
       19 LOADNIL                          R4
       20 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 1
        5 MOVE                             R8 R5
        6 NAMECALL                         R6 R6 K0 ["RemoveTag"]
        8 CALL                             R6 2 0
        9 FORGLOOP                         R1 2 ; [-6]
       11 GETUPVAL                         R1 2
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 FASTCALL1                        TYPE R1 ; [+3]
       15 MOVE                             R3 R1
       16 GETIMPORT                        R2 K2 [type]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+18]
       21 LOADK                            R4 K4 [" "]
       22 NAMECALL                         R2 R1 K5 ["split"]
       24 CALL                             R2 2 1
       25 SETUPVAL                         R2 0
       26 GETUPVAL                         R2 0
       27 LOADNIL                          R3
       28 LOADNIL                          R4
       29 FORGPREP                         R2
       30 GETUPVAL                         R7 1
       31 MOVE                             R9 R6
       32 NAMECALL                         R7 R7 K6 ["AddTag"]
       34 CALL                             R7 2 0
       35 FORGLOOP                         R2 2 ; [-6]
       37 RETURN                           R0 0
       38 NEWTABLE                         R2 0 0
       40 SETUPVAL                         R2 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R3 ; [+2]
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["boolean"] ; [+3]
        7 GETUPVAL                         R1 0
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R1 0
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 1
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 JUMPIFNOT                        R1 ; [+6]
       17 GETUPVAL                         R7 2
       18 MOVE                             R9 R6
       19 NAMECALL                         R7 R7 K3 ["AddTag"]
       21 CALL                             R7 2 0
       22 JUMP                             ; [+5]
       23 GETUPVAL                         R7 2
       24 MOVE                             R9 R6
       25 NAMECALL                         R7 R7 K4 ["RemoveTag"]
       27 CALL                             R7 2 0
       28 FORGLOOP                         R2 2 ; [-13]
       30 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R3 R2
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 FASTCALL1                        TYPE R6 ; [+3]
        5 MOVE                             R9 R6
        6 GETIMPORT                        R8 K1 [type]
        8 CALL                             R8 1 1
        9 JUMPIFNOTEQKS                    R8 K2 ["number"] ; [+63]
       11 FASTCALL1                        TYPE R7 ; [+3]
       12 MOVE                             R9 R7
       13 GETIMPORT                        R8 K1 [type]
       15 CALL                             R8 1 1
       16 JUMPIFNOTEQKS                    R8 K3 ["string"] ; [+17]
       18 MOVE                             R8 R7
       19 LOADK                            R11 K4 [" "]
       20 NAMECALL                         R9 R8 K5 ["split"]
       22 CALL                             R9 2 1
       23 MOVE                             R10 R9
       24 LOADNIL                          R11
       25 LOADNIL                          R12
       26 FORGPREP                         R10
       27 MOVE                             R17 R14
       28 NAMECALL                         R15 R1 K6 ["AddTag"]
       30 CALL                             R15 2 0
       31 FORGLOOP                         R10 2 ; [-5]
       33 JUMP                             ; [+122]
       34 GETUPVAL                         R8 0
       35 MOVE                             R9 R7
       36 CALL                             R8 1 1
       37 JUMPIFNOT                        R8 ; [+19]
       38 NEWTABLE                         R8 0 0
       40 GETTABLEKS                       R9 R0 K7 ["api"]
       42 GETTABLEKS                       R9 R9 K8 ["createEffect"]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          REF R8
       46 CAPTURE                          VAL R1
       47 CAPTURE                          REF R7
       48 LOADK                            R12 K9 ["dynamic tag string: %*"]
       49 MOVE                             R14 R6
       50 NAMECALL                         R12 R12 K10 ["format"]
       52 CALL                             R12 2 1
       53 MOVE                             R11 R12
       54 CALL                             R9 2 0
       55 CLOSEUPVALS                      R8
       56 JUMP                             ; [+99]
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R8 R8 K11 ["warn"]
       60 LOADK                            R10 K12 ["Blox: Invalid tag string at index %*: expected string or getter, got %*"]
       61 MOVE                             R12 R6
       62 FASTCALL1                        TYPEOF R7 ; [+3]
       63 MOVE                             R14 R7
       64 GETIMPORT                        R13 K14 [typeof]
       66 CALL                             R13 1 1
       67 NAMECALL                         R10 R10 K10 ["format"]
       69 CALL                             R10 3 1
       70 MOVE                             R9 R10
       71 CALL                             R8 1 0
       72 JUMP                             ; [+83]
       73 MOVE                             R9 R7
       74 LOADB                            R8 0
       75 FASTCALL1                        TYPE R9 ; [+3]
       76 MOVE                             R11 R9
       77 GETIMPORT                        R10 K1 [type]
       79 CALL                             R10 1 1
       80 JUMPIFNOTEQKS                    R10 K15 ["table"] ; [+16]
       82 LOADB                            R8 0
       83 GETTABLEKS                       R10 R9 K0 ["type"]
       85 JUMPIFNOTEQKS                    R10 K16 ["Expr"] ; [+11]
       87 GETTABLEKS                       R11 R9 K17 ["expr"]
       89 FASTCALL1                        TYPE R11 ; [+2]
       90 GETIMPORT                        R10 K1 [type]
       92 CALL                             R10 1 1
       93 JUMPIFEQKS                       R10 K3 ["string"] ; [+2]
       95 LOADB                            R8 0 +1
       96 LOADB                            R8 1
       97 JUMPIFNOT                        R8 ; [+11]
       98 GETUPVAL                         R8 2
       99 GETTABLEKS                       R8 R8 K18 ["getExpressionValue"]
      101 GETTABLEKS                       R9 R7 K17 ["expr"]
      103 GETTABLEKS                       R10 R0 K19 ["context"]
      105 GETTABLEKS                       R11 R0 K7 ["api"]
      107 CALL                             R8 3 1
      108 MOVE                             R7 R8
      109 FASTCALL1                        TYPEOF R7 ; [+3]
      110 MOVE                             R9 R7
      111 GETIMPORT                        R8 K14 [typeof]
      113 CALL                             R8 1 1
      114 JUMPIFEQKS                       R8 K20 ["boolean"] ; [+22]
      116 GETUPVAL                         R8 0
      117 MOVE                             R9 R7
      118 CALL                             R8 1 1
      119 JUMPIF                           R8 ; [+17]
      120 GETUPVAL                         R8 1
      121 GETTABLEKS                       R8 R8 K11 ["warn"]
      123 LOADK                            R10 K21 ["Blox: Invalid tag expression value for '%*': expected boolean or getter, got %*"]
      124 MOVE                             R12 R6
      125 FASTCALL1                        TYPEOF R7 ; [+3]
      126 MOVE                             R14 R7
      127 GETIMPORT                        R13 K14 [typeof]
      129 CALL                             R13 1 1
      130 NAMECALL                         R10 R10 K10 ["format"]
      132 CALL                             R10 3 1
      133 MOVE                             R9 R10
      134 CALL                             R8 1 0
      135 CLOSEUPVALS                      R7
      136 JUMP                             ; [+20]
      137 LOADK                            R10 K4 [" "]
      138 NAMECALL                         R8 R6 K5 ["split"]
      140 CALL                             R8 2 1
      141 GETTABLEKS                       R9 R0 K7 ["api"]
      143 GETTABLEKS                       R9 R9 K8 ["createEffect"]
      145 NEWCLOSURE                       R10 P1
      146 CAPTURE                          REF R7
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R1
      149 LOADK                            R12 K22 ["conditional tags: %*"]
      150 MOVE                             R14 R6
      151 NAMECALL                         R12 R12 K10 ["format"]
      153 CALL                             R12 2 1
      154 MOVE                             R11 R12
      155 CALL                             R9 2 0
      156 CLOSEUPVALS                      R7
      157 FORGLOOP                         R3 2 ; [-154]
      159 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKS                    R1 K0 ["Tags"] ; [+7]
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 RETURN                           R4 1
        8 LOADN                            R6 1
        9 LOADN                            R7 1
       10 NAMECALL                         R4 R1 K1 ["sub"]
       12 CALL                             R4 3 1
       13 JUMPIFNOTEQKS                    R4 K2 ["@"] ; [+10]
       15 LOADN                            R8 2
       16 NAMECALL                         R6 R1 K1 ["sub"]
       18 CALL                             R6 2 1
       19 MOVE                             R7 R2
       20 NAMECALL                         R4 R0 K3 ["SetAttribute"]
       22 CALL                             R4 3 0
       23 JUMP                             ; [+88]
       24 LOADN                            R6 1
       25 LOADN                            R7 2
       26 NAMECALL                         R4 R1 K1 ["sub"]
       28 CALL                             R4 3 1
       29 JUMPIFNOTEQKS                    R4 K4 ["On"] ; [+34]
       31 FASTCALL1                        TYPE R2 ; [+3]
       32 MOVE                             R5 R2
       33 GETIMPORT                        R4 K6 [type]
       35 CALL                             R4 1 1
       36 JUMPIFNOTEQKS                    R4 K7 ["function"] ; [+15]
       38 LOADN                            R7 3
       39 NAMECALL                         R5 R1 K1 ["sub"]
       41 CALL                             R5 2 1
       42 GETTABLE                         R4 R0 R5
       43 MOVE                             R7 R2
       44 NAMECALL                         R5 R4 K8 ["Connect"]
       46 CALL                             R5 2 1
       47 JUMPIFNOT                        R3 ; [+64]
       48 NEWCLOSURE                       R6 P0
       49 CAPTURE                          VAL R5
       50 RETURN                           R6 1
       51 JUMP                             ; [+60]
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R4 R4 K9 ["warn"]
       55 LOADK                            R6 K10 ["Blox: Event handler for '%*' is not a function"]
       56 MOVE                             R8 R1
       57 NAMECALL                         R6 R6 K11 ["format"]
       59 CALL                             R6 2 1
       60 MOVE                             R5 R6
       61 MOVE                             R6 R2
       62 CALL                             R4 2 0
       63 JUMP                             ; [+48]
       64 GETUPVAL                         R4 1
       65 GETTABLEKS                       R4 R4 K12 ["PROPERTY_VALIDATION_ENABLED"]
       67 JUMPIFNOT                        R4 ; [+41]
       68 JUMPIFNOTEQKNIL                  R2 ; [+13]
       70 GETUPVAL                         R4 1
       71 GETTABLEKS                       R4 R4 K9 ["warn"]
       73 LOADK                            R6 K13 ["Blox: Attempting to assign nil to property '%*' on instance of type '%*'. Is this intentional?"]
       74 MOVE                             R8 R1
       75 GETTABLEKS                       R9 R0 K14 ["ClassName"]
       77 NAMECALL                         R6 R6 K11 ["format"]
       79 CALL                             R6 3 1
       80 MOVE                             R5 R6
       81 CALL                             R4 1 0
       82 GETIMPORT                        R4 K16 [pcall]
       84 NEWCLOSURE                       R5 P1
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R2
       88 CALL                             R4 1 2
       89 JUMPIF                           R4 ; [+22]
       90 GETUPVAL                         R6 1
       91 GETTABLEKS                       R6 R6 K9 ["warn"]
       93 LOADK                            R8 K17 ["Blox: Failed to assign property '%*' with value '%*' on instance of type '%*': %*"]
       94 MOVE                             R10 R1
       95 FASTCALL1                        TOSTRING R2 ; [+3]
       96 MOVE                             R12 R2
       97 GETIMPORT                        R11 K19 [tostring]
       99 CALL                             R11 1 1
      100 GETTABLEKS                       R12 R0 K14 ["ClassName"]
      102 MOVE                             R13 R5
      103 NAMECALL                         R8 R8 K11 ["format"]
      105 CALL                             R8 5 1
      106 MOVE                             R7 R8
      107 CALL                             R6 1 0
      108 JUMP                             ; [+3]
      109 JUMPIFEQKNIL                     R2 ; [+2]
      111 SETTABLE                         R2 R0 R1
      112 LOADNIL                          R4
      113 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 GETUPVAL                         R4 4
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 LOADB                            R5 1
       11 CALL                             R1 4 1
       12 SETUPVAL                         R1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 GETUPVAL                         R4 4
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 LOADB                            R5 1
       11 CALL                             R1 4 1
       12 SETUPVAL                         R1 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R4 R2 K0 ["source"]
        2 JUMPIFNOT                        R4 ; [+6]
        3 GETTABLEKS                       R3 R2 K0 ["source"]
        5 NAMECALL                         R3 R3 K1 ["Clone"]
        7 CALL                             R3 1 1
        8 JUMP                             ; [+5]
        9 GETIMPORT                        R3 K4 [Instance.new]
       11 GETTABLEKS                       R4 R2 K5 ["className"]
       13 CALL                             R3 1 1
       14 NAMECALL                         R4 R3 K6 ["ClearAllChildren"]
       16 CALL                             R4 1 0
       17 GETTABLEKS                       R4 R3 K7 ["ClassName"]
       19 JUMPIFNOTEQKS                    R4 K8 ["StyleSheet"] ; [+13]
       21 GETTABLEKS                       R5 R2 K9 ["params"]
       23 GETTABLEKS                       R5 R5 K10 ["Name"]
       25 ORK                              R4 R5 K8 ["StyleSheet"]
       26 SETTABLEKS                       R4 R3 K10 ["Name"]
       28 GETUPVAL                         R4 0
       29 MOVE                             R5 R3
       30 MOVE                             R6 R2
       31 CALL                             R4 2 0
       32 RETURN                           R3 1
       33 GETTABLEKS                       R4 R2 K9 ["params"]
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 FORGPREP                         R4
       38 JUMPIFNOTEQKS                    R7 K11 ["ref"] ; [+16]
       40 GETTABLEKS                       R10 R1 K12 ["refSetters"]
       42 GETTABLE                         R9 R10 R8
       43 JUMPIFNOT                        R9 ; [+5]
       44 GETTABLEKS                       R10 R1 K12 ["refSetters"]
       46 GETTABLE                         R9 R10 R8
       47 MOVE                             R10 R3
       48 CALL                             R9 1 0
       49 GETTABLEKS                       R9 R1 K13 ["assignField"]
       51 MOVE                             R10 R8
       52 MOVE                             R11 R3
       53 CALL                             R9 2 0
       54 JUMP                             ; [+123]
       55 LOADB                            R9 0
       56 FASTCALL1                        TYPE R8 ; [+3]
       57 MOVE                             R11 R8
       58 GETIMPORT                        R10 K15 [type]
       60 CALL                             R10 1 1
       61 JUMPIFNOTEQKS                    R10 K16 ["table"] ; [+16]
       63 LOADB                            R9 0
       64 GETTABLEKS                       R10 R8 K14 ["type"]
       66 JUMPIFNOTEQKS                    R10 K17 ["Expr"] ; [+11]
       68 GETTABLEKS                       R11 R8 K18 ["expr"]
       70 FASTCALL1                        TYPE R11 ; [+2]
       71 GETIMPORT                        R10 K15 [type]
       73 CALL                             R10 1 1
       74 JUMPIFEQKS                       R10 K19 ["string"] ; [+2]
       76 LOADB                            R9 0 +1
       77 LOADB                            R9 1
       78 JUMPIFNOT                        R9 ; [+55]
       79 GETUPVAL                         R9 1
       80 GETTABLEKS                       R9 R9 K20 ["getExpressionValue"]
       82 GETTABLEKS                       R10 R8 K18 ["expr"]
       84 GETTABLEKS                       R11 R1 K21 ["context"]
       86 GETTABLEKS                       R12 R1 K22 ["api"]
       88 CALL                             R9 3 1
       89 GETUPVAL                         R10 2
       90 MOVE                             R11 R9
       91 CALL                             R10 1 1
       92 JUMPIFNOT                        R10 ; [+20]
       93 LOADNIL                          R10
       94 GETTABLEKS                       R11 R1 K22 ["api"]
       96 GETTABLEKS                       R11 R11 K23 ["createEffect"]
       98 NEWCLOSURE                       R12 P0
       99 CAPTURE                          REF R10
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R9
      104 LOADK                            R14 K24 ["property update: %*"]
      105 MOVE                             R16 R7
      106 NAMECALL                         R14 R14 K25 ["format"]
      108 CALL                             R14 2 1
      109 MOVE                             R13 R14
      110 CALL                             R11 2 0
      111 CLOSEUPVALS                      R10
      112 JUMP                             ; [+65]
      113 JUMPIFNOTEQKS                    R7 K26 ["Tags"] ; [+14]
      115 FASTCALL1                        TYPEOF R9 ; [+3]
      116 MOVE                             R11 R9
      117 GETIMPORT                        R10 K28 [typeof]
      119 CALL                             R10 1 1
      120 JUMPIFNOTEQKS                    R10 K16 ["table"] ; [+7]
      122 GETUPVAL                         R10 4
      123 MOVE                             R11 R1
      124 MOVE                             R12 R3
      125 MOVE                             R13 R9
      126 CALL                             R10 3 0
      127 JUMP                             ; [+50]
      128 GETUPVAL                         R10 3
      129 MOVE                             R11 R3
      130 MOVE                             R12 R7
      131 MOVE                             R13 R9
      132 CALL                             R10 3 0
      133 JUMP                             ; [+44]
      134 GETUPVAL                         R9 2
      135 MOVE                             R10 R8
      136 CALL                             R9 1 1
      137 JUMPIFNOT                        R9 ; [+20]
      138 LOADNIL                          R9
      139 GETTABLEKS                       R10 R1 K22 ["api"]
      141 GETTABLEKS                       R10 R10 K23 ["createEffect"]
      143 NEWCLOSURE                       R11 P1
      144 CAPTURE                          REF R9
      145 CAPTURE                          UPVAL U3
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R8
      149 LOADK                            R13 K24 ["property update: %*"]
      150 MOVE                             R15 R7
      151 NAMECALL                         R13 R13 K25 ["format"]
      153 CALL                             R13 2 1
      154 MOVE                             R12 R13
      155 CALL                             R10 2 0
      156 CLOSEUPVALS                      R9
      157 JUMP                             ; [+20]
      158 JUMPIFNOTEQKS                    R7 K26 ["Tags"] ; [+14]
      160 FASTCALL1                        TYPE R8 ; [+3]
      161 MOVE                             R10 R8
      162 GETIMPORT                        R9 K15 [type]
      164 CALL                             R9 1 1
      165 JUMPIFNOTEQKS                    R9 K16 ["table"] ; [+7]
      167 GETUPVAL                         R9 4
      168 MOVE                             R10 R1
      169 MOVE                             R11 R3
      170 MOVE                             R12 R8
      171 CALL                             R9 3 0
      172 JUMP                             ; [+5]
      173 GETUPVAL                         R9 3
      174 MOVE                             R10 R3
      175 MOVE                             R11 R7
      176 MOVE                             R12 R8
      177 CALL                             R9 3 0
      178 FORGLOOP                         R4 2 ; [-141]
      180 GETTABLEKS                       R4 R2 K29 ["children"]
      182 LOADNIL                          R5
      183 LOADNIL                          R6
      184 FORGPREP                         R4
      185 GETTABLEKS                       R9 R8 K14 ["type"]
      187 JUMPIFNOTEQKS                    R9 K2 ["Instance"] ; [+26]
      189 GETTABLEKS                       R9 R8 K5 ["className"]
      191 JUMPIFEQKS                       R9 K30 ["ModuleScript"] ; [+52]
      193 GETUPVAL                         R9 5
      194 MOVE                             R10 R0
      195 MOVE                             R11 R1
      196 MOVE                             R12 R8
      197 CALL                             R9 3 1
      198 GETTABLEKS                       R10 R8 K9 ["params"]
      200 GETTABLEKS                       R10 R10 K31 ["LayoutOrder"]
      202 JUMPIFNOTEQKNIL                  R10 ; [+8]
      204 LOADK                            R12 K32 ["GuiObject"]
      205 NAMECALL                         R10 R9 K33 ["IsA"]
      207 CALL                             R10 2 1
      208 JUMPIFNOT                        R10 ; [+2]
      209 SETTABLEKS                       R7 R9 K31 ["LayoutOrder"]
      211 SETTABLEKS                       R3 R9 K34 ["Parent"]
      213 JUMP                             ; [+30]
      214 GETTABLEKS                       R9 R8 K14 ["type"]
      216 JUMPIFNOTEQKS                    R9 K35 ["Ref"] ; [+27]
      218 GETTABLEKS                       R10 R1 K36 ["dynamic"]
      220 JUMPIFNOT                        R10 ; [+2]
      221 LOADNIL                          R9
      222 JUMP                             ; [+2]
      223 GETTABLEKS                       R9 R1 K21 ["context"]
      225 GETUPVAL                         R10 6
      226 MOVE                             R11 R0
      227 MOVE                             R12 R8
      228 MOVE                             R13 R3
      229 MOVE                             R14 R1
      230 MOVE                             R15 R9
      231 MOVE                             R16 R7
      232 CALL                             R10 6 1
      233 MOVE                             R11 R0
      234 MOVE                             R12 R10
      235 CALL                             R11 1 0
      236 GETTABLEKS                       R12 R1 K37 ["elements"]
      238 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
      240 MOVE                             R13 R10
      241 GETIMPORT                        R11 K39 [table.insert]
      243 CALL                             R11 2 0
      244 FORGLOOP                         R4 2 ; [-60]
      246 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["runtime"]
       11 GETTABLEKS                       R2 R2 K6 ["populateStyles"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K5 ["runtime"]
       23 GETTABLEKS                       R4 R4 K8 ["TemplateResolver"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Debug"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K10 ["state"]
       35 GETTABLEKS                       R6 R6 K11 ["Signals"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R5 K12 ["isGetter"]
       40 GETIMPORT                        R7 K4 [require]
       42 GETTABLEKS                       R8 R0 K5 ["runtime"]
       44 GETTABLEKS                       R8 R8 K13 ["makeElement"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K14 [PROTO_0]
       48 DUPCLOSURE                       R9 K15 [PROTO_2]
       49 DUPCLOSURE                       R10 K16 [PROTO_5]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 DUPCLOSURE                       R11 K17 [PROTO_8]
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R4
       56 DUPCLOSURE                       R12 K18 [PROTO_11]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R12
       63 CAPTURE                          VAL R7
       64 RETURN                           R12 1
