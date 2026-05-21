PROTO_0:
        0 LOADK                            R3 K0 ["&amp;"]
        1 LOADK                            R4 K1 ["&"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R3 K3 ["&lt;"]
        6 LOADK                            R4 K4 ["<"]
        7 NAMECALL                         R1 R1 K2 ["gsub"]
        9 CALL                             R1 3 1
       10 LOADK                            R3 K5 ["&gt;"]
       11 LOADK                            R4 K6 [">"]
       12 NAMECALL                         R1 R1 K2 ["gsub"]
       14 CALL                             R1 3 1
       15 LOADK                            R3 K7 ["&quot;"]
       16 LOADK                            R4 K8 ["\""]
       17 NAMECALL                         R1 R1 K2 ["gsub"]
       19 CALL                             R1 3 1
       20 LOADK                            R3 K1 ["&"]
       21 LOADK                            R4 K0 ["&amp;"]
       22 NAMECALL                         R1 R1 K2 ["gsub"]
       24 CALL                             R1 3 1
       25 LOADK                            R3 K4 ["<"]
       26 LOADK                            R4 K3 ["&lt;"]
       27 NAMECALL                         R1 R1 K2 ["gsub"]
       29 CALL                             R1 3 1
       30 LOADK                            R3 K6 [">"]
       31 LOADK                            R4 K5 ["&gt;"]
       32 NAMECALL                         R1 R1 K2 ["gsub"]
       34 CALL                             R1 3 1
       35 LOADK                            R3 K8 ["\""]
       36 LOADK                            R4 K7 ["&quot;"]
       37 NAMECALL                         R1 R1 K2 ["gsub"]
       39 CALL                             R1 3 1
       40 LOADK                            R3 K9 [" *\n *"]
       41 LOADK                            R4 K10 ["\n"]
       42 NAMECALL                         R1 R1 K2 ["gsub"]
       44 CALL                             R1 3 -1
       45 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%%%02X"]
        3 FASTCALL1                        STRING_BYTE R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K5 [string.byte]
        7 CALL                             R3 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["([^%w_%%%-%.%*%?%(%)#~/:=])"]
        4 DUPCLOSURE                       R4 K4 [PROTO_1]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["name"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+4]
        5 MOVE                             R2 R1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1
        9 GETIMPORT                        R2 K2 [error]
       11 LOADK                            R4 K3 ["No handler found for node %*"]
       12 GETTABLEKS                       R6 R0 K0 ["name"]
       14 NAMECALL                         R4 R4 K4 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R0 ; [+2]
        1 LOADK                            R1 K0 [""]
        2 RETURN                           R1 1
        3 LOADK                            R1 K0 [""]
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 MOVE                             R7 R1
        9 GETUPVAL                         R10 0
       10 GETTABLEKS                       R11 R6 K1 ["name"]
       12 GETTABLE                         R9 R10 R11
       13 JUMPIFNOT                        R9 ; [+5]
       14 MOVE                             R10 R9
       15 MOVE                             R11 R6
       16 CALL                             R10 1 1
       17 MOVE                             R8 R10
       18 JUMP                             ; [+11]
       19 GETIMPORT                        R10 K3 [error]
       21 LOADK                            R12 K4 ["No handler found for node %*"]
       22 GETTABLEKS                       R14 R6 K1 ["name"]
       24 NAMECALL                         R12 R12 K5 ["format"]
       26 CALL                             R12 2 1
       27 MOVE                             R11 R12
       28 CALL                             R10 1 0
       29 LOADNIL                          R8
       30 CONCAT                           R1 R7 R8
       31 FORGLOOP                         R2 2 ; [-24]
       33 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["children"]
        2 JUMPIF                           R2 ; [+2]
        3 LOADK                            R1 K1 [""]
        4 RETURN                           R1 1
        5 LOADK                            R3 K1 [""]
        6 MOVE                             R4 R2
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 MOVE                             R9 R3
       11 GETUPVAL                         R12 0
       12 GETTABLEKS                       R13 R8 K2 ["name"]
       14 GETTABLE                         R11 R12 R13
       15 JUMPIFNOT                        R11 ; [+5]
       16 MOVE                             R12 R11
       17 MOVE                             R13 R8
       18 CALL                             R12 1 1
       19 MOVE                             R10 R12
       20 JUMP                             ; [+11]
       21 GETIMPORT                        R12 K4 [error]
       23 LOADK                            R14 K5 ["No handler found for node %*"]
       24 GETTABLEKS                       R16 R8 K2 ["name"]
       26 NAMECALL                         R14 R14 K6 ["format"]
       28 CALL                             R14 2 1
       29 MOVE                             R13 R14
       30 CALL                             R12 1 0
       31 LOADNIL                          R10
       32 CONCAT                           R3 R9 R10
       33 FORGLOOP                         R4 2 ; [-24]
       35 MOVE                             R1 R3
       36 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["attributes"]
        5 GETTABLEKS                       R1 R1 K1 ["depth"]
        7 JUMP                             ; [+1]
        8 LOADN                            R1 1
        9 LOADK                            R3 K2 ["<h%*>%*</h%*>\n"]
       10 MOVE                             R5 R1
       11 GETTABLEKS                       R7 R0 K3 ["children"]
       13 JUMPIF                           R7 ; [+2]
       14 LOADK                            R6 K4 [""]
       15 JUMP                             ; [+31]
       16 LOADK                            R8 K4 [""]
       17 MOVE                             R9 R7
       18 LOADNIL                          R10
       19 LOADNIL                          R11
       20 FORGPREP                         R9
       21 MOVE                             R14 R8
       22 GETUPVAL                         R17 0
       23 GETTABLEKS                       R18 R13 K5 ["name"]
       25 GETTABLE                         R16 R17 R18
       26 JUMPIFNOT                        R16 ; [+5]
       27 MOVE                             R17 R16
       28 MOVE                             R18 R13
       29 CALL                             R17 1 1
       30 MOVE                             R15 R17
       31 JUMP                             ; [+11]
       32 GETIMPORT                        R17 K7 [error]
       34 LOADK                            R19 K8 ["No handler found for node %*"]
       35 GETTABLEKS                       R21 R13 K5 ["name"]
       37 NAMECALL                         R19 R19 K9 ["format"]
       39 CALL                             R19 2 1
       40 MOVE                             R18 R19
       41 CALL                             R17 1 0
       42 LOADNIL                          R15
       43 CONCAT                           R8 R14 R15
       44 FORGLOOP                         R9 2 ; [-24]
       46 MOVE                             R6 R8
       47 MOVE                             R7 R1
       48 NAMECALL                         R3 R3 K9 ["format"]
       50 CALL                             R3 4 1
       51 MOVE                             R2 R3
       52 RETURN                           R2 1

PROTO_7:
        0 LOADK                            R2 K0 ["<p>%*</p>\n"]
        1 GETTABLEKS                       R5 R0 K1 ["children"]
        3 JUMPIF                           R5 ; [+2]
        4 LOADK                            R4 K2 [""]
        5 JUMP                             ; [+31]
        6 LOADK                            R6 K2 [""]
        7 MOVE                             R7 R5
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 MOVE                             R12 R6
       12 GETUPVAL                         R15 0
       13 GETTABLEKS                       R16 R11 K3 ["name"]
       15 GETTABLE                         R14 R15 R16
       16 JUMPIFNOT                        R14 ; [+5]
       17 MOVE                             R15 R14
       18 MOVE                             R16 R11
       19 CALL                             R15 1 1
       20 MOVE                             R13 R15
       21 JUMP                             ; [+11]
       22 GETIMPORT                        R15 K5 [error]
       24 LOADK                            R17 K6 ["No handler found for node %*"]
       25 GETTABLEKS                       R19 R11 K3 ["name"]
       27 NAMECALL                         R17 R17 K7 ["format"]
       29 CALL                             R17 2 1
       30 MOVE                             R16 R17
       31 CALL                             R15 1 0
       32 LOADNIL                          R13
       33 CONCAT                           R6 R12 R13
       34 FORGLOOP                         R7 2 ; [-24]
       36 MOVE                             R4 R6
       37 LOADK                            R6 K8 ["^ +"]
       38 LOADK                            R7 K2 [""]
       39 NAMECALL                         R4 R4 K9 ["gsub"]
       41 CALL                             R4 3 1
       42 LOADK                            R6 K10 [" +$"]
       43 LOADK                            R7 K2 [""]
       44 NAMECALL                         R4 R4 K9 ["gsub"]
       46 CALL                             R4 3 1
       47 NAMECALL                         R2 R2 K7 ["format"]
       49 CALL                             R2 2 1
       50 MOVE                             R1 R2
       51 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R0 K0 ["<hr />\n"]
        1 RETURN                           R0 1

PROTO_9:
        0 LOADK                            R2 K0 ["<blockquote>\n%*</blockquote>\n"]
        1 GETTABLEKS                       R5 R0 K1 ["children"]
        3 JUMPIF                           R5 ; [+2]
        4 LOADK                            R4 K2 [""]
        5 JUMP                             ; [+31]
        6 LOADK                            R6 K2 [""]
        7 MOVE                             R7 R5
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 MOVE                             R12 R6
       12 GETUPVAL                         R15 0
       13 GETTABLEKS                       R16 R11 K3 ["name"]
       15 GETTABLE                         R14 R15 R16
       16 JUMPIFNOT                        R14 ; [+5]
       17 MOVE                             R15 R14
       18 MOVE                             R16 R11
       19 CALL                             R15 1 1
       20 MOVE                             R13 R15
       21 JUMP                             ; [+11]
       22 GETIMPORT                        R15 K5 [error]
       24 LOADK                            R17 K6 ["No handler found for node %*"]
       25 GETTABLEKS                       R19 R11 K3 ["name"]
       27 NAMECALL                         R17 R17 K7 ["format"]
       29 CALL                             R17 2 1
       30 MOVE                             R16 R17
       31 CALL                             R15 1 0
       32 LOADNIL                          R13
       33 CONCAT                           R6 R12 R13
       34 FORGLOOP                         R7 2 ; [-24]
       36 MOVE                             R4 R6
       37 NAMECALL                         R2 R2 K7 ["format"]
       39 CALL                             R2 2 1
       40 MOVE                             R1 R2
       41 RETURN                           R1 1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["attributes"]
        4 JUMPIFNOT                        R2 ; [+23]
        5 GETTABLEKS                       R2 R0 K0 ["attributes"]
        7 GETTABLEKS                       R2 R2 K1 ["language"]
        9 JUMPIFNOT                        R2 ; [+18]
       10 GETTABLEKS                       R2 R0 K0 ["attributes"]
       12 GETTABLEKS                       R2 R2 K1 ["language"]
       14 JUMPIFEQKS                       R2 K2 [""] ; [+13]
       16 LOADK                            R5 K3 ["language-"]
       17 GETTABLEKS                       R6 R0 K0 ["attributes"]
       19 GETTABLEKS                       R6 R6 K1 ["language"]
       21 CONCAT                           R4 R5 R6
       22 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K6 [table.insert]
       27 CALL                             R2 2 0
       28 NEWTABLE                         R2 0 0
       30 LENGTH                           R3 R1
       31 LOADN                            R4 0
       32 JUMPIFNOTLT                      R4 R3 ; [+17]
       34 LOADK                            R6 K7 ["class=\"%*\""]
       35 GETIMPORT                        R8 K9 [table.concat]
       37 MOVE                             R9 R1
       38 LOADK                            R10 K10 [" "]
       39 CALL                             R8 2 1
       40 NAMECALL                         R6 R6 K11 ["format"]
       42 CALL                             R6 2 1
       43 MOVE                             R5 R6
       44 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       46 MOVE                             R4 R2
       47 GETIMPORT                        R3 K6 [table.insert]
       49 CALL                             R3 2 0
       50 LOADK                            R4 K12 ["<pre><code%*>%*</code></pre>\n"]
       51 LENGTH                           R7 R2
       52 LOADN                            R8 0
       53 JUMPIFNOTLT                      R8 R7 ; [+12]
       55 LOADK                            R7 K13 [" %*"]
       56 GETIMPORT                        R9 K9 [table.concat]
       58 MOVE                             R10 R2
       59 LOADK                            R11 K10 [" "]
       60 CALL                             R9 2 1
       61 NAMECALL                         R7 R7 K11 ["format"]
       63 CALL                             R7 2 1
       64 MOVE                             R6 R7
       65 JUMP                             ; [+1]
       66 LOADK                            R6 K2 [""]
       67 GETTABLEKS                       R7 R0 K14 ["text"]
       69 NAMECALL                         R4 R4 K11 ["format"]
       71 CALL                             R4 3 1
       72 MOVE                             R3 R4
       73 RETURN                           R3 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETTABLEKS                       R2 R0 K0 ["attributes"]
        5 GETTABLEKS                       R2 R2 K1 ["ordered"]
        7 JUMPIFNOT                        R2 ; [+2]
        8 LOADK                            R1 K2 ["ol"]
        9 JUMP                             ; [+3]
       10 LOADK                            R1 K3 ["ul"]
       11 JUMP                             ; [+1]
       12 LOADK                            R1 K3 ["ul"]
       13 LOADK                            R3 K4 ["<%*>\n%*</%*>\n"]
       14 MOVE                             R5 R1
       15 GETTABLEKS                       R7 R0 K5 ["children"]
       17 JUMPIF                           R7 ; [+2]
       18 LOADK                            R6 K6 [""]
       19 JUMP                             ; [+31]
       20 LOADK                            R8 K6 [""]
       21 MOVE                             R9 R7
       22 LOADNIL                          R10
       23 LOADNIL                          R11
       24 FORGPREP                         R9
       25 MOVE                             R14 R8
       26 GETUPVAL                         R17 0
       27 GETTABLEKS                       R18 R13 K7 ["name"]
       29 GETTABLE                         R16 R17 R18
       30 JUMPIFNOT                        R16 ; [+5]
       31 MOVE                             R17 R16
       32 MOVE                             R18 R13
       33 CALL                             R17 1 1
       34 MOVE                             R15 R17
       35 JUMP                             ; [+11]
       36 GETIMPORT                        R17 K9 [error]
       38 LOADK                            R19 K10 ["No handler found for node %*"]
       39 GETTABLEKS                       R21 R13 K7 ["name"]
       41 NAMECALL                         R19 R19 K11 ["format"]
       43 CALL                             R19 2 1
       44 MOVE                             R18 R19
       45 CALL                             R17 1 0
       46 LOADNIL                          R15
       47 CONCAT                           R8 R14 R15
       48 FORGLOOP                         R9 2 ; [-24]
       50 MOVE                             R6 R8
       51 MOVE                             R7 R1
       52 NAMECALL                         R3 R3 K11 ["format"]
       54 CALL                             R3 4 1
       55 MOVE                             R2 R3
       56 RETURN                           R2 1

PROTO_12:
        0 LOADK                            R2 K0 ["<li>%*</li>\n"]
        1 GETTABLEKS                       R5 R0 K1 ["children"]
        3 JUMPIF                           R5 ; [+2]
        4 LOADK                            R4 K2 [""]
        5 JUMP                             ; [+31]
        6 LOADK                            R6 K2 [""]
        7 MOVE                             R7 R5
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 MOVE                             R12 R6
       12 GETUPVAL                         R15 0
       13 GETTABLEKS                       R16 R11 K3 ["name"]
       15 GETTABLE                         R14 R15 R16
       16 JUMPIFNOT                        R14 ; [+5]
       17 MOVE                             R15 R14
       18 MOVE                             R16 R11
       19 CALL                             R15 1 1
       20 MOVE                             R13 R15
       21 JUMP                             ; [+11]
       22 GETIMPORT                        R15 K5 [error]
       24 LOADK                            R17 K6 ["No handler found for node %*"]
       25 GETTABLEKS                       R19 R11 K3 ["name"]
       27 NAMECALL                         R17 R17 K7 ["format"]
       29 CALL                             R17 2 1
       30 MOVE                             R16 R17
       31 CALL                             R15 1 0
       32 LOADNIL                          R13
       33 CONCAT                           R6 R12 R13
       34 FORGLOOP                         R7 2 ; [-24]
       36 MOVE                             R4 R6
       37 NAMECALL                         R2 R2 K7 ["format"]
       39 CALL                             R2 2 1
       40 MOVE                             R1 R2
       41 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["attributes"]
        5 GETTABLEKS                       R1 R1 K1 ["style"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFEQKS                       R1 K2 ["BOLD"] ; [+3]
       11 JUMPIFNOTEQKS                    R1 K3 ["ITALIC"] ; [+43]
       13 LOADK                            R3 K4 ["<em>%*</em>"]
       14 GETTABLEKS                       R6 R0 K5 ["children"]
       16 JUMPIF                           R6 ; [+2]
       17 LOADK                            R5 K6 [""]
       18 JUMP                             ; [+31]
       19 LOADK                            R7 K6 [""]
       20 MOVE                             R8 R6
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 FORGPREP                         R8
       24 MOVE                             R13 R7
       25 GETUPVAL                         R16 0
       26 GETTABLEKS                       R17 R12 K7 ["name"]
       28 GETTABLE                         R15 R16 R17
       29 JUMPIFNOT                        R15 ; [+5]
       30 MOVE                             R16 R15
       31 MOVE                             R17 R12
       32 CALL                             R16 1 1
       33 MOVE                             R14 R16
       34 JUMP                             ; [+11]
       35 GETIMPORT                        R16 K9 [error]
       37 LOADK                            R18 K10 ["No handler found for node %*"]
       38 GETTABLEKS                       R20 R12 K7 ["name"]
       40 NAMECALL                         R18 R18 K11 ["format"]
       42 CALL                             R18 2 1
       43 MOVE                             R17 R18
       44 CALL                             R16 1 0
       45 LOADNIL                          R14
       46 CONCAT                           R7 R13 R14
       47 FORGLOOP                         R8 2 ; [-24]
       49 MOVE                             R5 R7
       50 NAMECALL                         R3 R3 K11 ["format"]
       52 CALL                             R3 2 1
       53 MOVE                             R2 R3
       54 RETURN                           R2 1
       55 JUMPIFEQKS                       R1 K12 ["BOLD_2"] ; [+3]
       57 JUMPIFNOTEQKS                    R1 K13 ["ITALIC_2"] ; [+43]
       59 LOADK                            R3 K14 ["<strong>%*</strong>"]
       60 GETTABLEKS                       R6 R0 K5 ["children"]
       62 JUMPIF                           R6 ; [+2]
       63 LOADK                            R5 K6 [""]
       64 JUMP                             ; [+31]
       65 LOADK                            R7 K6 [""]
       66 MOVE                             R8 R6
       67 LOADNIL                          R9
       68 LOADNIL                          R10
       69 FORGPREP                         R8
       70 MOVE                             R13 R7
       71 GETUPVAL                         R16 0
       72 GETTABLEKS                       R17 R12 K7 ["name"]
       74 GETTABLE                         R15 R16 R17
       75 JUMPIFNOT                        R15 ; [+5]
       76 MOVE                             R16 R15
       77 MOVE                             R17 R12
       78 CALL                             R16 1 1
       79 MOVE                             R14 R16
       80 JUMP                             ; [+11]
       81 GETIMPORT                        R16 K9 [error]
       83 LOADK                            R18 K10 ["No handler found for node %*"]
       84 GETTABLEKS                       R20 R12 K7 ["name"]
       86 NAMECALL                         R18 R18 K11 ["format"]
       88 CALL                             R18 2 1
       89 MOVE                             R17 R18
       90 CALL                             R16 1 0
       91 LOADNIL                          R14
       92 CONCAT                           R7 R13 R14
       93 FORGLOOP                         R8 2 ; [-24]
       95 MOVE                             R5 R7
       96 NAMECALL                         R3 R3 K11 ["format"]
       98 CALL                             R3 2 1
       99 MOVE                             R2 R3
      100 RETURN                           R2 1
      101 JUMPIFNOTEQKS                    R1 K15 ["STRIKE"] ; [+43]
      103 LOADK                            R3 K16 ["<u>%*</u>"]
      104 GETTABLEKS                       R6 R0 K5 ["children"]
      106 JUMPIF                           R6 ; [+2]
      107 LOADK                            R5 K6 [""]
      108 JUMP                             ; [+31]
      109 LOADK                            R7 K6 [""]
      110 MOVE                             R8 R6
      111 LOADNIL                          R9
      112 LOADNIL                          R10
      113 FORGPREP                         R8
      114 MOVE                             R13 R7
      115 GETUPVAL                         R16 0
      116 GETTABLEKS                       R17 R12 K7 ["name"]
      118 GETTABLE                         R15 R16 R17
      119 JUMPIFNOT                        R15 ; [+5]
      120 MOVE                             R16 R15
      121 MOVE                             R17 R12
      122 CALL                             R16 1 1
      123 MOVE                             R14 R16
      124 JUMP                             ; [+11]
      125 GETIMPORT                        R16 K9 [error]
      127 LOADK                            R18 K10 ["No handler found for node %*"]
      128 GETTABLEKS                       R20 R12 K7 ["name"]
      130 NAMECALL                         R18 R18 K11 ["format"]
      132 CALL                             R18 2 1
      133 MOVE                             R17 R18
      134 CALL                             R16 1 0
      135 LOADNIL                          R14
      136 CONCAT                           R7 R13 R14
      137 FORGLOOP                         R8 2 ; [-24]
      139 MOVE                             R5 R7
      140 NAMECALL                         R3 R3 K11 ["format"]
      142 CALL                             R3 2 1
      143 MOVE                             R2 R3
      144 RETURN                           R2 1
      145 JUMPIFNOTEQKS                    R1 K17 ["INLINE_CODE"] ; [+43]
      147 LOADK                            R3 K18 ["<code>%*</code>"]
      148 GETTABLEKS                       R6 R0 K5 ["children"]
      150 JUMPIF                           R6 ; [+2]
      151 LOADK                            R5 K6 [""]
      152 JUMP                             ; [+31]
      153 LOADK                            R7 K6 [""]
      154 MOVE                             R8 R6
      155 LOADNIL                          R9
      156 LOADNIL                          R10
      157 FORGPREP                         R8
      158 MOVE                             R13 R7
      159 GETUPVAL                         R16 0
      160 GETTABLEKS                       R17 R12 K7 ["name"]
      162 GETTABLE                         R15 R16 R17
      163 JUMPIFNOT                        R15 ; [+5]
      164 MOVE                             R16 R15
      165 MOVE                             R17 R12
      166 CALL                             R16 1 1
      167 MOVE                             R14 R16
      168 JUMP                             ; [+11]
      169 GETIMPORT                        R16 K9 [error]
      171 LOADK                            R18 K10 ["No handler found for node %*"]
      172 GETTABLEKS                       R20 R12 K7 ["name"]
      174 NAMECALL                         R18 R18 K11 ["format"]
      176 CALL                             R18 2 1
      177 MOVE                             R17 R18
      178 CALL                             R16 1 0
      179 LOADNIL                          R14
      180 CONCAT                           R7 R13 R14
      181 FORGLOOP                         R8 2 ; [-24]
      183 MOVE                             R5 R7
      184 NAMECALL                         R3 R3 K11 ["format"]
      186 CALL                             R3 2 1
      187 MOVE                             R2 R3
      188 RETURN                           R2 1
      189 JUMPIFNOTEQKNIL                  R1 ; [+38]
      191 GETTABLEKS                       R3 R0 K5 ["children"]
      193 JUMPIF                           R3 ; [+2]
      194 LOADK                            R2 K6 [""]
      195 RETURN                           R2 1
      196 LOADK                            R4 K6 [""]
      197 MOVE                             R5 R3
      198 LOADNIL                          R6
      199 LOADNIL                          R7
      200 FORGPREP                         R5
      201 MOVE                             R10 R4
      202 GETUPVAL                         R13 0
      203 GETTABLEKS                       R14 R9 K7 ["name"]
      205 GETTABLE                         R12 R13 R14
      206 JUMPIFNOT                        R12 ; [+5]
      207 MOVE                             R13 R12
      208 MOVE                             R14 R9
      209 CALL                             R13 1 1
      210 MOVE                             R11 R13
      211 JUMP                             ; [+11]
      212 GETIMPORT                        R13 K9 [error]
      214 LOADK                            R15 K10 ["No handler found for node %*"]
      215 GETTABLEKS                       R17 R9 K7 ["name"]
      217 NAMECALL                         R15 R15 K11 ["format"]
      219 CALL                             R15 2 1
      220 MOVE                             R14 R15
      221 CALL                             R13 1 0
      222 LOADNIL                          R11
      223 CONCAT                           R4 R10 R11
      224 FORGLOOP                         R5 2 ; [-24]
      226 MOVE                             R2 R4
      227 RETURN                           R2 1
      228 GETIMPORT                        R2 K9 [error]
      230 LOADK                            R4 K19 ["Unknown text style %*"]
      231 MOVE                             R6 R1
      232 NAMECALL                         R4 R4 K11 ["format"]
      234 CALL                             R4 2 1
      235 MOVE                             R3 R4
      236 CALL                             R2 1 0
      237 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K1 ["text"]
        3 ORK                              R2 R3 K0 [""]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["attributes"]
        5 GETTABLEKS                       R1 R1 K1 ["url"]
        7 JUMPIF                           R1 ; [+4]
        8 GETTABLEKS                       R1 R0 K1 ["url"]
       10 JUMPIF                           R1 ; [+1]
       11 LOADK                            R1 K2 [""]
       12 GETTABLEKS                       R3 R0 K0 ["attributes"]
       14 JUMPIFNOT                        R3 ; [+5]
       15 GETTABLEKS                       R2 R0 K0 ["attributes"]
       17 GETTABLEKS                       R2 R2 K3 ["title"]
       19 JUMPIF                           R2 ; [+1]
       20 LOADNIL                          R2
       21 GETTABLEKS                       R4 R0 K4 ["children"]
       23 JUMPIF                           R4 ; [+2]
       24 LOADK                            R3 K2 [""]
       25 JUMP                             ; [+31]
       26 LOADK                            R5 K2 [""]
       27 MOVE                             R6 R4
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 FORGPREP                         R6
       31 MOVE                             R11 R5
       32 GETUPVAL                         R14 0
       33 GETTABLEKS                       R15 R10 K5 ["name"]
       35 GETTABLE                         R13 R14 R15
       36 JUMPIFNOT                        R13 ; [+5]
       37 MOVE                             R14 R13
       38 MOVE                             R15 R10
       39 CALL                             R14 1 1
       40 MOVE                             R12 R14
       41 JUMP                             ; [+11]
       42 GETIMPORT                        R14 K7 [error]
       44 LOADK                            R16 K8 ["No handler found for node %*"]
       45 GETTABLEKS                       R18 R10 K5 ["name"]
       47 NAMECALL                         R16 R16 K9 ["format"]
       49 CALL                             R16 2 1
       50 MOVE                             R15 R16
       51 CALL                             R14 1 0
       52 LOADNIL                          R12
       53 CONCAT                           R5 R11 R12
       54 FORGLOOP                         R6 2 ; [-24]
       56 MOVE                             R3 R5
       57 JUMPIFNOTEQKS                    R3 K2 [""] ; [+6]
       59 GETTABLEKS                       R4 R0 K10 ["text"]
       61 JUMPIFNOT                        R4 ; [+2]
       62 GETTABLEKS                       R3 R0 K10 ["text"]
       64 LOADK                            R5 K11 ["<a href=\"%*\"%*>%*</a>"]
       65 GETIMPORT                        R7 K14 [string.gsub]
       67 MOVE                             R8 R1
       68 LOADK                            R9 K15 ["([^%w_%%%-%.%*%?%(%)#~/:=])"]
       69 DUPCLOSURE                       R10 K16 [PROTO_1]
       70 CALL                             R7 3 1
       71 JUMPIFNOT                        R2 ; [+9]
       72 LOADK                            R9 K17 [" title=\"%*\""]
       73 GETUPVAL                         R11 1
       74 MOVE                             R12 R2
       75 CALL                             R11 1 1
       76 NAMECALL                         R9 R9 K9 ["format"]
       78 CALL                             R9 2 1
       79 MOVE                             R8 R9
       80 JUMP                             ; [+1]
       81 LOADK                            R8 K2 [""]
       82 GETUPVAL                         R9 1
       83 MOVE                             R10 R3
       84 CALL                             R9 1 1
       85 NAMECALL                         R5 R5 K9 ["format"]
       87 CALL                             R5 4 1
       88 MOVE                             R4 R5
       89 RETURN                           R4 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["text"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 JUMPIFNOTEQKS                    R1 K1 [""] ; [+5]
        5 GETIMPORT                        R2 K3 [error]
        7 LOADK                            R3 K4 ["TAG node must have a text value"]
        8 CALL                             R2 1 0
        9 LOADK                            R2 K1 [""]
       10 GETTABLEKS                       R3 R0 K5 ["attributes"]
       12 JUMPIFNOT                        R3 ; [+15]
       13 GETTABLEKS                       R3 R0 K5 ["attributes"]
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 LOADK                            R8 K6 ["%* %*=\"%*\""]
       19 MOVE                             R10 R2
       20 MOVE                             R11 R6
       21 MOVE                             R12 R7
       22 NAMECALL                         R8 R8 K7 ["format"]
       24 CALL                             R8 4 1
       25 MOVE                             R2 R8
       26 FORGLOOP                         R3 2 ; [-9]
       28 GETTABLEKS                       R3 R0 K8 ["children"]
       30 JUMPIFNOT                        R3 ; [+51]
       31 GETTABLEKS                       R4 R0 K8 ["children"]
       33 LENGTH                           R3 R4
       34 LOADN                            R4 0
       35 JUMPIFNOTLT                      R4 R3 ; [+46]
       37 LOADK                            R4 K9 ["<%*%*>%*</%*>"]
       38 MOVE                             R6 R1
       39 MOVE                             R7 R2
       40 GETTABLEKS                       R9 R0 K8 ["children"]
       42 JUMPIF                           R9 ; [+2]
       43 LOADK                            R8 K1 [""]
       44 JUMP                             ; [+31]
       45 LOADK                            R10 K1 [""]
       46 MOVE                             R11 R9
       47 LOADNIL                          R12
       48 LOADNIL                          R13
       49 FORGPREP                         R11
       50 MOVE                             R16 R10
       51 GETUPVAL                         R19 0
       52 GETTABLEKS                       R20 R15 K10 ["name"]
       54 GETTABLE                         R18 R19 R20
       55 JUMPIFNOT                        R18 ; [+5]
       56 MOVE                             R19 R18
       57 MOVE                             R20 R15
       58 CALL                             R19 1 1
       59 MOVE                             R17 R19
       60 JUMP                             ; [+11]
       61 GETIMPORT                        R19 K3 [error]
       63 LOADK                            R21 K11 ["No handler found for node %*"]
       64 GETTABLEKS                       R23 R15 K10 ["name"]
       66 NAMECALL                         R21 R21 K7 ["format"]
       68 CALL                             R21 2 1
       69 MOVE                             R20 R21
       70 CALL                             R19 1 0
       71 LOADNIL                          R17
       72 CONCAT                           R10 R16 R17
       73 FORGLOOP                         R11 2 ; [-24]
       75 MOVE                             R8 R10
       76 MOVE                             R9 R1
       77 NAMECALL                         R4 R4 K7 ["format"]
       79 CALL                             R4 5 1
       80 MOVE                             R3 R4
       81 RETURN                           R3 1
       82 LOADK                            R4 K12 ["<%*%* />"]
       83 MOVE                             R6 R1
       84 MOVE                             R7 R2
       85 NAMECALL                         R4 R4 K7 ["format"]
       87 CALL                             R4 3 1
       88 MOVE                             R3 R4
       89 RETURN                           R3 1

PROTO_17:
        0 LOADK                            R0 K0 ["<br />"]
        1 RETURN                           R0 1

PROTO_18:
        0 LOADK                            R0 K0 ["<br />\n"]
        1 RETURN                           R0 1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["attributes"]
        5 GETTABLEKS                       R1 R1 K1 ["url"]
        7 JUMPIF                           R1 ; [+4]
        8 GETTABLEKS                       R1 R0 K1 ["url"]
       10 JUMPIF                           R1 ; [+1]
       11 LOADK                            R1 K2 [""]
       12 GETTABLEKS                       R3 R0 K3 ["text"]
       14 ORK                              R2 R3 K2 [""]
       15 LOADK                            R4 K4 ["<img src=\"%*\" alt=\"%*\" />"]
       16 GETIMPORT                        R6 K7 [string.gsub]
       18 MOVE                             R7 R1
       19 LOADK                            R8 K8 ["([^%w_%%%-%.%*%?%(%)#~/:=])"]
       20 DUPCLOSURE                       R9 K9 [PROTO_1]
       21 CALL                             R6 3 1
       22 GETUPVAL                         R7 0
       23 MOVE                             R8 R2
       24 CALL                             R7 1 1
       25 NAMECALL                         R4 R4 K10 ["format"]
       27 CALL                             R4 3 1
       28 MOVE                             R3 R4
       29 RETURN                           R3 1

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["children"]
        2 JUMPIF                           R2 ; [+2]
        3 LOADK                            R1 K1 [""]
        4 RETURN                           R1 1
        5 LOADK                            R3 K1 [""]
        6 MOVE                             R4 R2
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 MOVE                             R9 R3
       11 GETUPVAL                         R12 0
       12 GETTABLEKS                       R13 R8 K2 ["name"]
       14 GETTABLE                         R11 R12 R13
       15 JUMPIFNOT                        R11 ; [+5]
       16 MOVE                             R12 R11
       17 MOVE                             R13 R8
       18 CALL                             R12 1 1
       19 MOVE                             R10 R12
       20 JUMP                             ; [+11]
       21 GETIMPORT                        R12 K4 [error]
       23 LOADK                            R14 K5 ["No handler found for node %*"]
       24 GETTABLEKS                       R16 R8 K2 ["name"]
       26 NAMECALL                         R14 R14 K6 ["format"]
       28 CALL                             R14 2 1
       29 MOVE                             R13 R14
       30 CALL                             R12 1 0
       31 LOADNIL                          R10
       32 CONCAT                           R3 R9 R10
       33 FORGLOOP                         R4 2 ; [-24]
       35 MOVE                             R1 R3
       36 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Utils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 NEWTABLE                         R3 0 0
       18 DUPCLOSURE                       R4 K8 [PROTO_0]
       19 DUPCLOSURE                       R5 K9 [PROTO_2]
       20 NEWCLOSURE                       R6 P2
       21 CAPTURE                          REF R3
       22 NEWCLOSURE                       R7 P3
       23 CAPTURE                          REF R3
       24 NEWCLOSURE                       R8 P4
       25 CAPTURE                          REF R3
       26 NEWCLOSURE                       R9 P5
       27 CAPTURE                          REF R3
       28 NEWCLOSURE                       R10 P6
       29 CAPTURE                          REF R3
       30 DUPCLOSURE                       R11 K10 [PROTO_8]
       31 NEWCLOSURE                       R12 P8
       32 CAPTURE                          REF R3
       33 DUPCLOSURE                       R13 K11 [PROTO_10]
       34 NEWCLOSURE                       R14 P10
       35 CAPTURE                          REF R3
       36 NEWCLOSURE                       R15 P11
       37 CAPTURE                          REF R3
       38 NEWCLOSURE                       R16 P12
       39 CAPTURE                          REF R3
       40 DUPCLOSURE                       R17 K12 [PROTO_14]
       41 CAPTURE                          VAL R4
       42 NEWCLOSURE                       R18 P14
       43 CAPTURE                          REF R3
       44 CAPTURE                          VAL R4
       45 NEWCLOSURE                       R19 P15
       46 CAPTURE                          REF R3
       47 DUPCLOSURE                       R20 K13 [PROTO_17]
       48 DUPCLOSURE                       R21 K14 [PROTO_18]
       49 DUPCLOSURE                       R22 K15 [PROTO_19]
       50 CAPTURE                          VAL R4
       51 NEWCLOSURE                       R23 P19
       52 CAPTURE                          REF R3
       53 NEWTABLE                         R24 32 0
       55 SETTABLEKS                       R8 R24 K16 ["ROOT"]
       57 SETTABLEKS                       R9 R24 K17 ["HEADING"]
       59 SETTABLEKS                       R10 R24 K18 ["PARAGRAPH"]
       61 SETTABLEKS                       R17 R24 K19 ["TEXT"]
       63 SETTABLEKS                       R16 R24 K20 ["STYLED_TEXT"]
       65 SETTABLEKS                       R11 R24 K21 ["DIVIDER"]
       67 SETTABLEKS                       R12 R24 K22 ["QUOTE"]
       69 SETTABLEKS                       R13 R24 K23 ["CODE_BLOCK"]
       71 SETTABLEKS                       R14 R24 K24 ["LIST"]
       73 SETTABLEKS                       R15 R24 K25 ["LIST_ITEM"]
       75 SETTABLEKS                       R18 R24 K26 ["LINK"]
       77 SETTABLEKS                       R19 R24 K27 ["TAG"]
       79 SETTABLEKS                       R20 R24 K28 ["LINE_BREAK"]
       81 SETTABLEKS                       R21 R24 K29 ["BREAK"]
       83 SETTABLEKS                       R22 R24 K30 ["IMAGE"]
       85 SETTABLEKS                       R23 R24 K31 ["TABLE_HEADER"]
       87 SETTABLEKS                       R23 R24 K32 ["TABLE_ROW"]
       89 SETTABLEKS                       R23 R24 K33 ["ACTION"]
       91 MOVE                             R3 R24
       92 DUPCLOSURE                       R24 K34 [PROTO_21]
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R24 R2 K35 ["map"]
       96 CLOSEUPVALS                      R3
       97 RETURN                           R2 1
