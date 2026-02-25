PROTO_0:
        0 LOADB                            R2 1
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["table"] ; [+5]
        8 JUMPIFEQKNIL                     R0 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       14 LOADK                            R3 K3 ["Bad config"]
       15 GETIMPORT                        R1 K5 [assert]
       17 CALL                             R1 2 0
       18 MOVE                             R1 R0
       19 JUMPIF                           R1 ; [+2]
       20 NEWTABLE                         R1 0 0
       22 MOVE                             R0 R1
       23 GETTABLEKS                       R1 R0 K6 ["caseSensitive"]
       25 JUMPIFNOTEQKNIL                  R1 ; [+5]
       27 LOADB                            R1 0
       28 SETTABLEKS                       R1 R0 K6 ["caseSensitive"]
       30 JUMP                             ; [+12]
       31 GETTABLEKS                       R2 R0 K6 ["caseSensitive"]
       33 FASTCALL1                        TYPE R2 ; [+2]
       34 GETIMPORT                        R1 K1 [type]
       36 CALL                             R1 1 1
       37 JUMPIFEQKS                       R1 K7 ["boolean"] ; [+5]
       39 GETIMPORT                        R1 K9 [error]
       41 LOADK                            R2 K10 ["Bad config.caseSensitive"]
       42 CALL                             R1 1 0
       43 GETTABLEKS                       R2 R0 K12 ["gapLeadingScore"]
       45 ORK                              R1 R2 K11 [-0.005]
       46 SETTABLEKS                       R1 R0 K12 ["gapLeadingScore"]
       48 GETTABLEKS                       R2 R0 K13 ["gapTrailingScore"]
       50 ORK                              R1 R2 K11 [-0.005]
       51 SETTABLEKS                       R1 R0 K13 ["gapTrailingScore"]
       53 GETTABLEKS                       R2 R0 K15 ["gapInnerScore"]
       55 ORK                              R1 R2 K14 [-0.01]
       56 SETTABLEKS                       R1 R0 K15 ["gapInnerScore"]
       58 GETTABLEKS                       R2 R0 K17 ["consecutiveMatchScore"]
       60 ORK                              R1 R2 K16 [1]
       61 SETTABLEKS                       R1 R0 K17 ["consecutiveMatchScore"]
       63 GETTABLEKS                       R2 R0 K19 ["slashMatchScore"]
       65 ORK                              R1 R2 K18 [0.9]
       66 SETTABLEKS                       R1 R0 K19 ["slashMatchScore"]
       68 GETTABLEKS                       R2 R0 K21 ["wordMatchScore"]
       70 ORK                              R1 R2 K20 [0.8]
       71 SETTABLEKS                       R1 R0 K21 ["wordMatchScore"]
       73 GETTABLEKS                       R2 R0 K23 ["capitalMatchScore"]
       75 ORK                              R1 R2 K22 [0.7]
       76 SETTABLEKS                       R1 R0 K23 ["capitalMatchScore"]
       78 GETTABLEKS                       R2 R0 K25 ["dotMatchScore"]
       80 ORK                              R1 R2 K24 [0.6]
       81 SETTABLEKS                       R1 R0 K25 ["dotMatchScore"]
       83 GETTABLEKS                       R2 R0 K27 ["maxMatchLength"]
       85 ORK                              R1 R2 K26 [1024]
       86 SETTABLEKS                       R1 R0 K27 ["maxMatchLength"]
       88 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+92]
        8 LOADB                            R1 0
        9 GETTABLEKS                       R3 R0 K3 ["gapLeadingScore"]
       11 FASTCALL1                        TYPE R3 ; [+2]
       12 GETIMPORT                        R2 K1 [type]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+83]
       17 LOADB                            R1 0
       18 GETTABLEKS                       R3 R0 K5 ["gapTrailingScore"]
       20 FASTCALL1                        TYPE R3 ; [+2]
       21 GETIMPORT                        R2 K1 [type]
       23 CALL                             R2 1 1
       24 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+74]
       26 LOADB                            R1 0
       27 GETTABLEKS                       R3 R0 K6 ["gapInnerScore"]
       29 FASTCALL1                        TYPE R3 ; [+2]
       30 GETIMPORT                        R2 K1 [type]
       32 CALL                             R2 1 1
       33 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+65]
       35 LOADB                            R1 0
       36 GETTABLEKS                       R3 R0 K7 ["consecutiveMatchScore"]
       38 FASTCALL1                        TYPE R3 ; [+2]
       39 GETIMPORT                        R2 K1 [type]
       41 CALL                             R2 1 1
       42 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+56]
       44 LOADB                            R1 0
       45 GETTABLEKS                       R3 R0 K8 ["slashMatchScore"]
       47 FASTCALL1                        TYPE R3 ; [+2]
       48 GETIMPORT                        R2 K1 [type]
       50 CALL                             R2 1 1
       51 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+47]
       53 LOADB                            R1 0
       54 GETTABLEKS                       R3 R0 K9 ["wordMatchScore"]
       56 FASTCALL1                        TYPE R3 ; [+2]
       57 GETIMPORT                        R2 K1 [type]
       59 CALL                             R2 1 1
       60 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+38]
       62 LOADB                            R1 0
       63 GETTABLEKS                       R3 R0 K10 ["capitalMatchScore"]
       65 FASTCALL1                        TYPE R3 ; [+2]
       66 GETIMPORT                        R2 K1 [type]
       68 CALL                             R2 1 1
       69 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+29]
       71 LOADB                            R1 0
       72 GETTABLEKS                       R3 R0 K11 ["dotMatchScore"]
       74 FASTCALL1                        TYPE R3 ; [+2]
       75 GETIMPORT                        R2 K1 [type]
       77 CALL                             R2 1 1
       78 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+20]
       80 LOADB                            R1 0
       81 GETTABLEKS                       R3 R0 K12 ["maxMatchLength"]
       83 FASTCALL1                        TYPE R3 ; [+2]
       84 GETIMPORT                        R2 K1 [type]
       86 CALL                             R2 1 1
       87 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+11]
       89 GETTABLEKS                       R3 R0 K13 ["caseSensitive"]
       91 FASTCALL1                        TYPE R3 ; [+2]
       92 GETIMPORT                        R2 K1 [type]
       94 CALL                             R2 1 1
       95 JUMPIFEQKS                       R2 K14 ["boolean"] ; [+2]
       97 LOADB                            R1 0 +1
       98 LOADB                            R1 1
       99 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["caseSensitive"]
        2 JUMPIF                           R3 ; [+10]
        3 GETIMPORT                        R3 K3 [string.lower]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 MOVE                             R1 R3
        8 GETIMPORT                        R3 K3 [string.lower]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 MOVE                             R2 R3
       13 LOADN                            R3 1
       14 LOADN                            R6 1
       15 FASTCALL1                        STRING_LEN R1 ; [+3]
       16 MOVE                             R8 R1
       17 GETIMPORT                        R7 K5 [string.len]
       19 CALL                             R7 1 1
       20 MOVE                             R4 R7
       21 LOADN                            R5 1
       22 FORNPREP                         R4
       23 GETIMPORT                        R7 K7 [string.find]
       25 MOVE                             R8 R2
       26 MOVE                             R11 R6
       27 MOVE                             R12 R6
       28 NAMECALL                         R9 R1 K8 ["sub"]
       30 CALL                             R9 3 1
       31 MOVE                             R10 R3
       32 LOADB                            R11 1
       33 CALL                             R7 4 1
       34 MOVE                             R3 R7
       35 JUMPIF                           R3 ; [+2]
       36 LOADB                            R7 0
       37 RETURN                           R7 1
       38 ADDK                             R3 R3 K9 [1]
       39 FORNLOOP                         R4
       40 LOADB                            R4 1
       41 RETURN                           R4 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%l"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%u"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 LOADK                            R3 K0 ["/"]
        3 LOADN                            R6 1
        4 FASTCALL1                        STRING_LEN R1 ; [+3]
        5 MOVE                             R8 R1
        6 GETIMPORT                        R7 K3 [string.len]
        8 CALL                             R7 1 1
        9 MOVE                             R4 R7
       10 LOADN                            R5 1
       11 FORNPREP                         R4
       12 MOVE                             R9 R6
       13 MOVE                             R10 R6
       14 NAMECALL                         R7 R1 K4 ["sub"]
       16 CALL                             R7 3 1
       17 JUMPIFEQKS                       R3 K0 ["/"] ; [+3]
       19 JUMPIFNOTEQKS                    R3 K5 ["\\"] ; [+5]
       21 GETTABLEKS                       R8 R0 K6 ["slashMatchScore"]
       23 SETTABLE                         R8 R2 R6
       24 JUMP                             ; [+36]
       25 JUMPIFEQKS                       R3 K7 ["-"] ; [+5]
       27 JUMPIFEQKS                       R3 K8 ["_"] ; [+3]
       29 JUMPIFNOTEQKS                    R3 K9 [" "] ; [+5]
       31 GETTABLEKS                       R8 R0 K10 ["wordMatchScore"]
       33 SETTABLE                         R8 R2 R6
       34 JUMP                             ; [+26]
       35 JUMPIFNOTEQKS                    R3 K11 ["."] ; [+5]
       37 GETTABLEKS                       R8 R0 K12 ["dotMatchScore"]
       39 SETTABLE                         R8 R2 R6
       40 JUMP                             ; [+20]
       41 MOVE                             R9 R3
       42 GETIMPORT                        R10 K14 [string.match]
       44 MOVE                             R11 R9
       45 LOADK                            R12 K15 ["%l"]
       46 CALL                             R10 2 1
       47 MOVE                             R8 R10
       48 JUMPIFNOT                        R8 ; [+10]
       49 GETIMPORT                        R8 K14 [string.match]
       51 MOVE                             R9 R7
       52 LOADK                            R10 K16 ["%u"]
       53 CALL                             R8 2 1
       54 JUMPIFNOT                        R8 ; [+4]
       55 GETTABLEKS                       R8 R0 K17 ["capitalMatchScore"]
       57 SETTABLE                         R8 R2 R6
       58 JUMP                             ; [+2]
       59 LOADN                            R8 0
       60 SETTABLE                         R8 R2 R6
       61 MOVE                             R3 R7
       62 FORNLOOP                         R4
       63 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R2
        3 CALL                             R5 2 1
        4 FASTCALL1                        STRING_LEN R1 ; [+3]
        5 MOVE                             R7 R1
        6 GETIMPORT                        R6 K2 [string.len]
        8 CALL                             R6 1 1
        9 FASTCALL1                        STRING_LEN R2 ; [+3]
       10 MOVE                             R8 R2
       11 GETIMPORT                        R7 K2 [string.len]
       13 CALL                             R7 1 1
       14 GETTABLEKS                       R8 R0 K3 ["caseSensitive"]
       16 JUMPIF                           R8 ; [+10]
       17 GETIMPORT                        R8 K5 [string.lower]
       19 MOVE                             R9 R1
       20 CALL                             R8 1 1
       21 MOVE                             R1 R8
       22 GETIMPORT                        R8 K5 [string.lower]
       24 MOVE                             R9 R2
       25 CALL                             R8 1 1
       26 MOVE                             R2 R8
       27 NEWTABLE                         R8 0 0
       29 LOADN                            R11 1
       30 MOVE                             R9 R7
       31 LOADN                            R10 1
       32 FORNPREP                         R9
       33 MOVE                             R14 R11
       34 MOVE                             R15 R11
       35 NAMECALL                         R12 R2 K6 ["sub"]
       37 CALL                             R12 3 1
       38 SETTABLE                         R12 R8 R11
       39 FORNLOOP                         R9
       40 LOADN                            R11 1
       41 MOVE                             R9 R6
       42 LOADN                            R10 1
       43 FORNPREP                         R9
       44 NEWTABLE                         R12 0 0
       46 SETTABLE                         R12 R3 R11
       47 NEWTABLE                         R12 0 0
       49 SETTABLE                         R12 R4 R11
       50 LOADK                            R12 K7 [-∞]
       51 JUMPIFNOTEQ                      R11 R6 ; [+4]
       53 GETTABLEKS                       R13 R0 K8 ["gapTrailingScore"]
       55 JUMPIF                           R13 ; [+2]
       56 GETTABLEKS                       R13 R0 K9 ["gapInnerScore"]
       58 MOVE                             R16 R11
       59 MOVE                             R17 R11
       60 NAMECALL                         R14 R1 K6 ["sub"]
       62 CALL                             R14 3 1
       63 LOADN                            R17 1
       64 MOVE                             R15 R7
       65 LOADN                            R16 1
       66 FORNPREP                         R15
       67 GETTABLE                         R18 R8 R17
       68 JUMPIFNOTEQ                      R14 R18 ; [+48]
       70 LOADK                            R18 K7 [-∞]
       71 JUMPIFNOTEQKN                    R11 K10 [1] ; [+8]
       73 SUBK                             R20 R17 K10 [1]
       74 GETTABLEKS                       R21 R0 K11 ["gapLeadingScore"]
       76 MUL                              R19 R20 R21
       77 GETTABLE                         R20 R5 R17
       78 ADD                              R18 R19 R20
       79 JUMP                             ; [+24]
       80 LOADN                            R19 1
       81 JUMPIFNOTLT                      R19 R17 ; [+22]
       83 SUBK                             R22 R11 K10 [1]
       84 GETTABLE                         R21 R4 R22
       85 SUBK                             R22 R17 K10 [1]
       86 GETTABLE                         R20 R21 R22
       87 GETTABLE                         R21 R5 R17
       88 ADD                              R19 R20 R21
       89 SUBK                             R23 R11 K10 [1]
       90 GETTABLE                         R22 R3 R23
       91 SUBK                             R23 R17 K10 [1]
       92 GETTABLE                         R21 R22 R23
       93 GETTABLEKS                       R22 R0 K12 ["consecutiveMatchScore"]
       95 ADD                              R20 R21 R22
       96 FASTCALL2                        MATH_MAX R19 R20 ; [+5]
       98 MOVE                             R22 R19
       99 MOVE                             R23 R20
      100 GETIMPORT                        R21 K15 [math.max]
      102 CALL                             R21 2 1
      103 MOVE                             R18 R21
      104 GETTABLE                         R19 R3 R11
      105 SETTABLE                         R18 R19 R17
      106 ADD                              R21 R12 R13
      107 FASTCALL2                        MATH_MAX R18 R21 ; [+4]
      109 MOVE                             R20 R18
      110 GETIMPORT                        R19 K15 [math.max]
      112 CALL                             R19 2 1
      113 MOVE                             R12 R19
      114 GETTABLE                         R19 R4 R11
      115 SETTABLE                         R12 R19 R17
      116 JUMP                             ; [+6]
      117 GETTABLE                         R18 R3 R11
      118 LOADK                            R19 K7 [-∞]
      119 SETTABLE                         R19 R18 R17
      120 ADD                              R12 R12 R13
      121 GETTABLE                         R18 R4 R11
      122 SETTABLE                         R12 R18 R17
      123 FORNLOOP                         R15
      124 FORNLOOP                         R9
      125 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["caseSensitive"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 JUMPIFEQ                         R1 R2 ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 RETURN                           R3 1
        8 GETIMPORT                        R4 K3 [string.lower]
       10 MOVE                             R5 R1
       11 CALL                             R4 1 1
       12 GETIMPORT                        R5 K3 [string.lower]
       14 MOVE                             R6 R2
       15 CALL                             R5 1 1
       16 JUMPIFEQ                         R4 R5 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 RETURN                           R3 1

PROTO_8:
        0 FASTCALL1                        STRING_LEN R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K2 [string.len]
        4 CALL                             R3 1 1
        5 FASTCALL1                        STRING_LEN R2 ; [+3]
        6 MOVE                             R5 R2
        7 GETIMPORT                        R4 K2 [string.len]
        9 CALL                             R4 1 1
       10 JUMPIFEQKN                       R3 K3 [0] ; [+9]
       12 JUMPIFEQKN                       R4 K3 [0] ; [+7]
       14 GETTABLEKS                       R5 R0 K4 ["maxMatchLength"]
       16 JUMPIFLT                         R5 R4 ; [+3]
       18 JUMPIFNOTLT                      R4 R3 ; [+3]
       20 LOADK                            R5 K5 [-∞]
       21 RETURN                           R5 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K6 ["isPerfectMatch"]
       25 MOVE                             R6 R0
       26 MOVE                             R7 R1
       27 MOVE                             R8 R2
       28 CALL                             R5 3 1
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADK                            R5 K7 [∞]
       31 RETURN                           R5 1
       32 NEWTABLE                         R5 0 0
       34 NEWTABLE                         R6 0 0
       36 GETUPVAL                         R7 1
       37 MOVE                             R8 R0
       38 MOVE                             R9 R1
       39 MOVE                             R10 R2
       40 MOVE                             R11 R5
       41 MOVE                             R12 R6
       42 CALL                             R7 5 0
       43 GETTABLE                         R8 R6 R3
       44 GETTABLE                         R7 R8 R4
       45 RETURN                           R7 1

PROTO_9:
        0 FASTCALL1                        STRING_LEN R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K2 [string.len]
        4 CALL                             R3 1 1
        5 FASTCALL1                        STRING_LEN R2 ; [+3]
        6 MOVE                             R5 R2
        7 GETIMPORT                        R4 K2 [string.len]
        9 CALL                             R4 1 1
       10 JUMPIFEQKN                       R3 K3 [0] ; [+9]
       12 JUMPIFEQKN                       R4 K3 [0] ; [+7]
       14 GETTABLEKS                       R5 R0 K4 ["maxMatchLength"]
       16 JUMPIFLT                         R5 R4 ; [+3]
       18 JUMPIFNOTLT                      R4 R3 ; [+5]
       20 NEWTABLE                         R5 0 0
       22 LOADK                            R6 K5 [-∞]
       23 RETURN                           R5 2
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K6 ["isPerfectMatch"]
       27 MOVE                             R6 R0
       28 MOVE                             R7 R1
       29 MOVE                             R8 R2
       30 CALL                             R5 3 1
       31 JUMPIFNOT                        R5 ; [+11]
       32 NEWTABLE                         R5 0 0
       34 LOADN                            R8 1
       35 MOVE                             R6 R3
       36 LOADN                            R7 1
       37 FORNPREP                         R6
       38 SETTABLE                         R8 R5 R8
       39 FORNLOOP                         R6
       40 MOVE                             R6 R5
       41 LOADK                            R7 K7 [∞]
       42 RETURN                           R6 2
       43 NEWTABLE                         R5 0 0
       45 NEWTABLE                         R6 0 0
       47 GETUPVAL                         R7 1
       48 MOVE                             R8 R0
       49 MOVE                             R9 R1
       50 MOVE                             R10 R2
       51 MOVE                             R11 R5
       52 MOVE                             R12 R6
       53 CALL                             R7 5 0
       54 NEWTABLE                         R7 0 0
       56 LOADB                            R8 0
       57 MOVE                             R9 R4
       58 MOVE                             R12 R3
       59 LOADN                            R10 1
       60 LOADN                            R11 255
       61 FORNPREP                         R10
       62 LOADN                            R13 1
       63 JUMPIFNOTLE                      R13 R9 ; [+37]
       65 GETTABLE                         R14 R5 R12
       66 GETTABLE                         R13 R14 R9
       67 JUMPIFEQKN                       R13 K5 [-∞] ; [+31]
       69 JUMPIF                           R8 ; [+6]
       70 GETTABLE                         R14 R5 R12
       71 GETTABLE                         R13 R14 R9
       72 GETTABLE                         R15 R6 R12
       73 GETTABLE                         R14 R15 R9
       74 JUMPIFNOTEQ                      R13 R14 ; [+24]
       76 LOADB                            R13 0
       77 JUMPIFEQKN                       R12 K8 [1] ; [+17]
       79 LOADB                            R13 0
       80 JUMPIFEQKN                       R9 K8 [1] ; [+14]
       82 GETTABLE                         R15 R6 R12
       83 GETTABLE                         R14 R15 R9
       84 SUBK                             R18 R12 K8 [1]
       85 GETTABLE                         R17 R5 R18
       86 SUBK                             R18 R9 K8 [1]
       87 GETTABLE                         R16 R17 R18
       88 GETTABLEKS                       R17 R0 K9 ["consecutiveMatchScore"]
       90 ADD                              R15 R16 R17
       91 JUMPIFEQ                         R14 R15 ; [+2]
       93 LOADB                            R13 0 +1
       94 LOADB                            R13 1
       95 MOVE                             R8 R13
       96 SETTABLE                         R9 R7 R12
       97 SUBK                             R9 R9 K8 [1]
       98 JUMP                             ; [+2]
       99 SUBK                             R9 R9 K8 [1]
      100 JUMPBACK                         ; [-39]
      101 FORNLOOP                         R10
      102 MOVE                             R10 R7
      103 GETTABLE                         R12 R6 R3
      104 GETTABLE                         R11 R12 R4
      105 RETURN                           R10 2

PROTO_10:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [ipairs]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 3
        6 FORGPREP_INEXT                   R4
        7 GETUPVAL                         R10 0
        8 GETTABLEKS                       R9 R10 K2 ["hasMatch"]
       10 MOVE                             R10 R0
       11 MOVE                             R11 R1
       12 MOVE                             R12 R8
       13 CALL                             R9 3 1
       14 JUMPIFNOT                        R9 ; [+20]
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R9 R10 K3 ["positions"]
       18 MOVE                             R10 R0
       19 MOVE                             R11 R1
       20 MOVE                             R12 R8
       21 CALL                             R9 3 2
       22 NEWTABLE                         R13 0 3
       24 MOVE                             R14 R7
       25 MOVE                             R15 R9
       26 MOVE                             R16 R10
       27 SETLIST                          R13 R14 3 [1]
       29 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       31 MOVE                             R12 R3
       32 GETIMPORT                        R11 K6 [table.insert]
       34 CALL                             R11 2 0
       35 FORGLOOP                         R4 2 [inext] ; [-29]
       37 RETURN                           R3 1

PROTO_11:
        0 LOADK                            R0 K0 [-∞]
        1 RETURN                           R0 1

PROTO_12:
        0 LOADK                            R0 K0 [∞]
        1 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isFzyConfig"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        7 LOADK                            R3 K1 ["Bad config"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 GETTABLEKS                       R1 R0 K4 ["maxMatchLength"]
       13 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isFzyConfig"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        7 LOADK                            R3 K1 ["Bad config"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 GETTABLEKS                       R2 R0 K4 ["maxMatchLength"]
       13 GETTABLEKS                       R3 R0 K5 ["gapInnerScore"]
       15 MUL                              R1 R2 R3
       16 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isFzyConfig"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        7 LOADK                            R3 K1 ["Bad config"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 GETTABLEKS                       R2 R0 K4 ["maxMatchLength"]
       13 GETTABLEKS                       R3 R0 K5 ["consecutiveMatchScore"]
       15 MUL                              R1 R2 R3
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["createConfig"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["isFzyConfig"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["hasMatch"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 DUPCLOSURE                       R2 K7 [PROTO_4]
       14 DUPCLOSURE                       R3 K8 [PROTO_5]
       15 DUPCLOSURE                       R4 K9 [PROTO_6]
       16 CAPTURE                          VAL R3
       17 DUPCLOSURE                       R5 K10 [PROTO_7]
       18 SETTABLEKS                       R5 R0 K11 ["isPerfectMatch"]
       20 DUPCLOSURE                       R5 K12 [PROTO_8]
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R4
       23 SETTABLEKS                       R5 R0 K13 ["score"]
       25 DUPCLOSURE                       R5 K14 [PROTO_9]
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R4
       28 SETTABLEKS                       R5 R0 K15 ["positions"]
       30 DUPCLOSURE                       R5 K16 [PROTO_10]
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R5 R0 K17 ["filter"]
       34 DUPCLOSURE                       R5 K18 [PROTO_11]
       35 SETTABLEKS                       R5 R0 K19 ["getMinScore"]
       37 DUPCLOSURE                       R5 K20 [PROTO_12]
       38 SETTABLEKS                       R5 R0 K21 ["getMaxScore"]
       40 DUPCLOSURE                       R5 K22 [PROTO_13]
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R5 R0 K23 ["getMaxLength"]
       44 DUPCLOSURE                       R5 K24 [PROTO_14]
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R5 R0 K25 ["getScoreFloor"]
       48 DUPCLOSURE                       R5 K26 [PROTO_15]
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R5 R0 K27 ["getScoreCeiling"]
       52 RETURN                           R0 1
