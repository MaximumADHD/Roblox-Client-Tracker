PROTO_0:
        0 LOADK                            R3 K0 ["(\\)"]
        1 LOADK                            R4 K1 ["\\%1"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 MOVE                             R0 R1
        6 LOADK                            R3 K3 ["(\")"]
        7 LOADK                            R4 K1 ["\\%1"]
        8 NAMECALL                         R1 R0 K2 ["gsub"]
       10 CALL                             R1 3 1
       11 MOVE                             R0 R1
       12 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R8 0
        1 LOADK                            R10 K0 ["\""]
        2 LOADN                            R14 0
        3 SUBK                             R15 R1 K1 [1]
        4 NAMECALL                         R12 R0 K2 ["sub"]
        6 CALL                             R12 3 1
        7 LOADK                            R15 K3 ["(\\)"]
        8 LOADK                            R16 K4 ["\\%1"]
        9 NAMECALL                         R13 R12 K5 ["gsub"]
       11 CALL                             R13 3 1
       12 MOVE                             R12 R13
       13 LOADK                            R15 K6 ["(\")"]
       14 LOADK                            R16 K4 ["\\%1"]
       15 NAMECALL                         R13 R12 K5 ["gsub"]
       17 CALL                             R13 3 1
       18 MOVE                             R12 R13
       19 MOVE                             R11 R12
       20 CONCAT                           R9 R10 R11
       21 CALL                             R8 1 1
       22 MOVE                             R4 R8
       23 GETUPVAL                         R8 1
       24 MOVE                             R12 R1
       25 ADD                              R14 R1 R2
       26 SUBK                             R13 R14 K1 [1]
       27 NAMECALL                         R10 R0 K2 ["sub"]
       29 CALL                             R10 3 1
       30 LOADK                            R13 K3 ["(\\)"]
       31 LOADK                            R14 K4 ["\\%1"]
       32 NAMECALL                         R11 R10 K5 ["gsub"]
       34 CALL                             R11 3 1
       35 MOVE                             R10 R11
       36 LOADK                            R13 K6 ["(\")"]
       37 LOADK                            R14 K4 ["\\%1"]
       38 NAMECALL                         R11 R10 K5 ["gsub"]
       40 CALL                             R11 3 1
       41 MOVE                             R10 R11
       42 MOVE                             R9 R10
       43 CALL                             R8 1 1
       44 MOVE                             R5 R8
       45 GETUPVAL                         R8 0
       46 ADD                              R12 R1 R2
       47 LENGTH                           R13 R0
       48 NAMECALL                         R10 R0 K2 ["sub"]
       50 CALL                             R10 3 1
       51 LOADK                            R13 K3 ["(\\)"]
       52 LOADK                            R14 K4 ["\\%1"]
       53 NAMECALL                         R11 R10 K5 ["gsub"]
       55 CALL                             R11 3 1
       56 MOVE                             R10 R11
       57 LOADK                            R13 K6 ["(\")"]
       58 LOADK                            R14 K4 ["\\%1"]
       59 NAMECALL                         R11 R10 K5 ["gsub"]
       61 CALL                             R11 3 1
       62 MOVE                             R10 R11
       63 MOVE                             R9 R10
       64 CALL                             R8 1 1
       65 MOVE                             R6 R8
       66 LOADK                            R7 K0 ["\""]
       67 CONCAT                           R3 R4 R7
       68 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R1 ; [+5]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 GETTABLEKS                       R4 R1 K0 ["index"]
       10 GETTABLEN                        R6 R1 1
       11 LENGTH                           R5 R6
       12 CALL                             R2 3 1
       13 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 GETUPVAL                         R8 0
        8 MOVE                             R9 R7
        9 CALL                             R8 1 1
       10 JUMPIFNOTEQ                      R6 R1 ; [+6]
       12 GETUPVAL                         R9 1
       13 MOVE                             R10 R8
       14 CALL                             R9 1 1
       15 SETTABLE                         R9 R2 R6
       16 JUMP                             ; [+4]
       17 GETUPVAL                         R9 2
       18 MOVE                             R10 R8
       19 CALL                             R9 1 1
       20 SETTABLE                         R9 R2 R6
       21 FORGLOOP                         R3 2 [inext] ; [-15]
       23 GETUPVAL                         R7 2
       24 LOADK                            R8 K2 ["{"]
       25 CALL                             R7 1 1
       26 MOVE                             R4 R7
       27 GETIMPORT                        R7 K5 [table.concat]
       29 MOVE                             R8 R2
       30 GETUPVAL                         R9 2
       31 LOADK                            R10 K6 [", "]
       32 CALL                             R9 1 -1
       33 CALL                             R7 -1 1
       34 MOVE                             R5 R7
       35 GETUPVAL                         R6 2
       36 LOADK                            R7 K7 ["}"]
       37 CALL                             R6 1 1
       38 CONCAT                           R3 R4 R6
       39 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 LOADNIL                          R5
        4 LOADK                            R8 K0 ["e"]
        5 NAMECALL                         R6 R4 K1 ["find"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+20]
        9 LOADK                            R8 K2 ["%+0"]
       10 LOADK                            R9 K3 ["+"]
       11 NAMECALL                         R6 R4 K4 ["gsub"]
       13 CALL                             R6 3 1
       14 MOVE                             R4 R6
       15 LOADK                            R8 K5 ["%-0"]
       16 LOADK                            R9 K6 ["-"]
       17 NAMECALL                         R6 R4 K4 ["gsub"]
       19 CALL                             R6 3 1
       20 MOVE                             R4 R6
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K7 ["toExponential"]
       24 MOVE                             R7 R1
       25 LOADN                            R8 0
       26 CALL                             R6 2 1
       27 MOVE                             R5 R6
       28 JUMP                             ; [+21]
       29 LOADN                            R6 0
       30 JUMPIFNOTLE                      R6 R2 ; [+15]
       32 LOADN                            R6 20
       33 JUMPIFNOTLT                      R2 R6 ; [+12]
       35 LOADK                            R7 K8 ["%."]
       36 ADDK                             R8 R2 K9 [1]
       37 LOADK                            R9 K10 ["f"]
       38 CONCAT                           R6 R7 R9
       39 GETIMPORT                        R7 K13 [string.format]
       41 MOVE                             R8 R6
       42 MOVE                             R9 R1
       43 CALL                             R7 2 1
       44 MOVE                             R5 R7
       45 JUMP                             ; [+4]
       46 GETUPVAL                         R6 0
       47 MOVE                             R7 R1
       48 CALL                             R6 1 1
       49 MOVE                             R5 R6
       50 JUMPIFNOT                        R3 ; [+17]
       51 GETIMPORT                        R6 K13 [string.format]
       53 LOADK                            R7 K14 ["Expected precision:  %s  %s\nExpected difference: %s< %s\nReceived difference: %s  %s"]
       54 LOADK                            R8 K15 ["      "]
       55 GETUPVAL                         R9 0
       56 MOVE                             R10 R2
       57 CALL                             R9 1 1
       58 LOADK                            R10 K16 ["never "]
       59 GETUPVAL                         R11 2
       60 MOVE                             R12 R5
       61 CALL                             R11 1 1
       62 LOADK                            R12 K15 ["      "]
       63 GETUPVAL                         R13 3
       64 MOVE                             R14 R4
       65 CALL                             R13 1 -1
       66 CALL                             R6 -1 -1
       67 RETURN                           R6 -1
       68 GETIMPORT                        R6 K13 [string.format]
       70 LOADK                            R7 K14 ["Expected precision:  %s  %s\nExpected difference: %s< %s\nReceived difference: %s  %s"]
       71 LOADK                            R8 K17 [""]
       72 GETUPVAL                         R9 0
       73 MOVE                             R10 R2
       74 CALL                             R9 1 1
       75 LOADK                            R10 K17 [""]
       76 GETUPVAL                         R11 2
       77 MOVE                             R12 R5
       78 CALL                             R11 1 1
       79 LOADK                            R12 K17 [""]
       80 GETUPVAL                         R13 3
       81 MOVE                             R14 R4
       82 CALL                             R13 1 -1
       83 CALL                             R6 -1 -1
       84 RETURN                           R6 -1

PROTO_5:
        0 GETGLOBAL                        R5 K0 ["printConstructorName"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 LOADB                            R8 0
        5 LOADB                            R9 1
        6 CALL                             R5 4 1
        7 MOVE                             R3 R5
        8 LOADK                            R4 K1 ["\n"]
        9 CONCAT                           R2 R3 R4
       10 RETURN                           R2 1

PROTO_6:
        0 GETGLOBAL                        R5 K0 ["printConstructorName"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 LOADB                            R8 1
        5 LOADB                            R9 1
        6 CALL                             R5 4 1
        7 MOVE                             R3 R5
        8 LOADK                            R4 K1 ["\n"]
        9 CONCAT                           R2 R3 R4
       10 RETURN                           R2 1

PROTO_7:
        0 GETGLOBAL                        R5 K0 ["printConstructorName"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 LOADB                            R8 0
        5 LOADB                            R9 0
        6 CALL                             R5 4 1
        7 MOVE                             R3 R5
        8 LOADK                            R4 K1 ["\n"]
        9 CONCAT                           R2 R3 R4
       10 RETURN                           R2 1

PROTO_8:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+15]
        7 FASTCALL1                        TOSTRING R0 ; [+3]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K4 [tostring]
       11 CALL                             R2 1 1
       12 LOADK                            R4 K5 ["table: 0x"]
       13 NAMECALL                         R2 R2 K6 ["find"]
       15 CALL                             R2 2 1
       16 JUMPIFEQKNIL                     R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1
       21 FASTCALL1                        TYPEOF R0 ; [+3]
       22 MOVE                             R2 R0
       23 GETIMPORT                        R1 K1 [typeof]
       25 CALL                             R1 1 1
       26 JUMPIFNOTEQKS                    R1 K7 ["function"] ; [+15]
       28 FASTCALL1                        TOSTRING R0 ; [+3]
       29 MOVE                             R3 R0
       30 GETIMPORT                        R2 K4 [tostring]
       32 CALL                             R2 1 1
       33 LOADK                            R4 K8 ["function: 0x"]
       34 NAMECALL                         R2 R2 K6 ["find"]
       36 CALL                             R2 2 1
       37 JUMPIFEQKNIL                     R2 ; [+2]
       39 LOADB                            R1 0 +1
       40 LOADB                            R1 1
       41 RETURN                           R1 1
       42 FASTCALL1                        TYPEOF R0 ; [+3]
       43 MOVE                             R2 R0
       44 GETIMPORT                        R1 K1 [typeof]
       46 CALL                             R1 1 1
       47 JUMPIFNOTEQKS                    R1 K9 ["userdata"] ; [+15]
       49 FASTCALL1                        TOSTRING R0 ; [+3]
       50 MOVE                             R3 R0
       51 GETIMPORT                        R2 K4 [tostring]
       53 CALL                             R2 1 1
       54 LOADK                            R4 K10 ["userdata: 0x"]
       55 NAMECALL                         R2 R2 K6 ["find"]
       57 CALL                             R2 2 1
       58 JUMPIFEQKNIL                     R2 ; [+2]
       60 LOADB                            R1 0 +1
       61 LOADB                            R1 1
       62 RETURN                           R1 1
       63 FASTCALL1                        TYPEOF R0 ; [+3]
       64 MOVE                             R2 R0
       65 GETIMPORT                        R1 K1 [typeof]
       67 CALL                             R1 1 1
       68 JUMPIFNOTEQKS                    R1 K11 ["thread"] ; [+15]
       70 FASTCALL1                        TOSTRING R0 ; [+3]
       71 MOVE                             R3 R0
       72 GETIMPORT                        R2 K4 [tostring]
       74 CALL                             R2 1 1
       75 LOADK                            R4 K12 ["thread: 0x"]
       76 NAMECALL                         R2 R2 K6 ["find"]
       78 CALL                             R2 2 1
       79 JUMPIFEQKNIL                     R2 ; [+2]
       81 LOADB                            R1 0 +1
       82 LOADB                            R1 1
       83 RETURN                           R1 1
       84 LOADB                            R1 1
       85 RETURN                           R1 1

PROTO_9:
        0 LOADNIL                          R3
        1 FASTCALL1                        TOSTRING R2 ; [+3]
        2 MOVE                             R6 R2
        3 GETIMPORT                        R5 K1 [tostring]
        5 CALL                             R5 1 1
        6 FASTCALL1                        TYPEOF R5 ; [+2]
        7 GETIMPORT                        R4 K3 [typeof]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+89]
       12 FASTCALL1                        TOSTRING R2 ; [+3]
       13 MOVE                             R6 R2
       14 GETIMPORT                        R5 K1 [tostring]
       16 CALL                             R5 1 1
       17 LENGTH                           R4 R5
       18 JUMPIFEQKN                       R4 K5 [0] ; [+81]
       20 FASTCALL1                        TOSTRING R1 ; [+3]
       21 MOVE                             R6 R1
       22 GETIMPORT                        R5 K1 [tostring]
       24 CALL                             R5 1 1
       25 FASTCALL1                        TYPEOF R5 ; [+2]
       26 GETIMPORT                        R4 K3 [typeof]
       28 CALL                             R4 1 1
       29 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+70]
       31 FASTCALL1                        TOSTRING R1 ; [+3]
       32 MOVE                             R6 R1
       33 GETIMPORT                        R5 K1 [tostring]
       35 CALL                             R5 1 1
       36 LENGTH                           R4 R5
       37 JUMPIFEQKN                       R4 K5 [0] ; [+62]
       39 GETUPVAL                         R4 0
       40 MOVE                             R5 R2
       41 CALL                             R4 1 1
       42 JUMPIFNOT                        R4 ; [+46]
       43 GETUPVAL                         R4 0
       44 MOVE                             R5 R1
       45 CALL                             R4 1 1
       46 JUMPIFNOT                        R4 ; [+42]
       47 GETGLOBAL                        R4 K6 ["printConstructorName"]
       49 MOVE                             R5 R0
       50 MOVE                             R6 R1
       51 LOADB                            R7 1
       52 LOADB                            R8 0
       53 CALL                             R4 4 1
       54 MOVE                             R3 R4
       55 FASTCALL1                        GETMETATABLE R1 ; [+3]
       56 MOVE                             R5 R1
       57 GETIMPORT                        R4 K8 [getmetatable]
       59 CALL                             R4 1 1
       60 JUMPIFNOT                        R4 ; [+13]
       61 FASTCALL1                        GETMETATABLE R1 ; [+3]
       62 MOVE                             R5 R1
       63 GETIMPORT                        R4 K8 [getmetatable]
       65 CALL                             R4 1 1
       66 GETTABLEKS                       R4 R4 K9 ["__index"]
       68 JUMPIFNOTEQ                      R4 R2 ; [+5]
       70 MOVE                             R4 R3
       71 LOADK                            R5 K10 [" extends "]
       72 CONCAT                           R3 R4 R5
       73 JUMP                             ; [+3]
       74 MOVE                             R4 R3
       75 LOADK                            R5 K11 [" extends … extends "]
       76 CONCAT                           R3 R4 R5
       77 MOVE                             R4 R3
       78 GETUPVAL                         R7 1
       79 FASTCALL1                        TOSTRING R2 ; [+3]
       80 MOVE                             R9 R2
       81 GETIMPORT                        R8 K1 [tostring]
       83 CALL                             R8 1 1
       84 CALL                             R7 1 1
       85 MOVE                             R5 R7
       86 LOADK                            R6 K12 ["\n"]
       87 CONCAT                           R3 R4 R6
       88 RETURN                           R3 1
       89 GETGLOBAL                        R7 K6 ["printConstructorName"]
       91 MOVE                             R8 R0
       92 MOVE                             R9 R1
       93 LOADB                            R10 1
       94 LOADB                            R11 0
       95 CALL                             R7 4 1
       96 MOVE                             R5 R7
       97 LOADK                            R6 K12 ["\n"]
       98 CONCAT                           R4 R5 R6
       99 RETURN                           R4 1
      100 GETGLOBAL                        R7 K6 ["printConstructorName"]
      102 MOVE                             R8 R0
      103 MOVE                             R9 R1
      104 LOADB                            R10 0
      105 LOADB                            R11 0
      106 CALL                             R7 4 1
      107 MOVE                             R5 R7
      108 LOADK                            R6 K12 ["\n"]
      109 CONCAT                           R4 R5 R6
      110 RETURN                           R4 1

PROTO_10:
        0 MOVE                             R5 R0
        1 LOADK                            R6 K0 [": "]
        2 CONCAT                           R4 R5 R6
        3 JUMPIF                           R2 ; [+4]
        4 MOVE                             R5 R4
        5 LOADK                            R6 K1 [""]
        6 CONCAT                           R4 R5 R6
        7 JUMP                             ; [+8]
        8 JUMPIFNOT                        R3 ; [+4]
        9 MOVE                             R5 R4
       10 LOADK                            R6 K2 ["never "]
       11 CONCAT                           R4 R5 R6
       12 JUMP                             ; [+3]
       13 MOVE                             R5 R4
       14 LOADK                            R6 K3 ["      "]
       15 CONCAT                           R4 R5 R6
       16 GETUPVAL                         R5 0
       17 MOVE                             R6 R1
       18 CALL                             R5 1 1
       19 JUMPIFNOT                        R5 ; [+35]
       20 FASTCALL1                        TOSTRING R1 ; [+3]
       21 MOVE                             R7 R1
       22 GETIMPORT                        R6 K5 [tostring]
       24 CALL                             R6 1 1
       25 LENGTH                           R5 R6
       26 JUMPIFNOTEQKN                    R5 K6 [0] ; [+7]
       28 GETIMPORT                        R5 K9 [string.format]
       30 LOADK                            R6 K10 ["%s name is an empty string"]
       31 MOVE                             R7 R0
       32 CALL                             R5 2 -1
       33 RETURN                           R5 -1
       34 JUMPIFNOT                        R3 ; [+10]
       35 MOVE                             R5 R4
       36 GETUPVAL                         R6 1
       37 FASTCALL1                        TOSTRING R1 ; [+3]
       38 MOVE                             R8 R1
       39 GETIMPORT                        R7 K5 [tostring]
       41 CALL                             R7 1 1
       42 CALL                             R6 1 1
       43 CONCAT                           R4 R5 R6
       44 RETURN                           R4 1
       45 MOVE                             R5 R4
       46 GETUPVAL                         R6 2
       47 FASTCALL1                        TOSTRING R1 ; [+3]
       48 MOVE                             R8 R1
       49 GETIMPORT                        R7 K5 [tostring]
       51 CALL                             R7 1 1
       52 CALL                             R6 1 1
       53 CONCAT                           R4 R5 R6
       54 RETURN                           R4 1
       55 LOADK                            R5 K11 ["{ "]
       56 LOADB                            R6 1
       57 LOADB                            R7 0
       58 GETIMPORT                        R8 K13 [pairs]
       60 MOVE                             R9 R1
       61 CALL                             R8 1 3
       62 FORGPREP_NEXT                    R8
       63 LOADNIL                          R13
       64 GETUPVAL                         R14 0
       65 MOVE                             R15 R11
       66 CALL                             R14 1 1
       67 JUMPIFNOT                        R14 ; [+16]
       68 GETUPVAL                         R14 0
       69 MOVE                             R15 R12
       70 CALL                             R14 1 1
       71 JUMPIFNOT                        R14 ; [+12]
       72 GETIMPORT                        R14 K9 [string.format]
       74 LOADK                            R15 K14 ["%s: %s, "]
       75 GETUPVAL                         R16 3
       76 MOVE                             R17 R11
       77 CALL                             R16 1 1
       78 GETUPVAL                         R17 3
       79 MOVE                             R18 R12
       80 CALL                             R17 1 -1
       81 CALL                             R14 -1 1
       82 MOVE                             R13 R14
       83 JUMP                             ; [+18]
       84 GETUPVAL                         R14 0
       85 MOVE                             R15 R11
       86 CALL                             R14 1 1
       87 JUMPIFNOT                        R14 ; [+14]
       88 LOADK                            R16 K15 ["__"]
       89 NAMECALL                         R14 R11 K16 ["find"]
       91 CALL                             R14 2 1
       92 JUMPIFEQKN                       R14 K17 [1] ; [+9]
       94 GETIMPORT                        R14 K9 [string.format]
       96 LOADK                            R15 K18 ["%s, "]
       97 GETUPVAL                         R16 3
       98 MOVE                             R17 R11
       99 CALL                             R16 1 -1
      100 CALL                             R14 -1 1
      101 MOVE                             R13 R14
      102 JUMPIFNOT                        R13 ; [+12]
      103 LENGTH                           R15 R5
      104 LENGTH                           R16 R13
      105 ADD                              R14 R15 R16
      106 LOADN                            R15 64
      107 JUMPIFNOTLT                      R15 R14 ; [+3]
      109 LOADB                            R6 0
      110 JUMP                             ; [+6]
      111 LOADB                            R7 1
      112 MOVE                             R14 R5
      113 MOVE                             R15 R13
      114 CONCAT                           R5 R14 R15
      115 FORGLOOP                         R8 2 ; [-53]
      117 JUMPIFNOTEQKB                    R7 FALSE ; [+22]
      119 JUMPIFNOT                        R3 ; [+10]
      120 MOVE                             R9 R4
      121 GETUPVAL                         R10 1
      122 FASTCALL1                        TOSTRING R1 ; [+3]
      123 MOVE                             R12 R1
      124 GETIMPORT                        R11 K5 [tostring]
      126 CALL                             R11 1 1
      127 CALL                             R10 1 1
      128 CONCAT                           R8 R9 R10
      129 RETURN                           R8 1
      130 MOVE                             R9 R4
      131 GETUPVAL                         R10 2
      132 FASTCALL1                        TOSTRING R1 ; [+3]
      133 MOVE                             R12 R1
      134 GETIMPORT                        R11 K5 [tostring]
      136 CALL                             R11 1 1
      137 CALL                             R10 1 1
      138 CONCAT                           R8 R9 R10
      139 RETURN                           R8 1
      140 JUMPIFNOT                        R6 ; [+10]
      141 LOADN                            R10 1
      142 LOADN                            R11 253
      143 NAMECALL                         R8 R5 K19 ["sub"]
      145 CALL                             R8 3 1
      146 MOVE                             R5 R8
      147 MOVE                             R8 R5
      148 LOADK                            R9 K20 [" }"]
      149 CONCAT                           R5 R8 R9
      150 JUMP                             ; [+3]
      151 MOVE                             R8 R5
      152 LOADK                            R9 K21 ["... }"]
      153 CONCAT                           R5 R8 R9
      154 JUMPIFNOT                        R3 ; [+6]
      155 MOVE                             R9 R4
      156 GETUPVAL                         R10 1
      157 MOVE                             R11 R5
      158 CALL                             R10 1 1
      159 CONCAT                           R8 R9 R10
      160 RETURN                           R8 1
      161 MOVE                             R9 R4
      162 GETUPVAL                         R10 2
      163 MOVE                             R11 R5
      164 CALL                             R10 1 1
      165 CONCAT                           R8 R9 R10
      166 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Number"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R1 K7 ["JestMatcherUtils"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R4 K8 ["EXPECTED_COLOR"]
       21 GETTABLEKS                       R6 R4 K9 ["INVERTED_COLOR"]
       23 GETTABLEKS                       R7 R4 K10 ["RECEIVED_COLOR"]
       25 GETTABLEKS                       R8 R4 K11 ["printReceived"]
       27 GETTABLEKS                       R9 R4 K12 ["stringify"]
       29 DUPCLOSURE                       R10 K13 [PROTO_0]
       30 DUPCLOSURE                       R11 K14 [PROTO_1]
       31 CAPTURE                          VAL R7
       32 CAPTURE                          VAL R6
       33 DUPCLOSURE                       R12 K15 [PROTO_2]
       34 CAPTURE                          VAL R8
       35 CAPTURE                          VAL R11
       36 DUPCLOSURE                       R13 K16 [PROTO_3]
       37 CAPTURE                          VAL R9
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R7
       40 DUPCLOSURE                       R14 K17 [PROTO_4]
       41 CAPTURE                          VAL R9
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R7
       45 DUPCLOSURE                       R15 K18 [PROTO_5]
       46 DUPCLOSURE                       R16 K19 [PROTO_6]
       47 DUPCLOSURE                       R17 K20 [PROTO_7]
       48 DUPCLOSURE                       R18 K21 [PROTO_8]
       49 DUPCLOSURE                       R19 K22 [PROTO_9]
       50 CAPTURE                          VAL R18
       51 CAPTURE                          VAL R5
       52 DUPCLOSURE                       R20 K23 [PROTO_10]
       53 CAPTURE                          VAL R18
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R9
       57 SETGLOBAL                        R20 K24 ["printConstructorName"]
       59 DUPTABLE                         R20 K33 [{"printReceivedStringContainExpectedSubstring", "printReceivedStringContainExpectedResult", "printReceivedArrayContainExpectedItem", "printCloseTo", "printExpectedConstructorName", "printExpectedConstructorNameNot", "printReceivedConstructorName", "printReceivedConstructorNameNot"}]
       60 SETTABLEKS                       R11 R20 K25 ["printReceivedStringContainExpectedSubstring"]
       62 SETTABLEKS                       R12 R20 K26 ["printReceivedStringContainExpectedResult"]
       64 SETTABLEKS                       R13 R20 K27 ["printReceivedArrayContainExpectedItem"]
       66 SETTABLEKS                       R14 R20 K28 ["printCloseTo"]
       68 SETTABLEKS                       R15 R20 K29 ["printExpectedConstructorName"]
       70 SETTABLEKS                       R16 R20 K30 ["printExpectedConstructorNameNot"]
       72 SETTABLEKS                       R17 R20 K31 ["printReceivedConstructorName"]
       74 SETTABLEKS                       R19 R20 K32 ["printReceivedConstructorNameNot"]
       76 RETURN                           R20 1
