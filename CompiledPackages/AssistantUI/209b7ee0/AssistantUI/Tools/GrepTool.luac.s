PROTO_0:
        0 LOADK                            R4 K0 ["^%s*(.-)%s*$"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 1
        4 OR                               R1 R2 R0
        5 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["([^\r\n]*)\r?\n?"]
        3 NAMECALL                         R2 R0 K1 ["gmatch"]
        5 CALL                             R2 2 3
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R5
       11 GETIMPORT                        R7 K4 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 1 ; [-8]
       16 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R2 R0
        1 MOVE                             R3 R1
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 GETTABLEN                        R10 R7 1
        6 GETTABLEN                        R11 R7 2
        7 NAMECALL                         R8 R2 K0 ["gsub"]
        9 CALL                             R8 3 1
       10 MOVE                             R2 R8
       11 FORGLOOP                         R3 2 ; [-7]
       13 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R3 K0 ["%(%?:"]
        1 LOADK                            R4 K1 ["("]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R4 K3 ["\\(%d+)"]
        6 LOADK                            R5 K4 ["%%%1"]
        7 NAMECALL                         R2 R1 K2 ["gsub"]
        9 CALL                             R2 3 1
       10 MOVE                             R1 R2
       11 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["{%d"]
        3 NAMECALL                         R2 R0 K1 ["find"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+7]
        7 FASTCALL2K                       TABLE_INSERT R1 K2 ; [+5]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K2 ["Quantifiers {n}, {n,}, {n,m} are not supported due to Lua pattern limitations"]
       11 GETIMPORT                        R2 K5 [table.insert]
       13 CALL                             R2 2 0
       14 LOADK                            R4 K6 ["%(%?[=!<]"]
       15 NAMECALL                         R2 R0 K1 ["find"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+7]
       19 FASTCALL2K                       TABLE_INSERT R1 K7 ; [+5]
       21 MOVE                             R3 R1
       22 LOADK                            R4 K7 ["Lookahead/lookbehind assertions (?=), (?!), (?<=), (?<!) are not supported due to Lua pattern limitations"]
       23 GETIMPORT                        R2 K5 [table.insert]
       25 CALL                             R2 2 0
       26 LOADK                            R4 K8 ["\\b"]
       27 NAMECALL                         R2 R0 K1 ["find"]
       29 CALL                             R2 2 1
       30 JUMPIF                           R2 ; [+5]
       31 LOADK                            R4 K9 ["\\B"]
       32 NAMECALL                         R2 R0 K1 ["find"]
       34 CALL                             R2 2 1
       35 JUMPIFNOT                        R2 ; [+7]
       36 FASTCALL2K                       TABLE_INSERT R1 K10 ; [+5]
       38 MOVE                             R3 R1
       39 LOADK                            R4 K10 ["Word boundaries \\b and \\B are not supported due to Lua pattern limitations"]
       40 GETIMPORT                        R2 K5 [table.insert]
       42 CALL                             R2 2 0
       43 LOADK                            R4 K11 ["\\[nrtfv]"]
       44 NAMECALL                         R2 R0 K1 ["find"]
       46 CALL                             R2 2 1
       47 JUMPIFNOT                        R2 ; [+7]
       48 FASTCALL2K                       TABLE_INSERT R1 K12 ; [+5]
       50 MOVE                             R3 R1
       51 LOADK                            R4 K12 ["Escape sequences \\n, \\r, \\t, \\f, \\v are not supported due to Lua pattern limitations (use literal characters)"]
       52 GETIMPORT                        R2 K5 [table.insert]
       54 CALL                             R2 2 0
       55 LOADK                            R4 K13 ["\\x"]
       56 NAMECALL                         R2 R0 K1 ["find"]
       58 CALL                             R2 2 1
       59 JUMPIF                           R2 ; [+5]
       60 LOADK                            R4 K14 ["\\u"]
       61 NAMECALL                         R2 R0 K1 ["find"]
       63 CALL                             R2 2 1
       64 JUMPIFNOT                        R2 ; [+7]
       65 FASTCALL2K                       TABLE_INSERT R1 K15 ; [+5]
       67 MOVE                             R3 R1
       68 LOADK                            R4 K15 ["Hex (\\x) and Unicode (\\u) escape sequences are not supported due to Lua pattern limitations"]
       69 GETIMPORT                        R2 K5 [table.insert]
       71 CALL                             R2 2 0
       72 LENGTH                           R3 R1
       73 LOADN                            R4 0
       74 JUMPIFNOTLT                      R4 R3 ; [+7]
       76 GETIMPORT                        R2 K17 [table.concat]
       78 MOVE                             R3 R1
       79 LOADK                            R4 K18 ["; "]
       80 CALL                             R2 2 1
       81 JUMPIF                           R2 ; [+1]
       82 LOADNIL                          R2
       83 MOVE                             R3 R0
       84 MOVE                             R4 R2
       85 RETURN                           R3 2

PROTO_5:
        0 LOADN                            R1 1
        1 LENGTH                           R2 R0
        2 JUMPIFNOTLE                      R1 R2 ; [+16]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R1
        6 NAMECALL                         R2 R0 K0 ["sub"]
        8 CALL                             R2 3 1
        9 JUMPIFNOTEQKS                    R2 K1 ["\\"] ; [+3]
       11 ADDK                             R1 R1 K2 [2]
       12 JUMP                             ; [+5]
       13 JUMPIFNOTEQKS                    R2 K3 ["|"] ; [+3]
       15 LOADB                            R3 1
       16 RETURN                           R3 1
       17 ADDK                             R1 R1 K4 [1]
       18 JUMPBACK                         ; [-18]
       19 LOADB                            R2 0
       20 RETURN                           R2 1

PROTO_6:
        0 LOADN                            R2 1
        1 JUMPIFLT                         R1 R2 ; [+11]
        3 LENGTH                           R2 R0
        4 JUMPIFLT                         R2 R1 ; [+8]
        6 MOVE                             R4 R1
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R0 K0 ["sub"]
       10 CALL                             R2 3 1
       11 JUMPIFEQKS                       R2 K1 ["("] ; [+3]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 LOADN                            R2 1
       16 ADDK                             R3 R1 K2 [1]
       17 LENGTH                           R4 R0
       18 JUMPIFNOTLE                      R3 R4 ; [+31]
       20 LOADN                            R4 0
       21 JUMPIFNOTLT                      R4 R2 ; [+28]
       23 MOVE                             R6 R3
       24 MOVE                             R7 R3
       25 NAMECALL                         R4 R0 K0 ["sub"]
       27 CALL                             R4 3 1
       28 JUMPIFNOTEQKS                    R4 K3 ["\\"] ; [+9]
       30 ADDK                             R5 R3 K2 [1]
       31 LENGTH                           R6 R0
       32 JUMPIFNOTLE                      R5 R6 ; [+3]
       34 ADDK                             R3 R3 K4 [2]
       35 JUMP                             ; [+13]
       36 ADDK                             R3 R3 K2 [1]
       37 JUMP                             ; [+11]
       38 JUMPIFNOTEQKS                    R4 K1 ["("] ; [+4]
       40 ADDK                             R2 R2 K2 [1]
       41 ADDK                             R3 R3 K2 [1]
       42 JUMP                             ; [+6]
       43 JUMPIFNOTEQKS                    R4 K5 [")"] ; [+4]
       45 SUBK                             R2 R2 K2 [1]
       46 ADDK                             R3 R3 K2 [1]
       47 JUMP                             ; [+1]
       48 ADDK                             R3 R3 K2 [1]
       49 JUMPBACK                         ; [-33]
       50 JUMPIFNOTEQKN                    R2 K6 [0] ; [+3]
       52 SUBK                             R4 R3 K2 [1]
       53 JUMPIF                           R4 ; [+1]
       54 LOADNIL                          R4
       55 RETURN                           R4 1

PROTO_7:
        0 LOADN                            R4 1
        1 LENGTH                           R2 R0
        2 LOADN                            R3 1
        3 FORNPREP                         R2
        4 GETTABLE                         R6 R0 R4
        5 MOVE                             R7 R1
        6 CONCAT                           R5 R6 R7
        7 SETTABLE                         R5 R0 R4
        8 FORNLOOP                         R2
        9 RETURN                           R0 1

PROTO_8:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R8 R1
        7 LOADNIL                          R9
        8 LOADNIL                          R10
        9 FORGPREP                         R8
       10 MOVE                             R16 R7
       11 MOVE                             R17 R12
       12 CONCAT                           R15 R16 R17
       13 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       15 MOVE                             R14 R2
       16 GETIMPORT                        R13 K2 [table.insert]
       18 CALL                             R13 2 0
       19 FORGLOOP                         R8 2 ; [-10]
       21 FORGLOOP                         R3 2 ; [-16]
       23 RETURN                           R2 1

PROTO_9:
        0 ORK                              R2 R1 K0 [1]
        1 NEWTABLE                         R3 0 1
        3 NEWTABLE                         R4 0 1
        5 LOADK                            R5 K1 [""]
        6 SETLIST                          R4 R5 1 [1]
        8 SETLIST                          R3 R4 1 [1]
       10 LOADN                            R4 1
       11 LENGTH                           R5 R0
       12 JUMPIFNOTLE                      R2 R5 ; [+103]
       14 MOVE                             R7 R2
       15 MOVE                             R8 R2
       16 NAMECALL                         R5 R0 K2 ["sub"]
       18 CALL                             R5 3 1
       19 JUMPIFNOTEQKS                    R5 K3 ["\\"] ; [+35]
       21 LENGTH                           R6 R0
       22 JUMPIFNOTLT                      R2 R6 ; [+20]
       24 MOVE                             R7 R5
       25 ADDK                             R10 R2 K0 [1]
       26 ADDK                             R11 R2 K0 [1]
       27 NAMECALL                         R8 R0 K2 ["sub"]
       29 CALL                             R8 3 1
       30 CONCAT                           R6 R7 R8
       31 GETTABLE                         R7 R3 R4
       32 LOADN                            R10 1
       33 LENGTH                           R8 R7
       34 LOADN                            R9 1
       35 FORNPREP                         R8
       36 GETTABLE                         R12 R7 R10
       37 MOVE                             R13 R6
       38 CONCAT                           R11 R12 R13
       39 SETTABLE                         R11 R7 R10
       40 FORNLOOP                         R8
       41 ADDK                             R2 R2 K4 [2]
       42 JUMP                             ; [+72]
       43 GETTABLE                         R6 R3 R4
       44 LOADN                            R9 1
       45 LENGTH                           R7 R6
       46 LOADN                            R8 1
       47 FORNPREP                         R7
       48 GETTABLE                         R11 R6 R9
       49 MOVE                             R12 R5
       50 CONCAT                           R10 R11 R12
       51 SETTABLE                         R10 R6 R9
       52 FORNLOOP                         R7
       53 ADDK                             R2 R2 K0 [1]
       54 JUMP                             ; [+60]
       55 JUMPIFNOTEQKS                    R5 K5 ["("] ; [+34]
       57 ADDK                             R6 R2 K0 [1]
       58 GETUPVAL                         R7 0
       59 MOVE                             R8 R0
       60 MOVE                             R9 R2
       61 CALL                             R7 2 1
       62 JUMPIF                           R7 ; [+12]
       63 GETTABLE                         R8 R3 R4
       64 LOADN                            R11 1
       65 LENGTH                           R9 R8
       66 LOADN                            R10 1
       67 FORNPREP                         R9
       68 GETTABLE                         R13 R8 R11
       69 MOVE                             R14 R5
       70 CONCAT                           R12 R13 R14
       71 SETTABLE                         R12 R8 R11
       72 FORNLOOP                         R9
       73 ADDK                             R2 R2 K0 [1]
       74 JUMP                             ; [+40]
       75 MOVE                             R10 R6
       76 SUBK                             R11 R7 K0 [1]
       77 NAMECALL                         R8 R0 K2 ["sub"]
       79 CALL                             R8 3 1
       80 GETUPVAL                         R9 1
       81 MOVE                             R10 R8
       82 CALL                             R9 1 1
       83 GETUPVAL                         R10 2
       84 GETTABLE                         R11 R3 R4
       85 MOVE                             R12 R9
       86 CALL                             R10 2 1
       87 SETTABLE                         R10 R3 R4
       88 ADDK                             R2 R7 K0 [1]
       89 JUMP                             ; [+25]
       90 JUMPIFNOTEQKS                    R5 K6 [")"] ; [+2]
       92 JUMP                             ; [+23]
       93 JUMPIFNOTEQKS                    R5 K7 ["|"] ; [+10]
       95 ADDK                             R4 R4 K0 [1]
       96 NEWTABLE                         R6 0 1
       98 LOADK                            R7 K1 [""]
       99 SETLIST                          R6 R7 1 [1]
      101 SETTABLE                         R6 R3 R4
      102 ADDK                             R2 R2 K0 [1]
      103 JUMP                             ; [+11]
      104 GETTABLE                         R6 R3 R4
      105 LOADN                            R9 1
      106 LENGTH                           R7 R6
      107 LOADN                            R8 1
      108 FORNPREP                         R7
      109 GETTABLE                         R11 R6 R9
      110 MOVE                             R12 R5
      111 CONCAT                           R10 R11 R12
      112 SETTABLE                         R10 R6 R9
      113 FORNLOOP                         R7
      114 ADDK                             R2 R2 K0 [1]
      115 JUMPBACK                         ; [-105]
      116 NEWTABLE                         R5 0 0
      118 MOVE                             R6 R3
      119 LOADNIL                          R7
      120 LOADNIL                          R8
      121 FORGPREP                         R6
      122 MOVE                             R11 R10
      123 LOADNIL                          R12
      124 LOADNIL                          R13
      125 FORGPREP                         R11
      126 JUMPIFEQKS                       R15 K1 [""] ; [+8]
      128 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
      130 MOVE                             R17 R5
      131 MOVE                             R18 R15
      132 GETIMPORT                        R16 K10 [table.insert]
      134 CALL                             R16 2 0
      135 FORGLOOP                         R11 2 ; [-10]
      137 FORGLOOP                         R6 2 ; [-16]
      139 LENGTH                           R7 R5
      140 LOADN                            R8 0
      141 JUMPIFNOTLT                      R8 R7 ; [+3]
      143 MOVE                             R6 R5
      144 JUMPIF                           R6 ; [+5]
      145 NEWTABLE                         R6 0 1
      147 LOADK                            R7 K1 [""]
      148 SETLIST                          R6 R7 1 [1]
      150 MOVE                             R7 R2
      151 RETURN                           R6 2

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+7]
        3 NEWTABLE                         R1 0 1
        5 LOADK                            R2 K0 [""]
        6 SETLIST                          R1 R2 1 [1]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 MOVE                             R2 R0
       11 LOADN                            R3 1
       12 CALL                             R1 2 2
       13 LENGTH                           R4 R1
       14 LOADN                            R5 0
       15 JUMPIFNOTLT                      R5 R4 ; [+3]
       17 MOVE                             R3 R1
       18 JUMPIF                           R3 ; [+5]
       19 NEWTABLE                         R3 0 1
       21 MOVE                             R4 R0
       22 SETLIST                          R3 R4 1 [1]
       24 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["find"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 NAMECALL                         R1 R0 K0 ["lower"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 MOVE                             R1 R0
        7 GETUPVAL                         R3 0
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETUPVAL                         R2 1
       10 NAMECALL                         R2 R2 K0 ["lower"]
       12 CALL                             R2 1 1
       13 JUMPIF                           R2 ; [+1]
       14 GETUPVAL                         R2 1
       15 GETIMPORT                        R3 K2 [pcall]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 CALL                             R3 1 2
       21 JUMPIFNOT                        R3 ; [+1]
       22 RETURN                           R4 1
       23 GETIMPORT                        R5 K4 [warn]
       25 GETIMPORT                        R6 K7 [string.format]
       27 LOADK                            R7 K8 ["Pattern failed: '%s' -> '%s', using literal search"]
       28 GETUPVAL                         R8 2
       29 GETUPVAL                         R9 1
       30 CALL                             R6 3 -1
       31 CALL                             R5 -1 0
       32 GETUPVAL                         R8 2
       33 LOADN                            R9 1
       34 LOADB                            R10 1
       35 NAMECALL                         R6 R1 K9 ["find"]
       37 CALL                             R6 4 1
       38 JUMPIFNOTEQKNIL                  R6 ; [+2]
       40 LOADB                            R5 0 +1
       41 LOADB                            R5 1
       42 RETURN                           R5 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 2
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETIMPORT                        R4 K1 [warn]
        6 LOADK                            R6 K2 ["Pattern validation warnings: "]
        7 MOVE                             R7 R3
        8 CONCAT                           R5 R6 R7
        9 CALL                             R4 1 0
       10 MOVE                             R4 R2
       11 MOVE                             R5 R4
       12 NEWTABLE                         R6 0 6
       14 NEWTABLE                         R7 0 2
       16 LOADK                            R8 K3 ["\\s"]
       17 LOADK                            R9 K4 ["%%s"]
       18 SETLIST                          R7 R8 2 [1]
       20 NEWTABLE                         R8 0 2
       22 LOADK                            R9 K5 ["\\S"]
       23 LOADK                            R10 K6 ["%%S"]
       24 SETLIST                          R8 R9 2 [1]
       26 NEWTABLE                         R9 0 2
       28 LOADK                            R10 K7 ["\\d"]
       29 LOADK                            R11 K8 ["%%d"]
       30 SETLIST                          R9 R10 2 [1]
       32 NEWTABLE                         R10 0 2
       34 LOADK                            R11 K9 ["\\D"]
       35 LOADK                            R12 K10 ["%%D"]
       36 SETLIST                          R10 R11 2 [1]
       38 NEWTABLE                         R11 0 2
       40 LOADK                            R12 K11 ["\\w"]
       41 LOADK                            R13 K12 ["%%w"]
       42 SETLIST                          R11 R12 2 [1]
       44 NEWTABLE                         R12 0 2
       46 LOADK                            R13 K13 ["\\W"]
       47 LOADK                            R14 K14 ["%%W"]
       48 SETLIST                          R12 R13 2 [1]
       50 SETLIST                          R6 R7 6 [1]
       52 MOVE                             R7 R5
       53 MOVE                             R8 R6
       54 LOADNIL                          R9
       55 LOADNIL                          R10
       56 FORGPREP                         R8
       57 GETTABLEN                        R15 R12 1
       58 GETTABLEN                        R16 R12 2
       59 NAMECALL                         R13 R7 K15 ["gsub"]
       61 CALL                             R13 3 1
       62 MOVE                             R7 R13
       63 FORGLOOP                         R8 2 ; [-7]
       65 MOVE                             R4 R7
       66 MOVE                             R5 R4
       67 NEWTABLE                         R6 0 14
       69 NEWTABLE                         R7 0 2
       71 LOADK                            R8 K16 ["\\%."]
       72 LOADK                            R9 K17 ["ESCAPED_DOT"]
       73 SETLIST                          R7 R8 2 [1]
       75 NEWTABLE                         R8 0 2
       77 LOADK                            R9 K18 ["\\%("]
       78 LOADK                            R10 K19 ["ESCAPED_LPAREN"]
       79 SETLIST                          R8 R9 2 [1]
       81 NEWTABLE                         R9 0 2
       83 LOADK                            R10 K20 ["\\%)"]
       84 LOADK                            R11 K21 ["ESCAPED_RPAREN"]
       85 SETLIST                          R9 R10 2 [1]
       87 NEWTABLE                         R10 0 2
       89 LOADK                            R11 K22 ["\\%["]
       90 LOADK                            R12 K23 ["ESCAPED_LBRACKET"]
       91 SETLIST                          R10 R11 2 [1]
       93 NEWTABLE                         R11 0 2
       95 LOADK                            R12 K24 ["\\%]"]
       96 LOADK                            R13 K25 ["ESCAPED_RBRACKET"]
       97 SETLIST                          R11 R12 2 [1]
       99 NEWTABLE                         R12 0 2
      101 LOADK                            R13 K26 ["\\%{"]
      102 LOADK                            R14 K27 ["ESCAPED_LBRACE"]
      103 SETLIST                          R12 R13 2 [1]
      105 NEWTABLE                         R13 0 2
      107 LOADK                            R14 K28 ["\\%}"]
      108 LOADK                            R15 K29 ["ESCAPED_RBRACE"]
      109 SETLIST                          R13 R14 2 [1]
      111 NEWTABLE                         R14 0 2
      113 LOADK                            R15 K30 ["\\%+"]
      114 LOADK                            R16 K31 ["ESCAPED_PLUS"]
      115 SETLIST                          R14 R15 2 [1]
      117 NEWTABLE                         R15 0 2
      119 LOADK                            R16 K32 ["\\%*"]
      120 LOADK                            R17 K33 ["ESCAPED_STAR"]
      121 SETLIST                          R15 R16 2 [1]
      123 NEWTABLE                         R16 0 2
      125 LOADK                            R17 K34 ["\\%?"]
      126 LOADK                            R18 K35 ["ESCAPED_QUESTION"]
      127 SETLIST                          R16 R17 2 [1]
      129 NEWTABLE                         R17 0 2
      131 LOADK                            R18 K36 ["\\%-"]
      132 LOADK                            R19 K37 ["ESCAPED_DASH"]
      133 SETLIST                          R17 R18 2 [1]
      135 NEWTABLE                         R18 0 2
      137 LOADK                            R19 K38 ["\\%^"]
      138 LOADK                            R20 K39 ["ESCAPED_CARET"]
      139 SETLIST                          R18 R19 2 [1]
      141 NEWTABLE                         R19 0 2
      143 LOADK                            R20 K40 ["\\%$"]
      144 LOADK                            R21 K41 ["ESCAPED_DOLLAR"]
      145 SETLIST                          R19 R20 2 [1]
      147 NEWTABLE                         R20 0 2
      149 LOADK                            R21 K42 ["\\|"]
      150 LOADK                            R22 K43 ["ESCAPED_PIPE"]
      151 SETLIST                          R20 R21 2 [1]
      153 SETLIST                          R6 R7 14 [1]
      155 MOVE                             R7 R5
      156 MOVE                             R8 R6
      157 LOADNIL                          R9
      158 LOADNIL                          R10
      159 FORGPREP                         R8
      160 GETTABLEN                        R15 R12 1
      161 GETTABLEN                        R16 R12 2
      162 NAMECALL                         R13 R7 K15 ["gsub"]
      164 CALL                             R13 3 1
      165 MOVE                             R7 R13
      166 FORGLOOP                         R8 2 ; [-7]
      168 MOVE                             R4 R7
      169 MOVE                             R5 R4
      170 LOADK                            R8 K44 ["%(%?:"]
      171 LOADK                            R9 K45 ["("]
      172 NAMECALL                         R6 R5 K15 ["gsub"]
      174 CALL                             R6 3 1
      175 LOADK                            R9 K46 ["\\(%d+)"]
      176 LOADK                            R10 K47 ["%%%1"]
      177 NAMECALL                         R7 R6 K15 ["gsub"]
      179 CALL                             R7 3 1
      180 MOVE                             R6 R7
      181 MOVE                             R4 R6
      182 MOVE                             R5 R4
      183 NEWTABLE                         R6 0 14
      185 NEWTABLE                         R7 0 2
      187 LOADK                            R8 K17 ["ESCAPED_DOT"]
      188 LOADK                            R9 K48 ["%%."]
      189 SETLIST                          R7 R8 2 [1]
      191 NEWTABLE                         R8 0 2
      193 LOADK                            R9 K19 ["ESCAPED_LPAREN"]
      194 LOADK                            R10 K49 ["%%("]
      195 SETLIST                          R8 R9 2 [1]
      197 NEWTABLE                         R9 0 2
      199 LOADK                            R10 K21 ["ESCAPED_RPAREN"]
      200 LOADK                            R11 K50 ["%%)"]
      201 SETLIST                          R9 R10 2 [1]
      203 NEWTABLE                         R10 0 2
      205 LOADK                            R11 K23 ["ESCAPED_LBRACKET"]
      206 LOADK                            R12 K51 ["%%["]
      207 SETLIST                          R10 R11 2 [1]
      209 NEWTABLE                         R11 0 2
      211 LOADK                            R12 K25 ["ESCAPED_RBRACKET"]
      212 LOADK                            R13 K52 ["%%]"]
      213 SETLIST                          R11 R12 2 [1]
      215 NEWTABLE                         R12 0 2
      217 LOADK                            R13 K27 ["ESCAPED_LBRACE"]
      218 LOADK                            R14 K53 ["{"]
      219 SETLIST                          R12 R13 2 [1]
      221 NEWTABLE                         R13 0 2
      223 LOADK                            R14 K29 ["ESCAPED_RBRACE"]
      224 LOADK                            R15 K54 ["}"]
      225 SETLIST                          R13 R14 2 [1]
      227 NEWTABLE                         R14 0 2
      229 LOADK                            R15 K31 ["ESCAPED_PLUS"]
      230 LOADK                            R16 K55 ["%%+"]
      231 SETLIST                          R14 R15 2 [1]
      233 NEWTABLE                         R15 0 2
      235 LOADK                            R16 K33 ["ESCAPED_STAR"]
      236 LOADK                            R17 K56 ["%%*"]
      237 SETLIST                          R15 R16 2 [1]
      239 NEWTABLE                         R16 0 2
      241 LOADK                            R17 K35 ["ESCAPED_QUESTION"]
      242 LOADK                            R18 K57 ["%%?"]
      243 SETLIST                          R16 R17 2 [1]
      245 NEWTABLE                         R17 0 2
      247 LOADK                            R18 K37 ["ESCAPED_DASH"]
      248 LOADK                            R19 K58 ["%%-"]
      249 SETLIST                          R17 R18 2 [1]
      251 NEWTABLE                         R18 0 2
      253 LOADK                            R19 K39 ["ESCAPED_CARET"]
      254 LOADK                            R20 K59 ["%%^"]
      255 SETLIST                          R18 R19 2 [1]
      257 NEWTABLE                         R19 0 2
      259 LOADK                            R20 K41 ["ESCAPED_DOLLAR"]
      260 LOADK                            R21 K60 ["%%$"]
      261 SETLIST                          R19 R20 2 [1]
      263 NEWTABLE                         R20 0 2
      265 LOADK                            R21 K43 ["ESCAPED_PIPE"]
      266 LOADK                            R22 K61 ["|"]
      267 SETLIST                          R20 R21 2 [1]
      269 SETLIST                          R6 R7 14 [1]
      271 MOVE                             R7 R5
      272 MOVE                             R8 R6
      273 LOADNIL                          R9
      274 LOADNIL                          R10
      275 FORGPREP                         R8
      276 GETTABLEN                        R15 R12 1
      277 GETTABLEN                        R16 R12 2
      278 NAMECALL                         R13 R7 K15 ["gsub"]
      280 CALL                             R13 3 1
      281 MOVE                             R7 R13
      282 FORGLOOP                         R8 2 ; [-7]
      284 MOVE                             R4 R7
      285 NEWCLOSURE                       R5 P0
      286 CAPTURE                          VAL R1
      287 CAPTURE                          REF R4
      288 CAPTURE                          VAL R0
      289 CLOSEUPVALS                      R4
      290 RETURN                           R5 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 MOVE                             R6 R5
        5 MOVE                             R7 R0
        6 CALL                             R6 1 1
        7 JUMPIFNOT                        R6 ; [+2]
        8 LOADB                            R7 1
        9 RETURN                           R7 1
       10 FORGLOOP                         R1 2 ; [-7]
       12 LOADB                            R1 0
       13 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+25]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 NEWTABLE                         R3 0 0
        9 MOVE                             R4 R2
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETUPVAL                         R9 2
       14 MOVE                             R10 R8
       15 MOVE                             R11 R1
       16 CALL                             R9 2 1
       17 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       19 MOVE                             R11 R3
       20 MOVE                             R12 R9
       21 GETIMPORT                        R10 K2 [table.insert]
       23 CALL                             R10 2 0
       24 FORGLOOP                         R4 2 ; [-12]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1
       29 GETUPVAL                         R2 2
       30 MOVE                             R3 R0
       31 MOVE                             R4 R1
       32 CALL                             R2 2 1
       33 RETURN                           R2 1

PROTO_16:
        0 LOADK                            R4 K0 ["([^,]+)"]
        1 NAMECALL                         R2 R1 K1 ["gmatch"]
        3 CALL                             R2 2 3
        4 FORGPREP                         R2
        5 LOADK                            R10 K2 ["^%s*(.-)%s*$"]
        6 NAMECALL                         R8 R5 K3 ["match"]
        8 CALL                             R8 2 1
        9 OR                               R7 R8 R5
       10 JUMPIFNOT                        R7 ; [+7]
       11 GETUPVAL                         R8 0
       12 MOVE                             R9 R0
       13 MOVE                             R10 R7
       14 CALL                             R8 2 1
       15 JUMPIFNOT                        R8 ; [+2]
       16 LOADB                            R8 1
       17 RETURN                           R8 1
       18 FORGLOOP                         R2 1 ; [-14]
       20 LOADB                            R2 0
       21 RETURN                           R2 1

PROTO_17:
        0 LOADK                            R4 K0 ["{[^}]+}"]
        1 NAMECALL                         R2 R1 K1 ["find"]
        3 CALL                             R2 2 2
        4 JUMPIFNOT                        R2 ; [+1]
        5 JUMPIF                           R3 ; [+2]
        6 LOADB                            R4 0
        7 RETURN                           R4 1
        8 LOADN                            R6 1
        9 SUBK                             R7 R2 K2 [1]
       10 NAMECALL                         R4 R1 K3 ["sub"]
       12 CALL                             R4 3 1
       13 ADDK                             R7 R3 K2 [1]
       14 NAMECALL                         R5 R1 K3 ["sub"]
       16 CALL                             R5 2 1
       17 ADDK                             R8 R2 K2 [1]
       18 SUBK                             R9 R3 K2 [1]
       19 NAMECALL                         R6 R1 K3 ["sub"]
       21 CALL                             R6 3 1
       22 LOADK                            R9 K4 ["([^,]+)"]
       23 NAMECALL                         R7 R6 K5 ["gmatch"]
       25 CALL                             R7 2 3
       26 FORGPREP                         R7
       27 LOADK                            R15 K6 ["^%s*(.-)%s*$"]
       28 NAMECALL                         R13 R10 K7 ["match"]
       30 CALL                             R13 2 1
       31 OR                               R12 R13 R10
       32 JUMPIFNOT                        R12 ; [+11]
       33 MOVE                             R14 R4
       34 MOVE                             R15 R12
       35 MOVE                             R16 R5
       36 CONCAT                           R13 R14 R16
       37 GETUPVAL                         R14 0
       38 MOVE                             R15 R0
       39 MOVE                             R16 R13
       40 CALL                             R14 2 1
       41 JUMPIFNOT                        R14 ; [+2]
       42 LOADB                            R14 1
       43 RETURN                           R14 1
       44 FORGLOOP                         R7 1 ; [-18]
       46 LOADB                            R7 0
       47 RETURN                           R7 1

PROTO_18:
        0 MOVE                             R1 R0
        1 LOADK                            R4 K0 ["([%+%-%[%]%(%)%^%$])"]
        2 LOADK                            R5 K1 ["%%%1"]
        3 NAMECALL                         R2 R1 K2 ["gsub"]
        5 CALL                             R2 3 1
        6 MOVE                             R1 R2
        7 LOADK                            R4 K3 ["%."]
        8 LOADK                            R5 K4 ["%%."]
        9 NAMECALL                         R2 R1 K2 ["gsub"]
       11 CALL                             R2 3 1
       12 MOVE                             R1 R2
       13 LOADK                            R4 K5 ["%*%*/%*"]
       14 LOADK                            R5 K6 ["GLOB_RECURSIVE_ALL"]
       15 NAMECALL                         R2 R1 K2 ["gsub"]
       17 CALL                             R2 3 1
       18 MOVE                             R1 R2
       19 LOADK                            R4 K7 ["%*%*"]
       20 LOADK                            R5 K8 ["GLOB_DOUBLESTAR"]
       21 NAMECALL                         R2 R1 K2 ["gsub"]
       23 CALL                             R2 3 1
       24 MOVE                             R1 R2
       25 LOADK                            R4 K9 ["%*"]
       26 LOADK                            R5 K10 ["GLOB_STAR"]
       27 NAMECALL                         R2 R1 K2 ["gsub"]
       29 CALL                             R2 3 1
       30 MOVE                             R1 R2
       31 LOADK                            R4 K11 ["%?"]
       32 LOADK                            R5 K12 ["GLOB_QUESTION"]
       33 NAMECALL                         R2 R1 K2 ["gsub"]
       35 CALL                             R2 3 1
       36 MOVE                             R1 R2
       37 LOADK                            R4 K13 ["/"]
       38 LOADK                            R5 K4 ["%%."]
       39 NAMECALL                         R2 R1 K2 ["gsub"]
       41 CALL                             R2 3 1
       42 MOVE                             R1 R2
       43 LOADK                            R4 K6 ["GLOB_RECURSIVE_ALL"]
       44 LOADK                            R5 K14 [".*"]
       45 NAMECALL                         R2 R1 K2 ["gsub"]
       47 CALL                             R2 3 1
       48 MOVE                             R1 R2
       49 LOADK                            R4 K8 ["GLOB_DOUBLESTAR"]
       50 LOADK                            R5 K14 [".*"]
       51 NAMECALL                         R2 R1 K2 ["gsub"]
       53 CALL                             R2 3 1
       54 MOVE                             R1 R2
       55 LOADK                            R4 K10 ["GLOB_STAR"]
       56 LOADK                            R5 K15 ["[^%%.]*"]
       57 NAMECALL                         R2 R1 K2 ["gsub"]
       59 CALL                             R2 3 1
       60 MOVE                             R1 R2
       61 LOADK                            R4 K12 ["GLOB_QUESTION"]
       62 LOADK                            R5 K16 ["[^%%.]"]
       63 NAMECALL                         R2 R1 K2 ["gsub"]
       65 CALL                             R2 3 1
       66 MOVE                             R1 R2
       67 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["lower"]
        3 CALL                             R1 1 1
        4 LOADK                            R4 K1 ["^"]
        5 GETUPVAL                         R7 1
        6 NAMECALL                         R7 R7 K0 ["lower"]
        8 CALL                             R7 1 1
        9 MOVE                             R5 R7
       10 LOADK                            R6 K2 ["$"]
       11 CONCAT                           R3 R4 R6
       12 NAMECALL                         R1 R1 K3 ["match"]
       14 CALL                             R1 2 1
       15 JUMPIFNOTEQKNIL                  R1 ; [+2]
       17 LOADB                            R0 0 +1
       18 LOADB                            R0 1
       19 RETURN                           R0 1

PROTO_20:
        0 JUMPIFNOT                        R1 ; [+2]
        1 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 LOADK                            R4 K1 [","]
        6 NAMECALL                         R2 R1 K2 ["find"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 1
       14 RETURN                           R2 1
       15 LOADK                            R4 K3 ["{[^}]+}"]
       16 NAMECALL                         R2 R1 K2 ["find"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+5]
       20 GETUPVAL                         R2 1
       21 MOVE                             R3 R0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 RETURN                           R2 1
       25 GETUPVAL                         R2 2
       26 MOVE                             R3 R1
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K5 [pcall]
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 CALL                             R3 1 2
       34 JUMPIFNOT                        R3 ; [+2]
       35 MOVE                             R5 R4
       36 JUMPIF                           R5 ; [+1]
       37 LOADB                            R5 0
       38 RETURN                           R5 1

PROTO_21:
        0 JUMPIF                           R1 ; [+2]
        1 LOADB                            R2 1
        2 RETURN                           R2 1
        3 GETTABLEKS                       R3 R0 K0 ["ClassName"]
        5 JUMPIFEQ                         R3 R1 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_22:
        0 JUMPIFNOT                        R1 ; [+2]
        1 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_23:
        0 LOADK                            R4 K0 ["Script"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+10]
        5 LOADK                            R4 K2 ["LocalScript"]
        6 NAMECALL                         R2 R1 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+5]
       10 LOADK                            R4 K3 ["ModuleScript"]
       11 NAMECALL                         R2 R1 K1 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+8]
       15 GETTABLEKS                       R2 R0 K4 ["getScriptSource"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 JUMPIFEQKS                       R2 K5 [""] ; [+2]
       22 RETURN                           R2 1
       23 LOADNIL                          R2
       24 RETURN                           R2 1

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["ClassName"]
        2 JUMPIFEQKS                       R2 K1 ["Script"] ; [+7]
        4 JUMPIFEQKS                       R2 K2 ["LocalScript"] ; [+5]
        6 JUMPIFEQKS                       R2 K3 ["ModuleScript"] ; [+3]
        8 LOADB                            R3 0
        9 RETURN                           R3 1
       10 GETTABLEKS                       R4 R1 K4 ["script_class"]
       12 JUMPIF                           R4 ; [+2]
       13 LOADB                            R3 1
       14 JUMP                             ; [+6]
       15 GETTABLEKS                       R5 R0 K0 ["ClassName"]
       17 JUMPIFEQ                         R5 R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 JUMPIF                           R3 ; [+2]
       22 LOADB                            R3 0
       23 RETURN                           R3 1
       24 GETTABLEKS                       R3 R1 K5 ["instance_type"]
       26 JUMPIFNOT                        R3 ; [+34]
       27 GETTABLEKS                       R3 R1 K5 ["instance_type"]
       29 JUMPIFEQKS                       R3 K6 [""] ; [+31]
       31 LOADB                            R3 0
       32 GETTABLEKS                       R4 R0 K7 ["Parent"]
       34 JUMPIFNOT                        R4 ; [+23]
       35 GETIMPORT                        R5 K9 [game]
       37 JUMPIFEQ                         R4 R5 ; [+20]
       39 MOVE                             R6 R4
       40 GETTABLEKS                       R7 R1 K5 ["instance_type"]
       42 JUMPIFNOT                        R7 ; [+2]
       43 JUMPIFNOTEQKS                    R7 K6 [""] ; [+3]
       45 LOADB                            R5 1
       46 JUMP                             ; [+5]
       47 MOVE                             R10 R7
       48 NAMECALL                         R8 R6 K10 ["IsA"]
       50 CALL                             R8 2 1
       51 MOVE                             R5 R8
       52 JUMPIFNOT                        R5 ; [+2]
       53 LOADB                            R3 1
       54 JUMP                             ; [+3]
       55 GETTABLEKS                       R4 R4 K7 ["Parent"]
       57 JUMPBACK                         ; [-24]
       58 JUMPIF                           R3 ; [+2]
       59 LOADB                            R5 0
       60 RETURN                           R5 1
       61 LOADB                            R3 1
       62 RETURN                           R3 1

PROTO_25:
        0 NAMECALL                         R2 R0 K0 ["GetFullName"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["isPathExcluded"]
        6 MOVE                             R4 R2
        7 CALL                             R3 1 1
        8 JUMPIFNOT                        R3 ; [+2]
        9 LOADB                            R3 0
       10 RETURN                           R3 1
       11 GETTABLEKS                       R3 R1 K2 ["path"]
       13 JUMPIFNOT                        R3 ; [+10]
       14 GETTABLEKS                       R5 R1 K2 ["path"]
       16 LOADN                            R6 1
       17 LOADB                            R7 1
       18 NAMECALL                         R3 R2 K3 ["find"]
       20 CALL                             R3 4 1
       21 JUMPIF                           R3 ; [+2]
       22 LOADB                            R3 0
       23 RETURN                           R3 1
       24 GETTABLEKS                       R3 R1 K4 ["glob"]
       26 JUMPIFNOT                        R3 ; [+8]
       27 GETUPVAL                         R3 1
       28 MOVE                             R4 R2
       29 GETTABLEKS                       R5 R1 K4 ["glob"]
       31 CALL                             R3 2 1
       32 JUMPIF                           R3 ; [+2]
       33 LOADB                            R3 0
       34 RETURN                           R3 1
       35 LOADB                            R3 1
       36 RETURN                           R3 1

PROTO_26:
        0 NEWTABLE                         R3 0 0
        2 JUMPIFNOT                        R2 ; [+65]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R0
        5 CALL                             R4 1 1
        6 JUMPIFNOT                        R4 ; [+105]
        7 NEWTABLE                         R5 0 0
        9 LOADK                            R8 K0 ["([^\r\n]*)\r?\n?"]
       10 NAMECALL                         R6 R0 K1 ["gmatch"]
       12 CALL                             R6 2 3
       13 FORGPREP                         R6
       14 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       16 MOVE                             R12 R5
       17 MOVE                             R13 R9
       18 GETIMPORT                        R11 K4 [table.insert]
       20 CALL                             R11 2 0
       21 FORGLOOP                         R6 1 ; [-8]
       23 MOVE                             R4 R5
       24 MOVE                             R5 R4
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 JUMPIFEQKS                       R9 K5 [""] ; [+16]
       30 DUPTABLE                         R10 K9 [{"lineNum", "content", "isMatch"}]
       31 SETTABLEKS                       R8 R10 K6 ["lineNum"]
       33 SETTABLEKS                       R9 R10 K7 ["content"]
       35 LOADB                            R11 1
       36 SETTABLEKS                       R11 R10 K8 ["isMatch"]
       38 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       40 MOVE                             R12 R3
       41 MOVE                             R13 R10
       42 GETIMPORT                        R11 K4 [table.insert]
       44 CALL                             R11 2 0
       45 FORGLOOP                         R5 2 ; [-18]
       47 LENGTH                           R5 R3
       48 JUMPIFNOTEQKN                    R5 K10 [0] ; [+63]
       50 DUPTABLE                         R5 K9 [{"lineNum", "content", "isMatch"}]
       51 LOADN                            R6 1
       52 SETTABLEKS                       R6 R5 K6 ["lineNum"]
       54 LOADK                            R6 K11 ["Multiline match found"]
       55 SETTABLEKS                       R6 R5 K7 ["content"]
       57 LOADB                            R6 1
       58 SETTABLEKS                       R6 R5 K8 ["isMatch"]
       60 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
       62 MOVE                             R7 R3
       63 MOVE                             R8 R5
       64 GETIMPORT                        R6 K4 [table.insert]
       66 CALL                             R6 2 0
       67 RETURN                           R3 1
       68 NEWTABLE                         R5 0 0
       70 LOADK                            R8 K0 ["([^\r\n]*)\r?\n?"]
       71 NAMECALL                         R6 R0 K1 ["gmatch"]
       73 CALL                             R6 2 3
       74 FORGPREP                         R6
       75 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       77 MOVE                             R12 R5
       78 MOVE                             R13 R9
       79 GETIMPORT                        R11 K4 [table.insert]
       81 CALL                             R11 2 0
       82 FORGLOOP                         R6 1 ; [-8]
       84 MOVE                             R4 R5
       85 MOVE                             R5 R4
       86 LOADNIL                          R6
       87 LOADNIL                          R7
       88 FORGPREP                         R5
       89 JUMPIFEQKS                       R9 K5 [""] ; [+20]
       91 MOVE                             R10 R1
       92 MOVE                             R11 R9
       93 CALL                             R10 1 1
       94 JUMPIFNOT                        R10 ; [+15]
       95 DUPTABLE                         R10 K9 [{"lineNum", "content", "isMatch"}]
       96 SETTABLEKS                       R8 R10 K6 ["lineNum"]
       98 SETTABLEKS                       R9 R10 K7 ["content"]
      100 LOADB                            R11 1
      101 SETTABLEKS                       R11 R10 K8 ["isMatch"]
      103 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      105 MOVE                             R12 R3
      106 MOVE                             R13 R10
      107 GETIMPORT                        R11 K4 [table.insert]
      109 CALL                             R11 2 0
      110 FORGLOOP                         R5 2 ; [-22]
      112 RETURN                           R3 1

PROTO_27:
        0 MOVE                             R10 R0
        1 GETIMPORT                        R11 K2 [string.format]
        3 LOADK                            R12 K3 ["File: %s"]
        4 MOVE                             R13 R1
        5 CALL                             R11 2 -1
        6 FASTCALL                         TABLE_INSERT ; [+2]
        7 GETIMPORT                        R9 K6 [table.insert]
        9 CALL                             R9 -1 0
       10 ADDK                             R8 R8 K7 [1]
       11 NEWTABLE                         R10 0 0
       13 LOADK                            R13 K8 ["([^\r\n]*)\r?\n?"]
       14 NAMECALL                         R11 R2 K9 ["gmatch"]
       16 CALL                             R11 2 3
       17 FORGPREP                         R11
       18 FASTCALL2                        TABLE_INSERT R10 R14 ; [+5]
       20 MOVE                             R17 R10
       21 MOVE                             R18 R14
       22 GETIMPORT                        R16 K6 [table.insert]
       24 CALL                             R16 2 0
       25 FORGLOOP                         R11 1 ; [-8]
       27 MOVE                             R9 R10
       28 NEWTABLE                         R10 0 0
       30 MOVE                             R11 R3
       31 LOADNIL                          R12
       32 LOADNIL                          R13
       33 FORGPREP                         R11
       34 JUMPIFLE                         R7 R8 ; [+112]
       36 GETTABLEKS                       R16 R15 K10 ["lineNum"]
       38 LOADN                            R20 1
       39 SUB                              R21 R16 R5
       40 FASTCALL2                        MATH_MAX R20 R21 ; [+3]
       42 GETIMPORT                        R19 K13 [math.max]
       44 CALL                             R19 2 1
       45 SUBK                             R17 R16 K7 [1]
       46 LOADN                            R18 1
       47 FORNPREP                         R17
       48 GETTABLE                         R20 R9 R19
       49 JUMPIFNOT                        R20 ; [+25]
       50 GETTABLE                         R20 R10 R19
       51 JUMPIF                           R20 ; [+23]
       52 JUMPIFNOT                        R4 ; [+7]
       53 GETIMPORT                        R20 K2 [string.format]
       55 LOADK                            R21 K14 ["%6d:%s"]
       56 MOVE                             R22 R19
       57 LOADK                            R23 K15 [""]
       58 CALL                             R20 3 1
       59 JUMPIF                           R20 ; [+1]
       60 LOADK                            R20 K15 [""]
       61 MOVE                             R24 R20
       62 GETTABLE                         R25 R9 R19
       63 CONCAT                           R23 R24 R25
       64 FASTCALL2                        TABLE_INSERT R0 R23 ; [+4]
       66 MOVE                             R22 R0
       67 GETIMPORT                        R21 K6 [table.insert]
       69 CALL                             R21 2 0
       70 LOADB                            R21 1
       71 SETTABLE                         R21 R10 R19
       72 ADDK                             R8 R8 K7 [1]
       73 JUMPIFLE                         R7 R8 ; [+2]
       75 FORNLOOP                         R17
       76 JUMPIFLE                         R7 R8 ; [+70]
       78 GETTABLE                         R17 R10 R16
       79 JUMPIF                           R17 ; [+22]
       80 JUMPIFNOT                        R4 ; [+7]
       81 GETIMPORT                        R17 K2 [string.format]
       83 LOADK                            R18 K14 ["%6d:%s"]
       84 MOVE                             R19 R16
       85 LOADK                            R20 K15 [""]
       86 CALL                             R17 3 1
       87 JUMPIF                           R17 ; [+1]
       88 LOADK                            R17 K15 [""]
       89 MOVE                             R21 R17
       90 GETTABLEKS                       R22 R15 K16 ["content"]
       92 CONCAT                           R20 R21 R22
       93 FASTCALL2                        TABLE_INSERT R0 R20 ; [+4]
       95 MOVE                             R19 R0
       96 GETIMPORT                        R18 K6 [table.insert]
       98 CALL                             R18 2 0
       99 LOADB                            R18 1
      100 SETTABLE                         R18 R10 R16
      101 ADDK                             R8 R8 K7 [1]
      102 JUMPIFLE                         R7 R8 ; [+44]
      104 ADDK                             R19 R16 K7 [1]
      105 LENGTH                           R21 R9
      106 ADD                              R22 R16 R6
      107 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
      109 GETIMPORT                        R20 K18 [math.min]
      111 CALL                             R20 2 1
      112 MOVE                             R17 R20
      113 LOADN                            R18 1
      114 FORNPREP                         R17
      115 GETTABLE                         R20 R9 R19
      116 JUMPIFNOT                        R20 ; [+25]
      117 GETTABLE                         R20 R10 R19
      118 JUMPIF                           R20 ; [+23]
      119 JUMPIFNOT                        R4 ; [+7]
      120 GETIMPORT                        R20 K2 [string.format]
      122 LOADK                            R21 K14 ["%6d:%s"]
      123 MOVE                             R22 R19
      124 LOADK                            R23 K15 [""]
      125 CALL                             R20 3 1
      126 JUMPIF                           R20 ; [+1]
      127 LOADK                            R20 K15 [""]
      128 MOVE                             R24 R20
      129 GETTABLE                         R25 R9 R19
      130 CONCAT                           R23 R24 R25
      131 FASTCALL2                        TABLE_INSERT R0 R23 ; [+4]
      133 MOVE                             R22 R0
      134 GETIMPORT                        R21 K6 [table.insert]
      136 CALL                             R21 2 0
      137 LOADB                            R21 1
      138 SETTABLE                         R21 R10 R19
      139 ADDK                             R8 R8 K7 [1]
      140 JUMPIFLE                         R7 R8 ; [+2]
      142 FORNLOOP                         R17
      143 JUMPIFLE                         R7 R8 ; [+3]
      145 FORGLOOP                         R11 2 ; [-112]
      147 JUMPIFNOTLT                      R8 R7 ; [+9]
      149 FASTCALL2K                       TABLE_INSERT R0 K15 ; [+5]
      151 MOVE                             R12 R0
      152 LOADK                            R13 K15 [""]
      153 GETIMPORT                        R11 K6 [table.insert]
      155 CALL                             R11 2 0
      156 ADDK                             R8 R8 K7 [1]
      157 RETURN                           R8 1

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["pattern"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 JUMPIFNOTEQKS                    R1 K1 [""] ; [+4]
        5 LOADNIL                          R2
        6 LOADK                            R3 K2 ["Error: Pattern cannot be empty"]
        7 RETURN                           R2 2
        8 GETTABLEKS                       R3 R0 K4 ["output_mode"]
       10 ORK                              R2 R3 K3 ["files_with_matches"]
       11 GETTABLEKS                       R4 R0 K6 ["-i"]
       13 ORK                              R3 R4 K5 [False]
       14 GETTABLEKS                       R5 R0 K7 ["-n"]
       16 ORK                              R4 R5 K5 [False]
       17 GETTABLEKS                       R5 R0 K8 ["-B"]
       19 JUMPIF                           R5 ; [+4]
       20 GETTABLEKS                       R5 R0 K9 ["-C"]
       22 JUMPIF                           R5 ; [+1]
       23 LOADN                            R5 0
       24 GETTABLEKS                       R6 R0 K10 ["-A"]
       26 JUMPIF                           R6 ; [+4]
       27 GETTABLEKS                       R6 R0 K9 ["-C"]
       29 JUMPIF                           R6 ; [+1]
       30 LOADN                            R6 0
       31 GETTABLEKS                       R8 R0 K12 ["head_limit"]
       33 ORK                              R7 R8 K11 [50]
       34 GETTABLEKS                       R9 R0 K13 ["multiline"]
       36 ORK                              R8 R9 K5 [False]
       37 GETUPVAL                         R9 0
       38 MOVE                             R10 R1
       39 MOVE                             R11 R3
       40 CALL                             R9 2 1
       41 GETUPVAL                         R10 1
       42 MOVE                             R11 R1
       43 CALL                             R10 1 1
       44 DUPTABLE                         R11 K22 [{"pattern", "outputMode", "caseInsensitive", "showLineNumbers", "contextBefore", "contextAfter", "headLimit", "multiline", "patternMatcher", "hasAlternation"}]
       45 SETTABLEKS                       R1 R11 K0 ["pattern"]
       47 SETTABLEKS                       R2 R11 K14 ["outputMode"]
       49 SETTABLEKS                       R3 R11 K15 ["caseInsensitive"]
       51 SETTABLEKS                       R4 R11 K16 ["showLineNumbers"]
       53 SETTABLEKS                       R5 R11 K17 ["contextBefore"]
       55 SETTABLEKS                       R6 R11 K18 ["contextAfter"]
       57 SETTABLEKS                       R7 R11 K19 ["headLimit"]
       59 SETTABLEKS                       R8 R11 K13 ["multiline"]
       61 SETTABLEKS                       R9 R11 K20 ["patternMatcher"]
       63 SETTABLEKS                       R10 R11 K21 ["hasAlternation"]
       65 LOADNIL                          R12
       66 RETURN                           R11 2

PROTO_29:
        0 LOADK                            R8 K0 ["Script"]
        1 NAMECALL                         R6 R1 K1 ["IsA"]
        3 CALL                             R6 2 1
        4 JUMPIF                           R6 ; [+10]
        5 LOADK                            R8 K2 ["LocalScript"]
        6 NAMECALL                         R6 R1 K1 ["IsA"]
        8 CALL                             R6 2 1
        9 JUMPIF                           R6 ; [+5]
       10 LOADK                            R8 K3 ["ModuleScript"]
       11 NAMECALL                         R6 R1 K1 ["IsA"]
       13 CALL                             R6 2 1
       14 JUMPIFNOT                        R6 ; [+9]
       15 GETTABLEKS                       R6 R0 K4 ["getScriptSource"]
       17 MOVE                             R7 R1
       18 CALL                             R6 1 1
       19 JUMPIFNOT                        R6 ; [+4]
       20 JUMPIFEQKS                       R6 K5 [""] ; [+3]
       22 MOVE                             R5 R6
       23 JUMP                             ; [+1]
       24 LOADNIL                          R5
       25 JUMPIF                           R5 ; [+1]
       26 RETURN                           R4 1
       27 NAMECALL                         R6 R1 K6 ["GetFullName"]
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 0
       31 MOVE                             R8 R5
       32 GETTABLEKS                       R9 R2 K7 ["patternMatcher"]
       34 GETTABLEKS                       R10 R2 K8 ["multiline"]
       36 CALL                             R7 3 1
       37 LENGTH                           R8 R7
       38 LOADN                            R9 0
       39 JUMPIFNOTLT                      R9 R8 ; [+51]
       41 GETTABLEKS                       R8 R2 K9 ["outputMode"]
       43 JUMPIFNOTEQKS                    R8 K10 ["files_with_matches"] ; [+10]
       45 FASTCALL2                        TABLE_INSERT R3 R6 ; [+5]
       47 MOVE                             R9 R3
       48 MOVE                             R10 R6
       49 GETIMPORT                        R8 K13 [table.insert]
       51 CALL                             R8 2 0
       52 ADDK                             R4 R4 K14 [1]
       53 RETURN                           R4 1
       54 GETTABLEKS                       R8 R2 K9 ["outputMode"]
       56 JUMPIFNOTEQKS                    R8 K15 ["count"] ; [+14]
       58 MOVE                             R9 R3
       59 GETIMPORT                        R10 K18 [string.format]
       61 LOADK                            R11 K19 ["%d:%s"]
       62 LENGTH                           R12 R7
       63 MOVE                             R13 R6
       64 CALL                             R10 3 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R8 K13 [table.insert]
       68 CALL                             R8 -1 0
       69 ADDK                             R4 R4 K14 [1]
       70 RETURN                           R4 1
       71 GETTABLEKS                       R8 R2 K9 ["outputMode"]
       73 JUMPIFNOTEQKS                    R8 K20 ["content"] ; [+17]
       75 GETUPVAL                         R8 1
       76 MOVE                             R9 R3
       77 MOVE                             R10 R6
       78 MOVE                             R11 R5
       79 MOVE                             R12 R7
       80 GETTABLEKS                       R13 R2 K21 ["showLineNumbers"]
       82 GETTABLEKS                       R14 R2 K22 ["contextBefore"]
       84 GETTABLEKS                       R15 R2 K23 ["contextAfter"]
       86 GETTABLEKS                       R16 R2 K24 ["headLimit"]
       88 MOVE                             R17 R4
       89 CALL                             R8 9 1
       90 MOVE                             R4 R8
       91 RETURN                           R4 1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 2
        3 JUMPIF                           R3 ; [+1]
        4 JUMPIF                           R2 ; [+2]
        5 ORK                              R4 R3 K0 ["Unknown error creating search context"]
        6 RETURN                           R4 1
        7 NEWTABLE                         R4 0 0
        9 LOADN                            R5 0
       10 GETIMPORT                        R6 K2 [game]
       12 NAMECALL                         R6 R6 K3 ["GetDescendants"]
       14 CALL                             R6 1 3
       15 FORGPREP                         R6
       16 GETTABLEKS                       R11 R2 K4 ["headLimit"]
       18 JUMPIFLE                         R11 R5 ; [+21]
       20 GETUPVAL                         R11 1
       21 MOVE                             R12 R10
       22 MOVE                             R13 R1
       23 CALL                             R11 2 1
       24 JUMPIFNOT                        R11 ; [+13]
       25 GETUPVAL                         R11 2
       26 MOVE                             R12 R10
       27 MOVE                             R13 R1
       28 CALL                             R11 2 1
       29 JUMPIFNOT                        R11 ; [+8]
       30 GETUPVAL                         R11 3
       31 MOVE                             R12 R0
       32 MOVE                             R13 R10
       33 MOVE                             R14 R2
       34 MOVE                             R15 R4
       35 MOVE                             R16 R5
       36 CALL                             R11 5 1
       37 MOVE                             R5 R11
       38 FORGLOOP                         R6 2 ; [-23]
       40 LENGTH                           R6 R4
       41 JUMPIFNOTEQKN                    R6 K5 [0] ; [+3]
       43 LOADK                            R6 K6 ["No matches found for the given query."]
       44 RETURN                           R6 1
       45 GETTABLEKS                       R6 R2 K4 ["headLimit"]
       47 JUMPIFNOTLE                      R6 R5 ; [+8]
       49 FASTCALL2K                       TABLE_INSERT R4 K7 ; [+5]
       51 MOVE                             R7 R4
       52 LOADK                            R8 K7 ["... Search stopped after reaching the output limit."]
       53 GETIMPORT                        R6 K10 [table.insert]
       55 CALL                             R6 2 0
       56 GETIMPORT                        R6 K12 [table.concat]
       58 MOVE                             R7 R4
       59 LOADK                            R8 K13 ["\n"]
       60 CALL                             R6 2 -1
       61 RETURN                           R6 -1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K0 ["addText"]
        9 CALL                             R2 2 1
       10 NAMECALL                         R2 R2 K1 ["build"]
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 LOADK                            R5 K2 ["GrepTool_grep"]
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 NAMECALL                         R3 R1 K3 ["OnHostInvokeAsync"]
       10 CALL                             R3 3 1
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K4 ["define"]
       17 CALL                             R5 0 1
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R7 R8 K5 ["Grep"]
       21 NAMECALL                         R5 R5 K6 ["setName"]
       23 CALL                             R5 2 1
       24 LOADK                            R7 K7 ["A ripgrep style search tool for Roblox game hierarchy with regex support, glob pattern matching, and path based filtering. Output is limited to 50 results by default, override `headLimit` to change the output limit.\n\nKEY FEATURES:\n- Filter by script class (\"Script\", \"LocalScript\", \"ModuleScript\") or instance type\n- Multiple output modes: \"content\" (matching lines), \"files_with_matches\" (file paths), \"count\" (match counts)\n- Context lines and line numbers for detailed analysis\n- Output limiting (default: 50 results)\n- Glob pattern support for file filtering using Unix-style paths\n\nSUPPORTED REGEX FEATURES:\n- Character classes: \\s (whitespace), \\S (non-whitespace), \\d (digits), \\D (non-digits), \\w (word chars), \\W (non-word chars)\n- Anchors: ^ (start of line), $ (end of line)\n- Quantifiers: * (zero or more), + (one or more), ? (zero or one), - (zero or more, non-greedy)\n- Character sets: [abc], [^abc], [a-z], [0-9]\n- Groups: () for capturing groups, (?:) for non-capturing (converted to capturing)\n- Backreferences: \\1, \\2, etc. (converted to Lua %1, %2)\n- Escaped literals: \\., \\(, \\), \\{, \\}, \\+, \\*, \\?, \\^, \\$, etc.\n- Alternation: | (OR operator) - supports simple \"a|b|c\", grouped \"(func|class)Script\", nested \"((a|b)c|d)e\", and mixed \"a(b|c)d|e(f|g)\" patterns\n- Case insensitive matching (via -i flag)\n- Multiline mode (via multiline: true)\n- Any character: . (matches any character except newline)\n\nUNSUPPORTED REGEX FEATURES (due to Lua pattern limitations):\n- Quantifiers: {n}, {n,}, {n,m} (specific repetition counts)\n- Lookahead/lookbehind: (?=), (?!), (?<=), (?<!) \n- Word boundaries: \\b, \\B\n- Escape sequences: \\n, \\r, \\t, \\f, \\v (use literal characters instead)\n- Hex/Unicode escapes: \\x##, \\u####\n- Word boundaries: \\b, \\B\n- Escape sequences: \\n, \\r, \\t, \\f, \\v (use literal characters instead)\n- Hex/Unicode escapes: \\x##, \\u####\n\nGLOB PATTERNS:\n- Use unix style '/' as path separator (converted to Roblox's '.' internally)\n- Dots in patterns are treated as literal characters, not path separators\n- Wildcards: * (single level), ** (multiple levels), ? (single character)\n- Brace expansion: {Script,Module} expands to multiple alternatives\n- Comma separation: Multiple patterns can be comma-separated\n- Examples: \n  * \"Workspace/*\" matches \"Workspace.GameScript\" but not \"Workspace.Scripts.Helper\"\n  * \"Workspace/**/*\" matches all descendants of Workspace\n  * \"*/Scripts/*\" matches any script directly in any Scripts folder  \n  * \"ServerStorage.Config\" matches exactly \"ServerStorage.Config\" (literal dots)\n- Roblox paths like \"Workspace.Scripts.Helper\" match pattern \"Workspace/Scripts/Helper\"\n\nEXAMPLES:\n- Basic search: Grep(\"function.*test\", output_mode: \"files_with_matches\")\n- Character classes: Grep(\"\\\\w+\\\\s*=\\\\s*\\\\d+\", output_mode: \"content\")\n- Anchors: Grep(\"^local\\\\s+\\\\w+\", output_mode: \"content\") or Grep(\"return.*$\", output_mode: \"content\")\n- Groups with backrefs: Grep(\"(function)\\\\s+(\\\\w+)\", output_mode: \"content\")\n- Alternation: Grep(\"function|class|local\", output_mode: \"files_with_matches\")\n- Grouped alternation: Grep(\"(get|set)Property\", output_mode: \"content\")\n- Complex alternation: Grep(\"local\\\\s+(function|class)|return\\\\s+(true|false)\", output_mode: \"content\")\n- Nested alternation: Grep(\"((start|begin)(Test|Spec)|end(Test|Spec))\", output_mode: \"content\")\n- Mixed alternation: Grep(\"(local|global)\\\\s+(function|class)|(public|private)\\\\s+method\", output_mode: \"content\")\n- Case insensitive: Grep(\"ERROR\", \"-i\": true, output_mode: \"files_with_matches\")\n- Script filtering: Grep(\"Position\", script_class: \"LocalScript\", output_mode: \"content\")\n- With context: Grep(\"function.*test\", output_mode: \"content\", \"-C\": 3, \"-n\": true)\n- Multiline: Grep(\"function.*{.*return\", multiline: true, output_mode: \"content\")\n- Glob filtering: Grep(\"local\", glob: \"Workspace/Scripts/*\", output_mode: \"files_with_matches\")\n- Recursive glob: Grep(\"function\", glob: \"ServerStorage/**/*\", output_mode: \"content\")\n"]
       25 NAMECALL                         R5 R5 K8 ["setDescription"]
       27 CALL                             R5 2 1
       28 LOADK                            R7 K9 ["pattern"]
       29 DUPTABLE                         R8 K12 [{"type", "description"}]
       30 LOADK                            R9 K13 ["string"]
       31 SETTABLEKS                       R9 R8 K10 ["type"]
       33 LOADK                            R9 K14 ["The regular expression pattern to search for in file contents"]
       34 SETTABLEKS                       R9 R8 K11 ["description"]
       36 NAMECALL                         R5 R5 K15 ["addArgument"]
       38 CALL                             R5 3 1
       39 LOADK                            R7 K16 ["path"]
       40 DUPTABLE                         R8 K12 [{"type", "description"}]
       41 LOADK                            R9 K13 ["string"]
       42 SETTABLEKS                       R9 R8 K10 ["type"]
       44 LOADK                            R9 K17 ["Substring filter for Roblox paths. Searches entire game hierarchy, only includes scripts whose full path contains this substring. Uses literal string matching (not patterns). Case sensitive."]
       45 SETTABLEKS                       R9 R8 K11 ["description"]
       47 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
       49 CALL                             R5 3 1
       50 LOADK                            R7 K19 ["output_mode"]
       51 DUPTABLE                         R8 K12 [{"type", "description"}]
       52 LOADK                            R9 K13 ["string"]
       53 SETTABLEKS                       R9 R8 K10 ["type"]
       55 LOADK                            R9 K20 ["Output mode: \"content\" shows matching lines (supports -A/-B/-C context, -n line numbers, head_limit), \"files_with_matches\" shows file paths (supports head_limit), \"count\" shows match counts (supports head_limit). Defaults to \"files_with_matches\"."]
       56 SETTABLEKS                       R9 R8 K11 ["description"]
       58 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
       60 CALL                             R5 3 1
       61 LOADK                            R7 K21 ["glob"]
       62 DUPTABLE                         R8 K12 [{"type", "description"}]
       63 LOADK                            R9 K13 ["string"]
       64 SETTABLEKS                       R9 R8 K10 ["type"]
       66 LOADK                            R9 K22 ["Glob pattern to filter files using Unix-style paths. Use \"/\" as path separator (e.g., \"Workspace/Scripts/*\" to match direct children of Scripts folder). Dots in patterns are literal. Supports * (single level), ** (multi-level), ? (single char). Examples: \"ServerStorage/*\", \"Workspace/**/*\", \"*/Utils/*\"."]
       67 SETTABLEKS                       R9 R8 K11 ["description"]
       69 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
       71 CALL                             R5 3 1
       72 LOADK                            R7 K23 ["script_class"]
       73 DUPTABLE                         R8 K25 [{"type", "enum", "description"}]
       74 LOADK                            R9 K13 ["string"]
       75 SETTABLEKS                       R9 R8 K10 ["type"]
       77 NEWTABLE                         R9 0 3
       79 LOADK                            R10 K26 ["Script"]
       80 LOADK                            R11 K27 ["LocalScript"]
       81 LOADK                            R12 K28 ["ModuleScript"]
       82 SETLIST                          R9 R10 3 [1]
       84 SETTABLEKS                       R9 R8 K24 ["enum"]
       86 LOADK                            R9 K29 ["Filter by script class: \"Script\", \"LocalScript\", or \"ModuleScript\". Only applies to script objects. Case sensitive."]
       87 SETTABLEKS                       R9 R8 K11 ["description"]
       89 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
       91 CALL                             R5 3 1
       92 LOADK                            R7 K30 ["instance_type"]
       93 DUPTABLE                         R8 K12 [{"type", "description"}]
       94 LOADK                            R9 K13 ["string"]
       95 SETTABLEKS                       R9 R8 K10 ["type"]
       97 LOADK                            R9 K31 ["Filter by Roblox instance type (e.g., \"Part\", \"Frame\", \"Folder\"). Only searches scripts that are descendants of objects matching this type. Case sensitive."]
       98 SETTABLEKS                       R9 R8 K11 ["description"]
      100 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
      102 CALL                             R5 3 1
      103 LOADK                            R7 K32 ["-i"]
      104 DUPTABLE                         R8 K12 [{"type", "description"}]
      105 LOADK                            R9 K33 ["boolean"]
      106 SETTABLEKS                       R9 R8 K10 ["type"]
      108 LOADK                            R9 K34 ["Case insensitive search. Doesn't affect the behavior of script class or instance type filtering, only pattern matching within files."]
      109 SETTABLEKS                       R9 R8 K11 ["description"]
      111 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
      113 CALL                             R5 3 1
      114 LOADK                            R7 K35 ["-n"]
      115 DUPTABLE                         R8 K12 [{"type", "description"}]
      116 LOADK                            R9 K33 ["boolean"]
      117 SETTABLEKS                       R9 R8 K10 ["type"]
      119 LOADK                            R9 K36 ["Show line numbers in output. Requires output_mode: \"content\", ignored otherwise."]
      120 SETTABLEKS                       R9 R8 K11 ["description"]
      122 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
      124 CALL                             R5 3 1
      125 LOADK                            R7 K37 ["-A"]
      126 DUPTABLE                         R8 K12 [{"type", "description"}]
      127 LOADK                            R9 K38 ["number"]
      128 SETTABLEKS                       R9 R8 K10 ["type"]
      130 LOADK                            R9 K39 ["Number of lines to show after each match. Requires output_mode: \"content\", ignored otherwise."]
      131 SETTABLEKS                       R9 R8 K11 ["description"]
      133 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
      135 CALL                             R5 3 1
      136 LOADK                            R7 K40 ["-B"]
      137 DUPTABLE                         R8 K12 [{"type", "description"}]
      138 LOADK                            R9 K38 ["number"]
      139 SETTABLEKS                       R9 R8 K10 ["type"]
      141 LOADK                            R9 K41 ["Number of lines to show before each match. Requires output_mode: \"content\", ignored otherwise."]
      142 SETTABLEKS                       R9 R8 K11 ["description"]
      144 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
      146 CALL                             R5 3 1
      147 LOADK                            R7 K42 ["-C"]
      148 DUPTABLE                         R8 K12 [{"type", "description"}]
      149 LOADK                            R9 K38 ["number"]
      150 SETTABLEKS                       R9 R8 K10 ["type"]
      152 LOADK                            R9 K43 ["Number of lines to show before and after each match. Requires output_mode: \"content\", ignored otherwise."]
      153 SETTABLEKS                       R9 R8 K11 ["description"]
      155 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
      157 CALL                             R5 3 1
      158 LOADK                            R7 K44 ["multiline"]
      159 DUPTABLE                         R8 K12 [{"type", "description"}]
      160 LOADK                            R9 K33 ["boolean"]
      161 SETTABLEKS                       R9 R8 K10 ["type"]
      163 LOADK                            R9 K45 ["Enable multiline mode where . matches newlines and patterns can span lines. Default: false."]
      164 SETTABLEKS                       R9 R8 K11 ["description"]
      166 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
      168 CALL                             R5 3 1
      169 LOADK                            R7 K46 ["head_limit"]
      170 DUPTABLE                         R8 K12 [{"type", "description"}]
      171 LOADK                            R9 K38 ["number"]
      172 SETTABLEKS                       R9 R8 K10 ["type"]
      174 LOADK                            R9 K47 ["Limit output to first N lines/entries, equivalent to \"| head -N\". Works across all output modes: content (limits output lines), files_with_matches (limits file paths), count (limits count entries). Default: 50."]
      175 SETTABLEKS                       R9 R8 K11 ["description"]
      177 NAMECALL                         R5 R5 K18 ["addOptionalArgument"]
      179 CALL                             R5 3 1
      180 MOVE                             R7 R4
      181 NAMECALL                         R5 R5 K48 ["setHandler"]
      183 CALL                             R5 2 1
      184 NAMECALL                         R5 R5 K49 ["build"]
      186 CALL                             R5 1 1
      187 DUPTABLE                         R6 K51 [{"definition"}]
      188 SETTABLEKS                       R5 R6 K50 ["definition"]
      190 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Tools"]
       25 GETTABLEKS                       R4 R5 K11 ["ToolTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Util"]
       32 GETTABLEKS                       R5 R6 K13 ["ToolUtils"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R2 K12 ["Util"]
       37 GETTABLEKS                       R5 R6 K14 ["ToolBuilder"]
       39 GETTABLEKS                       R7 R2 K12 ["Util"]
       41 GETTABLEKS                       R6 R7 K15 ["ToolResult"]
       43 GETTABLEKS                       R7 R3 K16 ["ToolNames"]
       45 DUPCLOSURE                       R8 K17 [PROTO_0]
       46 DUPCLOSURE                       R9 K18 [PROTO_1]
       47 DUPCLOSURE                       R10 K19 [PROTO_2]
       48 DUPCLOSURE                       R11 K20 [PROTO_3]
       49 DUPCLOSURE                       R12 K21 [PROTO_4]
       50 LOADNIL                          R13
       51 LOADNIL                          R14
       52 LOADNIL                          R15
       53 DUPCLOSURE                       R16 K22 [PROTO_5]
       54 DUPCLOSURE                       R15 K23 [PROTO_6]
       55 DUPCLOSURE                       R17 K24 [PROTO_7]
       56 DUPCLOSURE                       R18 K25 [PROTO_8]
       57 NEWCLOSURE                       R13 P9
       58 CAPTURE                          REF R15
       59 CAPTURE                          REF R14
       60 CAPTURE                          VAL R18
       61 NEWCLOSURE                       R14 P10
       62 CAPTURE                          REF R13
       63 DUPCLOSURE                       R19 K26 [PROTO_13]
       64 CAPTURE                          VAL R12
       65 NEWCLOSURE                       R20 P12
       66 CAPTURE                          VAL R16
       67 CAPTURE                          REF R14
       68 CAPTURE                          VAL R19
       69 LOADNIL                          R21
       70 NEWCLOSURE                       R22 P13
       71 CAPTURE                          REF R21
       72 NEWCLOSURE                       R23 P14
       73 CAPTURE                          REF R21
       74 DUPCLOSURE                       R24 K27 [PROTO_18]
       75 DUPCLOSURE                       R21 K28 [PROTO_20]
       76 CAPTURE                          VAL R22
       77 CAPTURE                          VAL R23
       78 CAPTURE                          VAL R24
       79 DUPCLOSURE                       R25 K29 [PROTO_21]
       80 DUPCLOSURE                       R26 K30 [PROTO_22]
       81 DUPCLOSURE                       R27 K31 [PROTO_23]
       82 DUPCLOSURE                       R28 K32 [PROTO_24]
       83 NEWCLOSURE                       R29 P21
       84 CAPTURE                          VAL R4
       85 CAPTURE                          REF R21
       86 DUPCLOSURE                       R30 K33 [PROTO_26]
       87 DUPCLOSURE                       R31 K34 [PROTO_27]
       88 DUPCLOSURE                       R32 K35 [PROTO_28]
       89 CAPTURE                          VAL R20
       90 CAPTURE                          VAL R16
       91 DUPCLOSURE                       R33 K36 [PROTO_29]
       92 CAPTURE                          VAL R30
       93 CAPTURE                          VAL R31
       94 DUPCLOSURE                       R34 K37 [PROTO_30]
       95 CAPTURE                          VAL R32
       96 CAPTURE                          VAL R28
       97 CAPTURE                          VAL R29
       98 CAPTURE                          VAL R33
       99 DUPCLOSURE                       R35 K38 [PROTO_33]
      100 CAPTURE                          VAL R34
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R7
      104 CLOSEUPVALS                      R13
      105 RETURN                           R35 1
