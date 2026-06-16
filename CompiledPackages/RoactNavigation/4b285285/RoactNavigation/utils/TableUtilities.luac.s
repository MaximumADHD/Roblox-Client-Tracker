PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+7]
        7 GETIMPORT                        R1 K4 [string.format]
        9 LOADK                            R2 K5 ["%s"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1
       13 GETIMPORT                        R1 K4 [string.format]
       15 LOADK                            R2 K6 ["[%s]"]
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K8 [tostring]
       20 CALL                             R3 1 1
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+7]
        7 GETIMPORT                        R2 K4 [string.format]
        9 LOADK                            R3 K5 ["%q"]
       10 MOVE                             R4 R0
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1
       13 JUMPIFEQKS                       R1 K6 ["function"] ; [+3]
       15 JUMPIFNOTEQKS                    R1 K7 ["table"] ; [+11]
       17 GETIMPORT                        R2 K4 [string.format]
       19 LOADK                            R3 K8 ["<%s>"]
       20 FASTCALL1                        TOSTRING R0 ; [+3]
       21 MOVE                             R5 R0
       22 GETIMPORT                        R4 K10 [tostring]
       24 CALL                             R4 1 1
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1
       27 GETIMPORT                        R2 K4 [string.format]
       29 LOADK                            R3 K11 ["%s"]
       30 FASTCALL1                        TOSTRING R0 ; [+3]
       31 MOVE                             R5 R0
       32 GETIMPORT                        R4 K10 [tostring]
       34 CALL                             R4 1 1
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFNOTEQKS                    R5 K2 ["string"] ; [+7]
        7 GETIMPORT                        R4 K4 [string.format]
        9 LOADK                            R5 K5 ["%s"]
       10 MOVE                             R6 R0
       11 CALL                             R4 2 1
       12 JUMP                             ; [+9]
       13 GETIMPORT                        R4 K4 [string.format]
       15 LOADK                            R5 K6 ["[%s]"]
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 0
       23 MOVE                             R6 R1
       24 CALL                             R5 1 1
       25 JUMPIFNOT                        R3 ; [+6]
       26 GETIMPORT                        R6 K4 [string.format]
       28 LOADK                            R7 K9 [" -- %s"]
       29 MOVE                             R8 R3
       30 CALL                             R6 2 1
       31 JUMP                             ; [+1]
       32 LOADK                            R6 K10 [""]
       33 GETIMPORT                        R7 K12 [print]
       35 GETIMPORT                        R8 K4 [string.format]
       37 LOADK                            R9 K13 ["%s%s = %s,%s"]
       38 MOVE                             R10 R2
       39 MOVE                             R11 R4
       40 MOVE                             R12 R5
       41 MOVE                             R13 R6
       42 CALL                             R8 5 -1
       43 CALL                             R7 -1 0
       44 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADB                            R3 0
        3 RETURN                           R3 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADB                            R3 1
        7 RETURN                           R3 1
        8 JUMPIF                           R2 ; [+1]
        9 GETUPVAL                         R2 0
       10 MOVE                             R3 R0
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLE                         R8 R1 R6
       15 JUMPIFEQ                         R8 R7 ; [+5]
       17 GETTABLE                         R8 R2 R6
       18 JUMPIF                           R8 ; [+2]
       19 LOADB                            R8 0
       20 RETURN                           R8 1
       21 FORGLOOP                         R3 2 ; [-8]
       23 MOVE                             R3 R1
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 GETTABLE                         R8 R0 R6
       28 JUMPIFEQ                         R8 R7 ; [+5]
       30 GETTABLE                         R8 R2 R6
       31 JUMPIF                           R8 ; [+2]
       32 LOADB                            R8 0
       33 RETURN                           R8 1
       34 FORGLOOP                         R3 2 ; [-8]
       36 LOADB                            R3 1
       37 RETURN                           R3 1

PROTO_4:
        0 JUMPIFEQKN                       R1 K0 [0] ; [+2]
        2 RETURN                           R0 1
        3 LOADK                            R4 K1 ["{1}"]
        4 LOADK                            R5 K2 ["first"]
        5 NAMECALL                         R2 R0 K3 ["gsub"]
        7 CALL                             R2 3 1
        8 LOADK                            R4 K4 ["{2}"]
        9 LOADK                            R5 K5 ["second"]
       10 NAMECALL                         R2 R2 K3 ["gsub"]
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 ORK                              R2 R2 K0 [0]
        1 JUMPIFNOTEQ                      R0 R1 ; [+3]
        3 LOADB                            R3 1
        4 RETURN                           R3 1
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K2 [typeof]
        9 CALL                             R3 1 1
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R4 K2 [typeof]
       14 CALL                             R4 1 1
       15 JUMPIFEQ                         R3 R4 ; [+21]
       17 LOADK                            R3 K3 ["{1} is of type %s, but {2} is of type %s"]
       18 FASTCALL1                        TYPEOF R0 ; [+3]
       19 MOVE                             R6 R0
       20 GETIMPORT                        R5 K2 [typeof]
       22 CALL                             R5 1 1
       23 FASTCALL1                        TYPEOF R1 ; [+3]
       24 MOVE                             R7 R1
       25 GETIMPORT                        R6 K2 [typeof]
       27 CALL                             R6 1 1
       28 NAMECALL                         R3 R3 K4 ["format"]
       30 CALL                             R3 3 1
       31 LOADB                            R4 0
       32 GETUPVAL                         R5 0
       33 MOVE                             R6 R3
       34 MOVE                             R7 R2
       35 CALL                             R5 2 -1
       36 RETURN                           R4 -1
       37 FASTCALL1                        TYPEOF R0 ; [+3]
       38 MOVE                             R4 R0
       39 GETIMPORT                        R3 K2 [typeof]
       41 CALL                             R3 1 1
       42 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+101]
       44 NEWTABLE                         R3 0 0
       46 MOVE                             R4 R0
       47 LOADNIL                          R5
       48 LOADNIL                          R6
       49 FORGPREP                         R4
       50 LOADB                            R9 1
       51 SETTABLE                         R9 R3 R7
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R9 R9 K6 ["DeepEqual"]
       55 MOVE                             R10 R8
       56 GETTABLE                         R11 R1 R7
       57 ADDK                             R12 R2 K7 [1]
       58 CALL                             R9 3 2
       59 JUMPIF                           R9 ; [+32]
       60 LOADK                            R13 K8 ["{1}"]
       61 LOADK                            R14 K9 ["{1}[%s]"]
       62 FASTCALL1                        TOSTRING R7 ; [+3]
       63 MOVE                             R17 R7
       64 GETIMPORT                        R16 K11 [tostring]
       66 CALL                             R16 1 1
       67 NAMECALL                         R14 R14 K4 ["format"]
       69 CALL                             R14 2 -1
       70 NAMECALL                         R11 R10 K12 ["gsub"]
       72 CALL                             R11 -1 1
       73 LOADK                            R13 K13 ["{2}"]
       74 LOADK                            R14 K14 ["{2}[%s]"]
       75 FASTCALL1                        TOSTRING R7 ; [+3]
       76 MOVE                             R17 R7
       77 GETIMPORT                        R16 K11 [tostring]
       79 CALL                             R16 1 1
       80 NAMECALL                         R14 R14 K4 ["format"]
       82 CALL                             R14 2 -1
       83 NAMECALL                         R11 R11 K12 ["gsub"]
       85 CALL                             R11 -1 1
       86 LOADB                            R12 0
       87 GETUPVAL                         R13 0
       88 MOVE                             R14 R11
       89 MOVE                             R15 R2
       90 CALL                             R13 2 -1
       91 RETURN                           R12 -1
       92 FORGLOOP                         R4 2 ; [-43]
       94 MOVE                             R4 R1
       95 LOADNIL                          R5
       96 LOADNIL                          R6
       97 FORGPREP                         R4
       98 GETTABLE                         R9 R3 R7
       99 JUMPIF                           R9 ; [+40]
      100 GETUPVAL                         R9 1
      101 GETTABLEKS                       R9 R9 K6 ["DeepEqual"]
      103 GETTABLE                         R10 R0 R7
      104 MOVE                             R11 R8
      105 ADDK                             R12 R2 K7 [1]
      106 CALL                             R9 3 2
      107 JUMPIF                           R9 ; [+32]
      108 LOADK                            R13 K8 ["{1}"]
      109 LOADK                            R14 K9 ["{1}[%s]"]
      110 FASTCALL1                        TOSTRING R7 ; [+3]
      111 MOVE                             R17 R7
      112 GETIMPORT                        R16 K11 [tostring]
      114 CALL                             R16 1 1
      115 NAMECALL                         R14 R14 K4 ["format"]
      117 CALL                             R14 2 -1
      118 NAMECALL                         R11 R10 K12 ["gsub"]
      120 CALL                             R11 -1 1
      121 LOADK                            R13 K13 ["{2}"]
      122 LOADK                            R14 K14 ["{2}[%s]"]
      123 FASTCALL1                        TOSTRING R7 ; [+3]
      124 MOVE                             R17 R7
      125 GETIMPORT                        R16 K11 [tostring]
      127 CALL                             R16 1 1
      128 NAMECALL                         R14 R14 K4 ["format"]
      130 CALL                             R14 2 -1
      131 NAMECALL                         R11 R11 K12 ["gsub"]
      133 CALL                             R11 -1 1
      134 LOADB                            R12 0
      135 GETUPVAL                         R13 0
      136 MOVE                             R14 R11
      137 MOVE                             R15 R2
      138 CALL                             R13 2 -1
      139 RETURN                           R12 -1
      140 FORGLOOP                         R4 2 ; [-43]
      142 LOADB                            R4 1
      143 RETURN                           R4 1
      144 LOADB                            R3 0
      145 GETUPVAL                         R4 0
      146 LOADK                            R5 K15 ["{1} ~= {2}"]
      147 MOVE                             R6 R2
      148 CALL                             R4 2 -1
      149 RETURN                           R3 -1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+14]
        1 JUMPIFNOT                        R1 ; [+13]
        2 JUMPIFNOT                        R2 ; [+12]
        3 JUMPIFEQKS                       R2 K0 [""] ; [+11]
        5 GETTABLE                         R3 R0 R2
        6 JUMPIFNOT                        R3 ; [+8]
        7 GETTABLE                         R3 R1 R2
        8 JUMPIFNOT                        R3 ; [+6]
        9 GETTABLE                         R3 R0 R2
       10 GETTABLE                         R4 R1 R2
       11 JUMPIFNOTEQ                      R3 R4 ; [+3]
       13 LOADB                            R3 1
       14 RETURN                           R3 1
       15 LOADB                            R3 0
       16 RETURN                           R3 1

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLE                         R8 R1 R6
        7 GETTABLE                         R9 R0 R6
        8 JUMPIFEQ                         R8 R9 ; [+2]
       10 SETTABLE                         R7 R2 R6
       11 FORGLOOP                         R3 2 ; [-6]
       13 RETURN                           R2 1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LENGTH                           R2 R0
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 GETTABLE                         R5 R0 R4
        7 LOADB                            R6 1
        8 SETTABLE                         R6 R1 R5
        9 FORNLOOP                         R2
       10 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R5
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 2 ; [-8]
       15 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["TableDifference"]
        3 NEWTABLE                         R5 0 0
        5 LOADN                            R8 1
        6 LENGTH                           R6 R0
        7 LOADN                            R7 1
        8 FORNPREP                         R6
        9 GETTABLE                         R9 R0 R8
       10 LOADB                            R10 1
       11 SETTABLE                         R10 R5 R9
       12 FORNLOOP                         R6
       13 MOVE                             R4 R5
       14 NEWTABLE                         R6 0 0
       16 LOADN                            R9 1
       17 LENGTH                           R7 R1
       18 LOADN                            R8 1
       19 FORNPREP                         R7
       20 GETTABLE                         R10 R1 R9
       21 LOADB                            R11 1
       22 SETTABLE                         R11 R6 R10
       23 FORNLOOP                         R7
       24 MOVE                             R5 R6
       25 CALL                             R3 2 1
       26 NEWTABLE                         R4 0 0
       28 MOVE                             R5 R3
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       34 MOVE                             R11 R4
       35 MOVE                             R12 R8
       36 GETIMPORT                        R10 K3 [table.insert]
       38 CALL                             R10 2 0
       39 FORGLOOP                         R5 2 ; [-8]
       41 MOVE                             R2 R4
       42 RETURN                           R2 1

PROTO_11:
        0 LOADB                            R1 0
        1 LOADB                            R2 0
        2 LOADB                            R3 1
        3 LOADN                            R4 1
        4 MOVE                             R5 R0
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 FASTCALL1                        TYPE R8 ; [+3]
        9 MOVE                             R11 R8
       10 GETIMPORT                        R10 K1 [type]
       12 CALL                             R10 1 1
       13 JUMPIFNOTEQKS                    R10 K2 ["string"] ; [+3]
       15 LOADB                            R2 1
       16 JUMP                             ; [+14]
       17 FASTCALL1                        TYPE R8 ; [+3]
       18 MOVE                             R11 R8
       19 GETIMPORT                        R10 K1 [type]
       21 CALL                             R10 1 1
       22 JUMPIFNOTEQKS                    R10 K3 ["number"] ; [+6]
       24 JUMPIFEQ                         R4 R8 ; [+2]
       26 LOADB                            R3 0
       27 LOADB                            R1 1
       28 JUMP                             ; [+2]
       29 LOADB                            R10 0
       30 RETURN                           R10 1
       31 JUMPIFNOT                        R2 ; [+3]
       32 JUMPIFNOT                        R1 ; [+2]
       33 LOADB                            R10 0
       34 RETURN                           R10 1
       35 ADDK                             R4 R4 K4 [1]
       36 FORGLOOP                         R5 2 ; [-29]
       38 JUMPIFNOT                        R1 ; [+1]
       39 RETURN                           R3 1
       40 LOADB                            R5 1
       41 RETURN                           R5 1

PROTO_12:
        0 ORK                              R1 R1 K0 [""]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K2 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+74]
        8 LOADK                            R2 K0 [""]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["CheckListConsistency"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 JUMPIF                           R3 ; [+3]
       15 MOVE                             R3 R2
       16 LOADK                            R4 K5 ["-- WARNING: this table fails the list consistency test\n"]
       17 CONCAT                           R2 R3 R4
       18 MOVE                             R3 R2
       19 LOADK                            R4 K6 ["{\n"]
       20 CONCAT                           R2 R3 R4
       21 MOVE                             R3 R0
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 FASTCALL1                        TYPE R6 ; [+3]
       26 MOVE                             R9 R6
       27 GETIMPORT                        R8 K2 [type]
       29 CALL                             R8 1 1
       30 JUMPIFNOTEQKS                    R8 K7 ["string"] ; [+22]
       32 MOVE                             R8 R2
       33 LOADK                            R9 K8 ["  "]
       34 MOVE                             R10 R1
       35 FASTCALL1                        TOSTRING R6 ; [+3]
       36 MOVE                             R16 R6
       37 GETIMPORT                        R15 K10 [tostring]
       39 CALL                             R15 1 1
       40 MOVE                             R11 R15
       41 LOADK                            R12 K11 [" = "]
       42 GETUPVAL                         R15 0
       43 GETTABLEKS                       R15 R15 K12 ["RecursiveToString"]
       45 MOVE                             R16 R7
       46 LOADK                            R18 K8 ["  "]
       47 MOVE                             R19 R1
       48 CONCAT                           R17 R18 R19
       49 CALL                             R15 2 1
       50 MOVE                             R13 R15
       51 LOADK                            R14 K13 [";\n"]
       52 CONCAT                           R2 R8 R14
       53 FASTCALL1                        TYPE R6 ; [+3]
       54 MOVE                             R9 R6
       55 GETIMPORT                        R8 K2 [type]
       57 CALL                             R8 1 1
       58 JUMPIFNOTEQKS                    R8 K14 ["number"] ; [+15]
       60 MOVE                             R8 R2
       61 LOADK                            R9 K8 ["  "]
       62 MOVE                             R10 R1
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R13 R13 K12 ["RecursiveToString"]
       66 MOVE                             R14 R7
       67 LOADK                            R16 K8 ["  "]
       68 MOVE                             R17 R1
       69 CONCAT                           R15 R16 R17
       70 CALL                             R13 2 1
       71 MOVE                             R11 R13
       72 LOADK                            R12 K15 [",\n"]
       73 CONCAT                           R2 R8 R12
       74 FORGLOOP                         R3 2 ; [-50]
       76 MOVE                             R3 R2
       77 MOVE                             R4 R1
       78 LOADK                            R5 K16 ["}"]
       79 CONCAT                           R2 R3 R5
       80 RETURN                           R2 1
       81 FASTCALL1                        TOSTRING R0 ; [+3]
       82 MOVE                             R3 R0
       83 GETIMPORT                        R2 K10 [tostring]
       85 CALL                             R2 1 1
       86 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 1
        2 SETTABLE                         R4 R3 R0
        3 GETIMPORT                        R3 K2 [string.rep]
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R2
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K2 [string.rep]
       10 GETUPVAL                         R5 1
       11 ADDK                             R6 R2 K3 [1]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R1 ; [+34]
       14 GETIMPORT                        R5 K5 [print]
       16 GETIMPORT                        R6 K7 [string.format]
       18 LOADK                            R7 K8 ["%s%s = %s {"]
       19 MOVE                             R8 R3
       20 FASTCALL1                        TYPE R1 ; [+3]
       21 MOVE                             R11 R1
       22 GETIMPORT                        R10 K10 [type]
       24 CALL                             R10 1 1
       25 JUMPIFNOTEQKS                    R10 K0 ["string"] ; [+7]
       27 GETIMPORT                        R9 K7 [string.format]
       29 LOADK                            R10 K11 ["%s"]
       30 MOVE                             R11 R1
       31 CALL                             R9 2 1
       32 JUMP                             ; [+9]
       33 GETIMPORT                        R9 K7 [string.format]
       35 LOADK                            R10 K12 ["[%s]"]
       36 FASTCALL1                        TOSTRING R1 ; [+3]
       37 MOVE                             R12 R1
       38 GETIMPORT                        R11 K14 [tostring]
       40 CALL                             R11 1 1
       41 CALL                             R9 2 1
       42 GETUPVAL                         R10 2
       43 MOVE                             R11 R0
       44 CALL                             R10 1 -1
       45 CALL                             R6 -1 -1
       46 CALL                             R5 -1 0
       47 JUMP                             ; [+11]
       48 GETIMPORT                        R5 K5 [print]
       50 GETIMPORT                        R6 K7 [string.format]
       52 LOADK                            R7 K15 ["%s%s {"]
       53 MOVE                             R8 R3
       54 GETUPVAL                         R9 2
       55 MOVE                             R10 R0
       56 CALL                             R9 1 -1
       57 CALL                             R6 -1 -1
       58 CALL                             R5 -1 0
       59 MOVE                             R5 R0
       60 LOADNIL                          R6
       61 LOADNIL                          R7
       62 FORGPREP                         R5
       63 FASTCALL1                        TYPE R9 ; [+3]
       64 MOVE                             R11 R9
       65 GETIMPORT                        R10 K10 [type]
       67 CALL                             R10 1 1
       68 JUMPIFNOTEQKS                    R10 K16 ["table"] ; [+17]
       70 GETUPVAL                         R11 0
       71 GETTABLE                         R10 R11 R9
       72 JUMPIFNOT                        R10 ; [+7]
       73 GETUPVAL                         R10 3
       74 MOVE                             R11 R8
       75 MOVE                             R12 R9
       76 MOVE                             R13 R4
       77 LOADK                            R14 K17 ["Possible cycle"]
       78 CALL                             R10 4 0
       79 JUMP                             ; [+42]
       80 GETUPVAL                         R10 4
       81 MOVE                             R11 R9
       82 MOVE                             R12 R8
       83 ADDK                             R13 R2 K3 [1]
       84 CALL                             R10 3 0
       85 JUMP                             ; [+36]
       86 FASTCALL1                        TYPE R8 ; [+3]
       87 MOVE                             R12 R8
       88 GETIMPORT                        R11 K10 [type]
       90 CALL                             R11 1 1
       91 JUMPIFNOTEQKS                    R11 K0 ["string"] ; [+7]
       93 GETIMPORT                        R10 K7 [string.format]
       95 LOADK                            R11 K11 ["%s"]
       96 MOVE                             R12 R8
       97 CALL                             R10 2 1
       98 JUMP                             ; [+9]
       99 GETIMPORT                        R10 K7 [string.format]
      101 LOADK                            R11 K12 ["[%s]"]
      102 FASTCALL1                        TOSTRING R8 ; [+3]
      103 MOVE                             R13 R8
      104 GETIMPORT                        R12 K14 [tostring]
      106 CALL                             R12 1 1
      107 CALL                             R10 2 1
      108 GETUPVAL                         R11 2
      109 MOVE                             R12 R9
      110 CALL                             R11 1 1
      111 GETIMPORT                        R12 K5 [print]
      113 GETIMPORT                        R13 K7 [string.format]
      115 LOADK                            R14 K18 ["%s%s = %s,%s"]
      116 MOVE                             R15 R4
      117 MOVE                             R16 R10
      118 MOVE                             R17 R11
      119 LOADK                            R18 K19 [""]
      120 CALL                             R13 5 -1
      121 CALL                             R12 -1 0
      122 FORGLOOP                         R5 2 ; [-60]
      124 GETIMPORT                        R5 K5 [print]
      126 GETIMPORT                        R6 K7 [string.format]
      128 LOADK                            R7 K20 ["%s}%s"]
      129 MOVE                             R8 R3
      130 LOADN                            R10 0
      131 JUMPIFNOTLT                      R10 R2 ; [+3]
      133 LOADK                            R9 K21 [","]
      134 JUMP                             ; [+1]
      135 LOADK                            R9 K19 [""]
      136 CALL                             R6 3 -1
      137 CALL                             R5 -1 0
      138 RETURN                           R0 0

PROTO_14:
        0 ORK                              R1 R1 K0 ["  "]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K2 [type]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K3 ["table"] ; [+6]
        8 GETIMPORT                        R2 K5 [error]
       10 LOADK                            R3 K6 ["TableUtilities.Print must be passed a table"]
       11 LOADN                            R4 2
       12 CALL                             R2 2 0
       13 NEWTABLE                         R2 0 0
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          REF R1
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R3
       21 MOVE                             R4 R3
       22 MOVE                             R5 R0
       23 LOADNIL                          R6
       24 LOADN                            R7 0
       25 CALL                             R4 3 0
       26 CLOSEUPVALS                      R1
       27 RETURN                           R0 0

PROTO_15:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 ADDK                             R1 R1 K0 [1]
        6 FORGLOOP                         R2 1 ; [-2]
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 NEWTABLE                         R1 0 0
        5 DUPCLOSURE                       R2 K0 [PROTO_0]
        6 DUPCLOSURE                       R3 K1 [PROTO_1]
        7 DUPCLOSURE                       R4 K2 [PROTO_2]
        8 CAPTURE                          VAL R3
        9 DUPCLOSURE                       R5 K3 [PROTO_3]
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R5 R0 K4 ["ShallowEqual"]
       13 DUPCLOSURE                       R5 K5 [PROTO_4]
       14 DUPCLOSURE                       R6 K6 [PROTO_5]
       15 CAPTURE                          VAL R5
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R6 R0 K7 ["DeepEqual"]
       19 DUPCLOSURE                       R6 K8 [PROTO_6]
       20 SETTABLEKS                       R6 R0 K9 ["EqualKey"]
       22 DUPCLOSURE                       R6 K10 [PROTO_7]
       23 SETTABLEKS                       R6 R0 K11 ["TableDifference"]
       25 DUPCLOSURE                       R6 K12 [PROTO_8]
       26 DUPCLOSURE                       R7 K13 [PROTO_9]
       27 DUPCLOSURE                       R8 K14 [PROTO_10]
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R8 R0 K15 ["ListDifference"]
       31 DUPCLOSURE                       R8 K16 [PROTO_11]
       32 SETTABLEKS                       R8 R0 K17 ["CheckListConsistency"]
       34 DUPCLOSURE                       R8 K18 [PROTO_12]
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R8 R0 K19 ["RecursiveToString"]
       38 DUPCLOSURE                       R8 K20 [PROTO_14]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 SETTABLEKS                       R8 R0 K21 ["Print"]
       43 DUPCLOSURE                       R8 K22 [PROTO_15]
       44 SETTABLEKS                       R8 R0 K23 ["FieldCount"]
       46 RETURN                           R0 1
