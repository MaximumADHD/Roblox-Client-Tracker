PROTO_0:
        0 LOADK                            R3 K0 ["\nreturn%s+([%w_]+)%s*\n?$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 RETURN                           R2 3
        9 LOADK                            R3 K2 ["local function%s+"]
       10 MOVE                             R4 R1
       11 LOADK                            R5 K3 ["%s*%b<>%s*(%b())"]
       12 CONCAT                           R2 R3 R5
       13 MOVE                             R5 R2
       14 NAMECALL                         R3 R0 K1 ["match"]
       16 CALL                             R3 2 1
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 JUMPIF                           R3 ; [+9]
       22 LOADK                            R6 K2 ["local function%s+"]
       23 MOVE                             R7 R1
       24 LOADK                            R8 K4 ["%s*(%b())"]
       25 CONCAT                           R5 R6 R8
       26 MOVE                             R8 R5
       27 NAMECALL                         R6 R0 K1 ["match"]
       29 CALL                             R6 2 1
       30 MOVE                             R3 R6
       31 JUMPIF                           R3 ; [+12]
       32 GETIMPORT                        R5 K6 [warn]
       34 GETIMPORT                        R6 K9 [string.format]
       36 LOADK                            R7 K10 ["Found return statement for '%s' but no matching function definition"]
       37 MOVE                             R8 R1
       38 CALL                             R6 2 -1
       39 CALL                             R5 -1 0
       40 LOADNIL                          R5
       41 LOADNIL                          R6
       42 LOADNIL                          R7
       43 RETURN                           R5 3
       44 LOADNIL                          R5
       45 LOADK                            R7 K11 ["%-%-%[%[%s*(.-)%s*%]%]%s*"]
       46 LOADK                            R8 K2 ["local function%s+"]
       47 MOVE                             R9 R1
       48 CONCAT                           R6 R7 R9
       49 MOVE                             R9 R6
       50 NAMECALL                         R7 R0 K1 ["match"]
       52 CALL                             R7 2 1
       53 JUMPIFNOT                        R7 ; [+11]
       54 LOADK                            R10 K12 ["^%s+"]
       55 LOADK                            R11 K13 [""]
       56 NAMECALL                         R8 R7 K14 ["gsub"]
       58 CALL                             R8 3 1
       59 LOADK                            R10 K15 ["%s+$"]
       60 LOADK                            R11 K13 [""]
       61 NAMECALL                         R8 R8 K14 ["gsub"]
       63 CALL                             R8 3 1
       64 MOVE                             R5 R8
       65 GETIMPORT                        R9 K16 [string.match]
       67 MOVE                             R10 R3
       68 LOADK                            R11 K17 ["^%b()$"]
       69 CALL                             R9 2 1
       70 FASTCALL2K                       ASSERT R9 K18 ; [+4]
       72 LOADK                            R10 K18 ["Expected balanced parentheses"]
       73 GETIMPORT                        R8 K20 [assert]
       75 CALL                             R8 2 0
       76 LOADN                            R10 2
       77 LOADN                            R11 254
       78 FASTCALL3                        STRING_SUB R3 R10 R11
       80 MOVE                             R9 R3
       81 GETIMPORT                        R8 K22 [string.sub]
       83 CALL                             R8 3 1
       84 JUMPIFNOT                        R4 ; [+5]
       85 LOADK                            R10 K2 ["local function%s+"]
       86 MOVE                             R11 R1
       87 LOADK                            R12 K23 ["%s*%b<>%s*%b()%s*([^\n]*)"]
       88 CONCAT                           R9 R10 R12
       89 JUMP                             ; [+4]
       90 LOADK                            R10 K2 ["local function%s+"]
       91 MOVE                             R11 R1
       92 LOADK                            R12 K24 ["%s*%b()%s*([^\n]*)"]
       93 CONCAT                           R9 R10 R12
       94 MOVE                             R12 R9
       95 NAMECALL                         R10 R0 K1 ["match"]
       97 CALL                             R10 2 1
       98 JUMPIFNOT                        R10 ; [+2]
       99 JUMPIFNOTEQKS                    R10 K13 [""] ; [+5]
      101 MOVE                             R11 R8
      102 LOADNIL                          R12
      103 MOVE                             R13 R5
      104 RETURN                           R11 3
      105 LOADK                            R13 K25 ["^:%s*(.+)$"]
      106 NAMECALL                         R11 R10 K1 ["match"]
      108 CALL                             R11 2 1
      109 JUMPIF                           R11 ; [+4]
      110 MOVE                             R12 R8
      111 LOADNIL                          R13
      112 MOVE                             R14 R5
      113 RETURN                           R12 3
      114 LOADK                            R14 K26 ["^%s*(.-)%s*$"]
      115 NAMECALL                         R12 R11 K1 ["match"]
      117 CALL                             R12 2 1
      118 MOVE                             R11 R12
      119 GETIMPORT                        R12 K16 [string.match]
      121 MOVE                             R13 R11
      122 LOADK                            R14 K17 ["^%b()$"]
      123 CALL                             R12 2 1
      124 JUMPIFNOT                        R12 ; [+11]
      125 MOVE                             R12 R8
      126 LOADN                            R15 2
      127 LOADN                            R16 254
      128 FASTCALL3                        STRING_SUB R11 R15 R16
      130 MOVE                             R14 R11
      131 GETIMPORT                        R13 K22 [string.sub]
      133 CALL                             R13 3 1
      134 MOVE                             R14 R5
      135 RETURN                           R12 3
      136 MOVE                             R12 R8
      137 MOVE                             R13 R11
      138 MOVE                             R14 R5
      139 RETURN                           R12 3

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+4]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 0
        8 NEWTABLE                         R2 4 0
       10 LOADN                            R3 0
       11 SETTABLEKS                       R3 R2 K1 ["("]
       13 LOADN                            R3 0
       14 SETTABLEKS                       R3 R2 K2 ["<"]
       16 LOADN                            R3 0
       17 SETTABLEKS                       R3 R2 K3 ["{"]
       19 LOADK                            R3 K0 [""]
       20 LOADN                            R6 1
       21 LENGTH                           R4 R0
       22 LOADN                            R5 1
       23 FORNPREP                         R4
       24 MOVE                             R9 R6
       25 MOVE                             R10 R6
       26 NAMECALL                         R7 R0 K4 ["sub"]
       28 CALL                             R7 3 1
       29 GETTABLE                         R8 R2 R7
       30 JUMPIFNOT                        R8 ; [+7]
       31 GETTABLE                         R9 R2 R7
       32 ADDK                             R8 R9 K5 [1]
       33 SETTABLE                         R8 R2 R7
       34 MOVE                             R8 R3
       35 MOVE                             R9 R7
       36 CONCAT                           R3 R8 R9
       37 JUMP                             ; [+48]
       38 GETUPVAL                         R9 0
       39 GETTABLE                         R8 R9 R7
       40 JUMPIFNOT                        R8 ; [+13]
       41 GETUPVAL                         R9 0
       42 GETTABLE                         R8 R9 R7
       43 GETTABLE                         R9 R2 R8
       44 LOADN                            R10 0
       45 JUMPIFNOTLT                      R10 R9 ; [+4]
       47 GETTABLE                         R10 R2 R8
       48 SUBK                             R9 R10 K5 [1]
       49 SETTABLE                         R9 R2 R8
       50 MOVE                             R9 R3
       51 MOVE                             R10 R7
       52 CONCAT                           R3 R9 R10
       53 JUMP                             ; [+32]
       54 JUMPIFNOTEQKS                    R7 K6 [","] ; [+28]
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K7 ["sum"]
       59 GETUPVAL                         R9 1
       60 GETTABLEKS                       R9 R9 K8 ["values"]
       62 MOVE                             R10 R2
       63 CALL                             R9 1 -1
       64 CALL                             R8 -1 1
       65 JUMPIFNOTEQKN                    R8 K9 [0] ; [+17]
       67 LOADK                            R10 K10 ["^%s*(.-)%s*$"]
       68 NAMECALL                         R8 R3 K11 ["match"]
       70 CALL                             R8 2 1
       71 JUMPIFNOT                        R8 ; [+9]
       72 JUMPIFEQKS                       R8 K0 [""] ; [+8]
       74 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       76 MOVE                             R10 R1
       77 MOVE                             R11 R8
       78 GETIMPORT                        R9 K14 [table.insert]
       80 CALL                             R9 2 0
       81 LOADK                            R3 K0 [""]
       82 JUMP                             ; [+3]
       83 MOVE                             R8 R3
       84 MOVE                             R9 R7
       85 CONCAT                           R3 R8 R9
       86 FORNLOOP                         R4
       87 JUMPIFEQKS                       R3 K0 [""] ; [+15]
       89 LOADK                            R6 K10 ["^%s*(.-)%s*$"]
       90 NAMECALL                         R4 R3 K11 ["match"]
       92 CALL                             R4 2 1
       93 JUMPIFNOT                        R4 ; [+9]
       94 JUMPIFEQKS                       R4 K0 [""] ; [+8]
       96 FASTCALL2                        TABLE_INSERT R1 R4 ; [+5]
       98 MOVE                             R6 R1
       99 MOVE                             R7 R4
      100 GETIMPORT                        R5 K14 [table.insert]
      102 CALL                             R5 2 0
      103 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R3 K0 ["%s+"]
        1 LOADK                            R4 K1 [" "]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R3 K3 ["^%s*(.-)%s*$"]
        6 NAMECALL                         R1 R1 K4 ["match"]
        8 CALL                             R1 2 1
        9 LOADK                            R4 K5 ["^([%w_]+)%s*(%??)%s*:%s*(.+)$"]
       10 NAMECALL                         R2 R1 K4 ["match"]
       12 CALL                             R2 2 3
       13 JUMPIFNOT                        R2 ; [+1]
       14 JUMPIF                           R4 ; [+2]
       15 LOADNIL                          R5
       16 RETURN                           R5 1
       17 LOADK                            R7 K3 ["^%s*(.-)%s*$"]
       18 NAMECALL                         R5 R4 K4 ["match"]
       20 CALL                             R5 2 1
       21 MOVE                             R4 R5
       22 LOADK                            R7 K6 ["(%??)$"]
       23 NAMECALL                         R5 R4 K4 ["match"]
       25 CALL                             R5 2 1
       26 LOADK                            R8 K7 ["%?$"]
       27 LOADK                            R9 K8 [""]
       28 NAMECALL                         R6 R4 K2 ["gsub"]
       30 CALL                             R6 3 1
       31 MOVE                             R4 R6
       32 LOADB                            R6 1
       33 JUMPIFNOTEQKS                    R3 K8 [""] ; [+5]
       35 JUMPIFNOTEQKS                    R5 K8 [""] ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 DUPTABLE                         R7 K14 [{"Name", "Type", "IsOptional", "Default", "Comment"}]
       40 SETTABLEKS                       R2 R7 K9 ["Name"]
       42 SETTABLEKS                       R4 R7 K10 ["Type"]
       44 SETTABLEKS                       R6 R7 K11 ["IsOptional"]
       46 LOADNIL                          R8
       47 SETTABLEKS                       R8 R7 K12 ["Default"]
       49 LOADNIL                          R8
       50 SETTABLEKS                       R8 R7 K13 ["Comment"]
       52 RETURN                           R7 1

PROTO_3:
        0 DUPTABLE                         R1 K3 [{"Parameters", "Returns", "Comment"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["Parameters"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["Returns"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K2 ["Comment"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["_extractSignature"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 3
       15 JUMPIFNOT                        R4 ; [+2]
       16 SETTABLEKS                       R4 R1 K2 ["Comment"]
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R1 1
       20 JUMPIFNOT                        R2 ; [+35]
       21 JUMPIFEQKS                       R2 K5 [""] ; [+34]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K6 ["_splitOnComma"]
       26 MOVE                             R6 R2
       27 CALL                             R5 1 1
       28 NEWTABLE                         R6 0 0
       30 GETIMPORT                        R7 K8 [ipairs]
       32 MOVE                             R8 R5
       33 CALL                             R7 1 3
       34 FORGPREP_INEXT                   R7
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R12 R12 K9 ["_parseParameter"]
       38 MOVE                             R13 R11
       39 CALL                             R12 1 1
       40 JUMPIFNOT                        R12 ; [+7]
       41 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       43 MOVE                             R14 R6
       44 MOVE                             R15 R12
       45 GETIMPORT                        R13 K12 [table.insert]
       47 CALL                             R13 2 0
       48 FORGLOOP                         R7 2 [inext] ; [-14]
       50 LENGTH                           R7 R6
       51 LOADN                            R8 0
       52 JUMPIFNOTLT                      R8 R7 ; [+3]
       54 SETTABLEKS                       R6 R1 K0 ["Parameters"]
       56 JUMPIFNOT                        R3 ; [+18]
       57 JUMPIFEQKS                       R3 K5 [""] ; [+17]
       59 LOADK                            R7 K13 ["^%s*(.-)%s*$"]
       60 NAMECALL                         R5 R3 K14 ["match"]
       62 CALL                             R5 2 1
       63 MOVE                             R3 R5
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R5 R5 K6 ["_splitOnComma"]
       67 MOVE                             R6 R3
       68 CALL                             R5 1 1
       69 LENGTH                           R6 R5
       70 LOADN                            R7 0
       71 JUMPIFNOTLT                      R7 R6 ; [+3]
       73 SETTABLEKS                       R5 R1 K1 ["Returns"]
       75 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Types"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["Dash"]
       20 CALL                             R1 1 1
       21 NEWTABLE                         R2 4 0
       23 DUPCLOSURE                       R3 K7 [PROTO_0]
       24 SETTABLEKS                       R3 R2 K8 ["_extractSignature"]
       26 NEWTABLE                         R3 4 0
       28 LOADK                            R4 K9 ["("]
       29 SETTABLEKS                       R4 R3 K10 [")"]
       31 LOADK                            R4 K11 ["<"]
       32 SETTABLEKS                       R4 R3 K12 [">"]
       34 LOADK                            R4 K13 ["{"]
       35 SETTABLEKS                       R4 R3 K14 ["}"]
       37 DUPCLOSURE                       R4 K15 [PROTO_1]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R4 R2 K16 ["_splitOnComma"]
       42 DUPCLOSURE                       R4 K17 [PROTO_2]
       43 SETTABLEKS                       R4 R2 K18 ["_parseParameter"]
       45 DUPCLOSURE                       R4 K19 [PROTO_3]
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R4 R2 K20 ["parseFunction"]
       49 RETURN                           R2 1
