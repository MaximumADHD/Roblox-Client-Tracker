PROTO_0:
        0 LOADK                            R3 K0 ["&"]
        1 LOADK                            R4 K1 ["&amp;"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R3 K3 ["<"]
        6 LOADK                            R4 K4 ["&lt;"]
        7 NAMECALL                         R1 R1 K2 ["gsub"]
        9 CALL                             R1 3 1
       10 LOADK                            R3 K5 [">"]
       11 LOADK                            R4 K6 ["&gt;"]
       12 NAMECALL                         R1 R1 K2 ["gsub"]
       14 CALL                             R1 3 1
       15 LOADK                            R3 K7 ["\""]
       16 LOADK                            R4 K8 ["&quot;"]
       17 NAMECALL                         R1 R1 K2 ["gsub"]
       19 CALL                             R1 3 1
       20 LOADK                            R3 K9 ["'"]
       21 LOADK                            R4 K10 ["&apos;"]
       22 NAMECALL                         R1 R1 K2 ["gsub"]
       24 CALL                             R1 3 -1
       25 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["^([^%*_~`]+)()"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["match"]
        5 CALL                             R0 3 2
        6 JUMPIFNOT                        R0 ; [+9]
        7 JUMPIFNOT                        R1 ; [+8]
        8 SETUPVAL                         R1 1
        9 DUPTABLE                         R2 K4 [{"flag", "text"}]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K2 ["flag"]
       13 SETTABLEKS                       R0 R2 K3 ["text"]
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 1
       17 GETUPVAL                         R3 0
       18 NAMECALL                         R3 R3 K5 ["len"]
       20 CALL                             R3 1 1
       21 JUMPIFNOTLE                      R2 R3 ; [+24]
       23 GETUPVAL                         R2 0
       24 LOADK                            R5 K6 ["^(%"]
       25 GETUPVAL                         R8 0
       26 GETUPVAL                         R10 1
       27 GETUPVAL                         R11 1
       28 NAMECALL                         R8 R8 K7 ["sub"]
       30 CALL                             R8 3 1
       31 MOVE                             R6 R8
       32 LOADK                            R7 K8 ["+)()"]
       33 CONCAT                           R4 R5 R7
       34 GETUPVAL                         R5 1
       35 NAMECALL                         R2 R2 K1 ["match"]
       37 CALL                             R2 3 2
       38 SETUPVAL                         R3 1
       39 DUPTABLE                         R4 K4 [{"flag", "text"}]
       40 LOADB                            R5 1
       41 SETTABLEKS                       R5 R4 K2 ["flag"]
       43 SETTABLEKS                       R2 R4 K3 ["text"]
       45 RETURN                           R4 1
       46 LOADNIL                          R2
       47 RETURN                           R2 1

PROTO_2:
        0 LOADN                            R1 1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          REF R1
        4 CLOSEUPVALS                      R1
        5 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADN                            R5 1
        2 LOADN                            R6 1
        3 NAMECALL                         R3 R0 K0 ["sub"]
        5 CALL                             R3 3 1
        6 GETTABLE                         R1 R2 R3
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R0 R1
        4 NEWTABLE                         R1 4 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["Bold"]
        9 NEWTABLE                         R3 0 2
       11 LOADK                            R4 K1 ["<b>"]
       12 LOADK                            R5 K2 ["</b>"]
       13 SETLIST                          R3 R4 2 [1]
       15 SETTABLE                         R3 R1 R2
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K3 ["Italic"]
       19 NEWTABLE                         R3 0 2
       21 LOADK                            R4 K4 ["<i>"]
       22 LOADK                            R5 K5 ["</i>"]
       23 SETLIST                          R3 R4 2 [1]
       25 SETTABLE                         R3 R1 R2
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K6 ["Strike"]
       29 NEWTABLE                         R3 0 2
       31 LOADK                            R4 K7 ["<s>"]
       32 LOADK                            R5 K8 ["</s>"]
       33 SETLIST                          R3 R4 2 [1]
       35 SETTABLE                         R3 R1 R2
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K9 ["Code"]
       39 NEWTABLE                         R3 0 2
       41 LOADK                            R4 K10 ["<font face=\"RobotoMono\">"]
       42 LOADK                            R5 K11 ["</font>"]
       43 SETLIST                          R3 R4 2 [1]
       45 SETTABLE                         R3 R1 R2
       46 NEWTABLE                         R2 0 0
       48 LOADK                            R3 K12 [""]
       49 MOVE                             R7 R0
       50 LOADN                            R8 1
       51 NEWCLOSURE                       R4 P0
       52 CAPTURE                          VAL R7
       53 CAPTURE                          REF R8
       54 LOADNIL                          R5
       55 LOADNIL                          R6
       56 CLOSEUPVALS                      R8
       57 FORGPREP                         R4
       58 GETTABLEKS                       R9 R7 K13 ["flag"]
       60 JUMPIFNOT                        R9 ; [+50]
       61 GETTABLEKS                       R10 R7 K14 ["text"]
       63 GETUPVAL                         R11 2
       64 LOADN                            R14 1
       65 LOADN                            R15 1
       66 NAMECALL                         R12 R10 K15 ["sub"]
       68 CALL                             R12 3 1
       69 GETTABLE                         R9 R11 R12
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R11 R11 K9 ["Code"]
       73 GETTABLE                         R10 R2 R11
       74 JUMPIFNOT                        R10 ; [+10]
       75 GETUPVAL                         R10 1
       76 GETTABLEKS                       R10 R10 K9 ["Code"]
       78 JUMPIFEQ                         R9 R10 ; [+6]
       80 MOVE                             R10 R3
       81 GETTABLEKS                       R11 R7 K14 ["text"]
       83 CONCAT                           R3 R10 R11
       84 JUMP                             ; [+30]
       85 GETTABLE                         R10 R2 R9
       86 JUMPIF                           R10 ; [+8]
       87 MOVE                             R11 R3
       88 GETTABLE                         R13 R1 R9
       89 GETTABLEN                        R12 R13 1
       90 CONCAT                           R3 R11 R12
       91 GETTABLEKS                       R11 R7 K14 ["text"]
       93 SETTABLE                         R11 R2 R9
       94 JUMP                             ; [+20]
       95 GETTABLEKS                       R11 R7 K14 ["text"]
       97 JUMPIFNOTEQ                      R11 R10 ; [+8]
       99 MOVE                             R11 R3
      100 GETTABLE                         R13 R1 R9
      101 GETTABLEN                        R12 R13 2
      102 CONCAT                           R3 R11 R12
      103 LOADNIL                          R11
      104 SETTABLE                         R11 R2 R9
      105 JUMP                             ; [+9]
      106 MOVE                             R11 R3
      107 GETTABLEKS                       R12 R7 K14 ["text"]
      109 CONCAT                           R3 R11 R12
      110 JUMP                             ; [+4]
      111 MOVE                             R9 R3
      112 GETTABLEKS                       R10 R7 K14 ["text"]
      114 CONCAT                           R3 R9 R10
      115 FORGLOOP                         R4 1 ; [-58]
      117 GETIMPORT                        R4 K17 [pairs]
      119 MOVE                             R5 R2
      120 CALL                             R4 1 3
      121 FORGPREP_NEXT                    R4
      122 MOVE                             R9 R3
      123 GETTABLE                         R11 R1 R7
      124 GETTABLEN                        R10 R11 2
      125 CONCAT                           R3 R9 R10
      126 FORGLOOP                         R4 1 ; [-5]
      128 RETURN                           R3 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R2 K0 [""]
        3 LOADN                            R3 1
        4 NAMECALL                         R4 R0 K1 ["len"]
        6 CALL                             R4 1 1
        7 JUMPIFNOTLE                      R3 R4 ; [+42]
        9 LOADK                            R6 K2 ["%[([^%]]+)%]%(([^%)]+)%)"]
       10 MOVE                             R7 R3
       11 NAMECALL                         R4 R0 K3 ["find"]
       13 CALL                             R4 3 4
       14 JUMPIFNOT                        R4 ; [+27]
       15 MOVE                             R8 R2
       16 MOVE                             R13 R3
       17 SUBK                             R14 R4 K4 [1]
       18 NAMECALL                         R11 R0 K5 ["sub"]
       20 CALL                             R11 3 1
       21 MOVE                             R9 R11
       22 LOADK                            R11 K6 ["[%*]"]
       23 MOVE                             R13 R6
       24 NAMECALL                         R11 R11 K7 ["format"]
       26 CALL                             R11 2 1
       27 MOVE                             R10 R11
       28 CONCAT                           R2 R8 R10
       29 DUPTABLE                         R10 K10 [{"Text", "Url"}]
       30 SETTABLEKS                       R6 R10 K8 ["Text"]
       32 SETTABLEKS                       R7 R10 K9 ["Url"]
       34 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       36 MOVE                             R9 R1
       37 GETIMPORT                        R8 K13 [table.insert]
       39 CALL                             R8 2 0
       40 ADDK                             R3 R5 K4 [1]
       41 JUMP                             ; [+7]
       42 MOVE                             R8 R2
       43 MOVE                             R11 R3
       44 NAMECALL                         R9 R0 K5 ["sub"]
       46 CALL                             R9 2 1
       47 CONCAT                           R2 R8 R9
       48 JUMP                             ; [+1]
       49 JUMPBACK                         ; [-46]
       50 MOVE                             R4 R2
       51 MOVE                             R5 R1
       52 RETURN                           R4 2

PROTO_6:
        0 LOADK                            R3 K0 ["\t"]
        1 LOADK                            R4 K1 ["    "]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_7:
        0 LOADK                            R3 K0 ["^%s*()(.*)"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 2
        4 MOVE                             R3 R2
        5 DIVK                             R5 R1 K2 [2]
        6 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        7 GETIMPORT                        R4 K5 [math.floor]
        9 CALL                             R4 1 1
       10 RETURN                           R3 2

PROTO_8:
        0 MOVE                             R2 R0
        1 LOADK                            R3 K0 ["\n"]
        2 CONCAT                           R1 R2 R3
        3 LOADK                            R3 K1 ["(.-)\n"]
        4 NAMECALL                         R1 R1 K2 ["gmatch"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+107]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["Code"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+15]
        9 LOADK                            R3 K1 ["^```"]
       10 NAMECALL                         R1 R0 K2 ["match"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+4]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K3 ["None"]
       17 SETUPVAL                         R1 1
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K0 ["Code"]
       21 MOVE                             R2 R0
       22 RETURN                           R1 2
       23 LOADK                            R3 K4 ["^%s*$"]
       24 NAMECALL                         R1 R0 K2 ["match"]
       26 CALL                             R1 2 1
       27 JUMPIFNOT                        R1 ; [+5]
       28 GETUPVAL                         R1 2
       29 GETTABLEKS                       R1 R1 K3 ["None"]
       31 LOADK                            R2 K5 [""]
       32 RETURN                           R1 2
       33 LOADK                            R3 K6 ["^%-%-%-+"]
       34 NAMECALL                         R1 R0 K2 ["match"]
       36 CALL                             R1 2 1
       37 JUMPIF                           R1 ; [+5]
       38 LOADK                            R3 K7 ["^===+"]
       39 NAMECALL                         R1 R0 K2 ["match"]
       41 CALL                             R1 2 1
       42 JUMPIFNOT                        R1 ; [+5]
       43 GETUPVAL                         R1 2
       44 GETTABLEKS                       R1 R1 K8 ["Ruler"]
       46 LOADK                            R2 K5 [""]
       47 RETURN                           R1 2
       48 LOADK                            R3 K9 ["^#"]
       49 NAMECALL                         R1 R0 K2 ["match"]
       51 CALL                             R1 2 1
       52 JUMPIFNOT                        R1 ; [+5]
       53 GETUPVAL                         R1 2
       54 GETTABLEKS                       R1 R1 K10 ["Heading"]
       56 MOVE                             R2 R0
       57 RETURN                           R1 2
       58 LOADK                            R3 K11 ["^%s*```"]
       59 NAMECALL                         R1 R0 K2 ["match"]
       61 CALL                             R1 2 1
       62 JUMPIFNOT                        R1 ; [+7]
       63 GETUPVAL                         R1 2
       64 GETTABLEKS                       R1 R1 K0 ["Code"]
       66 SETUPVAL                         R1 1
       67 GETUPVAL                         R1 1
       68 MOVE                             R2 R0
       69 RETURN                           R1 2
       70 LOADK                            R3 K12 ["^%s*>"]
       71 NAMECALL                         R1 R0 K2 ["match"]
       73 CALL                             R1 2 1
       74 JUMPIFNOT                        R1 ; [+5]
       75 GETUPVAL                         R1 2
       76 GETTABLEKS                       R1 R1 K13 ["Quote"]
       78 MOVE                             R2 R0
       79 RETURN                           R1 2
       80 LOADK                            R3 K14 ["^%s*%-%s+"]
       81 NAMECALL                         R1 R0 K2 ["match"]
       83 CALL                             R1 2 1
       84 JUMPIF                           R1 ; [+15]
       85 LOADK                            R3 K15 ["^%s*%*%s+"]
       86 NAMECALL                         R1 R0 K2 ["match"]
       88 CALL                             R1 2 1
       89 JUMPIF                           R1 ; [+10]
       90 LOADK                            R3 K16 ["^%s*[%u%d]+%.%s+"]
       91 NAMECALL                         R1 R0 K2 ["match"]
       93 CALL                             R1 2 1
       94 JUMPIF                           R1 ; [+5]
       95 LOADK                            R3 K17 ["^%s*%+%s+"]
       96 NAMECALL                         R1 R0 K2 ["match"]
       98 CALL                             R1 2 1
       99 JUMPIFNOT                        R1 ; [+5]
      100 GETUPVAL                         R1 2
      101 GETTABLEKS                       R1 R1 K18 ["List"]
      103 MOVE                             R2 R0
      104 RETURN                           R1 2
      105 GETUPVAL                         R1 2
      106 GETTABLEKS                       R1 R1 K19 ["Paragraph"]
      108 MOVE                             R2 R0
      109 RETURN                           R1 2
      110 LOADNIL                          R1
      111 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["None"]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K1 ["\n"]
        5 CONCAT                           R2 R3 R4
        6 LOADK                            R4 K2 ["(.-)\n"]
        7 NAMECALL                         R2 R2 K3 ["gmatch"]
        9 CALL                             R2 2 1
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          REF R1
       13 CAPTURE                          UPVAL U0
       14 CLOSEUPVALS                      R1
       15 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Ruler"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+42]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["Paragraph"]
       11 JUMPIFNOTEQ                      R2 R3 ; [+36]
       13 GETUPVAL                         R2 3
       14 GETUPVAL                         R3 0
       15 CALL                             R3 0 2
       16 SETUPVAL                         R3 2
       17 SETUPVAL                         R4 3
       18 GETUPVAL                         R3 3
       19 JUMPIFNOT                        R3 ; [+24]
       20 JUMPIFNOT                        R2 ; [+23]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K2 ["Heading"]
       24 LOADK                            R8 K3 ["#"]
       25 GETUPVAL                         R11 3
       26 LOADN                            R13 1
       27 LOADN                            R14 1
       28 NAMECALL                         R11 R11 K4 ["sub"]
       30 CALL                             R11 3 1
       31 JUMPIFNOTEQKS                    R11 K5 ["="] ; [+3]
       33 LOADN                            R10 2
       34 JUMP                             ; [+1]
       35 LOADN                            R10 1
       36 NAMECALL                         R8 R8 K6 ["rep"]
       38 CALL                             R8 2 1
       39 MOVE                             R5 R8
       40 LOADK                            R6 K7 [" "]
       41 MOVE                             R7 R2
       42 CONCAT                           R4 R5 R7
       43 RETURN                           R3 2
       44 GETIMPORT                        R3 K9 [error]
       46 LOADK                            R4 K10 ["Reached the end of the md"]
       47 CALL                             R3 1 0
       48 NEWTABLE                         R2 0 1
       50 GETUPVAL                         R3 3
       51 SETLIST                          R2 R3 1 [1]
       53 JUMPIFNOT                        R0 ; [+18]
       54 GETUPVAL                         R4 4
       55 GETTABLE                         R3 R4 R0
       56 JUMPIFNOT                        R3 ; [+15]
       57 GETUPVAL                         R3 2
       58 JUMPIFNOTEQ                      R0 R3 ; [+13]
       60 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
       62 MOVE                             R4 R2
       63 MOVE                             R5 R1
       64 GETIMPORT                        R3 K13 [table.insert]
       66 CALL                             R3 2 0
       67 GETUPVAL                         R3 0
       68 CALL                             R3 0 2
       69 MOVE                             R0 R3
       70 MOVE                             R1 R4
       71 JUMPBACK                         ; [-18]
       72 GETUPVAL                         R3 2
       73 GETIMPORT                        R4 K15 [table.concat]
       75 MOVE                             R5 R2
       76 LOADK                            R6 K16 ["\n"]
       77 CALL                             R4 2 1
       78 SETUPVAL                         R0 2
       79 SETUPVAL                         R1 3
       80 RETURN                           R3 2

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["None"]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K1 ["\n"]
        5 CONCAT                           R3 R4 R5
        6 LOADK                            R5 K2 ["(.-)\n"]
        7 NAMECALL                         R3 R3 K3 ["gmatch"]
        9 CALL                             R3 2 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          REF R2
       13 CAPTURE                          UPVAL U0
       14 MOVE                             R1 R4
       15 CLOSEUPVALS                      R2
       16 MOVE                             R2 R1
       17 CALL                             R2 0 2
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          REF R2
       22 CAPTURE                          REF R3
       23 CAPTURE                          UPVAL U1
       24 CLOSEUPVALS                      R2
       25 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["None"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+4]
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 -1
        9 RETURN                           R2 -1
       10 NEWTABLE                         R2 16 0
       12 JUMPIFNOT                        R0 ; [+172]
       13 LOADK                            R7 K1 ["^%s*()(.*)"]
       14 NAMECALL                         R5 R1 K2 ["match"]
       16 CALL                             R5 2 2
       17 MOVE                             R3 R6
       18 DIVK                             R8 R5 K3 [2]
       19 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       20 GETIMPORT                        R7 K6 [math.floor]
       22 CALL                             R7 1 1
       23 MOVE                             R4 R7
       24 SETTABLEKS                       R4 R2 K7 ["Indent"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K8 ["Paragraph"]
       29 JUMPIFNOTEQ                      R0 R5 ; [+15]
       31 GETUPVAL                         R5 3
       32 MOVE                             R6 R3
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R2 K9 ["Text"]
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R6 R2 K9 ["Text"]
       39 CALL                             R5 1 2
       40 SETTABLEKS                       R5 R2 K9 ["Text"]
       42 SETTABLEKS                       R6 R2 K10 ["Links"]
       44 JUMP                             ; [+140]
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R5 R5 K11 ["Heading"]
       48 JUMPIFNOTEQ                      R0 R5 ; [+16]
       50 LOADK                            R7 K12 ["^#+()%s*(.*)"]
       51 NAMECALL                         R5 R1 K2 ["match"]
       53 CALL                             R5 2 2
       54 JUMPIFNOT                        R5 ; [+130]
       55 JUMPIFNOT                        R6 ; [+129]
       56 SUBK                             R7 R5 K13 [1]
       57 GETUPVAL                         R8 3
       58 MOVE                             R9 R6
       59 CALL                             R8 1 1
       60 SETTABLEKS                       R7 R2 K14 ["Level"]
       62 SETTABLEKS                       R8 R2 K9 ["Text"]
       64 JUMP                             ; [+120]
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K15 ["Code"]
       68 JUMPIFNOTEQ                      R0 R5 ; [+19]
       70 LOADK                            R7 K16 ["^```(.-)\n(.*)\n```$"]
       71 NAMECALL                         R5 R3 K2 ["match"]
       73 CALL                             R5 2 2
       74 JUMPIFNOT                        R5 ; [+110]
       75 JUMPIFNOT                        R6 ; [+109]
       76 JUMPIFNOTEQKS                    R5 K17 ["lua"] ; [+3]
       78 MOVE                             R7 R6
       79 JUMPIF                           R7 ; [+3]
       80 GETUPVAL                         R7 5
       81 MOVE                             R8 R6
       82 CALL                             R7 1 1
       83 SETTABLEKS                       R5 R2 K18 ["Syntax"]
       85 SETTABLEKS                       R7 R2 K15 ["Code"]
       87 JUMP                             ; [+97]
       88 GETUPVAL                         R5 1
       89 GETTABLEKS                       R5 R5 K19 ["List"]
       91 JUMPIFNOTEQ                      R0 R5 ; [+60]
       93 LOADK                            R7 K20 ["\n"]
       94 NAMECALL                         R5 R1 K21 ["split"]
       96 CALL                             R5 2 1
       97 NEWTABLE                         R6 0 0
       99 GETIMPORT                        R7 K23 [ipairs]
      101 MOVE                             R8 R5
      102 CALL                             R7 1 3
      103 FORGPREP_INEXT                   R7
      104 LOADK                            R16 K1 ["^%s*()(.*)"]
      105 NAMECALL                         R14 R11 K2 ["match"]
      107 CALL                             R14 2 2
      108 MOVE                             R12 R15
      109 DIVK                             R17 R14 K3 [2]
      110 FASTCALL1                        MATH_FLOOR R17 ; [+2]
      111 GETIMPORT                        R16 K6 [math.floor]
      113 CALL                             R16 1 1
      114 MOVE                             R13 R16
      115 LOADK                            R16 K24 ["^(.-)%s+(.*)"]
      116 NAMECALL                         R14 R12 K2 ["match"]
      118 CALL                             R14 2 2
      119 JUMPIFNOT                        R14 ; [+27]
      120 JUMPIFNOT                        R15 ; [+26]
      121 DUPTABLE                         R16 K26 [{"Level", "Text", "Symbol", "Links"}]
      122 SETTABLEKS                       R13 R16 K14 ["Level"]
      124 GETUPVAL                         R17 3
      125 MOVE                             R18 R15
      126 CALL                             R17 1 1
      127 SETTABLEKS                       R17 R16 K9 ["Text"]
      129 SETTABLEKS                       R14 R16 K25 ["Symbol"]
      131 NEWTABLE                         R17 0 0
      133 SETTABLEKS                       R17 R16 K10 ["Links"]
      135 SETTABLE                         R16 R6 R10
      136 GETTABLE                         R16 R6 R10
      137 GETTABLE                         R17 R6 R10
      138 GETUPVAL                         R18 4
      139 GETTABLE                         R19 R6 R10
      140 GETTABLEKS                       R19 R19 K9 ["Text"]
      142 CALL                             R18 1 2
      143 SETTABLEKS                       R18 R16 K9 ["Text"]
      145 SETTABLEKS                       R19 R17 K10 ["Links"]
      147 FORGLOOP                         R7 2 [inext] ; [-44]
      149 SETTABLEKS                       R6 R2 K27 ["Lines"]
      151 JUMP                             ; [+33]
      152 GETUPVAL                         R5 1
      153 GETTABLEKS                       R5 R5 K28 ["Quote"]
      155 JUMPIFNOTEQ                      R0 R5 ; [+29]
      157 LOADK                            R7 K20 ["\n"]
      158 NAMECALL                         R5 R1 K21 ["split"]
      160 CALL                             R5 2 1
      161 LOADN                            R8 1
      162 LENGTH                           R6 R5
      163 LOADN                            R7 1
      164 FORNPREP                         R6
      165 GETTABLE                         R9 R5 R8
      166 LOADK                            R11 K29 ["^%s*>%s*(.*)"]
      167 NAMECALL                         R9 R9 K2 ["match"]
      169 CALL                             R9 2 1
      170 SETTABLE                         R9 R5 R8
      171 FORNLOOP                         R6
      172 GETIMPORT                        R6 K32 [table.concat]
      174 MOVE                             R7 R5
      175 LOADK                            R8 K20 ["\n"]
      176 CALL                             R6 2 1
      177 GETUPVAL                         R7 6
      178 MOVE                             R8 R6
      179 GETUPVAL                         R9 3
      180 CALL                             R7 2 1
      181 SETTABLEKS                       R6 R2 K33 ["RawText"]
      183 SETTABLEKS                       R7 R2 K34 ["Iterator"]
      185 MOVE                             R3 R0
      186 MOVE                             R4 R2
      187 RETURN                           R3 2

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["None"]
        3 MOVE                             R6 R0
        4 LOADK                            R7 K1 ["\n"]
        5 CONCAT                           R5 R6 R7
        6 LOADK                            R7 K2 ["(.-)\n"]
        7 NAMECALL                         R5 R5 K3 ["gmatch"]
        9 CALL                             R5 2 1
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R5
       12 CAPTURE                          REF R4
       13 CAPTURE                          UPVAL U0
       14 MOVE                             R3 R6
       15 CLOSEUPVALS                      R4
       16 MOVE                             R4 R3
       17 CALL                             R4 0 2
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          REF R4
       22 CAPTURE                          REF R5
       23 CAPTURE                          UPVAL U1
       24 CLOSEUPVALS                      R4
       25 NEWCLOSURE                       R3 P2
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 RETURN                           R3 1

PROTO_15:
        0 LOADK                            R5 K0 ["\t"]
        1 LOADK                            R6 K1 ["    "]
        2 NAMECALL                         R3 R0 K2 ["gsub"]
        4 CALL                             R3 3 1
        5 MOVE                             R4 R1
        6 JUMPIF                           R4 ; [+1]
        7 GETUPVAL                         R4 0
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K3 ["None"]
       11 MOVE                             R9 R3
       12 LOADK                            R10 K4 ["\n"]
       13 CONCAT                           R8 R9 R10
       14 LOADK                            R10 K5 ["(.-)\n"]
       15 NAMECALL                         R8 R8 K6 ["gmatch"]
       17 CALL                             R8 2 1
       18 NEWCLOSURE                       R9 P0
       19 CAPTURE                          VAL R8
       20 CAPTURE                          REF R7
       21 CAPTURE                          UPVAL U1
       22 MOVE                             R6 R9
       23 CLOSEUPVALS                      R7
       24 MOVE                             R7 R6
       25 CALL                             R7 0 2
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          VAL R6
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          REF R7
       30 CAPTURE                          REF R8
       31 CAPTURE                          UPVAL U2
       32 CLOSEUPVALS                      R7
       33 NEWCLOSURE                       R6 P2
       34 CAPTURE                          VAL R5
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 MOVE                             R2 R6
       42 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPTABLE                         R1 K2 [{"Text", "Ref"}]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K0 ["Text"]
        7 LOADN                            R2 1
        8 SETTABLEKS                       R2 R1 K1 ["Ref"]
       10 DUPTABLE                         R2 K7 [{"Bold", "Italic", "Strike", "Code"}]
       11 LOADN                            R3 0
       12 SETTABLEKS                       R3 R2 K3 ["Bold"]
       14 LOADN                            R3 1
       15 SETTABLEKS                       R3 R2 K4 ["Italic"]
       17 LOADN                            R3 2
       18 SETTABLEKS                       R3 R2 K5 ["Strike"]
       20 LOADN                            R3 3
       21 SETTABLEKS                       R3 R2 K6 ["Code"]
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 DUPCLOSURE                       R4 K9 [PROTO_2]
       25 NEWTABLE                         R5 4 0
       27 GETTABLEKS                       R6 R2 K3 ["Bold"]
       29 SETTABLEKS                       R6 R5 K10 ["*"]
       31 GETTABLEKS                       R6 R2 K4 ["Italic"]
       33 SETTABLEKS                       R6 R5 K11 ["_"]
       35 GETTABLEKS                       R6 R2 K5 ["Strike"]
       37 SETTABLEKS                       R6 R5 K12 ["~"]
       39 GETTABLEKS                       R6 R2 K6 ["Code"]
       41 SETTABLEKS                       R6 R5 K13 ["`"]
       43 DUPCLOSURE                       R6 K14 [PROTO_3]
       44 CAPTURE                          VAL R5
       45 DUPCLOSURE                       R7 K15 [PROTO_4]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R5
       49 DUPCLOSURE                       R8 K16 [PROTO_5]
       50 DUPTABLE                         R9 K23 [{"None", "Paragraph", "Heading", "Code", "List", "Ruler", "Quote"}]
       51 LOADN                            R10 0
       52 SETTABLEKS                       R10 R9 K17 ["None"]
       54 LOADN                            R10 1
       55 SETTABLEKS                       R10 R9 K18 ["Paragraph"]
       57 LOADN                            R10 2
       58 SETTABLEKS                       R10 R9 K19 ["Heading"]
       60 LOADN                            R10 3
       61 SETTABLEKS                       R10 R9 K6 ["Code"]
       63 LOADN                            R10 4
       64 SETTABLEKS                       R10 R9 K20 ["List"]
       66 LOADN                            R10 5
       67 SETTABLEKS                       R10 R9 K21 ["Ruler"]
       69 LOADN                            R10 6
       70 SETTABLEKS                       R10 R9 K22 ["Quote"]
       72 NEWTABLE                         R10 8 0
       74 GETTABLEKS                       R11 R9 K17 ["None"]
       76 LOADB                            R12 1
       77 SETTABLE                         R12 R10 R11
       78 GETTABLEKS                       R11 R9 K18 ["Paragraph"]
       80 LOADB                            R12 1
       81 SETTABLE                         R12 R10 R11
       82 GETTABLEKS                       R11 R9 K6 ["Code"]
       84 LOADB                            R12 1
       85 SETTABLE                         R12 R10 R11
       86 GETTABLEKS                       R11 R9 K20 ["List"]
       88 LOADB                            R12 1
       89 SETTABLE                         R12 R10 R11
       90 GETTABLEKS                       R11 R9 K22 ["Quote"]
       92 LOADB                            R12 1
       93 SETTABLE                         R12 R10 R11
       94 DUPCLOSURE                       R11 K24 [PROTO_6]
       95 DUPCLOSURE                       R12 K25 [PROTO_7]
       96 DUPCLOSURE                       R13 K26 [PROTO_8]
       97 DUPCLOSURE                       R14 K27 [PROTO_10]
       98 CAPTURE                          VAL R9
       99 DUPCLOSURE                       R15 K28 [PROTO_12]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R10
      102 DUPCLOSURE                       R16 K29 [PROTO_14]
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R16
      108 DUPCLOSURE                       R17 K30 [PROTO_15]
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R16
      115 SETTABLEKS                       R3 R0 K31 ["sanitize"]
      117 SETTABLEKS                       R17 R0 K32 ["parse"]
      119 SETTABLEKS                       R4 R0 K33 ["parseTokens"]
      121 SETTABLEKS                       R9 R0 K34 ["BlockType"]
      123 SETTABLEKS                       R1 R0 K35 ["InlineType"]
      125 SETTABLEKS                       R2 R0 K36 ["ModifierType"]
      127 RETURN                           R0 1
