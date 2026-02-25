PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 LOADN                            R5 1
        3 NAMECALL                         R2 R2 K0 ["GetRightSide"]
        5 CALL                             R2 3 2
        6 JUMPIFNOT                        R2 ; [+10]
        7 JUMPIFNOT                        R3 ; [+9]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K1 ["CharAt"]
       11 MOVE                             R5 R0
       12 MOVE                             R6 R2
       13 CALL                             R4 2 1
       14 JUMPIFNOTEQKS                    R4 K2 ["{"] ; [+2]
       16 RETURN                           R0 0
       17 GETIMPORT                        R4 K5 [string.find]
       19 MOVE                             R5 R0
       20 LOADK                            R6 K6 ["="]
       21 LOADNIL                          R7
       22 LOADB                            R8 1
       23 CALL                             R4 4 1
       24 JUMPIFNOT                        R4 ; [+2]
       25 SUBK                             R4 R4 K7 [1]
       26 JUMP                             ; [+6]
       27 FASTCALL1                        STRING_LEN R0 ; [+3]
       28 MOVE                             R6 R0
       29 GETIMPORT                        R5 K9 [string.len]
       31 CALL                             R5 1 1
       32 MOVE                             R4 R5
       33 LOADN                            R7 1
       34 FASTCALL3                        STRING_SUB R0 R7 R4
       36 MOVE                             R6 R0
       37 MOVE                             R8 R4
       38 GETIMPORT                        R5 K11 [string.sub]
       40 CALL                             R5 3 1
       41 MOVE                             R0 R5
       42 NAMECALL                         R5 R0 K12 ["split"]
       44 CALL                             R5 1 1
       45 MOVE                             R6 R5
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 FORGPREP                         R6
       49 GETIMPORT                        R11 K5 [string.find]
       51 MOVE                             R12 R0
       52 MOVE                             R13 R10
       53 LOADNIL                          R14
       54 LOADB                            R15 1
       55 CALL                             R11 4 1
       56 GETUPVAL                         R12 2
       57 GETUPVAL                         R15 1
       58 GETTABLEKS                       R14 R15 K13 ["RemoveWhitespace"]
       60 MOVE                             R15 R10
       61 CALL                             R14 1 1
       62 LOADK                            R15 K14 [""]
       63 MOVE                             R16 R1
       64 MOVE                             R17 R11
       65 NAMECALL                         R12 R12 K15 ["AddVariable"]
       67 CALL                             R12 5 0
       68 FORGLOOP                         R6 2 ; [-20]
       70 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K2 [string.find]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R0
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K3 ["StartIndex"]
        7 LOADB                            R7 1
        8 CALL                             R3 4 2
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K4 ["Lines"]
       12 DUPTABLE                         R7 K8 [{"LineNo", "Text", "Offset"}]
       13 SETTABLEKS                       R2 R7 K5 ["LineNo"]
       15 GETUPVAL                         R11 0
       16 GETTABLEKS                       R10 R11 K3 ["StartIndex"]
       18 SUBK                             R11 R3 K9 [1]
       19 FASTCALL3                        STRING_SUB R1 R10 R11
       21 MOVE                             R9 R1
       22 GETIMPORT                        R8 K11 [string.sub]
       24 CALL                             R8 3 1
       25 SETTABLEKS                       R8 R7 K6 ["Text"]
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R9 R10 K3 ["StartIndex"]
       30 SUBK                             R8 R9 K9 [1]
       31 SETTABLEKS                       R8 R7 K7 ["Offset"]
       33 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       35 GETIMPORT                        R5 K14 [table.insert]
       37 CALL                             R5 2 0
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R5 R6 K15 ["new"]
       41 ADDK                             R6 R4 K9 [1]
       42 ADDK                             R7 R4 K9 [1]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 0
       45 MOVE                             R8 R5
       46 NAMECALL                         R6 R6 K16 ["AddChild"]
       48 CALL                             R6 2 0
       49 SETUPVAL                         R5 0
       50 LOADB                            R6 1
       51 RETURN                           R6 1

PROTO_2:
        0 GETIMPORT                        R3 K2 [string.find]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K3 ["function"]
        4 CALL                             R3 2 2
        5 JUMPIFNOT                        R3 ; [+19]
        6 JUMPIFNOT                        R4 ; [+18]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K4 ["MatchBeforeAndAfter"]
       10 MOVE                             R6 R0
       11 MOVE                             R7 R3
       12 MOVE                             R8 R4
       13 LOADK                            R9 K5 ["[%s=,]"]
       14 LOADK                            R10 K6 ["[%s\r\n(]"]
       15 LOADB                            R11 1
       16 LOADB                            R12 1
       17 CALL                             R5 7 1
       18 JUMPIFNOT                        R5 ; [+6]
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R0
       21 MOVE                             R7 R1
       22 MOVE                             R8 R2
       23 CALL                             R5 3 1
       24 RETURN                           R5 1
       25 LOADB                            R5 0
       26 RETURN                           R5 1

PROTO_3:
        0 JUMPIFEQKS                       R0 K0 ["repeat"] ; [+5]
        2 JUMPIFEQKS                       R0 K1 ["do"] ; [+3]
        4 JUMPIFNOTEQKS                    R0 K2 ["then"] ; [+7]
        6 GETUPVAL                         R3 0
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 1
       11 RETURN                           R3 1
       12 LOADB                            R3 0
       13 RETURN                           R3 1

PROTO_4:
        0 GETIMPORT                        R3 K2 [string.find]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R0
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K3 ["StartIndex"]
        7 LOADB                            R7 1
        8 CALL                             R3 4 2
        9 GETUPVAL                         R5 0
       10 SUBK                             R6 R3 K4 [1]
       11 SETTABLEKS                       R6 R5 K5 ["EndIndex"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K6 ["Lines"]
       16 DUPTABLE                         R7 K10 [{"LineNo", "Text", "Offset"}]
       17 SETTABLEKS                       R2 R7 K7 ["LineNo"]
       19 GETUPVAL                         R11 0
       20 GETTABLEKS                       R10 R11 K3 ["StartIndex"]
       22 GETUPVAL                         R12 0
       23 GETTABLEKS                       R11 R12 K5 ["EndIndex"]
       25 FASTCALL3                        STRING_SUB R1 R10 R11
       27 MOVE                             R9 R1
       28 GETIMPORT                        R8 K12 [string.sub]
       30 CALL                             R8 3 1
       31 SETTABLEKS                       R8 R7 K8 ["Text"]
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R9 R10 K3 ["StartIndex"]
       36 SUBK                             R8 R9 K4 [1]
       37 SETTABLEKS                       R8 R7 K9 ["Offset"]
       39 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       41 GETIMPORT                        R5 K15 [table.insert]
       43 CALL                             R5 2 0
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R5 R6 K16 ["Parent"]
       47 JUMPIFNOT                        R5 ; [+10]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R5 R6 K16 ["Parent"]
       51 SETUPVAL                         R5 0
       52 GETUPVAL                         R5 0
       53 SETTABLEKS                       R4 R5 K3 ["StartIndex"]
       55 GETUPVAL                         R5 0
       56 SETTABLEKS                       R4 R5 K5 ["EndIndex"]
       58 LOADB                            R5 1
       59 RETURN                           R5 1

PROTO_5:
        0 GETIMPORT                        R3 K2 [string.find]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K3 ["end"]
        4 CALL                             R3 2 2
        5 JUMPIFNOT                        R3 ; [+19]
        6 JUMPIFNOT                        R4 ; [+18]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K4 ["MatchBeforeAndAfter"]
       10 MOVE                             R6 R0
       11 MOVE                             R7 R3
       12 MOVE                             R8 R4
       13 LOADK                            R9 K5 ["[%s]"]
       14 LOADK                            R10 K6 ["[)%s]"]
       15 LOADB                            R11 1
       16 LOADB                            R12 1
       17 CALL                             R5 7 1
       18 JUMPIFNOT                        R5 ; [+6]
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R0
       21 MOVE                             R7 R1
       22 MOVE                             R8 R2
       23 CALL                             R5 3 1
       24 RETURN                           R5 1
       25 LOADB                            R5 0
       26 RETURN                           R5 1

PROTO_6:
        0 GETIMPORT                        R3 K2 [string.find]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K3 ["else"]
        4 CALL                             R3 2 2
        5 JUMPIFNOT                        R3 ; [+114]
        6 JUMPIFNOT                        R4 ; [+113]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K4 ["MatchBeforeAndAfter"]
       10 MOVE                             R6 R0
       11 MOVE                             R7 R3
       12 MOVE                             R8 R4
       13 LOADK                            R9 K5 ["[%s]"]
       14 LOADK                            R10 K6 ["[)%s]"]
       15 LOADB                            R11 1
       16 LOADB                            R12 1
       17 CALL                             R5 7 1
       18 JUMPIFNOT                        R5 ; [+101]
       19 GETIMPORT                        R5 K2 [string.find]
       21 MOVE                             R6 R1
       22 MOVE                             R7 R0
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R8 R9 K7 ["StartIndex"]
       26 LOADB                            R9 1
       27 CALL                             R5 4 2
       28 GETUPVAL                         R7 1
       29 SUBK                             R8 R5 K8 [1]
       30 SETTABLEKS                       R8 R7 K9 ["EndIndex"]
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R8 R9 K10 ["Lines"]
       35 DUPTABLE                         R9 K14 [{"LineNo", "Text", "Offset"}]
       36 SETTABLEKS                       R2 R9 K11 ["LineNo"]
       38 GETUPVAL                         R13 1
       39 GETTABLEKS                       R12 R13 K7 ["StartIndex"]
       41 GETUPVAL                         R14 1
       42 GETTABLEKS                       R13 R14 K9 ["EndIndex"]
       44 FASTCALL3                        STRING_SUB R1 R12 R13
       46 MOVE                             R11 R1
       47 GETIMPORT                        R10 K16 [string.sub]
       49 CALL                             R10 3 1
       50 SETTABLEKS                       R10 R9 K12 ["Text"]
       52 GETUPVAL                         R12 1
       53 GETTABLEKS                       R11 R12 K7 ["StartIndex"]
       55 SUBK                             R10 R11 K8 [1]
       56 SETTABLEKS                       R10 R9 K13 ["Offset"]
       58 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       60 GETIMPORT                        R7 K19 [table.insert]
       62 CALL                             R7 2 0
       63 GETUPVAL                         R8 1
       64 GETTABLEKS                       R7 R8 K20 ["Parent"]
       66 JUMPIFNOT                        R7 ; [+10]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R7 R8 K20 ["Parent"]
       70 SETUPVAL                         R7 1
       71 GETUPVAL                         R7 1
       72 SETTABLEKS                       R5 R7 K7 ["StartIndex"]
       74 GETUPVAL                         R7 1
       75 SETTABLEKS                       R6 R7 K9 ["EndIndex"]
       77 GETUPVAL                         R9 1
       78 GETTABLEKS                       R8 R9 K10 ["Lines"]
       80 DUPTABLE                         R9 K14 [{"LineNo", "Text", "Offset"}]
       81 SETTABLEKS                       R2 R9 K11 ["LineNo"]
       83 GETUPVAL                         R13 1
       84 GETTABLEKS                       R12 R13 K7 ["StartIndex"]
       86 SUBK                             R13 R5 K8 [1]
       87 FASTCALL3                        STRING_SUB R1 R12 R13
       89 MOVE                             R11 R1
       90 GETIMPORT                        R10 K16 [string.sub]
       92 CALL                             R10 3 1
       93 SETTABLEKS                       R10 R9 K12 ["Text"]
       95 GETUPVAL                         R12 1
       96 GETTABLEKS                       R11 R12 K7 ["StartIndex"]
       98 SUBK                             R10 R11 K8 [1]
       99 SETTABLEKS                       R10 R9 K13 ["Offset"]
      101 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      103 GETIMPORT                        R7 K19 [table.insert]
      105 CALL                             R7 2 0
      106 GETUPVAL                         R8 2
      107 GETTABLEKS                       R7 R8 K21 ["new"]
      109 ADDK                             R8 R6 K8 [1]
      110 ADDK                             R9 R6 K8 [1]
      111 CALL                             R7 2 1
      112 GETUPVAL                         R8 1
      113 MOVE                             R10 R7
      114 NAMECALL                         R8 R8 K22 ["AddChild"]
      116 CALL                             R8 2 0
      117 SETUPVAL                         R7 1
      118 LOADB                            R8 1
      119 RETURN                           R8 1
      120 LOADB                            R5 0
      121 RETURN                           R5 1

PROTO_7:
        0 GETIMPORT                        R3 K2 [string.find]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K3 ["elseif"]
        4 CALL                             R3 2 2
        5 JUMPIFNOT                        R3 ; [+19]
        6 JUMPIFNOT                        R4 ; [+18]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K4 ["MatchBeforeAndAfter"]
       10 MOVE                             R6 R0
       11 MOVE                             R7 R3
       12 MOVE                             R8 R4
       13 LOADK                            R9 K5 ["[%s]"]
       14 LOADK                            R10 K6 ["[)%s]"]
       15 LOADB                            R11 1
       16 LOADB                            R12 1
       17 CALL                             R5 7 1
       18 JUMPIFNOT                        R5 ; [+6]
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R0
       21 MOVE                             R7 R1
       22 MOVE                             R8 R2
       23 CALL                             R5 3 1
       24 RETURN                           R5 1
       25 LOADB                            R5 0
       26 RETURN                           R5 1

PROTO_8:
        0 GETIMPORT                        R3 K2 [string.find]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K3 ["until"]
        4 CALL                             R3 2 2
        5 JUMPIFNOT                        R3 ; [+19]
        6 JUMPIFNOT                        R4 ; [+18]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K4 ["MatchBeforeAndAfter"]
       10 MOVE                             R6 R0
       11 MOVE                             R7 R3
       12 MOVE                             R8 R4
       13 LOADK                            R9 K5 [""]
       14 LOADK                            R10 K6 ["[(]"]
       15 LOADB                            R11 1
       16 LOADB                            R12 0
       17 CALL                             R5 7 1
       18 JUMPIFNOT                        R5 ; [+6]
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R0
       21 MOVE                             R7 R1
       22 MOVE                             R8 R2
       23 CALL                             R5 3 1
       24 RETURN                           R5 1
       25 LOADB                            R5 0
       26 RETURN                           R5 1

PROTO_9:
        0 JUMPIFEQKS                       R0 K0 ["local"] ; [+3]
        2 LOADB                            R3 0
        3 RETURN                           R3 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["FindFirstWholeWord"]
        7 MOVE                             R4 R1
        8 MOVE                             R5 R0
        9 GETUPVAL                         R6 1
       10 CALL                             R3 3 2
       11 JUMPIFNOT                        R3 ; [+41]
       12 JUMPIFNOT                        R4 ; [+40]
       13 ADDK                             R7 R4 K2 [1]
       14 ADDK                             R8 R4 K3 [10]
       15 FASTCALL3                        STRING_SUB R1 R7 R8
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K6 [string.sub]
       20 CALL                             R5 3 1
       21 JUMPIFNOTEQKS                    R5 K7 [" function "] ; [+5]
       23 ADDK                             R6 R4 K2 [1]
       24 SETUPVAL                         R6 1
       25 LOADB                            R6 0
       26 RETURN                           R6 1
       27 ADDK                             R8 R4 K2 [1]
       28 FASTCALL1                        STRING_LEN R1 ; [+3]
       29 MOVE                             R10 R1
       30 GETIMPORT                        R9 K9 [string.len]
       32 CALL                             R9 1 1
       33 FASTCALL3                        STRING_SUB R1 R8 R9
       35 MOVE                             R7 R1
       36 GETIMPORT                        R6 K6 [string.sub]
       38 CALL                             R6 3 1
       39 FASTCALL1                        STRING_LEN R6 ; [+3]
       40 MOVE                             R8 R6
       41 GETIMPORT                        R7 K9 [string.len]
       43 CALL                             R7 1 1
       44 LOADN                            R8 0
       45 JUMPIFNOTLT                      R8 R7 ; [+5]
       47 GETUPVAL                         R7 2
       48 MOVE                             R8 R6
       49 MOVE                             R9 R2
       50 CALL                             R7 2 0
       51 ADDK                             R7 R4 K2 [1]
       52 SETUPVAL                         R7 1
       53 LOADB                            R5 1
       54 RETURN                           R5 1

PROTO_10:
        0 LOADN                            R2 1
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 LOADN                            R3 1
        4 SETTABLEKS                       R3 R2 K0 ["StartIndex"]
        6 GETUPVAL                         R2 1
        7 LOADN                            R3 1
        8 SETTABLEKS                       R3 R2 K1 ["EndIndex"]
       10 LOADK                            R4 K2 ["%S+"]
       11 NAMECALL                         R2 R0 K3 ["gmatch"]
       13 CALL                             R2 2 3
       14 FORGPREP                         R2
       15 GETIMPORT                        R8 K6 [string.find]
       17 MOVE                             R9 R5
       18 LOADK                            R10 K7 ["function"]
       19 CALL                             R8 2 2
       20 JUMPIFNOT                        R8 ; [+20]
       21 JUMPIFNOT                        R9 ; [+19]
       22 GETUPVAL                         R11 2
       23 GETTABLEKS                       R10 R11 K8 ["MatchBeforeAndAfter"]
       25 MOVE                             R11 R5
       26 MOVE                             R12 R8
       27 MOVE                             R13 R9
       28 LOADK                            R14 K9 ["[%s=,]"]
       29 LOADK                            R15 K10 ["[%s\r\n(]"]
       30 LOADB                            R16 1
       31 LOADB                            R17 1
       32 CALL                             R10 7 1
       33 JUMPIFNOT                        R10 ; [+7]
       34 GETUPVAL                         R10 3
       35 MOVE                             R11 R5
       36 MOVE                             R12 R0
       37 MOVE                             R13 R1
       38 CALL                             R10 3 1
       39 MOVE                             R7 R10
       40 JUMP                             ; [+1]
       41 LOADB                            R7 0
       42 JUMPIFNOT                        R7 ; [+1]
       43 JUMP                             ; [+115]
       44 JUMPIFEQKS                       R5 K11 ["repeat"] ; [+5]
       46 JUMPIFEQKS                       R5 K12 ["do"] ; [+3]
       48 JUMPIFNOTEQKS                    R5 K13 ["then"] ; [+7]
       50 GETUPVAL                         R7 3
       51 MOVE                             R8 R5
       52 MOVE                             R9 R0
       53 MOVE                             R10 R1
       54 CALL                             R7 3 1
       55 JUMP                             ; [+1]
       56 LOADB                            R7 0
       57 JUMPIFNOT                        R7 ; [+1]
       58 JUMP                             ; [+100]
       59 GETIMPORT                        R8 K6 [string.find]
       61 MOVE                             R9 R5
       62 LOADK                            R10 K14 ["end"]
       63 CALL                             R8 2 2
       64 JUMPIFNOT                        R8 ; [+20]
       65 JUMPIFNOT                        R9 ; [+19]
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R10 R11 K8 ["MatchBeforeAndAfter"]
       69 MOVE                             R11 R5
       70 MOVE                             R12 R8
       71 MOVE                             R13 R9
       72 LOADK                            R14 K15 ["[%s]"]
       73 LOADK                            R15 K16 ["[)%s]"]
       74 LOADB                            R16 1
       75 LOADB                            R17 1
       76 CALL                             R10 7 1
       77 JUMPIFNOT                        R10 ; [+7]
       78 GETUPVAL                         R10 4
       79 MOVE                             R11 R5
       80 MOVE                             R12 R0
       81 MOVE                             R13 R1
       82 CALL                             R10 3 1
       83 MOVE                             R7 R10
       84 JUMP                             ; [+1]
       85 LOADB                            R7 0
       86 JUMPIFNOT                        R7 ; [+1]
       87 JUMP                             ; [+71]
       88 GETIMPORT                        R8 K6 [string.find]
       90 MOVE                             R9 R5
       91 LOADK                            R10 K17 ["until"]
       92 CALL                             R8 2 2
       93 JUMPIFNOT                        R8 ; [+20]
       94 JUMPIFNOT                        R9 ; [+19]
       95 GETUPVAL                         R11 2
       96 GETTABLEKS                       R10 R11 K8 ["MatchBeforeAndAfter"]
       98 MOVE                             R11 R5
       99 MOVE                             R12 R8
      100 MOVE                             R13 R9
      101 LOADK                            R14 K18 [""]
      102 LOADK                            R15 K19 ["[(]"]
      103 LOADB                            R16 1
      104 LOADB                            R17 0
      105 CALL                             R10 7 1
      106 JUMPIFNOT                        R10 ; [+7]
      107 GETUPVAL                         R10 4
      108 MOVE                             R11 R5
      109 MOVE                             R12 R0
      110 MOVE                             R13 R1
      111 CALL                             R10 3 1
      112 MOVE                             R7 R10
      113 JUMP                             ; [+1]
      114 LOADB                            R7 0
      115 JUMPIFNOT                        R7 ; [+1]
      116 JUMP                             ; [+42]
      117 GETUPVAL                         R7 5
      118 MOVE                             R8 R5
      119 MOVE                             R9 R0
      120 MOVE                             R10 R1
      121 CALL                             R7 3 1
      122 JUMPIFNOT                        R7 ; [+1]
      123 JUMP                             ; [+35]
      124 GETIMPORT                        R8 K6 [string.find]
      126 MOVE                             R9 R5
      127 LOADK                            R10 K20 ["elseif"]
      128 CALL                             R8 2 2
      129 JUMPIFNOT                        R8 ; [+20]
      130 JUMPIFNOT                        R9 ; [+19]
      131 GETUPVAL                         R11 2
      132 GETTABLEKS                       R10 R11 K8 ["MatchBeforeAndAfter"]
      134 MOVE                             R11 R5
      135 MOVE                             R12 R8
      136 MOVE                             R13 R9
      137 LOADK                            R14 K15 ["[%s]"]
      138 LOADK                            R15 K16 ["[)%s]"]
      139 LOADB                            R16 1
      140 LOADB                            R17 1
      141 CALL                             R10 7 1
      142 JUMPIFNOT                        R10 ; [+7]
      143 GETUPVAL                         R10 4
      144 MOVE                             R11 R5
      145 MOVE                             R12 R0
      146 MOVE                             R13 R1
      147 CALL                             R10 3 1
      148 MOVE                             R7 R10
      149 JUMP                             ; [+1]
      150 LOADB                            R7 0
      151 JUMPIFNOT                        R7 ; [+1]
      152 JUMP                             ; [+6]
      153 GETUPVAL                         R7 6
      154 MOVE                             R8 R5
      155 MOVE                             R9 R0
      156 MOVE                             R10 R1
      157 CALL                             R7 3 1
      158 JUMPIF                           R7 ; [0]
      159 FORGLOOP                         R2 1 ; [-145]
      161 GETUPVAL                         R5 1
      162 GETTABLEKS                       R4 R5 K1 ["EndIndex"]
      164 FASTCALL1                        STRING_LEN R0 ; [+3]
      165 MOVE                             R6 R0
      166 GETIMPORT                        R5 K22 [string.len]
      168 CALL                             R5 1 1
      169 FASTCALL3                        STRING_SUB R0 R4 R5
      171 MOVE                             R3 R0
      172 GETIMPORT                        R2 K24 [string.sub]
      174 CALL                             R2 3 1
      175 GETUPVAL                         R3 6
      176 LOADK                            R4 K25 ["local"]
      177 MOVE                             R5 R2
      178 MOVE                             R6 R1
      179 CALL                             R3 3 0
      180 GETUPVAL                         R5 1
      181 GETTABLEKS                       R4 R5 K26 ["Lines"]
      183 DUPTABLE                         R5 K30 [{"LineNo", "Text", "Offset"}]
      184 SETTABLEKS                       R1 R5 K27 ["LineNo"]
      186 SETTABLEKS                       R2 R5 K28 ["Text"]
      188 GETUPVAL                         R8 1
      189 GETTABLEKS                       R7 R8 K1 ["EndIndex"]
      191 SUBK                             R6 R7 K31 [1]
      192 SETTABLEKS                       R6 R5 K29 ["Offset"]
      194 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
      196 GETIMPORT                        R3 K34 [table.insert]
      198 CALL                             R3 2 0
      199 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R2 R1 K1 ["GetRoot"]
        6 CALL                             R2 1 1
        7 LOADNIL                          R3
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          REF R2
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          REF R2
       14 CAPTURE                          UPVAL U3
       15 NEWCLOSURE                       R6 P2
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R5
       18 NEWCLOSURE                       R7 P3
       19 CAPTURE                          VAL R5
       20 NEWCLOSURE                       R8 P4
       21 CAPTURE                          REF R2
       22 NEWCLOSURE                       R9 P5
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R8
       25 NEWCLOSURE                       R10 P6
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          REF R2
       28 CAPTURE                          UPVAL U3
       29 NEWCLOSURE                       R11 P7
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R8
       32 NEWCLOSURE                       R12 P8
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R8
       35 NEWCLOSURE                       R13 P9
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          REF R3
       38 CAPTURE                          VAL R4
       39 NEWCLOSURE                       R14 P10
       40 CAPTURE                          REF R3
       41 CAPTURE                          REF R2
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R10
       46 CAPTURE                          VAL R13
       47 GETUPVAL                         R15 4
       48 MOVE                             R17 R0
       49 NAMECALL                         R15 R15 K2 ["GetEditorSource"]
       51 CALL                             R15 2 1
       52 GETUPVAL                         R16 4
       53 MOVE                             R18 R15
       54 NAMECALL                         R16 R16 K3 ["StripComments"]
       56 CALL                             R16 2 1
       57 GETUPVAL                         R18 2
       58 GETTABLEKS                       R17 R18 K4 ["ForEachLine"]
       60 MOVE                             R18 R16
       61 NEWCLOSURE                       R19 P11
       62 CAPTURE                          VAL R14
       63 CALL                             R17 2 0
       64 CLOSEUPVALS                      R2
       65 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ScriptEditorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["R15Migrator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R4 R1 K8 ["Src"]
       15 GETTABLEKS                       R3 R4 K9 ["Util"]
       17 GETTABLEKS                       R2 R3 K10 ["ScriptAnalysis"]
       19 GETIMPORT                        R3 K12 [require]
       21 GETTABLEKS                       R4 R2 K13 ["StringUtil"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K12 [require]
       26 GETTABLEKS                       R5 R2 K14 ["StatementParser"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K12 [require]
       31 GETTABLEKS                       R6 R2 K15 ["CodeBlock"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K12 [require]
       36 GETTABLEKS                       R7 R2 K16 ["BlockTree"]
       38 CALL                             R6 1 1
       39 DUPCLOSURE                       R7 K17 [PROTO_12]
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R0
       45 RETURN                           R7 1
