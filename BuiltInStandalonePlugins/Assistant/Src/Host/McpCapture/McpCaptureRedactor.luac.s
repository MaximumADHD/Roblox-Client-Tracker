PROTO_0:
        0 GETIMPORT                        R2 K2 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["^<[%u_]+>$"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.lower]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETIMPORT                        R7 K4 [string.find]
       10 MOVE                             R8 R1
       11 MOVE                             R9 R6
       12 LOADN                            R10 1
       13 LOADB                            R11 1
       14 CALL                             R7 4 1
       15 JUMPIFNOT                        R7 ; [+20]
       16 GETIMPORT                        R7 K4 [string.find]
       18 MOVE                             R8 R1
       19 LOADK                            R9 K5 ["pass"]
       20 LOADN                            R10 1
       21 LOADB                            R11 1
       22 CALL                             R7 4 1
       23 JUMPIF                           R7 ; [+7]
       24 GETIMPORT                        R7 K4 [string.find]
       26 MOVE                             R8 R1
       27 LOADK                            R9 K6 ["pwd"]
       28 LOADN                            R10 1
       29 LOADB                            R11 1
       30 CALL                             R7 4 1
       31 JUMPIFNOT                        R7 ; [+2]
       32 LOADK                            R8 K7 ["<PASSWORD>"]
       33 RETURN                           R8 1
       34 LOADK                            R8 K8 ["<SECRET>"]
       35 RETURN                           R8 1
       36 FORGLOOP                         R2 2 ; [-29]
       38 LOADNIL                          R2
       39 RETURN                           R2 1

PROTO_2:
        0 LOADB                            R1 0
        1 GETIMPORT                        R2 K2 [string.find]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K3 ["%a"]
        5 CALL                             R2 2 1
        6 JUMPIFEQKNIL                     R2 ; [+10]
        8 GETIMPORT                        R2 K2 [string.find]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K4 ["%d"]
       12 CALL                             R2 2 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K2 [string.find]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K3 ["%d"]
        5 CALL                             R2 2 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+18]
        8 LOADB                            R1 0
        9 GETIMPORT                        R2 K2 [string.find]
       11 MOVE                             R3 R0
       12 LOADK                            R4 K4 ["%u"]
       13 CALL                             R2 2 1
       14 JUMPIFEQKNIL                     R2 ; [+10]
       16 GETIMPORT                        R2 K2 [string.find]
       18 MOVE                             R3 R0
       19 LOADK                            R4 K5 ["%l"]
       20 CALL                             R2 2 1
       21 JUMPIFNOTEQKNIL                  R2 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R4 0 0
        2 LOADN                            R5 1
        3 LENGTH                           R6 R0
        4 JUMPIFNOTLE                      R5 R6 ; [+51]
        6 MOVE                             R6 R3
        7 CALL                             R6 0 0
        8 GETIMPORT                        R6 K2 [string.find]
       10 MOVE                             R7 R0
       11 MOVE                             R8 R1
       12 MOVE                             R9 R5
       13 CALL                             R6 3 2
       14 JUMPIFNOT                        R6 ; [+41]
       15 JUMPIFNOT                        R7 ; [+40]
       16 SUBK                             R13 R6 K3 [1]
       17 FASTCALL3                        STRING_SUB R0 R5 R13
       19 MOVE                             R11 R0
       20 MOVE                             R12 R5
       21 GETIMPORT                        R10 K5 [string.sub]
       23 CALL                             R10 3 1
       24 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       26 MOVE                             R9 R4
       27 GETIMPORT                        R8 K8 [table.insert]
       29 CALL                             R8 2 0
       30 MOVE                             R9 R4
       31 MOVE                             R10 R2
       32 FASTCALL3                        STRING_SUB R0 R6 R7
       34 MOVE                             R12 R0
       35 MOVE                             R13 R6
       36 MOVE                             R14 R7
       37 GETIMPORT                        R11 K5 [string.sub]
       39 CALL                             R11 3 1
       40 MOVE                             R12 R6
       41 MOVE                             R13 R7
       42 CALL                             R10 3 -1
       43 FASTCALL                         TABLE_INSERT ; [+2]
       44 GETIMPORT                        R8 K8 [table.insert]
       46 CALL                             R8 -1 0
       47 FASTCALL2                        MATH_MAX R7 R6 ; [+5]
       49 MOVE                             R9 R7
       50 MOVE                             R10 R6
       51 GETIMPORT                        R8 K11 [math.max]
       53 CALL                             R8 2 1
       54 ADDK                             R5 R8 K3 [1]
       55 JUMPBACK                         ; [-53]
       56 LENGTH                           R6 R4
       57 JUMPIFNOTEQKN                    R6 K12 [0] ; [+2]
       59 RETURN                           R0 1
       60 FASTCALL2                        STRING_SUB R0 R5 ; [+5]
       62 MOVE                             R9 R0
       63 MOVE                             R10 R5
       64 GETIMPORT                        R8 K5 [string.sub]
       66 CALL                             R8 2 1
       67 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
       69 MOVE                             R7 R4
       70 GETIMPORT                        R6 K8 [table.insert]
       72 CALL                             R6 2 0
       73 GETIMPORT                        R6 K14 [table.concat]
       75 MOVE                             R7 R4
       76 CALL                             R6 1 -1
       77 RETURN                           R6 -1

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R3 1
        3 MOVE                             R4 R1
        4 CALL                             R4 0 0
        5 GETIMPORT                        R4 K2 [string.find]
        7 MOVE                             R5 R0
        8 LOADK                            R6 K3 ["%-%-%-%-%-BEGIN [%u ]*PRIVATE KEY%-%-%-%-%-"]
        9 MOVE                             R7 R3
       10 CALL                             R4 3 2
       11 JUMPIFNOT                        R4 ; [+34]
       12 JUMPIFNOT                        R5 ; [+33]
       13 SUBK                             R11 R4 K4 [1]
       14 FASTCALL3                        STRING_SUB R0 R3 R11
       16 MOVE                             R9 R0
       17 MOVE                             R10 R3
       18 GETIMPORT                        R8 K6 [string.sub]
       20 CALL                             R8 3 1
       21 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       23 MOVE                             R7 R2
       24 GETIMPORT                        R6 K9 [table.insert]
       26 CALL                             R6 2 0
       27 FASTCALL2K                       TABLE_INSERT R2 K10 ; [+5]
       29 MOVE                             R7 R2
       30 LOADK                            R8 K10 ["<PRIVATE_KEY>"]
       31 GETIMPORT                        R6 K9 [table.insert]
       33 CALL                             R6 2 0
       34 GETIMPORT                        R6 K2 [string.find]
       36 MOVE                             R7 R0
       37 LOADK                            R8 K11 ["%-%-%-%-%-END [%u ]*PRIVATE KEY%-%-%-%-%-"]
       38 ADDK                             R9 R5 K4 [1]
       39 CALL                             R6 3 2
       40 JUMPIFNOT                        R7 ; [+2]
       41 ADDK                             R3 R7 K4 [1]
       42 JUMP                             ; [+2]
       43 LENGTH                           R8 R0
       44 ADDK                             R3 R8 K4 [1]
       45 JUMPBACK                         ; [-43]
       46 LENGTH                           R4 R2
       47 JUMPIFNOTEQKN                    R4 K12 [0] ; [+2]
       49 RETURN                           R0 1
       50 FASTCALL2                        STRING_SUB R0 R3 ; [+5]
       52 MOVE                             R7 R0
       53 MOVE                             R8 R3
       54 GETIMPORT                        R6 K6 [string.sub]
       56 CALL                             R6 2 1
       57 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       59 MOVE                             R5 R2
       60 GETIMPORT                        R4 K9 [table.insert]
       62 CALL                             R4 2 0
       63 GETIMPORT                        R4 K14 [table.concat]
       65 MOVE                             R5 R2
       66 CALL                             R4 1 -1
       67 RETURN                           R4 -1

PROTO_7:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^(%a+)(%s+)(.+)$"]
        4 CALL                             R1 2 3
        5 JUMPIFNOT                        R1 ; [+39]
        6 JUMPIFNOT                        R2 ; [+38]
        7 JUMPIFNOT                        R3 ; [+37]
        8 LENGTH                           R4 R3
        9 LOADN                            R5 16
       10 JUMPIFNOTLE                      R5 R4 ; [+34]
       12 LOADB                            R4 1
       13 GETIMPORT                        R5 K5 [string.find]
       15 MOVE                             R6 R3
       16 LOADK                            R7 K6 ["%d"]
       17 CALL                             R5 2 1
       18 JUMPIFNOTEQKNIL                  R5 ; [+18]
       20 LOADB                            R4 0
       21 GETIMPORT                        R5 K5 [string.find]
       23 MOVE                             R6 R3
       24 LOADK                            R7 K7 ["%u"]
       25 CALL                             R5 2 1
       26 JUMPIFEQKNIL                     R5 ; [+10]
       28 GETIMPORT                        R5 K5 [string.find]
       30 MOVE                             R6 R3
       31 LOADK                            R7 K8 ["%l"]
       32 CALL                             R5 2 1
       33 JUMPIFNOTEQKNIL                  R5 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 JUMPIFNOT                        R4 ; [+7]
       38 LOADK                            R4 K9 ["%*%*<AUTH_TOKEN>"]
       39 MOVE                             R6 R1
       40 MOVE                             R7 R2
       41 NAMECALL                         R4 R4 K10 ["format"]
       43 CALL                             R4 3 1
       44 RETURN                           R4 1
       45 RETURN                           R0 1

PROTO_8:
        0 NEWTABLE                         R2 0 2
        2 LOADK                            R5 K0 ["[Bb][Ee][Aa][Rr][Ee][Rr]"]
        3 LOADK                            R6 K1 ["[Bb][Aa][Ss][Ii][Cc]"]
        4 SETLIST                          R2 R5 2 [1]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETUPVAL                         R7 0
       10 MOVE                             R8 R0
       11 LOADK                            R9 K2 ["%%f[%%a]%*%%s+[%%w%%-%%._~%%+/]+=*"]
       12 MOVE                             R11 R6
       13 NAMECALL                         R9 R9 K3 ["format"]
       15 CALL                             R9 2 1
       16 DUPCLOSURE                       R10 K4 [PROTO_7]
       17 MOVE                             R11 R1
       18 CALL                             R7 4 1
       19 MOVE                             R0 R7
       20 FORGLOOP                         R2 2 ; [-12]
       22 RETURN                           R0 1

PROTO_9:
        0 LENGTH                           R2 R0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["minLength"]
        4 JUMPIFNOTLE                      R3 R2 ; [+3]
        6 LOADK                            R1 K1 ["<API_KEY>"]
        7 RETURN                           R1 1
        8 MOVE                             R1 R0
        9 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 1
        5 MOVE                             R8 R0
        6 GETTABLEKS                       R9 R6 K0 ["pattern"]
        8 NEWCLOSURE                       R10 P0
        9 CAPTURE                          VAL R6
       10 MOVE                             R11 R1
       11 CALL                             R7 4 1
       12 MOVE                             R0 R7
       13 FORGLOOP                         R2 2 ; [-10]
       15 RETURN                           R0 1

PROTO_11:
        0 FASTCALL3                        STRING_SUB R0 R1 R1
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 MOVE                             R5 R1
        5 GETIMPORT                        R2 K2 [string.sub]
        7 CALL                             R2 3 1
        8 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 GETUPVAL                         R8 2
        3 ADDK                             R7 R8 K0 [1]
        4 SUBK                             R8 R0 K0 [1]
        5 FASTCALL                         STRING_SUB ; [+2]
        6 GETIMPORT                        R5 K3 [string.sub]
        8 CALL                             R5 3 1
        9 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       11 GETIMPORT                        R3 K6 [table.insert]
       13 CALL                             R3 2 0
       14 GETUPVAL                         R4 0
       15 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       17 MOVE                             R5 R2
       18 GETIMPORT                        R3 K6 [table.insert]
       20 CALL                             R3 2 0
       21 SETUPVAL                         R1 2
       22 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R5 2
        9 ADDK                             R4 R5 K1 [1]
       10 FASTCALL2                        STRING_SUB R3 R4 ; [+3]
       12 GETIMPORT                        R2 K4 [string.sub]
       14 CALL                             R2 2 1
       15 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
       17 GETIMPORT                        R0 K7 [table.insert]
       19 CALL                             R0 2 0
       20 GETIMPORT                        R0 K9 [table.concat]
       22 GETUPVAL                         R1 0
       23 CALL                             R0 1 -1
       24 RETURN                           R0 -1

PROTO_15:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 DUPTABLE                         R3 K3 [{"replace", "doneThrough", "finish"}]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          REF R2
        8 SETTABLEKS                       R4 R3 K0 ["replace"]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          REF R2
       12 SETTABLEKS                       R4 R3 K1 ["doneThrough"]
       14 NEWCLOSURE                       R4 P2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          REF R2
       18 SETTABLEKS                       R4 R3 K2 ["finish"]
       20 CLOSEUPVALS                      R2
       21 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 LOADN                            R3 1
        4 MOVE                             R4 R1
        5 CALL                             R4 0 0
        6 GETIMPORT                        R4 K2 [string.find]
        8 MOVE                             R5 R0
        9 LOADK                            R6 K3 ["://"]
       10 MOVE                             R7 R3
       11 LOADB                            R8 1
       12 CALL                             R4 4 1
       13 JUMPIFNOT                        R4 ; [+47]
       14 ADDK                             R5 R4 K4 [3]
       15 MOVE                             R3 R5
       16 SUBK                             R6 R4 K5 [1]
       17 GETTABLEKS                       R7 R2 K6 ["doneThrough"]
       19 CALL                             R7 0 1
       20 JUMPIFLE                         R6 R7 ; [+39]
       22 GETIMPORT                        R6 K2 [string.find]
       24 SUBK                             R8 R4 K5 [1]
       25 FASTCALL3                        STRING_SUB R0 R8 R8
       27 MOVE                             R10 R0
       28 MOVE                             R11 R8
       29 MOVE                             R12 R8
       30 GETIMPORT                        R9 K8 [string.sub]
       32 CALL                             R9 3 1
       33 MOVE                             R7 R9
       34 LOADK                            R8 K9 ["[%w%+%.%-]"]
       35 CALL                             R6 2 1
       36 JUMPIFNOT                        R6 ; [+23]
       37 GETIMPORT                        R6 K11 [string.match]
       39 ADDK                             R10 R5 K12 [512]
       40 FASTCALL3                        STRING_SUB R0 R5 R10
       42 MOVE                             R8 R0
       43 MOVE                             R9 R5
       44 GETIMPORT                        R7 K8 [string.sub]
       46 CALL                             R7 3 1
       47 LOADK                            R8 K13 ["^([^%s:/@\"'<>]+:[^%s/@\"'<>]+)@"]
       48 CALL                             R6 2 1
       49 JUMPIFNOT                        R6 ; [+10]
       50 GETTABLEKS                       R7 R2 K14 ["replace"]
       52 MOVE                             R8 R5
       53 LENGTH                           R11 R6
       54 ADD                              R10 R5 R11
       55 SUBK                             R9 R10 K5 [1]
       56 LOADK                            R10 K15 ["<URL_CREDENTIALS>"]
       57 CALL                             R7 3 0
       58 LENGTH                           R7 R6
       59 ADD                              R3 R5 R7
       60 JUMPBACK                         ; [-57]
       61 GETTABLEKS                       R4 R2 K16 ["finish"]
       63 CALL                             R4 0 -1
       64 RETURN                           R4 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 LOADN                            R3 1
        4 MOVE                             R4 R1
        5 CALL                             R4 0 0
        6 GETIMPORT                        R4 K2 [string.find]
        8 MOVE                             R5 R0
        9 LOADK                            R6 K3 ["[:=]"]
       10 MOVE                             R7 R3
       11 CALL                             R4 3 1
       12 JUMPIFNOT                        R4 ; [+266]
       13 ADDK                             R3 R4 K4 [1]
       14 GETTABLEKS                       R5 R2 K5 ["doneThrough"]
       16 CALL                             R5 0 1
       17 SUBK                             R6 R4 K4 [1]
       18 JUMPIFNOTLT                      R5 R6 ; [+27]
       20 MOVE                             R8 R6
       21 FASTCALL3                        STRING_SUB R0 R8 R8
       23 MOVE                             R10 R0
       24 MOVE                             R11 R8
       25 MOVE                             R12 R8
       26 GETIMPORT                        R9 K7 [string.sub]
       28 CALL                             R9 3 1
       29 MOVE                             R7 R9
       30 JUMPIFEQKS                       R7 K8 [" "] ; [+13]
       32 MOVE                             R8 R6
       33 FASTCALL3                        STRING_SUB R0 R8 R8
       35 MOVE                             R10 R0
       36 MOVE                             R11 R8
       37 MOVE                             R12 R8
       38 GETIMPORT                        R9 K7 [string.sub]
       40 CALL                             R9 3 1
       41 MOVE                             R7 R9
       42 JUMPIFNOTEQKS                    R7 K9 ["\t"] ; [+3]
       44 SUBK                             R6 R6 K4 [1]
       45 JUMPBACK                         ; [-28]
       46 JUMPIFNOTLT                      R5 R6 ; [+26]
       48 MOVE                             R8 R6
       49 FASTCALL3                        STRING_SUB R0 R8 R8
       51 MOVE                             R10 R0
       52 MOVE                             R11 R8
       53 MOVE                             R12 R8
       54 GETIMPORT                        R9 K7 [string.sub]
       56 CALL                             R9 3 1
       57 MOVE                             R7 R9
       58 JUMPIFEQKS                       R7 K10 ["\""] ; [+13]
       60 MOVE                             R8 R6
       61 FASTCALL3                        STRING_SUB R0 R8 R8
       63 MOVE                             R10 R0
       64 MOVE                             R11 R8
       65 MOVE                             R12 R8
       66 GETIMPORT                        R9 K7 [string.sub]
       68 CALL                             R9 3 1
       69 MOVE                             R7 R9
       70 JUMPIFNOTEQKS                    R7 K11 ["'"] ; [+2]
       72 SUBK                             R6 R6 K4 [1]
       73 ADDK                             R7 R6 K4 [1]
       74 SUBK                             R8 R7 K4 [1]
       75 JUMPIFNOTLT                      R5 R8 ; [+23]
       77 SUB                              R9 R6 R7
       78 ADDK                             R8 R9 K4 [1]
       79 LOADN                            R9 64
       80 JUMPIFNOTLT                      R8 R9 ; [+18]
       82 GETIMPORT                        R8 K2 [string.find]
       84 SUBK                             R10 R7 K4 [1]
       85 FASTCALL3                        STRING_SUB R0 R10 R10
       87 MOVE                             R12 R0
       88 MOVE                             R13 R10
       89 MOVE                             R14 R10
       90 GETIMPORT                        R11 K7 [string.sub]
       92 CALL                             R11 3 1
       93 MOVE                             R9 R11
       94 LOADK                            R10 K12 ["[%w_%-]"]
       95 CALL                             R8 2 1
       96 JUMPIFNOT                        R8 ; [+2]
       97 SUBK                             R7 R7 K4 [1]
       98 JUMPBACK                         ; [-25]
       99 JUMPIFNOTLE                      R7 R6 ; [+12]
      101 GETUPVAL                         R8 1
      102 FASTCALL3                        STRING_SUB R0 R7 R6
      104 MOVE                             R10 R0
      105 MOVE                             R11 R7
      106 MOVE                             R12 R6
      107 GETIMPORT                        R9 K7 [string.sub]
      109 CALL                             R9 3 1
      110 CALL                             R8 1 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R8
      113 JUMPIFNOT                        R8 ; [+164]
      114 ADDK                             R9 R4 K4 [1]
      115 MOVE                             R11 R9
      116 FASTCALL3                        STRING_SUB R0 R11 R11
      118 MOVE                             R13 R0
      119 MOVE                             R14 R11
      120 MOVE                             R15 R11
      121 GETIMPORT                        R12 K7 [string.sub]
      123 CALL                             R12 3 1
      124 MOVE                             R10 R12
      125 JUMPIFEQKS                       R10 K8 [" "] ; [+13]
      127 MOVE                             R11 R9
      128 FASTCALL3                        STRING_SUB R0 R11 R11
      130 MOVE                             R13 R0
      131 MOVE                             R14 R11
      132 MOVE                             R15 R11
      133 GETIMPORT                        R12 K7 [string.sub]
      135 CALL                             R12 3 1
      136 MOVE                             R10 R12
      137 JUMPIFNOTEQKS                    R10 K9 ["\t"] ; [+3]
      139 ADDK                             R9 R9 K4 [1]
      140 JUMPBACK                         ; [-26]
      141 MOVE                             R11 R9
      142 FASTCALL3                        STRING_SUB R0 R11 R11
      144 MOVE                             R13 R0
      145 MOVE                             R14 R11
      146 MOVE                             R15 R11
      147 GETIMPORT                        R12 K7 [string.sub]
      149 CALL                             R12 3 1
      150 MOVE                             R10 R12
      151 JUMPIFEQKS                       R10 K10 ["\""] ; [+3]
      153 JUMPIFNOTEQKS                    R10 K11 ["'"] ; [+61]
      155 ADDK                             R13 R9 K4 [1]
      156 ADDK                             R14 R9 K13 [1024]
      157 FASTCALL3                        STRING_SUB R0 R13 R14
      159 MOVE                             R12 R0
      160 GETIMPORT                        R11 K7 [string.sub]
      162 CALL                             R11 3 1
      163 GETIMPORT                        R12 K2 [string.find]
      165 MOVE                             R13 R11
      166 LOADK                            R14 K14 ["[\"'\r\n]"]
      167 CALL                             R12 2 1
      168 JUMPIFNOT                        R12 ; [+109]
      169 JUMPIFEQKN                       R12 K4 [1] ; [+108]
      171 FASTCALL3                        STRING_SUB R11 R12 R12
      173 MOVE                             R14 R11
      174 MOVE                             R15 R12
      175 MOVE                             R16 R12
      176 GETIMPORT                        R13 K7 [string.sub]
      178 CALL                             R13 3 1
      179 JUMPIFNOTEQ                      R13 R10 ; [+98]
      181 LOADN                            R15 1
      182 SUBK                             R16 R12 K4 [1]
      183 FASTCALL3                        STRING_SUB R11 R15 R16
      185 MOVE                             R14 R11
      186 GETIMPORT                        R13 K7 [string.sub]
      188 CALL                             R13 3 1
      189 GETIMPORT                        R15 K16 [string.match]
      191 MOVE                             R16 R13
      192 LOADK                            R17 K17 ["^<[%u_]+>$"]
      193 CALL                             R15 2 1
      194 JUMPIFNOTEQKNIL                  R15 ; [+2]
      196 LOADB                            R14 0 +1
      197 LOADB                            R14 1
      198 JUMPIF                           R14 ; [+79]
      199 GETIMPORT                        R14 K2 [string.find]
      201 MOVE                             R15 R13
      202 LOADK                            R16 K18 ["^%s"]
      203 CALL                             R14 2 1
      204 JUMPIF                           R14 ; [+73]
      205 GETTABLEKS                       R14 R2 K19 ["replace"]
      207 ADDK                             R15 R9 K4 [1]
      208 ADD                              R17 R9 R12
      209 SUBK                             R16 R17 K4 [1]
      210 MOVE                             R17 R8
      211 CALL                             R14 3 0
      212 ADD                              R14 R9 R12
      213 ADDK                             R3 R14 K4 [1]
      214 JUMP                             ; [+63]
      215 ADDK                             R15 R9 K13 [1024]
      216 SUBK                             R14 R15 K4 [1]
      217 FASTCALL3                        STRING_SUB R0 R9 R14
      219 MOVE                             R12 R0
      220 MOVE                             R13 R9
      221 GETIMPORT                        R11 K7 [string.sub]
      223 CALL                             R11 3 1
      224 GETIMPORT                        R12 K2 [string.find]
      226 MOVE                             R13 R11
      227 LOADK                            R14 K20 ["[%s\"',;%(%)%[%]<>]"]
      228 CALL                             R12 2 1
      229 JUMPIF                           R12 ; [+2]
      230 LENGTH                           R13 R11
      231 ADDK                             R12 R13 K4 [1]
      232 ADD                              R14 R9 R12
      233 SUBK                             R13 R14 K21 [2]
      234 ADDK                             R16 R13 K4 [1]
      235 FASTCALL2                        MATH_MAX R3 R16 ; [+4]
      237 MOVE                             R15 R3
      238 GETIMPORT                        R14 K24 [math.max]
      240 CALL                             R14 2 1
      241 MOVE                             R3 R14
      242 SUBK                             R14 R12 K4 [1]
      243 LOADN                            R15 8
      244 JUMPIFLT                         R14 R15 ; [+33]
      246 LOADN                            R17 1
      247 SUBK                             R18 R12 K4 [1]
      248 FASTCALL3                        STRING_SUB R11 R17 R18
      250 MOVE                             R16 R11
      251 GETIMPORT                        R15 K7 [string.sub]
      253 CALL                             R15 3 1
      254 LOADB                            R14 0
      255 GETIMPORT                        R16 K2 [string.find]
      257 MOVE                             R17 R15
      258 LOADK                            R18 K25 ["%a"]
      259 CALL                             R16 2 1
      260 JUMPIFEQKNIL                     R16 ; [+10]
      262 GETIMPORT                        R16 K2 [string.find]
      264 MOVE                             R17 R15
      265 LOADK                            R18 K26 ["%d"]
      266 CALL                             R16 2 1
      267 JUMPIFNOTEQKNIL                  R16 ; [+2]
      269 LOADB                            R14 0 +1
      270 LOADB                            R14 1
      271 JUMPIFNOT                        R14 ; [+6]
      272 GETTABLEKS                       R14 R2 K19 ["replace"]
      274 MOVE                             R15 R9
      275 MOVE                             R16 R13
      276 MOVE                             R17 R8
      277 CALL                             R14 3 0
      278 JUMPBACK                         ; [-275]
      279 GETTABLEKS                       R4 R2 K27 ["finish"]
      281 CALL                             R4 0 -1
      282 RETURN                           R4 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 LOADN                            R3 1
        4 MOVE                             R4 R1
        5 CALL                             R4 0 0
        6 GETIMPORT                        R4 K2 [string.find]
        8 MOVE                             R5 R0
        9 LOADK                            R6 K3 ["@"]
       10 MOVE                             R7 R3
       11 LOADB                            R8 1
       12 CALL                             R4 4 1
       13 JUMPIFNOT                        R4 ; [+77]
       14 ADDK                             R3 R4 K4 [1]
       15 MOVE                             R5 R4
       16 SUBK                             R6 R5 K4 [1]
       17 GETTABLEKS                       R7 R2 K5 ["doneThrough"]
       19 CALL                             R7 0 1
       20 JUMPIFNOTLT                      R7 R6 ; [+22]
       22 SUB                              R6 R4 R5
       23 LOADN                            R7 64
       24 JUMPIFNOTLT                      R6 R7 ; [+18]
       26 GETIMPORT                        R6 K2 [string.find]
       28 SUBK                             R8 R5 K4 [1]
       29 FASTCALL3                        STRING_SUB R0 R8 R8
       31 MOVE                             R10 R0
       32 MOVE                             R11 R8
       33 MOVE                             R12 R8
       34 GETIMPORT                        R9 K7 [string.sub]
       36 CALL                             R9 3 1
       37 MOVE                             R7 R9
       38 LOADK                            R8 K8 ["[%w%.%%%+_%-]"]
       39 CALL                             R6 2 1
       40 JUMPIFNOT                        R6 ; [+2]
       41 SUBK                             R5 R5 K4 [1]
       42 JUMPBACK                         ; [-27]
       43 GETIMPORT                        R6 K10 [string.match]
       45 ADDK                             R9 R4 K4 [1]
       46 ADDK                             R10 R4 K11 [255]
       47 FASTCALL3                        STRING_SUB R0 R9 R10
       49 MOVE                             R8 R0
       50 GETIMPORT                        R7 K7 [string.sub]
       52 CALL                             R7 3 1
       53 LOADK                            R8 K12 ["^[%w%-]+%.[%w%.%-]+"]
       54 CALL                             R6 2 1
       55 JUMPIFEQ                         R5 R4 ; [+34]
       57 JUMPIFNOT                        R6 ; [+32]
       58 GETIMPORT                        R8 K10 [string.match]
       60 MOVE                             R9 R6
       61 LOADK                            R10 K13 ["^(.-)%.*$"]
       62 CALL                             R8 2 1
       63 OR                               R7 R8 R6
       64 SUBK                             R11 R4 K4 [1]
       65 FASTCALL3                        STRING_SUB R0 R5 R11
       67 MOVE                             R9 R0
       68 MOVE                             R10 R5
       69 GETIMPORT                        R8 K7 [string.sub]
       71 CALL                             R8 3 1
       72 JUMPIFEQKS                       R8 K14 ["git"] ; [+17]
       74 GETIMPORT                        R8 K2 [string.find]
       76 MOVE                             R9 R7
       77 LOADK                            R10 K15 ["%.%a%a+$"]
       78 CALL                             R8 2 1
       79 JUMPIFNOT                        R8 ; [+10]
       80 GETTABLEKS                       R8 R2 K16 ["replace"]
       82 MOVE                             R9 R5
       83 LENGTH                           R11 R7
       84 ADD                              R10 R4 R11
       85 LOADK                            R11 K17 ["<EMAIL_ADDRESS>"]
       86 CALL                             R8 3 0
       87 LENGTH                           R9 R7
       88 ADD                              R8 R4 R9
       89 ADDK                             R3 R8 K4 [1]
       90 JUMPBACK                         ; [-87]
       91 GETTABLEKS                       R4 R2 K18 ["finish"]
       93 CALL                             R4 0 -1
       94 RETURN                           R4 -1

PROTO_19:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 15
        2 JUMPIFLT                         R1 R2 ; [+5]
        4 LENGTH                           R1 R0
        5 LOADN                            R2 34
        6 JUMPIFNOTLT                      R2 R1 ; [+3]
        8 LOADB                            R1 0
        9 RETURN                           R1 1
       10 FASTCALL2K                       STRING_SUB R0 K0 ; [+5]
       12 MOVE                             R5 R0
       13 LOADK                            R6 K0 [5]
       14 GETIMPORT                        R4 K3 [string.sub]
       16 CALL                             R4 2 1
       17 MOVE                             R2 R4
       18 LOADN                            R5 1
       19 LOADN                            R6 4
       20 FASTCALL3                        STRING_SUB R0 R5 R6
       22 MOVE                             R4 R0
       23 GETIMPORT                        R3 K3 [string.sub]
       25 CALL                             R3 3 1
       26 CONCAT                           R1 R2 R3
       27 LOADN                            R2 0
       28 LOADN                            R5 1
       29 LENGTH                           R3 R1
       30 LOADN                            R4 1
       31 FORNPREP                         R3
       32 FASTCALL2                        STRING_BYTE R1 R5 ; [+5]
       34 MOVE                             R7 R1
       35 MOVE                             R8 R5
       36 GETIMPORT                        R6 K5 [string.byte]
       38 CALL                             R6 2 1
       39 LOADN                            R8 65
       40 JUMPIFNOTLE                      R8 R6 ; [+3]
       42 SUBK                             R7 R6 K6 [55]
       43 JUMP                             ; [+1]
       44 SUBK                             R7 R6 K7 [48]
       45 LOADN                            R11 10
       46 JUMPIFNOTLE                      R11 R7 ; [+3]
       48 LOADN                            R10 100
       49 JUMP                             ; [+1]
       50 LOADN                            R10 10
       51 MUL                              R9 R2 R10
       52 ADD                              R8 R9 R7
       53 MODK                             R2 R8 K8 [97]
       54 FORNLOOP                         R3
       55 JUMPIFEQKN                       R2 K9 [1] ; [+2]
       57 LOADB                            R3 0 +1
       58 LOADB                            R3 1
       59 RETURN                           R3 1

PROTO_20:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 42
        2 JUMPIFNOTLT                      R2 R1 ; [+15]
        4 GETIMPORT                        R3 K3 [string.find]
        6 LOADN                            R6 1
        7 LOADN                            R7 43
        8 FASTCALL3                        STRING_SUB R0 R6 R7
       10 MOVE                             R5 R0
       11 GETIMPORT                        R4 K5 [string.sub]
       13 CALL                             R4 3 1
       14 LOADK                            R5 K6 [" [^ ]*$"]
       15 CALL                             R3 2 1
       16 ORK                              R2 R3 K0 [1]
       17 SUBK                             R1 R2 K0 [1]
       18 LOADN                            R2 15
       19 JUMPIFNOTLE                      R2 R1 ; [+54]
       21 FASTCALL3                        STRING_SUB R0 R1 R1
       23 MOVE                             R3 R0
       24 MOVE                             R4 R1
       25 MOVE                             R5 R1
       26 GETIMPORT                        R2 K5 [string.sub]
       28 CALL                             R2 3 1
       29 JUMPIFNOTEQKS                    R2 K7 [" "] ; [+3]
       31 SUBK                             R1 R1 K0 [1]
       32 JUMPBACK                         ; [-12]
       33 GETUPVAL                         R2 0
       34 GETIMPORT                        R3 K9 [string.gsub]
       36 LOADN                            R6 1
       37 FASTCALL3                        STRING_SUB R0 R6 R1
       39 MOVE                             R5 R0
       40 MOVE                             R7 R1
       41 GETIMPORT                        R4 K5 [string.sub]
       43 CALL                             R4 3 1
       44 LOADK                            R5 K7 [" "]
       45 LOADK                            R6 K10 [""]
       46 CALL                             R3 3 1
       47 CALL                             R2 1 1
       48 JUMPIFNOT                        R2 ; [+10]
       49 LOADK                            R3 K11 ["<IBAN_CODE>"]
       50 ADDK                             R6 R1 K0 [1]
       51 FASTCALL2                        STRING_SUB R0 R6 ; [+4]
       53 MOVE                             R5 R0
       54 GETIMPORT                        R4 K5 [string.sub]
       56 CALL                             R4 2 1
       57 CONCAT                           R2 R3 R4
       58 RETURN                           R2 1
       59 GETIMPORT                        R2 K3 [string.find]
       61 LOADN                            R5 1
       62 FASTCALL3                        STRING_SUB R0 R5 R1
       64 MOVE                             R4 R0
       65 MOVE                             R6 R1
       66 GETIMPORT                        R3 K5 [string.sub]
       68 CALL                             R3 3 1
       69 LOADK                            R4 K6 [" [^ ]*$"]
       70 CALL                             R2 2 1
       71 JUMPIFNOT                        R2 ; [+2]
       72 SUBK                             R1 R2 K0 [1]
       73 JUMPBACK                         ; [-56]
       74 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["%f[%w]%u%u%d%d[%u%d ]+"]
        3 DUPCLOSURE                       R5 K1 [PROTO_20]
        4 CAPTURE                          UPVAL U1
        5 MOVE                             R6 R1
        6 CALL                             R2 4 -1
        7 RETURN                           R2 -1

PROTO_22:
        0 LOADN                            R1 0
        1 LOADB                            R2 0
        2 LENGTH                           R5 R0
        3 LOADN                            R3 1
        4 LOADN                            R4 -1
        5 FORNPREP                         R3
        6 FASTCALL2                        STRING_BYTE R0 R5 ; [+5]
        8 MOVE                             R8 R0
        9 MOVE                             R9 R5
       10 GETIMPORT                        R7 K3 [string.byte]
       12 CALL                             R7 2 1
       13 SUBK                             R6 R7 K0 [48]
       14 JUMPIFNOT                        R2 ; [+5]
       15 MULK                             R6 R6 K4 [2]
       16 LOADN                            R7 9
       17 JUMPIFNOTLT                      R7 R6 ; [+2]
       19 SUBK                             R6 R6 K5 [9]
       20 ADD                              R1 R1 R6
       21 NOT                              R2 R2
       22 FORNLOOP                         R3
       23 MODK                             R4 R1 K6 [10]
       24 JUMPIFEQKN                       R4 K7 [0] ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 RETURN                           R3 1

PROTO_23:
        0 LOADN                            R3 1
        1 LOADN                            R4 1
        2 FASTCALL3                        STRING_SUB R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [string.sub]
        7 CALL                             R1 3 1
        8 LOADN                            R6 1
        9 LOADN                            R7 2
       10 FASTCALL3                        STRING_SUB R0 R6 R7
       12 MOVE                             R5 R0
       13 GETIMPORT                        R4 K2 [string.sub]
       15 CALL                             R4 3 1
       16 FASTCALL1                        TONUMBER R4 ; [+2]
       17 GETIMPORT                        R3 K5 [tonumber]
       19 CALL                             R3 1 1
       20 ORK                              R2 R3 K3 [0]
       21 LOADB                            R3 1
       22 JUMPIFEQKS                       R1 K6 ["4"] ; [+37]
       24 LOADB                            R3 1
       25 JUMPIFEQKS                       R1 K7 ["6"] ; [+34]
       27 LOADN                            R4 51
       28 JUMPIFNOTLE                      R4 R2 ; [+5]
       30 LOADB                            R3 1
       31 LOADN                            R4 55
       32 JUMPIFLE                         R2 R4 ; [+27]
       34 LOADN                            R4 22
       35 JUMPIFNOTLE                      R4 R2 ; [+5]
       37 LOADB                            R3 1
       38 LOADN                            R4 27
       39 JUMPIFLE                         R2 R4 ; [+20]
       41 LOADB                            R3 1
       42 JUMPIFEQKN                       R2 K8 [30] ; [+17]
       44 LOADB                            R3 1
       45 JUMPIFEQKN                       R2 K9 [34] ; [+14]
       47 LOADB                            R3 1
       48 JUMPIFEQKN                       R2 K10 [35] ; [+11]
       50 LOADB                            R3 1
       51 JUMPIFEQKN                       R2 K11 [36] ; [+8]
       53 LOADB                            R3 1
       54 JUMPIFEQKN                       R2 K12 [37] ; [+5]
       56 JUMPIFEQKN                       R2 K13 [38] ; [+2]
       58 LOADB                            R3 0 +1
       59 LOADB                            R3 1
       60 RETURN                           R3 1

PROTO_24:
        0 LOADB                            R1 0
        1 LENGTH                           R2 R0
        2 LOADN                            R3 13
        3 JUMPIFNOTLE                      R3 R2 ; [+13]
        5 LOADB                            R1 0
        6 LENGTH                           R2 R0
        7 LOADN                            R3 19
        8 JUMPIFNOTLE                      R2 R3 ; [+8]
       10 GETUPVAL                         R1 0
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETUPVAL                         R1 1
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 RETURN                           R1 1

PROTO_25:
        0 GETIMPORT                        R2 K3 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K4 ["[ %-]"]
        4 CALL                             R2 2 1
        5 ORK                              R1 R2 K0 [""]
        6 JUMPIFEQKS                       R1 K0 [""] ; [+7]
        8 GETIMPORT                        R2 K6 [string.split]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 1
       13 JUMP                             ; [+5]
       14 NEWTABLE                         R2 0 1
       16 MOVE                             R3 R0
       17 SETLIST                          R2 R3 1 [1]
       19 MOVE                             R3 R2
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 GETIMPORT                        R8 K8 [string.find]
       25 MOVE                             R9 R7
       26 LOADK                            R10 K9 ["^%d+$"]
       27 CALL                             R8 2 1
       28 JUMPIF                           R8 ; [+1]
       29 RETURN                           R0 1
       30 FORGLOOP                         R3 2 ; [-8]
       32 LENGTH                           R6 R2
       33 FASTCALL2K                       MATH_MIN R6 K10 ; [+4]
       35 LOADK                            R7 K10 [19]
       36 GETIMPORT                        R5 K13 [math.min]
       38 CALL                             R5 2 1
       39 LOADN                            R3 1
       40 LOADN                            R4 -1
       41 FORNPREP                         R3
       42 LOADB                            R6 0
       43 LOADN                            R9 1
       44 SUBK                             R7 R5 K14 [1]
       45 LOADN                            R8 1
       46 FORNPREP                         R7
       47 GETTABLE                         R11 R2 R9
       48 LENGTH                           R10 R11
       49 LOADN                            R11 3
       50 JUMPIFNOTLT                      R10 R11 ; [+2]
       52 LOADB                            R6 1
       53 FORNLOOP                         R7
       54 JUMPIF                           R6 ; [+44]
       55 GETIMPORT                        R8 K17 [table.concat]
       57 MOVE                             R9 R2
       58 LOADK                            R10 K0 [""]
       59 LOADN                            R11 1
       60 MOVE                             R12 R5
       61 CALL                             R8 4 1
       62 LOADB                            R7 0
       63 LENGTH                           R9 R8
       64 LOADN                            R10 13
       65 JUMPIFNOTLE                      R10 R9 ; [+15]
       67 LOADB                            R7 0
       68 LENGTH                           R9 R8
       69 LOADN                            R10 19
       70 JUMPIFNOTLE                      R9 R10 ; [+10]
       72 GETUPVAL                         R9 0
       73 MOVE                             R10 R8
       74 CALL                             R9 1 1
       75 MOVE                             R7 R9
       76 JUMPIFNOT                        R7 ; [+4]
       77 GETUPVAL                         R9 1
       78 MOVE                             R10 R8
       79 CALL                             R9 1 1
       80 MOVE                             R7 R9
       81 JUMPIFNOT                        R7 ; [+17]
       82 LENGTH                           R8 R2
       83 JUMPIFNOTLT                      R5 R8 ; [+10]
       85 MOVE                             R8 R1
       86 GETIMPORT                        R9 K17 [table.concat]
       88 MOVE                             R10 R2
       89 MOVE                             R11 R1
       90 ADDK                             R12 R5 K14 [1]
       91 CALL                             R9 3 1
       92 CONCAT                           R7 R8 R9
       93 JUMP                             ; [+1]
       94 LOADK                            R7 K0 [""]
       95 LOADK                            R9 K18 ["<CREDIT_CARD>"]
       96 MOVE                             R10 R7
       97 CONCAT                           R8 R9 R10
       98 RETURN                           R8 1
       99 FORNLOOP                         R3
      100 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R4 0
        1 SUBK                             R5 R1 K0 [1]
        2 SUBK                             R6 R1 K0 [1]
        3 FASTCALL                         STRING_SUB ; [+2]
        4 GETIMPORT                        R3 K3 [string.sub]
        6 CALL                             R3 3 1
        7 GETUPVAL                         R5 0
        8 ADDK                             R6 R2 K0 [1]
        9 ADDK                             R7 R2 K0 [1]
       10 FASTCALL                         STRING_SUB ; [+2]
       11 GETIMPORT                        R4 K3 [string.sub]
       13 CALL                             R4 3 1
       14 GETIMPORT                        R5 K5 [string.find]
       16 MOVE                             R6 R3
       17 LOADK                            R7 K6 ["[%w%._]"]
       18 CALL                             R5 2 1
       19 JUMPIF                           R5 ; [+6]
       20 GETIMPORT                        R5 K5 [string.find]
       22 MOVE                             R6 R4
       23 LOADK                            R7 K7 ["[%w_]"]
       24 CALL                             R5 2 1
       25 JUMPIFNOT                        R5 ; [+1]
       26 RETURN                           R0 1
       27 GETUPVAL                         R5 1
       28 MOVE                             R6 R0
       29 CALL                             R5 1 1
       30 RETURN                           R5 1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["%d[%d %-]*%d"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 MOVE                             R6 R1
        7 CALL                             R2 4 -1
        8 RETURN                           R2 -1

PROTO_28:
        0 GETUPVAL                         R4 0
        1 SUBK                             R5 R1 K0 [1]
        2 SUBK                             R6 R1 K0 [1]
        3 FASTCALL                         STRING_SUB ; [+2]
        4 GETIMPORT                        R3 K3 [string.sub]
        6 CALL                             R3 3 1
        7 GETUPVAL                         R5 0
        8 ADDK                             R6 R2 K0 [1]
        9 ADDK                             R7 R2 K0 [1]
       10 FASTCALL                         STRING_SUB ; [+2]
       11 GETIMPORT                        R4 K3 [string.sub]
       13 CALL                             R4 3 1
       14 LOADN                            R10 1
       15 LOADN                            R11 3
       16 FASTCALL3                        STRING_SUB R0 R10 R11
       18 MOVE                             R9 R0
       19 GETIMPORT                        R8 K3 [string.sub]
       21 CALL                             R8 3 1
       22 MOVE                             R5 R8
       23 LOADN                            R10 5
       24 LOADN                            R11 6
       25 FASTCALL3                        STRING_SUB R0 R10 R11
       27 MOVE                             R9 R0
       28 GETIMPORT                        R8 K3 [string.sub]
       30 CALL                             R8 3 1
       31 MOVE                             R6 R8
       32 LOADN                            R9 8
       33 LOADN                            R10 11
       34 FASTCALL3                        STRING_SUB R0 R9 R10
       36 MOVE                             R8 R0
       37 GETIMPORT                        R7 K3 [string.sub]
       39 CALL                             R7 3 1
       40 GETIMPORT                        R8 K5 [string.find]
       42 MOVE                             R9 R3
       43 LOADK                            R10 K6 ["[%w%-]"]
       44 CALL                             R8 2 1
       45 JUMPIF                           R8 ; [+24]
       46 GETIMPORT                        R8 K5 [string.find]
       48 MOVE                             R9 R4
       49 LOADK                            R10 K6 ["[%w%-]"]
       50 CALL                             R8 2 1
       51 JUMPIF                           R8 ; [+18]
       52 JUMPIFEQKS                       R5 K7 ["000"] ; [+17]
       54 JUMPIFEQKS                       R5 K8 ["666"] ; [+15]
       56 LOADN                            R10 1
       57 LOADN                            R11 1
       58 FASTCALL3                        STRING_SUB R5 R10 R11
       60 MOVE                             R9 R5
       61 GETIMPORT                        R8 K3 [string.sub]
       63 CALL                             R8 3 1
       64 JUMPIFEQKS                       R8 K9 ["9"] ; [+5]
       66 JUMPIFEQKS                       R6 K10 ["00"] ; [+3]
       68 JUMPIFNOTEQKS                    R7 K11 ["0000"] ; [+2]
       70 RETURN                           R0 1
       71 LOADK                            R8 K12 ["<US_SSN>"]
       72 RETURN                           R8 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["%d%d%d%-%d%d%-%d%d%d%d"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R0
        5 MOVE                             R6 R1
        6 CALL                             R2 4 -1
        7 RETURN                           R2 -1

PROTO_30:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R2
        6 CALL                             R3 2 1
        7 MOVE                             R4 R2
        8 CALL                             R4 0 0
        9 GETIMPORT                        R4 K2 [string.gsub]
       11 MOVE                             R5 R3
       12 LOADK                            R6 K3 ["_|WARNING:%-DO%-NOT%-SHARE%-THIS%.[^|]*|_[%w%+/=_%-]*"]
       13 LOADK                            R7 K4 ["<ROBLOSECURITY>"]
       14 CALL                             R4 3 1
       15 MOVE                             R3 R4
       16 MOVE                             R4 R2
       17 CALL                             R4 0 0
       18 GETUPVAL                         R4 2
       19 MOVE                             R5 R3
       20 MOVE                             R6 R2
       21 CALL                             R4 2 1
       22 MOVE                             R3 R4
       23 MOVE                             R4 R2
       24 CALL                             R4 0 0
       25 GETIMPORT                        R4 K2 [string.gsub]
       27 MOVE                             R5 R3
       28 LOADK                            R6 K5 ["eyJ[%w_%-]+%.eyJ[%w_%-]+%.[%w_%-]+"]
       29 LOADK                            R7 K6 ["<AUTH_TOKEN>"]
       30 CALL                             R4 3 1
       31 MOVE                             R3 R4
       32 MOVE                             R4 R2
       33 CALL                             R4 0 0
       34 GETUPVAL                         R4 3
       35 MOVE                             R5 R3
       36 MOVE                             R6 R2
       37 CALL                             R4 2 1
       38 MOVE                             R3 R4
       39 GETUPVAL                         R4 4
       40 MOVE                             R5 R3
       41 MOVE                             R6 R2
       42 CALL                             R4 2 1
       43 MOVE                             R3 R4
       44 GETUPVAL                         R4 5
       45 MOVE                             R5 R3
       46 MOVE                             R6 R2
       47 CALL                             R4 2 1
       48 MOVE                             R3 R4
       49 GETUPVAL                         R4 6
       50 MOVE                             R5 R3
       51 MOVE                             R6 R2
       52 CALL                             R4 2 1
       53 MOVE                             R3 R4
       54 MOVE                             R4 R3
       55 GETUPVAL                         R5 7
       56 MOVE                             R6 R4
       57 LOADK                            R7 K7 ["%f[%w]%u%u%d%d[%u%d ]+"]
       58 DUPCLOSURE                       R8 K8 [PROTO_20]
       59 CAPTURE                          UPVAL U8
       60 MOVE                             R9 R2
       61 CALL                             R5 4 1
       62 MOVE                             R3 R5
       63 MOVE                             R4 R3
       64 GETUPVAL                         R5 7
       65 MOVE                             R6 R4
       66 LOADK                            R7 K9 ["%d[%d %-]*%d"]
       67 NEWCLOSURE                       R8 P1
       68 CAPTURE                          VAL R4
       69 CAPTURE                          UPVAL U9
       70 MOVE                             R9 R2
       71 CALL                             R5 4 1
       72 MOVE                             R3 R5
       73 MOVE                             R4 R3
       74 GETUPVAL                         R5 7
       75 MOVE                             R6 R4
       76 LOADK                            R7 K10 ["%d%d%d%-%d%d%-%d%d%d%d"]
       77 NEWCLOSURE                       R8 P2
       78 CAPTURE                          VAL R4
       79 MOVE                             R9 R2
       80 CALL                             R5 4 1
       81 MOVE                             R3 R5
       82 MOVE                             R4 R3
       83 JUMPIFNOTEQ                      R3 R0 ; [+2]
       85 LOADB                            R5 0 +1
       86 LOADB                            R5 1
       87 RETURN                           R4 2

PROTO_31:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 ADDK                             R5 R1 K0 [2048]
        3 CALL                             R3 2 2
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R3
        6 MOVE                             R7 R2
        7 CALL                             R5 2 2
        8 JUMPIFNOT                        R4 ; [+15]
        9 LENGTH                           R11 R5
       10 SUBK                             R10 R11 K0 [2048]
       11 FASTCALL2                        MATH_MIN R1 R10 ; [+4]
       13 MOVE                             R9 R1
       14 GETIMPORT                        R8 K3 [math.min]
       16 CALL                             R8 2 1
       17 FASTCALL2K                       MATH_MAX R8 K4 ; [+4]
       19 LOADK                            R9 K4 [0]
       20 GETIMPORT                        R7 K6 [math.max]
       22 CALL                             R7 2 1
       23 JUMP                             ; [+1]
       24 MOVE                             R7 R1
       25 GETUPVAL                         R8 0
       26 MOVE                             R9 R5
       27 MOVE                             R10 R7
       28 CALL                             R8 2 2
       29 MOVE                             R10 R8
       30 MOVE                             R11 R6
       31 OR                               R12 R4 R9
       32 RETURN                           R10 3

PROTO_32:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+96]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K1 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+20]
       14 JUMPIFEQKS                       R0 K3 [""] ; [+18]
       16 GETIMPORT                        R3 K5 [string.match]
       18 MOVE                             R4 R0
       19 LOADK                            R5 K6 ["^<[%u_]+>$"]
       20 CALL                             R3 2 1
       21 JUMPIFNOTEQKNIL                  R3 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 JUMPIF                           R2 ; [+7]
       26 GETUPVAL                         R2 0
       27 MOVE                             R3 R1
       28 CALL                             R2 1 1
       29 JUMPIFNOT                        R2 ; [+3]
       30 LOADB                            R3 1
       31 SETUPVAL                         R3 1
       32 RETURN                           R2 1
       33 JUMPIFEQKS                       R0 K3 [""] ; [+9]
       35 GETUPVAL                         R2 2
       36 LOADN                            R3 0
       37 JUMPIFNOTLE                      R2 R3 ; [+5]
       39 LOADB                            R2 1
       40 SETUPVAL                         R2 3
       41 LOADK                            R2 K3 [""]
       42 RETURN                           R2 1
       43 LOADNIL                          R2
       44 LOADNIL                          R3
       45 LENGTH                           R4 R0
       46 GETUPVAL                         R5 2
       47 JUMPIFNOTLT                      R5 R4 ; [+41]
       49 GETUPVAL                         R6 2
       50 GETUPVAL                         R7 4
       51 MOVE                             R8 R0
       52 ADDK                             R9 R6 K7 [2048]
       53 CALL                             R7 2 2
       54 GETUPVAL                         R9 5
       55 MOVE                             R10 R7
       56 LOADNIL                          R11
       57 CALL                             R9 2 2
       58 JUMPIFNOT                        R8 ; [+15]
       59 LENGTH                           R15 R9
       60 SUBK                             R14 R15 K7 [2048]
       61 FASTCALL2                        MATH_MIN R6 R14 ; [+4]
       63 MOVE                             R13 R6
       64 GETIMPORT                        R12 K10 [math.min]
       66 CALL                             R12 2 1
       67 FASTCALL2K                       MATH_MAX R12 K11 ; [+4]
       69 LOADK                            R13 K11 [0]
       70 GETIMPORT                        R11 K13 [math.max]
       72 CALL                             R11 2 1
       73 JUMP                             ; [+1]
       74 MOVE                             R11 R6
       75 GETUPVAL                         R12 4
       76 MOVE                             R13 R9
       77 MOVE                             R14 R11
       78 CALL                             R12 2 2
       79 MOVE                             R4 R12
       80 MOVE                             R5 R10
       81 OR                               R14 R8 R13
       82 MOVE                             R2 R4
       83 MOVE                             R3 R5
       84 LOADN                            R4 0
       85 SETUPVAL                         R4 2
       86 LOADB                            R4 1
       87 SETUPVAL                         R4 3
       88 JUMP                             ; [+9]
       89 GETUPVAL                         R4 5
       90 MOVE                             R5 R0
       91 CALL                             R4 1 2
       92 MOVE                             R2 R4
       93 MOVE                             R3 R5
       94 GETUPVAL                         R4 2
       95 LENGTH                           R5 R0
       96 SUB                              R4 R4 R5
       97 SETUPVAL                         R4 2
       98 GETUPVAL                         R5 1
       99 OR                               R4 R5 R3
      100 SETUPVAL                         R4 1
      101 RETURN                           R2 1
      102 FASTCALL1                        TYPEOF R0 ; [+3]
      103 MOVE                             R3 R0
      104 GETIMPORT                        R2 K1 [typeof]
      106 CALL                             R2 1 1
      107 JUMPIFNOTEQKS                    R2 K14 ["table"] ; [+15]
      109 NEWTABLE                         R2 0 0
      111 MOVE                             R3 R0
      112 LOADNIL                          R4
      113 LOADNIL                          R5
      114 FORGPREP                         R3
      115 GETUPVAL                         R8 6
      116 MOVE                             R9 R7
      117 MOVE                             R10 R6
      118 CALL                             R8 2 1
      119 SETTABLE                         R8 R2 R6
      120 FORGLOOP                         R3 2 ; [-6]
      122 RETURN                           R2 1
      123 RETURN                           R0 1

PROTO_33:
        0 ORK                              R2 R1 K0 [Infinity]
        1 LOADB                            R3 0
        2 LOADB                            R4 0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          REF R3
        6 CAPTURE                          REF R2
        7 CAPTURE                          REF R4
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R5
       11 MOVE                             R6 R5
       12 MOVE                             R7 R0
       13 CALL                             R6 1 1
       14 MOVE                             R7 R3
       15 MOVE                             R8 R4
       16 CLOSEUPVALS                      R2
       17 RETURN                           R6 3

PROTO_34:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 SUB                              R0 R1 R2
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTLE                      R1 R0 ; [+8]
        8 GETIMPORT                        R0 K5 [task.wait]
       10 CALL                             R0 0 0
       11 GETIMPORT                        R0 K2 [os.clock]
       13 CALL                             R0 0 1
       14 SETUPVAL                         R0 0
       15 RETURN                           R0 0

PROTO_35:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R1
        5 CAPTURE                          VAL R0
        6 CLOSEUPVALS                      R1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Utils"]
       16 GETTABLEKS                       R2 R2 K9 ["truncateUtf8Safe"]
       18 NEWTABLE                         R3 0 15
       20 LOADK                            R4 K10 ["password"]
       21 LOADK                            R5 K11 ["passwd"]
       22 LOADK                            R6 K12 ["passphrase"]
       23 LOADK                            R7 K13 ["pwd"]
       24 LOADK                            R8 K14 ["secret"]
       25 LOADK                            R9 K15 ["token"]
       26 LOADK                            R10 K16 ["apikey"]
       27 LOADK                            R11 K17 ["api_key"]
       28 LOADK                            R12 K18 ["api-key"]
       29 LOADK                            R13 K19 ["accesskey"]
       30 LOADK                            R14 K20 ["access_key"]
       31 LOADK                            R15 K21 ["access-key"]
       32 LOADK                            R16 K22 ["privatekey"]
       33 LOADK                            R17 K23 ["private_key"]
       34 LOADK                            R18 K24 ["credential"]
       35 SETLIST                          R3 R4 15 [1]
       37 NEWTABLE                         R4 0 8
       39 DUPTABLE                         R5 K29 [{["pattern"] = "%f[%w]A[KS]IA[%u%d]+", ["minLength"] = 20}]
       40 DUPTABLE                         R6 K32 [{["pattern"] = "%f[%w]github_pat_[%w_]+", ["minLength"] = 33}]
       41 DUPTABLE                         R7 K35 [{["pattern"] = "%f[%w]gh[pousr]_%w+", ["minLength"] = 34}]
       42 DUPTABLE                         R8 K38 [{["pattern"] = "%f[%w]sk%-[%w_%-]+", ["minLength"] = 23}]
       43 DUPTABLE                         R9 K41 [{["pattern"] = "%f[%w][sr]k_live_%w+", ["minLength"] = 24}]
       44 DUPTABLE                         R10 K43 [{["pattern"] = "%f[%w]sk_test_%w+", ["minLength"] = 24}]
       45 DUPTABLE                         R11 K46 [{["pattern"] = "%f[%w]xox[abprs]%-[%w%-]+", ["minLength"] = 15}]
       46 DUPTABLE                         R12 K48 [{["pattern"] = "AIza[%w_%-]+", ["minLength"] = 34}]
       47 SETLIST                          R4 R5 8 [1]
       49 DUPCLOSURE                       R5 K49 [PROTO_0]
       50 DUPCLOSURE                       R6 K50 [PROTO_1]
       51 CAPTURE                          VAL R3
       52 DUPCLOSURE                       R7 K51 [PROTO_2]
       53 DUPCLOSURE                       R8 K52 [PROTO_3]
       54 DUPCLOSURE                       R9 K53 [PROTO_4]
       55 DUPCLOSURE                       R10 K54 [PROTO_5]
       56 DUPCLOSURE                       R11 K55 [PROTO_6]
       57 DUPCLOSURE                       R12 K56 [PROTO_8]
       58 CAPTURE                          VAL R10
       59 DUPCLOSURE                       R13 K57 [PROTO_10]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R10
       62 DUPCLOSURE                       R14 K58 [PROTO_11]
       63 DUPCLOSURE                       R15 K59 [PROTO_15]
       64 DUPCLOSURE                       R16 K60 [PROTO_16]
       65 CAPTURE                          VAL R15
       66 DUPCLOSURE                       R17 K61 [PROTO_17]
       67 CAPTURE                          VAL R15
       68 CAPTURE                          VAL R6
       69 DUPCLOSURE                       R18 K62 [PROTO_18]
       70 CAPTURE                          VAL R15
       71 DUPCLOSURE                       R19 K63 [PROTO_19]
       72 DUPCLOSURE                       R20 K64 [PROTO_21]
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R19
       75 DUPCLOSURE                       R21 K65 [PROTO_22]
       76 DUPCLOSURE                       R22 K66 [PROTO_23]
       77 DUPCLOSURE                       R23 K67 [PROTO_24]
       78 CAPTURE                          VAL R22
       79 CAPTURE                          VAL R21
       80 DUPCLOSURE                       R24 K68 [PROTO_25]
       81 CAPTURE                          VAL R22
       82 CAPTURE                          VAL R21
       83 DUPCLOSURE                       R25 K69 [PROTO_27]
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R24
       86 DUPCLOSURE                       R26 K70 [PROTO_29]
       87 CAPTURE                          VAL R10
       88 DUPCLOSURE                       R27 K71 [PROTO_30]
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R17
       95 CAPTURE                          VAL R18
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R19
       98 CAPTURE                          VAL R24
       99 DUPCLOSURE                       R28 K72 [PROTO_31]
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R27
      102 DUPCLOSURE                       R29 K73 [PROTO_33]
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R27
      106 DUPCLOSURE                       R30 K74 [PROTO_35]
      107 DUPTABLE                         R31 K79 [{"redact", "redactPrefix", "redactValue", "newTimeSlicer"}]
      108 SETTABLEKS                       R27 R31 K75 ["redact"]
      110 SETTABLEKS                       R28 R31 K76 ["redactPrefix"]
      112 SETTABLEKS                       R29 R31 K77 ["redactValue"]
      114 SETTABLEKS                       R30 R31 K78 ["newTimeSlicer"]
      116 RETURN                           R31 1
