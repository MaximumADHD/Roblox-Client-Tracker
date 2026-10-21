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
       11 LOADK                            R3 K3 ["No handler found for node %*"]
       12 GETTABLEKS                       R5 R0 K0 ["name"]
       14 NAMECALL                         R3 R3 K4 ["format"]
       16 CALL                             R3 2 1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

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
       18 JUMP                             ; [+10]
       19 GETIMPORT                        R10 K3 [error]
       21 LOADK                            R11 K4 ["No handler found for node %*"]
       22 GETTABLEKS                       R13 R6 K1 ["name"]
       24 NAMECALL                         R11 R11 K5 ["format"]
       26 CALL                             R11 2 1
       27 CALL                             R10 1 0
       28 LOADNIL                          R8
       29 CONCAT                           R1 R7 R8
       30 FORGLOOP                         R2 2 ; [-23]
       32 RETURN                           R1 1

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
       20 JUMP                             ; [+10]
       21 GETIMPORT                        R12 K4 [error]
       23 LOADK                            R13 K5 ["No handler found for node %*"]
       24 GETTABLEKS                       R15 R8 K2 ["name"]
       26 NAMECALL                         R13 R13 K6 ["format"]
       28 CALL                             R13 2 1
       29 CALL                             R12 1 0
       30 LOADNIL                          R10
       31 CONCAT                           R3 R9 R10
       32 FORGLOOP                         R4 2 ; [-23]
       34 MOVE                             R1 R3
       35 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["attributes"]
        5 GETTABLEKS                       R1 R1 K1 ["depth"]
        7 JUMP                             ; [+1]
        8 LOADN                            R1 1
        9 LOADK                            R2 K2 ["<h%*>%*</h%*>\n"]
       10 MOVE                             R4 R1
       11 GETTABLEKS                       R6 R0 K3 ["children"]
       13 JUMPIF                           R6 ; [+2]
       14 LOADK                            R5 K4 [""]
       15 JUMP                             ; [+30]
       16 LOADK                            R7 K4 [""]
       17 MOVE                             R8 R6
       18 LOADNIL                          R9
       19 LOADNIL                          R10
       20 FORGPREP                         R8
       21 MOVE                             R13 R7
       22 GETUPVAL                         R16 0
       23 GETTABLEKS                       R17 R12 K5 ["name"]
       25 GETTABLE                         R15 R16 R17
       26 JUMPIFNOT                        R15 ; [+5]
       27 MOVE                             R16 R15
       28 MOVE                             R17 R12
       29 CALL                             R16 1 1
       30 MOVE                             R14 R16
       31 JUMP                             ; [+10]
       32 GETIMPORT                        R16 K7 [error]
       34 LOADK                            R17 K8 ["No handler found for node %*"]
       35 GETTABLEKS                       R19 R12 K5 ["name"]
       37 NAMECALL                         R17 R17 K9 ["format"]
       39 CALL                             R17 2 1
       40 CALL                             R16 1 0
       41 LOADNIL                          R14
       42 CONCAT                           R7 R13 R14
       43 FORGLOOP                         R8 2 ; [-23]
       45 MOVE                             R5 R7
       46 MOVE                             R6 R1
       47 NAMECALL                         R2 R2 K9 ["format"]
       49 CALL                             R2 4 1
       50 RETURN                           R2 1

PROTO_7:
        0 LOADK                            R1 K0 ["<p>%*</p>\n"]
        1 GETTABLEKS                       R4 R0 K1 ["children"]
        3 JUMPIF                           R4 ; [+2]
        4 LOADK                            R3 K2 [""]
        5 JUMP                             ; [+30]
        6 LOADK                            R5 K2 [""]
        7 MOVE                             R6 R4
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 FORGPREP                         R6
       11 MOVE                             R11 R5
       12 GETUPVAL                         R14 0
       13 GETTABLEKS                       R15 R10 K3 ["name"]
       15 GETTABLE                         R13 R14 R15
       16 JUMPIFNOT                        R13 ; [+5]
       17 MOVE                             R14 R13
       18 MOVE                             R15 R10
       19 CALL                             R14 1 1
       20 MOVE                             R12 R14
       21 JUMP                             ; [+10]
       22 GETIMPORT                        R14 K5 [error]
       24 LOADK                            R15 K6 ["No handler found for node %*"]
       25 GETTABLEKS                       R17 R10 K3 ["name"]
       27 NAMECALL                         R15 R15 K7 ["format"]
       29 CALL                             R15 2 1
       30 CALL                             R14 1 0
       31 LOADNIL                          R12
       32 CONCAT                           R5 R11 R12
       33 FORGLOOP                         R6 2 ; [-23]
       35 MOVE                             R3 R5
       36 LOADK                            R5 K8 ["^ +"]
       37 LOADK                            R6 K2 [""]
       38 NAMECALL                         R3 R3 K9 ["gsub"]
       40 CALL                             R3 3 1
       41 LOADK                            R5 K10 [" +$"]
       42 LOADK                            R6 K2 [""]
       43 NAMECALL                         R3 R3 K9 ["gsub"]
       45 CALL                             R3 3 1
       46 NAMECALL                         R1 R1 K7 ["format"]
       48 CALL                             R1 2 1
       49 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R0 K0 ["<hr />\n"]
        1 RETURN                           R0 1

PROTO_9:
        0 LOADK                            R1 K0 ["<blockquote>\n%*</blockquote>\n"]
        1 GETTABLEKS                       R4 R0 K1 ["children"]
        3 JUMPIF                           R4 ; [+2]
        4 LOADK                            R3 K2 [""]
        5 JUMP                             ; [+30]
        6 LOADK                            R5 K2 [""]
        7 MOVE                             R6 R4
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 FORGPREP                         R6
       11 MOVE                             R11 R5
       12 GETUPVAL                         R14 0
       13 GETTABLEKS                       R15 R10 K3 ["name"]
       15 GETTABLE                         R13 R14 R15
       16 JUMPIFNOT                        R13 ; [+5]
       17 MOVE                             R14 R13
       18 MOVE                             R15 R10
       19 CALL                             R14 1 1
       20 MOVE                             R12 R14
       21 JUMP                             ; [+10]
       22 GETIMPORT                        R14 K5 [error]
       24 LOADK                            R15 K6 ["No handler found for node %*"]
       25 GETTABLEKS                       R17 R10 K3 ["name"]
       27 NAMECALL                         R15 R15 K7 ["format"]
       29 CALL                             R15 2 1
       30 CALL                             R14 1 0
       31 LOADNIL                          R12
       32 CONCAT                           R5 R11 R12
       33 FORGLOOP                         R6 2 ; [-23]
       35 MOVE                             R3 R5
       36 NAMECALL                         R1 R1 K7 ["format"]
       38 CALL                             R1 2 1
       39 RETURN                           R1 1

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
       32 JUMPIFNOTLT                      R4 R3 ; [+16]
       34 LOADK                            R5 K7 ["class=\"%*\""]
       35 GETIMPORT                        R7 K9 [table.concat]
       37 MOVE                             R8 R1
       38 LOADK                            R9 K10 [" "]
       39 CALL                             R7 2 1
       40 NAMECALL                         R5 R5 K11 ["format"]
       42 CALL                             R5 2 1
       43 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       45 MOVE                             R4 R2
       46 GETIMPORT                        R3 K6 [table.insert]
       48 CALL                             R3 2 0
       49 LOADK                            R3 K12 ["<pre><code%*>%*</code></pre>\n"]
       50 LENGTH                           R6 R2
       51 LOADN                            R7 0
       52 JUMPIFNOTLT                      R7 R6 ; [+11]
       54 LOADK                            R5 K13 [" %*"]
       55 GETIMPORT                        R7 K9 [table.concat]
       57 MOVE                             R8 R2
       58 LOADK                            R9 K10 [" "]
       59 CALL                             R7 2 1
       60 NAMECALL                         R5 R5 K11 ["format"]
       62 CALL                             R5 2 1
       63 JUMP                             ; [+1]
       64 LOADK                            R5 K2 [""]
       65 GETTABLEKS                       R6 R0 K14 ["text"]
       67 NAMECALL                         R3 R3 K11 ["format"]
       69 CALL                             R3 3 1
       70 RETURN                           R3 1

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
       13 LOADK                            R2 K4 ["<%*>\n%*</%*>\n"]
       14 MOVE                             R4 R1
       15 GETTABLEKS                       R6 R0 K5 ["children"]
       17 JUMPIF                           R6 ; [+2]
       18 LOADK                            R5 K6 [""]
       19 JUMP                             ; [+30]
       20 LOADK                            R7 K6 [""]
       21 MOVE                             R8 R6
       22 LOADNIL                          R9
       23 LOADNIL                          R10
       24 FORGPREP                         R8
       25 MOVE                             R13 R7
       26 GETUPVAL                         R16 0
       27 GETTABLEKS                       R17 R12 K7 ["name"]
       29 GETTABLE                         R15 R16 R17
       30 JUMPIFNOT                        R15 ; [+5]
       31 MOVE                             R16 R15
       32 MOVE                             R17 R12
       33 CALL                             R16 1 1
       34 MOVE                             R14 R16
       35 JUMP                             ; [+10]
       36 GETIMPORT                        R16 K9 [error]
       38 LOADK                            R17 K10 ["No handler found for node %*"]
       39 GETTABLEKS                       R19 R12 K7 ["name"]
       41 NAMECALL                         R17 R17 K11 ["format"]
       43 CALL                             R17 2 1
       44 CALL                             R16 1 0
       45 LOADNIL                          R14
       46 CONCAT                           R7 R13 R14
       47 FORGLOOP                         R8 2 ; [-23]
       49 MOVE                             R5 R7
       50 MOVE                             R6 R1
       51 NAMECALL                         R2 R2 K11 ["format"]
       53 CALL                             R2 4 1
       54 RETURN                           R2 1

PROTO_12:
        0 LOADK                            R1 K0 ["<li>%*</li>\n"]
        1 GETTABLEKS                       R4 R0 K1 ["children"]
        3 JUMPIF                           R4 ; [+2]
        4 LOADK                            R3 K2 [""]
        5 JUMP                             ; [+30]
        6 LOADK                            R5 K2 [""]
        7 MOVE                             R6 R4
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 FORGPREP                         R6
       11 MOVE                             R11 R5
       12 GETUPVAL                         R14 0
       13 GETTABLEKS                       R15 R10 K3 ["name"]
       15 GETTABLE                         R13 R14 R15
       16 JUMPIFNOT                        R13 ; [+5]
       17 MOVE                             R14 R13
       18 MOVE                             R15 R10
       19 CALL                             R14 1 1
       20 MOVE                             R12 R14
       21 JUMP                             ; [+10]
       22 GETIMPORT                        R14 K5 [error]
       24 LOADK                            R15 K6 ["No handler found for node %*"]
       25 GETTABLEKS                       R17 R10 K3 ["name"]
       27 NAMECALL                         R15 R15 K7 ["format"]
       29 CALL                             R15 2 1
       30 CALL                             R14 1 0
       31 LOADNIL                          R12
       32 CONCAT                           R5 R11 R12
       33 FORGLOOP                         R6 2 ; [-23]
       35 MOVE                             R3 R5
       36 NAMECALL                         R1 R1 K7 ["format"]
       38 CALL                             R1 2 1
       39 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["attributes"]
        5 GETTABLEKS                       R1 R1 K1 ["style"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFEQKS                       R1 K2 ["BOLD"] ; [+3]
       11 JUMPIFNOTEQKS                    R1 K3 ["ITALIC"] ; [+41]
       13 LOADK                            R2 K4 ["<em>%*</em>"]
       14 GETTABLEKS                       R5 R0 K5 ["children"]
       16 JUMPIF                           R5 ; [+2]
       17 LOADK                            R4 K6 [""]
       18 JUMP                             ; [+30]
       19 LOADK                            R6 K6 [""]
       20 MOVE                             R7 R5
       21 LOADNIL                          R8
       22 LOADNIL                          R9
       23 FORGPREP                         R7
       24 MOVE                             R12 R6
       25 GETUPVAL                         R15 0
       26 GETTABLEKS                       R16 R11 K7 ["name"]
       28 GETTABLE                         R14 R15 R16
       29 JUMPIFNOT                        R14 ; [+5]
       30 MOVE                             R15 R14
       31 MOVE                             R16 R11
       32 CALL                             R15 1 1
       33 MOVE                             R13 R15
       34 JUMP                             ; [+10]
       35 GETIMPORT                        R15 K9 [error]
       37 LOADK                            R16 K10 ["No handler found for node %*"]
       38 GETTABLEKS                       R18 R11 K7 ["name"]
       40 NAMECALL                         R16 R16 K11 ["format"]
       42 CALL                             R16 2 1
       43 CALL                             R15 1 0
       44 LOADNIL                          R13
       45 CONCAT                           R6 R12 R13
       46 FORGLOOP                         R7 2 ; [-23]
       48 MOVE                             R4 R6
       49 NAMECALL                         R2 R2 K11 ["format"]
       51 CALL                             R2 2 1
       52 RETURN                           R2 1
       53 JUMPIFEQKS                       R1 K12 ["BOLD_2"] ; [+3]
       55 JUMPIFNOTEQKS                    R1 K13 ["ITALIC_2"] ; [+41]
       57 LOADK                            R2 K14 ["<strong>%*</strong>"]
       58 GETTABLEKS                       R5 R0 K5 ["children"]
       60 JUMPIF                           R5 ; [+2]
       61 LOADK                            R4 K6 [""]
       62 JUMP                             ; [+30]
       63 LOADK                            R6 K6 [""]
       64 MOVE                             R7 R5
       65 LOADNIL                          R8
       66 LOADNIL                          R9
       67 FORGPREP                         R7
       68 MOVE                             R12 R6
       69 GETUPVAL                         R15 0
       70 GETTABLEKS                       R16 R11 K7 ["name"]
       72 GETTABLE                         R14 R15 R16
       73 JUMPIFNOT                        R14 ; [+5]
       74 MOVE                             R15 R14
       75 MOVE                             R16 R11
       76 CALL                             R15 1 1
       77 MOVE                             R13 R15
       78 JUMP                             ; [+10]
       79 GETIMPORT                        R15 K9 [error]
       81 LOADK                            R16 K10 ["No handler found for node %*"]
       82 GETTABLEKS                       R18 R11 K7 ["name"]
       84 NAMECALL                         R16 R16 K11 ["format"]
       86 CALL                             R16 2 1
       87 CALL                             R15 1 0
       88 LOADNIL                          R13
       89 CONCAT                           R6 R12 R13
       90 FORGLOOP                         R7 2 ; [-23]
       92 MOVE                             R4 R6
       93 NAMECALL                         R2 R2 K11 ["format"]
       95 CALL                             R2 2 1
       96 RETURN                           R2 1
       97 JUMPIFNOTEQKS                    R1 K15 ["STRIKE"] ; [+41]
       99 LOADK                            R2 K16 ["<u>%*</u>"]
      100 GETTABLEKS                       R5 R0 K5 ["children"]
      102 JUMPIF                           R5 ; [+2]
      103 LOADK                            R4 K6 [""]
      104 JUMP                             ; [+30]
      105 LOADK                            R6 K6 [""]
      106 MOVE                             R7 R5
      107 LOADNIL                          R8
      108 LOADNIL                          R9
      109 FORGPREP                         R7
      110 MOVE                             R12 R6
      111 GETUPVAL                         R15 0
      112 GETTABLEKS                       R16 R11 K7 ["name"]
      114 GETTABLE                         R14 R15 R16
      115 JUMPIFNOT                        R14 ; [+5]
      116 MOVE                             R15 R14
      117 MOVE                             R16 R11
      118 CALL                             R15 1 1
      119 MOVE                             R13 R15
      120 JUMP                             ; [+10]
      121 GETIMPORT                        R15 K9 [error]
      123 LOADK                            R16 K10 ["No handler found for node %*"]
      124 GETTABLEKS                       R18 R11 K7 ["name"]
      126 NAMECALL                         R16 R16 K11 ["format"]
      128 CALL                             R16 2 1
      129 CALL                             R15 1 0
      130 LOADNIL                          R13
      131 CONCAT                           R6 R12 R13
      132 FORGLOOP                         R7 2 ; [-23]
      134 MOVE                             R4 R6
      135 NAMECALL                         R2 R2 K11 ["format"]
      137 CALL                             R2 2 1
      138 RETURN                           R2 1
      139 JUMPIFNOTEQKS                    R1 K17 ["INLINE_CODE"] ; [+41]
      141 LOADK                            R2 K18 ["<code>%*</code>"]
      142 GETTABLEKS                       R5 R0 K5 ["children"]
      144 JUMPIF                           R5 ; [+2]
      145 LOADK                            R4 K6 [""]
      146 JUMP                             ; [+30]
      147 LOADK                            R6 K6 [""]
      148 MOVE                             R7 R5
      149 LOADNIL                          R8
      150 LOADNIL                          R9
      151 FORGPREP                         R7
      152 MOVE                             R12 R6
      153 GETUPVAL                         R15 0
      154 GETTABLEKS                       R16 R11 K7 ["name"]
      156 GETTABLE                         R14 R15 R16
      157 JUMPIFNOT                        R14 ; [+5]
      158 MOVE                             R15 R14
      159 MOVE                             R16 R11
      160 CALL                             R15 1 1
      161 MOVE                             R13 R15
      162 JUMP                             ; [+10]
      163 GETIMPORT                        R15 K9 [error]
      165 LOADK                            R16 K10 ["No handler found for node %*"]
      166 GETTABLEKS                       R18 R11 K7 ["name"]
      168 NAMECALL                         R16 R16 K11 ["format"]
      170 CALL                             R16 2 1
      171 CALL                             R15 1 0
      172 LOADNIL                          R13
      173 CONCAT                           R6 R12 R13
      174 FORGLOOP                         R7 2 ; [-23]
      176 MOVE                             R4 R6
      177 NAMECALL                         R2 R2 K11 ["format"]
      179 CALL                             R2 2 1
      180 RETURN                           R2 1
      181 JUMPIFNOTEQKNIL                  R1 ; [+37]
      183 GETTABLEKS                       R3 R0 K5 ["children"]
      185 JUMPIF                           R3 ; [+2]
      186 LOADK                            R2 K6 [""]
      187 RETURN                           R2 1
      188 LOADK                            R4 K6 [""]
      189 MOVE                             R5 R3
      190 LOADNIL                          R6
      191 LOADNIL                          R7
      192 FORGPREP                         R5
      193 MOVE                             R10 R4
      194 GETUPVAL                         R13 0
      195 GETTABLEKS                       R14 R9 K7 ["name"]
      197 GETTABLE                         R12 R13 R14
      198 JUMPIFNOT                        R12 ; [+5]
      199 MOVE                             R13 R12
      200 MOVE                             R14 R9
      201 CALL                             R13 1 1
      202 MOVE                             R11 R13
      203 JUMP                             ; [+10]
      204 GETIMPORT                        R13 K9 [error]
      206 LOADK                            R14 K10 ["No handler found for node %*"]
      207 GETTABLEKS                       R16 R9 K7 ["name"]
      209 NAMECALL                         R14 R14 K11 ["format"]
      211 CALL                             R14 2 1
      212 CALL                             R13 1 0
      213 LOADNIL                          R11
      214 CONCAT                           R4 R10 R11
      215 FORGLOOP                         R5 2 ; [-23]
      217 MOVE                             R2 R4
      218 RETURN                           R2 1
      219 GETIMPORT                        R2 K9 [error]
      221 LOADK                            R3 K19 ["Unknown text style %*"]
      222 MOVE                             R5 R1
      223 NAMECALL                         R3 R3 K11 ["format"]
      225 CALL                             R3 2 1
      226 CALL                             R2 1 0
      227 RETURN                           R0 0

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
       25 JUMP                             ; [+30]
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
       41 JUMP                             ; [+10]
       42 GETIMPORT                        R14 K7 [error]
       44 LOADK                            R15 K8 ["No handler found for node %*"]
       45 GETTABLEKS                       R17 R10 K5 ["name"]
       47 NAMECALL                         R15 R15 K9 ["format"]
       49 CALL                             R15 2 1
       50 CALL                             R14 1 0
       51 LOADNIL                          R12
       52 CONCAT                           R5 R11 R12
       53 FORGLOOP                         R6 2 ; [-23]
       55 MOVE                             R3 R5
       56 JUMPIFNOTEQKS                    R3 K2 [""] ; [+6]
       58 GETTABLEKS                       R4 R0 K10 ["text"]
       60 JUMPIFNOT                        R4 ; [+2]
       61 GETTABLEKS                       R3 R0 K10 ["text"]
       63 LOADK                            R4 K11 ["<a href=\"%*\"%*>%*</a>"]
       64 GETIMPORT                        R6 K14 [string.gsub]
       66 MOVE                             R7 R1
       67 LOADK                            R8 K15 ["([^%w_%%%-%.%*%?%(%)#~/:=])"]
       68 DUPCLOSURE                       R9 K16 [PROTO_1]
       69 CALL                             R6 3 1
       70 JUMPIFNOT                        R2 ; [+8]
       71 LOADK                            R7 K17 [" title=\"%*\""]
       72 GETUPVAL                         R9 1
       73 MOVE                             R10 R2
       74 CALL                             R9 1 1
       75 NAMECALL                         R7 R7 K9 ["format"]
       77 CALL                             R7 2 1
       78 JUMP                             ; [+1]
       79 LOADK                            R7 K2 [""]
       80 GETUPVAL                         R8 1
       81 MOVE                             R9 R3
       82 CALL                             R8 1 1
       83 NAMECALL                         R4 R4 K9 ["format"]
       85 CALL                             R4 4 1
       86 RETURN                           R4 1

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
       30 JUMPIFNOT                        R3 ; [+49]
       31 GETTABLEKS                       R4 R0 K8 ["children"]
       33 LENGTH                           R3 R4
       34 LOADN                            R4 0
       35 JUMPIFNOTLT                      R4 R3 ; [+44]
       37 LOADK                            R3 K9 ["<%*%*>%*</%*>"]
       38 MOVE                             R5 R1
       39 MOVE                             R6 R2
       40 GETTABLEKS                       R8 R0 K8 ["children"]
       42 JUMPIF                           R8 ; [+2]
       43 LOADK                            R7 K1 [""]
       44 JUMP                             ; [+30]
       45 LOADK                            R9 K1 [""]
       46 MOVE                             R10 R8
       47 LOADNIL                          R11
       48 LOADNIL                          R12
       49 FORGPREP                         R10
       50 MOVE                             R15 R9
       51 GETUPVAL                         R18 0
       52 GETTABLEKS                       R19 R14 K10 ["name"]
       54 GETTABLE                         R17 R18 R19
       55 JUMPIFNOT                        R17 ; [+5]
       56 MOVE                             R18 R17
       57 MOVE                             R19 R14
       58 CALL                             R18 1 1
       59 MOVE                             R16 R18
       60 JUMP                             ; [+10]
       61 GETIMPORT                        R18 K3 [error]
       63 LOADK                            R19 K11 ["No handler found for node %*"]
       64 GETTABLEKS                       R21 R14 K10 ["name"]
       66 NAMECALL                         R19 R19 K7 ["format"]
       68 CALL                             R19 2 1
       69 CALL                             R18 1 0
       70 LOADNIL                          R16
       71 CONCAT                           R9 R15 R16
       72 FORGLOOP                         R10 2 ; [-23]
       74 MOVE                             R7 R9
       75 MOVE                             R8 R1
       76 NAMECALL                         R3 R3 K7 ["format"]
       78 CALL                             R3 5 1
       79 RETURN                           R3 1
       80 LOADK                            R3 K12 ["<%*%* />"]
       81 MOVE                             R5 R1
       82 MOVE                             R6 R2
       83 NAMECALL                         R3 R3 K7 ["format"]
       85 CALL                             R3 3 1
       86 RETURN                           R3 1

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
       15 LOADK                            R3 K4 ["<img src=\"%*\" alt=\"%*\" />"]
       16 GETIMPORT                        R5 K7 [string.gsub]
       18 MOVE                             R6 R1
       19 LOADK                            R7 K8 ["([^%w_%%%-%.%*%?%(%)#~/:=])"]
       20 DUPCLOSURE                       R8 K9 [PROTO_1]
       21 CALL                             R5 3 1
       22 GETUPVAL                         R6 0
       23 MOVE                             R7 R2
       24 CALL                             R6 1 1
       25 NAMECALL                         R3 R3 K10 ["format"]
       27 CALL                             R3 3 1
       28 RETURN                           R3 1

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
       20 JUMP                             ; [+10]
       21 GETIMPORT                        R12 K4 [error]
       23 LOADK                            R13 K5 ["No handler found for node %*"]
       24 GETTABLEKS                       R15 R8 K2 ["name"]
       26 NAMECALL                         R13 R13 K6 ["format"]
       28 CALL                             R13 2 1
       29 CALL                             R12 1 0
       30 LOADNIL                          R10
       31 CONCAT                           R3 R9 R10
       32 FORGLOOP                         R4 2 ; [-23]
       34 MOVE                             R1 R3
       35 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Util"]
       15 GETTABLEKS                       R2 R2 K6 ["Markdown"]
       17 GETTABLEKS                       R2 R2 K7 ["Types"]
       19 CALL                             R1 1 1
       20 NEWTABLE                         R2 1 0
       22 NEWTABLE                         R3 0 0
       24 DUPCLOSURE                       R4 K8 [PROTO_0]
       25 DUPCLOSURE                       R5 K9 [PROTO_2]
       26 NEWCLOSURE                       R6 P2
       27 CAPTURE                          REF R3
       28 NEWCLOSURE                       R7 P3
       29 CAPTURE                          REF R3
       30 NEWCLOSURE                       R8 P4
       31 CAPTURE                          REF R3
       32 NEWCLOSURE                       R9 P5
       33 CAPTURE                          REF R3
       34 NEWCLOSURE                       R10 P6
       35 CAPTURE                          REF R3
       36 DUPCLOSURE                       R11 K10 [PROTO_8]
       37 NEWCLOSURE                       R12 P8
       38 CAPTURE                          REF R3
       39 DUPCLOSURE                       R13 K11 [PROTO_10]
       40 NEWCLOSURE                       R14 P10
       41 CAPTURE                          REF R3
       42 NEWCLOSURE                       R15 P11
       43 CAPTURE                          REF R3
       44 NEWCLOSURE                       R16 P12
       45 CAPTURE                          REF R3
       46 DUPCLOSURE                       R17 K12 [PROTO_14]
       47 CAPTURE                          VAL R4
       48 NEWCLOSURE                       R18 P14
       49 CAPTURE                          REF R3
       50 CAPTURE                          VAL R4
       51 NEWCLOSURE                       R19 P15
       52 CAPTURE                          REF R3
       53 DUPCLOSURE                       R20 K13 [PROTO_17]
       54 DUPCLOSURE                       R21 K14 [PROTO_18]
       55 DUPCLOSURE                       R22 K15 [PROTO_19]
       56 CAPTURE                          VAL R4
       57 NEWCLOSURE                       R23 P19
       58 CAPTURE                          REF R3
       59 NEWTABLE                         R24 32 0
       61 SETTABLEKS                       R8 R24 K16 ["ROOT"]
       63 SETTABLEKS                       R9 R24 K17 ["HEADING"]
       65 SETTABLEKS                       R10 R24 K18 ["PARAGRAPH"]
       67 SETTABLEKS                       R17 R24 K19 ["TEXT"]
       69 SETTABLEKS                       R16 R24 K20 ["STYLED_TEXT"]
       71 SETTABLEKS                       R11 R24 K21 ["DIVIDER"]
       73 SETTABLEKS                       R12 R24 K22 ["QUOTE"]
       75 SETTABLEKS                       R13 R24 K23 ["CODE_BLOCK"]
       77 SETTABLEKS                       R14 R24 K24 ["LIST"]
       79 SETTABLEKS                       R15 R24 K25 ["LIST_ITEM"]
       81 SETTABLEKS                       R18 R24 K26 ["LINK"]
       83 SETTABLEKS                       R19 R24 K27 ["TAG"]
       85 SETTABLEKS                       R20 R24 K28 ["LINE_BREAK"]
       87 SETTABLEKS                       R21 R24 K29 ["BREAK"]
       89 SETTABLEKS                       R22 R24 K30 ["IMAGE"]
       91 SETTABLEKS                       R23 R24 K31 ["TABLE_HEADER"]
       93 SETTABLEKS                       R23 R24 K32 ["TABLE_ROW"]
       95 SETTABLEKS                       R23 R24 K33 ["ACTION"]
       97 MOVE                             R3 R24
       98 DUPCLOSURE                       R24 K34 [PROTO_21]
       99 CAPTURE                          VAL R6
      100 SETTABLEKS                       R24 R2 K35 ["map"]
      102 CLOSEUPVALS                      R3
      103 RETURN                           R2 1
