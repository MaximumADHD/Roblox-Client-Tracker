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
        9 JUMPIFNOTEQKS                    R8 K2 ["number"] ; [+61]
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
       33 JUMP                             ; [+118]
       34 GETUPVAL                         R8 0
       35 MOVE                             R9 R7
       36 CALL                             R8 1 1
       37 JUMPIFNOT                        R8 ; [+18]
       38 NEWTABLE                         R8 0 0
       40 GETTABLEKS                       R9 R0 K7 ["api"]
       42 GETTABLEKS                       R9 R9 K8 ["createEffect"]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          REF R8
       46 CAPTURE                          VAL R1
       47 CAPTURE                          REF R7
       48 LOADK                            R11 K9 ["dynamic tag string: %*"]
       49 MOVE                             R13 R6
       50 NAMECALL                         R11 R11 K10 ["format"]
       52 CALL                             R11 2 1
       53 CALL                             R9 2 0
       54 CLOSEUPVALS                      R8
       55 JUMP                             ; [+96]
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K11 ["warn"]
       59 LOADK                            R9 K12 ["Blox: Invalid tag string at index %*: expected string or getter, got %*"]
       60 MOVE                             R11 R6
       61 FASTCALL1                        TYPEOF R7 ; [+3]
       62 MOVE                             R13 R7
       63 GETIMPORT                        R12 K14 [typeof]
       65 CALL                             R12 1 1
       66 NAMECALL                         R9 R9 K10 ["format"]
       68 CALL                             R9 3 1
       69 CALL                             R8 1 0
       70 JUMP                             ; [+81]
       71 MOVE                             R9 R7
       72 LOADB                            R8 0
       73 FASTCALL1                        TYPE R9 ; [+3]
       74 MOVE                             R11 R9
       75 GETIMPORT                        R10 K1 [type]
       77 CALL                             R10 1 1
       78 JUMPIFNOTEQKS                    R10 K15 ["table"] ; [+16]
       80 LOADB                            R8 0
       81 GETTABLEKS                       R10 R9 K0 ["type"]
       83 JUMPIFNOTEQKS                    R10 K16 ["Expr"] ; [+11]
       85 GETTABLEKS                       R11 R9 K17 ["expr"]
       87 FASTCALL1                        TYPE R11 ; [+2]
       88 GETIMPORT                        R10 K1 [type]
       90 CALL                             R10 1 1
       91 JUMPIFEQKS                       R10 K3 ["string"] ; [+2]
       93 LOADB                            R8 0 +1
       94 LOADB                            R8 1
       95 JUMPIFNOT                        R8 ; [+11]
       96 GETUPVAL                         R8 2
       97 GETTABLEKS                       R8 R8 K18 ["getExpressionValue"]
       99 GETTABLEKS                       R9 R7 K17 ["expr"]
      101 GETTABLEKS                       R10 R0 K19 ["context"]
      103 GETTABLEKS                       R11 R0 K7 ["api"]
      105 CALL                             R8 3 1
      106 MOVE                             R7 R8
      107 FASTCALL1                        TYPEOF R7 ; [+3]
      108 MOVE                             R9 R7
      109 GETIMPORT                        R8 K14 [typeof]
      111 CALL                             R8 1 1
      112 JUMPIFEQKS                       R8 K20 ["boolean"] ; [+21]
      114 GETUPVAL                         R8 0
      115 MOVE                             R9 R7
      116 CALL                             R8 1 1
      117 JUMPIF                           R8 ; [+16]
      118 GETUPVAL                         R8 1
      119 GETTABLEKS                       R8 R8 K11 ["warn"]
      121 LOADK                            R9 K21 ["Blox: Invalid tag expression value for '%*': expected boolean or getter, got %*"]
      122 MOVE                             R11 R6
      123 FASTCALL1                        TYPEOF R7 ; [+3]
      124 MOVE                             R13 R7
      125 GETIMPORT                        R12 K14 [typeof]
      127 CALL                             R12 1 1
      128 NAMECALL                         R9 R9 K10 ["format"]
      130 CALL                             R9 3 1
      131 CALL                             R8 1 0
      132 CLOSEUPVALS                      R7
      133 JUMP                             ; [+19]
      134 LOADK                            R10 K4 [" "]
      135 NAMECALL                         R8 R6 K5 ["split"]
      137 CALL                             R8 2 1
      138 GETTABLEKS                       R9 R0 K7 ["api"]
      140 GETTABLEKS                       R9 R9 K8 ["createEffect"]
      142 NEWCLOSURE                       R10 P1
      143 CAPTURE                          REF R7
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R1
      146 LOADK                            R11 K22 ["conditional tags: %*"]
      147 MOVE                             R13 R6
      148 NAMECALL                         R11 R11 K10 ["format"]
      150 CALL                             R11 2 1
      151 CALL                             R9 2 0
      152 CLOSEUPVALS                      R7
      153 FORGLOOP                         R3 2 ; [-150]
      155 RETURN                           R0 0

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
       23 JUMP                             ; [+85]
       24 LOADN                            R6 1
       25 LOADN                            R7 2
       26 NAMECALL                         R4 R1 K1 ["sub"]
       28 CALL                             R4 3 1
       29 JUMPIFNOTEQKS                    R4 K4 ["On"] ; [+33]
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
       47 JUMPIFNOT                        R3 ; [+61]
       48 NEWCLOSURE                       R6 P0
       49 CAPTURE                          VAL R5
       50 RETURN                           R6 1
       51 JUMP                             ; [+57]
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R4 R4 K9 ["warn"]
       55 LOADK                            R5 K10 ["Blox: Event handler for '%*' is not a function"]
       56 MOVE                             R7 R1
       57 NAMECALL                         R5 R5 K11 ["format"]
       59 CALL                             R5 2 1
       60 MOVE                             R6 R2
       61 CALL                             R4 2 0
       62 JUMP                             ; [+46]
       63 GETUPVAL                         R4 1
       64 GETTABLEKS                       R4 R4 K12 ["PROPERTY_VALIDATION_ENABLED"]
       66 JUMPIFNOT                        R4 ; [+39]
       67 JUMPIFNOTEQKNIL                  R2 ; [+12]
       69 GETUPVAL                         R4 1
       70 GETTABLEKS                       R4 R4 K9 ["warn"]
       72 LOADK                            R5 K13 ["Blox: Attempting to assign nil to property '%*' on instance of type '%*'. Is this intentional?"]
       73 MOVE                             R7 R1
       74 GETTABLEKS                       R8 R0 K14 ["ClassName"]
       76 NAMECALL                         R5 R5 K11 ["format"]
       78 CALL                             R5 3 1
       79 CALL                             R4 1 0
       80 GETIMPORT                        R4 K16 [pcall]
       82 NEWCLOSURE                       R5 P1
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R2
       86 CALL                             R4 1 2
       87 JUMPIF                           R4 ; [+21]
       88 GETUPVAL                         R6 1
       89 GETTABLEKS                       R6 R6 K9 ["warn"]
       91 LOADK                            R7 K17 ["Blox: Failed to assign property '%*' with value '%*' on instance of type '%*': %*"]
       92 MOVE                             R9 R1
       93 FASTCALL1                        TOSTRING R2 ; [+3]
       94 MOVE                             R11 R2
       95 GETIMPORT                        R10 K19 [tostring]
       97 CALL                             R10 1 1
       98 GETTABLEKS                       R11 R0 K14 ["ClassName"]
      100 MOVE                             R12 R5
      101 NAMECALL                         R7 R7 K11 ["format"]
      103 CALL                             R7 5 1
      104 CALL                             R6 1 0
      105 JUMP                             ; [+3]
      106 JUMPIFEQKNIL                     R2 ; [+2]
      108 SETTABLE                         R2 R0 R1
      109 LOADNIL                          R4
      110 RETURN                           R4 1

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
       54 JUMP                             ; [+121]
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
       78 JUMPIFNOT                        R9 ; [+54]
       79 GETUPVAL                         R9 1
       80 GETTABLEKS                       R9 R9 K20 ["getExpressionValue"]
       82 GETTABLEKS                       R10 R8 K18 ["expr"]
       84 GETTABLEKS                       R11 R1 K21 ["context"]
       86 GETTABLEKS                       R12 R1 K22 ["api"]
       88 CALL                             R9 3 1
       89 GETUPVAL                         R10 2
       90 MOVE                             R11 R9
       91 CALL                             R10 1 1
       92 JUMPIFNOT                        R10 ; [+19]
       93 LOADNIL                          R10
       94 GETTABLEKS                       R11 R1 K22 ["api"]
       96 GETTABLEKS                       R11 R11 K23 ["createEffect"]
       98 NEWCLOSURE                       R12 P0
       99 CAPTURE                          REF R10
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R9
      104 LOADK                            R13 K24 ["property update: %*"]
      105 MOVE                             R15 R7
      106 NAMECALL                         R13 R13 K25 ["format"]
      108 CALL                             R13 2 1
      109 CALL                             R11 2 0
      110 CLOSEUPVALS                      R10
      111 JUMP                             ; [+64]
      112 JUMPIFNOTEQKS                    R7 K26 ["Tags"] ; [+14]
      114 FASTCALL1                        TYPEOF R9 ; [+3]
      115 MOVE                             R11 R9
      116 GETIMPORT                        R10 K28 [typeof]
      118 CALL                             R10 1 1
      119 JUMPIFNOTEQKS                    R10 K16 ["table"] ; [+7]
      121 GETUPVAL                         R10 4
      122 MOVE                             R11 R1
      123 MOVE                             R12 R3
      124 MOVE                             R13 R9
      125 CALL                             R10 3 0
      126 JUMP                             ; [+49]
      127 GETUPVAL                         R10 3
      128 MOVE                             R11 R3
      129 MOVE                             R12 R7
      130 MOVE                             R13 R9
      131 CALL                             R10 3 0
      132 JUMP                             ; [+43]
      133 GETUPVAL                         R9 2
      134 MOVE                             R10 R8
      135 CALL                             R9 1 1
      136 JUMPIFNOT                        R9 ; [+19]
      137 LOADNIL                          R9
      138 GETTABLEKS                       R10 R1 K22 ["api"]
      140 GETTABLEKS                       R10 R10 K23 ["createEffect"]
      142 NEWCLOSURE                       R11 P1
      143 CAPTURE                          REF R9
      144 CAPTURE                          UPVAL U3
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R8
      148 LOADK                            R12 K24 ["property update: %*"]
      149 MOVE                             R14 R7
      150 NAMECALL                         R12 R12 K25 ["format"]
      152 CALL                             R12 2 1
      153 CALL                             R10 2 0
      154 CLOSEUPVALS                      R9
      155 JUMP                             ; [+20]
      156 JUMPIFNOTEQKS                    R7 K26 ["Tags"] ; [+14]
      158 FASTCALL1                        TYPE R8 ; [+3]
      159 MOVE                             R10 R8
      160 GETIMPORT                        R9 K15 [type]
      162 CALL                             R9 1 1
      163 JUMPIFNOTEQKS                    R9 K16 ["table"] ; [+7]
      165 GETUPVAL                         R9 4
      166 MOVE                             R10 R1
      167 MOVE                             R11 R3
      168 MOVE                             R12 R8
      169 CALL                             R9 3 0
      170 JUMP                             ; [+5]
      171 GETUPVAL                         R9 3
      172 MOVE                             R10 R3
      173 MOVE                             R11 R7
      174 MOVE                             R12 R8
      175 CALL                             R9 3 0
      176 FORGLOOP                         R4 2 ; [-139]
      178 GETTABLEKS                       R4 R2 K29 ["children"]
      180 LOADNIL                          R5
      181 LOADNIL                          R6
      182 FORGPREP                         R4
      183 GETTABLEKS                       R9 R8 K14 ["type"]
      185 JUMPIFNOTEQKS                    R9 K2 ["Instance"] ; [+26]
      187 GETTABLEKS                       R9 R8 K5 ["className"]
      189 JUMPIFEQKS                       R9 K30 ["ModuleScript"] ; [+52]
      191 GETUPVAL                         R9 5
      192 MOVE                             R10 R0
      193 MOVE                             R11 R1
      194 MOVE                             R12 R8
      195 CALL                             R9 3 1
      196 GETTABLEKS                       R10 R8 K9 ["params"]
      198 GETTABLEKS                       R10 R10 K31 ["LayoutOrder"]
      200 JUMPIFNOTEQKNIL                  R10 ; [+8]
      202 LOADK                            R12 K32 ["GuiObject"]
      203 NAMECALL                         R10 R9 K33 ["IsA"]
      205 CALL                             R10 2 1
      206 JUMPIFNOT                        R10 ; [+2]
      207 SETTABLEKS                       R7 R9 K31 ["LayoutOrder"]
      209 SETTABLEKS                       R3 R9 K34 ["Parent"]
      211 JUMP                             ; [+30]
      212 GETTABLEKS                       R9 R8 K14 ["type"]
      214 JUMPIFNOTEQKS                    R9 K35 ["Ref"] ; [+27]
      216 GETTABLEKS                       R10 R1 K36 ["dynamic"]
      218 JUMPIFNOT                        R10 ; [+2]
      219 LOADNIL                          R9
      220 JUMP                             ; [+2]
      221 GETTABLEKS                       R9 R1 K21 ["context"]
      223 GETUPVAL                         R10 6
      224 MOVE                             R11 R0
      225 MOVE                             R12 R8
      226 MOVE                             R13 R3
      227 MOVE                             R14 R1
      228 MOVE                             R15 R9
      229 MOVE                             R16 R7
      230 CALL                             R10 6 1
      231 MOVE                             R11 R0
      232 MOVE                             R12 R10
      233 CALL                             R11 1 0
      234 GETTABLEKS                       R12 R1 K37 ["elements"]
      236 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
      238 MOVE                             R13 R10
      239 GETIMPORT                        R11 K39 [table.insert]
      241 CALL                             R11 2 0
      242 FORGLOOP                         R4 2 ; [-60]
      244 RETURN                           R3 1

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
