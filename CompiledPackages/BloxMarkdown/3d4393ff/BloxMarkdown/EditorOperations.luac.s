PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["name"]
        8 JUMPIFNOTEQKS                    R7 K1 ["TEXT"] ; [+11]
       10 GETTABLEKS                       R10 R6 K3 ["text"]
       12 ORK                              R9 R10 K2 [""]
       13 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       15 MOVE                             R8 R1
       16 GETIMPORT                        R7 K6 [table.insert]
       18 CALL                             R7 2 0
       19 JUMP                             ; [+32]
       20 GETTABLEKS                       R7 R6 K0 ["name"]
       22 JUMPIFEQKS                       R7 K7 ["STYLED_TEXT"] ; [+5]
       24 GETTABLEKS                       R7 R6 K0 ["name"]
       26 JUMPIFNOTEQKS                    R7 K8 ["LINK"] ; [+14]
       28 MOVE                             R8 R1
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R10 R6 K9 ["children"]
       32 JUMPIF                           R10 ; [+2]
       33 NEWTABLE                         R10 0 0
       35 CALL                             R9 1 -1
       36 FASTCALL                         TABLE_INSERT ; [+2]
       37 GETIMPORT                        R7 K6 [table.insert]
       39 CALL                             R7 -1 0
       40 JUMP                             ; [+11]
       41 GETTABLEKS                       R7 R6 K0 ["name"]
       43 JUMPIFNOTEQKS                    R7 K10 ["BREAK"] ; [+8]
       45 FASTCALL2K                       TABLE_INSERT R1 K11 ; [+5]
       47 MOVE                             R8 R1
       48 LOADK                            R9 K11 ["\n"]
       49 GETIMPORT                        R7 K6 [table.insert]
       51 CALL                             R7 2 0
       52 FORGLOOP                         R2 2 ; [-47]
       54 GETIMPORT                        R2 K13 [table.concat]
       56 MOVE                             R3 R1
       57 CALL                             R2 1 -1
       58 RETURN                           R2 -1

PROTO_1:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["name"]
        6 JUMPIFNOTEQKS                    R6 K1 ["TEXT"] ; [+74]
        8 GETTABLEKS                       R7 R5 K3 ["text"]
       10 ORK                              R6 R7 K2 [""]
       11 LENGTH                           R7 R6
       12 JUMPIFNOTEQKN                    R7 K4 [0] ; [+12]
       14 GETUPVAL                         R7 0
       15 ADDK                             R7 R7 K5 [1]
       16 SETUPVAL                         R7 0
       17 GETUPVAL                         R7 0
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K6 ["segmentIndex"]
       21 JUMPIFNOTEQ                      R7 R8 ; [+3]
       23 GETUPVAL                         R7 2
       24 RETURN                           R7 1
       25 LOADN                            R7 1
       26 LENGTH                           R8 R6
       27 JUMPIFNOTLE                      R7 R8 ; [+105]
       29 MOVE                             R10 R7
       30 NAMECALL                         R8 R6 K7 ["sub"]
       32 CALL                             R8 2 1
       33 LOADK                            R11 K8 ["^(%s*%S+%s*)"]
       34 NAMECALL                         R9 R8 K9 ["match"]
       36 CALL                             R9 2 1
       37 JUMPIFNOT                        R9 ; [+28]
       38 GETUPVAL                         R10 0
       39 ADDK                             R10 R10 K5 [1]
       40 SETUPVAL                         R10 0
       41 GETUPVAL                         R10 0
       42 GETUPVAL                         R11 1
       43 GETTABLEKS                       R11 R11 K6 ["segmentIndex"]
       45 JUMPIFNOTEQ                      R10 R11 ; [+13]
       47 GETUPVAL                         R11 2
       48 GETUPVAL                         R13 1
       49 GETTABLEKS                       R13 R13 K10 ["charOffset"]
       51 LENGTH                           R14 R9
       52 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
       54 GETIMPORT                        R12 K13 [math.min]
       56 CALL                             R12 2 1
       57 ADD                              R10 R11 R12
       58 RETURN                           R10 1
       59 GETUPVAL                         R10 2
       60 LENGTH                           R11 R9
       61 ADD                              R10 R10 R11
       62 SETUPVAL                         R10 2
       63 LENGTH                           R10 R9
       64 ADD                              R7 R7 R10
       65 JUMP                             ; [+13]
       66 LOADK                            R12 K14 ["^(%s+)"]
       67 NAMECALL                         R10 R8 K9 ["match"]
       69 CALL                             R10 2 1
       70 JUMPIFNOT                        R10 ; [+62]
       71 GETUPVAL                         R11 2
       72 LENGTH                           R12 R10
       73 ADD                              R11 R11 R12
       74 SETUPVAL                         R11 2
       75 LENGTH                           R11 R10
       76 ADD                              R7 R7 R11
       77 JUMP                             ; [+1]
       78 JUMP                             ; [+54]
       79 JUMPBACK                         ; [-54]
       80 JUMP                             ; [+52]
       81 GETTABLEKS                       R6 R5 K0 ["name"]
       83 JUMPIFEQKS                       R6 K15 ["STYLED_TEXT"] ; [+5]
       85 GETTABLEKS                       R6 R5 K0 ["name"]
       87 JUMPIFNOTEQKS                    R6 K16 ["LINK"] ; [+11]
       89 GETUPVAL                         R6 3
       90 GETTABLEKS                       R7 R5 K17 ["children"]
       92 JUMPIF                           R7 ; [+2]
       93 NEWTABLE                         R7 0 0
       95 CALL                             R6 1 1
       96 JUMPIFNOT                        R6 ; [+36]
       97 RETURN                           R6 1
       98 JUMP                             ; [+34]
       99 GETTABLEKS                       R6 R5 K0 ["name"]
      101 JUMPIFNOTEQKS                    R6 K18 ["BREAK"] ; [+16]
      103 GETUPVAL                         R6 0
      104 ADDK                             R6 R6 K5 [1]
      105 SETUPVAL                         R6 0
      106 GETUPVAL                         R6 2
      107 ADDK                             R6 R6 K5 [1]
      108 SETUPVAL                         R6 2
      109 GETUPVAL                         R6 0
      110 GETUPVAL                         R7 1
      111 GETTABLEKS                       R7 R7 K6 ["segmentIndex"]
      113 JUMPIFNOTEQ                      R6 R7 ; [+19]
      115 GETUPVAL                         R6 2
      116 RETURN                           R6 1
      117 JUMP                             ; [+15]
      118 GETTABLEKS                       R6 R5 K0 ["name"]
      120 JUMPIFNOTEQKS                    R6 K19 ["IMAGE"] ; [+12]
      122 GETUPVAL                         R6 0
      123 ADDK                             R6 R6 K5 [1]
      124 SETUPVAL                         R6 0
      125 GETUPVAL                         R6 0
      126 GETUPVAL                         R7 1
      127 GETTABLEKS                       R7 R7 K6 ["segmentIndex"]
      129 JUMPIFNOTEQ                      R6 R7 ; [+3]
      131 GETUPVAL                         R6 2
      132 RETURN                           R6 1
      133 FORGLOOP                         R1 2 ; [-130]
      135 LOADNIL                          R1
      136 RETURN                           R1 1

PROTO_2:
        0 LOADN                            R2 0
        1 LOADN                            R3 0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          REF R3
        4 CAPTURE                          VAL R0
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R4
        7 MOVE                             R5 R4
        8 MOVE                             R6 R1
        9 CALL                             R5 1 1
       10 OR                               R6 R5 R2
       11 CLOSEUPVALS                      R2
       12 RETURN                           R6 1

PROTO_3:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["name"]
        6 JUMPIFNOTEQKS                    R6 K1 ["TEXT"] ; [+76]
        8 GETTABLEKS                       R7 R5 K3 ["text"]
       10 ORK                              R6 R7 K2 [""]
       11 LENGTH                           R7 R6
       12 JUMPIFNOTEQKN                    R7 K4 [0] ; [+16]
       14 GETUPVAL                         R7 0
       15 ADDK                             R7 R7 K5 [1]
       16 SETUPVAL                         R7 0
       17 GETUPVAL                         R7 1
       18 GETUPVAL                         R8 2
       19 JUMPIFNOTLE                      R7 R8 ; [+9]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R7 R7 K6 ["createCollapsed"]
       24 GETUPVAL                         R8 4
       25 GETUPVAL                         R9 0
       26 LOADN                            R10 0
       27 CALL                             R7 3 -1
       28 RETURN                           R7 -1
       29 LOADN                            R7 1
       30 LENGTH                           R8 R6
       31 JUMPIFNOTLE                      R7 R8 ; [+111]
       33 MOVE                             R10 R7
       34 NAMECALL                         R8 R6 K7 ["sub"]
       36 CALL                             R8 2 1
       37 LOADK                            R11 K8 ["^(%s*%S+%s*)"]
       38 NAMECALL                         R9 R8 K9 ["match"]
       40 CALL                             R9 2 1
       41 JUMPIFNOT                        R9 ; [+26]
       42 GETUPVAL                         R10 0
       43 ADDK                             R10 R10 K5 [1]
       44 SETUPVAL                         R10 0
       45 GETUPVAL                         R11 2
       46 LENGTH                           R12 R9
       47 ADD                              R10 R11 R12
       48 GETUPVAL                         R11 1
       49 JUMPIFNOTLE                      R11 R10 ; [+11]
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R11 R11 K6 ["createCollapsed"]
       54 GETUPVAL                         R12 4
       55 GETUPVAL                         R13 0
       56 GETUPVAL                         R15 1
       57 GETUPVAL                         R16 2
       58 SUB                              R14 R15 R16
       59 CALL                             R11 3 -1
       60 RETURN                           R11 -1
       61 GETUPVAL                         R11 2
       62 LENGTH                           R12 R9
       63 ADD                              R11 R11 R12
       64 SETUPVAL                         R11 2
       65 LENGTH                           R11 R9
       66 ADD                              R7 R7 R11
       67 JUMP                             ; [+13]
       68 LOADK                            R12 K10 ["^(%s+)"]
       69 NAMECALL                         R10 R8 K9 ["match"]
       71 CALL                             R10 2 1
       72 JUMPIFNOT                        R10 ; [+70]
       73 GETUPVAL                         R11 2
       74 LENGTH                           R12 R10
       75 ADD                              R11 R11 R12
       76 SETUPVAL                         R11 2
       77 LENGTH                           R11 R10
       78 ADD                              R7 R7 R11
       79 JUMP                             ; [+1]
       80 JUMP                             ; [+62]
       81 JUMPBACK                         ; [-52]
       82 JUMP                             ; [+60]
       83 GETTABLEKS                       R6 R5 K0 ["name"]
       85 JUMPIFEQKS                       R6 K11 ["STYLED_TEXT"] ; [+5]
       87 GETTABLEKS                       R6 R5 K0 ["name"]
       89 JUMPIFNOTEQKS                    R6 K12 ["LINK"] ; [+11]
       91 GETUPVAL                         R6 5
       92 GETTABLEKS                       R7 R5 K13 ["children"]
       94 JUMPIF                           R7 ; [+2]
       95 NEWTABLE                         R7 0 0
       97 CALL                             R6 1 1
       98 JUMPIFNOT                        R6 ; [+44]
       99 RETURN                           R6 1
      100 JUMP                             ; [+42]
      101 GETTABLEKS                       R6 R5 K0 ["name"]
      103 JUMPIFNOTEQKS                    R6 K14 ["BREAK"] ; [+20]
      105 GETUPVAL                         R6 0
      106 ADDK                             R6 R6 K5 [1]
      107 SETUPVAL                         R6 0
      108 GETUPVAL                         R6 2
      109 ADDK                             R6 R6 K5 [1]
      110 SETUPVAL                         R6 2
      111 GETUPVAL                         R6 1
      112 GETUPVAL                         R7 2
      113 JUMPIFNOTLE                      R6 R7 ; [+29]
      115 GETUPVAL                         R6 3
      116 GETTABLEKS                       R6 R6 K6 ["createCollapsed"]
      118 GETUPVAL                         R7 4
      119 GETUPVAL                         R8 0
      120 LOADN                            R9 0
      121 CALL                             R6 3 -1
      122 RETURN                           R6 -1
      123 JUMP                             ; [+19]
      124 GETTABLEKS                       R6 R5 K0 ["name"]
      126 JUMPIFNOTEQKS                    R6 K15 ["IMAGE"] ; [+16]
      128 GETUPVAL                         R6 0
      129 ADDK                             R6 R6 K5 [1]
      130 SETUPVAL                         R6 0
      131 GETUPVAL                         R6 1
      132 GETUPVAL                         R7 2
      133 JUMPIFNOTLE                      R6 R7 ; [+9]
      135 GETUPVAL                         R6 3
      136 GETTABLEKS                       R6 R6 K6 ["createCollapsed"]
      138 GETUPVAL                         R7 4
      139 GETUPVAL                         R8 0
      140 LOADN                            R9 0
      141 CALL                             R6 3 -1
      142 RETURN                           R6 -1
      143 FORGLOOP                         R1 2 ; [-140]
      145 LOADNIL                          R1
      146 RETURN                           R1 1

PROTO_4:
        0 LOADN                            R3 0
        1 LOADN                            R4 0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          REF R3
        4 CAPTURE                          VAL R2
        5 CAPTURE                          REF R4
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R5
        9 MOVE                             R6 R5
       10 MOVE                             R7 R1
       11 CALL                             R6 1 1
       12 JUMPIFNOT                        R6 ; [+2]
       13 CLOSEUPVALS                      R3
       14 RETURN                           R6 1
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K0 ["createCollapsed"]
       18 MOVE                             R8 R0
       19 LOADN                            R10 1
       20 FASTCALL2                        MATH_MAX R10 R3 ; [+4]
       22 MOVE                             R11 R3
       23 GETIMPORT                        R9 K3 [math.max]
       25 CALL                             R9 2 1
       26 SUB                              R10 R2 R4
       27 CALL                             R7 3 -1
       28 CLOSEUPVALS                      R3
       29 RETURN                           R7 -1

PROTO_5:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["name"]
        7 JUMPIFNOTEQKS                    R7 K1 ["TEXT"] ; [+37]
        9 GETTABLEKS                       R8 R6 K3 ["text"]
       11 ORK                              R7 R8 K2 [""]
       12 LENGTH                           R8 R7
       13 JUMPIFNOTEQKN                    R8 K4 [0] ; [+3]
       15 ADDK                             R1 R1 K5 [1]
       16 JUMP                             ; [+54]
       17 LOADN                            R8 1
       18 LENGTH                           R9 R7
       19 JUMPIFNOTLE                      R8 R9 ; [+51]
       21 MOVE                             R11 R8
       22 NAMECALL                         R9 R7 K6 ["sub"]
       24 CALL                             R9 2 1
       25 LOADK                            R12 K7 ["^(%s*%S+%s*)"]
       26 NAMECALL                         R10 R9 K8 ["match"]
       28 CALL                             R10 2 1
       29 JUMPIFNOT                        R10 ; [+4]
       30 ADDK                             R1 R1 K5 [1]
       31 LENGTH                           R11 R10
       32 ADD                              R8 R8 R11
       33 JUMP                             ; [+9]
       34 LOADK                            R13 K9 ["^(%s+)"]
       35 NAMECALL                         R11 R9 K8 ["match"]
       37 CALL                             R11 2 1
       38 JUMPIFNOT                        R11 ; [+32]
       39 LENGTH                           R12 R11
       40 ADD                              R8 R8 R12
       41 JUMP                             ; [+1]
       42 JUMP                             ; [+28]
       43 JUMPBACK                         ; [-26]
       44 JUMP                             ; [+26]
       45 GETTABLEKS                       R7 R6 K0 ["name"]
       47 JUMPIFEQKS                       R7 K10 ["STYLED_TEXT"] ; [+5]
       49 GETTABLEKS                       R7 R6 K0 ["name"]
       51 JUMPIFNOTEQKS                    R7 K11 ["LINK"] ; [+10]
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R8 R6 K12 ["children"]
       56 JUMPIF                           R8 ; [+2]
       57 NEWTABLE                         R8 0 0
       59 CALL                             R7 1 1
       60 ADD                              R1 R1 R7
       61 JUMP                             ; [+9]
       62 GETTABLEKS                       R7 R6 K0 ["name"]
       64 JUMPIFEQKS                       R7 K13 ["BREAK"] ; [+5]
       66 GETTABLEKS                       R7 R6 K0 ["name"]
       68 JUMPIFNOTEQKS                    R7 K14 ["IMAGE"] ; [+2]
       70 ADDK                             R1 R1 K5 [1]
       71 FORGLOOP                         R2 2 ; [-67]
       73 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 LOADB                            R2 1
        3 JUMPIFEQKS                       R1 K1 ["PARAGRAPH"] ; [+11]
        5 LOADB                            R2 1
        6 JUMPIFEQKS                       R1 K2 ["HEADING"] ; [+8]
        8 LOADB                            R2 1
        9 JUMPIFEQKS                       R1 K3 ["QUOTE"] ; [+5]
       11 JUMPIFEQKS                       R1 K4 ["LIST_ITEM"] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 JUMPIFEQKS                       R2 K1 ["TABLE"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 JUMPIFEQKS                       R2 K1 ["TABLE"] ; [+5]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 RETURN                           R2 3
        8 GETTABLEKS                       R2 R1 K2 ["path"]
       10 JUMPIFNOT                        R2 ; [+6]
       11 GETTABLEKS                       R3 R1 K2 ["path"]
       13 LENGTH                           R2 R3
       14 LOADN                            R3 2
       15 JUMPIFNOTLT                      R2 R3 ; [+5]
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 RETURN                           R2 3
       21 GETTABLEKS                       R3 R1 K2 ["path"]
       23 GETTABLEN                        R2 R3 1
       24 GETTABLEKS                       R4 R1 K2 ["path"]
       26 GETTABLEN                        R3 R4 2
       27 GETTABLEKS                       R4 R0 K3 ["children"]
       29 JUMPIF                           R4 ; [+2]
       30 NEWTABLE                         R4 0 0
       32 GETTABLE                         R5 R4 R2
       33 JUMPIF                           R5 ; [+4]
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 LOADNIL                          R8
       37 RETURN                           R6 3
       38 GETTABLEKS                       R6 R5 K3 ["children"]
       40 JUMPIF                           R6 ; [+2]
       41 NEWTABLE                         R6 0 0
       43 GETTABLE                         R7 R6 R3
       44 MOVE                             R8 R2
       45 MOVE                             R9 R3
       46 RETURN                           R7 3

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 JUMPIFEQKS                       R2 K1 ["LIST"] ; [+4]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 RETURN                           R2 2
        7 GETTABLEKS                       R3 R1 K2 ["path"]
        9 JUMPIFNOT                        R3 ; [+4]
       10 GETTABLEKS                       R3 R1 K2 ["path"]
       12 GETTABLEN                        R2 R3 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 JUMPIF                           R2 ; [+3]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 RETURN                           R3 2
       19 GETTABLEKS                       R3 R0 K3 ["children"]
       21 JUMPIF                           R3 ; [+2]
       22 NEWTABLE                         R3 0 0
       24 GETTABLE                         R4 R3 R2
       25 MOVE                             R5 R2
       26 RETURN                           R4 2

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 JUMPIFNOTEQKS                    R1 K1 ["TEXT"] ; [+6]
        4 GETTABLEKS                       R3 R0 K3 ["text"]
        6 ORK                              R2 R3 K2 [""]
        7 LENGTH                           R1 R2
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K0 ["name"]
       11 JUMPIFEQKS                       R1 K4 ["STYLED_TEXT"] ; [+5]
       13 GETTABLEKS                       R1 R0 K0 ["name"]
       15 JUMPIFNOTEQKS                    R1 K5 ["LINK"] ; [+17]
       17 LOADN                            R1 0
       18 GETTABLEKS                       R2 R0 K6 ["children"]
       20 JUMPIF                           R2 ; [+2]
       21 NEWTABLE                         R2 0 0
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 GETUPVAL                         R7 0
       27 MOVE                             R8 R6
       28 CALL                             R7 1 1
       29 ADD                              R1 R1 R7
       30 FORGLOOP                         R2 2 ; [-5]
       32 RETURN                           R1 1
       33 GETTABLEKS                       R1 R0 K0 ["name"]
       35 JUMPIFNOTEQKS                    R1 K7 ["BREAK"] ; [+3]
       37 LOADN                            R1 1
       38 RETURN                           R1 1
       39 LOADN                            R1 0
       40 RETURN                           R1 1

PROTO_11:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 MOVE                             R8 R6
        7 CALL                             R7 1 1
        8 ADD                              R1 R1 R7
        9 FORGLOOP                         R2 2 ; [-5]
       11 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R5 R1 K0 ["children"]
        2 JUMPIF                           R5 ; [+2]
        3 NEWTABLE                         R5 0 0
        5 LOADN                            R6 0
        6 MOVE                             R7 R5
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 GETUPVAL                         R12 0
       11 MOVE                             R13 R11
       12 CALL                             R12 1 1
       13 ADD                              R6 R6 R12
       14 FORGLOOP                         R7 2 ; [-5]
       16 MOVE                             R4 R6
       17 FASTCALL2                        MATH_MIN R3 R4 ; [+5]
       19 MOVE                             R6 R3
       20 MOVE                             R7 R4
       21 GETIMPORT                        R5 K3 [math.min]
       23 CALL                             R5 2 1
       24 GETTABLEKS                       R7 R1 K0 ["children"]
       26 JUMPIF                           R7 ; [+2]
       27 NEWTABLE                         R7 0 0
       29 LOADN                            R8 0
       30 LOADN                            R9 0
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          REF R8
       33 CAPTURE                          VAL R5
       34 CAPTURE                          REF R9
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R10
       38 MOVE                             R11 R10
       39 MOVE                             R12 R7
       40 CALL                             R11 1 1
       41 JUMPIFNOT                        R11 ; [+3]
       42 MOVE                             R6 R11
       43 CLOSEUPVALS                      R8
       44 JUMP                             ; [+15]
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R12 R12 K4 ["createCollapsed"]
       48 MOVE                             R13 R0
       49 LOADN                            R15 1
       50 FASTCALL2                        MATH_MAX R15 R8 ; [+4]
       52 MOVE                             R16 R8
       53 GETIMPORT                        R14 K6 [math.max]
       55 CALL                             R14 2 1
       56 SUB                              R15 R5 R9
       57 CALL                             R12 3 1
       58 MOVE                             R6 R12
       59 CLOSEUPVALS                      R8
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K4 ["createCollapsed"]
       63 MOVE                             R8 R0
       64 GETTABLEKS                       R9 R6 K7 ["anchor"]
       66 GETTABLEKS                       R9 R9 K8 ["segmentIndex"]
       68 GETTABLEKS                       R10 R6 K7 ["anchor"]
       70 GETTABLEKS                       R10 R10 K9 ["charOffset"]
       72 NEWTABLE                         R11 0 1
       74 MOVE                             R12 R2
       75 SETLIST                          R11 R12 1 [1]
       77 CALL                             R7 4 -1
       78 RETURN                           R7 -1

PROTO_13:
        0 GETTABLEKS                       R6 R1 K0 ["children"]
        2 JUMPIF                           R6 ; [+2]
        3 NEWTABLE                         R6 0 0
        5 LOADN                            R7 0
        6 MOVE                             R8 R6
        7 LOADNIL                          R9
        8 LOADNIL                          R10
        9 FORGPREP                         R8
       10 GETUPVAL                         R13 0
       11 MOVE                             R14 R12
       12 CALL                             R13 1 1
       13 ADD                              R7 R7 R13
       14 FORGLOOP                         R8 2 ; [-5]
       16 MOVE                             R5 R7
       17 FASTCALL2                        MATH_MIN R4 R5 ; [+5]
       19 MOVE                             R7 R4
       20 MOVE                             R8 R5
       21 GETIMPORT                        R6 K3 [math.min]
       23 CALL                             R6 2 1
       24 GETTABLEKS                       R8 R1 K0 ["children"]
       26 JUMPIF                           R8 ; [+2]
       27 NEWTABLE                         R8 0 0
       29 LOADN                            R9 0
       30 LOADN                            R10 0
       31 NEWCLOSURE                       R11 P0
       32 CAPTURE                          REF R9
       33 CAPTURE                          VAL R6
       34 CAPTURE                          REF R10
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R11
       38 MOVE                             R12 R11
       39 MOVE                             R13 R8
       40 CALL                             R12 1 1
       41 JUMPIFNOT                        R12 ; [+3]
       42 MOVE                             R7 R12
       43 CLOSEUPVALS                      R9
       44 JUMP                             ; [+15]
       45 GETUPVAL                         R13 1
       46 GETTABLEKS                       R13 R13 K4 ["createCollapsed"]
       48 MOVE                             R14 R0
       49 LOADN                            R16 1
       50 FASTCALL2                        MATH_MAX R16 R9 ; [+4]
       52 MOVE                             R17 R9
       53 GETIMPORT                        R15 K6 [math.max]
       55 CALL                             R15 2 1
       56 SUB                              R16 R6 R10
       57 CALL                             R13 3 1
       58 MOVE                             R7 R13
       59 CLOSEUPVALS                      R9
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K4 ["createCollapsed"]
       63 MOVE                             R9 R0
       64 GETTABLEKS                       R10 R7 K7 ["anchor"]
       66 GETTABLEKS                       R10 R10 K8 ["segmentIndex"]
       68 GETTABLEKS                       R11 R7 K7 ["anchor"]
       70 GETTABLEKS                       R11 R11 K9 ["charOffset"]
       72 NEWTABLE                         R12 0 2
       74 MOVE                             R13 R2
       75 MOVE                             R14 R3
       76 SETLIST                          R12 R13 2 [1]
       78 CALL                             R8 4 -1
       79 RETURN                           R8 -1

PROTO_14:
        0 MOVE                             R6 R5
        1 GETTABLE                         R8 R4 R3
        2 GETTABLEKS                       R8 R8 K0 ["children"]
        4 GETTABLE                         R7 R8 R1
        5 CALL                             R6 1 1
        6 DUPTABLE                         R8 K4 [{"name", "children", "attributes", "index"}]
        7 GETTABLEKS                       R9 R0 K1 ["name"]
        9 SETTABLEKS                       R9 R8 K1 ["name"]
       11 SETTABLEKS                       R2 R8 K0 ["children"]
       13 GETTABLEKS                       R9 R0 K2 ["attributes"]
       15 SETTABLEKS                       R9 R8 K2 ["attributes"]
       17 GETTABLEKS                       R9 R0 K3 ["index"]
       19 SETTABLEKS                       R9 R8 K3 ["index"]
       21 NAMECALL                         R6 R6 K5 ["set"]
       23 CALL                             R6 2 0
       24 RETURN                           R0 0

PROTO_15:
        0 MOVE                             R7 R6
        1 GETTABLE                         R10 R5 R4
        2 GETTABLEKS                       R10 R10 K0 ["children"]
        4 GETTABLE                         R9 R10 R1
        5 GETTABLEKS                       R9 R9 K0 ["children"]
        7 GETTABLE                         R8 R9 R2
        8 CALL                             R7 1 1
        9 DUPTABLE                         R9 K4 [{"name", "children", "attributes", "index"}]
       10 GETTABLEKS                       R10 R0 K1 ["name"]
       12 SETTABLEKS                       R10 R9 K1 ["name"]
       14 SETTABLEKS                       R3 R9 K0 ["children"]
       16 GETTABLEKS                       R10 R0 K2 ["attributes"]
       18 SETTABLEKS                       R10 R9 K2 ["attributes"]
       20 GETTABLEKS                       R10 R0 K3 ["index"]
       22 SETTABLEKS                       R10 R9 K3 ["index"]
       24 NAMECALL                         R7 R7 K5 ["set"]
       26 CALL                             R7 2 0
       27 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 JUMPIFEQKS                       R2 K1 ["CODE_BLOCK"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_17:
        0 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["buildTextSegments"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 LOADN                            R3 0
       10 MOVE                             R4 R2
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R9 R8 K2 ["globalIndex"]
       16 GETTABLEKS                       R10 R0 K3 ["segmentIndex"]
       18 JUMPIFNOTEQ                      R9 R10 ; [+5]
       20 GETTABLEKS                       R10 R0 K4 ["charOffset"]
       22 ADD                              R9 R3 R10
       23 RETURN                           R9 1
       24 GETTABLEKS                       R10 R8 K5 ["text"]
       26 JUMPIFNOTEQKS                    R10 K6 ["\n"] ; [+3]
       28 LOADN                            R9 1
       29 JUMP                             ; [+4]
       30 GETTABLEKS                       R11 R8 K5 ["text"]
       32 ORK                              R10 R11 K0 [""]
       33 LENGTH                           R9 R10
       34 ADD                              R3 R3 R9
       35 FORGLOOP                         R4 2 ; [-22]
       37 RETURN                           R3 1

PROTO_18:
        0 JUMPIFNOTEQKS                    R1 K0 [""] ; [+9]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["createCollapsed"]
        5 MOVE                             R4 R0
        6 LOADN                            R5 1
        7 LOADN                            R6 0
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["buildTextSegments"]
       13 MOVE                             R4 R1
       14 CALL                             R3 1 1
       15 LENGTH                           R4 R3
       16 JUMPIFNOTEQKN                    R4 K3 [0] ; [+9]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K1 ["createCollapsed"]
       21 MOVE                             R5 R0
       22 LOADN                            R6 1
       23 LOADN                            R7 0
       24 CALL                             R4 3 -1
       25 RETURN                           R4 -1
       26 LOADN                            R4 0
       27 LOADNIL                          R5
       28 LOADN                            R6 0
       29 MOVE                             R7 R3
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 FORGPREP                         R7
       33 GETTABLEKS                       R13 R11 K4 ["text"]
       35 JUMPIFEQKS                       R13 K5 ["\n"] ; [+2]
       37 LOADB                            R12 0 +1
       38 LOADB                            R12 1
       39 JUMPIFNOT                        R12 ; [+2]
       40 LOADN                            R13 1
       41 JUMP                             ; [+4]
       42 GETTABLEKS                       R15 R11 K4 ["text"]
       44 ORK                              R14 R15 K0 [""]
       45 LENGTH                           R13 R14
       46 JUMPIF                           R12 ; [+20]
       47 ADD                              R14 R4 R13
       48 JUMPIFNOTLE                      R2 R14 ; [+16]
       50 GETUPVAL                         R14 0
       51 GETTABLEKS                       R14 R14 K1 ["createCollapsed"]
       53 MOVE                             R15 R0
       54 GETTABLEKS                       R16 R11 K6 ["globalIndex"]
       56 LOADN                            R18 0
       57 SUB                              R19 R2 R4
       58 FASTCALL2                        MATH_MAX R18 R19 ; [+3]
       60 GETIMPORT                        R17 K9 [math.max]
       62 CALL                             R17 2 1
       63 CALL                             R14 3 -1
       64 RETURN                           R14 -1
       65 MOVE                             R5 R11
       66 MOVE                             R6 R13
       67 ADD                              R4 R4 R13
       68 FORGLOOP                         R7 2 ; [-36]
       70 JUMPIFNOT                        R5 ; [+9]
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K1 ["createCollapsed"]
       74 MOVE                             R8 R0
       75 GETTABLEKS                       R9 R5 K6 ["globalIndex"]
       77 MOVE                             R10 R6
       78 CALL                             R7 3 -1
       79 RETURN                           R7 -1
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K1 ["createCollapsed"]
       83 MOVE                             R8 R0
       84 LOADN                            R9 1
       85 LOADN                            R10 0
       86 CALL                             R7 3 -1
       87 RETURN                           R7 -1

PROTO_19:
        0 GETTABLEKS                       R4 R1 K0 ["name"]
        2 JUMPIFNOTEQKS                    R4 K1 ["LIST"] ; [+118]
        4 GETTABLEKS                       R4 R1 K2 ["children"]
        6 JUMPIF                           R4 ; [+2]
        7 NEWTABLE                         R4 0 0
        9 JUMPIFNOT                        R2 ; [+86]
       10 LENGTH                           R5 R4
       11 LOADN                            R6 0
       12 JUMPIFNOTLT                      R6 R5 ; [+83]
       14 LENGTH                           R6 R4
       15 GETTABLE                         R5 R4 R6
       16 JUMPIFNOT                        R3 ; [+7]
       17 GETUPVAL                         R6 0
       18 MOVE                             R7 R0
       19 MOVE                             R8 R5
       20 LENGTH                           R9 R4
       21 MOVE                             R10 R3
       22 CALL                             R6 4 -1
       23 RETURN                           R6 -1
       24 GETTABLEKS                       R7 R5 K2 ["children"]
       26 JUMPIF                           R7 ; [+2]
       27 NEWTABLE                         R7 0 0
       29 LOADN                            R8 0
       30 MOVE                             R9 R7
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 FORGPREP                         R9
       34 GETUPVAL                         R14 1
       35 MOVE                             R15 R13
       36 CALL                             R14 1 1
       37 ADD                              R8 R8 R14
       38 FORGLOOP                         R9 2 ; [-5]
       40 MOVE                             R6 R8
       41 GETTABLEKS                       R8 R5 K2 ["children"]
       43 JUMPIF                           R8 ; [+2]
       44 NEWTABLE                         R8 0 0
       46 LOADN                            R9 0
       47 LOADN                            R10 0
       48 NEWCLOSURE                       R11 P0
       49 CAPTURE                          REF R9
       50 CAPTURE                          VAL R6
       51 CAPTURE                          REF R10
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R11
       55 MOVE                             R12 R11
       56 MOVE                             R13 R8
       57 CALL                             R12 1 1
       58 JUMPIFNOT                        R12 ; [+3]
       59 MOVE                             R7 R12
       60 CLOSEUPVALS                      R9
       61 JUMP                             ; [+15]
       62 GETUPVAL                         R13 2
       63 GETTABLEKS                       R13 R13 K3 ["createCollapsed"]
       65 MOVE                             R14 R0
       66 LOADN                            R16 1
       67 FASTCALL2                        MATH_MAX R16 R9 ; [+4]
       69 MOVE                             R17 R9
       70 GETIMPORT                        R15 K6 [math.max]
       72 CALL                             R15 2 1
       73 SUB                              R16 R6 R10
       74 CALL                             R13 3 1
       75 MOVE                             R7 R13
       76 CLOSEUPVALS                      R9
       77 GETUPVAL                         R8 2
       78 GETTABLEKS                       R8 R8 K3 ["createCollapsed"]
       80 MOVE                             R9 R0
       81 GETTABLEKS                       R10 R7 K7 ["anchor"]
       83 GETTABLEKS                       R10 R10 K8 ["segmentIndex"]
       85 GETTABLEKS                       R11 R7 K7 ["anchor"]
       87 GETTABLEKS                       R11 R11 K9 ["charOffset"]
       89 NEWTABLE                         R12 0 1
       91 LENGTH                           R13 R4
       92 SETLIST                          R12 R13 1 [1]
       94 CALL                             R8 4 -1
       95 RETURN                           R8 -1
       96 LENGTH                           R5 R4
       97 LOADN                            R6 0
       98 JUMPIFNOTLT                      R6 R5 ; [+22]
      100 JUMPIFNOT                        R3 ; [+7]
      101 GETUPVAL                         R5 0
      102 MOVE                             R6 R0
      103 GETTABLEN                        R7 R4 1
      104 LOADN                            R8 1
      105 MOVE                             R9 R3
      106 CALL                             R5 4 -1
      107 RETURN                           R5 -1
      108 GETUPVAL                         R5 2
      109 GETTABLEKS                       R5 R5 K3 ["createCollapsed"]
      111 MOVE                             R6 R0
      112 LOADN                            R7 1
      113 LOADN                            R8 0
      114 NEWTABLE                         R9 0 1
      116 LOADN                            R10 1
      117 SETLIST                          R9 R10 1 [1]
      119 CALL                             R5 4 -1
      120 RETURN                           R5 -1
      121 GETTABLEKS                       R5 R1 K0 ["name"]
      123 JUMPIFEQKS                       R5 K10 ["TABLE"] ; [+2]
      125 LOADB                            R4 0 +1
      126 LOADB                            R4 1
      127 JUMPIFNOT                        R4 ; [+154]
      128 GETTABLEKS                       R4 R1 K2 ["children"]
      130 JUMPIF                           R4 ; [+2]
      131 NEWTABLE                         R4 0 0
      133 LENGTH                           R5 R4
      134 JUMPIFNOTEQKN                    R5 K11 [0] ; [+9]
      136 GETUPVAL                         R5 2
      137 GETTABLEKS                       R5 R5 K3 ["createCollapsed"]
      139 MOVE                             R6 R0
      140 LOADN                            R7 1
      141 LOADN                            R8 0
      142 CALL                             R5 3 -1
      143 RETURN                           R5 -1
      144 JUMPIFNOT                        R2 ; [+96]
      145 LENGTH                           R6 R4
      146 GETTABLE                         R5 R4 R6
      147 GETTABLEKS                       R6 R5 K2 ["children"]
      149 JUMPIF                           R6 ; [+2]
      150 NEWTABLE                         R6 0 0
      152 LENGTH                           R7 R6
      153 LOADN                            R8 0
      154 JUMPIFNOTLT                      R8 R7 ; [+119]
      156 LENGTH                           R8 R6
      157 GETTABLE                         R7 R6 R8
      158 JUMPIFNOT                        R3 ; [+8]
      159 GETUPVAL                         R8 3
      160 MOVE                             R9 R0
      161 MOVE                             R10 R7
      162 LENGTH                           R11 R4
      163 LENGTH                           R12 R6
      164 MOVE                             R13 R3
      165 CALL                             R8 5 -1
      166 RETURN                           R8 -1
      167 GETTABLEKS                       R9 R7 K2 ["children"]
      169 JUMPIF                           R9 ; [+2]
      170 NEWTABLE                         R9 0 0
      172 LOADN                            R10 0
      173 MOVE                             R11 R9
      174 LOADNIL                          R12
      175 LOADNIL                          R13
      176 FORGPREP                         R11
      177 GETUPVAL                         R16 1
      178 MOVE                             R17 R15
      179 CALL                             R16 1 1
      180 ADD                              R10 R10 R16
      181 FORGLOOP                         R11 2 ; [-5]
      183 MOVE                             R8 R10
      184 GETTABLEKS                       R10 R7 K2 ["children"]
      186 JUMPIF                           R10 ; [+2]
      187 NEWTABLE                         R10 0 0
      189 LOADN                            R11 0
      190 LOADN                            R12 0
      191 NEWCLOSURE                       R13 P0
      192 CAPTURE                          REF R11
      193 CAPTURE                          VAL R8
      194 CAPTURE                          REF R12
      195 CAPTURE                          UPVAL U2
      196 CAPTURE                          VAL R0
      197 CAPTURE                          VAL R13
      198 MOVE                             R14 R13
      199 MOVE                             R15 R10
      200 CALL                             R14 1 1
      201 JUMPIFNOT                        R14 ; [+3]
      202 MOVE                             R9 R14
      203 CLOSEUPVALS                      R11
      204 JUMP                             ; [+15]
      205 GETUPVAL                         R15 2
      206 GETTABLEKS                       R15 R15 K3 ["createCollapsed"]
      208 MOVE                             R16 R0
      209 LOADN                            R18 1
      210 FASTCALL2                        MATH_MAX R18 R11 ; [+4]
      212 MOVE                             R19 R11
      213 GETIMPORT                        R17 K6 [math.max]
      215 CALL                             R17 2 1
      216 SUB                              R18 R8 R12
      217 CALL                             R15 3 1
      218 MOVE                             R9 R15
      219 CLOSEUPVALS                      R11
      220 GETUPVAL                         R10 2
      221 GETTABLEKS                       R10 R10 K3 ["createCollapsed"]
      223 MOVE                             R11 R0
      224 GETTABLEKS                       R12 R9 K7 ["anchor"]
      226 GETTABLEKS                       R12 R12 K8 ["segmentIndex"]
      228 GETTABLEKS                       R13 R9 K7 ["anchor"]
      230 GETTABLEKS                       R13 R13 K9 ["charOffset"]
      232 NEWTABLE                         R14 0 2
      234 LENGTH                           R15 R4
      235 LENGTH                           R16 R6
      236 SETLIST                          R14 R15 2 [1]
      238 CALL                             R10 4 -1
      239 RETURN                           R10 -1
      240 JUMP                             ; [+33]
      241 GETTABLEN                        R5 R4 1
      242 GETTABLEKS                       R6 R5 K2 ["children"]
      244 JUMPIF                           R6 ; [+2]
      245 NEWTABLE                         R6 0 0
      247 LENGTH                           R7 R6
      248 LOADN                            R8 0
      249 JUMPIFNOTLT                      R8 R7 ; [+24]
      251 JUMPIFNOT                        R3 ; [+8]
      252 GETUPVAL                         R7 3
      253 MOVE                             R8 R0
      254 GETTABLEN                        R9 R6 1
      255 LOADN                            R10 1
      256 LOADN                            R11 1
      257 MOVE                             R12 R3
      258 CALL                             R7 5 -1
      259 RETURN                           R7 -1
      260 GETUPVAL                         R7 2
      261 GETTABLEKS                       R7 R7 K3 ["createCollapsed"]
      263 MOVE                             R8 R0
      264 LOADN                            R9 1
      265 LOADN                            R10 0
      266 NEWTABLE                         R11 0 2
      268 LOADN                            R12 1
      269 LOADN                            R13 1
      270 SETLIST                          R11 R12 2 [1]
      272 CALL                             R7 4 -1
      273 RETURN                           R7 -1
      274 GETUPVAL                         R5 2
      275 GETTABLEKS                       R5 R5 K3 ["createCollapsed"]
      277 MOVE                             R6 R0
      278 LOADN                            R7 1
      279 LOADN                            R8 0
      280 CALL                             R5 3 -1
      281 RETURN                           R5 -1
      282 GETTABLEKS                       R5 R1 K0 ["name"]
      284 JUMPIFEQKS                       R5 K12 ["CODE_BLOCK"] ; [+2]
      286 LOADB                            R4 0 +1
      287 LOADB                            R4 1
      288 JUMPIFNOT                        R4 ; [+31]
      289 GETTABLEKS                       R5 R1 K14 ["text"]
      291 ORK                              R4 R5 K13 [""]
      292 JUMPIFNOT                        R2 ; [+6]
      293 GETUPVAL                         R5 4
      294 MOVE                             R6 R0
      295 MOVE                             R7 R4
      296 LENGTH                           R8 R4
      297 CALL                             R5 3 -1
      298 RETURN                           R5 -1
      299 JUMPIFNOT                        R3 ; [+12]
      300 GETUPVAL                         R5 4
      301 MOVE                             R6 R0
      302 MOVE                             R7 R4
      303 LENGTH                           R10 R4
      304 FASTCALL2                        MATH_MIN R3 R10 ; [+4]
      306 MOVE                             R9 R3
      307 GETIMPORT                        R8 K16 [math.min]
      309 CALL                             R8 2 1
      310 CALL                             R5 3 -1
      311 RETURN                           R5 -1
      312 GETUPVAL                         R5 2
      313 GETTABLEKS                       R5 R5 K3 ["createCollapsed"]
      315 MOVE                             R6 R0
      316 LOADN                            R7 1
      317 LOADN                            R8 0
      318 CALL                             R5 3 -1
      319 RETURN                           R5 -1
      320 JUMPIFNOT                        R2 ; [+60]
      321 GETTABLEKS                       R5 R1 K0 ["name"]
      323 LOADB                            R4 1
      324 JUMPIFEQKS                       R5 K17 ["PARAGRAPH"] ; [+11]
      326 LOADB                            R4 1
      327 JUMPIFEQKS                       R5 K18 ["HEADING"] ; [+8]
      329 LOADB                            R4 1
      330 JUMPIFEQKS                       R5 K19 ["QUOTE"] ; [+5]
      332 JUMPIFEQKS                       R5 K20 ["LIST_ITEM"] ; [+2]
      334 LOADB                            R4 0 +1
      335 LOADB                            R4 1
      336 JUMPIFNOT                        R4 ; [+44]
      337 GETTABLEKS                       R5 R1 K2 ["children"]
      339 JUMPIF                           R5 ; [+2]
      340 NEWTABLE                         R5 0 0
      342 LOADN                            R6 0
      343 MOVE                             R7 R5
      344 LOADNIL                          R8
      345 LOADNIL                          R9
      346 FORGPREP                         R7
      347 GETUPVAL                         R12 1
      348 MOVE                             R13 R11
      349 CALL                             R12 1 1
      350 ADD                              R6 R6 R12
      351 FORGLOOP                         R7 2 ; [-5]
      353 MOVE                             R4 R6
      354 JUMPIFNOT                        R3 ; [+16]
      355 GETUPVAL                         R5 5
      356 MOVE                             R6 R0
      357 GETTABLEKS                       R7 R1 K2 ["children"]
      359 JUMPIF                           R7 ; [+2]
      360 NEWTABLE                         R7 0 0
      362 FASTCALL2                        MATH_MIN R3 R4 ; [+5]
      364 MOVE                             R9 R3
      365 MOVE                             R10 R4
      366 GETIMPORT                        R8 K16 [math.min]
      368 CALL                             R8 2 1
      369 CALL                             R5 3 -1
      370 RETURN                           R5 -1
      371 GETUPVAL                         R5 5
      372 MOVE                             R6 R0
      373 GETTABLEKS                       R7 R1 K2 ["children"]
      375 JUMPIF                           R7 ; [+2]
      376 NEWTABLE                         R7 0 0
      378 MOVE                             R8 R4
      379 CALL                             R5 3 -1
      380 RETURN                           R5 -1
      381 JUMPIFNOT                        R3 ; [+49]
      382 GETTABLEKS                       R5 R1 K0 ["name"]
      384 LOADB                            R4 1
      385 JUMPIFEQKS                       R5 K17 ["PARAGRAPH"] ; [+11]
      387 LOADB                            R4 1
      388 JUMPIFEQKS                       R5 K18 ["HEADING"] ; [+8]
      390 LOADB                            R4 1
      391 JUMPIFEQKS                       R5 K19 ["QUOTE"] ; [+5]
      393 JUMPIFEQKS                       R5 K20 ["LIST_ITEM"] ; [+2]
      395 LOADB                            R4 0 +1
      396 LOADB                            R4 1
      397 JUMPIFNOT                        R4 ; [+33]
      398 GETTABLEKS                       R5 R1 K2 ["children"]
      400 JUMPIF                           R5 ; [+2]
      401 NEWTABLE                         R5 0 0
      403 LOADN                            R6 0
      404 MOVE                             R7 R5
      405 LOADNIL                          R8
      406 LOADNIL                          R9
      407 FORGPREP                         R7
      408 GETUPVAL                         R12 1
      409 MOVE                             R13 R11
      410 CALL                             R12 1 1
      411 ADD                              R6 R6 R12
      412 FORGLOOP                         R7 2 ; [-5]
      414 MOVE                             R4 R6
      415 GETUPVAL                         R5 5
      416 MOVE                             R6 R0
      417 GETTABLEKS                       R7 R1 K2 ["children"]
      419 JUMPIF                           R7 ; [+2]
      420 NEWTABLE                         R7 0 0
      422 FASTCALL2                        MATH_MIN R3 R4 ; [+5]
      424 MOVE                             R9 R3
      425 MOVE                             R10 R4
      426 GETIMPORT                        R8 K16 [math.min]
      428 CALL                             R8 2 1
      429 CALL                             R5 3 -1
      430 RETURN                           R5 -1
      431 GETUPVAL                         R4 2
      432 GETTABLEKS                       R4 R4 K3 ["createCollapsed"]
      434 MOVE                             R5 R0
      435 LOADN                            R6 1
      436 LOADN                            R7 0
      437 CALL                             R4 3 -1
      438 RETURN                           R4 -1

PROTO_20:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R4 0
        3 LOADB                            R5 0
        4 MOVE                             R6 R0
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 JUMPIFNOT                        R5 ; [+8]
        9 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       11 MOVE                             R12 R3
       12 MOVE                             R13 R10
       13 GETIMPORT                        R11 K2 [table.insert]
       15 CALL                             R11 2 0
       16 JUMP                             ; [+193]
       17 GETTABLEKS                       R11 R10 K3 ["name"]
       19 JUMPIFNOTEQKS                    R11 K4 ["TEXT"] ; [+48]
       21 GETTABLEKS                       R12 R10 K6 ["text"]
       23 ORK                              R11 R12 K5 [""]
       24 LENGTH                           R13 R11
       25 ADD                              R12 R4 R13
       26 JUMPIFNOTLE                      R1 R12 ; [+32]
       28 SUB                              R13 R1 R4
       29 LOADN                            R20 1
       30 MOVE                             R21 R13
       31 NAMECALL                         R18 R11 K7 ["sub"]
       33 CALL                             R18 3 1
       34 MOVE                             R15 R18
       35 MOVE                             R16 R2
       36 ADDK                             R19 R13 K8 [1]
       37 NAMECALL                         R17 R11 K7 ["sub"]
       39 CALL                             R17 2 1
       40 CONCAT                           R14 R15 R17
       41 DUPTABLE                         R17 K10 [{"name", "children", "text"}]
       42 LOADK                            R18 K4 ["TEXT"]
       43 SETTABLEKS                       R18 R17 K3 ["name"]
       45 NEWTABLE                         R18 0 0
       47 SETTABLEKS                       R18 R17 K9 ["children"]
       49 SETTABLEKS                       R14 R17 K6 ["text"]
       51 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
       53 MOVE                             R16 R3
       54 GETIMPORT                        R15 K2 [table.insert]
       56 CALL                             R15 2 0
       57 LOADB                            R5 1
       58 JUMP                             ; [+151]
       59 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       61 MOVE                             R14 R3
       62 MOVE                             R15 R10
       63 GETIMPORT                        R13 K2 [table.insert]
       65 CALL                             R13 2 0
       66 MOVE                             R4 R12
       67 JUMP                             ; [+142]
       68 GETTABLEKS                       R11 R10 K3 ["name"]
       70 JUMPIFEQKS                       R11 K11 ["STYLED_TEXT"] ; [+5]
       72 GETTABLEKS                       R11 R10 K3 ["name"]
       74 JUMPIFNOTEQKS                    R11 K12 ["LINK"] ; [+87]
       76 GETTABLEKS                       R12 R10 K9 ["children"]
       78 JUMPIF                           R12 ; [+2]
       79 NEWTABLE                         R12 0 0
       81 LOADN                            R13 0
       82 MOVE                             R14 R12
       83 LOADNIL                          R15
       84 LOADNIL                          R16
       85 FORGPREP                         R14
       86 GETUPVAL                         R19 0
       87 MOVE                             R20 R18
       88 CALL                             R19 1 1
       89 ADD                              R13 R13 R19
       90 FORGLOOP                         R14 2 ; [-5]
       92 MOVE                             R11 R13
       93 ADD                              R12 R4 R11
       94 JUMPIFNOTLT                      R4 R1 ; [+27]
       96 JUMPIFNOTLT                      R1 R12 ; [+25]
       98 GETUPVAL                         R13 1
       99 GETTABLEKS                       R14 R10 K9 ["children"]
      101 JUMPIF                           R14 ; [+2]
      102 NEWTABLE                         R14 0 0
      104 SUB                              R15 R1 R4
      105 MOVE                             R16 R2
      106 CALL                             R13 3 1
      107 GETIMPORT                        R14 K14 [table.clone]
      109 MOVE                             R15 R10
      110 CALL                             R14 1 1
      111 SETTABLEKS                       R13 R14 K9 ["children"]
      113 FASTCALL2                        TABLE_INSERT R3 R14 ; [+5]
      115 MOVE                             R16 R3
      116 MOVE                             R17 R14
      117 GETIMPORT                        R15 K2 [table.insert]
      119 CALL                             R15 2 0
      120 LOADB                            R5 1
      121 JUMP                             ; [+88]
      122 JUMPIFNOTLE                      R1 R4 ; [+30]
      124 LENGTH                           R13 R2
      125 LOADN                            R14 0
      126 JUMPIFNOTLT                      R14 R13 ; [+17]
      128 DUPTABLE                         R15 K10 [{"name", "children", "text"}]
      129 LOADK                            R16 K4 ["TEXT"]
      130 SETTABLEKS                       R16 R15 K3 ["name"]
      132 NEWTABLE                         R16 0 0
      134 SETTABLEKS                       R16 R15 K9 ["children"]
      136 SETTABLEKS                       R2 R15 K6 ["text"]
      138 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
      140 MOVE                             R14 R3
      141 GETIMPORT                        R13 K2 [table.insert]
      143 CALL                             R13 2 0
      144 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      146 MOVE                             R14 R3
      147 MOVE                             R15 R10
      148 GETIMPORT                        R13 K2 [table.insert]
      150 CALL                             R13 2 0
      151 LOADB                            R5 1
      152 JUMP                             ; [+57]
      153 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      155 MOVE                             R14 R3
      156 MOVE                             R15 R10
      157 GETIMPORT                        R13 K2 [table.insert]
      159 CALL                             R13 2 0
      160 MOVE                             R4 R12
      161 JUMP                             ; [+48]
      162 GETTABLEKS                       R11 R10 K3 ["name"]
      164 JUMPIFNOTEQKS                    R11 K15 ["BREAK"] ; [+38]
      166 ADDK                             R11 R4 K8 [1]
      167 JUMPIFNOTLE                      R1 R4 ; [+26]
      169 DUPTABLE                         R14 K10 [{"name", "children", "text"}]
      170 LOADK                            R15 K4 ["TEXT"]
      171 SETTABLEKS                       R15 R14 K3 ["name"]
      173 NEWTABLE                         R15 0 0
      175 SETTABLEKS                       R15 R14 K9 ["children"]
      177 SETTABLEKS                       R2 R14 K6 ["text"]
      179 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
      181 MOVE                             R13 R3
      182 GETIMPORT                        R12 K2 [table.insert]
      184 CALL                             R12 2 0
      185 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      187 MOVE                             R13 R3
      188 MOVE                             R14 R10
      189 GETIMPORT                        R12 K2 [table.insert]
      191 CALL                             R12 2 0
      192 LOADB                            R5 1
      193 JUMP                             ; [+16]
      194 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      196 MOVE                             R13 R3
      197 MOVE                             R14 R10
      198 GETIMPORT                        R12 K2 [table.insert]
      200 CALL                             R12 2 0
      201 MOVE                             R4 R11
      202 JUMP                             ; [+7]
      203 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      205 MOVE                             R12 R3
      206 MOVE                             R13 R10
      207 GETIMPORT                        R11 K2 [table.insert]
      209 CALL                             R11 2 0
      210 FORGLOOP                         R6 2 ; [-203]
      212 JUMPIF                           R5 ; [+47]
      213 LENGTH                           R7 R3
      214 LOADN                            R8 0
      215 JUMPIFNOTLT                      R8 R7 ; [+4]
      217 LENGTH                           R7 R3
      218 GETTABLE                         R6 R3 R7
      219 JUMPIF                           R6 ; [+1]
      220 LOADNIL                          R6
      221 JUMPIFNOT                        R6 ; [+22]
      222 GETTABLEKS                       R7 R6 K3 ["name"]
      224 JUMPIFNOTEQKS                    R7 K4 ["TEXT"] ; [+19]
      226 LENGTH                           R7 R3
      227 DUPTABLE                         R8 K10 [{"name", "children", "text"}]
      228 LOADK                            R9 K4 ["TEXT"]
      229 SETTABLEKS                       R9 R8 K3 ["name"]
      231 NEWTABLE                         R9 0 0
      233 SETTABLEKS                       R9 R8 K9 ["children"]
      235 GETTABLEKS                       R12 R6 K6 ["text"]
      237 ORK                              R10 R12 K5 [""]
      238 MOVE                             R11 R2
      239 CONCAT                           R9 R10 R11
      240 SETTABLEKS                       R9 R8 K6 ["text"]
      242 SETTABLE                         R8 R3 R7
      243 RETURN                           R3 1
      244 DUPTABLE                         R9 K10 [{"name", "children", "text"}]
      245 LOADK                            R10 K4 ["TEXT"]
      246 SETTABLEKS                       R10 R9 K3 ["name"]
      248 NEWTABLE                         R10 0 0
      250 SETTABLEKS                       R10 R9 K9 ["children"]
      252 SETTABLEKS                       R2 R9 K6 ["text"]
      254 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      256 MOVE                             R8 R3
      257 GETIMPORT                        R7 K2 [table.insert]
      259 CALL                             R7 2 0
      260 RETURN                           R3 1

PROTO_21:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R4 0
        3 MOVE                             R5 R0
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 FORGPREP                         R5
        7 GETTABLEKS                       R10 R9 K0 ["name"]
        9 JUMPIFNOTEQKS                    R10 K1 ["TEXT"] ; [+64]
       11 GETTABLEKS                       R11 R9 K3 ["text"]
       13 ORK                              R10 R11 K2 [""]
       14 MOVE                             R11 R4
       15 LENGTH                           R13 R10
       16 ADD                              R12 R4 R13
       17 JUMPIFLE                         R12 R1 ; [+3]
       19 JUMPIFNOTLE                      R2 R11 ; [+9]
       21 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       23 MOVE                             R14 R3
       24 MOVE                             R15 R9
       25 GETIMPORT                        R13 K6 [table.insert]
       27 CALL                             R13 2 0
       28 JUMP                             ; [+43]
       29 JUMPIFNOTLE                      R1 R11 ; [+4]
       31 JUMPIFNOTLE                      R12 R2 ; [+2]
       33 JUMP                             ; [+38]
       34 LOADK                            R13 K2 [""]
       35 JUMPIFNOTLT                      R11 R1 ; [+7]
       37 LOADN                            R16 1
       38 SUB                              R17 R1 R11
       39 NAMECALL                         R14 R10 K7 ["sub"]
       41 CALL                             R14 3 1
       42 MOVE                             R13 R14
       43 JUMPIFNOTLT                      R2 R12 ; [+8]
       45 MOVE                             R14 R13
       46 SUB                              R18 R2 R11
       47 ADDK                             R17 R18 K8 [1]
       48 NAMECALL                         R15 R10 K7 ["sub"]
       50 CALL                             R15 2 1
       51 CONCAT                           R13 R14 R15
       52 LENGTH                           R14 R13
       53 LOADN                            R15 0
       54 JUMPIFNOTLT                      R15 R14 ; [+17]
       56 DUPTABLE                         R16 K10 [{"name", "children", "text"}]
       57 LOADK                            R17 K1 ["TEXT"]
       58 SETTABLEKS                       R17 R16 K0 ["name"]
       60 NEWTABLE                         R17 0 0
       62 SETTABLEKS                       R17 R16 K9 ["children"]
       64 SETTABLEKS                       R13 R16 K3 ["text"]
       66 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
       68 MOVE                             R15 R3
       69 GETIMPORT                        R14 K6 [table.insert]
       71 CALL                             R14 2 0
       72 MOVE                             R4 R12
       73 JUMP                             ; [+112]
       74 GETTABLEKS                       R10 R9 K0 ["name"]
       76 JUMPIFEQKS                       R10 K11 ["STYLED_TEXT"] ; [+5]
       78 GETTABLEKS                       R10 R9 K0 ["name"]
       80 JUMPIFNOTEQKS                    R10 K12 ["LINK"] ; [+79]
       82 GETTABLEKS                       R11 R9 K9 ["children"]
       84 JUMPIF                           R11 ; [+2]
       85 NEWTABLE                         R11 0 0
       87 LOADN                            R12 0
       88 MOVE                             R13 R11
       89 LOADNIL                          R14
       90 LOADNIL                          R15
       91 FORGPREP                         R13
       92 GETUPVAL                         R18 0
       93 MOVE                             R19 R17
       94 CALL                             R18 1 1
       95 ADD                              R12 R12 R18
       96 FORGLOOP                         R13 2 ; [-5]
       98 MOVE                             R10 R12
       99 MOVE                             R11 R4
      100 ADD                              R12 R4 R10
      101 JUMPIFLE                         R12 R1 ; [+3]
      103 JUMPIFNOTLE                      R2 R11 ; [+9]
      105 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      107 MOVE                             R14 R3
      108 MOVE                             R15 R9
      109 GETIMPORT                        R13 K6 [table.insert]
      111 CALL                             R13 2 0
      112 JUMP                             ; [+45]
      113 JUMPIFNOTLE                      R1 R11 ; [+4]
      115 JUMPIFNOTLE                      R12 R2 ; [+2]
      117 JUMP                             ; [+40]
      118 LOADN                            R14 0
      119 SUB                              R15 R1 R11
      120 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
      122 GETIMPORT                        R13 K15 [math.max]
      124 CALL                             R13 2 1
      125 SUB                              R16 R2 R11
      126 FASTCALL2                        MATH_MIN R10 R16 ; [+4]
      128 MOVE                             R15 R10
      129 GETIMPORT                        R14 K17 [math.min]
      131 CALL                             R14 2 1
      132 GETUPVAL                         R15 1
      133 GETTABLEKS                       R16 R9 K9 ["children"]
      135 JUMPIF                           R16 ; [+2]
      136 NEWTABLE                         R16 0 0
      138 MOVE                             R17 R13
      139 MOVE                             R18 R14
      140 CALL                             R15 3 1
      141 LENGTH                           R16 R15
      142 LOADN                            R17 0
      143 JUMPIFNOTLT                      R17 R16 ; [+14]
      145 GETIMPORT                        R16 K19 [table.clone]
      147 MOVE                             R17 R9
      148 CALL                             R16 1 1
      149 SETTABLEKS                       R15 R16 K9 ["children"]
      151 FASTCALL2                        TABLE_INSERT R3 R16 ; [+5]
      153 MOVE                             R18 R3
      154 MOVE                             R19 R16
      155 GETIMPORT                        R17 K6 [table.insert]
      157 CALL                             R17 2 0
      158 MOVE                             R4 R12
      159 JUMP                             ; [+26]
      160 GETTABLEKS                       R10 R9 K0 ["name"]
      162 JUMPIFNOTEQKS                    R10 K20 ["BREAK"] ; [+16]
      164 MOVE                             R10 R4
      165 ADDK                             R11 R4 K8 [1]
      166 JUMPIFLE                         R11 R1 ; [+3]
      168 JUMPIFNOTLE                      R2 R10 ; [+8]
      170 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      172 MOVE                             R13 R3
      173 MOVE                             R14 R9
      174 GETIMPORT                        R12 K6 [table.insert]
      176 CALL                             R12 2 0
      177 MOVE                             R4 R11
      178 JUMP                             ; [+7]
      179 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      181 MOVE                             R11 R3
      182 MOVE                             R12 R9
      183 GETIMPORT                        R10 K6 [table.insert]
      185 CALL                             R10 2 0
      186 FORGLOOP                         R5 2 ; [-180]
      188 RETURN                           R3 1

PROTO_22:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 LOADN                            R4 0
        5 LOADB                            R5 0
        6 MOVE                             R6 R0
        7 LOADNIL                          R7
        8 LOADNIL                          R8
        9 FORGPREP                         R6
       10 JUMPIFNOT                        R5 ; [+8]
       11 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       13 MOVE                             R12 R3
       14 MOVE                             R13 R10
       15 GETIMPORT                        R11 K2 [table.insert]
       17 CALL                             R11 2 0
       18 JUMP                             ; [+208]
       19 GETTABLEKS                       R11 R10 K3 ["name"]
       21 JUMPIFNOTEQKS                    R11 K4 ["TEXT"] ; [+80]
       23 GETTABLEKS                       R12 R10 K6 ["text"]
       25 ORK                              R11 R12 K5 [""]
       26 LENGTH                           R13 R11
       27 ADD                              R12 R4 R13
       28 JUMPIFNOTLE                      R1 R4 ; [+10]
       30 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       32 MOVE                             R14 R3
       33 MOVE                             R15 R10
       34 GETIMPORT                        R13 K2 [table.insert]
       36 CALL                             R13 2 0
       37 LOADB                            R5 1
       38 JUMP                             ; [+188]
       39 JUMPIFNOTLE                      R12 R1 ; [+10]
       41 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       43 MOVE                             R14 R2
       44 MOVE                             R15 R10
       45 GETIMPORT                        R13 K2 [table.insert]
       47 CALL                             R13 2 0
       48 MOVE                             R4 R12
       49 JUMP                             ; [+177]
       50 SUB                              R13 R1 R4
       51 LOADN                            R16 1
       52 MOVE                             R17 R13
       53 NAMECALL                         R14 R11 K7 ["sub"]
       55 CALL                             R14 3 1
       56 ADDK                             R17 R13 K8 [1]
       57 NAMECALL                         R15 R11 K7 ["sub"]
       59 CALL                             R15 2 1
       60 LENGTH                           R16 R14
       61 LOADN                            R17 0
       62 JUMPIFNOTLT                      R17 R16 ; [+17]
       64 DUPTABLE                         R18 K10 [{"name", "children", "text"}]
       65 LOADK                            R19 K4 ["TEXT"]
       66 SETTABLEKS                       R19 R18 K3 ["name"]
       68 NEWTABLE                         R19 0 0
       70 SETTABLEKS                       R19 R18 K9 ["children"]
       72 SETTABLEKS                       R14 R18 K6 ["text"]
       74 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
       76 MOVE                             R17 R2
       77 GETIMPORT                        R16 K2 [table.insert]
       79 CALL                             R16 2 0
       80 LENGTH                           R16 R15
       81 LOADN                            R17 0
       82 JUMPIFNOTLT                      R17 R16 ; [+17]
       84 DUPTABLE                         R18 K10 [{"name", "children", "text"}]
       85 LOADK                            R19 K4 ["TEXT"]
       86 SETTABLEKS                       R19 R18 K3 ["name"]
       88 NEWTABLE                         R19 0 0
       90 SETTABLEKS                       R19 R18 K9 ["children"]
       92 SETTABLEKS                       R15 R18 K6 ["text"]
       94 FASTCALL2                        TABLE_INSERT R3 R18 ; [+4]
       96 MOVE                             R17 R3
       97 GETIMPORT                        R16 K2 [table.insert]
       99 CALL                             R16 2 0
      100 LOADB                            R5 1
      101 JUMP                             ; [+125]
      102 GETTABLEKS                       R11 R10 K3 ["name"]
      104 JUMPIFEQKS                       R11 K11 ["STYLED_TEXT"] ; [+5]
      106 GETTABLEKS                       R11 R10 K3 ["name"]
      108 JUMPIFNOTEQKS                    R11 K12 ["LINK"] ; [+86]
      110 GETTABLEKS                       R12 R10 K9 ["children"]
      112 JUMPIF                           R12 ; [+2]
      113 NEWTABLE                         R12 0 0
      115 LOADN                            R13 0
      116 MOVE                             R14 R12
      117 LOADNIL                          R15
      118 LOADNIL                          R16
      119 FORGPREP                         R14
      120 GETUPVAL                         R19 0
      121 MOVE                             R20 R18
      122 CALL                             R19 1 1
      123 ADD                              R13 R13 R19
      124 FORGLOOP                         R14 2 ; [-5]
      126 MOVE                             R11 R13
      127 ADD                              R12 R4 R11
      128 JUMPIFNOTLE                      R1 R4 ; [+10]
      130 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      132 MOVE                             R14 R3
      133 MOVE                             R15 R10
      134 GETIMPORT                        R13 K2 [table.insert]
      136 CALL                             R13 2 0
      137 LOADB                            R5 1
      138 JUMP                             ; [+88]
      139 JUMPIFNOTLE                      R12 R1 ; [+10]
      141 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
      143 MOVE                             R14 R2
      144 MOVE                             R15 R10
      145 GETIMPORT                        R13 K2 [table.insert]
      147 CALL                             R13 2 0
      148 MOVE                             R4 R12
      149 JUMP                             ; [+77]
      150 SUB                              R13 R1 R4
      151 GETUPVAL                         R14 1
      152 GETTABLEKS                       R15 R10 K9 ["children"]
      154 JUMPIF                           R15 ; [+2]
      155 NEWTABLE                         R15 0 0
      157 MOVE                             R16 R13
      158 CALL                             R14 2 2
      159 LENGTH                           R16 R14
      160 LOADN                            R17 0
      161 JUMPIFNOTLT                      R17 R16 ; [+14]
      163 GETIMPORT                        R16 K14 [table.clone]
      165 MOVE                             R17 R10
      166 CALL                             R16 1 1
      167 SETTABLEKS                       R14 R16 K9 ["children"]
      169 FASTCALL2                        TABLE_INSERT R2 R16 ; [+5]
      171 MOVE                             R18 R2
      172 MOVE                             R19 R16
      173 GETIMPORT                        R17 K2 [table.insert]
      175 CALL                             R17 2 0
      176 LENGTH                           R16 R15
      177 LOADN                            R17 0
      178 JUMPIFNOTLT                      R17 R16 ; [+14]
      180 GETIMPORT                        R16 K14 [table.clone]
      182 MOVE                             R17 R10
      183 CALL                             R16 1 1
      184 SETTABLEKS                       R15 R16 K9 ["children"]
      186 FASTCALL2                        TABLE_INSERT R3 R16 ; [+5]
      188 MOVE                             R18 R3
      189 MOVE                             R19 R16
      190 GETIMPORT                        R17 K2 [table.insert]
      192 CALL                             R17 2 0
      193 LOADB                            R5 1
      194 JUMP                             ; [+32]
      195 GETTABLEKS                       R11 R10 K3 ["name"]
      197 JUMPIFNOTEQKS                    R11 K15 ["BREAK"] ; [+22]
      199 ADDK                             R11 R4 K8 [1]
      200 JUMPIFNOTLE                      R1 R4 ; [+10]
      202 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      204 MOVE                             R13 R3
      205 MOVE                             R14 R10
      206 GETIMPORT                        R12 K2 [table.insert]
      208 CALL                             R12 2 0
      209 LOADB                            R5 1
      210 JUMP                             ; [+16]
      211 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
      213 MOVE                             R13 R2
      214 MOVE                             R14 R10
      215 GETIMPORT                        R12 K2 [table.insert]
      217 CALL                             R12 2 0
      218 MOVE                             R4 R11
      219 JUMP                             ; [+7]
      220 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
      222 MOVE                             R12 R2
      223 MOVE                             R13 R10
      224 GETIMPORT                        R11 K2 [table.insert]
      226 CALL                             R11 2 0
      227 FORGLOOP                         R6 2 ; [-218]
      229 RETURN                           R2 2

PROTO_23:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
        8 MOVE                             R9 R2
        9 MOVE                             R10 R7
       10 GETIMPORT                        R8 K2 [table.insert]
       12 CALL                             R8 2 0
       13 FORGLOOP                         R3 2 ; [-8]
       15 MOVE                             R3 R1
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       21 MOVE                             R9 R2
       22 MOVE                             R10 R7
       23 GETIMPORT                        R8 K2 [table.insert]
       25 CALL                             R8 2 0
       26 FORGLOOP                         R3 2 ; [-8]
       28 RETURN                           R2 1

PROTO_24:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+17]
        3 NEWTABLE                         R2 0 1
        5 DUPTABLE                         R3 K4 [{"name", "children", "text"}]
        6 LOADK                            R4 K5 ["TEXT"]
        7 SETTABLEKS                       R4 R3 K1 ["name"]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R3 K2 ["children"]
       13 LOADK                            R4 K6 [""]
       14 SETTABLEKS                       R4 R3 K3 ["text"]
       16 SETLIST                          R2 R3 1 [1]
       18 RETURN                           R2 1
       19 RETURN                           R0 1

PROTO_25:
        0 LOADN                            R4 0
        1 MOVE                             R5 R0
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 FORGPREP                         R5
        5 GETUPVAL                         R10 0
        6 MOVE                             R11 R9
        7 CALL                             R10 1 1
        8 GETTABLEKS                       R11 R9 K0 ["name"]
       10 JUMPIFNOTEQKS                    R11 K1 ["STYLED_TEXT"] ; [+17]
       12 GETTABLEKS                       R11 R9 K2 ["attributes"]
       14 JUMPIFNOT                        R11 ; [+13]
       15 GETTABLEKS                       R11 R9 K2 ["attributes"]
       17 GETTABLEKS                       R11 R11 K3 ["style"]
       19 JUMPIFNOTEQ                      R11 R3 ; [+8]
       21 JUMPIFNOTLE                      R4 R1 ; [+6]
       23 ADD                              R11 R4 R10
       24 JUMPIFNOTLE                      R2 R11 ; [+3]
       26 LOADB                            R11 1
       27 RETURN                           R11 1
       28 ADD                              R4 R4 R10
       29 FORGLOOP                         R5 2 ; [-25]
       31 LOADB                            R5 0
       32 RETURN                           R5 1

PROTO_26:
        0 NEWTABLE                         R4 0 0
        2 LOADN                            R5 0
        3 MOVE                             R6 R0
        4 LOADNIL                          R7
        5 LOADNIL                          R8
        6 FORGPREP                         R6
        7 GETUPVAL                         R11 0
        8 MOVE                             R12 R10
        9 CALL                             R11 1 1
       10 MOVE                             R12 R5
       11 GETTABLEKS                       R13 R10 K0 ["name"]
       13 JUMPIFNOTEQKS                    R13 K1 ["STYLED_TEXT"] ; [+111]
       15 GETTABLEKS                       R13 R10 K2 ["attributes"]
       17 JUMPIFNOT                        R13 ; [+107]
       18 GETTABLEKS                       R13 R10 K2 ["attributes"]
       20 GETTABLEKS                       R13 R13 K3 ["style"]
       22 JUMPIFNOTEQ                      R13 R3 ; [+102]
       24 JUMPIFNOTLE                      R12 R1 ; [+100]
       26 ADD                              R13 R12 R11
       27 JUMPIFNOTLE                      R2 R13 ; [+97]
       29 SUB                              R13 R1 R12
       30 SUB                              R14 R2 R12
       31 GETTABLEKS                       R15 R10 K4 ["children"]
       33 JUMPIF                           R15 ; [+2]
       34 NEWTABLE                         R15 0 0
       36 JUMPIFNOTEQKN                    R13 K5 [0] ; [+17]
       38 JUMPIFNOTLE                      R11 R14 ; [+15]
       40 MOVE                             R16 R15
       41 LOADNIL                          R17
       42 LOADNIL                          R18
       43 FORGPREP                         R16
       44 FASTCALL2                        TABLE_INSERT R4 R20 ; [+5]
       46 MOVE                             R22 R4
       47 MOVE                             R23 R20
       48 GETIMPORT                        R21 K8 [table.insert]
       50 CALL                             R21 2 0
       51 FORGLOOP                         R16 2 ; [-8]
       53 JUMP                             ; [+78]
       54 LOADN                            R16 0
       55 JUMPIFNOTLT                      R16 R13 ; [+26]
       57 GETUPVAL                         R16 1
       58 MOVE                             R17 R15
       59 MOVE                             R18 R13
       60 CALL                             R16 2 1
       61 LENGTH                           R17 R16
       62 LOADN                            R18 0
       63 JUMPIFNOTLT                      R18 R17 ; [+18]
       65 DUPTABLE                         R19 K9 [{"name", "children", "attributes"}]
       66 LOADK                            R20 K1 ["STYLED_TEXT"]
       67 SETTABLEKS                       R20 R19 K0 ["name"]
       69 SETTABLEKS                       R16 R19 K4 ["children"]
       71 DUPTABLE                         R20 K10 [{"style"}]
       72 SETTABLEKS                       R3 R20 K3 ["style"]
       74 SETTABLEKS                       R20 R19 K2 ["attributes"]
       76 FASTCALL2                        TABLE_INSERT R4 R19 ; [+4]
       78 MOVE                             R18 R4
       79 GETIMPORT                        R17 K8 [table.insert]
       81 CALL                             R17 2 0
       82 GETUPVAL                         R16 1
       83 MOVE                             R17 R15
       84 MOVE                             R18 R13
       85 CALL                             R16 2 2
       86 GETUPVAL                         R18 1
       87 MOVE                             R19 R17
       88 SUB                              R20 R14 R13
       89 CALL                             R18 2 2
       90 MOVE                             R20 R18
       91 LOADNIL                          R21
       92 LOADNIL                          R22
       93 FORGPREP                         R20
       94 FASTCALL2                        TABLE_INSERT R4 R24 ; [+5]
       96 MOVE                             R26 R4
       97 MOVE                             R27 R24
       98 GETIMPORT                        R25 K8 [table.insert]
      100 CALL                             R25 2 0
      101 FORGLOOP                         R20 2 ; [-8]
      103 LENGTH                           R20 R19
      104 LOADN                            R21 0
      105 JUMPIFNOTLT                      R21 R20 ; [+26]
      107 DUPTABLE                         R22 K9 [{"name", "children", "attributes"}]
      108 LOADK                            R23 K1 ["STYLED_TEXT"]
      109 SETTABLEKS                       R23 R22 K0 ["name"]
      111 SETTABLEKS                       R19 R22 K4 ["children"]
      113 DUPTABLE                         R23 K10 [{"style"}]
      114 SETTABLEKS                       R3 R23 K3 ["style"]
      116 SETTABLEKS                       R23 R22 K2 ["attributes"]
      118 FASTCALL2                        TABLE_INSERT R4 R22 ; [+4]
      120 MOVE                             R21 R4
      121 GETIMPORT                        R20 K8 [table.insert]
      123 CALL                             R20 2 0
      124 JUMP                             ; [+7]
      125 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
      127 MOVE                             R14 R4
      128 MOVE                             R15 R10
      129 GETIMPORT                        R13 K8 [table.insert]
      131 CALL                             R13 2 0
      132 ADD                              R5 R5 R11
      133 FORGLOOP                         R6 2 ; [-127]
      135 RETURN                           R4 1

PROTO_27:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 CALL                             R4 2 2
        4 GETUPVAL                         R6 0
        5 MOVE                             R7 R5
        6 SUB                              R8 R2 R1
        7 CALL                             R6 2 2
        8 LENGTH                           R8 R6
        9 JUMPIFNOTEQKN                    R8 K0 [0] ; [+2]
       11 RETURN                           R0 1
       12 DUPTABLE                         R8 K4 [{"name", "children", "attributes"}]
       13 LOADK                            R9 K5 ["STYLED_TEXT"]
       14 SETTABLEKS                       R9 R8 K1 ["name"]
       16 SETTABLEKS                       R6 R8 K2 ["children"]
       18 DUPTABLE                         R9 K7 [{"style"}]
       19 SETTABLEKS                       R3 R9 K6 ["style"]
       21 SETTABLEKS                       R9 R8 K3 ["attributes"]
       23 NEWTABLE                         R9 0 0
       25 MOVE                             R10 R4
       26 LOADNIL                          R11
       27 LOADNIL                          R12
       28 FORGPREP                         R10
       29 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       31 MOVE                             R16 R9
       32 MOVE                             R17 R14
       33 GETIMPORT                        R15 K10 [table.insert]
       35 CALL                             R15 2 0
       36 FORGLOOP                         R10 2 ; [-8]
       38 FASTCALL2                        TABLE_INSERT R9 R8 ; [+5]
       40 MOVE                             R11 R9
       41 MOVE                             R12 R8
       42 GETIMPORT                        R10 K10 [table.insert]
       44 CALL                             R10 2 0
       45 MOVE                             R10 R7
       46 LOADNIL                          R11
       47 LOADNIL                          R12
       48 FORGPREP                         R10
       49 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       51 MOVE                             R16 R9
       52 MOVE                             R17 R14
       53 GETIMPORT                        R15 K10 [table.insert]
       55 CALL                             R15 2 0
       56 FORGLOOP                         R10 2 ; [-8]
       58 RETURN                           R9 1

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 JUMPIFNOTEQKS                    R2 K1 ["LIST"] ; [+65]
        4 GETTABLEKS                       R4 R0 K0 ["name"]
        6 JUMPIFEQKS                       R4 K1 ["LIST"] ; [+4]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 JUMP                             ; [+19]
       11 GETTABLEKS                       R5 R1 K2 ["path"]
       13 JUMPIFNOT                        R5 ; [+4]
       14 GETTABLEKS                       R5 R1 K2 ["path"]
       16 GETTABLEN                        R4 R5 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R4
       19 JUMPIF                           R4 ; [+3]
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 JUMP                             ; [+7]
       23 GETTABLEKS                       R5 R0 K3 ["children"]
       25 JUMPIF                           R5 ; [+2]
       26 NEWTABLE                         R5 0 0
       28 GETTABLE                         R2 R5 R4
       29 MOVE                             R3 R4
       30 JUMPIFNOT                        R2 ; [+35]
       31 DUPTABLE                         R4 K8 [{"children", "flatOffset", "isList", "listItemIndex", "listItem"}]
       32 GETTABLEKS                       R5 R2 K3 ["children"]
       34 JUMPIF                           R5 ; [+2]
       35 NEWTABLE                         R5 0 0
       37 SETTABLEKS                       R5 R4 K3 ["children"]
       39 GETTABLEKS                       R6 R2 K3 ["children"]
       41 JUMPIF                           R6 ; [+2]
       42 NEWTABLE                         R6 0 0
       44 LOADN                            R7 0
       45 LOADN                            R8 0
       46 NEWCLOSURE                       R9 P0
       47 CAPTURE                          REF R8
       48 CAPTURE                          VAL R1
       49 CAPTURE                          REF R7
       50 CAPTURE                          VAL R9
       51 MOVE                             R10 R9
       52 MOVE                             R11 R6
       53 CALL                             R10 1 1
       54 OR                               R5 R10 R7
       55 CLOSEUPVALS                      R7
       56 SETTABLEKS                       R5 R4 K4 ["flatOffset"]
       58 LOADB                            R5 1
       59 SETTABLEKS                       R5 R4 K5 ["isList"]
       61 SETTABLEKS                       R3 R4 K6 ["listItemIndex"]
       63 SETTABLEKS                       R2 R4 K7 ["listItem"]
       65 RETURN                           R4 1
       66 LOADNIL                          R4
       67 RETURN                           R4 1
       68 GETTABLEKS                       R3 R0 K0 ["name"]
       70 JUMPIFEQKS                       R3 K9 ["TABLE"] ; [+2]
       72 LOADB                            R2 0 +1
       73 LOADB                            R2 1
       74 JUMPIFNOT                        R2 ; [+44]
       75 GETUPVAL                         R2 0
       76 MOVE                             R3 R0
       77 MOVE                             R4 R1
       78 CALL                             R2 2 3
       79 JUMPIFNOT                        R2 ; [+37]
       80 DUPTABLE                         R5 K14 [{"children", "flatOffset", "isTable", "tableRowIndex", "tableCellIndex", "tableCell"}]
       81 GETTABLEKS                       R6 R2 K3 ["children"]
       83 JUMPIF                           R6 ; [+2]
       84 NEWTABLE                         R6 0 0
       86 SETTABLEKS                       R6 R5 K3 ["children"]
       88 GETTABLEKS                       R7 R2 K3 ["children"]
       90 JUMPIF                           R7 ; [+2]
       91 NEWTABLE                         R7 0 0
       93 LOADN                            R8 0
       94 LOADN                            R9 0
       95 NEWCLOSURE                       R10 P0
       96 CAPTURE                          REF R9
       97 CAPTURE                          VAL R1
       98 CAPTURE                          REF R8
       99 CAPTURE                          VAL R10
      100 MOVE                             R11 R10
      101 MOVE                             R12 R7
      102 CALL                             R11 1 1
      103 OR                               R6 R11 R8
      104 CLOSEUPVALS                      R8
      105 SETTABLEKS                       R6 R5 K4 ["flatOffset"]
      107 LOADB                            R6 1
      108 SETTABLEKS                       R6 R5 K10 ["isTable"]
      110 SETTABLEKS                       R3 R5 K11 ["tableRowIndex"]
      112 SETTABLEKS                       R4 R5 K12 ["tableCellIndex"]
      114 SETTABLEKS                       R2 R5 K13 ["tableCell"]
      116 RETURN                           R5 1
      117 LOADNIL                          R5
      118 RETURN                           R5 1
      119 GETTABLEKS                       R3 R0 K0 ["name"]
      121 LOADB                            R2 1
      122 JUMPIFEQKS                       R3 K15 ["PARAGRAPH"] ; [+11]
      124 LOADB                            R2 1
      125 JUMPIFEQKS                       R3 K16 ["HEADING"] ; [+8]
      127 LOADB                            R2 1
      128 JUMPIFEQKS                       R3 K17 ["QUOTE"] ; [+5]
      130 JUMPIFEQKS                       R3 K18 ["LIST_ITEM"] ; [+2]
      132 LOADB                            R2 0 +1
      133 LOADB                            R2 1
      134 JUMPIFNOT                        R2 ; [+31]
      135 DUPTABLE                         R2 K19 [{"children", "flatOffset", "isList"}]
      136 GETTABLEKS                       R3 R0 K3 ["children"]
      138 JUMPIF                           R3 ; [+2]
      139 NEWTABLE                         R3 0 0
      141 SETTABLEKS                       R3 R2 K3 ["children"]
      143 GETTABLEKS                       R4 R0 K3 ["children"]
      145 JUMPIF                           R4 ; [+2]
      146 NEWTABLE                         R4 0 0
      148 LOADN                            R5 0
      149 LOADN                            R6 0
      150 NEWCLOSURE                       R7 P0
      151 CAPTURE                          REF R6
      152 CAPTURE                          VAL R1
      153 CAPTURE                          REF R5
      154 CAPTURE                          VAL R7
      155 MOVE                             R8 R7
      156 MOVE                             R9 R4
      157 CALL                             R8 1 1
      158 OR                               R3 R8 R5
      159 CLOSEUPVALS                      R5
      160 SETTABLEKS                       R3 R2 K4 ["flatOffset"]
      162 LOADB                            R3 0
      163 SETTABLEKS                       R3 R2 K5 ["isList"]
      165 RETURN                           R2 1
      166 LOADNIL                          R2
      167 RETURN                           R2 1

PROTO_29:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["getOrderedSelection"]
        3 MOVE                             R6 R0
        4 CALL                             R5 1 2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K1 ["isCollapsed"]
        8 MOVE                             R8 R0
        9 CALL                             R7 1 1
       10 JUMPIFNOT                        R7 ; [+1]
       11 RETURN                           R5 1
       12 MOVE                             R7 R3
       13 MOVE                             R8 R1
       14 CALL                             R7 1 1
       15 GETTABLEKS                       R9 R5 K2 ["blockIndex"]
       17 GETTABLE                         R8 R7 R9
       18 GETTABLEKS                       R10 R6 K2 ["blockIndex"]
       20 GETTABLE                         R9 R7 R10
       21 GETTABLEKS                       R10 R5 K2 ["blockIndex"]
       23 GETTABLEKS                       R11 R6 K2 ["blockIndex"]
       25 JUMPIFNOTEQ                      R10 R11 ; [+110]
       27 JUMPIFNOT                        R8 ; [+108]
       28 GETTABLEKS                       R11 R8 K3 ["name"]
       30 LOADB                            R10 1
       31 JUMPIFEQKS                       R11 K4 ["PARAGRAPH"] ; [+11]
       33 LOADB                            R10 1
       34 JUMPIFEQKS                       R11 K5 ["HEADING"] ; [+8]
       36 LOADB                            R10 1
       37 JUMPIFEQKS                       R11 K6 ["QUOTE"] ; [+5]
       39 JUMPIFEQKS                       R11 K7 ["LIST_ITEM"] ; [+2]
       41 LOADB                            R10 0 +1
       42 LOADB                            R10 1
       43 JUMPIFNOT                        R10 ; [+92]
       44 GETTABLEKS                       R11 R8 K8 ["children"]
       46 JUMPIF                           R11 ; [+2]
       47 NEWTABLE                         R11 0 0
       49 LOADN                            R12 0
       50 LOADN                            R13 0
       51 NEWCLOSURE                       R14 P0
       52 CAPTURE                          REF R13
       53 CAPTURE                          VAL R5
       54 CAPTURE                          REF R12
       55 CAPTURE                          VAL R14
       56 MOVE                             R15 R14
       57 MOVE                             R16 R11
       58 CALL                             R15 1 1
       59 OR                               R10 R15 R12
       60 CLOSEUPVALS                      R12
       61 GETTABLEKS                       R12 R8 K8 ["children"]
       63 JUMPIF                           R12 ; [+2]
       64 NEWTABLE                         R12 0 0
       66 LOADN                            R13 0
       67 LOADN                            R14 0
       68 NEWCLOSURE                       R15 P0
       69 CAPTURE                          REF R14
       70 CAPTURE                          VAL R6
       71 CAPTURE                          REF R13
       72 CAPTURE                          VAL R15
       73 MOVE                             R16 R15
       74 MOVE                             R17 R12
       75 CALL                             R16 1 1
       76 OR                               R11 R16 R13
       77 CLOSEUPVALS                      R13
       78 GETUPVAL                         R12 1
       79 GETUPVAL                         R13 2
       80 GETTABLEKS                       R14 R8 K8 ["children"]
       82 JUMPIF                           R14 ; [+2]
       83 NEWTABLE                         R14 0 0
       85 MOVE                             R15 R10
       86 MOVE                             R16 R11
       87 CALL                             R13 3 1
       88 CALL                             R12 1 1
       89 MOVE                             R13 R2
       90 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
       92 GETTABLE                         R14 R1 R15
       93 GETTABLEKS                       R14 R14 K8 ["children"]
       95 CALL                             R13 1 1
       96 MOVE                             R15 R12
       97 NAMECALL                         R13 R13 K9 ["set"]
       99 CALL                             R13 2 0
      100 GETTABLEKS                       R14 R5 K2 ["blockIndex"]
      102 LOADN                            R15 0
      103 LOADN                            R16 0
      104 NEWCLOSURE                       R17 P1
      105 CAPTURE                          REF R15
      106 CAPTURE                          VAL R10
      107 CAPTURE                          REF R16
      108 CAPTURE                          UPVAL U0
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R17
      111 MOVE                             R18 R17
      112 MOVE                             R19 R12
      113 CALL                             R18 1 1
      114 JUMPIFNOT                        R18 ; [+3]
      115 MOVE                             R13 R18
      116 CLOSEUPVALS                      R15
      117 JUMP                             ; [+15]
      118 GETUPVAL                         R19 0
      119 GETTABLEKS                       R19 R19 K10 ["createCollapsed"]
      121 MOVE                             R20 R14
      122 LOADN                            R22 1
      123 FASTCALL2                        MATH_MAX R22 R15 ; [+4]
      125 MOVE                             R23 R15
      126 GETIMPORT                        R21 K13 [math.max]
      128 CALL                             R21 2 1
      129 SUB                              R22 R10 R16
      130 CALL                             R19 3 1
      131 MOVE                             R13 R19
      132 CLOSEUPVALS                      R15
      133 GETTABLEKS                       R13 R13 K14 ["anchor"]
      135 RETURN                           R13 1
      136 GETTABLEKS                       R10 R5 K2 ["blockIndex"]
      138 GETTABLEKS                       R11 R6 K2 ["blockIndex"]
      140 JUMPIFNOTEQ                      R10 R11 ; [+51]
      142 JUMPIFNOT                        R8 ; [+49]
      143 GETTABLEKS                       R11 R8 K3 ["name"]
      145 JUMPIFEQKS                       R11 K15 ["CODE_BLOCK"] ; [+2]
      147 LOADB                            R10 0 +1
      148 LOADB                            R10 1
      149 JUMPIFNOT                        R10 ; [+42]
      150 GETTABLEKS                       R11 R8 K17 ["text"]
      152 ORK                              R10 R11 K16 [""]
      153 GETUPVAL                         R11 3
      154 MOVE                             R12 R5
      155 MOVE                             R13 R10
      156 CALL                             R11 2 1
      157 GETUPVAL                         R12 3
      158 MOVE                             R13 R6
      159 MOVE                             R14 R10
      160 CALL                             R12 2 1
      161 LOADN                            R18 1
      162 MOVE                             R19 R11
      163 NAMECALL                         R16 R10 K18 ["sub"]
      165 CALL                             R16 3 1
      166 MOVE                             R14 R16
      167 ADDK                             R17 R12 K19 [1]
      168 NAMECALL                         R15 R10 K18 ["sub"]
      170 CALL                             R15 2 1
      171 CONCAT                           R13 R14 R15
      172 MOVE                             R14 R2
      173 GETTABLEKS                       R16 R5 K2 ["blockIndex"]
      175 GETTABLE                         R15 R1 R16
      176 GETTABLEKS                       R15 R15 K17 ["text"]
      178 CALL                             R14 1 1
      179 MOVE                             R16 R13
      180 NAMECALL                         R14 R14 K9 ["set"]
      182 CALL                             R14 2 0
      183 GETUPVAL                         R14 4
      184 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
      186 MOVE                             R16 R13
      187 MOVE                             R17 R11
      188 CALL                             R14 3 1
      189 GETTABLEKS                       R14 R14 K14 ["anchor"]
      191 RETURN                           R14 1
      192 GETTABLEKS                       R10 R5 K2 ["blockIndex"]
      194 GETTABLEKS                       R11 R6 K2 ["blockIndex"]
      196 JUMPIFNOTEQ                      R10 R11 ; [+241]
      198 JUMPIFNOT                        R8 ; [+239]
      199 GETTABLEKS                       R10 R8 K3 ["name"]
      201 JUMPIFNOTEQKS                    R10 K20 ["LIST"] ; [+236]
      203 GETUPVAL                         R10 5
      204 MOVE                             R11 R8
      205 MOVE                             R12 R5
      206 CALL                             R10 2 1
      207 GETUPVAL                         R11 5
      208 MOVE                             R12 R8
      209 MOVE                             R13 R6
      210 CALL                             R11 2 1
      211 JUMPIFNOT                        R10 ; [+226]
      212 JUMPIFNOT                        R11 ; [+225]
      213 GETTABLEKS                       R12 R10 K21 ["listItemIndex"]
      215 GETTABLEKS                       R13 R11 K21 ["listItemIndex"]
      217 JUMPIFNOTEQ                      R12 R13 ; [+97]
      219 GETUPVAL                         R12 1
      220 GETUPVAL                         R13 2
      221 GETTABLEKS                       R14 R10 K8 ["children"]
      223 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
      225 GETTABLEKS                       R16 R11 K22 ["flatOffset"]
      227 CALL                             R13 3 1
      228 CALL                             R12 1 1
      229 GETTABLEKS                       R13 R10 K23 ["listItem"]
      231 GETTABLEKS                       R14 R10 K21 ["listItemIndex"]
      233 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
      235 MOVE                             R16 R2
      236 GETTABLE                         R18 R1 R15
      237 GETTABLEKS                       R18 R18 K8 ["children"]
      239 GETTABLE                         R17 R18 R14
      240 CALL                             R16 1 1
      241 DUPTABLE                         R18 K26 [{"name", "children", "attributes", "index"}]
      242 GETTABLEKS                       R19 R13 K3 ["name"]
      244 SETTABLEKS                       R19 R18 K3 ["name"]
      246 SETTABLEKS                       R12 R18 K8 ["children"]
      248 GETTABLEKS                       R19 R13 K24 ["attributes"]
      250 SETTABLEKS                       R19 R18 K24 ["attributes"]
      252 GETTABLEKS                       R19 R13 K25 ["index"]
      254 SETTABLEKS                       R19 R18 K25 ["index"]
      256 NAMECALL                         R16 R16 K9 ["set"]
      258 CALL                             R16 2 0
      259 GETTABLEKS                       R14 R5 K2 ["blockIndex"]
      261 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
      263 LOADN                            R16 0
      264 LOADN                            R17 0
      265 NEWCLOSURE                       R18 P1
      266 CAPTURE                          REF R16
      267 CAPTURE                          VAL R15
      268 CAPTURE                          REF R17
      269 CAPTURE                          UPVAL U0
      270 CAPTURE                          VAL R14
      271 CAPTURE                          VAL R18
      272 MOVE                             R19 R18
      273 MOVE                             R20 R12
      274 CALL                             R19 1 1
      275 JUMPIFNOT                        R19 ; [+3]
      276 MOVE                             R13 R19
      277 CLOSEUPVALS                      R16
      278 JUMP                             ; [+15]
      279 GETUPVAL                         R20 0
      280 GETTABLEKS                       R20 R20 K10 ["createCollapsed"]
      282 MOVE                             R21 R14
      283 LOADN                            R23 1
      284 FASTCALL2                        MATH_MAX R23 R16 ; [+4]
      286 MOVE                             R24 R16
      287 GETIMPORT                        R22 K13 [math.max]
      289 CALL                             R22 2 1
      290 SUB                              R23 R15 R17
      291 CALL                             R20 3 1
      292 MOVE                             R13 R20
      293 CLOSEUPVALS                      R16
      294 GETUPVAL                         R14 0
      295 GETTABLEKS                       R14 R14 K27 ["createPosition"]
      297 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
      299 GETTABLEKS                       R16 R13 K14 ["anchor"]
      301 GETTABLEKS                       R16 R16 K28 ["segmentIndex"]
      303 GETTABLEKS                       R17 R13 K14 ["anchor"]
      305 GETTABLEKS                       R17 R17 K29 ["charOffset"]
      307 NEWTABLE                         R18 0 1
      309 GETTABLEKS                       R19 R10 K21 ["listItemIndex"]
      311 SETLIST                          R18 R19 1 [1]
      313 CALL                             R14 4 -1
      314 RETURN                           R14 -1
      315 GETUPVAL                         R12 6
      316 GETTABLEKS                       R13 R10 K8 ["children"]
      318 GETTABLEKS                       R14 R10 K22 ["flatOffset"]
      320 CALL                             R12 2 1
      321 GETUPVAL                         R13 6
      322 GETTABLEKS                       R14 R11 K8 ["children"]
      324 GETTABLEKS                       R15 R11 K22 ["flatOffset"]
      326 CALL                             R13 2 2
      327 GETUPVAL                         R15 1
      328 GETUPVAL                         R16 7
      329 MOVE                             R17 R12
      330 MOVE                             R18 R14
      331 CALL                             R16 2 1
      332 CALL                             R15 1 1
      333 GETTABLEKS                       R16 R10 K23 ["listItem"]
      335 GETTABLEKS                       R17 R10 K21 ["listItemIndex"]
      337 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      339 MOVE                             R19 R2
      340 GETTABLE                         R21 R1 R18
      341 GETTABLEKS                       R21 R21 K8 ["children"]
      343 GETTABLE                         R20 R21 R17
      344 CALL                             R19 1 1
      345 DUPTABLE                         R21 K26 [{"name", "children", "attributes", "index"}]
      346 GETTABLEKS                       R22 R16 K3 ["name"]
      348 SETTABLEKS                       R22 R21 K3 ["name"]
      350 SETTABLEKS                       R15 R21 K8 ["children"]
      352 GETTABLEKS                       R22 R16 K24 ["attributes"]
      354 SETTABLEKS                       R22 R21 K24 ["attributes"]
      356 GETTABLEKS                       R22 R16 K25 ["index"]
      358 SETTABLEKS                       R22 R21 K25 ["index"]
      360 NAMECALL                         R19 R19 K9 ["set"]
      362 CALL                             R19 2 0
      363 GETTABLEKS                       R18 R11 K21 ["listItemIndex"]
      365 GETTABLEKS                       R19 R10 K21 ["listItemIndex"]
      367 ADDK                             R16 R19 K19 [1]
      368 LOADN                            R17 255
      369 FORNPREP                         R16
      370 MOVE                             R19 R2
      371 GETTABLEKS                       R21 R5 K2 ["blockIndex"]
      373 GETTABLE                         R20 R1 R21
      374 GETTABLEKS                       R20 R20 K8 ["children"]
      376 CALL                             R19 1 1
      377 MOVE                             R21 R18
      378 NAMECALL                         R19 R19 K30 ["remove"]
      380 CALL                             R19 2 0
      381 FORNLOOP                         R16
      382 GETTABLEKS                       R17 R5 K2 ["blockIndex"]
      384 GETTABLEKS                       R18 R10 K22 ["flatOffset"]
      386 LOADN                            R19 0
      387 LOADN                            R20 0
      388 NEWCLOSURE                       R21 P1
      389 CAPTURE                          REF R19
      390 CAPTURE                          VAL R18
      391 CAPTURE                          REF R20
      392 CAPTURE                          UPVAL U0
      393 CAPTURE                          VAL R17
      394 CAPTURE                          VAL R21
      395 MOVE                             R22 R21
      396 MOVE                             R23 R15
      397 CALL                             R22 1 1
      398 JUMPIFNOT                        R22 ; [+3]
      399 MOVE                             R16 R22
      400 CLOSEUPVALS                      R19
      401 JUMP                             ; [+15]
      402 GETUPVAL                         R23 0
      403 GETTABLEKS                       R23 R23 K10 ["createCollapsed"]
      405 MOVE                             R24 R17
      406 LOADN                            R26 1
      407 FASTCALL2                        MATH_MAX R26 R19 ; [+4]
      409 MOVE                             R27 R19
      410 GETIMPORT                        R25 K13 [math.max]
      412 CALL                             R25 2 1
      413 SUB                              R26 R18 R20
      414 CALL                             R23 3 1
      415 MOVE                             R16 R23
      416 CLOSEUPVALS                      R19
      417 GETUPVAL                         R17 0
      418 GETTABLEKS                       R17 R17 K27 ["createPosition"]
      420 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      422 GETTABLEKS                       R19 R16 K14 ["anchor"]
      424 GETTABLEKS                       R19 R19 K28 ["segmentIndex"]
      426 GETTABLEKS                       R20 R16 K14 ["anchor"]
      428 GETTABLEKS                       R20 R20 K29 ["charOffset"]
      430 NEWTABLE                         R21 0 1
      432 GETTABLEKS                       R22 R10 K21 ["listItemIndex"]
      434 SETLIST                          R21 R22 1 [1]
      436 CALL                             R17 4 -1
      437 RETURN                           R17 -1
      438 GETTABLEKS                       R10 R5 K2 ["blockIndex"]
      440 GETTABLEKS                       R11 R6 K2 ["blockIndex"]
      442 JUMPIFNOTEQ                      R10 R11 ; [+286]
      444 JUMPIFNOT                        R8 ; [+284]
      445 GETTABLEKS                       R11 R8 K3 ["name"]
      447 JUMPIFEQKS                       R11 K31 ["TABLE"] ; [+2]
      449 LOADB                            R10 0 +1
      450 LOADB                            R10 1
      451 JUMPIFNOT                        R10 ; [+277]
      452 GETUPVAL                         R10 5
      453 MOVE                             R11 R8
      454 MOVE                             R12 R5
      455 CALL                             R10 2 1
      456 GETUPVAL                         R11 5
      457 MOVE                             R12 R8
      458 MOVE                             R13 R6
      459 CALL                             R11 2 1
      460 JUMPIFNOT                        R10 ; [+268]
      461 JUMPIFNOT                        R11 ; [+267]
      462 GETTABLEKS                       R12 R10 K32 ["isTable"]
      464 JUMPIFNOT                        R12 ; [+264]
      465 GETTABLEKS                       R12 R11 K32 ["isTable"]
      467 JUMPIFNOT                        R12 ; [+261]
      468 GETTABLEKS                       R12 R10 K33 ["tableRowIndex"]
      470 GETTABLEKS                       R13 R11 K33 ["tableRowIndex"]
      472 JUMPIFNOTEQ                      R12 R13 ; [+88]
      474 GETTABLEKS                       R12 R10 K34 ["tableCellIndex"]
      476 GETTABLEKS                       R13 R11 K34 ["tableCellIndex"]
      478 JUMPIFNOTEQ                      R12 R13 ; [+82]
      480 GETUPVAL                         R12 1
      481 GETUPVAL                         R13 2
      482 GETTABLEKS                       R14 R10 K8 ["children"]
      484 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
      486 GETTABLEKS                       R16 R11 K22 ["flatOffset"]
      488 CALL                             R13 3 1
      489 CALL                             R12 1 1
      490 GETUPVAL                         R13 8
      491 GETTABLEKS                       R14 R10 K35 ["tableCell"]
      493 GETTABLEKS                       R15 R10 K33 ["tableRowIndex"]
      495 GETTABLEKS                       R16 R10 K34 ["tableCellIndex"]
      497 MOVE                             R17 R12
      498 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      500 MOVE                             R19 R1
      501 MOVE                             R20 R2
      502 CALL                             R13 7 0
      503 GETTABLEKS                       R14 R5 K2 ["blockIndex"]
      505 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
      507 LOADN                            R16 0
      508 LOADN                            R17 0
      509 NEWCLOSURE                       R18 P1
      510 CAPTURE                          REF R16
      511 CAPTURE                          VAL R15
      512 CAPTURE                          REF R17
      513 CAPTURE                          UPVAL U0
      514 CAPTURE                          VAL R14
      515 CAPTURE                          VAL R18
      516 MOVE                             R19 R18
      517 MOVE                             R20 R12
      518 CALL                             R19 1 1
      519 JUMPIFNOT                        R19 ; [+3]
      520 MOVE                             R13 R19
      521 CLOSEUPVALS                      R16
      522 JUMP                             ; [+15]
      523 GETUPVAL                         R20 0
      524 GETTABLEKS                       R20 R20 K10 ["createCollapsed"]
      526 MOVE                             R21 R14
      527 LOADN                            R23 1
      528 FASTCALL2                        MATH_MAX R23 R16 ; [+4]
      530 MOVE                             R24 R16
      531 GETIMPORT                        R22 K13 [math.max]
      533 CALL                             R22 2 1
      534 SUB                              R23 R15 R17
      535 CALL                             R20 3 1
      536 MOVE                             R13 R20
      537 CLOSEUPVALS                      R16
      538 GETUPVAL                         R14 0
      539 GETTABLEKS                       R14 R14 K27 ["createPosition"]
      541 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
      543 GETTABLEKS                       R16 R13 K14 ["anchor"]
      545 GETTABLEKS                       R16 R16 K28 ["segmentIndex"]
      547 GETTABLEKS                       R17 R13 K14 ["anchor"]
      549 GETTABLEKS                       R17 R17 K29 ["charOffset"]
      551 NEWTABLE                         R18 0 2
      553 GETTABLEKS                       R19 R10 K33 ["tableRowIndex"]
      555 GETTABLEKS                       R20 R10 K34 ["tableCellIndex"]
      557 SETLIST                          R18 R19 2 [1]
      559 CALL                             R14 4 -1
      560 RETURN                           R14 -1
      561 GETUPVAL                         R12 1
      562 GETUPVAL                         R13 6
      563 GETTABLEKS                       R14 R10 K8 ["children"]
      565 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
      567 CALL                             R13 2 -1
      568 CALL                             R12 -1 1
      569 GETUPVAL                         R13 8
      570 GETTABLEKS                       R14 R10 K35 ["tableCell"]
      572 GETTABLEKS                       R15 R10 K33 ["tableRowIndex"]
      574 GETTABLEKS                       R16 R10 K34 ["tableCellIndex"]
      576 MOVE                             R17 R12
      577 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      579 MOVE                             R19 R1
      580 MOVE                             R20 R2
      581 CALL                             R13 7 0
      582 GETUPVAL                         R13 6
      583 GETTABLEKS                       R14 R11 K8 ["children"]
      585 GETTABLEKS                       R15 R11 K22 ["flatOffset"]
      587 CALL                             R13 2 2
      588 GETUPVAL                         R15 8
      589 GETTABLEKS                       R16 R11 K35 ["tableCell"]
      591 GETTABLEKS                       R17 R11 K33 ["tableRowIndex"]
      593 GETTABLEKS                       R18 R11 K34 ["tableCellIndex"]
      595 GETUPVAL                         R19 1
      596 MOVE                             R20 R14
      597 CALL                             R19 1 1
      598 GETTABLEKS                       R20 R5 K2 ["blockIndex"]
      600 MOVE                             R21 R1
      601 MOVE                             R22 R2
      602 CALL                             R15 7 0
      603 GETTABLEKS                       R15 R8 K8 ["children"]
      605 JUMPIF                           R15 ; [+2]
      606 NEWTABLE                         R15 0 0
      608 GETTABLEKS                       R18 R10 K33 ["tableRowIndex"]
      610 GETTABLEKS                       R16 R11 K33 ["tableRowIndex"]
      612 LOADN                            R17 1
      613 FORNPREP                         R16
      614 GETTABLE                         R19 R15 R18
      615 JUMPIFNOT                        R19 ; [+54]
      616 GETTABLEKS                       R20 R19 K8 ["children"]
      618 JUMPIF                           R20 ; [+2]
      619 NEWTABLE                         R20 0 0
      621 GETTABLEKS                       R22 R10 K33 ["tableRowIndex"]
      623 JUMPIFNOTEQ                      R18 R22 ; [+5]
      625 GETTABLEKS                       R22 R10 K34 ["tableCellIndex"]
      627 ADDK                             R21 R22 K19 [1]
      628 JUMP                             ; [+1]
      629 LOADN                            R21 1
      630 GETTABLEKS                       R23 R11 K33 ["tableRowIndex"]
      632 JUMPIFNOTEQ                      R18 R23 ; [+5]
      634 GETTABLEKS                       R23 R11 K34 ["tableCellIndex"]
      636 SUBK                             R22 R23 K19 [1]
      637 JUMP                             ; [+1]
      638 LENGTH                           R22 R20
      639 MOVE                             R25 R21
      640 MOVE                             R23 R22
      641 LOADN                            R24 1
      642 FORNPREP                         R23
      643 GETTABLE                         R26 R20 R25
      644 JUMPIFNOT                        R26 ; [+24]
      645 GETUPVAL                         R27 8
      646 MOVE                             R28 R26
      647 MOVE                             R29 R18
      648 MOVE                             R30 R25
      649 NEWTABLE                         R31 0 1
      651 DUPTABLE                         R32 K36 [{"name", "children", "text"}]
      652 LOADK                            R33 K37 ["TEXT"]
      653 SETTABLEKS                       R33 R32 K3 ["name"]
      655 NEWTABLE                         R33 0 0
      657 SETTABLEKS                       R33 R32 K8 ["children"]
      659 LOADK                            R33 K16 [""]
      660 SETTABLEKS                       R33 R32 K17 ["text"]
      662 SETLIST                          R31 R32 1 [1]
      664 GETTABLEKS                       R32 R5 K2 ["blockIndex"]
      666 MOVE                             R33 R1
      667 MOVE                             R34 R2
      668 CALL                             R27 7 0
      669 FORNLOOP                         R23
      670 FORNLOOP                         R16
      671 GETTABLEKS                       R17 R5 K2 ["blockIndex"]
      673 GETTABLEKS                       R18 R10 K22 ["flatOffset"]
      675 LOADN                            R19 0
      676 LOADN                            R20 0
      677 NEWCLOSURE                       R21 P1
      678 CAPTURE                          REF R19
      679 CAPTURE                          VAL R18
      680 CAPTURE                          REF R20
      681 CAPTURE                          UPVAL U0
      682 CAPTURE                          VAL R17
      683 CAPTURE                          VAL R21
      684 MOVE                             R22 R21
      685 MOVE                             R23 R12
      686 CALL                             R22 1 1
      687 JUMPIFNOT                        R22 ; [+3]
      688 MOVE                             R16 R22
      689 CLOSEUPVALS                      R19
      690 JUMP                             ; [+15]
      691 GETUPVAL                         R23 0
      692 GETTABLEKS                       R23 R23 K10 ["createCollapsed"]
      694 MOVE                             R24 R17
      695 LOADN                            R26 1
      696 FASTCALL2                        MATH_MAX R26 R19 ; [+4]
      698 MOVE                             R27 R19
      699 GETIMPORT                        R25 K13 [math.max]
      701 CALL                             R25 2 1
      702 SUB                              R26 R18 R20
      703 CALL                             R23 3 1
      704 MOVE                             R16 R23
      705 CLOSEUPVALS                      R19
      706 GETUPVAL                         R17 0
      707 GETTABLEKS                       R17 R17 K27 ["createPosition"]
      709 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      711 GETTABLEKS                       R19 R16 K14 ["anchor"]
      713 GETTABLEKS                       R19 R19 K28 ["segmentIndex"]
      715 GETTABLEKS                       R20 R16 K14 ["anchor"]
      717 GETTABLEKS                       R20 R20 K29 ["charOffset"]
      719 NEWTABLE                         R21 0 2
      721 GETTABLEKS                       R22 R10 K33 ["tableRowIndex"]
      723 GETTABLEKS                       R23 R10 K34 ["tableCellIndex"]
      725 SETLIST                          R21 R22 2 [1]
      727 CALL                             R17 4 -1
      728 RETURN                           R17 -1
      729 JUMPIFNOT                        R8 ; [+5]
      730 GETUPVAL                         R10 5
      731 MOVE                             R11 R8
      732 MOVE                             R12 R5
      733 CALL                             R10 2 1
      734 JUMP                             ; [+1]
      735 LOADNIL                          R10
      736 JUMPIFNOT                        R9 ; [+5]
      737 GETUPVAL                         R11 5
      738 MOVE                             R12 R9
      739 MOVE                             R13 R6
      740 CALL                             R11 2 1
      741 JUMP                             ; [+1]
      742 LOADNIL                          R11
      743 JUMPIFNOT                        R10 ; [+259]
      744 JUMPIFNOT                        R11 ; [+258]
      745 GETUPVAL                         R12 6
      746 GETTABLEKS                       R13 R10 K8 ["children"]
      748 GETTABLEKS                       R14 R10 K22 ["flatOffset"]
      750 CALL                             R12 2 1
      751 GETUPVAL                         R13 6
      752 GETTABLEKS                       R14 R11 K8 ["children"]
      754 GETTABLEKS                       R15 R11 K22 ["flatOffset"]
      756 CALL                             R13 2 2
      757 GETUPVAL                         R15 1
      758 GETUPVAL                         R16 7
      759 MOVE                             R17 R12
      760 MOVE                             R18 R14
      761 CALL                             R16 2 1
      762 CALL                             R15 1 1
      763 NEWTABLE                         R16 0 0
      765 GETTABLEKS                       R17 R11 K38 ["isList"]
      767 JUMPIFNOT                        R17 ; [+19]
      768 GETTABLEKS                       R17 R9 K8 ["children"]
      770 JUMPIF                           R17 ; [+2]
      771 NEWTABLE                         R17 0 0
      773 GETTABLEKS                       R21 R11 K21 ["listItemIndex"]
      775 ADDK                             R20 R21 K19 [1]
      776 LENGTH                           R18 R17
      777 LOADN                            R19 1
      778 FORNPREP                         R18
      779 GETTABLE                         R23 R17 R20
      780 FASTCALL2                        TABLE_INSERT R16 R23 ; [+4]
      782 MOVE                             R22 R16
      783 GETIMPORT                        R21 K41 [table.insert]
      785 CALL                             R21 2 0
      786 FORNLOOP                         R18
      787 GETTABLEKS                       R17 R10 K38 ["isList"]
      789 JUMPIFNOT                        R17 ; [+54]
      790 GETTABLEKS                       R17 R10 K23 ["listItem"]
      792 GETTABLEKS                       R18 R10 K21 ["listItemIndex"]
      794 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
      796 MOVE                             R20 R2
      797 GETTABLE                         R22 R1 R19
      798 GETTABLEKS                       R22 R22 K8 ["children"]
      800 GETTABLE                         R21 R22 R18
      801 CALL                             R20 1 1
      802 DUPTABLE                         R22 K26 [{"name", "children", "attributes", "index"}]
      803 GETTABLEKS                       R23 R17 K3 ["name"]
      805 SETTABLEKS                       R23 R22 K3 ["name"]
      807 SETTABLEKS                       R15 R22 K8 ["children"]
      809 GETTABLEKS                       R23 R17 K24 ["attributes"]
      811 SETTABLEKS                       R23 R22 K24 ["attributes"]
      813 GETTABLEKS                       R23 R17 K25 ["index"]
      815 SETTABLEKS                       R23 R22 K25 ["index"]
      817 NAMECALL                         R20 R20 K9 ["set"]
      819 CALL                             R20 2 0
      820 GETTABLEKS                       R17 R8 K8 ["children"]
      822 JUMPIF                           R17 ; [+2]
      823 NEWTABLE                         R17 0 0
      825 LENGTH                           R20 R17
      826 GETTABLEKS                       R21 R10 K21 ["listItemIndex"]
      828 ADDK                             R18 R21 K19 [1]
      829 LOADN                            R19 255
      830 FORNPREP                         R18
      831 MOVE                             R21 R2
      832 GETTABLEKS                       R23 R5 K2 ["blockIndex"]
      834 GETTABLE                         R22 R1 R23
      835 GETTABLEKS                       R22 R22 K8 ["children"]
      837 CALL                             R21 1 1
      838 MOVE                             R23 R20
      839 NAMECALL                         R21 R21 K30 ["remove"]
      841 CALL                             R21 2 0
      842 FORNLOOP                         R18
      843 JUMP                             ; [+28]
      844 GETTABLEKS                       R17 R10 K32 ["isTable"]
      846 JUMPIFNOT                        R17 ; [+14]
      847 GETUPVAL                         R17 8
      848 GETTABLEKS                       R18 R10 K35 ["tableCell"]
      850 GETTABLEKS                       R19 R10 K33 ["tableRowIndex"]
      852 GETTABLEKS                       R20 R10 K34 ["tableCellIndex"]
      854 MOVE                             R21 R15
      855 GETTABLEKS                       R22 R5 K2 ["blockIndex"]
      857 MOVE                             R23 R1
      858 MOVE                             R24 R2
      859 CALL                             R17 7 0
      860 JUMP                             ; [+11]
      861 MOVE                             R17 R2
      862 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
      864 GETTABLE                         R18 R1 R19
      865 GETTABLEKS                       R18 R18 K8 ["children"]
      867 CALL                             R17 1 1
      868 MOVE                             R19 R15
      869 NAMECALL                         R17 R17 K9 ["set"]
      871 CALL                             R17 2 0
      872 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      874 GETTABLEKS                       R20 R5 K2 ["blockIndex"]
      876 ADDK                             R17 R20 K19 [1]
      877 LOADN                            R18 255
      878 FORNPREP                         R17
      879 MOVE                             R20 R2
      880 MOVE                             R21 R1
      881 CALL                             R20 1 1
      882 MOVE                             R22 R19
      883 NAMECALL                         R20 R20 K30 ["remove"]
      885 CALL                             R20 2 0
      886 FORNLOOP                         R17
      887 LENGTH                           R17 R16
      888 LOADN                            R18 0
      889 JUMPIFNOTLT                      R18 R17 ; [+25]
      891 DUPTABLE                         R17 K26 [{"name", "children", "attributes", "index"}]
      892 LOADK                            R18 K20 ["LIST"]
      893 SETTABLEKS                       R18 R17 K3 ["name"]
      895 SETTABLEKS                       R16 R17 K8 ["children"]
      897 GETTABLEKS                       R18 R9 K24 ["attributes"]
      899 SETTABLEKS                       R18 R17 K24 ["attributes"]
      901 MOVE                             R18 R4
      902 CALL                             R18 0 1
      903 SETTABLEKS                       R18 R17 K25 ["index"]
      905 MOVE                             R18 R2
      906 MOVE                             R19 R1
      907 CALL                             R18 1 1
      908 MOVE                             R20 R17
      909 GETTABLEKS                       R22 R5 K2 ["blockIndex"]
      911 ADDK                             R21 R22 K19 [1]
      912 NAMECALL                         R18 R18 K40 ["insert"]
      914 CALL                             R18 3 0
      915 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      917 GETTABLEKS                       R19 R10 K22 ["flatOffset"]
      919 LOADN                            R20 0
      920 LOADN                            R21 0
      921 NEWCLOSURE                       R22 P1
      922 CAPTURE                          REF R20
      923 CAPTURE                          VAL R19
      924 CAPTURE                          REF R21
      925 CAPTURE                          UPVAL U0
      926 CAPTURE                          VAL R18
      927 CAPTURE                          VAL R22
      928 MOVE                             R23 R22
      929 MOVE                             R24 R15
      930 CALL                             R23 1 1
      931 JUMPIFNOT                        R23 ; [+3]
      932 MOVE                             R17 R23
      933 CLOSEUPVALS                      R20
      934 JUMP                             ; [+15]
      935 GETUPVAL                         R24 0
      936 GETTABLEKS                       R24 R24 K10 ["createCollapsed"]
      938 MOVE                             R25 R18
      939 LOADN                            R27 1
      940 FASTCALL2                        MATH_MAX R27 R20 ; [+4]
      942 MOVE                             R28 R20
      943 GETIMPORT                        R26 K13 [math.max]
      945 CALL                             R26 2 1
      946 SUB                              R27 R19 R21
      947 CALL                             R24 3 1
      948 MOVE                             R17 R24
      949 CLOSEUPVALS                      R20
      950 GETTABLEKS                       R18 R10 K38 ["isList"]
      952 JUMPIFNOT                        R18 ; [+21]
      953 GETUPVAL                         R18 0
      954 GETTABLEKS                       R18 R18 K27 ["createPosition"]
      956 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
      958 GETTABLEKS                       R20 R17 K14 ["anchor"]
      960 GETTABLEKS                       R20 R20 K28 ["segmentIndex"]
      962 GETTABLEKS                       R21 R17 K14 ["anchor"]
      964 GETTABLEKS                       R21 R21 K29 ["charOffset"]
      966 NEWTABLE                         R22 0 1
      968 GETTABLEKS                       R23 R10 K21 ["listItemIndex"]
      970 SETLIST                          R22 R23 1 [1]
      972 CALL                             R18 4 -1
      973 RETURN                           R18 -1
      974 GETTABLEKS                       R18 R10 K32 ["isTable"]
      976 JUMPIFNOT                        R18 ; [+23]
      977 GETUPVAL                         R18 0
      978 GETTABLEKS                       R18 R18 K27 ["createPosition"]
      980 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
      982 GETTABLEKS                       R20 R17 K14 ["anchor"]
      984 GETTABLEKS                       R20 R20 K28 ["segmentIndex"]
      986 GETTABLEKS                       R21 R17 K14 ["anchor"]
      988 GETTABLEKS                       R21 R21 K29 ["charOffset"]
      990 NEWTABLE                         R22 0 2
      992 GETTABLEKS                       R23 R10 K33 ["tableRowIndex"]
      994 GETTABLEKS                       R24 R10 K34 ["tableCellIndex"]
      996 SETLIST                          R22 R23 2 [1]
      998 CALL                             R18 4 -1
      999 RETURN                           R18 -1
     1000 GETTABLEKS                       R18 R17 K14 ["anchor"]
     1002 RETURN                           R18 1
     1003 JUMPIFNOT                        R10 ; [+93]
     1004 GETUPVAL                         R12 1
     1005 GETUPVAL                         R13 6
     1006 GETTABLEKS                       R14 R10 K8 ["children"]
     1008 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
     1010 CALL                             R13 2 -1
     1011 CALL                             R12 -1 1
     1012 GETTABLEKS                       R13 R10 K38 ["isList"]
     1014 JUMPIFNOT                        R13 ; [+54]
     1015 GETTABLEKS                       R13 R10 K23 ["listItem"]
     1017 GETTABLEKS                       R14 R10 K21 ["listItemIndex"]
     1019 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1021 MOVE                             R16 R2
     1022 GETTABLE                         R18 R1 R15
     1023 GETTABLEKS                       R18 R18 K8 ["children"]
     1025 GETTABLE                         R17 R18 R14
     1026 CALL                             R16 1 1
     1027 DUPTABLE                         R18 K26 [{"name", "children", "attributes", "index"}]
     1028 GETTABLEKS                       R19 R13 K3 ["name"]
     1030 SETTABLEKS                       R19 R18 K3 ["name"]
     1032 SETTABLEKS                       R12 R18 K8 ["children"]
     1034 GETTABLEKS                       R19 R13 K24 ["attributes"]
     1036 SETTABLEKS                       R19 R18 K24 ["attributes"]
     1038 GETTABLEKS                       R19 R13 K25 ["index"]
     1040 SETTABLEKS                       R19 R18 K25 ["index"]
     1042 NAMECALL                         R16 R16 K9 ["set"]
     1044 CALL                             R16 2 0
     1045 GETTABLEKS                       R13 R8 K8 ["children"]
     1047 JUMPIF                           R13 ; [+2]
     1048 NEWTABLE                         R13 0 0
     1050 LENGTH                           R16 R13
     1051 GETTABLEKS                       R17 R10 K21 ["listItemIndex"]
     1053 ADDK                             R14 R17 K19 [1]
     1054 LOADN                            R15 255
     1055 FORNPREP                         R14
     1056 MOVE                             R17 R2
     1057 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
     1059 GETTABLE                         R18 R1 R19
     1060 GETTABLEKS                       R18 R18 K8 ["children"]
     1062 CALL                             R17 1 1
     1063 MOVE                             R19 R16
     1064 NAMECALL                         R17 R17 K30 ["remove"]
     1066 CALL                             R17 2 0
     1067 FORNLOOP                         R14
     1068 JUMP                             ; [+28]
     1069 GETTABLEKS                       R13 R10 K32 ["isTable"]
     1071 JUMPIFNOT                        R13 ; [+14]
     1072 GETUPVAL                         R13 8
     1073 GETTABLEKS                       R14 R10 K35 ["tableCell"]
     1075 GETTABLEKS                       R15 R10 K33 ["tableRowIndex"]
     1077 GETTABLEKS                       R16 R10 K34 ["tableCellIndex"]
     1079 MOVE                             R17 R12
     1080 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
     1082 MOVE                             R19 R1
     1083 MOVE                             R20 R2
     1084 CALL                             R13 7 0
     1085 JUMP                             ; [+11]
     1086 MOVE                             R13 R2
     1087 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1089 GETTABLE                         R14 R1 R15
     1090 GETTABLEKS                       R14 R14 K8 ["children"]
     1092 CALL                             R13 1 1
     1093 MOVE                             R15 R12
     1094 NAMECALL                         R13 R13 K9 ["set"]
     1096 CALL                             R13 2 0
     1097 JUMPIFNOT                        R11 ; [+100]
     1098 GETUPVAL                         R12 6
     1099 GETTABLEKS                       R13 R11 K8 ["children"]
     1101 GETTABLEKS                       R14 R11 K22 ["flatOffset"]
     1103 CALL                             R12 2 2
     1104 GETUPVAL                         R14 1
     1105 MOVE                             R15 R13
     1106 CALL                             R14 1 1
     1107 MOVE                             R13 R14
     1108 GETTABLEKS                       R14 R11 K38 ["isList"]
     1110 JUMPIFNOT                        R14 ; [+59]
     1111 GETTABLEKS                       R17 R11 K21 ["listItemIndex"]
     1113 SUBK                             R16 R17 K19 [1]
     1114 LOADN                            R14 1
     1115 LOADN                            R15 255
     1116 FORNPREP                         R14
     1117 MOVE                             R17 R2
     1118 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
     1120 GETTABLE                         R18 R1 R19
     1121 GETTABLEKS                       R18 R18 K8 ["children"]
     1123 CALL                             R17 1 1
     1124 MOVE                             R19 R16
     1125 NAMECALL                         R17 R17 K30 ["remove"]
     1127 CALL                             R17 2 0
     1128 FORNLOOP                         R14
     1129 MOVE                             R16 R3
     1130 MOVE                             R17 R1
     1131 CALL                             R16 1 1
     1132 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
     1134 GETTABLE                         R15 R16 R17
     1135 GETTABLEKS                       R15 R15 K8 ["children"]
     1137 JUMPIF                           R15 ; [+2]
     1138 NEWTABLE                         R15 0 0
     1140 GETTABLEN                        R14 R15 1
     1141 JUMPIFNOT                        R14 ; [+56]
     1142 MOVE                             R15 R13
     1143 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
     1145 MOVE                             R17 R2
     1146 GETTABLE                         R19 R1 R16
     1147 GETTABLEKS                       R19 R19 K8 ["children"]
     1149 GETTABLEN                        R18 R19 1
     1150 CALL                             R17 1 1
     1151 DUPTABLE                         R19 K26 [{"name", "children", "attributes", "index"}]
     1152 GETTABLEKS                       R20 R14 K3 ["name"]
     1154 SETTABLEKS                       R20 R19 K3 ["name"]
     1156 SETTABLEKS                       R15 R19 K8 ["children"]
     1158 GETTABLEKS                       R20 R14 K24 ["attributes"]
     1160 SETTABLEKS                       R20 R19 K24 ["attributes"]
     1162 GETTABLEKS                       R20 R14 K25 ["index"]
     1164 SETTABLEKS                       R20 R19 K25 ["index"]
     1166 NAMECALL                         R17 R17 K9 ["set"]
     1168 CALL                             R17 2 0
     1169 JUMP                             ; [+28]
     1170 GETTABLEKS                       R14 R11 K32 ["isTable"]
     1172 JUMPIFNOT                        R14 ; [+14]
     1173 GETUPVAL                         R14 8
     1174 GETTABLEKS                       R15 R11 K35 ["tableCell"]
     1176 GETTABLEKS                       R16 R11 K33 ["tableRowIndex"]
     1178 GETTABLEKS                       R17 R11 K34 ["tableCellIndex"]
     1180 MOVE                             R18 R13
     1181 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
     1183 MOVE                             R20 R1
     1184 MOVE                             R21 R2
     1185 CALL                             R14 7 0
     1186 JUMP                             ; [+11]
     1187 MOVE                             R14 R2
     1188 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
     1190 GETTABLE                         R15 R1 R16
     1191 GETTABLEKS                       R15 R15 K8 ["children"]
     1193 CALL                             R14 1 1
     1194 MOVE                             R16 R13
     1195 NAMECALL                         R14 R14 K9 ["set"]
     1197 CALL                             R14 2 0
     1198 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
     1200 SUBK                             R14 R15 K19 [1]
     1201 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1203 ADDK                             R12 R15 K19 [1]
     1204 LOADN                            R13 255
     1205 FORNPREP                         R12
     1206 MOVE                             R15 R2
     1207 MOVE                             R16 R1
     1208 CALL                             R15 1 1
     1209 MOVE                             R17 R14
     1210 NAMECALL                         R15 R15 K30 ["remove"]
     1212 CALL                             R15 2 0
     1213 FORNLOOP                         R12
     1214 JUMPIFNOT                        R10 ; [+96]
     1215 GETUPVAL                         R12 1
     1216 GETUPVAL                         R13 6
     1217 GETTABLEKS                       R14 R10 K8 ["children"]
     1219 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
     1221 CALL                             R13 2 -1
     1222 CALL                             R12 -1 1
     1223 GETTABLEKS                       R14 R5 K2 ["blockIndex"]
     1225 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
     1227 LOADN                            R16 0
     1228 LOADN                            R17 0
     1229 NEWCLOSURE                       R18 P1
     1230 CAPTURE                          REF R16
     1231 CAPTURE                          VAL R15
     1232 CAPTURE                          REF R17
     1233 CAPTURE                          UPVAL U0
     1234 CAPTURE                          VAL R14
     1235 CAPTURE                          VAL R18
     1236 MOVE                             R19 R18
     1237 MOVE                             R20 R12
     1238 CALL                             R19 1 1
     1239 JUMPIFNOT                        R19 ; [+3]
     1240 MOVE                             R13 R19
     1241 CLOSEUPVALS                      R16
     1242 JUMP                             ; [+15]
     1243 GETUPVAL                         R20 0
     1244 GETTABLEKS                       R20 R20 K10 ["createCollapsed"]
     1246 MOVE                             R21 R14
     1247 LOADN                            R23 1
     1248 FASTCALL2                        MATH_MAX R23 R16 ; [+4]
     1250 MOVE                             R24 R16
     1251 GETIMPORT                        R22 K13 [math.max]
     1253 CALL                             R22 2 1
     1254 SUB                              R23 R15 R17
     1255 CALL                             R20 3 1
     1256 MOVE                             R13 R20
     1257 CLOSEUPVALS                      R16
     1258 GETTABLEKS                       R14 R10 K38 ["isList"]
     1260 JUMPIFNOT                        R14 ; [+21]
     1261 GETUPVAL                         R14 0
     1262 GETTABLEKS                       R14 R14 K27 ["createPosition"]
     1264 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1266 GETTABLEKS                       R16 R13 K14 ["anchor"]
     1268 GETTABLEKS                       R16 R16 K28 ["segmentIndex"]
     1270 GETTABLEKS                       R17 R13 K14 ["anchor"]
     1272 GETTABLEKS                       R17 R17 K29 ["charOffset"]
     1274 NEWTABLE                         R18 0 1
     1276 GETTABLEKS                       R19 R10 K21 ["listItemIndex"]
     1278 SETLIST                          R18 R19 1 [1]
     1280 CALL                             R14 4 -1
     1281 RETURN                           R14 -1
     1282 GETTABLEKS                       R14 R10 K32 ["isTable"]
     1284 JUMPIFNOT                        R14 ; [+23]
     1285 GETUPVAL                         R14 0
     1286 GETTABLEKS                       R14 R14 K27 ["createPosition"]
     1288 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1290 GETTABLEKS                       R16 R13 K14 ["anchor"]
     1292 GETTABLEKS                       R16 R16 K28 ["segmentIndex"]
     1294 GETTABLEKS                       R17 R13 K14 ["anchor"]
     1296 GETTABLEKS                       R17 R17 K29 ["charOffset"]
     1298 NEWTABLE                         R18 0 2
     1300 GETTABLEKS                       R19 R10 K33 ["tableRowIndex"]
     1302 GETTABLEKS                       R20 R10 K34 ["tableCellIndex"]
     1304 SETLIST                          R18 R19 2 [1]
     1306 CALL                             R14 4 -1
     1307 RETURN                           R14 -1
     1308 GETTABLEKS                       R14 R13 K14 ["anchor"]
     1310 RETURN                           R14 1
     1311 GETUPVAL                         R12 0
     1312 GETTABLEKS                       R12 R12 K27 ["createPosition"]
     1314 GETTABLEKS                       R13 R5 K2 ["blockIndex"]
     1316 LOADN                            R14 1
     1317 LOADN                            R15 0
     1318 CALL                             R12 3 -1
     1319 RETURN                           R12 -1

PROTO_30:
        0 GETUPVAL                         R7 0
        1 MOVE                             R8 R1
        2 MOVE                             R9 R2
        3 MOVE                             R10 R3
        4 MOVE                             R11 R6
        5 MOVE                             R12 R5
        6 CALL                             R7 5 1
        7 MOVE                             R8 R6
        8 MOVE                             R9 R2
        9 CALL                             R8 1 1
       10 GETTABLEKS                       R10 R7 K0 ["blockIndex"]
       12 GETTABLE                         R9 R8 R10
       13 JUMPIF                           R9 ; [+1]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R12 R9 K1 ["name"]
       17 JUMPIFEQKS                       R12 K2 ["LIST"] ; [+4]
       19 LOADNIL                          R10
       20 LOADNIL                          R11
       21 JUMP                             ; [+19]
       22 GETTABLEKS                       R13 R7 K3 ["path"]
       24 JUMPIFNOT                        R13 ; [+4]
       25 GETTABLEKS                       R13 R7 K3 ["path"]
       27 GETTABLEN                        R12 R13 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R12
       30 JUMPIF                           R12 ; [+3]
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 JUMP                             ; [+7]
       34 GETTABLEKS                       R13 R9 K4 ["children"]
       36 JUMPIF                           R13 ; [+2]
       37 NEWTABLE                         R13 0 0
       39 GETTABLE                         R10 R13 R12
       40 MOVE                             R11 R12
       41 GETTABLEKS                       R12 R9 K1 ["name"]
       43 JUMPIFNOTEQKS                    R12 K2 ["LIST"] ; [+300]
       45 JUMPIF                           R10 ; [+1]
       46 RETURN                           R0 0
       47 GETTABLEKS                       R12 R10 K4 ["children"]
       49 JUMPIF                           R12 ; [+2]
       50 NEWTABLE                         R12 0 0
       52 LOADN                            R14 0
       53 LOADN                            R15 0
       54 NEWCLOSURE                       R16 P0
       55 CAPTURE                          REF R15
       56 CAPTURE                          VAL R7
       57 CAPTURE                          REF R14
       58 CAPTURE                          VAL R16
       59 MOVE                             R17 R16
       60 MOVE                             R18 R12
       61 CALL                             R17 1 1
       62 OR                               R13 R17 R14
       63 CLOSEUPVALS                      R14
       64 GETUPVAL                         R14 1
       65 MOVE                             R15 R12
       66 CALL                             R14 1 1
       67 LOADN                            R17 1
       68 MOVE                             R18 R13
       69 NAMECALL                         R15 R14 K5 ["sub"]
       71 CALL                             R15 3 1
       72 JUMPIFNOTEQKS                    R0 K6 ["`"] ; [+3]
       74 LOADK                            R16 K7 ["INLINE_CODE"]
       75 JUMP                             ; [+9]
       76 JUMPIFNOTEQKS                    R0 K8 ["*"] ; [+3]
       78 LOADK                            R16 K9 ["BOLD"]
       79 JUMP                             ; [+5]
       80 JUMPIFNOTEQKS                    R0 K10 ["_"] ; [+3]
       82 LOADK                            R16 K11 ["ITALIC"]
       83 JUMP                             ; [+1]
       84 LOADNIL                          R16
       85 JUMPIFNOT                        R16 ; [+170]
       86 LOADNIL                          R17
       87 LENGTH                           R20 R15
       88 LOADN                            R18 1
       89 LOADN                            R19 255
       90 FORNPREP                         R18
       91 MOVE                             R23 R20
       92 MOVE                             R24 R20
       93 NAMECALL                         R21 R15 K5 ["sub"]
       95 CALL                             R21 3 1
       96 JUMPIFNOTEQ                      R21 R0 ; [+3]
       98 SUBK                             R17 R20 K12 [1]
       99 JUMP                             ; [+1]
      100 FORNLOOP                         R18
      101 JUMPIFEQKNIL                     R17 ; [+154]
      103 ADDK                             R20 R17 K13 [2]
      104 NAMECALL                         R18 R15 K5 ["sub"]
      106 CALL                             R18 2 1
      107 LENGTH                           R19 R18
      108 LOADN                            R20 0
      109 JUMPIFNOTLT                      R20 R19 ; [+146]
      111 GETUPVAL                         R19 2
      112 MOVE                             R20 R12
      113 MOVE                             R21 R17
      114 MOVE                             R22 R13
      115 CALL                             R19 3 1
      116 GETUPVAL                         R20 3
      117 MOVE                             R21 R19
      118 MOVE                             R22 R17
      119 CALL                             R20 2 2
      120 DUPTABLE                         R22 K15 [{"name", "children", "attributes"}]
      121 LOADK                            R23 K16 ["STYLED_TEXT"]
      122 SETTABLEKS                       R23 R22 K1 ["name"]
      124 NEWTABLE                         R23 0 1
      126 DUPTABLE                         R24 K18 [{"name", "children", "text"}]
      127 LOADK                            R25 K19 ["TEXT"]
      128 SETTABLEKS                       R25 R24 K1 ["name"]
      130 NEWTABLE                         R25 0 0
      132 SETTABLEKS                       R25 R24 K4 ["children"]
      134 SETTABLEKS                       R18 R24 K17 ["text"]
      136 SETLIST                          R23 R24 1 [1]
      138 SETTABLEKS                       R23 R22 K4 ["children"]
      140 DUPTABLE                         R23 K21 [{"style"}]
      141 SETTABLEKS                       R16 R23 K20 ["style"]
      143 SETTABLEKS                       R23 R22 K14 ["attributes"]
      145 NEWTABLE                         R23 0 0
      147 MOVE                             R24 R20
      148 LOADNIL                          R25
      149 LOADNIL                          R26
      150 FORGPREP                         R24
      151 FASTCALL2                        TABLE_INSERT R23 R28 ; [+5]
      153 MOVE                             R30 R23
      154 MOVE                             R31 R28
      155 GETIMPORT                        R29 K24 [table.insert]
      157 CALL                             R29 2 0
      158 FORGLOOP                         R24 2 ; [-8]
      160 FASTCALL2                        TABLE_INSERT R23 R22 ; [+5]
      162 MOVE                             R25 R23
      163 MOVE                             R26 R22
      164 GETIMPORT                        R24 K24 [table.insert]
      166 CALL                             R24 2 0
      167 MOVE                             R24 R21
      168 LOADNIL                          R25
      169 LOADNIL                          R26
      170 FORGPREP                         R24
      171 FASTCALL2                        TABLE_INSERT R23 R28 ; [+5]
      173 MOVE                             R30 R23
      174 MOVE                             R31 R28
      175 GETIMPORT                        R29 K24 [table.insert]
      177 CALL                             R29 2 0
      178 FORGLOOP                         R24 2 ; [-8]
      180 LENGTH                           R24 R21
      181 JUMPIFNOTEQKN                    R24 K25 [0] ; [+18]
      183 DUPTABLE                         R26 K18 [{"name", "children", "text"}]
      184 LOADK                            R27 K19 ["TEXT"]
      185 SETTABLEKS                       R27 R26 K1 ["name"]
      187 NEWTABLE                         R27 0 0
      189 SETTABLEKS                       R27 R26 K4 ["children"]
      191 LOADK                            R27 K26 [""]
      192 SETTABLEKS                       R27 R26 K17 ["text"]
      194 FASTCALL2                        TABLE_INSERT R23 R26 ; [+4]
      196 MOVE                             R25 R23
      197 GETIMPORT                        R24 K24 [table.insert]
      199 CALL                             R24 2 0
      200 GETUPVAL                         R24 4
      201 MOVE                             R25 R23
      202 CALL                             R24 1 1
      203 GETTABLEKS                       R25 R7 K0 ["blockIndex"]
      205 MOVE                             R26 R3
      206 GETTABLE                         R28 R2 R25
      207 GETTABLEKS                       R28 R28 K4 ["children"]
      209 GETTABLE                         R27 R28 R11
      210 CALL                             R26 1 1
      211 DUPTABLE                         R28 K28 [{"name", "children", "attributes", "index"}]
      212 GETTABLEKS                       R29 R10 K1 ["name"]
      214 SETTABLEKS                       R29 R28 K1 ["name"]
      216 SETTABLEKS                       R24 R28 K4 ["children"]
      218 GETTABLEKS                       R29 R10 K14 ["attributes"]
      220 SETTABLEKS                       R29 R28 K14 ["attributes"]
      222 GETTABLEKS                       R29 R10 K27 ["index"]
      224 SETTABLEKS                       R29 R28 K27 ["index"]
      226 NAMECALL                         R26 R26 K29 ["set"]
      228 CALL                             R26 2 0
      229 GETUPVAL                         R25 5
      230 MOVE                             R26 R20
      231 CALL                             R25 1 1
      232 GETUPVAL                         R26 5
      233 NEWTABLE                         R27 0 1
      235 MOVE                             R28 R22
      236 SETLIST                          R27 R28 1 [1]
      238 CALL                             R26 1 1
      239 ADD                              R24 R25 R26
      240 MOVE                             R25 R4
      241 GETUPVAL                         R26 6
      242 GETTABLEKS                       R26 R26 K30 ["createCollapsed"]
      244 GETTABLEKS                       R27 R7 K0 ["blockIndex"]
      246 ADDK                             R28 R24 K12 [1]
      247 LOADN                            R29 0
      248 NEWTABLE                         R30 0 1
      250 MOVE                             R31 R11
      251 SETLIST                          R30 R31 1 [1]
      253 CALL                             R26 4 -1
      254 CALL                             R25 -1 0
      255 RETURN                           R0 0
      256 GETUPVAL                         R17 7
      257 MOVE                             R18 R12
      258 MOVE                             R19 R13
      259 MOVE                             R20 R0
      260 CALL                             R17 3 1
      261 GETTABLEKS                       R18 R7 K0 ["blockIndex"]
      263 MOVE                             R19 R3
      264 GETTABLE                         R21 R2 R18
      265 GETTABLEKS                       R21 R21 K4 ["children"]
      267 GETTABLE                         R20 R21 R11
      268 CALL                             R19 1 1
      269 DUPTABLE                         R21 K28 [{"name", "children", "attributes", "index"}]
      270 GETTABLEKS                       R22 R10 K1 ["name"]
      272 SETTABLEKS                       R22 R21 K1 ["name"]
      274 SETTABLEKS                       R17 R21 K4 ["children"]
      276 GETTABLEKS                       R22 R10 K14 ["attributes"]
      278 SETTABLEKS                       R22 R21 K14 ["attributes"]
      280 GETTABLEKS                       R22 R10 K27 ["index"]
      282 SETTABLEKS                       R22 R21 K27 ["index"]
      284 NAMECALL                         R19 R19 K29 ["set"]
      286 CALL                             R19 2 0
      287 LENGTH                           R19 R0
      288 ADD                              R18 R13 R19
      289 GETTABLEKS                       R20 R7 K0 ["blockIndex"]
      291 LOADN                            R21 0
      292 LOADN                            R22 0
      293 NEWCLOSURE                       R23 P1
      294 CAPTURE                          REF R21
      295 CAPTURE                          VAL R18
      296 CAPTURE                          REF R22
      297 CAPTURE                          UPVAL U6
      298 CAPTURE                          VAL R20
      299 CAPTURE                          VAL R23
      300 MOVE                             R24 R23
      301 MOVE                             R25 R17
      302 CALL                             R24 1 1
      303 JUMPIFNOT                        R24 ; [+3]
      304 MOVE                             R19 R24
      305 CLOSEUPVALS                      R21
      306 JUMP                             ; [+15]
      307 GETUPVAL                         R25 6
      308 GETTABLEKS                       R25 R25 K30 ["createCollapsed"]
      310 MOVE                             R26 R20
      311 LOADN                            R28 1
      312 FASTCALL2                        MATH_MAX R28 R21 ; [+4]
      314 MOVE                             R29 R21
      315 GETIMPORT                        R27 K33 [math.max]
      317 CALL                             R27 2 1
      318 SUB                              R28 R18 R22
      319 CALL                             R25 3 1
      320 MOVE                             R19 R25
      321 CLOSEUPVALS                      R21
      322 MOVE                             R20 R4
      323 GETUPVAL                         R21 6
      324 GETTABLEKS                       R21 R21 K30 ["createCollapsed"]
      326 GETTABLEKS                       R22 R7 K0 ["blockIndex"]
      328 GETTABLEKS                       R23 R19 K34 ["anchor"]
      330 GETTABLEKS                       R23 R23 K35 ["segmentIndex"]
      332 GETTABLEKS                       R24 R19 K34 ["anchor"]
      334 GETTABLEKS                       R24 R24 K36 ["charOffset"]
      336 NEWTABLE                         R25 0 1
      338 MOVE                             R26 R11
      339 SETLIST                          R25 R26 1 [1]
      341 CALL                             R21 4 -1
      342 CALL                             R20 -1 0
      343 RETURN                           R0 0
      344 GETUPVAL                         R12 8
      345 MOVE                             R13 R9
      346 MOVE                             R14 R7
      347 CALL                             R12 2 3
      348 GETTABLEKS                       R16 R9 K1 ["name"]
      350 JUMPIFEQKS                       R16 K37 ["TABLE"] ; [+2]
      352 LOADB                            R15 0 +1
      353 LOADB                            R15 1
      354 JUMPIFNOT                        R15 ; [+264]
      355 JUMPIF                           R12 ; [+1]
      356 RETURN                           R0 0
      357 GETTABLEKS                       R15 R12 K4 ["children"]
      359 JUMPIF                           R15 ; [+2]
      360 NEWTABLE                         R15 0 0
      362 LOADN                            R17 0
      363 LOADN                            R18 0
      364 NEWCLOSURE                       R19 P0
      365 CAPTURE                          REF R18
      366 CAPTURE                          VAL R7
      367 CAPTURE                          REF R17
      368 CAPTURE                          VAL R19
      369 MOVE                             R20 R19
      370 MOVE                             R21 R15
      371 CALL                             R20 1 1
      372 OR                               R16 R20 R17
      373 CLOSEUPVALS                      R17
      374 NEWTABLE                         R17 0 2
      376 MOVE                             R18 R13
      377 MOVE                             R19 R14
      378 SETLIST                          R17 R18 2 [1]
      380 GETUPVAL                         R18 1
      381 MOVE                             R19 R15
      382 CALL                             R18 1 1
      383 LOADN                            R21 1
      384 MOVE                             R22 R16
      385 NAMECALL                         R19 R18 K5 ["sub"]
      387 CALL                             R19 3 1
      388 JUMPIFNOTEQKS                    R0 K6 ["`"] ; [+3]
      390 LOADK                            R20 K7 ["INLINE_CODE"]
      391 JUMP                             ; [+9]
      392 JUMPIFNOTEQKS                    R0 K8 ["*"] ; [+3]
      394 LOADK                            R20 K9 ["BOLD"]
      395 JUMP                             ; [+5]
      396 JUMPIFNOTEQKS                    R0 K10 ["_"] ; [+3]
      398 LOADK                            R20 K11 ["ITALIC"]
      399 JUMP                             ; [+1]
      400 LOADNIL                          R20
      401 JUMPIFNOT                        R20 ; [+149]
      402 LOADNIL                          R21
      403 LENGTH                           R24 R19
      404 LOADN                            R22 1
      405 LOADN                            R23 255
      406 FORNPREP                         R22
      407 MOVE                             R27 R24
      408 MOVE                             R28 R24
      409 NAMECALL                         R25 R19 K5 ["sub"]
      411 CALL                             R25 3 1
      412 JUMPIFNOTEQ                      R25 R0 ; [+3]
      414 SUBK                             R21 R24 K12 [1]
      415 JUMP                             ; [+1]
      416 FORNLOOP                         R22
      417 JUMPIFEQKNIL                     R21 ; [+133]
      419 ADDK                             R24 R21 K13 [2]
      420 NAMECALL                         R22 R19 K5 ["sub"]
      422 CALL                             R22 2 1
      423 LENGTH                           R23 R22
      424 LOADN                            R24 0
      425 JUMPIFNOTLT                      R24 R23 ; [+125]
      427 GETUPVAL                         R23 2
      428 MOVE                             R24 R15
      429 MOVE                             R25 R21
      430 MOVE                             R26 R16
      431 CALL                             R23 3 1
      432 GETUPVAL                         R24 3
      433 MOVE                             R25 R23
      434 MOVE                             R26 R21
      435 CALL                             R24 2 2
      436 DUPTABLE                         R26 K15 [{"name", "children", "attributes"}]
      437 LOADK                            R27 K16 ["STYLED_TEXT"]
      438 SETTABLEKS                       R27 R26 K1 ["name"]
      440 NEWTABLE                         R27 0 1
      442 DUPTABLE                         R28 K18 [{"name", "children", "text"}]
      443 LOADK                            R29 K19 ["TEXT"]
      444 SETTABLEKS                       R29 R28 K1 ["name"]
      446 NEWTABLE                         R29 0 0
      448 SETTABLEKS                       R29 R28 K4 ["children"]
      450 SETTABLEKS                       R22 R28 K17 ["text"]
      452 SETLIST                          R27 R28 1 [1]
      454 SETTABLEKS                       R27 R26 K4 ["children"]
      456 DUPTABLE                         R27 K21 [{"style"}]
      457 SETTABLEKS                       R20 R27 K20 ["style"]
      459 SETTABLEKS                       R27 R26 K14 ["attributes"]
      461 NEWTABLE                         R27 0 0
      463 MOVE                             R28 R24
      464 LOADNIL                          R29
      465 LOADNIL                          R30
      466 FORGPREP                         R28
      467 FASTCALL2                        TABLE_INSERT R27 R32 ; [+5]
      469 MOVE                             R34 R27
      470 MOVE                             R35 R32
      471 GETIMPORT                        R33 K24 [table.insert]
      473 CALL                             R33 2 0
      474 FORGLOOP                         R28 2 ; [-8]
      476 FASTCALL2                        TABLE_INSERT R27 R26 ; [+5]
      478 MOVE                             R29 R27
      479 MOVE                             R30 R26
      480 GETIMPORT                        R28 K24 [table.insert]
      482 CALL                             R28 2 0
      483 MOVE                             R28 R25
      484 LOADNIL                          R29
      485 LOADNIL                          R30
      486 FORGPREP                         R28
      487 FASTCALL2                        TABLE_INSERT R27 R32 ; [+5]
      489 MOVE                             R34 R27
      490 MOVE                             R35 R32
      491 GETIMPORT                        R33 K24 [table.insert]
      493 CALL                             R33 2 0
      494 FORGLOOP                         R28 2 ; [-8]
      496 LENGTH                           R28 R25
      497 JUMPIFNOTEQKN                    R28 K25 [0] ; [+18]
      499 DUPTABLE                         R30 K18 [{"name", "children", "text"}]
      500 LOADK                            R31 K19 ["TEXT"]
      501 SETTABLEKS                       R31 R30 K1 ["name"]
      503 NEWTABLE                         R31 0 0
      505 SETTABLEKS                       R31 R30 K4 ["children"]
      507 LOADK                            R31 K26 [""]
      508 SETTABLEKS                       R31 R30 K17 ["text"]
      510 FASTCALL2                        TABLE_INSERT R27 R30 ; [+4]
      512 MOVE                             R29 R27
      513 GETIMPORT                        R28 K24 [table.insert]
      515 CALL                             R28 2 0
      516 GETUPVAL                         R28 9
      517 MOVE                             R29 R12
      518 MOVE                             R30 R13
      519 MOVE                             R31 R14
      520 GETUPVAL                         R32 4
      521 MOVE                             R33 R27
      522 CALL                             R32 1 1
      523 GETTABLEKS                       R33 R7 K0 ["blockIndex"]
      525 MOVE                             R34 R2
      526 MOVE                             R35 R3
      527 CALL                             R28 7 0
      528 GETUPVAL                         R29 5
      529 MOVE                             R30 R24
      530 CALL                             R29 1 1
      531 GETUPVAL                         R30 5
      532 NEWTABLE                         R31 0 1
      534 MOVE                             R32 R26
      535 SETLIST                          R31 R32 1 [1]
      537 CALL                             R30 1 1
      538 ADD                              R28 R29 R30
      539 MOVE                             R29 R4
      540 GETUPVAL                         R30 6
      541 GETTABLEKS                       R30 R30 K30 ["createCollapsed"]
      543 GETTABLEKS                       R31 R7 K0 ["blockIndex"]
      545 ADDK                             R32 R28 K12 [1]
      546 LOADN                            R33 0
      547 MOVE                             R34 R17
      548 CALL                             R30 4 -1
      549 CALL                             R29 -1 0
      550 RETURN                           R0 0
      551 GETUPVAL                         R21 7
      552 MOVE                             R22 R15
      553 MOVE                             R23 R16
      554 MOVE                             R24 R0
      555 CALL                             R21 3 1
      556 GETUPVAL                         R22 9
      557 MOVE                             R23 R12
      558 MOVE                             R24 R13
      559 MOVE                             R25 R14
      560 MOVE                             R26 R21
      561 GETTABLEKS                       R27 R7 K0 ["blockIndex"]
      563 MOVE                             R28 R2
      564 MOVE                             R29 R3
      565 CALL                             R22 7 0
      566 LENGTH                           R23 R0
      567 ADD                              R22 R16 R23
      568 GETTABLEKS                       R24 R7 K0 ["blockIndex"]
      570 LOADN                            R25 0
      571 LOADN                            R26 0
      572 NEWCLOSURE                       R27 P1
      573 CAPTURE                          REF R25
      574 CAPTURE                          VAL R22
      575 CAPTURE                          REF R26
      576 CAPTURE                          UPVAL U6
      577 CAPTURE                          VAL R24
      578 CAPTURE                          VAL R27
      579 MOVE                             R28 R27
      580 MOVE                             R29 R21
      581 CALL                             R28 1 1
      582 JUMPIFNOT                        R28 ; [+3]
      583 MOVE                             R23 R28
      584 CLOSEUPVALS                      R25
      585 JUMP                             ; [+15]
      586 GETUPVAL                         R29 6
      587 GETTABLEKS                       R29 R29 K30 ["createCollapsed"]
      589 MOVE                             R30 R24
      590 LOADN                            R32 1
      591 FASTCALL2                        MATH_MAX R32 R25 ; [+4]
      593 MOVE                             R33 R25
      594 GETIMPORT                        R31 K33 [math.max]
      596 CALL                             R31 2 1
      597 SUB                              R32 R22 R26
      598 CALL                             R29 3 1
      599 MOVE                             R23 R29
      600 CLOSEUPVALS                      R25
      601 MOVE                             R24 R4
      602 GETUPVAL                         R25 6
      603 GETTABLEKS                       R25 R25 K30 ["createCollapsed"]
      605 GETTABLEKS                       R26 R7 K0 ["blockIndex"]
      607 GETTABLEKS                       R27 R23 K34 ["anchor"]
      609 GETTABLEKS                       R27 R27 K35 ["segmentIndex"]
      611 GETTABLEKS                       R28 R23 K34 ["anchor"]
      613 GETTABLEKS                       R28 R28 K36 ["charOffset"]
      615 MOVE                             R29 R17
      616 CALL                             R25 4 -1
      617 CALL                             R24 -1 0
      618 RETURN                           R0 0
      619 GETTABLEKS                       R16 R9 K1 ["name"]
      621 JUMPIFEQKS                       R16 K38 ["CODE_BLOCK"] ; [+2]
      623 LOADB                            R15 0 +1
      624 LOADB                            R15 1
      625 JUMPIFNOT                        R15 ; [+40]
      626 GETTABLEKS                       R16 R9 K17 ["text"]
      628 ORK                              R15 R16 K26 [""]
      629 GETUPVAL                         R16 10
      630 MOVE                             R17 R7
      631 MOVE                             R18 R15
      632 CALL                             R16 2 1
      633 LOADN                            R23 1
      634 MOVE                             R24 R16
      635 NAMECALL                         R21 R15 K5 ["sub"]
      637 CALL                             R21 3 1
      638 MOVE                             R18 R21
      639 MOVE                             R19 R0
      640 ADDK                             R22 R16 K12 [1]
      641 NAMECALL                         R20 R15 K5 ["sub"]
      643 CALL                             R20 2 1
      644 CONCAT                           R17 R18 R20
      645 MOVE                             R18 R3
      646 GETTABLEKS                       R20 R7 K0 ["blockIndex"]
      648 GETTABLE                         R19 R2 R20
      649 GETTABLEKS                       R19 R19 K17 ["text"]
      651 CALL                             R18 1 1
      652 MOVE                             R20 R17
      653 NAMECALL                         R18 R18 K29 ["set"]
      655 CALL                             R18 2 0
      656 MOVE                             R18 R4
      657 GETUPVAL                         R19 11
      658 GETTABLEKS                       R20 R7 K0 ["blockIndex"]
      660 MOVE                             R21 R17
      661 LENGTH                           R23 R0
      662 ADD                              R22 R16 R23
      663 CALL                             R19 3 -1
      664 CALL                             R18 -1 0
      665 RETURN                           R0 0
      666 GETTABLEKS                       R16 R9 K1 ["name"]
      668 LOADB                            R15 1
      669 JUMPIFEQKS                       R16 K39 ["PARAGRAPH"] ; [+11]
      671 LOADB                            R15 1
      672 JUMPIFEQKS                       R16 K40 ["HEADING"] ; [+8]
      674 LOADB                            R15 1
      675 JUMPIFEQKS                       R16 K41 ["QUOTE"] ; [+5]
      677 JUMPIFEQKS                       R16 K42 ["LIST_ITEM"] ; [+2]
      679 LOADB                            R15 0 +1
      680 LOADB                            R15 1
      681 JUMPIF                           R15 ; [+42]
      682 NEWTABLE                         R15 0 1
      684 DUPTABLE                         R16 K18 [{"name", "children", "text"}]
      685 LOADK                            R17 K19 ["TEXT"]
      686 SETTABLEKS                       R17 R16 K1 ["name"]
      688 NEWTABLE                         R17 0 0
      690 SETTABLEKS                       R17 R16 K4 ["children"]
      692 SETTABLEKS                       R0 R16 K17 ["text"]
      694 SETLIST                          R15 R16 1 [1]
      696 DUPTABLE                         R16 K43 [{"name", "children", "index"}]
      697 LOADK                            R17 K39 ["PARAGRAPH"]
      698 SETTABLEKS                       R17 R16 K1 ["name"]
      700 SETTABLEKS                       R15 R16 K4 ["children"]
      702 MOVE                             R17 R5
      703 CALL                             R17 0 1
      704 SETTABLEKS                       R17 R16 K27 ["index"]
      706 MOVE                             R17 R3
      707 MOVE                             R18 R2
      708 CALL                             R17 1 1
      709 MOVE                             R19 R16
      710 GETTABLEKS                       R20 R7 K0 ["blockIndex"]
      712 NAMECALL                         R17 R17 K23 ["insert"]
      714 CALL                             R17 3 0
      715 MOVE                             R17 R4
      716 GETUPVAL                         R18 12
      717 GETTABLEKS                       R19 R7 K0 ["blockIndex"]
      719 MOVE                             R20 R15
      720 LENGTH                           R21 R0
      721 CALL                             R18 3 -1
      722 CALL                             R17 -1 0
      723 RETURN                           R0 0
      724 GETTABLEKS                       R16 R9 K4 ["children"]
      726 JUMPIF                           R16 ; [+2]
      727 NEWTABLE                         R16 0 0
      729 LOADN                            R17 0
      730 LOADN                            R18 0
      731 NEWCLOSURE                       R19 P0
      732 CAPTURE                          REF R18
      733 CAPTURE                          VAL R7
      734 CAPTURE                          REF R17
      735 CAPTURE                          VAL R19
      736 MOVE                             R20 R19
      737 MOVE                             R21 R16
      738 CALL                             R20 1 1
      739 OR                               R15 R20 R17
      740 CLOSEUPVALS                      R17
      741 GETUPVAL                         R16 1
      742 GETTABLEKS                       R17 R9 K4 ["children"]
      744 JUMPIF                           R17 ; [+2]
      745 NEWTABLE                         R17 0 0
      747 CALL                             R16 1 1
      748 LOADN                            R19 1
      749 MOVE                             R20 R15
      750 NAMECALL                         R17 R16 K5 ["sub"]
      752 CALL                             R17 3 1
      753 JUMPIFNOTEQKS                    R0 K44 [" "] ; [+67]
      755 GETTABLEKS                       R18 R9 K1 ["name"]
      757 JUMPIFNOTEQKS                    R18 K39 ["PARAGRAPH"] ; [+63]
      759 LOADK                            R20 K45 ["^(#+)$"]
      760 NAMECALL                         R18 R17 K46 ["match"]
      762 CALL                             R18 2 1
      763 JUMPIFNOT                        R18 ; [+57]
      764 LENGTH                           R19 R18
      765 LOADN                            R20 6
      766 JUMPIFNOTLE                      R19 R20 ; [+54]
      768 LENGTH                           R19 R18
      769 ADDK                             R22 R15 K12 [1]
      770 NAMECALL                         R20 R16 K5 ["sub"]
      772 CALL                             R20 2 1
      773 MOVE                             R21 R3
      774 GETTABLEKS                       R23 R7 K0 ["blockIndex"]
      776 GETTABLE                         R22 R2 R23
      777 CALL                             R21 1 1
      778 DUPTABLE                         R23 K28 [{"name", "children", "attributes", "index"}]
      779 LOADK                            R24 K40 ["HEADING"]
      780 SETTABLEKS                       R24 R23 K1 ["name"]
      782 NEWTABLE                         R24 0 1
      784 DUPTABLE                         R25 K18 [{"name", "children", "text"}]
      785 LOADK                            R26 K19 ["TEXT"]
      786 SETTABLEKS                       R26 R25 K1 ["name"]
      788 NEWTABLE                         R26 0 0
      790 SETTABLEKS                       R26 R25 K4 ["children"]
      792 SETTABLEKS                       R20 R25 K17 ["text"]
      794 SETLIST                          R24 R25 1 [1]
      796 SETTABLEKS                       R24 R23 K4 ["children"]
      798 DUPTABLE                         R24 K48 [{"depth"}]
      799 SETTABLEKS                       R19 R24 K47 ["depth"]
      801 SETTABLEKS                       R24 R23 K14 ["attributes"]
      803 GETTABLEKS                       R24 R9 K27 ["index"]
      805 SETTABLEKS                       R24 R23 K27 ["index"]
      807 NAMECALL                         R21 R21 K29 ["set"]
      809 CALL                             R21 2 0
      810 MOVE                             R21 R4
      811 GETUPVAL                         R22 6
      812 GETTABLEKS                       R22 R22 K30 ["createCollapsed"]
      814 GETTABLEKS                       R23 R7 K0 ["blockIndex"]
      816 LOADN                            R24 1
      817 LOADN                            R25 0
      818 CALL                             R22 3 -1
      819 CALL                             R21 -1 0
      820 RETURN                           R0 0
      821 JUMPIFNOTEQKS                    R0 K44 [" "] ; [+87]
      823 GETTABLEKS                       R18 R9 K1 ["name"]
      825 JUMPIFNOTEQKS                    R18 K39 ["PARAGRAPH"] ; [+83]
      827 JUMPIFEQKS                       R17 K49 ["-"] ; [+3]
      829 JUMPIFNOTEQKS                    R17 K8 ["*"] ; [+79]
      831 ADDK                             R20 R15 K12 [1]
      832 NAMECALL                         R18 R16 K5 ["sub"]
      834 CALL                             R18 2 1
      835 DUPTABLE                         R19 K28 [{"name", "children", "attributes", "index"}]
      836 LOADK                            R20 K42 ["LIST_ITEM"]
      837 SETTABLEKS                       R20 R19 K1 ["name"]
      839 NEWTABLE                         R20 0 1
      841 DUPTABLE                         R21 K18 [{"name", "children", "text"}]
      842 LOADK                            R22 K19 ["TEXT"]
      843 SETTABLEKS                       R22 R21 K1 ["name"]
      845 NEWTABLE                         R22 0 0
      847 SETTABLEKS                       R22 R21 K4 ["children"]
      849 SETTABLEKS                       R18 R21 K17 ["text"]
      851 SETLIST                          R20 R21 1 [1]
      853 SETTABLEKS                       R20 R19 K4 ["children"]
      855 DUPTABLE                         R20 K51 [{"prefix"}]
      856 SETTABLEKS                       R17 R20 K50 ["prefix"]
      858 SETTABLEKS                       R20 R19 K14 ["attributes"]
      860 MOVE                             R20 R5
      861 CALL                             R20 0 1
      862 SETTABLEKS                       R20 R19 K27 ["index"]
      864 MOVE                             R20 R3
      865 GETTABLEKS                       R22 R7 K0 ["blockIndex"]
      867 GETTABLE                         R21 R2 R22
      868 CALL                             R20 1 1
      869 DUPTABLE                         R22 K28 [{"name", "children", "attributes", "index"}]
      870 LOADK                            R23 K2 ["LIST"]
      871 SETTABLEKS                       R23 R22 K1 ["name"]
      873 NEWTABLE                         R23 0 1
      875 MOVE                             R24 R19
      876 SETLIST                          R23 R24 1 [1]
      878 SETTABLEKS                       R23 R22 K4 ["children"]
      880 DUPTABLE                         R23 K53 [{"ordered"}]
      881 LOADB                            R24 0
      882 SETTABLEKS                       R24 R23 K52 ["ordered"]
      884 SETTABLEKS                       R23 R22 K14 ["attributes"]
      886 GETTABLEKS                       R23 R9 K27 ["index"]
      888 SETTABLEKS                       R23 R22 K27 ["index"]
      890 NAMECALL                         R20 R20 K29 ["set"]
      892 CALL                             R20 2 0
      893 MOVE                             R20 R4
      894 GETUPVAL                         R21 6
      895 GETTABLEKS                       R21 R21 K30 ["createCollapsed"]
      897 GETTABLEKS                       R22 R7 K0 ["blockIndex"]
      899 LOADN                            R23 1
      900 LOADN                            R24 0
      901 NEWTABLE                         R25 0 1
      903 LOADN                            R26 1
      904 SETLIST                          R25 R26 1 [1]
      906 CALL                             R21 4 -1
      907 CALL                             R20 -1 0
      908 RETURN                           R0 0
      909 JUMPIFNOTEQKS                    R0 K44 [" "] ; [+102]
      911 GETTABLEKS                       R18 R9 K1 ["name"]
      913 JUMPIFNOTEQKS                    R18 K39 ["PARAGRAPH"] ; [+98]
      915 LOADK                            R20 K54 ["^%[([xX ]?)%]$"]
      916 NAMECALL                         R18 R17 K46 ["match"]
      918 CALL                             R18 2 1
      919 JUMPIFEQKNIL                     R18 ; [+92]
      921 NAMECALL                         R20 R18 K55 ["lower"]
      923 CALL                             R20 1 1
      924 JUMPIFEQKS                       R20 K56 ["x"] ; [+2]
      926 LOADB                            R19 0 +1
      927 LOADB                            R19 1
      928 ADDK                             R22 R15 K12 [1]
      929 NAMECALL                         R20 R16 K5 ["sub"]
      931 CALL                             R20 2 1
      932 DUPTABLE                         R21 K28 [{"name", "children", "attributes", "index"}]
      933 LOADK                            R22 K42 ["LIST_ITEM"]
      934 SETTABLEKS                       R22 R21 K1 ["name"]
      936 NEWTABLE                         R22 0 1
      938 DUPTABLE                         R23 K18 [{"name", "children", "text"}]
      939 LOADK                            R24 K19 ["TEXT"]
      940 SETTABLEKS                       R24 R23 K1 ["name"]
      942 NEWTABLE                         R24 0 0
      944 SETTABLEKS                       R24 R23 K4 ["children"]
      946 SETTABLEKS                       R20 R23 K17 ["text"]
      948 SETLIST                          R22 R23 1 [1]
      950 SETTABLEKS                       R22 R21 K4 ["children"]
      952 DUPTABLE                         R22 K59 [{"prefix", "checkbox", "checked"}]
      953 LOADK                            R23 K49 ["-"]
      954 SETTABLEKS                       R23 R22 K50 ["prefix"]
      956 LOADB                            R23 1
      957 SETTABLEKS                       R23 R22 K57 ["checkbox"]
      959 SETTABLEKS                       R19 R22 K58 ["checked"]
      961 SETTABLEKS                       R22 R21 K14 ["attributes"]
      963 MOVE                             R22 R5
      964 CALL                             R22 0 1
      965 SETTABLEKS                       R22 R21 K27 ["index"]
      967 MOVE                             R22 R3
      968 GETTABLEKS                       R24 R7 K0 ["blockIndex"]
      970 GETTABLE                         R23 R2 R24
      971 CALL                             R22 1 1
      972 DUPTABLE                         R24 K28 [{"name", "children", "attributes", "index"}]
      973 LOADK                            R25 K2 ["LIST"]
      974 SETTABLEKS                       R25 R24 K1 ["name"]
      976 NEWTABLE                         R25 0 1
      978 MOVE                             R26 R21
      979 SETLIST                          R25 R26 1 [1]
      981 SETTABLEKS                       R25 R24 K4 ["children"]
      983 DUPTABLE                         R25 K53 [{"ordered"}]
      984 LOADB                            R26 0
      985 SETTABLEKS                       R26 R25 K52 ["ordered"]
      987 SETTABLEKS                       R25 R24 K14 ["attributes"]
      989 GETTABLEKS                       R25 R9 K27 ["index"]
      991 SETTABLEKS                       R25 R24 K27 ["index"]
      993 NAMECALL                         R22 R22 K29 ["set"]
      995 CALL                             R22 2 0
      996 MOVE                             R22 R4
      997 GETUPVAL                         R23 6
      998 GETTABLEKS                       R23 R23 K30 ["createCollapsed"]
     1000 GETTABLEKS                       R24 R7 K0 ["blockIndex"]
     1002 LOADN                            R25 1
     1003 LOADN                            R26 0
     1004 NEWTABLE                         R27 0 1
     1006 LOADN                            R28 1
     1007 SETLIST                          R27 R28 1 [1]
     1009 CALL                             R23 4 -1
     1010 CALL                             R22 -1 0
     1011 RETURN                           R0 0
     1012 JUMPIFNOTEQKS                    R0 K6 ["`"] ; [+3]
     1014 LOADK                            R18 K7 ["INLINE_CODE"]
     1015 JUMP                             ; [+9]
     1016 JUMPIFNOTEQKS                    R0 K8 ["*"] ; [+3]
     1018 LOADK                            R18 K9 ["BOLD"]
     1019 JUMP                             ; [+5]
     1020 JUMPIFNOTEQKS                    R0 K10 ["_"] ; [+3]
     1022 LOADK                            R18 K11 ["ITALIC"]
     1023 JUMP                             ; [+1]
     1024 LOADNIL                          R18
     1025 JUMPIFNOT                        R18 ; [+153]
     1026 LOADNIL                          R19
     1027 LENGTH                           R22 R17
     1028 LOADN                            R20 1
     1029 LOADN                            R21 255
     1030 FORNPREP                         R20
     1031 MOVE                             R25 R22
     1032 MOVE                             R26 R22
     1033 NAMECALL                         R23 R17 K5 ["sub"]
     1035 CALL                             R23 3 1
     1036 JUMPIFNOTEQ                      R23 R0 ; [+3]
     1038 SUBK                             R19 R22 K12 [1]
     1039 JUMP                             ; [+1]
     1040 FORNLOOP                         R20
     1041 JUMPIFEQKNIL                     R19 ; [+137]
     1043 ADDK                             R22 R19 K13 [2]
     1044 NAMECALL                         R20 R17 K5 ["sub"]
     1046 CALL                             R20 2 1
     1047 LENGTH                           R21 R20
     1048 LOADN                            R22 0
     1049 JUMPIFNOTLT                      R22 R21 ; [+129]
     1051 GETUPVAL                         R21 2
     1052 GETTABLEKS                       R22 R9 K4 ["children"]
     1054 JUMPIF                           R22 ; [+2]
     1055 NEWTABLE                         R22 0 0
     1057 MOVE                             R23 R19
     1058 MOVE                             R24 R15
     1059 CALL                             R21 3 1
     1060 GETUPVAL                         R22 3
     1061 MOVE                             R23 R21
     1062 MOVE                             R24 R19
     1063 CALL                             R22 2 2
     1064 DUPTABLE                         R24 K15 [{"name", "children", "attributes"}]
     1065 LOADK                            R25 K16 ["STYLED_TEXT"]
     1066 SETTABLEKS                       R25 R24 K1 ["name"]
     1068 NEWTABLE                         R25 0 1
     1070 DUPTABLE                         R26 K18 [{"name", "children", "text"}]
     1071 LOADK                            R27 K19 ["TEXT"]
     1072 SETTABLEKS                       R27 R26 K1 ["name"]
     1074 NEWTABLE                         R27 0 0
     1076 SETTABLEKS                       R27 R26 K4 ["children"]
     1078 SETTABLEKS                       R20 R26 K17 ["text"]
     1080 SETLIST                          R25 R26 1 [1]
     1082 SETTABLEKS                       R25 R24 K4 ["children"]
     1084 DUPTABLE                         R25 K21 [{"style"}]
     1085 SETTABLEKS                       R18 R25 K20 ["style"]
     1087 SETTABLEKS                       R25 R24 K14 ["attributes"]
     1089 NEWTABLE                         R25 0 0
     1091 MOVE                             R26 R22
     1092 LOADNIL                          R27
     1093 LOADNIL                          R28
     1094 FORGPREP                         R26
     1095 FASTCALL2                        TABLE_INSERT R25 R30 ; [+5]
     1097 MOVE                             R32 R25
     1098 MOVE                             R33 R30
     1099 GETIMPORT                        R31 K24 [table.insert]
     1101 CALL                             R31 2 0
     1102 FORGLOOP                         R26 2 ; [-8]
     1104 FASTCALL2                        TABLE_INSERT R25 R24 ; [+5]
     1106 MOVE                             R27 R25
     1107 MOVE                             R28 R24
     1108 GETIMPORT                        R26 K24 [table.insert]
     1110 CALL                             R26 2 0
     1111 MOVE                             R26 R23
     1112 LOADNIL                          R27
     1113 LOADNIL                          R28
     1114 FORGPREP                         R26
     1115 FASTCALL2                        TABLE_INSERT R25 R30 ; [+5]
     1117 MOVE                             R32 R25
     1118 MOVE                             R33 R30
     1119 GETIMPORT                        R31 K24 [table.insert]
     1121 CALL                             R31 2 0
     1122 FORGLOOP                         R26 2 ; [-8]
     1124 LENGTH                           R26 R23
     1125 JUMPIFNOTEQKN                    R26 K25 [0] ; [+18]
     1127 DUPTABLE                         R28 K18 [{"name", "children", "text"}]
     1128 LOADK                            R29 K19 ["TEXT"]
     1129 SETTABLEKS                       R29 R28 K1 ["name"]
     1131 NEWTABLE                         R29 0 0
     1133 SETTABLEKS                       R29 R28 K4 ["children"]
     1135 LOADK                            R29 K26 [""]
     1136 SETTABLEKS                       R29 R28 K17 ["text"]
     1138 FASTCALL2                        TABLE_INSERT R25 R28 ; [+4]
     1140 MOVE                             R27 R25
     1141 GETIMPORT                        R26 K24 [table.insert]
     1143 CALL                             R26 2 0
     1144 MOVE                             R26 R3
     1145 GETTABLEKS                       R28 R7 K0 ["blockIndex"]
     1147 GETTABLE                         R27 R2 R28
     1148 GETTABLEKS                       R27 R27 K4 ["children"]
     1150 CALL                             R26 1 1
     1151 GETUPVAL                         R28 4
     1152 MOVE                             R29 R25
     1153 CALL                             R28 1 1
     1154 NAMECALL                         R26 R26 K29 ["set"]
     1156 CALL                             R26 2 0
     1157 GETUPVAL                         R27 5
     1158 MOVE                             R28 R22
     1159 CALL                             R27 1 1
     1160 GETUPVAL                         R28 5
     1161 NEWTABLE                         R29 0 1
     1163 MOVE                             R30 R24
     1164 SETLIST                          R29 R30 1 [1]
     1166 CALL                             R28 1 1
     1167 ADD                              R26 R27 R28
     1168 MOVE                             R27 R4
     1169 GETUPVAL                         R28 6
     1170 GETTABLEKS                       R28 R28 K30 ["createCollapsed"]
     1172 GETTABLEKS                       R29 R7 K0 ["blockIndex"]
     1174 ADDK                             R30 R26 K12 [1]
     1175 LOADN                            R31 0
     1176 CALL                             R28 3 -1
     1177 CALL                             R27 -1 0
     1178 RETURN                           R0 0
     1179 GETUPVAL                         R19 7
     1180 GETTABLEKS                       R20 R9 K4 ["children"]
     1182 JUMPIF                           R20 ; [+2]
     1183 NEWTABLE                         R20 0 0
     1185 MOVE                             R21 R15
     1186 MOVE                             R22 R0
     1187 CALL                             R19 3 1
     1188 MOVE                             R20 R3
     1189 GETTABLEKS                       R22 R7 K0 ["blockIndex"]
     1191 GETTABLE                         R21 R2 R22
     1192 GETTABLEKS                       R21 R21 K4 ["children"]
     1194 CALL                             R20 1 1
     1195 MOVE                             R22 R19
     1196 NAMECALL                         R20 R20 K29 ["set"]
     1198 CALL                             R20 2 0
     1199 LENGTH                           R21 R0
     1200 ADD                              R20 R15 R21
     1201 MOVE                             R21 R4
     1202 GETUPVAL                         R22 12
     1203 GETTABLEKS                       R23 R7 K0 ["blockIndex"]
     1205 MOVE                             R24 R19
     1206 MOVE                             R25 R20
     1207 CALL                             R22 3 -1
     1208 CALL                             R21 -1 0
     1209 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["isCollapsed"]
        3 MOVE                             R7 R0
        4 CALL                             R6 1 1
        5 JUMPIF                           R6 ; [+22]
        6 GETUPVAL                         R6 1
        7 MOVE                             R7 R0
        8 MOVE                             R8 R1
        9 MOVE                             R9 R2
       10 MOVE                             R10 R5
       11 MOVE                             R11 R4
       12 CALL                             R6 5 1
       13 MOVE                             R7 R3
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K1 ["createCollapsed"]
       17 GETTABLEKS                       R9 R6 K2 ["blockIndex"]
       19 GETTABLEKS                       R10 R6 K3 ["segmentIndex"]
       21 GETTABLEKS                       R11 R6 K4 ["charOffset"]
       23 GETTABLEKS                       R12 R6 K5 ["path"]
       25 CALL                             R8 4 -1
       26 CALL                             R7 -1 0
       27 RETURN                           R0 0
       28 GETTABLEKS                       R6 R0 K6 ["anchor"]
       30 MOVE                             R7 R5
       31 MOVE                             R8 R1
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R9 R6 K2 ["blockIndex"]
       35 GETTABLE                         R8 R7 R9
       36 JUMPIF                           R8 ; [+1]
       37 RETURN                           R0 0
       38 GETTABLEKS                       R10 R8 K7 ["name"]
       40 JUMPIFEQKS                       R10 K8 ["TABLE"] ; [+2]
       42 LOADB                            R9 0 +1
       43 LOADB                            R9 1
       44 JUMPIFNOT                        R9 ; [+100]
       45 GETUPVAL                         R9 2
       46 MOVE                             R10 R8
       47 MOVE                             R11 R6
       48 CALL                             R9 2 3
       49 JUMPIF                           R9 ; [+1]
       50 RETURN                           R0 0
       51 GETTABLEKS                       R12 R9 K9 ["children"]
       53 JUMPIF                           R12 ; [+2]
       54 NEWTABLE                         R12 0 0
       56 LOADN                            R14 0
       57 LOADN                            R15 0
       58 NEWCLOSURE                       R16 P0
       59 CAPTURE                          REF R15
       60 CAPTURE                          VAL R6
       61 CAPTURE                          REF R14
       62 CAPTURE                          VAL R16
       63 MOVE                             R17 R16
       64 MOVE                             R18 R12
       65 CALL                             R17 1 1
       66 OR                               R13 R17 R14
       67 CLOSEUPVALS                      R14
       68 LOADN                            R14 0
       69 JUMPIFNOTLT                      R14 R13 ; [+74]
       71 GETUPVAL                         R14 3
       72 GETUPVAL                         R15 4
       73 MOVE                             R16 R12
       74 SUBK                             R17 R13 K10 [1]
       75 MOVE                             R18 R13
       76 CALL                             R15 3 1
       77 CALL                             R14 1 1
       78 GETUPVAL                         R15 5
       79 MOVE                             R16 R9
       80 MOVE                             R17 R10
       81 MOVE                             R18 R11
       82 MOVE                             R19 R14
       83 GETTABLEKS                       R20 R6 K2 ["blockIndex"]
       85 MOVE                             R21 R1
       86 MOVE                             R22 R2
       87 CALL                             R15 7 0
       88 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
       90 SUBK                             R17 R13 K10 [1]
       91 LOADN                            R18 0
       92 LOADN                            R19 0
       93 NEWCLOSURE                       R20 P1
       94 CAPTURE                          REF R18
       95 CAPTURE                          VAL R17
       96 CAPTURE                          REF R19
       97 CAPTURE                          UPVAL U0
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R20
      100 MOVE                             R21 R20
      101 MOVE                             R22 R14
      102 CALL                             R21 1 1
      103 JUMPIFNOT                        R21 ; [+3]
      104 MOVE                             R15 R21
      105 CLOSEUPVALS                      R18
      106 JUMP                             ; [+15]
      107 GETUPVAL                         R22 0
      108 GETTABLEKS                       R22 R22 K1 ["createCollapsed"]
      110 MOVE                             R23 R16
      111 LOADN                            R25 1
      112 FASTCALL2                        MATH_MAX R25 R18 ; [+4]
      114 MOVE                             R26 R18
      115 GETIMPORT                        R24 K13 [math.max]
      117 CALL                             R24 2 1
      118 SUB                              R25 R17 R19
      119 CALL                             R22 3 1
      120 MOVE                             R15 R22
      121 CLOSEUPVALS                      R18
      122 MOVE                             R16 R3
      123 GETUPVAL                         R17 0
      124 GETTABLEKS                       R17 R17 K1 ["createCollapsed"]
      126 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      128 GETTABLEKS                       R19 R15 K6 ["anchor"]
      130 GETTABLEKS                       R19 R19 K3 ["segmentIndex"]
      132 GETTABLEKS                       R20 R15 K6 ["anchor"]
      134 GETTABLEKS                       R20 R20 K4 ["charOffset"]
      136 NEWTABLE                         R21 0 2
      138 MOVE                             R22 R10
      139 MOVE                             R23 R11
      140 SETLIST                          R21 R22 2 [1]
      142 CALL                             R17 4 -1
      143 CALL                             R16 -1 0
      144 RETURN                           R0 0
      145 GETTABLEKS                       R11 R8 K7 ["name"]
      147 JUMPIFEQKS                       R11 K14 ["LIST"] ; [+4]
      149 LOADNIL                          R9
      150 LOADNIL                          R10
      151 JUMP                             ; [+19]
      152 GETTABLEKS                       R12 R6 K5 ["path"]
      154 JUMPIFNOT                        R12 ; [+4]
      155 GETTABLEKS                       R12 R6 K5 ["path"]
      157 GETTABLEN                        R11 R12 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R11
      160 JUMPIF                           R11 ; [+3]
      161 LOADNIL                          R9
      162 LOADNIL                          R10
      163 JUMP                             ; [+7]
      164 GETTABLEKS                       R12 R8 K9 ["children"]
      166 JUMPIF                           R12 ; [+2]
      167 NEWTABLE                         R12 0 0
      169 GETTABLE                         R9 R12 R11
      170 MOVE                             R10 R11
      171 GETTABLEKS                       R11 R8 K7 ["name"]
      173 JUMPIFNOTEQKS                    R11 K14 ["LIST"] ; [+376]
      175 JUMPIF                           R9 ; [+1]
      176 RETURN                           R0 0
      177 GETTABLEKS                       R11 R8 K9 ["children"]
      179 JUMPIF                           R11 ; [+2]
      180 NEWTABLE                         R11 0 0
      182 GETTABLEKS                       R13 R9 K9 ["children"]
      184 JUMPIF                           R13 ; [+2]
      185 NEWTABLE                         R13 0 0
      187 LOADN                            R14 0
      188 LOADN                            R15 0
      189 NEWCLOSURE                       R16 P0
      190 CAPTURE                          REF R15
      191 CAPTURE                          VAL R6
      192 CAPTURE                          REF R14
      193 CAPTURE                          VAL R16
      194 MOVE                             R17 R16
      195 MOVE                             R18 R13
      196 CALL                             R17 1 1
      197 OR                               R12 R17 R14
      198 CLOSEUPVALS                      R14
      199 LOADN                            R13 0
      200 JUMPIFNOTLT                      R13 R12 ; [+94]
      202 GETUPVAL                         R13 3
      203 GETUPVAL                         R14 4
      204 GETTABLEKS                       R15 R9 K9 ["children"]
      206 JUMPIF                           R15 ; [+2]
      207 NEWTABLE                         R15 0 0
      209 SUBK                             R16 R12 K10 [1]
      210 MOVE                             R17 R12
      211 CALL                             R14 3 1
      212 CALL                             R13 1 1
      213 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      215 MOVE                             R15 R2
      216 GETTABLE                         R17 R1 R14
      217 GETTABLEKS                       R17 R17 K9 ["children"]
      219 GETTABLE                         R16 R17 R10
      220 CALL                             R15 1 1
      221 DUPTABLE                         R17 K17 [{"name", "children", "attributes", "index"}]
      222 GETTABLEKS                       R18 R9 K7 ["name"]
      224 SETTABLEKS                       R18 R17 K7 ["name"]
      226 SETTABLEKS                       R13 R17 K9 ["children"]
      228 GETTABLEKS                       R18 R9 K15 ["attributes"]
      230 SETTABLEKS                       R18 R17 K15 ["attributes"]
      232 GETTABLEKS                       R18 R9 K16 ["index"]
      234 SETTABLEKS                       R18 R17 K16 ["index"]
      236 NAMECALL                         R15 R15 K18 ["set"]
      238 CALL                             R15 2 0
      239 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      241 SUBK                             R16 R12 K10 [1]
      242 LOADN                            R17 0
      243 LOADN                            R18 0
      244 NEWCLOSURE                       R19 P1
      245 CAPTURE                          REF R17
      246 CAPTURE                          VAL R16
      247 CAPTURE                          REF R18
      248 CAPTURE                          UPVAL U0
      249 CAPTURE                          VAL R15
      250 CAPTURE                          VAL R19
      251 MOVE                             R20 R19
      252 MOVE                             R21 R13
      253 CALL                             R20 1 1
      254 JUMPIFNOT                        R20 ; [+3]
      255 MOVE                             R14 R20
      256 CLOSEUPVALS                      R17
      257 JUMP                             ; [+15]
      258 GETUPVAL                         R21 0
      259 GETTABLEKS                       R21 R21 K1 ["createCollapsed"]
      261 MOVE                             R22 R15
      262 LOADN                            R24 1
      263 FASTCALL2                        MATH_MAX R24 R17 ; [+4]
      265 MOVE                             R25 R17
      266 GETIMPORT                        R23 K13 [math.max]
      268 CALL                             R23 2 1
      269 SUB                              R24 R16 R18
      270 CALL                             R21 3 1
      271 MOVE                             R14 R21
      272 CLOSEUPVALS                      R17
      273 MOVE                             R15 R3
      274 GETUPVAL                         R16 0
      275 GETTABLEKS                       R16 R16 K1 ["createCollapsed"]
      277 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      279 GETTABLEKS                       R18 R14 K6 ["anchor"]
      281 GETTABLEKS                       R18 R18 K3 ["segmentIndex"]
      283 GETTABLEKS                       R19 R14 K6 ["anchor"]
      285 GETTABLEKS                       R19 R19 K4 ["charOffset"]
      287 NEWTABLE                         R20 0 1
      289 MOVE                             R21 R10
      290 SETLIST                          R20 R21 1 [1]
      292 CALL                             R16 4 -1
      293 CALL                             R15 -1 0
      294 RETURN                           R0 0
      295 LOADN                            R13 1
      296 JUMPIFNOTLT                      R13 R10 ; [+108]
      298 NEWTABLE                         R13 0 0
      300 ADDK                             R16 R10 K10 [1]
      301 LENGTH                           R14 R11
      302 LOADN                            R15 1
      303 FORNPREP                         R14
      304 GETTABLE                         R19 R11 R16
      305 FASTCALL2                        TABLE_INSERT R13 R19 ; [+4]
      307 MOVE                             R18 R13
      308 GETIMPORT                        R17 K21 [table.insert]
      310 CALL                             R17 2 0
      311 FORNLOOP                         R14
      312 LENGTH                           R16 R11
      313 MOVE                             R14 R10
      314 LOADN                            R15 255
      315 FORNPREP                         R14
      316 MOVE                             R17 R2
      317 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      319 GETTABLE                         R18 R1 R19
      320 GETTABLEKS                       R18 R18 K9 ["children"]
      322 CALL                             R17 1 1
      323 MOVE                             R19 R16
      324 NAMECALL                         R17 R17 K22 ["remove"]
      326 CALL                             R17 2 0
      327 FORNLOOP                         R14
      328 DUPTABLE                         R14 K23 [{"name", "children", "index"}]
      329 LOADK                            R15 K24 ["PARAGRAPH"]
      330 SETTABLEKS                       R15 R14 K7 ["name"]
      332 GETUPVAL                         R15 3
      333 GETTABLEKS                       R16 R9 K9 ["children"]
      335 JUMPIF                           R16 ; [+2]
      336 NEWTABLE                         R16 0 0
      338 CALL                             R15 1 1
      339 SETTABLEKS                       R15 R14 K9 ["children"]
      341 MOVE                             R15 R4
      342 CALL                             R15 0 1
      343 SETTABLEKS                       R15 R14 K16 ["index"]
      345 MOVE                             R15 R2
      346 MOVE                             R16 R1
      347 CALL                             R15 1 1
      348 MOVE                             R17 R14
      349 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      351 ADDK                             R18 R19 K10 [1]
      352 NAMECALL                         R15 R15 K20 ["insert"]
      354 CALL                             R15 3 0
      355 LENGTH                           R15 R13
      356 LOADN                            R16 0
      357 JUMPIFNOTLT                      R16 R15 ; [+35]
      359 DUPTABLE                         R15 K17 [{"name", "children", "attributes", "index"}]
      360 LOADK                            R16 K14 ["LIST"]
      361 SETTABLEKS                       R16 R15 K7 ["name"]
      363 SETTABLEKS                       R13 R15 K9 ["children"]
      365 DUPTABLE                         R16 K26 [{"ordered"}]
      366 GETTABLEKS                       R18 R8 K15 ["attributes"]
      368 JUMPIFNOT                        R18 ; [+5]
      369 GETTABLEKS                       R17 R8 K15 ["attributes"]
      371 GETTABLEKS                       R17 R17 K25 ["ordered"]
      373 JUMPIF                           R17 ; [+1]
      374 LOADB                            R17 0
      375 SETTABLEKS                       R17 R16 K25 ["ordered"]
      377 SETTABLEKS                       R16 R15 K15 ["attributes"]
      379 MOVE                             R16 R4
      380 CALL                             R16 0 1
      381 SETTABLEKS                       R16 R15 K16 ["index"]
      383 MOVE                             R16 R2
      384 MOVE                             R17 R1
      385 CALL                             R16 1 1
      386 MOVE                             R18 R15
      387 GETTABLEKS                       R20 R6 K2 ["blockIndex"]
      389 ADDK                             R19 R20 K27 [2]
      390 NAMECALL                         R16 R16 K20 ["insert"]
      392 CALL                             R16 3 0
      393 MOVE                             R15 R3
      394 GETUPVAL                         R16 0
      395 GETTABLEKS                       R16 R16 K1 ["createCollapsed"]
      397 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      399 ADDK                             R17 R18 K10 [1]
      400 LOADN                            R18 1
      401 LOADN                            R19 0
      402 CALL                             R16 3 -1
      403 CALL                             R15 -1 0
      404 RETURN                           R0 0
      405 GETTABLEKS                       R13 R9 K15 ["attributes"]
      407 JUMPIFNOT                        R13 ; [+55]
      408 GETTABLEKS                       R13 R9 K15 ["attributes"]
      410 GETTABLEKS                       R13 R13 K28 ["checkbox"]
      412 JUMPIFNOT                        R13 ; [+50]
      413 MOVE                             R13 R2
      414 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      416 GETTABLE                         R15 R1 R16
      417 GETTABLEKS                       R15 R15 K9 ["children"]
      419 GETTABLE                         R14 R15 R10
      420 CALL                             R13 1 1
      421 DUPTABLE                         R15 K17 [{"name", "children", "attributes", "index"}]
      422 GETTABLEKS                       R16 R9 K7 ["name"]
      424 SETTABLEKS                       R16 R15 K7 ["name"]
      426 GETTABLEKS                       R16 R9 K9 ["children"]
      428 SETTABLEKS                       R16 R15 K9 ["children"]
      430 DUPTABLE                         R16 K30 [{"prefix"}]
      431 GETTABLEKS                       R18 R9 K15 ["attributes"]
      433 GETTABLEKS                       R18 R18 K29 ["prefix"]
      435 ORK                              R17 R18 K31 ["-"]
      436 SETTABLEKS                       R17 R16 K29 ["prefix"]
      438 SETTABLEKS                       R16 R15 K15 ["attributes"]
      440 GETTABLEKS                       R16 R9 K16 ["index"]
      442 SETTABLEKS                       R16 R15 K16 ["index"]
      444 NAMECALL                         R13 R13 K18 ["set"]
      446 CALL                             R13 2 0
      447 MOVE                             R13 R3
      448 GETUPVAL                         R14 0
      449 GETTABLEKS                       R14 R14 K1 ["createCollapsed"]
      451 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      453 LOADN                            R16 1
      454 LOADN                            R17 0
      455 NEWTABLE                         R18 0 1
      457 MOVE                             R19 R10
      458 SETLIST                          R18 R19 1 [1]
      460 CALL                             R14 4 -1
      461 CALL                             R13 -1 0
      462 RETURN                           R0 0
      463 LENGTH                           R13 R11
      464 JUMPIFNOTEQKN                    R13 K10 [1] ; [+37]
      466 MOVE                             R13 R2
      467 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      469 GETTABLE                         R14 R1 R15
      470 CALL                             R13 1 1
      471 DUPTABLE                         R15 K23 [{"name", "children", "index"}]
      472 LOADK                            R16 K24 ["PARAGRAPH"]
      473 SETTABLEKS                       R16 R15 K7 ["name"]
      475 GETUPVAL                         R16 3
      476 GETTABLEKS                       R17 R9 K9 ["children"]
      478 JUMPIF                           R17 ; [+2]
      479 NEWTABLE                         R17 0 0
      481 CALL                             R16 1 1
      482 SETTABLEKS                       R16 R15 K9 ["children"]
      484 GETTABLEKS                       R16 R8 K16 ["index"]
      486 SETTABLEKS                       R16 R15 K16 ["index"]
      488 NAMECALL                         R13 R13 K18 ["set"]
      490 CALL                             R13 2 0
      491 MOVE                             R13 R3
      492 GETUPVAL                         R14 0
      493 GETTABLEKS                       R14 R14 K1 ["createCollapsed"]
      495 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      497 LOADN                            R16 1
      498 LOADN                            R17 0
      499 CALL                             R14 3 -1
      500 CALL                             R13 -1 0
      501 RETURN                           R0 0
      502 MOVE                             R13 R2
      503 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      505 GETTABLE                         R14 R1 R15
      506 GETTABLEKS                       R14 R14 K9 ["children"]
      508 CALL                             R13 1 1
      509 LOADN                            R15 1
      510 NAMECALL                         R13 R13 K22 ["remove"]
      512 CALL                             R13 2 0
      513 DUPTABLE                         R13 K23 [{"name", "children", "index"}]
      514 LOADK                            R14 K24 ["PARAGRAPH"]
      515 SETTABLEKS                       R14 R13 K7 ["name"]
      517 GETUPVAL                         R14 3
      518 GETTABLEKS                       R15 R9 K9 ["children"]
      520 JUMPIF                           R15 ; [+2]
      521 NEWTABLE                         R15 0 0
      523 CALL                             R14 1 1
      524 SETTABLEKS                       R14 R13 K9 ["children"]
      526 MOVE                             R14 R4
      527 CALL                             R14 0 1
      528 SETTABLEKS                       R14 R13 K16 ["index"]
      530 MOVE                             R14 R2
      531 MOVE                             R15 R1
      532 CALL                             R14 1 1
      533 MOVE                             R16 R13
      534 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      536 NAMECALL                         R14 R14 K20 ["insert"]
      538 CALL                             R14 3 0
      539 MOVE                             R14 R3
      540 GETUPVAL                         R15 0
      541 GETTABLEKS                       R15 R15 K1 ["createCollapsed"]
      543 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      545 LOADN                            R17 1
      546 LOADN                            R18 0
      547 CALL                             R15 3 -1
      548 CALL                             R14 -1 0
      549 RETURN                           R0 0
      550 GETTABLEKS                       R12 R8 K7 ["name"]
      552 JUMPIFEQKS                       R12 K32 ["CODE_BLOCK"] ; [+2]
      554 LOADB                            R11 0 +1
      555 LOADB                            R11 1
      556 JUMPIFNOT                        R11 ; [+75]
      557 GETTABLEKS                       R12 R8 K34 ["text"]
      559 ORK                              R11 R12 K33 [""]
      560 GETUPVAL                         R12 6
      561 MOVE                             R13 R6
      562 MOVE                             R14 R11
      563 CALL                             R12 2 1
      564 LOADN                            R13 0
      565 JUMPIFNOTLT                      R13 R12 ; [+32]
      567 LOADN                            R18 1
      568 SUBK                             R19 R12 K10 [1]
      569 NAMECALL                         R16 R11 K35 ["sub"]
      571 CALL                             R16 3 1
      572 MOVE                             R14 R16
      573 ADDK                             R17 R12 K10 [1]
      574 NAMECALL                         R15 R11 K35 ["sub"]
      576 CALL                             R15 2 1
      577 CONCAT                           R13 R14 R15
      578 MOVE                             R14 R2
      579 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      581 GETTABLE                         R15 R1 R16
      582 GETTABLEKS                       R15 R15 K34 ["text"]
      584 CALL                             R14 1 1
      585 MOVE                             R16 R13
      586 NAMECALL                         R14 R14 K18 ["set"]
      588 CALL                             R14 2 0
      589 MOVE                             R14 R3
      590 GETUPVAL                         R15 7
      591 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      593 MOVE                             R17 R13
      594 SUBK                             R18 R12 K10 [1]
      595 CALL                             R15 3 -1
      596 CALL                             R14 -1 0
      597 RETURN                           R0 0
      598 LENGTH                           R13 R11
      599 JUMPIFNOTEQKN                    R13 K36 [0] ; [+31]
      601 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      603 LOADN                            R14 1
      604 JUMPIFNOTLT                      R14 R13 ; [+26]
      606 MOVE                             R13 R2
      607 MOVE                             R14 R1
      608 CALL                             R13 1 1
      609 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      611 NAMECALL                         R13 R13 K22 ["remove"]
      613 CALL                             R13 2 0
      614 MOVE                             R13 R3
      615 GETUPVAL                         R14 0
      616 GETTABLEKS                       R14 R14 K1 ["createCollapsed"]
      618 LOADN                            R16 1
      619 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      621 SUBK                             R17 R18 K10 [1]
      622 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      624 GETIMPORT                        R15 K13 [math.max]
      626 CALL                             R15 2 1
      627 LOADN                            R16 1
      628 LOADN                            R17 0
      629 CALL                             R14 3 -1
      630 CALL                             R13 -1 0
      631 RETURN                           R0 0
      632 GETTABLEKS                       R12 R8 K7 ["name"]
      634 LOADB                            R11 1
      635 JUMPIFEQKS                       R12 K24 ["PARAGRAPH"] ; [+11]
      637 LOADB                            R11 1
      638 JUMPIFEQKS                       R12 K37 ["HEADING"] ; [+8]
      640 LOADB                            R11 1
      641 JUMPIFEQKS                       R12 K38 ["QUOTE"] ; [+5]
      643 JUMPIFEQKS                       R12 K39 ["LIST_ITEM"] ; [+2]
      645 LOADB                            R11 0 +1
      646 LOADB                            R11 1
      647 JUMPIFNOT                        R11 ; [+51]
      648 GETTABLEKS                       R12 R8 K9 ["children"]
      650 JUMPIF                           R12 ; [+2]
      651 NEWTABLE                         R12 0 0
      653 LOADN                            R13 0
      654 LOADN                            R14 0
      655 NEWCLOSURE                       R15 P0
      656 CAPTURE                          REF R14
      657 CAPTURE                          VAL R6
      658 CAPTURE                          REF R13
      659 CAPTURE                          VAL R15
      660 MOVE                             R16 R15
      661 MOVE                             R17 R12
      662 CALL                             R16 1 1
      663 OR                               R11 R16 R13
      664 CLOSEUPVALS                      R13
      665 LOADN                            R12 0
      666 JUMPIFNOTLT                      R12 R11 ; [+32]
      668 GETUPVAL                         R12 3
      669 GETUPVAL                         R13 4
      670 GETTABLEKS                       R14 R8 K9 ["children"]
      672 JUMPIF                           R14 ; [+2]
      673 NEWTABLE                         R14 0 0
      675 SUBK                             R15 R11 K10 [1]
      676 MOVE                             R16 R11
      677 CALL                             R13 3 1
      678 CALL                             R12 1 1
      679 MOVE                             R13 R2
      680 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      682 GETTABLE                         R14 R1 R15
      683 GETTABLEKS                       R14 R14 K9 ["children"]
      685 CALL                             R13 1 1
      686 MOVE                             R15 R12
      687 NAMECALL                         R13 R13 K18 ["set"]
      689 CALL                             R13 2 0
      690 MOVE                             R13 R3
      691 GETUPVAL                         R14 8
      692 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      694 MOVE                             R16 R12
      695 SUBK                             R17 R11 K10 [1]
      696 CALL                             R14 3 -1
      697 CALL                             R13 -1 0
      698 RETURN                           R0 0
      699 GETTABLEKS                       R11 R6 K2 ["blockIndex"]
      701 LOADN                            R12 1
      702 JUMPIFNOTLT                      R12 R11 ; [+192]
      704 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      706 SUBK                             R12 R13 K10 [1]
      707 GETTABLE                         R11 R7 R12
      708 JUMPIFNOT                        R11 ; [+91]
      709 GETTABLEKS                       R13 R11 K7 ["name"]
      711 LOADB                            R12 1
      712 JUMPIFEQKS                       R13 K24 ["PARAGRAPH"] ; [+11]
      714 LOADB                            R12 1
      715 JUMPIFEQKS                       R13 K37 ["HEADING"] ; [+8]
      717 LOADB                            R12 1
      718 JUMPIFEQKS                       R13 K38 ["QUOTE"] ; [+5]
      720 JUMPIFEQKS                       R13 K39 ["LIST_ITEM"] ; [+2]
      722 LOADB                            R12 0 +1
      723 LOADB                            R12 1
      724 JUMPIFNOT                        R12 ; [+75]
      725 GETTABLEKS                       R13 R8 K7 ["name"]
      727 LOADB                            R12 1
      728 JUMPIFEQKS                       R13 K24 ["PARAGRAPH"] ; [+11]
      730 LOADB                            R12 1
      731 JUMPIFEQKS                       R13 K37 ["HEADING"] ; [+8]
      733 LOADB                            R12 1
      734 JUMPIFEQKS                       R13 K38 ["QUOTE"] ; [+5]
      736 JUMPIFEQKS                       R13 K39 ["LIST_ITEM"] ; [+2]
      738 LOADB                            R12 0 +1
      739 LOADB                            R12 1
      740 JUMPIFNOT                        R12 ; [+59]
      741 GETTABLEKS                       R13 R11 K9 ["children"]
      743 JUMPIF                           R13 ; [+2]
      744 NEWTABLE                         R13 0 0
      746 LOADN                            R14 0
      747 MOVE                             R15 R13
      748 LOADNIL                          R16
      749 LOADNIL                          R17
      750 FORGPREP                         R15
      751 GETUPVAL                         R20 9
      752 MOVE                             R21 R19
      753 CALL                             R20 1 1
      754 ADD                              R14 R14 R20
      755 FORGLOOP                         R15 2 ; [-5]
      757 MOVE                             R12 R14
      758 GETUPVAL                         R13 10
      759 GETTABLEKS                       R14 R11 K9 ["children"]
      761 JUMPIF                           R14 ; [+2]
      762 NEWTABLE                         R14 0 0
      764 GETTABLEKS                       R15 R8 K9 ["children"]
      766 JUMPIF                           R15 ; [+2]
      767 NEWTABLE                         R15 0 0
      769 CALL                             R13 2 1
      770 MOVE                             R14 R2
      771 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      773 SUBK                             R16 R17 K10 [1]
      774 GETTABLE                         R15 R1 R16
      775 GETTABLEKS                       R15 R15 K9 ["children"]
      777 CALL                             R14 1 1
      778 MOVE                             R16 R13
      779 NAMECALL                         R14 R14 K18 ["set"]
      781 CALL                             R14 2 0
      782 MOVE                             R14 R2
      783 MOVE                             R15 R1
      784 CALL                             R14 1 1
      785 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      787 NAMECALL                         R14 R14 K22 ["remove"]
      789 CALL                             R14 2 0
      790 MOVE                             R14 R3
      791 GETUPVAL                         R15 8
      792 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      794 SUBK                             R16 R17 K10 [1]
      795 MOVE                             R17 R13
      796 MOVE                             R18 R12
      797 CALL                             R15 3 -1
      798 CALL                             R14 -1 0
      799 RETURN                           R0 0
      800 GETTABLEKS                       R13 R8 K7 ["name"]
      802 LOADB                            R12 1
      803 JUMPIFEQKS                       R13 K24 ["PARAGRAPH"] ; [+11]
      805 LOADB                            R12 1
      806 JUMPIFEQKS                       R13 K37 ["HEADING"] ; [+8]
      808 LOADB                            R12 1
      809 JUMPIFEQKS                       R13 K38 ["QUOTE"] ; [+5]
      811 JUMPIFEQKS                       R13 K39 ["LIST_ITEM"] ; [+2]
      813 LOADB                            R12 0 +1
      814 LOADB                            R12 1
      815 JUMPIF                           R12 ; [+26]
      816 MOVE                             R12 R2
      817 MOVE                             R13 R1
      818 CALL                             R12 1 1
      819 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      821 NAMECALL                         R12 R12 K22 ["remove"]
      823 CALL                             R12 2 0
      824 MOVE                             R12 R3
      825 GETUPVAL                         R13 0
      826 GETTABLEKS                       R13 R13 K1 ["createCollapsed"]
      828 LOADN                            R15 1
      829 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      831 SUBK                             R16 R17 K10 [1]
      832 FASTCALL2                        MATH_MAX R15 R16 ; [+3]
      834 GETIMPORT                        R14 K13 [math.max]
      836 CALL                             R14 2 1
      837 LOADN                            R15 1
      838 LOADN                            R16 0
      839 CALL                             R13 3 -1
      840 CALL                             R12 -1 0
      841 RETURN                           R0 0
      842 JUMPIFNOT                        R11 ; [+52]
      843 GETTABLEKS                       R13 R11 K7 ["name"]
      845 LOADB                            R12 1
      846 JUMPIFEQKS                       R13 K24 ["PARAGRAPH"] ; [+11]
      848 LOADB                            R12 1
      849 JUMPIFEQKS                       R13 K37 ["HEADING"] ; [+8]
      851 LOADB                            R12 1
      852 JUMPIFEQKS                       R13 K38 ["QUOTE"] ; [+5]
      854 JUMPIFEQKS                       R13 K39 ["LIST_ITEM"] ; [+2]
      856 LOADB                            R12 0 +1
      857 LOADB                            R12 1
      858 JUMPIF                           R12 ; [+36]
      859 GETTABLEKS                       R13 R8 K9 ["children"]
      861 JUMPIF                           R13 ; [+2]
      862 NEWTABLE                         R13 0 0
      864 LOADN                            R14 0
      865 MOVE                             R15 R13
      866 LOADNIL                          R16
      867 LOADNIL                          R17
      868 FORGPREP                         R15
      869 GETUPVAL                         R20 9
      870 MOVE                             R21 R19
      871 CALL                             R20 1 1
      872 ADD                              R14 R14 R20
      873 FORGLOOP                         R15 2 ; [-5]
      875 MOVE                             R12 R14
      876 JUMPIFNOTEQKN                    R12 K36 [0] ; [+18]
      878 MOVE                             R12 R2
      879 MOVE                             R13 R1
      880 CALL                             R12 1 1
      881 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      883 NAMECALL                         R12 R12 K22 ["remove"]
      885 CALL                             R12 2 0
      886 MOVE                             R12 R3
      887 GETUPVAL                         R13 11
      888 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      890 SUBK                             R14 R15 K10 [1]
      891 MOVE                             R15 R11
      892 LOADB                            R16 1
      893 CALL                             R13 3 -1
      894 CALL                             R12 -1 0
      895 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["isCollapsed"]
        3 MOVE                             R7 R0
        4 CALL                             R6 1 1
        5 JUMPIF                           R6 ; [+22]
        6 GETUPVAL                         R6 1
        7 MOVE                             R7 R0
        8 MOVE                             R8 R1
        9 MOVE                             R9 R2
       10 MOVE                             R10 R5
       11 MOVE                             R11 R4
       12 CALL                             R6 5 1
       13 MOVE                             R7 R3
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K1 ["createCollapsed"]
       17 GETTABLEKS                       R9 R6 K2 ["blockIndex"]
       19 GETTABLEKS                       R10 R6 K3 ["segmentIndex"]
       21 GETTABLEKS                       R11 R6 K4 ["charOffset"]
       23 GETTABLEKS                       R12 R6 K5 ["path"]
       25 CALL                             R8 4 -1
       26 CALL                             R7 -1 0
       27 RETURN                           R0 0
       28 GETTABLEKS                       R6 R0 K6 ["anchor"]
       30 MOVE                             R7 R5
       31 MOVE                             R8 R1
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R9 R6 K2 ["blockIndex"]
       35 GETTABLE                         R8 R7 R9
       36 JUMPIF                           R8 ; [+1]
       37 RETURN                           R0 0
       38 GETTABLEKS                       R10 R8 K7 ["name"]
       40 JUMPIFEQKS                       R10 K8 ["TABLE"] ; [+2]
       42 LOADB                            R9 0 +1
       43 LOADB                            R9 1
       44 JUMPIFNOT                        R9 ; [+110]
       45 GETUPVAL                         R9 2
       46 MOVE                             R10 R8
       47 MOVE                             R11 R6
       48 CALL                             R9 2 3
       49 JUMPIF                           R9 ; [+1]
       50 RETURN                           R0 0
       51 GETTABLEKS                       R12 R9 K9 ["children"]
       53 JUMPIF                           R12 ; [+2]
       54 NEWTABLE                         R12 0 0
       56 LOADN                            R14 0
       57 LOADN                            R15 0
       58 NEWCLOSURE                       R16 P0
       59 CAPTURE                          REF R15
       60 CAPTURE                          VAL R6
       61 CAPTURE                          REF R14
       62 CAPTURE                          VAL R16
       63 MOVE                             R17 R16
       64 MOVE                             R18 R12
       65 CALL                             R17 1 1
       66 OR                               R13 R17 R14
       67 CLOSEUPVALS                      R14
       68 LOADN                            R15 0
       69 MOVE                             R16 R12
       70 LOADNIL                          R17
       71 LOADNIL                          R18
       72 FORGPREP                         R16
       73 GETUPVAL                         R21 3
       74 MOVE                             R22 R20
       75 CALL                             R21 1 1
       76 ADD                              R15 R15 R21
       77 FORGLOOP                         R16 2 ; [-5]
       79 MOVE                             R14 R15
       80 JUMPIFNOTLT                      R13 R14 ; [+73]
       82 GETUPVAL                         R15 4
       83 GETUPVAL                         R16 5
       84 MOVE                             R17 R12
       85 MOVE                             R18 R13
       86 ADDK                             R19 R13 K10 [1]
       87 CALL                             R16 3 1
       88 CALL                             R15 1 1
       89 GETUPVAL                         R16 6
       90 MOVE                             R17 R9
       91 MOVE                             R18 R10
       92 MOVE                             R19 R11
       93 MOVE                             R20 R15
       94 GETTABLEKS                       R21 R6 K2 ["blockIndex"]
       96 MOVE                             R22 R1
       97 MOVE                             R23 R2
       98 CALL                             R16 7 0
       99 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      101 LOADN                            R18 0
      102 LOADN                            R19 0
      103 NEWCLOSURE                       R20 P1
      104 CAPTURE                          REF R18
      105 CAPTURE                          VAL R13
      106 CAPTURE                          REF R19
      107 CAPTURE                          UPVAL U0
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R20
      110 MOVE                             R21 R20
      111 MOVE                             R22 R15
      112 CALL                             R21 1 1
      113 JUMPIFNOT                        R21 ; [+3]
      114 MOVE                             R16 R21
      115 CLOSEUPVALS                      R18
      116 JUMP                             ; [+15]
      117 GETUPVAL                         R22 0
      118 GETTABLEKS                       R22 R22 K1 ["createCollapsed"]
      120 MOVE                             R23 R17
      121 LOADN                            R25 1
      122 FASTCALL2                        MATH_MAX R25 R18 ; [+4]
      124 MOVE                             R26 R18
      125 GETIMPORT                        R24 K13 [math.max]
      127 CALL                             R24 2 1
      128 SUB                              R25 R13 R19
      129 CALL                             R22 3 1
      130 MOVE                             R16 R22
      131 CLOSEUPVALS                      R18
      132 MOVE                             R17 R3
      133 GETUPVAL                         R18 0
      134 GETTABLEKS                       R18 R18 K1 ["createCollapsed"]
      136 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      138 GETTABLEKS                       R20 R16 K6 ["anchor"]
      140 GETTABLEKS                       R20 R20 K3 ["segmentIndex"]
      142 GETTABLEKS                       R21 R16 K6 ["anchor"]
      144 GETTABLEKS                       R21 R21 K4 ["charOffset"]
      146 NEWTABLE                         R22 0 2
      148 MOVE                             R23 R10
      149 MOVE                             R24 R11
      150 SETLIST                          R22 R23 2 [1]
      152 CALL                             R18 4 -1
      153 CALL                             R17 -1 0
      154 RETURN                           R0 0
      155 GETTABLEKS                       R11 R8 K7 ["name"]
      157 JUMPIFEQKS                       R11 K14 ["LIST"] ; [+4]
      159 LOADNIL                          R9
      160 LOADNIL                          R10
      161 JUMP                             ; [+19]
      162 GETTABLEKS                       R12 R6 K5 ["path"]
      164 JUMPIFNOT                        R12 ; [+4]
      165 GETTABLEKS                       R12 R6 K5 ["path"]
      167 GETTABLEN                        R11 R12 1
      168 JUMP                             ; [+1]
      169 LOADNIL                          R11
      170 JUMPIF                           R11 ; [+3]
      171 LOADNIL                          R9
      172 LOADNIL                          R10
      173 JUMP                             ; [+7]
      174 GETTABLEKS                       R12 R8 K9 ["children"]
      176 JUMPIF                           R12 ; [+2]
      177 NEWTABLE                         R12 0 0
      179 GETTABLE                         R9 R12 R11
      180 MOVE                             R10 R11
      181 GETTABLEKS                       R11 R8 K7 ["name"]
      183 JUMPIFNOTEQKS                    R11 K14 ["LIST"] ; [+245]
      185 JUMPIF                           R9 ; [+1]
      186 RETURN                           R0 0
      187 GETTABLEKS                       R11 R8 K9 ["children"]
      189 JUMPIF                           R11 ; [+2]
      190 NEWTABLE                         R11 0 0
      192 GETTABLEKS                       R13 R9 K9 ["children"]
      194 JUMPIF                           R13 ; [+2]
      195 NEWTABLE                         R13 0 0
      197 LOADN                            R14 0
      198 LOADN                            R15 0
      199 NEWCLOSURE                       R16 P0
      200 CAPTURE                          REF R15
      201 CAPTURE                          VAL R6
      202 CAPTURE                          REF R14
      203 CAPTURE                          VAL R16
      204 MOVE                             R17 R16
      205 MOVE                             R18 R13
      206 CALL                             R17 1 1
      207 OR                               R12 R17 R14
      208 CLOSEUPVALS                      R14
      209 GETTABLEKS                       R14 R9 K9 ["children"]
      211 JUMPIF                           R14 ; [+2]
      212 NEWTABLE                         R14 0 0
      214 LOADN                            R15 0
      215 MOVE                             R16 R14
      216 LOADNIL                          R17
      217 LOADNIL                          R18
      218 FORGPREP                         R16
      219 GETUPVAL                         R21 3
      220 MOVE                             R22 R20
      221 CALL                             R21 1 1
      222 ADD                              R15 R15 R21
      223 FORGLOOP                         R16 2 ; [-5]
      225 MOVE                             R13 R15
      226 JUMPIFNOTLT                      R12 R13 ; [+93]
      228 GETUPVAL                         R14 4
      229 GETUPVAL                         R15 5
      230 GETTABLEKS                       R16 R9 K9 ["children"]
      232 JUMPIF                           R16 ; [+2]
      233 NEWTABLE                         R16 0 0
      235 MOVE                             R17 R12
      236 ADDK                             R18 R12 K10 [1]
      237 CALL                             R15 3 1
      238 CALL                             R14 1 1
      239 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      241 MOVE                             R16 R2
      242 GETTABLE                         R18 R1 R15
      243 GETTABLEKS                       R18 R18 K9 ["children"]
      245 GETTABLE                         R17 R18 R10
      246 CALL                             R16 1 1
      247 DUPTABLE                         R18 K17 [{"name", "children", "attributes", "index"}]
      248 GETTABLEKS                       R19 R9 K7 ["name"]
      250 SETTABLEKS                       R19 R18 K7 ["name"]
      252 SETTABLEKS                       R14 R18 K9 ["children"]
      254 GETTABLEKS                       R19 R9 K15 ["attributes"]
      256 SETTABLEKS                       R19 R18 K15 ["attributes"]
      258 GETTABLEKS                       R19 R9 K16 ["index"]
      260 SETTABLEKS                       R19 R18 K16 ["index"]
      262 NAMECALL                         R16 R16 K18 ["set"]
      264 CALL                             R16 2 0
      265 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      267 LOADN                            R17 0
      268 LOADN                            R18 0
      269 NEWCLOSURE                       R19 P1
      270 CAPTURE                          REF R17
      271 CAPTURE                          VAL R12
      272 CAPTURE                          REF R18
      273 CAPTURE                          UPVAL U0
      274 CAPTURE                          VAL R16
      275 CAPTURE                          VAL R19
      276 MOVE                             R20 R19
      277 MOVE                             R21 R14
      278 CALL                             R20 1 1
      279 JUMPIFNOT                        R20 ; [+3]
      280 MOVE                             R15 R20
      281 CLOSEUPVALS                      R17
      282 JUMP                             ; [+15]
      283 GETUPVAL                         R21 0
      284 GETTABLEKS                       R21 R21 K1 ["createCollapsed"]
      286 MOVE                             R22 R16
      287 LOADN                            R24 1
      288 FASTCALL2                        MATH_MAX R24 R17 ; [+4]
      290 MOVE                             R25 R17
      291 GETIMPORT                        R23 K13 [math.max]
      293 CALL                             R23 2 1
      294 SUB                              R24 R12 R18
      295 CALL                             R21 3 1
      296 MOVE                             R15 R21
      297 CLOSEUPVALS                      R17
      298 MOVE                             R16 R3
      299 GETUPVAL                         R17 0
      300 GETTABLEKS                       R17 R17 K1 ["createCollapsed"]
      302 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      304 GETTABLEKS                       R19 R15 K6 ["anchor"]
      306 GETTABLEKS                       R19 R19 K3 ["segmentIndex"]
      308 GETTABLEKS                       R20 R15 K6 ["anchor"]
      310 GETTABLEKS                       R20 R20 K4 ["charOffset"]
      312 NEWTABLE                         R21 0 1
      314 MOVE                             R22 R10
      315 SETLIST                          R21 R22 1 [1]
      317 CALL                             R17 4 -1
      318 CALL                             R16 -1 0
      319 RETURN                           R0 0
      320 LENGTH                           R14 R11
      321 JUMPIFNOTLT                      R10 R14 ; [+106]
      323 ADDK                             R15 R10 K10 [1]
      324 GETTABLE                         R14 R11 R15
      325 GETUPVAL                         R15 7
      326 GETTABLEKS                       R16 R9 K9 ["children"]
      328 JUMPIF                           R16 ; [+2]
      329 NEWTABLE                         R16 0 0
      331 GETTABLEKS                       R17 R14 K9 ["children"]
      333 JUMPIF                           R17 ; [+2]
      334 NEWTABLE                         R17 0 0
      336 CALL                             R15 2 1
      337 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      339 MOVE                             R17 R2
      340 GETTABLE                         R19 R1 R16
      341 GETTABLEKS                       R19 R19 K9 ["children"]
      343 GETTABLE                         R18 R19 R10
      344 CALL                             R17 1 1
      345 DUPTABLE                         R19 K17 [{"name", "children", "attributes", "index"}]
      346 GETTABLEKS                       R20 R9 K7 ["name"]
      348 SETTABLEKS                       R20 R19 K7 ["name"]
      350 SETTABLEKS                       R15 R19 K9 ["children"]
      352 GETTABLEKS                       R20 R9 K15 ["attributes"]
      354 SETTABLEKS                       R20 R19 K15 ["attributes"]
      356 GETTABLEKS                       R20 R9 K16 ["index"]
      358 SETTABLEKS                       R20 R19 K16 ["index"]
      360 NAMECALL                         R17 R17 K18 ["set"]
      362 CALL                             R17 2 0
      363 MOVE                             R16 R2
      364 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      366 GETTABLE                         R17 R1 R18
      367 GETTABLEKS                       R17 R17 K9 ["children"]
      369 CALL                             R16 1 1
      370 ADDK                             R18 R10 K10 [1]
      371 NAMECALL                         R16 R16 K19 ["remove"]
      373 CALL                             R16 2 0
      374 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      376 LOADN                            R18 0
      377 LOADN                            R19 0
      378 NEWCLOSURE                       R20 P1
      379 CAPTURE                          REF R18
      380 CAPTURE                          VAL R12
      381 CAPTURE                          REF R19
      382 CAPTURE                          UPVAL U0
      383 CAPTURE                          VAL R17
      384 CAPTURE                          VAL R20
      385 MOVE                             R21 R20
      386 MOVE                             R22 R15
      387 CALL                             R21 1 1
      388 JUMPIFNOT                        R21 ; [+3]
      389 MOVE                             R16 R21
      390 CLOSEUPVALS                      R18
      391 JUMP                             ; [+15]
      392 GETUPVAL                         R22 0
      393 GETTABLEKS                       R22 R22 K1 ["createCollapsed"]
      395 MOVE                             R23 R17
      396 LOADN                            R25 1
      397 FASTCALL2                        MATH_MAX R25 R18 ; [+4]
      399 MOVE                             R26 R18
      400 GETIMPORT                        R24 K13 [math.max]
      402 CALL                             R24 2 1
      403 SUB                              R25 R12 R19
      404 CALL                             R22 3 1
      405 MOVE                             R16 R22
      406 CLOSEUPVALS                      R18
      407 MOVE                             R17 R3
      408 GETUPVAL                         R18 0
      409 GETTABLEKS                       R18 R18 K1 ["createCollapsed"]
      411 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      413 GETTABLEKS                       R20 R16 K6 ["anchor"]
      415 GETTABLEKS                       R20 R20 K3 ["segmentIndex"]
      417 GETTABLEKS                       R21 R16 K6 ["anchor"]
      419 GETTABLEKS                       R21 R21 K4 ["charOffset"]
      421 NEWTABLE                         R22 0 1
      423 MOVE                             R23 R10
      424 SETLIST                          R22 R23 1 [1]
      426 CALL                             R18 4 -1
      427 CALL                             R17 -1 0
      428 RETURN                           R0 0
      429 GETTABLEKS                       R12 R8 K7 ["name"]
      431 JUMPIFEQKS                       R12 K20 ["CODE_BLOCK"] ; [+2]
      433 LOADB                            R11 0 +1
      434 LOADB                            R11 1
      435 JUMPIFNOT                        R11 ; [+41]
      436 GETTABLEKS                       R12 R8 K22 ["text"]
      438 ORK                              R11 R12 K21 [""]
      439 GETUPVAL                         R12 8
      440 MOVE                             R13 R6
      441 MOVE                             R14 R11
      442 CALL                             R12 2 1
      443 LENGTH                           R13 R11
      444 JUMPIFNOTLT                      R12 R13 ; [+31]
      446 LOADN                            R18 1
      447 MOVE                             R19 R12
      448 NAMECALL                         R16 R11 K23 ["sub"]
      450 CALL                             R16 3 1
      451 MOVE                             R14 R16
      452 ADDK                             R17 R12 K24 [2]
      453 NAMECALL                         R15 R11 K23 ["sub"]
      455 CALL                             R15 2 1
      456 CONCAT                           R13 R14 R15
      457 MOVE                             R14 R2
      458 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      460 GETTABLE                         R15 R1 R16
      461 GETTABLEKS                       R15 R15 K22 ["text"]
      463 CALL                             R14 1 1
      464 MOVE                             R16 R13
      465 NAMECALL                         R14 R14 K18 ["set"]
      467 CALL                             R14 2 0
      468 MOVE                             R14 R3
      469 GETUPVAL                         R15 9
      470 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      472 MOVE                             R17 R13
      473 MOVE                             R18 R12
      474 CALL                             R15 3 -1
      475 CALL                             R14 -1 0
      476 RETURN                           R0 0
      477 GETTABLEKS                       R12 R8 K7 ["name"]
      479 LOADB                            R11 1
      480 JUMPIFEQKS                       R12 K25 ["PARAGRAPH"] ; [+11]
      482 LOADB                            R11 1
      483 JUMPIFEQKS                       R12 K26 ["HEADING"] ; [+8]
      485 LOADB                            R11 1
      486 JUMPIFEQKS                       R12 K27 ["QUOTE"] ; [+5]
      488 JUMPIFEQKS                       R12 K28 ["LIST_ITEM"] ; [+2]
      490 LOADB                            R11 0 +1
      491 LOADB                            R11 1
      492 JUMPIFNOT                        R11 ; [+161]
      493 GETTABLEKS                       R12 R8 K9 ["children"]
      495 JUMPIF                           R12 ; [+2]
      496 NEWTABLE                         R12 0 0
      498 LOADN                            R13 0
      499 LOADN                            R14 0
      500 NEWCLOSURE                       R15 P0
      501 CAPTURE                          REF R14
      502 CAPTURE                          VAL R6
      503 CAPTURE                          REF R13
      504 CAPTURE                          VAL R15
      505 MOVE                             R16 R15
      506 MOVE                             R17 R12
      507 CALL                             R16 1 1
      508 OR                               R11 R16 R13
      509 CLOSEUPVALS                      R13
      510 GETTABLEKS                       R13 R8 K9 ["children"]
      512 JUMPIF                           R13 ; [+2]
      513 NEWTABLE                         R13 0 0
      515 LOADN                            R14 0
      516 MOVE                             R15 R13
      517 LOADNIL                          R16
      518 LOADNIL                          R17
      519 FORGPREP                         R15
      520 GETUPVAL                         R20 3
      521 MOVE                             R21 R19
      522 CALL                             R20 1 1
      523 ADD                              R14 R14 R20
      524 FORGLOOP                         R15 2 ; [-5]
      526 MOVE                             R12 R14
      527 JUMPIFNOTLT                      R11 R12 ; [+32]
      529 GETUPVAL                         R13 4
      530 GETUPVAL                         R14 5
      531 GETTABLEKS                       R15 R8 K9 ["children"]
      533 JUMPIF                           R15 ; [+2]
      534 NEWTABLE                         R15 0 0
      536 MOVE                             R16 R11
      537 ADDK                             R17 R11 K10 [1]
      538 CALL                             R14 3 1
      539 CALL                             R13 1 1
      540 MOVE                             R14 R2
      541 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      543 GETTABLE                         R15 R1 R16
      544 GETTABLEKS                       R15 R15 K9 ["children"]
      546 CALL                             R14 1 1
      547 MOVE                             R16 R13
      548 NAMECALL                         R14 R14 K18 ["set"]
      550 CALL                             R14 2 0
      551 MOVE                             R14 R3
      552 GETUPVAL                         R15 10
      553 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      555 MOVE                             R17 R13
      556 MOVE                             R18 R11
      557 CALL                             R15 3 -1
      558 CALL                             R14 -1 0
      559 RETURN                           R0 0
      560 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      562 LENGTH                           R14 R7
      563 JUMPIFNOTLT                      R13 R14 ; [+121]
      565 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      567 ADDK                             R14 R15 K10 [1]
      568 GETTABLE                         R13 R7 R14
      569 JUMPIFNOT                        R13 ; [+57]
      570 GETTABLEKS                       R15 R13 K7 ["name"]
      572 LOADB                            R14 1
      573 JUMPIFEQKS                       R15 K25 ["PARAGRAPH"] ; [+11]
      575 LOADB                            R14 1
      576 JUMPIFEQKS                       R15 K26 ["HEADING"] ; [+8]
      578 LOADB                            R14 1
      579 JUMPIFEQKS                       R15 K27 ["QUOTE"] ; [+5]
      581 JUMPIFEQKS                       R15 K28 ["LIST_ITEM"] ; [+2]
      583 LOADB                            R14 0 +1
      584 LOADB                            R14 1
      585 JUMPIFNOT                        R14 ; [+41]
      586 GETUPVAL                         R14 7
      587 GETTABLEKS                       R15 R8 K9 ["children"]
      589 JUMPIF                           R15 ; [+2]
      590 NEWTABLE                         R15 0 0
      592 GETTABLEKS                       R16 R13 K9 ["children"]
      594 JUMPIF                           R16 ; [+2]
      595 NEWTABLE                         R16 0 0
      597 CALL                             R14 2 1
      598 MOVE                             R15 R2
      599 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      601 GETTABLE                         R16 R1 R17
      602 GETTABLEKS                       R16 R16 K9 ["children"]
      604 CALL                             R15 1 1
      605 MOVE                             R17 R14
      606 NAMECALL                         R15 R15 K18 ["set"]
      608 CALL                             R15 2 0
      609 MOVE                             R15 R2
      610 MOVE                             R16 R1
      611 CALL                             R15 1 1
      612 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      614 ADDK                             R17 R18 K10 [1]
      615 NAMECALL                         R15 R15 K19 ["remove"]
      617 CALL                             R15 2 0
      618 MOVE                             R15 R3
      619 GETUPVAL                         R16 10
      620 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      622 MOVE                             R18 R14
      623 MOVE                             R19 R11
      624 CALL                             R16 3 -1
      625 CALL                             R15 -1 0
      626 RETURN                           R0 0
      627 JUMPIFNOT                        R13 ; [+57]
      628 GETTABLEKS                       R15 R13 K7 ["name"]
      630 LOADB                            R14 1
      631 JUMPIFEQKS                       R15 K25 ["PARAGRAPH"] ; [+11]
      633 LOADB                            R14 1
      634 JUMPIFEQKS                       R15 K26 ["HEADING"] ; [+8]
      636 LOADB                            R14 1
      637 JUMPIFEQKS                       R15 K27 ["QUOTE"] ; [+5]
      639 JUMPIFEQKS                       R15 K28 ["LIST_ITEM"] ; [+2]
      641 LOADB                            R14 0 +1
      642 LOADB                            R14 1
      643 JUMPIF                           R14 ; [+41]
      644 MOVE                             R14 R2
      645 MOVE                             R15 R1
      646 CALL                             R14 1 1
      647 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      649 ADDK                             R16 R17 K10 [1]
      650 NAMECALL                         R14 R14 K19 ["remove"]
      652 CALL                             R14 2 0
      653 RETURN                           R0 0
      654 MOVE                             R11 R2
      655 MOVE                             R12 R1
      656 CALL                             R11 1 1
      657 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      659 NAMECALL                         R11 R11 K19 ["remove"]
      661 CALL                             R11 2 0
      662 MOVE                             R11 R3
      663 GETUPVAL                         R12 0
      664 GETTABLEKS                       R12 R12 K1 ["createCollapsed"]
      666 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      668 LOADN                            R16 1
      669 LENGTH                           R18 R7
      670 SUBK                             R17 R18 K10 [1]
      671 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      673 GETIMPORT                        R15 K13 [math.max]
      675 CALL                             R15 2 1
      676 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
      678 GETIMPORT                        R13 K30 [math.min]
      680 CALL                             R13 2 1
      681 LOADN                            R14 1
      682 LOADN                            R15 0
      683 CALL                             R12 3 -1
      684 CALL                             R11 -1 0
      685 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["isCollapsed"]
        3 MOVE                             R8 R0
        4 CALL                             R7 1 1
        5 JUMPIFNOT                        R7 ; [+3]
        6 GETTABLEKS                       R6 R0 K1 ["anchor"]
        8 JUMP                             ; [+7]
        9 GETUPVAL                         R6 1
       10 MOVE                             R7 R0
       11 MOVE                             R8 R1
       12 MOVE                             R9 R2
       13 MOVE                             R10 R5
       14 MOVE                             R11 R4
       15 CALL                             R6 5 1
       16 MOVE                             R7 R5
       17 MOVE                             R8 R1
       18 CALL                             R7 1 1
       19 GETTABLEKS                       R9 R6 K2 ["blockIndex"]
       21 GETTABLE                         R8 R7 R9
       22 JUMPIF                           R8 ; [+1]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R10 R8 K3 ["name"]
       26 JUMPIFEQKS                       R10 K4 ["TABLE"] ; [+2]
       28 LOADB                            R9 0 +1
       29 LOADB                            R9 1
       30 JUMPIFNOT                        R9 ; [+118]
       31 GETUPVAL                         R9 2
       32 MOVE                             R10 R8
       33 MOVE                             R11 R6
       34 CALL                             R9 2 3
       35 JUMPIFNOT                        R10 ; [+112]
       36 JUMPIFNOT                        R11 ; [+111]
       37 GETTABLEKS                       R12 R8 K5 ["children"]
       39 JUMPIF                           R12 ; [+2]
       40 NEWTABLE                         R12 0 0
       42 LENGTH                           R13 R12
       43 JUMPIFNOTLT                      R10 R13 ; [+35]
       45 ADDK                             R14 R10 K6 [1]
       46 GETTABLE                         R13 R12 R14
       47 GETTABLEKS                       R14 R13 K5 ["children"]
       49 JUMPIF                           R14 ; [+2]
       50 NEWTABLE                         R14 0 0
       52 LENGTH                           R17 R14
       53 FASTCALL2                        MATH_MIN R11 R17 ; [+4]
       55 MOVE                             R16 R11
       56 GETIMPORT                        R15 K9 [math.min]
       58 CALL                             R15 2 1
       59 LOADN                            R16 0
       60 JUMPIFNOTLT                      R16 R15 ; [+87]
       62 MOVE                             R16 R3
       63 GETUPVAL                         R17 0
       64 GETTABLEKS                       R17 R17 K10 ["createCollapsed"]
       66 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
       68 LOADN                            R19 1
       69 LOADN                            R20 0
       70 NEWTABLE                         R21 0 2
       72 ADDK                             R22 R10 K6 [1]
       73 MOVE                             R23 R15
       74 SETLIST                          R21 R22 2 [1]
       76 CALL                             R17 4 -1
       77 CALL                             R16 -1 0
       78 RETURN                           R0 0
       79 MOVE                             R13 R5
       80 MOVE                             R14 R1
       81 CALL                             R13 1 1
       82 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
       84 LENGTH                           R15 R13
       85 JUMPIFNOTLT                      R14 R15 ; [+16]
       87 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
       89 ADDK                             R15 R16 K6 [1]
       90 GETTABLE                         R14 R13 R15
       91 JUMPIFNOT                        R14 ; [+56]
       92 MOVE                             R15 R3
       93 GETUPVAL                         R16 3
       94 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
       96 ADDK                             R17 R18 K6 [1]
       97 MOVE                             R18 R14
       98 LOADB                            R19 0
       99 CALL                             R16 3 -1
      100 CALL                             R15 -1 0
      101 RETURN                           R0 0
      102 DUPTABLE                         R14 K12 [{"name", "children", "index"}]
      103 LOADK                            R15 K13 ["PARAGRAPH"]
      104 SETTABLEKS                       R15 R14 K3 ["name"]
      106 NEWTABLE                         R15 0 1
      108 DUPTABLE                         R16 K15 [{"name", "children", "text"}]
      109 LOADK                            R17 K16 ["TEXT"]
      110 SETTABLEKS                       R17 R16 K3 ["name"]
      112 NEWTABLE                         R17 0 0
      114 SETTABLEKS                       R17 R16 K5 ["children"]
      116 LOADK                            R17 K17 [""]
      117 SETTABLEKS                       R17 R16 K14 ["text"]
      119 SETLIST                          R15 R16 1 [1]
      121 SETTABLEKS                       R15 R14 K5 ["children"]
      123 MOVE                             R15 R4
      124 CALL                             R15 0 1
      125 SETTABLEKS                       R15 R14 K11 ["index"]
      127 MOVE                             R15 R2
      128 MOVE                             R16 R1
      129 CALL                             R15 1 1
      130 MOVE                             R17 R14
      131 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      133 ADDK                             R18 R19 K6 [1]
      134 NAMECALL                         R15 R15 K18 ["insert"]
      136 CALL                             R15 3 0
      137 MOVE                             R15 R3
      138 GETUPVAL                         R16 0
      139 GETTABLEKS                       R16 R16 K10 ["createCollapsed"]
      141 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      143 ADDK                             R17 R18 K6 [1]
      144 LOADN                            R18 1
      145 LOADN                            R19 0
      146 CALL                             R16 3 -1
      147 CALL                             R15 -1 0
      148 RETURN                           R0 0
      149 GETTABLEKS                       R9 R8 K3 ["name"]
      151 JUMPIFNOTEQKS                    R9 K19 ["LIST"] ; [+366]
      153 GETTABLEKS                       R9 R8 K5 ["children"]
      155 JUMPIF                           R9 ; [+2]
      156 NEWTABLE                         R9 0 0
      158 GETTABLEKS                       R11 R6 K20 ["path"]
      160 JUMPIFNOT                        R11 ; [+4]
      161 GETTABLEKS                       R11 R6 K20 ["path"]
      163 GETTABLEN                        R10 R11 1
      164 JUMP                             ; [+1]
      165 LOADNIL                          R10
      166 JUMPIFNOT                        R10 ; [+350]
      167 GETTABLE                         R11 R9 R10
      168 JUMPIFNOT                        R11 ; [+348]
      169 GETTABLE                         R11 R9 R10
      170 GETTABLEKS                       R13 R11 K5 ["children"]
      172 JUMPIF                           R13 ; [+2]
      173 NEWTABLE                         R13 0 0
      175 LOADN                            R14 0
      176 LOADN                            R15 0
      177 NEWCLOSURE                       R16 P0
      178 CAPTURE                          REF R15
      179 CAPTURE                          VAL R6
      180 CAPTURE                          REF R14
      181 CAPTURE                          VAL R16
      182 MOVE                             R17 R16
      183 MOVE                             R18 R13
      184 CALL                             R17 1 1
      185 OR                               R12 R17 R14
      186 CLOSEUPVALS                      R14
      187 GETUPVAL                         R13 4
      188 GETTABLEKS                       R14 R11 K5 ["children"]
      190 JUMPIF                           R14 ; [+2]
      191 NEWTABLE                         R14 0 0
      193 MOVE                             R15 R12
      194 CALL                             R13 2 2
      195 GETTABLEKS                       R16 R11 K5 ["children"]
      197 JUMPIF                           R16 ; [+2]
      198 NEWTABLE                         R16 0 0
      200 LOADN                            R17 0
      201 MOVE                             R18 R16
      202 LOADNIL                          R19
      203 LOADNIL                          R20
      204 FORGPREP                         R18
      205 GETUPVAL                         R23 5
      206 MOVE                             R24 R22
      207 CALL                             R23 1 1
      208 ADD                              R17 R17 R23
      209 FORGLOOP                         R18 2 ; [-5]
      211 MOVE                             R15 R17
      212 JUMPIFNOTEQKN                    R15 K21 [0] ; [+221]
      214 LENGTH                           R15 R9
      215 JUMPIFNOTEQKN                    R15 K6 [1] ; [+45]
      217 MOVE                             R15 R2
      218 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      220 GETTABLE                         R16 R1 R17
      221 CALL                             R15 1 1
      222 DUPTABLE                         R17 K12 [{"name", "children", "index"}]
      223 LOADK                            R18 K13 ["PARAGRAPH"]
      224 SETTABLEKS                       R18 R17 K3 ["name"]
      226 NEWTABLE                         R18 0 1
      228 DUPTABLE                         R19 K15 [{"name", "children", "text"}]
      229 LOADK                            R20 K16 ["TEXT"]
      230 SETTABLEKS                       R20 R19 K3 ["name"]
      232 NEWTABLE                         R20 0 0
      234 SETTABLEKS                       R20 R19 K5 ["children"]
      236 LOADK                            R20 K17 [""]
      237 SETTABLEKS                       R20 R19 K14 ["text"]
      239 SETLIST                          R18 R19 1 [1]
      241 SETTABLEKS                       R18 R17 K5 ["children"]
      243 GETTABLEKS                       R18 R8 K11 ["index"]
      245 SETTABLEKS                       R18 R17 K11 ["index"]
      247 NAMECALL                         R15 R15 K22 ["set"]
      249 CALL                             R15 2 0
      250 MOVE                             R15 R3
      251 GETUPVAL                         R16 0
      252 GETTABLEKS                       R16 R16 K10 ["createCollapsed"]
      254 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      256 LOADN                            R18 1
      257 LOADN                            R19 0
      258 CALL                             R16 3 -1
      259 CALL                             R15 -1 0
      260 RETURN                           R0 0
      261 JUMPIFNOTEQKN                    R10 K6 [1] ; [+57]
      263 MOVE                             R15 R2
      264 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      266 GETTABLE                         R16 R1 R17
      267 GETTABLEKS                       R16 R16 K5 ["children"]
      269 CALL                             R15 1 1
      270 LOADN                            R17 1
      271 NAMECALL                         R15 R15 K23 ["remove"]
      273 CALL                             R15 2 0
      274 DUPTABLE                         R15 K12 [{"name", "children", "index"}]
      275 LOADK                            R16 K13 ["PARAGRAPH"]
      276 SETTABLEKS                       R16 R15 K3 ["name"]
      278 NEWTABLE                         R16 0 1
      280 DUPTABLE                         R17 K15 [{"name", "children", "text"}]
      281 LOADK                            R18 K16 ["TEXT"]
      282 SETTABLEKS                       R18 R17 K3 ["name"]
      284 NEWTABLE                         R18 0 0
      286 SETTABLEKS                       R18 R17 K5 ["children"]
      288 LOADK                            R18 K17 [""]
      289 SETTABLEKS                       R18 R17 K14 ["text"]
      291 SETLIST                          R16 R17 1 [1]
      293 SETTABLEKS                       R16 R15 K5 ["children"]
      295 MOVE                             R16 R4
      296 CALL                             R16 0 1
      297 SETTABLEKS                       R16 R15 K11 ["index"]
      299 MOVE                             R16 R2
      300 MOVE                             R17 R1
      301 CALL                             R16 1 1
      302 MOVE                             R18 R15
      303 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      305 NAMECALL                         R16 R16 K18 ["insert"]
      307 CALL                             R16 3 0
      308 MOVE                             R16 R3
      309 GETUPVAL                         R17 0
      310 GETTABLEKS                       R17 R17 K10 ["createCollapsed"]
      312 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      314 LOADN                            R19 1
      315 LOADN                            R20 0
      316 CALL                             R17 3 -1
      317 CALL                             R16 -1 0
      318 RETURN                           R0 0
      319 NEWTABLE                         R15 0 0
      321 ADDK                             R18 R10 K6 [1]
      322 LENGTH                           R16 R9
      323 LOADN                            R17 1
      324 FORNPREP                         R16
      325 GETTABLE                         R21 R9 R18
      326 FASTCALL2                        TABLE_INSERT R15 R21 ; [+4]
      328 MOVE                             R20 R15
      329 GETIMPORT                        R19 K25 [table.insert]
      331 CALL                             R19 2 0
      332 FORNLOOP                         R16
      333 LENGTH                           R18 R9
      334 MOVE                             R16 R10
      335 LOADN                            R17 255
      336 FORNPREP                         R16
      337 MOVE                             R19 R2
      338 GETTABLEKS                       R21 R6 K2 ["blockIndex"]
      340 GETTABLE                         R20 R1 R21
      341 GETTABLEKS                       R20 R20 K5 ["children"]
      343 CALL                             R19 1 1
      344 MOVE                             R21 R18
      345 NAMECALL                         R19 R19 K23 ["remove"]
      347 CALL                             R19 2 0
      348 FORNLOOP                         R16
      349 DUPTABLE                         R16 K12 [{"name", "children", "index"}]
      350 LOADK                            R17 K13 ["PARAGRAPH"]
      351 SETTABLEKS                       R17 R16 K3 ["name"]
      353 NEWTABLE                         R17 0 1
      355 DUPTABLE                         R18 K15 [{"name", "children", "text"}]
      356 LOADK                            R19 K16 ["TEXT"]
      357 SETTABLEKS                       R19 R18 K3 ["name"]
      359 NEWTABLE                         R19 0 0
      361 SETTABLEKS                       R19 R18 K5 ["children"]
      363 LOADK                            R19 K17 [""]
      364 SETTABLEKS                       R19 R18 K14 ["text"]
      366 SETLIST                          R17 R18 1 [1]
      368 SETTABLEKS                       R17 R16 K5 ["children"]
      370 MOVE                             R17 R4
      371 CALL                             R17 0 1
      372 SETTABLEKS                       R17 R16 K11 ["index"]
      374 MOVE                             R17 R2
      375 MOVE                             R18 R1
      376 CALL                             R17 1 1
      377 MOVE                             R19 R16
      378 GETTABLEKS                       R21 R6 K2 ["blockIndex"]
      380 ADDK                             R20 R21 K6 [1]
      381 NAMECALL                         R17 R17 K18 ["insert"]
      383 CALL                             R17 3 0
      384 LENGTH                           R17 R15
      385 LOADN                            R18 0
      386 JUMPIFNOTLT                      R18 R17 ; [+35]
      388 DUPTABLE                         R17 K27 [{"name", "children", "attributes", "index"}]
      389 LOADK                            R18 K19 ["LIST"]
      390 SETTABLEKS                       R18 R17 K3 ["name"]
      392 SETTABLEKS                       R15 R17 K5 ["children"]
      394 DUPTABLE                         R18 K29 [{"ordered"}]
      395 GETTABLEKS                       R20 R8 K26 ["attributes"]
      397 JUMPIFNOT                        R20 ; [+5]
      398 GETTABLEKS                       R19 R8 K26 ["attributes"]
      400 GETTABLEKS                       R19 R19 K28 ["ordered"]
      402 JUMPIF                           R19 ; [+1]
      403 LOADB                            R19 0
      404 SETTABLEKS                       R19 R18 K28 ["ordered"]
      406 SETTABLEKS                       R18 R17 K26 ["attributes"]
      408 MOVE                             R18 R4
      409 CALL                             R18 0 1
      410 SETTABLEKS                       R18 R17 K11 ["index"]
      412 MOVE                             R18 R2
      413 MOVE                             R19 R1
      414 CALL                             R18 1 1
      415 MOVE                             R20 R17
      416 GETTABLEKS                       R22 R6 K2 ["blockIndex"]
      418 ADDK                             R21 R22 K30 [2]
      419 NAMECALL                         R18 R18 K18 ["insert"]
      421 CALL                             R18 3 0
      422 MOVE                             R17 R3
      423 GETUPVAL                         R18 0
      424 GETTABLEKS                       R18 R18 K10 ["createCollapsed"]
      426 GETTABLEKS                       R20 R6 K2 ["blockIndex"]
      428 ADDK                             R19 R20 K6 [1]
      429 LOADN                            R20 1
      430 LOADN                            R21 0
      431 CALL                             R18 3 -1
      432 CALL                             R17 -1 0
      433 RETURN                           R0 0
      434 GETUPVAL                         R15 6
      435 MOVE                             R16 R13
      436 CALL                             R15 1 1
      437 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      439 MOVE                             R17 R2
      440 GETTABLE                         R19 R1 R16
      441 GETTABLEKS                       R19 R19 K5 ["children"]
      443 GETTABLE                         R18 R19 R10
      444 CALL                             R17 1 1
      445 DUPTABLE                         R19 K27 [{"name", "children", "attributes", "index"}]
      446 GETTABLEKS                       R20 R11 K3 ["name"]
      448 SETTABLEKS                       R20 R19 K3 ["name"]
      450 SETTABLEKS                       R15 R19 K5 ["children"]
      452 GETTABLEKS                       R20 R11 K26 ["attributes"]
      454 SETTABLEKS                       R20 R19 K26 ["attributes"]
      456 GETTABLEKS                       R20 R11 K11 ["index"]
      458 SETTABLEKS                       R20 R19 K11 ["index"]
      460 NAMECALL                         R17 R17 K22 ["set"]
      462 CALL                             R17 2 0
      463 DUPTABLE                         R15 K27 [{"name", "children", "attributes", "index"}]
      464 LOADK                            R16 K31 ["LIST_ITEM"]
      465 SETTABLEKS                       R16 R15 K3 ["name"]
      467 GETUPVAL                         R16 6
      468 MOVE                             R17 R14
      469 CALL                             R16 1 1
      470 SETTABLEKS                       R16 R15 K5 ["children"]
      472 DUPTABLE                         R16 K33 [{"prefix"}]
      473 GETTABLEKS                       R18 R11 K26 ["attributes"]
      475 JUMPIFNOT                        R18 ; [+5]
      476 GETTABLEKS                       R17 R11 K26 ["attributes"]
      478 GETTABLEKS                       R17 R17 K32 ["prefix"]
      480 JUMPIF                           R17 ; [+1]
      481 LOADK                            R17 K34 ["-"]
      482 SETTABLEKS                       R17 R16 K32 ["prefix"]
      484 SETTABLEKS                       R16 R15 K26 ["attributes"]
      486 MOVE                             R16 R4
      487 CALL                             R16 0 1
      488 SETTABLEKS                       R16 R15 K11 ["index"]
      490 MOVE                             R16 R2
      491 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      493 GETTABLE                         R17 R1 R18
      494 GETTABLEKS                       R17 R17 K5 ["children"]
      496 CALL                             R16 1 1
      497 MOVE                             R18 R15
      498 ADDK                             R19 R10 K6 [1]
      499 NAMECALL                         R16 R16 K18 ["insert"]
      501 CALL                             R16 3 0
      502 MOVE                             R16 R3
      503 GETUPVAL                         R17 0
      504 GETTABLEKS                       R17 R17 K10 ["createCollapsed"]
      506 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      508 LOADN                            R19 1
      509 LOADN                            R20 0
      510 NEWTABLE                         R21 0 1
      512 ADDK                             R22 R10 K6 [1]
      513 SETLIST                          R21 R22 1 [1]
      515 CALL                             R17 4 -1
      516 CALL                             R16 -1 0
      517 RETURN                           R0 0
      518 GETTABLEKS                       R9 R8 K3 ["name"]
      520 JUMPIFNOTEQKS                    R9 K13 ["PARAGRAPH"] ; [+60]
      522 GETUPVAL                         R9 7
      523 GETTABLEKS                       R10 R8 K5 ["children"]
      525 JUMPIF                           R10 ; [+2]
      526 NEWTABLE                         R10 0 0
      528 CALL                             R9 1 1
      529 LOADK                            R12 K35 ["^```(%w*)$"]
      530 NAMECALL                         R10 R9 K36 ["match"]
      532 CALL                             R10 2 1
      533 JUMPIFEQKNIL                     R10 ; [+47]
      535 MOVE                             R11 R2
      536 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      538 GETTABLE                         R12 R1 R13
      539 CALL                             R11 1 1
      540 DUPTABLE                         R13 K37 [{"name", "children", "text", "attributes", "index"}]
      541 LOADK                            R14 K38 ["CODE_BLOCK"]
      542 SETTABLEKS                       R14 R13 K3 ["name"]
      544 NEWTABLE                         R14 0 0
      546 SETTABLEKS                       R14 R13 K5 ["children"]
      548 LOADK                            R14 K17 [""]
      549 SETTABLEKS                       R14 R13 K14 ["text"]
      551 DUPTABLE                         R14 K40 [{"language"}]
      552 LENGTH                           R16 R10
      553 LOADN                            R17 0
      554 JUMPIFNOTLT                      R17 R16 ; [+3]
      556 MOVE                             R15 R10
      557 JUMP                             ; [+1]
      558 LOADNIL                          R15
      559 SETTABLEKS                       R15 R14 K39 ["language"]
      561 SETTABLEKS                       R14 R13 K26 ["attributes"]
      563 GETTABLEKS                       R14 R8 K11 ["index"]
      565 SETTABLEKS                       R14 R13 K11 ["index"]
      567 NAMECALL                         R11 R11 K22 ["set"]
      569 CALL                             R11 2 0
      570 MOVE                             R11 R3
      571 GETUPVAL                         R12 0
      572 GETTABLEKS                       R12 R12 K10 ["createCollapsed"]
      574 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      576 LOADN                            R14 1
      577 LOADN                            R15 0
      578 CALL                             R12 3 -1
      579 CALL                             R11 -1 0
      580 RETURN                           R0 0
      581 GETTABLEKS                       R9 R8 K3 ["name"]
      583 JUMPIFNOTEQKS                    R9 K13 ["PARAGRAPH"] ; [+80]
      585 GETUPVAL                         R9 7
      586 GETTABLEKS                       R10 R8 K5 ["children"]
      588 JUMPIF                           R10 ; [+2]
      589 NEWTABLE                         R10 0 0
      591 CALL                             R9 1 1
      592 LOADK                            R12 K41 ["^%-%-%-+$"]
      593 NAMECALL                         R10 R9 K36 ["match"]
      595 CALL                             R10 2 1
      596 JUMPIFNOT                        R10 ; [+67]
      597 MOVE                             R10 R2
      598 GETTABLEKS                       R12 R6 K2 ["blockIndex"]
      600 GETTABLE                         R11 R1 R12
      601 CALL                             R10 1 1
      602 DUPTABLE                         R12 K12 [{"name", "children", "index"}]
      603 LOADK                            R13 K42 ["DIVIDER"]
      604 SETTABLEKS                       R13 R12 K3 ["name"]
      606 NEWTABLE                         R13 0 0
      608 SETTABLEKS                       R13 R12 K5 ["children"]
      610 GETTABLEKS                       R13 R8 K11 ["index"]
      612 SETTABLEKS                       R13 R12 K11 ["index"]
      614 NAMECALL                         R10 R10 K22 ["set"]
      616 CALL                             R10 2 0
      617 DUPTABLE                         R10 K12 [{"name", "children", "index"}]
      618 LOADK                            R11 K13 ["PARAGRAPH"]
      619 SETTABLEKS                       R11 R10 K3 ["name"]
      621 NEWTABLE                         R11 0 1
      623 DUPTABLE                         R12 K15 [{"name", "children", "text"}]
      624 LOADK                            R13 K16 ["TEXT"]
      625 SETTABLEKS                       R13 R12 K3 ["name"]
      627 NEWTABLE                         R13 0 0
      629 SETTABLEKS                       R13 R12 K5 ["children"]
      631 LOADK                            R13 K17 [""]
      632 SETTABLEKS                       R13 R12 K14 ["text"]
      634 SETLIST                          R11 R12 1 [1]
      636 SETTABLEKS                       R11 R10 K5 ["children"]
      638 MOVE                             R11 R4
      639 CALL                             R11 0 1
      640 SETTABLEKS                       R11 R10 K11 ["index"]
      642 MOVE                             R11 R2
      643 MOVE                             R12 R1
      644 CALL                             R11 1 1
      645 MOVE                             R13 R10
      646 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      648 ADDK                             R14 R15 K6 [1]
      649 NAMECALL                         R11 R11 K18 ["insert"]
      651 CALL                             R11 3 0
      652 MOVE                             R11 R3
      653 GETUPVAL                         R12 0
      654 GETTABLEKS                       R12 R12 K10 ["createCollapsed"]
      656 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      658 ADDK                             R13 R14 K6 [1]
      659 LOADN                            R14 1
      660 LOADN                            R15 0
      661 CALL                             R12 3 -1
      662 CALL                             R11 -1 0
      663 RETURN                           R0 0
      664 GETTABLEKS                       R10 R8 K3 ["name"]
      666 JUMPIFEQKS                       R10 K38 ["CODE_BLOCK"] ; [+2]
      668 LOADB                            R9 0 +1
      669 LOADB                            R9 1
      670 JUMPIFNOT                        R9 ; [+165]
      671 GETTABLEKS                       R10 R8 K14 ["text"]
      673 ORK                              R9 R10 K17 [""]
      674 GETUPVAL                         R10 8
      675 MOVE                             R11 R6
      676 MOVE                             R12 R9
      677 CALL                             R10 2 1
      678 LOADK                            R13 K43 ["\n[^\n]*$"]
      679 NAMECALL                         R11 R9 K44 ["find"]
      681 CALL                             R11 2 1
      682 JUMPIFNOT                        R11 ; [+5]
      683 ADDK                             R14 R11 K6 [1]
      684 NAMECALL                         R12 R9 K45 ["sub"]
      686 CALL                             R12 2 1
      687 JUMP                             ; [+1]
      688 LOADNIL                          R12
      689 LOADB                            R13 1
      690 JUMPIFEQKS                       R9 K17 [""] ; [+16]
      692 LOADB                            R13 0
      693 LENGTH                           R14 R9
      694 JUMPIFNOTEQ                      R10 R14 ; [+12]
      696 LOADB                            R13 0
      697 JUMPIFEQKNIL                     R12 ; [+9]
      699 LOADK                            R16 K46 ["^[\t ]*$"]
      700 NAMECALL                         R14 R12 K36 ["match"]
      702 CALL                             R14 2 1
      703 JUMPIFNOTEQKNIL                  R14 ; [+2]
      705 LOADB                            R13 0 +1
      706 LOADB                            R13 1
      707 LENGTH                           R14 R9
      708 JUMPIFNOTEQ                      R10 R14 ; [+69]
      710 JUMPIFNOT                        R13 ; [+67]
      711 LENGTH                           R14 R9
      712 LOADN                            R15 0
      713 JUMPIFNOTLT                      R15 R14 ; [+17]
      715 LOADN                            R16 1
      716 SUBK                             R17 R11 K6 [1]
      717 NAMECALL                         R14 R9 K45 ["sub"]
      719 CALL                             R14 3 1
      720 MOVE                             R15 R2
      721 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      723 GETTABLE                         R16 R1 R17
      724 GETTABLEKS                       R16 R16 K14 ["text"]
      726 CALL                             R15 1 1
      727 MOVE                             R17 R14
      728 NAMECALL                         R15 R15 K22 ["set"]
      730 CALL                             R15 2 0
      731 DUPTABLE                         R14 K12 [{"name", "children", "index"}]
      732 LOADK                            R15 K13 ["PARAGRAPH"]
      733 SETTABLEKS                       R15 R14 K3 ["name"]
      735 NEWTABLE                         R15 0 1
      737 DUPTABLE                         R16 K15 [{"name", "children", "text"}]
      738 LOADK                            R17 K16 ["TEXT"]
      739 SETTABLEKS                       R17 R16 K3 ["name"]
      741 NEWTABLE                         R17 0 0
      743 SETTABLEKS                       R17 R16 K5 ["children"]
      745 LOADK                            R17 K17 [""]
      746 SETTABLEKS                       R17 R16 K14 ["text"]
      748 SETLIST                          R15 R16 1 [1]
      750 SETTABLEKS                       R15 R14 K5 ["children"]
      752 MOVE                             R15 R4
      753 CALL                             R15 0 1
      754 SETTABLEKS                       R15 R14 K11 ["index"]
      756 MOVE                             R15 R2
      757 MOVE                             R16 R1
      758 CALL                             R15 1 1
      759 MOVE                             R17 R14
      760 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      762 ADDK                             R18 R19 K6 [1]
      763 NAMECALL                         R15 R15 K18 ["insert"]
      765 CALL                             R15 3 0
      766 MOVE                             R15 R3
      767 GETUPVAL                         R16 0
      768 GETTABLEKS                       R16 R16 K10 ["createCollapsed"]
      770 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      772 ADDK                             R17 R18 K6 [1]
      773 LOADN                            R18 1
      774 LOADN                            R19 0
      775 CALL                             R16 3 -1
      776 CALL                             R15 -1 0
      777 RETURN                           R0 0
      778 MOVE                             R14 R10
      779 LOADN                            R15 0
      780 JUMPIFNOTLT                      R15 R14 ; [+10]
      782 MOVE                             R17 R14
      783 MOVE                             R18 R14
      784 NAMECALL                         R15 R9 K45 ["sub"]
      786 CALL                             R15 3 1
      787 JUMPIFEQKS                       R15 K47 ["\n"] ; [+3]
      789 SUBK                             R14 R14 K6 [1]
      790 JUMPBACK                         ; [-12]
      791 ADDK                             R17 R14 K6 [1]
      792 MOVE                             R18 R10
      793 NAMECALL                         R15 R9 K45 ["sub"]
      795 CALL                             R15 3 1
      796 LOADK                            R19 K48 ["^([\t ]*)"]
      797 NAMECALL                         R17 R15 K36 ["match"]
      799 CALL                             R17 2 1
      800 ORK                              R16 R17 K17 [""]
      801 LOADN                            R24 1
      802 MOVE                             R25 R10
      803 NAMECALL                         R22 R9 K45 ["sub"]
      805 CALL                             R22 3 1
      806 MOVE                             R18 R22
      807 LOADK                            R19 K47 ["\n"]
      808 MOVE                             R20 R16
      809 ADDK                             R23 R10 K6 [1]
      810 NAMECALL                         R21 R9 K45 ["sub"]
      812 CALL                             R21 2 1
      813 CONCAT                           R17 R18 R21
      814 MOVE                             R18 R2
      815 GETTABLEKS                       R20 R6 K2 ["blockIndex"]
      817 GETTABLE                         R19 R1 R20
      818 GETTABLEKS                       R19 R19 K14 ["text"]
      820 CALL                             R18 1 1
      821 MOVE                             R20 R17
      822 NAMECALL                         R18 R18 K22 ["set"]
      824 CALL                             R18 2 0
      825 MOVE                             R18 R3
      826 GETUPVAL                         R19 9
      827 GETTABLEKS                       R20 R6 K2 ["blockIndex"]
      829 MOVE                             R21 R17
      830 ADDK                             R23 R10 K6 [1]
      831 LENGTH                           R24 R16
      832 ADD                              R22 R23 R24
      833 CALL                             R19 3 -1
      834 CALL                             R18 -1 0
      835 RETURN                           R0 0
      836 GETTABLEKS                       R10 R8 K3 ["name"]
      838 LOADB                            R9 1
      839 JUMPIFEQKS                       R10 K13 ["PARAGRAPH"] ; [+11]
      841 LOADB                            R9 1
      842 JUMPIFEQKS                       R10 K49 ["HEADING"] ; [+8]
      844 LOADB                            R9 1
      845 JUMPIFEQKS                       R10 K50 ["QUOTE"] ; [+5]
      847 JUMPIFEQKS                       R10 K31 ["LIST_ITEM"] ; [+2]
      849 LOADB                            R9 0 +1
      850 LOADB                            R9 1
      851 JUMPIFNOT                        R9 ; [+80]
      852 GETTABLEKS                       R10 R8 K5 ["children"]
      854 JUMPIF                           R10 ; [+2]
      855 NEWTABLE                         R10 0 0
      857 LOADN                            R11 0
      858 LOADN                            R12 0
      859 NEWCLOSURE                       R13 P0
      860 CAPTURE                          REF R12
      861 CAPTURE                          VAL R6
      862 CAPTURE                          REF R11
      863 CAPTURE                          VAL R13
      864 MOVE                             R14 R13
      865 MOVE                             R15 R10
      866 CALL                             R14 1 1
      867 OR                               R9 R14 R11
      868 CLOSEUPVALS                      R11
      869 GETUPVAL                         R10 4
      870 GETTABLEKS                       R11 R8 K5 ["children"]
      872 JUMPIF                           R11 ; [+2]
      873 NEWTABLE                         R11 0 0
      875 MOVE                             R12 R9
      876 CALL                             R10 2 2
      877 MOVE                             R12 R2
      878 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      880 GETTABLE                         R13 R1 R14
      881 GETTABLEKS                       R13 R13 K5 ["children"]
      883 CALL                             R12 1 1
      884 GETUPVAL                         R14 6
      885 MOVE                             R15 R10
      886 CALL                             R14 1 1
      887 NAMECALL                         R12 R12 K22 ["set"]
      889 CALL                             R12 2 0
      890 DUPTABLE                         R12 K12 [{"name", "children", "index"}]
      891 GETTABLEKS                       R14 R8 K3 ["name"]
      893 JUMPIFNOTEQKS                    R14 K49 ["HEADING"] ; [+3]
      895 LOADK                            R13 K13 ["PARAGRAPH"]
      896 JUMP                             ; [+2]
      897 GETTABLEKS                       R13 R8 K3 ["name"]
      899 SETTABLEKS                       R13 R12 K3 ["name"]
      901 GETUPVAL                         R13 6
      902 MOVE                             R14 R11
      903 CALL                             R13 1 1
      904 SETTABLEKS                       R13 R12 K5 ["children"]
      906 MOVE                             R13 R4
      907 CALL                             R13 0 1
      908 SETTABLEKS                       R13 R12 K11 ["index"]
      910 MOVE                             R13 R2
      911 MOVE                             R14 R1
      912 CALL                             R13 1 1
      913 MOVE                             R15 R12
      914 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      916 ADDK                             R16 R17 K6 [1]
      917 NAMECALL                         R13 R13 K18 ["insert"]
      919 CALL                             R13 3 0
      920 MOVE                             R13 R3
      921 GETUPVAL                         R14 0
      922 GETTABLEKS                       R14 R14 K10 ["createCollapsed"]
      924 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      926 ADDK                             R15 R16 K6 [1]
      927 LOADN                            R16 1
      928 LOADN                            R17 0
      929 CALL                             R14 3 -1
      930 CALL                             R13 -1 0
      931 RETURN                           R0 0
      932 DUPTABLE                         R9 K12 [{"name", "children", "index"}]
      933 LOADK                            R10 K13 ["PARAGRAPH"]
      934 SETTABLEKS                       R10 R9 K3 ["name"]
      936 NEWTABLE                         R10 0 1
      938 DUPTABLE                         R11 K15 [{"name", "children", "text"}]
      939 LOADK                            R12 K16 ["TEXT"]
      940 SETTABLEKS                       R12 R11 K3 ["name"]
      942 NEWTABLE                         R12 0 0
      944 SETTABLEKS                       R12 R11 K5 ["children"]
      946 LOADK                            R12 K17 [""]
      947 SETTABLEKS                       R12 R11 K14 ["text"]
      949 SETLIST                          R10 R11 1 [1]
      951 SETTABLEKS                       R10 R9 K5 ["children"]
      953 MOVE                             R10 R4
      954 CALL                             R10 0 1
      955 SETTABLEKS                       R10 R9 K11 ["index"]
      957 MOVE                             R10 R2
      958 MOVE                             R11 R1
      959 CALL                             R10 1 1
      960 MOVE                             R12 R9
      961 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      963 ADDK                             R13 R14 K6 [1]
      964 NAMECALL                         R10 R10 K18 ["insert"]
      966 CALL                             R10 3 0
      967 MOVE                             R10 R3
      968 GETUPVAL                         R11 0
      969 GETTABLEKS                       R11 R11 K10 ["createCollapsed"]
      971 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      973 ADDK                             R12 R13 K6 [1]
      974 LOADN                            R13 1
      975 LOADN                            R14 0
      976 CALL                             R11 3 -1
      977 CALL                             R10 -1 0
      978 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["isCollapsed"]
        3 MOVE                             R7 R1
        4 CALL                             R6 1 1
        5 JUMPIFNOT                        R6 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K1 ["getOrderedSelection"]
       10 MOVE                             R7 R1
       11 CALL                             R6 1 2
       12 GETTABLEKS                       R8 R6 K2 ["blockIndex"]
       14 GETTABLEKS                       R9 R7 K2 ["blockIndex"]
       16 JUMPIFEQ                         R8 R9 ; [+2]
       18 RETURN                           R0 0
       19 MOVE                             R8 R5
       20 MOVE                             R9 R2
       21 CALL                             R8 1 1
       22 GETTABLEKS                       R10 R6 K2 ["blockIndex"]
       24 GETTABLE                         R9 R8 R10
       25 JUMPIF                           R9 ; [+1]
       26 RETURN                           R0 0
       27 LOADNIL                          R10
       28 LOADNIL                          R11
       29 LOADNIL                          R12
       30 LOADNIL                          R13
       31 LOADNIL                          R14
       32 GETTABLEKS                       R17 R9 K3 ["name"]
       34 JUMPIFEQKS                       R17 K4 ["LIST"] ; [+4]
       36 LOADNIL                          R15
       37 LOADNIL                          R16
       38 JUMP                             ; [+19]
       39 GETTABLEKS                       R18 R6 K5 ["path"]
       41 JUMPIFNOT                        R18 ; [+4]
       42 GETTABLEKS                       R18 R6 K5 ["path"]
       44 GETTABLEN                        R17 R18 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R17
       47 JUMPIF                           R17 ; [+3]
       48 LOADNIL                          R15
       49 LOADNIL                          R16
       50 JUMP                             ; [+7]
       51 GETTABLEKS                       R18 R9 K6 ["children"]
       53 JUMPIF                           R18 ; [+2]
       54 NEWTABLE                         R18 0 0
       56 GETTABLE                         R15 R18 R17
       57 MOVE                             R16 R17
       58 GETUPVAL                         R17 1
       59 MOVE                             R18 R9
       60 MOVE                             R19 R6
       61 CALL                             R17 2 3
       62 GETTABLEKS                       R20 R9 K3 ["name"]
       64 JUMPIFNOTEQKS                    R20 K4 ["LIST"] ; [+24]
       66 JUMPIFNOT                        R15 ; [+22]
       67 GETTABLEKS                       R20 R15 K6 ["children"]
       69 JUMPIF                           R20 ; [+2]
       70 NEWTABLE                         R20 0 0
       72 MOVE                             R10 R20
       73 GETTABLEKS                       R22 R6 K2 ["blockIndex"]
       75 GETTABLE                         R21 R2 R22
       76 GETTABLEKS                       R21 R21 K6 ["children"]
       78 GETTABLE                         R20 R21 R16
       79 GETTABLEKS                       R11 R20 K6 ["children"]
       81 NEWTABLE                         R20 0 1
       83 MOVE                             R21 R16
       84 SETLIST                          R20 R21 1 [1]
       86 MOVE                             R12 R20
       87 LOADB                            R13 1
       88 JUMP                             ; [+63]
       89 GETTABLEKS                       R21 R9 K3 ["name"]
       91 JUMPIFEQKS                       R21 K7 ["TABLE"] ; [+2]
       93 LOADB                            R20 0 +1
       94 LOADB                            R20 1
       95 JUMPIFNOT                        R20 ; [+27]
       96 JUMPIFNOT                        R17 ; [+26]
       97 GETTABLEKS                       R20 R17 K6 ["children"]
       99 JUMPIF                           R20 ; [+2]
      100 NEWTABLE                         R20 0 0
      102 MOVE                             R10 R20
      103 GETTABLEKS                       R23 R6 K2 ["blockIndex"]
      105 GETTABLE                         R22 R2 R23
      106 GETTABLEKS                       R22 R22 K6 ["children"]
      108 GETTABLE                         R21 R22 R18
      109 GETTABLEKS                       R21 R21 K6 ["children"]
      111 GETTABLE                         R20 R21 R19
      112 GETTABLEKS                       R11 R20 K6 ["children"]
      114 NEWTABLE                         R20 0 2
      116 MOVE                             R21 R18
      117 MOVE                             R22 R19
      118 SETLIST                          R20 R21 2 [1]
      120 MOVE                             R12 R20
      121 LOADB                            R14 1
      122 JUMP                             ; [+29]
      123 GETTABLEKS                       R21 R9 K3 ["name"]
      125 LOADB                            R20 1
      126 JUMPIFEQKS                       R21 K8 ["PARAGRAPH"] ; [+11]
      128 LOADB                            R20 1
      129 JUMPIFEQKS                       R21 K9 ["HEADING"] ; [+8]
      131 LOADB                            R20 1
      132 JUMPIFEQKS                       R21 K10 ["QUOTE"] ; [+5]
      134 JUMPIFEQKS                       R21 K11 ["LIST_ITEM"] ; [+2]
      136 LOADB                            R20 0 +1
      137 LOADB                            R20 1
      138 JUMPIFNOT                        R20 ; [+12]
      139 GETTABLEKS                       R20 R9 K6 ["children"]
      141 JUMPIF                           R20 ; [+2]
      142 NEWTABLE                         R20 0 0
      144 MOVE                             R10 R20
      145 GETTABLEKS                       R21 R6 K2 ["blockIndex"]
      147 GETTABLE                         R20 R2 R21
      148 GETTABLEKS                       R11 R20 K6 ["children"]
      150 JUMP                             ; [+1]
      151 RETURN                           R0 0
      152 MOVE                             R21 R10
      153 LOADN                            R22 0
      154 LOADN                            R23 0
      155 NEWCLOSURE                       R24 P0
      156 CAPTURE                          REF R23
      157 CAPTURE                          VAL R6
      158 CAPTURE                          REF R22
      159 CAPTURE                          VAL R24
      160 MOVE                             R25 R24
      161 MOVE                             R26 R21
      162 CALL                             R25 1 1
      163 OR                               R20 R25 R22
      164 CLOSEUPVALS                      R22
      165 MOVE                             R22 R10
      166 LOADN                            R23 0
      167 LOADN                            R24 0
      168 NEWCLOSURE                       R25 P0
      169 CAPTURE                          REF R24
      170 CAPTURE                          VAL R7
      171 CAPTURE                          REF R23
      172 CAPTURE                          VAL R25
      173 MOVE                             R26 R25
      174 MOVE                             R27 R22
      175 CALL                             R26 1 1
      176 OR                               R21 R26 R23
      177 CLOSEUPVALS                      R23
      178 JUMPIFNOTEQ                      R20 R21 ; [+2]
      180 RETURN                           R0 0
      181 LOADNIL                          R22
      182 GETUPVAL                         R23 2
      183 MOVE                             R24 R10
      184 MOVE                             R25 R20
      185 MOVE                             R26 R21
      186 MOVE                             R27 R0
      187 CALL                             R23 4 1
      188 JUMPIFNOT                        R23 ; [+8]
      189 GETUPVAL                         R24 3
      190 MOVE                             R25 R10
      191 MOVE                             R26 R20
      192 MOVE                             R27 R21
      193 MOVE                             R28 R0
      194 CALL                             R24 4 1
      195 MOVE                             R22 R24
      196 JUMP                             ; [+31]
      197 GETUPVAL                         R24 4
      198 MOVE                             R25 R10
      199 MOVE                             R26 R20
      200 MOVE                             R27 R21
      201 MOVE                             R28 R0
      202 CALL                             R24 4 1
      203 MOVE                             R22 R24
      204 LENGTH                           R25 R22
      205 GETTABLE                         R24 R22 R25
      206 JUMPIFNOT                        R24 ; [+21]
      207 GETTABLEKS                       R25 R24 K3 ["name"]
      209 JUMPIFNOTEQKS                    R25 K12 ["STYLED_TEXT"] ; [+18]
      211 DUPTABLE                         R27 K14 [{"name", "children", "text"}]
      212 LOADK                            R28 K15 ["TEXT"]
      213 SETTABLEKS                       R28 R27 K3 ["name"]
      215 NEWTABLE                         R28 0 0
      217 SETTABLEKS                       R28 R27 K6 ["children"]
      219 LOADK                            R28 K16 [""]
      220 SETTABLEKS                       R28 R27 K13 ["text"]
      222 FASTCALL2                        TABLE_INSERT R22 R27 ; [+4]
      224 MOVE                             R26 R22
      225 GETIMPORT                        R25 K19 [table.insert]
      227 CALL                             R25 2 0
      228 JUMPIFNOT                        R13 ; [+28]
      229 MOVE                             R24 R22
      230 GETTABLEKS                       R25 R6 K2 ["blockIndex"]
      232 MOVE                             R26 R3
      233 GETTABLE                         R28 R2 R25
      234 GETTABLEKS                       R28 R28 K6 ["children"]
      236 GETTABLE                         R27 R28 R16
      237 CALL                             R26 1 1
      238 DUPTABLE                         R28 K22 [{"name", "children", "attributes", "index"}]
      239 GETTABLEKS                       R29 R15 K3 ["name"]
      241 SETTABLEKS                       R29 R28 K3 ["name"]
      243 SETTABLEKS                       R24 R28 K6 ["children"]
      245 GETTABLEKS                       R29 R15 K20 ["attributes"]
      247 SETTABLEKS                       R29 R28 K20 ["attributes"]
      249 GETTABLEKS                       R29 R15 K21 ["index"]
      251 SETTABLEKS                       R29 R28 K21 ["index"]
      253 NAMECALL                         R26 R26 K23 ["set"]
      255 CALL                             R26 2 0
      256 JUMP                             ; [+19]
      257 JUMPIFNOT                        R14 ; [+11]
      258 GETUPVAL                         R24 5
      259 MOVE                             R25 R17
      260 MOVE                             R26 R18
      261 MOVE                             R27 R19
      262 MOVE                             R28 R22
      263 GETTABLEKS                       R29 R6 K2 ["blockIndex"]
      265 MOVE                             R30 R2
      266 MOVE                             R31 R3
      267 CALL                             R24 7 0
      268 JUMP                             ; [+7]
      269 MOVE                             R24 R3
      270 MOVE                             R25 R11
      271 CALL                             R24 1 1
      272 MOVE                             R26 R22
      273 NAMECALL                         R24 R24 K23 ["set"]
      275 CALL                             R24 2 0
      276 JUMPIFNOT                        R23 ; [+118]
      277 GETTABLEKS                       R25 R6 K2 ["blockIndex"]
      279 MOVE                             R26 R22
      280 LOADN                            R27 0
      281 LOADN                            R28 0
      282 NEWCLOSURE                       R29 P1
      283 CAPTURE                          REF R27
      284 CAPTURE                          VAL R20
      285 CAPTURE                          REF R28
      286 CAPTURE                          UPVAL U0
      287 CAPTURE                          VAL R25
      288 CAPTURE                          VAL R29
      289 MOVE                             R30 R29
      290 MOVE                             R31 R26
      291 CALL                             R30 1 1
      292 JUMPIFNOT                        R30 ; [+3]
      293 MOVE                             R24 R30
      294 CLOSEUPVALS                      R27
      295 JUMP                             ; [+15]
      296 GETUPVAL                         R31 0
      297 GETTABLEKS                       R31 R31 K24 ["createCollapsed"]
      299 MOVE                             R32 R25
      300 LOADN                            R34 1
      301 FASTCALL2                        MATH_MAX R34 R27 ; [+4]
      303 MOVE                             R35 R27
      304 GETIMPORT                        R33 K27 [math.max]
      306 CALL                             R33 2 1
      307 SUB                              R34 R20 R28
      308 CALL                             R31 3 1
      309 MOVE                             R24 R31
      310 CLOSEUPVALS                      R27
      311 GETTABLEKS                       R26 R6 K2 ["blockIndex"]
      313 MOVE                             R27 R22
      314 LOADN                            R28 0
      315 LOADN                            R29 0
      316 NEWCLOSURE                       R30 P1
      317 CAPTURE                          REF R28
      318 CAPTURE                          VAL R21
      319 CAPTURE                          REF R29
      320 CAPTURE                          UPVAL U0
      321 CAPTURE                          VAL R26
      322 CAPTURE                          VAL R30
      323 MOVE                             R31 R30
      324 MOVE                             R32 R27
      325 CALL                             R31 1 1
      326 JUMPIFNOT                        R31 ; [+3]
      327 MOVE                             R25 R31
      328 CLOSEUPVALS                      R28
      329 JUMP                             ; [+15]
      330 GETUPVAL                         R32 0
      331 GETTABLEKS                       R32 R32 K24 ["createCollapsed"]
      333 MOVE                             R33 R26
      334 LOADN                            R35 1
      335 FASTCALL2                        MATH_MAX R35 R28 ; [+4]
      337 MOVE                             R36 R28
      338 GETIMPORT                        R34 K27 [math.max]
      340 CALL                             R34 2 1
      341 SUB                              R35 R21 R29
      342 CALL                             R32 3 1
      343 MOVE                             R25 R32
      344 CLOSEUPVALS                      R28
      345 MOVE                             R26 R4
      346 DUPTABLE                         R27 K30 [{"anchor", "focus"}]
      347 DUPTABLE                         R28 K33 [{"blockIndex", "path", "segmentIndex", "charOffset"}]
      348 GETTABLEKS                       R29 R24 K28 ["anchor"]
      350 GETTABLEKS                       R29 R29 K2 ["blockIndex"]
      352 SETTABLEKS                       R29 R28 K2 ["blockIndex"]
      354 SETTABLEKS                       R12 R28 K5 ["path"]
      356 GETTABLEKS                       R29 R24 K28 ["anchor"]
      358 GETTABLEKS                       R29 R29 K31 ["segmentIndex"]
      360 SETTABLEKS                       R29 R28 K31 ["segmentIndex"]
      362 GETTABLEKS                       R29 R24 K28 ["anchor"]
      364 GETTABLEKS                       R29 R29 K32 ["charOffset"]
      366 SETTABLEKS                       R29 R28 K32 ["charOffset"]
      368 SETTABLEKS                       R28 R27 K28 ["anchor"]
      370 DUPTABLE                         R28 K33 [{"blockIndex", "path", "segmentIndex", "charOffset"}]
      371 GETTABLEKS                       R29 R25 K28 ["anchor"]
      373 GETTABLEKS                       R29 R29 K2 ["blockIndex"]
      375 SETTABLEKS                       R29 R28 K2 ["blockIndex"]
      377 SETTABLEKS                       R12 R28 K5 ["path"]
      379 GETTABLEKS                       R29 R25 K28 ["anchor"]
      381 GETTABLEKS                       R29 R29 K31 ["segmentIndex"]
      383 SETTABLEKS                       R29 R28 K31 ["segmentIndex"]
      385 GETTABLEKS                       R29 R25 K28 ["anchor"]
      387 GETTABLEKS                       R29 R29 K32 ["charOffset"]
      389 SETTABLEKS                       R29 R28 K32 ["charOffset"]
      391 SETTABLEKS                       R28 R27 K29 ["focus"]
      393 CALL                             R26 1 0
      394 RETURN                           R0 0
      395 LOADN                            R24 0
      396 LOADN                            R25 0
      397 MOVE                             R26 R22
      398 LOADNIL                          R27
      399 LOADNIL                          R28
      400 FORGPREP                         R26
      401 GETTABLEKS                       R31 R30 K3 ["name"]
      403 JUMPIFNOTEQKS                    R31 K12 ["STYLED_TEXT"] ; [+12]
      405 JUMPIFNOTEQ                      R24 R20 ; [+10]
      407 GETUPVAL                         R31 6
      408 NEWTABLE                         R32 0 1
      410 MOVE                             R33 R30
      411 SETLIST                          R32 R33 1 [1]
      413 CALL                             R31 1 1
      414 ADD                              R25 R25 R31
      415 JUMP                             ; [+14]
      416 GETUPVAL                         R31 6
      417 NEWTABLE                         R32 0 1
      419 MOVE                             R33 R30
      420 SETLIST                          R32 R33 1 [1]
      422 CALL                             R31 1 1
      423 ADD                              R25 R25 R31
      424 GETUPVAL                         R31 7
      425 MOVE                             R32 R30
      426 CALL                             R31 1 1
      427 ADD                              R24 R24 R31
      428 FORGLOOP                         R26 2 ; [-28]
      430 MOVE                             R26 R4
      431 GETUPVAL                         R27 0
      432 GETTABLEKS                       R27 R27 K24 ["createCollapsed"]
      434 GETTABLEKS                       R28 R6 K2 ["blockIndex"]
      436 ADDK                             R29 R25 K34 [1]
      437 LOADN                            R30 0
      438 MOVE                             R31 R12
      439 CALL                             R27 4 -1
      440 CALL                             R26 -1 0
      441 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["isCollapsed"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 JUMPIF                           R4 ; [+20]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["getOrderedSelection"]
        9 MOVE                             R5 R0
       10 CALL                             R4 1 1
       11 MOVE                             R5 R2
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K2 ["createCollapsed"]
       15 GETTABLEKS                       R7 R4 K3 ["blockIndex"]
       17 GETTABLEKS                       R8 R4 K4 ["segmentIndex"]
       19 GETTABLEKS                       R9 R4 K5 ["charOffset"]
       21 GETTABLEKS                       R10 R4 K6 ["path"]
       23 CALL                             R6 4 -1
       24 CALL                             R5 -1 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R4 R0 K7 ["anchor"]
       28 MOVE                             R5 R3
       29 MOVE                             R6 R1
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R7 R4 K3 ["blockIndex"]
       33 GETTABLE                         R6 R5 R7
       34 JUMPIF                           R6 ; [+1]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R8 R6 K8 ["name"]
       38 JUMPIFEQKS                       R8 K9 ["TABLE"] ; [+2]
       40 LOADB                            R7 0 +1
       41 LOADB                            R7 1
       42 JUMPIFNOT                        R7 ; [+277]
       43 GETUPVAL                         R7 1
       44 MOVE                             R8 R6
       45 MOVE                             R9 R4
       46 CALL                             R7 2 3
       47 JUMPIFNOT                        R7 ; [+272]
       48 GETTABLEKS                       R11 R7 K10 ["children"]
       50 JUMPIF                           R11 ; [+2]
       51 NEWTABLE                         R11 0 0
       53 LOADN                            R12 0
       54 LOADN                            R13 0
       55 NEWCLOSURE                       R14 P0
       56 CAPTURE                          REF R13
       57 CAPTURE                          VAL R4
       58 CAPTURE                          REF R12
       59 CAPTURE                          VAL R14
       60 MOVE                             R15 R14
       61 MOVE                             R16 R11
       62 CALL                             R15 1 1
       63 OR                               R10 R15 R12
       64 CLOSEUPVALS                      R12
       65 LOADN                            R11 0
       66 JUMPIFNOTLT                      R11 R10 ; [+63]
       68 GETTABLEKS                       R12 R4 K3 ["blockIndex"]
       70 GETTABLEKS                       R13 R7 K10 ["children"]
       72 JUMPIF                           R13 ; [+2]
       73 NEWTABLE                         R13 0 0
       75 SUBK                             R14 R10 K11 [1]
       76 LOADN                            R15 0
       77 LOADN                            R16 0
       78 NEWCLOSURE                       R17 P1
       79 CAPTURE                          REF R15
       80 CAPTURE                          VAL R14
       81 CAPTURE                          REF R16
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R17
       85 MOVE                             R18 R17
       86 MOVE                             R19 R13
       87 CALL                             R18 1 1
       88 JUMPIFNOT                        R18 ; [+3]
       89 MOVE                             R11 R18
       90 CLOSEUPVALS                      R15
       91 JUMP                             ; [+15]
       92 GETUPVAL                         R19 0
       93 GETTABLEKS                       R19 R19 K2 ["createCollapsed"]
       95 MOVE                             R20 R12
       96 LOADN                            R22 1
       97 FASTCALL2                        MATH_MAX R22 R15 ; [+4]
       99 MOVE                             R23 R15
      100 GETIMPORT                        R21 K14 [math.max]
      102 CALL                             R21 2 1
      103 SUB                              R22 R14 R16
      104 CALL                             R19 3 1
      105 MOVE                             R11 R19
      106 CLOSEUPVALS                      R15
      107 MOVE                             R12 R2
      108 GETUPVAL                         R13 0
      109 GETTABLEKS                       R13 R13 K2 ["createCollapsed"]
      111 GETTABLEKS                       R14 R4 K3 ["blockIndex"]
      113 GETTABLEKS                       R15 R11 K7 ["anchor"]
      115 GETTABLEKS                       R15 R15 K4 ["segmentIndex"]
      117 GETTABLEKS                       R16 R11 K7 ["anchor"]
      119 GETTABLEKS                       R16 R16 K5 ["charOffset"]
      121 NEWTABLE                         R17 0 2
      123 MOVE                             R18 R8
      124 MOVE                             R19 R9
      125 SETLIST                          R17 R18 2 [1]
      127 CALL                             R13 4 -1
      128 CALL                             R12 -1 0
      129 RETURN                           R0 0
      130 GETTABLEKS                       R11 R6 K10 ["children"]
      132 JUMPIF                           R11 ; [+2]
      133 NEWTABLE                         R11 0 0
      135 LOADN                            R12 1
      136 JUMPIFNOTLT                      R12 R9 ; [+89]
      138 GETTABLE                         R13 R11 R8
      139 GETTABLEKS                       R13 R13 K10 ["children"]
      141 JUMPIF                           R13 ; [+2]
      142 NEWTABLE                         R13 0 0
      144 SUBK                             R14 R9 K11 [1]
      145 GETTABLE                         R12 R13 R14
      146 JUMPIFNOT                        R12 ; [+173]
      147 GETTABLEKS                       R14 R12 K10 ["children"]
      149 JUMPIF                           R14 ; [+2]
      150 NEWTABLE                         R14 0 0
      152 LOADN                            R15 0
      153 MOVE                             R16 R14
      154 LOADNIL                          R17
      155 LOADNIL                          R18
      156 FORGPREP                         R16
      157 GETUPVAL                         R21 2
      158 MOVE                             R22 R20
      159 CALL                             R21 1 1
      160 ADD                              R15 R15 R21
      161 FORGLOOP                         R16 2 ; [-5]
      163 MOVE                             R13 R15
      164 GETTABLEKS                       R15 R4 K3 ["blockIndex"]
      166 GETTABLEKS                       R16 R12 K10 ["children"]
      168 JUMPIF                           R16 ; [+2]
      169 NEWTABLE                         R16 0 0
      171 LOADN                            R17 0
      172 LOADN                            R18 0
      173 NEWCLOSURE                       R19 P1
      174 CAPTURE                          REF R17
      175 CAPTURE                          VAL R13
      176 CAPTURE                          REF R18
      177 CAPTURE                          UPVAL U0
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R19
      180 MOVE                             R20 R19
      181 MOVE                             R21 R16
      182 CALL                             R20 1 1
      183 JUMPIFNOT                        R20 ; [+3]
      184 MOVE                             R14 R20
      185 CLOSEUPVALS                      R17
      186 JUMP                             ; [+15]
      187 GETUPVAL                         R21 0
      188 GETTABLEKS                       R21 R21 K2 ["createCollapsed"]
      190 MOVE                             R22 R15
      191 LOADN                            R24 1
      192 FASTCALL2                        MATH_MAX R24 R17 ; [+4]
      194 MOVE                             R25 R17
      195 GETIMPORT                        R23 K14 [math.max]
      197 CALL                             R23 2 1
      198 SUB                              R24 R13 R18
      199 CALL                             R21 3 1
      200 MOVE                             R14 R21
      201 CLOSEUPVALS                      R17
      202 MOVE                             R15 R2
      203 GETUPVAL                         R16 0
      204 GETTABLEKS                       R16 R16 K2 ["createCollapsed"]
      206 GETTABLEKS                       R17 R4 K3 ["blockIndex"]
      208 GETTABLEKS                       R18 R14 K7 ["anchor"]
      210 GETTABLEKS                       R18 R18 K4 ["segmentIndex"]
      212 GETTABLEKS                       R19 R14 K7 ["anchor"]
      214 GETTABLEKS                       R19 R19 K5 ["charOffset"]
      216 NEWTABLE                         R20 0 2
      218 MOVE                             R21 R8
      219 SUBK                             R22 R9 K11 [1]
      220 SETLIST                          R20 R21 2 [1]
      222 CALL                             R16 4 -1
      223 CALL                             R15 -1 0
      224 RETURN                           R0 0
      225 JUMP                             ; [+94]
      226 LOADN                            R12 1
      227 JUMPIFNOTLT                      R12 R8 ; [+92]
      229 SUBK                             R13 R8 K11 [1]
      230 GETTABLE                         R12 R11 R13
      231 GETTABLEKS                       R13 R12 K10 ["children"]
      233 JUMPIF                           R13 ; [+2]
      234 NEWTABLE                         R13 0 0
      236 LENGTH                           R14 R13
      237 LOADN                            R15 0
      238 JUMPIFNOTLT                      R15 R14 ; [+81]
      240 LENGTH                           R15 R13
      241 GETTABLE                         R14 R13 R15
      242 GETTABLEKS                       R16 R14 K10 ["children"]
      244 JUMPIF                           R16 ; [+2]
      245 NEWTABLE                         R16 0 0
      247 LOADN                            R17 0
      248 MOVE                             R18 R16
      249 LOADNIL                          R19
      250 LOADNIL                          R20
      251 FORGPREP                         R18
      252 GETUPVAL                         R23 2
      253 MOVE                             R24 R22
      254 CALL                             R23 1 1
      255 ADD                              R17 R17 R23
      256 FORGLOOP                         R18 2 ; [-5]
      258 MOVE                             R15 R17
      259 GETTABLEKS                       R17 R4 K3 ["blockIndex"]
      261 GETTABLEKS                       R18 R14 K10 ["children"]
      263 JUMPIF                           R18 ; [+2]
      264 NEWTABLE                         R18 0 0
      266 LOADN                            R19 0
      267 LOADN                            R20 0
      268 NEWCLOSURE                       R21 P1
      269 CAPTURE                          REF R19
      270 CAPTURE                          VAL R15
      271 CAPTURE                          REF R20
      272 CAPTURE                          UPVAL U0
      273 CAPTURE                          VAL R17
      274 CAPTURE                          VAL R21
      275 MOVE                             R22 R21
      276 MOVE                             R23 R18
      277 CALL                             R22 1 1
      278 JUMPIFNOT                        R22 ; [+3]
      279 MOVE                             R16 R22
      280 CLOSEUPVALS                      R19
      281 JUMP                             ; [+15]
      282 GETUPVAL                         R23 0
      283 GETTABLEKS                       R23 R23 K2 ["createCollapsed"]
      285 MOVE                             R24 R17
      286 LOADN                            R26 1
      287 FASTCALL2                        MATH_MAX R26 R19 ; [+4]
      289 MOVE                             R27 R19
      290 GETIMPORT                        R25 K14 [math.max]
      292 CALL                             R25 2 1
      293 SUB                              R26 R15 R20
      294 CALL                             R23 3 1
      295 MOVE                             R16 R23
      296 CLOSEUPVALS                      R19
      297 MOVE                             R17 R2
      298 GETUPVAL                         R18 0
      299 GETTABLEKS                       R18 R18 K2 ["createCollapsed"]
      301 GETTABLEKS                       R19 R4 K3 ["blockIndex"]
      303 GETTABLEKS                       R20 R16 K7 ["anchor"]
      305 GETTABLEKS                       R20 R20 K4 ["segmentIndex"]
      307 GETTABLEKS                       R21 R16 K7 ["anchor"]
      309 GETTABLEKS                       R21 R21 K5 ["charOffset"]
      311 NEWTABLE                         R22 0 2
      313 SUBK                             R23 R8 K11 [1]
      314 LENGTH                           R24 R13
      315 SETLIST                          R22 R23 2 [1]
      317 CALL                             R18 4 -1
      318 CALL                             R17 -1 0
      319 RETURN                           R0 0
      320 GETTABLEKS                       R9 R6 K8 ["name"]
      322 JUMPIFEQKS                       R9 K15 ["LIST"] ; [+4]
      324 LOADNIL                          R7
      325 LOADNIL                          R8
      326 JUMP                             ; [+19]
      327 GETTABLEKS                       R10 R4 K6 ["path"]
      329 JUMPIFNOT                        R10 ; [+4]
      330 GETTABLEKS                       R10 R4 K6 ["path"]
      332 GETTABLEN                        R9 R10 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R9
      335 JUMPIF                           R9 ; [+3]
      336 LOADNIL                          R7
      337 LOADNIL                          R8
      338 JUMP                             ; [+7]
      339 GETTABLEKS                       R10 R6 K10 ["children"]
      341 JUMPIF                           R10 ; [+2]
      342 NEWTABLE                         R10 0 0
      344 GETTABLE                         R7 R10 R9
      345 MOVE                             R8 R9
      346 GETTABLEKS                       R9 R6 K8 ["name"]
      348 JUMPIFNOTEQKS                    R9 K15 ["LIST"] ; [+171]
      350 JUMPIFNOT                        R7 ; [+169]
      351 GETTABLEKS                       R10 R7 K10 ["children"]
      353 JUMPIF                           R10 ; [+2]
      354 NEWTABLE                         R10 0 0
      356 LOADN                            R11 0
      357 LOADN                            R12 0
      358 NEWCLOSURE                       R13 P0
      359 CAPTURE                          REF R12
      360 CAPTURE                          VAL R4
      361 CAPTURE                          REF R11
      362 CAPTURE                          VAL R13
      363 MOVE                             R14 R13
      364 MOVE                             R15 R10
      365 CALL                             R14 1 1
      366 OR                               R9 R14 R11
      367 CLOSEUPVALS                      R11
      368 LOADN                            R10 0
      369 JUMPIFNOTLT                      R10 R9 ; [+62]
      371 GETTABLEKS                       R11 R4 K3 ["blockIndex"]
      373 GETTABLEKS                       R12 R7 K10 ["children"]
      375 JUMPIF                           R12 ; [+2]
      376 NEWTABLE                         R12 0 0
      378 SUBK                             R13 R9 K11 [1]
      379 LOADN                            R14 0
      380 LOADN                            R15 0
      381 NEWCLOSURE                       R16 P1
      382 CAPTURE                          REF R14
      383 CAPTURE                          VAL R13
      384 CAPTURE                          REF R15
      385 CAPTURE                          UPVAL U0
      386 CAPTURE                          VAL R11
      387 CAPTURE                          VAL R16
      388 MOVE                             R17 R16
      389 MOVE                             R18 R12
      390 CALL                             R17 1 1
      391 JUMPIFNOT                        R17 ; [+3]
      392 MOVE                             R10 R17
      393 CLOSEUPVALS                      R14
      394 JUMP                             ; [+15]
      395 GETUPVAL                         R18 0
      396 GETTABLEKS                       R18 R18 K2 ["createCollapsed"]
      398 MOVE                             R19 R11
      399 LOADN                            R21 1
      400 FASTCALL2                        MATH_MAX R21 R14 ; [+4]
      402 MOVE                             R22 R14
      403 GETIMPORT                        R20 K14 [math.max]
      405 CALL                             R20 2 1
      406 SUB                              R21 R13 R15
      407 CALL                             R18 3 1
      408 MOVE                             R10 R18
      409 CLOSEUPVALS                      R14
      410 MOVE                             R11 R2
      411 GETUPVAL                         R12 0
      412 GETTABLEKS                       R12 R12 K2 ["createCollapsed"]
      414 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      416 GETTABLEKS                       R14 R10 K7 ["anchor"]
      418 GETTABLEKS                       R14 R14 K4 ["segmentIndex"]
      420 GETTABLEKS                       R15 R10 K7 ["anchor"]
      422 GETTABLEKS                       R15 R15 K5 ["charOffset"]
      424 NEWTABLE                         R16 0 1
      426 MOVE                             R17 R8
      427 SETLIST                          R16 R17 1 [1]
      429 CALL                             R12 4 -1
      430 CALL                             R11 -1 0
      431 RETURN                           R0 0
      432 LOADN                            R10 1
      433 JUMPIFNOTLT                      R10 R8 ; [+86]
      435 GETTABLEKS                       R11 R6 K10 ["children"]
      437 JUMPIF                           R11 ; [+2]
      438 NEWTABLE                         R11 0 0
      440 SUBK                             R12 R8 K11 [1]
      441 GETTABLE                         R10 R11 R12
      442 JUMPIFNOT                        R10 ; [+77]
      443 GETTABLEKS                       R12 R10 K10 ["children"]
      445 JUMPIF                           R12 ; [+2]
      446 NEWTABLE                         R12 0 0
      448 LOADN                            R13 0
      449 MOVE                             R14 R12
      450 LOADNIL                          R15
      451 LOADNIL                          R16
      452 FORGPREP                         R14
      453 GETUPVAL                         R19 2
      454 MOVE                             R20 R18
      455 CALL                             R19 1 1
      456 ADD                              R13 R13 R19
      457 FORGLOOP                         R14 2 ; [-5]
      459 MOVE                             R11 R13
      460 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      462 GETTABLEKS                       R14 R10 K10 ["children"]
      464 JUMPIF                           R14 ; [+2]
      465 NEWTABLE                         R14 0 0
      467 LOADN                            R15 0
      468 LOADN                            R16 0
      469 NEWCLOSURE                       R17 P1
      470 CAPTURE                          REF R15
      471 CAPTURE                          VAL R11
      472 CAPTURE                          REF R16
      473 CAPTURE                          UPVAL U0
      474 CAPTURE                          VAL R13
      475 CAPTURE                          VAL R17
      476 MOVE                             R18 R17
      477 MOVE                             R19 R14
      478 CALL                             R18 1 1
      479 JUMPIFNOT                        R18 ; [+3]
      480 MOVE                             R12 R18
      481 CLOSEUPVALS                      R15
      482 JUMP                             ; [+15]
      483 GETUPVAL                         R19 0
      484 GETTABLEKS                       R19 R19 K2 ["createCollapsed"]
      486 MOVE                             R20 R13
      487 LOADN                            R22 1
      488 FASTCALL2                        MATH_MAX R22 R15 ; [+4]
      490 MOVE                             R23 R15
      491 GETIMPORT                        R21 K14 [math.max]
      493 CALL                             R21 2 1
      494 SUB                              R22 R11 R16
      495 CALL                             R19 3 1
      496 MOVE                             R12 R19
      497 CLOSEUPVALS                      R15
      498 MOVE                             R13 R2
      499 GETUPVAL                         R14 0
      500 GETTABLEKS                       R14 R14 K2 ["createCollapsed"]
      502 GETTABLEKS                       R15 R4 K3 ["blockIndex"]
      504 GETTABLEKS                       R16 R12 K7 ["anchor"]
      506 GETTABLEKS                       R16 R16 K4 ["segmentIndex"]
      508 GETTABLEKS                       R17 R12 K7 ["anchor"]
      510 GETTABLEKS                       R17 R17 K5 ["charOffset"]
      512 NEWTABLE                         R18 0 1
      514 SUBK                             R19 R8 K11 [1]
      515 SETLIST                          R18 R19 1 [1]
      517 CALL                             R14 4 -1
      518 CALL                             R13 -1 0
      519 RETURN                           R0 0
      520 GETTABLEKS                       R10 R6 K8 ["name"]
      522 JUMPIFEQKS                       R10 K16 ["CODE_BLOCK"] ; [+2]
      524 LOADB                            R9 0 +1
      525 LOADB                            R9 1
      526 JUMPIFNOT                        R9 ; [+19]
      527 GETTABLEKS                       R10 R6 K18 ["text"]
      529 ORK                              R9 R10 K17 [""]
      530 GETUPVAL                         R10 3
      531 MOVE                             R11 R4
      532 MOVE                             R12 R9
      533 CALL                             R10 2 1
      534 LOADN                            R11 0
      535 JUMPIFNOTLT                      R11 R10 ; [+10]
      537 MOVE                             R11 R2
      538 GETUPVAL                         R12 4
      539 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      541 MOVE                             R14 R9
      542 SUBK                             R15 R10 K11 [1]
      543 CALL                             R12 3 -1
      544 CALL                             R11 -1 0
      545 RETURN                           R0 0
      546 GETTABLEKS                       R10 R6 K8 ["name"]
      548 LOADB                            R9 1
      549 JUMPIFEQKS                       R10 K19 ["PARAGRAPH"] ; [+11]
      551 LOADB                            R9 1
      552 JUMPIFEQKS                       R10 K20 ["HEADING"] ; [+8]
      554 LOADB                            R9 1
      555 JUMPIFEQKS                       R10 K21 ["QUOTE"] ; [+5]
      557 JUMPIFEQKS                       R10 K22 ["LIST_ITEM"] ; [+2]
      559 LOADB                            R9 0 +1
      560 LOADB                            R9 1
      561 JUMPIFNOT                        R9 ; [+33]
      562 GETTABLEKS                       R10 R6 K10 ["children"]
      564 JUMPIF                           R10 ; [+2]
      565 NEWTABLE                         R10 0 0
      567 LOADN                            R11 0
      568 LOADN                            R12 0
      569 NEWCLOSURE                       R13 P0
      570 CAPTURE                          REF R12
      571 CAPTURE                          VAL R4
      572 CAPTURE                          REF R11
      573 CAPTURE                          VAL R13
      574 MOVE                             R14 R13
      575 MOVE                             R15 R10
      576 CALL                             R14 1 1
      577 OR                               R9 R14 R11
      578 CLOSEUPVALS                      R11
      579 LOADN                            R10 0
      580 JUMPIFNOTLT                      R10 R9 ; [+14]
      582 MOVE                             R10 R2
      583 GETUPVAL                         R11 5
      584 GETTABLEKS                       R12 R4 K3 ["blockIndex"]
      586 GETTABLEKS                       R13 R6 K10 ["children"]
      588 JUMPIF                           R13 ; [+2]
      589 NEWTABLE                         R13 0 0
      591 SUBK                             R14 R9 K11 [1]
      592 CALL                             R11 3 -1
      593 CALL                             R10 -1 0
      594 RETURN                           R0 0
      595 GETTABLEKS                       R9 R4 K3 ["blockIndex"]
      597 LOADN                            R10 1
      598 JUMPIFNOTLT                      R10 R9 ; [+15]
      600 GETTABLEKS                       R11 R4 K3 ["blockIndex"]
      602 SUBK                             R10 R11 K11 [1]
      603 GETTABLE                         R9 R5 R10
      604 JUMPIFNOT                        R9 ; [+9]
      605 MOVE                             R10 R2
      606 GETUPVAL                         R11 6
      607 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      609 SUBK                             R12 R13 K11 [1]
      610 MOVE                             R13 R9
      611 LOADB                            R14 1
      612 CALL                             R11 3 -1
      613 CALL                             R10 -1 0
      614 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["isCollapsed"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 JUMPIF                           R4 ; [+20]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["getOrderedSelection"]
        9 MOVE                             R5 R0
       10 CALL                             R4 1 2
       11 MOVE                             R6 R2
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K2 ["createCollapsed"]
       15 GETTABLEKS                       R8 R5 K3 ["blockIndex"]
       17 GETTABLEKS                       R9 R5 K4 ["segmentIndex"]
       19 GETTABLEKS                       R10 R5 K5 ["charOffset"]
       21 GETTABLEKS                       R11 R5 K6 ["path"]
       23 CALL                             R7 4 -1
       24 CALL                             R6 -1 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R4 R0 K7 ["anchor"]
       28 MOVE                             R5 R3
       29 MOVE                             R6 R1
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R7 R4 K3 ["blockIndex"]
       33 GETTABLE                         R6 R5 R7
       34 JUMPIF                           R6 ; [+1]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R8 R6 K8 ["name"]
       38 JUMPIFEQKS                       R8 K9 ["TABLE"] ; [+2]
       40 LOADB                            R7 0 +1
       41 LOADB                            R7 1
       42 JUMPIFNOT                        R7 ; [+156]
       43 GETUPVAL                         R7 1
       44 MOVE                             R8 R6
       45 MOVE                             R9 R4
       46 CALL                             R7 2 3
       47 JUMPIFNOT                        R7 ; [+151]
       48 JUMPIFNOT                        R8 ; [+150]
       49 JUMPIFNOT                        R9 ; [+149]
       50 GETTABLEKS                       R11 R7 K10 ["children"]
       52 JUMPIF                           R11 ; [+2]
       53 NEWTABLE                         R11 0 0
       55 LOADN                            R12 0
       56 LOADN                            R13 0
       57 NEWCLOSURE                       R14 P0
       58 CAPTURE                          REF R13
       59 CAPTURE                          VAL R4
       60 CAPTURE                          REF R12
       61 CAPTURE                          VAL R14
       62 MOVE                             R15 R14
       63 MOVE                             R16 R11
       64 CALL                             R15 1 1
       65 OR                               R10 R15 R12
       66 CLOSEUPVALS                      R12
       67 GETTABLEKS                       R12 R7 K10 ["children"]
       69 JUMPIF                           R12 ; [+2]
       70 NEWTABLE                         R12 0 0
       72 LOADN                            R13 0
       73 MOVE                             R14 R12
       74 LOADNIL                          R15
       75 LOADNIL                          R16
       76 FORGPREP                         R14
       77 GETUPVAL                         R19 2
       78 MOVE                             R20 R18
       79 CALL                             R19 1 1
       80 ADD                              R13 R13 R19
       81 FORGLOOP                         R14 2 ; [-5]
       83 MOVE                             R11 R13
       84 JUMPIFNOTLT                      R10 R11 ; [+63]
       86 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
       88 GETTABLEKS                       R14 R7 K10 ["children"]
       90 JUMPIF                           R14 ; [+2]
       91 NEWTABLE                         R14 0 0
       93 ADDK                             R15 R10 K11 [1]
       94 LOADN                            R16 0
       95 LOADN                            R17 0
       96 NEWCLOSURE                       R18 P1
       97 CAPTURE                          REF R16
       98 CAPTURE                          VAL R15
       99 CAPTURE                          REF R17
      100 CAPTURE                          UPVAL U0
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R18
      103 MOVE                             R19 R18
      104 MOVE                             R20 R14
      105 CALL                             R19 1 1
      106 JUMPIFNOT                        R19 ; [+3]
      107 MOVE                             R12 R19
      108 CLOSEUPVALS                      R16
      109 JUMP                             ; [+15]
      110 GETUPVAL                         R20 0
      111 GETTABLEKS                       R20 R20 K2 ["createCollapsed"]
      113 MOVE                             R21 R13
      114 LOADN                            R23 1
      115 FASTCALL2                        MATH_MAX R23 R16 ; [+4]
      117 MOVE                             R24 R16
      118 GETIMPORT                        R22 K14 [math.max]
      120 CALL                             R22 2 1
      121 SUB                              R23 R15 R17
      122 CALL                             R20 3 1
      123 MOVE                             R12 R20
      124 CLOSEUPVALS                      R16
      125 MOVE                             R13 R2
      126 GETUPVAL                         R14 0
      127 GETTABLEKS                       R14 R14 K2 ["createCollapsed"]
      129 GETTABLEKS                       R15 R4 K3 ["blockIndex"]
      131 GETTABLEKS                       R16 R12 K7 ["anchor"]
      133 GETTABLEKS                       R16 R16 K4 ["segmentIndex"]
      135 GETTABLEKS                       R17 R12 K7 ["anchor"]
      137 GETTABLEKS                       R17 R17 K5 ["charOffset"]
      139 NEWTABLE                         R18 0 2
      141 MOVE                             R19 R8
      142 MOVE                             R20 R9
      143 SETLIST                          R18 R19 2 [1]
      145 CALL                             R14 4 -1
      146 CALL                             R13 -1 0
      147 RETURN                           R0 0
      148 GETTABLEKS                       R12 R6 K10 ["children"]
      150 JUMPIF                           R12 ; [+2]
      151 NEWTABLE                         R12 0 0
      153 GETTABLE                         R13 R12 R8
      154 GETTABLEKS                       R14 R13 K10 ["children"]
      156 JUMPIF                           R14 ; [+2]
      157 NEWTABLE                         R14 0 0
      159 LENGTH                           R15 R14
      160 JUMPIFNOTLT                      R9 R15 ; [+18]
      162 MOVE                             R15 R2
      163 GETUPVAL                         R16 0
      164 GETTABLEKS                       R16 R16 K2 ["createCollapsed"]
      166 GETTABLEKS                       R17 R4 K3 ["blockIndex"]
      168 LOADN                            R18 1
      169 LOADN                            R19 0
      170 NEWTABLE                         R20 0 2
      172 MOVE                             R21 R8
      173 ADDK                             R22 R9 K11 [1]
      174 SETLIST                          R20 R21 2 [1]
      176 CALL                             R16 4 -1
      177 CALL                             R15 -1 0
      178 RETURN                           R0 0
      179 LENGTH                           R15 R12
      180 JUMPIFNOTLT                      R8 R15 ; [+18]
      182 MOVE                             R15 R2
      183 GETUPVAL                         R16 0
      184 GETTABLEKS                       R16 R16 K2 ["createCollapsed"]
      186 GETTABLEKS                       R17 R4 K3 ["blockIndex"]
      188 LOADN                            R18 1
      189 LOADN                            R19 0
      190 NEWTABLE                         R20 0 2
      192 ADDK                             R21 R8 K11 [1]
      193 LOADN                            R22 1
      194 SETLIST                          R20 R21 2 [1]
      196 CALL                             R16 4 -1
      197 CALL                             R15 -1 0
      198 RETURN                           R0 0
      199 GETTABLEKS                       R9 R6 K8 ["name"]
      201 JUMPIFEQKS                       R9 K15 ["LIST"] ; [+4]
      203 LOADNIL                          R7
      204 LOADNIL                          R8
      205 JUMP                             ; [+19]
      206 GETTABLEKS                       R10 R4 K6 ["path"]
      208 JUMPIFNOT                        R10 ; [+4]
      209 GETTABLEKS                       R10 R4 K6 ["path"]
      211 GETTABLEN                        R9 R10 1
      212 JUMP                             ; [+1]
      213 LOADNIL                          R9
      214 JUMPIF                           R9 ; [+3]
      215 LOADNIL                          R7
      216 LOADNIL                          R8
      217 JUMP                             ; [+7]
      218 GETTABLEKS                       R10 R6 K10 ["children"]
      220 JUMPIF                           R10 ; [+2]
      221 NEWTABLE                         R10 0 0
      223 GETTABLE                         R7 R10 R9
      224 MOVE                             R8 R9
      225 GETTABLEKS                       R9 R6 K8 ["name"]
      227 JUMPIFNOTEQKS                    R9 K15 ["LIST"] ; [+123]
      229 JUMPIFNOT                        R7 ; [+121]
      230 GETTABLEKS                       R10 R7 K10 ["children"]
      232 JUMPIF                           R10 ; [+2]
      233 NEWTABLE                         R10 0 0
      235 LOADN                            R11 0
      236 LOADN                            R12 0
      237 NEWCLOSURE                       R13 P0
      238 CAPTURE                          REF R12
      239 CAPTURE                          VAL R4
      240 CAPTURE                          REF R11
      241 CAPTURE                          VAL R13
      242 MOVE                             R14 R13
      243 MOVE                             R15 R10
      244 CALL                             R14 1 1
      245 OR                               R9 R14 R11
      246 CLOSEUPVALS                      R11
      247 GETTABLEKS                       R11 R7 K10 ["children"]
      249 JUMPIF                           R11 ; [+2]
      250 NEWTABLE                         R11 0 0
      252 LOADN                            R12 0
      253 MOVE                             R13 R11
      254 LOADNIL                          R14
      255 LOADNIL                          R15
      256 FORGPREP                         R13
      257 GETUPVAL                         R18 2
      258 MOVE                             R19 R17
      259 CALL                             R18 1 1
      260 ADD                              R12 R12 R18
      261 FORGLOOP                         R13 2 ; [-5]
      263 MOVE                             R10 R12
      264 JUMPIFNOTLT                      R9 R10 ; [+62]
      266 GETTABLEKS                       R12 R4 K3 ["blockIndex"]
      268 GETTABLEKS                       R13 R7 K10 ["children"]
      270 JUMPIF                           R13 ; [+2]
      271 NEWTABLE                         R13 0 0
      273 ADDK                             R14 R9 K11 [1]
      274 LOADN                            R15 0
      275 LOADN                            R16 0
      276 NEWCLOSURE                       R17 P1
      277 CAPTURE                          REF R15
      278 CAPTURE                          VAL R14
      279 CAPTURE                          REF R16
      280 CAPTURE                          UPVAL U0
      281 CAPTURE                          VAL R12
      282 CAPTURE                          VAL R17
      283 MOVE                             R18 R17
      284 MOVE                             R19 R13
      285 CALL                             R18 1 1
      286 JUMPIFNOT                        R18 ; [+3]
      287 MOVE                             R11 R18
      288 CLOSEUPVALS                      R15
      289 JUMP                             ; [+15]
      290 GETUPVAL                         R19 0
      291 GETTABLEKS                       R19 R19 K2 ["createCollapsed"]
      293 MOVE                             R20 R12
      294 LOADN                            R22 1
      295 FASTCALL2                        MATH_MAX R22 R15 ; [+4]
      297 MOVE                             R23 R15
      298 GETIMPORT                        R21 K14 [math.max]
      300 CALL                             R21 2 1
      301 SUB                              R22 R14 R16
      302 CALL                             R19 3 1
      303 MOVE                             R11 R19
      304 CLOSEUPVALS                      R15
      305 MOVE                             R12 R2
      306 GETUPVAL                         R13 0
      307 GETTABLEKS                       R13 R13 K2 ["createCollapsed"]
      309 GETTABLEKS                       R14 R4 K3 ["blockIndex"]
      311 GETTABLEKS                       R15 R11 K7 ["anchor"]
      313 GETTABLEKS                       R15 R15 K4 ["segmentIndex"]
      315 GETTABLEKS                       R16 R11 K7 ["anchor"]
      317 GETTABLEKS                       R16 R16 K5 ["charOffset"]
      319 NEWTABLE                         R17 0 1
      321 MOVE                             R18 R8
      322 SETLIST                          R17 R18 1 [1]
      324 CALL                             R13 4 -1
      325 CALL                             R12 -1 0
      326 RETURN                           R0 0
      327 GETTABLEKS                       R11 R6 K10 ["children"]
      329 JUMPIF                           R11 ; [+2]
      330 NEWTABLE                         R11 0 0
      332 LENGTH                           R12 R11
      333 JUMPIFNOTLT                      R8 R12 ; [+17]
      335 MOVE                             R12 R2
      336 GETUPVAL                         R13 0
      337 GETTABLEKS                       R13 R13 K2 ["createCollapsed"]
      339 GETTABLEKS                       R14 R4 K3 ["blockIndex"]
      341 LOADN                            R15 1
      342 LOADN                            R16 0
      343 NEWTABLE                         R17 0 1
      345 ADDK                             R18 R8 K11 [1]
      346 SETLIST                          R17 R18 1 [1]
      348 CALL                             R13 4 -1
      349 CALL                             R12 -1 0
      350 RETURN                           R0 0
      351 GETTABLEKS                       R10 R6 K8 ["name"]
      353 JUMPIFEQKS                       R10 K16 ["CODE_BLOCK"] ; [+2]
      355 LOADB                            R9 0 +1
      356 LOADB                            R9 1
      357 JUMPIFNOT                        R9 ; [+19]
      358 GETTABLEKS                       R10 R6 K18 ["text"]
      360 ORK                              R9 R10 K17 [""]
      361 GETUPVAL                         R10 3
      362 MOVE                             R11 R4
      363 MOVE                             R12 R9
      364 CALL                             R10 2 1
      365 LENGTH                           R11 R9
      366 JUMPIFNOTLT                      R10 R11 ; [+10]
      368 MOVE                             R11 R2
      369 GETUPVAL                         R12 4
      370 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      372 MOVE                             R14 R9
      373 ADDK                             R15 R10 K11 [1]
      374 CALL                             R12 3 -1
      375 CALL                             R11 -1 0
      376 RETURN                           R0 0
      377 GETTABLEKS                       R10 R6 K8 ["name"]
      379 LOADB                            R9 1
      380 JUMPIFEQKS                       R10 K19 ["PARAGRAPH"] ; [+11]
      382 LOADB                            R9 1
      383 JUMPIFEQKS                       R10 K20 ["HEADING"] ; [+8]
      385 LOADB                            R9 1
      386 JUMPIFEQKS                       R10 K21 ["QUOTE"] ; [+5]
      388 JUMPIFEQKS                       R10 K22 ["LIST_ITEM"] ; [+2]
      390 LOADB                            R9 0 +1
      391 LOADB                            R9 1
      392 JUMPIFNOT                        R9 ; [+49]
      393 GETTABLEKS                       R10 R6 K10 ["children"]
      395 JUMPIF                           R10 ; [+2]
      396 NEWTABLE                         R10 0 0
      398 LOADN                            R11 0
      399 LOADN                            R12 0
      400 NEWCLOSURE                       R13 P0
      401 CAPTURE                          REF R12
      402 CAPTURE                          VAL R4
      403 CAPTURE                          REF R11
      404 CAPTURE                          VAL R13
      405 MOVE                             R14 R13
      406 MOVE                             R15 R10
      407 CALL                             R14 1 1
      408 OR                               R9 R14 R11
      409 CLOSEUPVALS                      R11
      410 GETTABLEKS                       R11 R6 K10 ["children"]
      412 JUMPIF                           R11 ; [+2]
      413 NEWTABLE                         R11 0 0
      415 LOADN                            R12 0
      416 MOVE                             R13 R11
      417 LOADNIL                          R14
      418 LOADNIL                          R15
      419 FORGPREP                         R13
      420 GETUPVAL                         R18 2
      421 MOVE                             R19 R17
      422 CALL                             R18 1 1
      423 ADD                              R12 R12 R18
      424 FORGLOOP                         R13 2 ; [-5]
      426 MOVE                             R10 R12
      427 JUMPIFNOTLT                      R9 R10 ; [+14]
      429 MOVE                             R11 R2
      430 GETUPVAL                         R12 5
      431 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      433 GETTABLEKS                       R14 R6 K10 ["children"]
      435 JUMPIF                           R14 ; [+2]
      436 NEWTABLE                         R14 0 0
      438 ADDK                             R15 R9 K11 [1]
      439 CALL                             R12 3 -1
      440 CALL                             R11 -1 0
      441 RETURN                           R0 0
      442 GETTABLEKS                       R9 R4 K3 ["blockIndex"]
      444 LENGTH                           R10 R5
      445 JUMPIFNOTLT                      R9 R10 ; [+15]
      447 GETTABLEKS                       R11 R4 K3 ["blockIndex"]
      449 ADDK                             R10 R11 K11 [1]
      450 GETTABLE                         R9 R5 R10
      451 JUMPIFNOT                        R9 ; [+9]
      452 MOVE                             R10 R2
      453 GETUPVAL                         R11 6
      454 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      456 ADDK                             R12 R13 K11 [1]
      457 MOVE                             R13 R9
      458 LOADB                            R14 0
      459 CALL                             R11 3 -1
      460 CALL                             R10 -1 0
      461 RETURN                           R0 0

PROTO_37:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 MOVE                             R7 R6
        5 LOADNIL                          R8
        6 LOADNIL                          R9
        7 FORGPREP                         R7
        8 GETTABLEKS                       R12 R11 K0 ["globalIndex"]
       10 JUMPIFNOTEQ                      R12 R1 ; [+2]
       12 RETURN                           R5 1
       13 FORGLOOP                         R7 2 ; [-6]
       15 FORGLOOP                         R2 2 ; [-12]
       17 LOADNIL                          R2
       18 RETURN                           R2 1

PROTO_38:
        0 GETTABLEKS                       R3 R0 K0 ["itemLayoutRegistry"]
        2 JUMPIF                           R3 ; [+2]
        3 LOADNIL                          R4
        4 RETURN                           R4 1
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R10 R1
        7 GETIMPORT                        R9 K2 [tostring]
        9 CALL                             R9 1 1
       10 MOVE                             R6 R9
       11 LOADK                            R7 K3 [":"]
       12 FASTCALL1                        TOSTRING R2 ; [+3]
       13 MOVE                             R9 R2
       14 GETIMPORT                        R8 K2 [tostring]
       16 CALL                             R8 1 1
       17 CONCAT                           R5 R6 R8
       18 GETTABLE                         R4 R3 R5
       19 RETURN                           R4 1

PROTO_39:
        0 SUBK                             R5 R1 K0 [1]
        1 GETTABLEKS                       R6 R0 K1 ["lineHeight"]
        3 MUL                              R4 R5 R6
        4 GETTABLEKS                       R6 R0 K1 ["lineHeight"]
        6 DIVK                             R5 R6 K2 [2]
        7 ADD                              R3 R4 R5
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["charHitTest"]
       11 GETIMPORT                        R5 K6 [Vector2.new]
       13 MOVE                             R6 R2
       14 MOVE                             R7 R3
       15 CALL                             R5 2 1
       16 GETTABLEKS                       R6 R0 K7 ["rows"]
       18 GETTABLEKS                       R7 R0 K1 ["lineHeight"]
       20 GETTABLEKS                       R8 R0 K8 ["font"]
       22 GETTABLEKS                       R9 R0 K9 ["textSize"]
       24 CALL                             R4 5 -1
       25 RETURN                           R4 -1

PROTO_40:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["isCollapsed"]
        3 MOVE                             R6 R0
        4 CALL                             R5 1 1
        5 JUMPIF                           R5 ; [+26]
        6 LOADNIL                          R5
        7 SETTABLEKS                       R5 R4 K1 ["preferredColumn"]
        9 LOADNIL                          R5
       10 SETTABLEKS                       R5 R4 K2 ["preferredFlatOffset"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K3 ["getOrderedSelection"]
       15 MOVE                             R6 R0
       16 CALL                             R5 1 1
       17 MOVE                             R6 R2
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K4 ["createCollapsed"]
       21 GETTABLEKS                       R8 R5 K5 ["blockIndex"]
       23 GETTABLEKS                       R9 R5 K6 ["segmentIndex"]
       25 GETTABLEKS                       R10 R5 K7 ["charOffset"]
       27 GETTABLEKS                       R11 R5 K8 ["path"]
       29 CALL                             R7 4 -1
       30 CALL                             R6 -1 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R5 R0 K9 ["anchor"]
       34 MOVE                             R6 R3
       35 MOVE                             R7 R1
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R8 R5 K5 ["blockIndex"]
       39 GETTABLE                         R7 R6 R8
       40 JUMPIFNOT                        R7 ; [+93]
       41 GETTABLEKS                       R9 R7 K10 ["name"]
       43 JUMPIFEQKS                       R9 K11 ["TABLE"] ; [+2]
       45 LOADB                            R8 0 +1
       46 LOADB                            R8 1
       47 JUMPIFNOT                        R8 ; [+86]
       48 GETUPVAL                         R8 1
       49 MOVE                             R9 R7
       50 MOVE                             R10 R5
       51 CALL                             R8 2 3
       52 JUMPIFNOT                        R9 ; [+59]
       53 JUMPIFNOT                        R10 ; [+58]
       54 LOADN                            R11 1
       55 JUMPIFNOTLT                      R11 R9 ; [+56]
       57 GETTABLEKS                       R11 R7 K12 ["children"]
       59 JUMPIF                           R11 ; [+2]
       60 NEWTABLE                         R11 0 0
       62 SUBK                             R13 R9 K13 [1]
       63 GETTABLE                         R12 R11 R13
       64 GETTABLEKS                       R13 R12 K12 ["children"]
       66 JUMPIF                           R13 ; [+2]
       67 NEWTABLE                         R13 0 0
       69 LENGTH                           R16 R13
       70 FASTCALL2                        MATH_MIN R10 R16 ; [+4]
       72 MOVE                             R15 R10
       73 GETIMPORT                        R14 K16 [math.min]
       75 CALL                             R14 2 1
       76 LOADN                            R15 0
       77 JUMPIFNOTLT                      R15 R14 ; [+34]
       79 GETTABLE                         R15 R13 R14
       80 GETTABLEKS                       R16 R4 K2 ["preferredFlatOffset"]
       82 JUMPIF                           R16 ; [+18]
       83 JUMPIFNOT                        R8 ; [+17]
       84 GETTABLEKS                       R17 R8 K12 ["children"]
       86 JUMPIF                           R17 ; [+2]
       87 NEWTABLE                         R17 0 0
       89 LOADN                            R18 0
       90 LOADN                            R19 0
       91 NEWCLOSURE                       R20 P0
       92 CAPTURE                          REF R19
       93 CAPTURE                          VAL R5
       94 CAPTURE                          REF R18
       95 CAPTURE                          VAL R20
       96 MOVE                             R21 R20
       97 MOVE                             R22 R17
       98 CALL                             R21 1 1
       99 OR                               R16 R21 R18
      100 CLOSEUPVALS                      R18
      101 MOVE                             R17 R2
      102 GETUPVAL                         R18 2
      103 GETTABLEKS                       R19 R5 K5 ["blockIndex"]
      105 MOVE                             R20 R15
      106 SUBK                             R21 R9 K13 [1]
      107 MOVE                             R22 R14
      108 ORK                              R23 R16 K17 [0]
      109 CALL                             R18 5 -1
      110 CALL                             R17 -1 0
      111 RETURN                           R0 0
      112 GETTABLEKS                       R11 R5 K5 ["blockIndex"]
      114 LOADN                            R12 1
      115 JUMPIFNOTLT                      R12 R11 ; [+17]
      117 GETTABLEKS                       R13 R5 K5 ["blockIndex"]
      119 SUBK                             R12 R13 K13 [1]
      120 GETTABLE                         R11 R6 R12
      121 JUMPIFNOT                        R11 ; [+11]
      122 MOVE                             R12 R2
      123 GETUPVAL                         R13 3
      124 GETTABLEKS                       R15 R5 K5 ["blockIndex"]
      126 SUBK                             R14 R15 K13 [1]
      127 MOVE                             R15 R11
      128 LOADB                            R16 1
      129 GETTABLEKS                       R17 R4 K2 ["preferredFlatOffset"]
      131 CALL                             R13 4 -1
      132 CALL                             R12 -1 0
      133 RETURN                           R0 0
      134 JUMPIFNOT                        R7 ; [+367]
      135 GETTABLEKS                       R8 R7 K10 ["name"]
      137 JUMPIFNOTEQKS                    R8 K18 ["LIST"] ; [+364]
      139 GETTABLEKS                       R8 R7 K12 ["children"]
      141 JUMPIF                           R8 ; [+2]
      142 NEWTABLE                         R8 0 0
      144 GETTABLEKS                       R10 R5 K8 ["path"]
      146 JUMPIFNOT                        R10 ; [+4]
      147 GETTABLEKS                       R10 R5 K8 ["path"]
      149 GETTABLEN                        R9 R10 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R9
      152 JUMPIFNOT                        R9 ; [+250]
      153 GETTABLE                         R10 R8 R9
      154 GETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      156 JUMPIFNOTEQKNIL                  R11 ; [+22]
      158 JUMPIFNOT                        R10 ; [+20]
      159 GETTABLEKS                       R13 R10 K12 ["children"]
      161 JUMPIF                           R13 ; [+2]
      162 NEWTABLE                         R13 0 0
      164 LOADN                            R14 0
      165 LOADN                            R15 0
      166 NEWCLOSURE                       R16 P0
      167 CAPTURE                          REF R15
      168 CAPTURE                          VAL R5
      169 CAPTURE                          REF R14
      170 CAPTURE                          VAL R16
      171 MOVE                             R17 R16
      172 MOVE                             R18 R13
      173 CALL                             R17 1 1
      174 OR                               R12 R17 R14
      175 CLOSEUPVALS                      R14
      176 ADDK                             R11 R12 K19 [5]
      177 SETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      179 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      181 GETTABLEKS                       R13 R4 K20 ["itemLayoutRegistry"]
      183 JUMPIF                           R13 ; [+2]
      184 LOADNIL                          R11
      185 JUMP                             ; [+14]
      186 FASTCALL1                        TOSTRING R12 ; [+3]
      187 MOVE                             R19 R12
      188 GETIMPORT                        R18 K22 [tostring]
      190 CALL                             R18 1 1
      191 MOVE                             R15 R18
      192 LOADK                            R16 K23 [":"]
      193 FASTCALL1                        TOSTRING R9 ; [+3]
      194 MOVE                             R18 R9
      195 GETIMPORT                        R17 K22 [tostring]
      197 CALL                             R17 1 1
      198 CONCAT                           R14 R15 R17
      199 GETTABLE                         R11 R13 R14
      200 JUMPIFNOT                        R11 ; [+97]
      201 GETTABLEKS                       R13 R11 K24 ["rows"]
      203 LENGTH                           R12 R13
      204 LOADN                            R13 1
      205 JUMPIFNOTLT                      R13 R12 ; [+92]
      207 GETUPVAL                         R12 4
      208 GETTABLEKS                       R13 R11 K24 ["rows"]
      210 GETTABLEKS                       R14 R5 K6 ["segmentIndex"]
      212 CALL                             R12 2 1
      213 JUMPIFNOT                        R12 ; [+84]
      214 LOADN                            R13 1
      215 JUMPIFNOTLT                      R13 R12 ; [+82]
      217 GETTABLEKS                       R13 R4 K1 ["preferredColumn"]
      219 JUMPIFNOTEQKNIL                  R13 ; [+24]
      221 GETUPVAL                         R13 5
      222 GETTABLEKS                       R13 R13 K25 ["computeCursorPosition"]
      224 GETTABLEKS                       R14 R11 K24 ["rows"]
      226 GETTABLEKS                       R15 R11 K26 ["lineHeight"]
      228 GETTABLEKS                       R16 R5 K6 ["segmentIndex"]
      230 GETTABLEKS                       R17 R5 K7 ["charOffset"]
      232 GETTABLEKS                       R18 R11 K27 ["font"]
      234 GETTABLEKS                       R19 R11 K28 ["textSize"]
      236 CALL                             R13 6 1
      237 JUMPIFNOT                        R13 ; [+3]
      238 GETTABLEKS                       R14 R13 K29 ["x"]
      240 JUMP                             ; [+1]
      241 LOADN                            R14 0
      242 SETTABLEKS                       R14 R4 K1 ["preferredColumn"]
      244 GETTABLEKS                       R14 R4 K1 ["preferredColumn"]
      246 FASTCALL2K                       ASSERT R14 K1 ; [+4]
      248 LOADK                            R15 K1 ["preferredColumn"]
      249 GETIMPORT                        R13 K31 [assert]
      251 CALL                             R13 2 1
      252 SUBK                             R16 R12 K13 [1]
      253 SUBK                             R19 R16 K13 [1]
      254 GETTABLEKS                       R20 R11 K26 ["lineHeight"]
      256 MUL                              R18 R19 R20
      257 GETTABLEKS                       R20 R11 K26 ["lineHeight"]
      259 DIVK                             R19 R20 K32 [2]
      260 ADD                              R17 R18 R19
      261 GETUPVAL                         R18 5
      262 GETTABLEKS                       R18 R18 K33 ["charHitTest"]
      264 GETIMPORT                        R19 K36 [Vector2.new]
      266 MOVE                             R20 R13
      267 MOVE                             R21 R17
      268 CALL                             R19 2 1
      269 GETTABLEKS                       R20 R11 K24 ["rows"]
      271 GETTABLEKS                       R21 R11 K26 ["lineHeight"]
      273 GETTABLEKS                       R22 R11 K27 ["font"]
      275 GETTABLEKS                       R23 R11 K28 ["textSize"]
      277 CALL                             R18 5 2
      278 MOVE                             R14 R18
      279 MOVE                             R15 R19
      280 JUMPIFNOT                        R14 ; [+17]
      281 JUMPIFNOT                        R15 ; [+16]
      282 MOVE                             R16 R2
      283 GETUPVAL                         R17 0
      284 GETTABLEKS                       R17 R17 K4 ["createCollapsed"]
      286 GETTABLEKS                       R18 R5 K5 ["blockIndex"]
      288 MOVE                             R19 R14
      289 MOVE                             R20 R15
      290 NEWTABLE                         R21 0 1
      292 MOVE                             R22 R9
      293 SETLIST                          R21 R22 1 [1]
      295 CALL                             R17 4 -1
      296 CALL                             R16 -1 0
      297 RETURN                           R0 0
      298 LOADN                            R12 1
      299 JUMPIFNOTLT                      R12 R9 ; [+103]
      301 SUBK                             R13 R9 K13 [1]
      302 GETTABLE                         R12 R8 R13
      303 JUMPIFNOT                        R12 ; [+99]
      304 GETTABLEKS                       R14 R5 K5 ["blockIndex"]
      306 SUBK                             R15 R9 K13 [1]
      307 GETTABLEKS                       R16 R4 K20 ["itemLayoutRegistry"]
      309 JUMPIF                           R16 ; [+2]
      310 LOADNIL                          R13
      311 JUMP                             ; [+14]
      312 FASTCALL1                        TOSTRING R14 ; [+3]
      313 MOVE                             R22 R14
      314 GETIMPORT                        R21 K22 [tostring]
      316 CALL                             R21 1 1
      317 MOVE                             R18 R21
      318 LOADK                            R19 K23 [":"]
      319 FASTCALL1                        TOSTRING R15 ; [+3]
      320 MOVE                             R21 R15
      321 GETIMPORT                        R20 K22 [tostring]
      323 CALL                             R20 1 1
      324 CONCAT                           R17 R18 R20
      325 GETTABLE                         R13 R16 R17
      326 GETTABLEKS                       R14 R4 K1 ["preferredColumn"]
      328 JUMPIFNOT                        R13 ; [+55]
      329 GETTABLEKS                       R16 R13 K24 ["rows"]
      331 LENGTH                           R15 R16
      332 LOADN                            R16 0
      333 JUMPIFNOTLT                      R16 R15 ; [+50]
      335 JUMPIFNOT                        R14 ; [+48]
      336 GETTABLEKS                       R18 R13 K24 ["rows"]
      338 LENGTH                           R17 R18
      339 SUBK                             R20 R17 K13 [1]
      340 GETTABLEKS                       R21 R13 K26 ["lineHeight"]
      342 MUL                              R19 R20 R21
      343 GETTABLEKS                       R21 R13 K26 ["lineHeight"]
      345 DIVK                             R20 R21 K32 [2]
      346 ADD                              R18 R19 R20
      347 GETUPVAL                         R19 5
      348 GETTABLEKS                       R19 R19 K33 ["charHitTest"]
      350 GETIMPORT                        R20 K36 [Vector2.new]
      352 MOVE                             R21 R14
      353 MOVE                             R22 R18
      354 CALL                             R20 2 1
      355 GETTABLEKS                       R21 R13 K24 ["rows"]
      357 GETTABLEKS                       R22 R13 K26 ["lineHeight"]
      359 GETTABLEKS                       R23 R13 K27 ["font"]
      361 GETTABLEKS                       R24 R13 K28 ["textSize"]
      363 CALL                             R19 5 2
      364 MOVE                             R15 R19
      365 MOVE                             R16 R20
      366 JUMPIFNOT                        R15 ; [+17]
      367 JUMPIFNOT                        R16 ; [+16]
      368 MOVE                             R17 R2
      369 GETUPVAL                         R18 0
      370 GETTABLEKS                       R18 R18 K4 ["createCollapsed"]
      372 GETTABLEKS                       R19 R5 K5 ["blockIndex"]
      374 MOVE                             R20 R15
      375 MOVE                             R21 R16
      376 NEWTABLE                         R22 0 1
      378 SUBK                             R23 R9 K13 [1]
      379 SETLIST                          R22 R23 1 [1]
      381 CALL                             R18 4 -1
      382 CALL                             R17 -1 0
      383 RETURN                           R0 0
      384 MOVE                             R15 R2
      385 GETUPVAL                         R16 6
      386 GETTABLEKS                       R17 R5 K5 ["blockIndex"]
      388 MOVE                             R18 R12
      389 SUBK                             R19 R9 K13 [1]
      390 LOADN                            R21 0
      391 GETTABLEKS                       R24 R4 K2 ["preferredFlatOffset"]
      393 ORK                              R23 R24 K17 [0]
      394 SUBK                             R22 R23 K19 [5]
      395 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
      397 GETIMPORT                        R20 K38 [math.max]
      399 CALL                             R20 2 1
      400 CALL                             R16 4 -1
      401 CALL                             R15 -1 0
      402 RETURN                           R0 0
      403 GETTABLEKS                       R10 R5 K5 ["blockIndex"]
      405 LOADN                            R11 1
      406 JUMPIFNOTLT                      R11 R10 ; [+94]
      408 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      410 SUBK                             R11 R12 K13 [1]
      411 GETTABLE                         R10 R6 R11
      412 JUMPIFNOT                        R10 ; [+88]
      413 GETTABLEKS                       R11 R4 K39 ["layoutRegistry"]
      415 JUMPIFNOT                        R11 ; [+5]
      416 GETTABLEKS                       R14 R5 K5 ["blockIndex"]
      418 SUBK                             R13 R14 K13 [1]
      419 GETTABLE                         R12 R11 R13
      420 JUMP                             ; [+1]
      421 LOADNIL                          R12
      422 JUMPIFNOT                        R12 ; [+67]
      423 GETTABLEKS                       R14 R12 K24 ["rows"]
      425 LENGTH                           R13 R14
      426 LOADN                            R14 0
      427 JUMPIFNOTLT                      R14 R13 ; [+62]
      429 GETTABLEKS                       R13 R4 K1 ["preferredColumn"]
      431 JUMPIFNOT                        R13 ; [+58]
      432 GETTABLEKS                       R16 R12 K24 ["rows"]
      434 LENGTH                           R15 R16
      435 GETTABLEKS                       R16 R4 K1 ["preferredColumn"]
      437 SUBK                             R19 R15 K13 [1]
      438 GETTABLEKS                       R20 R12 K26 ["lineHeight"]
      440 MUL                              R18 R19 R20
      441 GETTABLEKS                       R20 R12 K26 ["lineHeight"]
      443 DIVK                             R19 R20 K32 [2]
      444 ADD                              R17 R18 R19
      445 GETUPVAL                         R18 5
      446 GETTABLEKS                       R18 R18 K33 ["charHitTest"]
      448 GETIMPORT                        R19 K36 [Vector2.new]
      450 MOVE                             R20 R16
      451 MOVE                             R21 R17
      452 CALL                             R19 2 1
      453 GETTABLEKS                       R20 R12 K24 ["rows"]
      455 GETTABLEKS                       R21 R12 K26 ["lineHeight"]
      457 GETTABLEKS                       R22 R12 K27 ["font"]
      459 GETTABLEKS                       R23 R12 K28 ["textSize"]
      461 CALL                             R18 5 2
      462 MOVE                             R13 R18
      463 MOVE                             R14 R19
      464 JUMPIFNOT                        R13 ; [+13]
      465 JUMPIFNOT                        R14 ; [+12]
      466 MOVE                             R15 R2
      467 GETUPVAL                         R16 0
      468 GETTABLEKS                       R16 R16 K4 ["createCollapsed"]
      470 GETTABLEKS                       R18 R5 K5 ["blockIndex"]
      472 SUBK                             R17 R18 K13 [1]
      473 MOVE                             R18 R13
      474 MOVE                             R19 R14
      475 CALL                             R16 3 -1
      476 CALL                             R15 -1 0
      477 RETURN                           R0 0
      478 MOVE                             R15 R2
      479 GETUPVAL                         R16 3
      480 GETTABLEKS                       R18 R5 K5 ["blockIndex"]
      482 SUBK                             R17 R18 K13 [1]
      483 MOVE                             R18 R10
      484 LOADB                            R19 1
      485 GETTABLEKS                       R20 R4 K2 ["preferredFlatOffset"]
      487 CALL                             R16 4 -1
      488 CALL                             R15 -1 0
      489 RETURN                           R0 0
      490 MOVE                             R13 R2
      491 GETUPVAL                         R14 3
      492 GETTABLEKS                       R16 R5 K5 ["blockIndex"]
      494 SUBK                             R15 R16 K13 [1]
      495 MOVE                             R16 R10
      496 LOADB                            R17 1
      497 GETTABLEKS                       R18 R4 K2 ["preferredFlatOffset"]
      499 CALL                             R14 4 -1
      500 CALL                             R13 -1 0
      501 RETURN                           R0 0
      502 GETTABLEKS                       R8 R4 K39 ["layoutRegistry"]
      504 JUMPIFNOT                        R8 ; [+4]
      505 GETTABLEKS                       R10 R5 K5 ["blockIndex"]
      507 GETTABLE                         R9 R8 R10
      508 JUMP                             ; [+1]
      509 LOADNIL                          R9
      510 JUMPIF                           R9 ; [+75]
      511 GETTABLEKS                       R10 R4 K2 ["preferredFlatOffset"]
      513 JUMPIFNOTEQKNIL                  R10 ; [+36]
      515 GETTABLEKS                       R11 R7 K10 ["name"]
      517 LOADB                            R10 1
      518 JUMPIFEQKS                       R11 K40 ["PARAGRAPH"] ; [+11]
      520 LOADB                            R10 1
      521 JUMPIFEQKS                       R11 K41 ["HEADING"] ; [+8]
      523 LOADB                            R10 1
      524 JUMPIFEQKS                       R11 K42 ["QUOTE"] ; [+5]
      526 JUMPIFEQKS                       R11 K43 ["LIST_ITEM"] ; [+2]
      528 LOADB                            R10 0 +1
      529 LOADB                            R10 1
      530 JUMPIFNOT                        R10 ; [+19]
      531 GETTABLEKS                       R11 R7 K12 ["children"]
      533 JUMPIF                           R11 ; [+2]
      534 NEWTABLE                         R11 0 0
      536 LOADN                            R12 0
      537 LOADN                            R13 0
      538 NEWCLOSURE                       R14 P0
      539 CAPTURE                          REF R13
      540 CAPTURE                          VAL R5
      541 CAPTURE                          REF R12
      542 CAPTURE                          VAL R14
      543 MOVE                             R15 R14
      544 MOVE                             R16 R11
      545 CALL                             R15 1 1
      546 OR                               R10 R15 R12
      547 CLOSEUPVALS                      R12
      548 SETTABLEKS                       R10 R4 K2 ["preferredFlatOffset"]
      550 GETTABLEKS                       R10 R5 K5 ["blockIndex"]
      552 LOADN                            R11 1
      553 JUMPIFNOTLT                      R11 R10 ; [+31]
      555 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      557 SUBK                             R11 R12 K13 [1]
      558 GETTABLE                         R10 R6 R11
      559 JUMPIFNOT                        R10 ; [+25]
      560 GETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      562 GETTABLEKS                       R12 R10 K10 ["name"]
      564 JUMPIFNOTEQKS                    R12 K18 ["LIST"] ; [+10]
      566 JUMPIFNOT                        R11 ; [+8]
      567 LOADN                            R13 0
      568 SUBK                             R14 R11 K19 [5]
      569 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
      571 GETIMPORT                        R12 K38 [math.max]
      573 CALL                             R12 2 1
      574 MOVE                             R11 R12
      575 MOVE                             R12 R2
      576 GETUPVAL                         R13 3
      577 GETTABLEKS                       R15 R5 K5 ["blockIndex"]
      579 SUBK                             R14 R15 K13 [1]
      580 MOVE                             R15 R10
      581 LOADB                            R16 1
      582 MOVE                             R17 R11
      583 CALL                             R13 4 -1
      584 CALL                             R12 -1 0
      585 RETURN                           R0 0
      586 GETUPVAL                         R10 4
      587 GETTABLEKS                       R11 R9 K24 ["rows"]
      589 GETTABLEKS                       R12 R5 K6 ["segmentIndex"]
      591 CALL                             R10 2 1
      592 JUMPIF                           R10 ; [+1]
      593 RETURN                           R0 0
      594 GETTABLEKS                       R11 R4 K1 ["preferredColumn"]
      596 JUMPIFNOTEQKNIL                  R11 ; [+24]
      598 GETUPVAL                         R11 5
      599 GETTABLEKS                       R11 R11 K25 ["computeCursorPosition"]
      601 GETTABLEKS                       R12 R9 K24 ["rows"]
      603 GETTABLEKS                       R13 R9 K26 ["lineHeight"]
      605 GETTABLEKS                       R14 R5 K6 ["segmentIndex"]
      607 GETTABLEKS                       R15 R5 K7 ["charOffset"]
      609 GETTABLEKS                       R16 R9 K27 ["font"]
      611 GETTABLEKS                       R17 R9 K28 ["textSize"]
      613 CALL                             R11 6 1
      614 JUMPIFNOT                        R11 ; [+3]
      615 GETTABLEKS                       R12 R11 K29 ["x"]
      617 JUMP                             ; [+1]
      618 LOADN                            R12 0
      619 SETTABLEKS                       R12 R4 K1 ["preferredColumn"]
      621 GETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      623 JUMPIFNOTEQKNIL                  R11 ; [+36]
      625 GETTABLEKS                       R12 R7 K10 ["name"]
      627 LOADB                            R11 1
      628 JUMPIFEQKS                       R12 K40 ["PARAGRAPH"] ; [+11]
      630 LOADB                            R11 1
      631 JUMPIFEQKS                       R12 K41 ["HEADING"] ; [+8]
      633 LOADB                            R11 1
      634 JUMPIFEQKS                       R12 K42 ["QUOTE"] ; [+5]
      636 JUMPIFEQKS                       R12 K43 ["LIST_ITEM"] ; [+2]
      638 LOADB                            R11 0 +1
      639 LOADB                            R11 1
      640 JUMPIFNOT                        R11 ; [+19]
      641 GETTABLEKS                       R12 R7 K12 ["children"]
      643 JUMPIF                           R12 ; [+2]
      644 NEWTABLE                         R12 0 0
      646 LOADN                            R13 0
      647 LOADN                            R14 0
      648 NEWCLOSURE                       R15 P0
      649 CAPTURE                          REF R14
      650 CAPTURE                          VAL R5
      651 CAPTURE                          REF R13
      652 CAPTURE                          VAL R15
      653 MOVE                             R16 R15
      654 MOVE                             R17 R12
      655 CALL                             R16 1 1
      656 OR                               R11 R16 R13
      657 CLOSEUPVALS                      R13
      658 SETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      660 GETTABLEKS                       R11 R4 K1 ["preferredColumn"]
      662 LOADN                            R12 1
      663 JUMPIFNOTLT                      R12 R10 ; [+42]
      665 SUBK                             R14 R10 K13 [1]
      666 SUBK                             R17 R14 K13 [1]
      667 GETTABLEKS                       R18 R9 K26 ["lineHeight"]
      669 MUL                              R16 R17 R18
      670 GETTABLEKS                       R18 R9 K26 ["lineHeight"]
      672 DIVK                             R17 R18 K32 [2]
      673 ADD                              R15 R16 R17
      674 GETUPVAL                         R16 5
      675 GETTABLEKS                       R16 R16 K33 ["charHitTest"]
      677 GETIMPORT                        R17 K36 [Vector2.new]
      679 MOVE                             R18 R11
      680 MOVE                             R19 R15
      681 CALL                             R17 2 1
      682 GETTABLEKS                       R18 R9 K24 ["rows"]
      684 GETTABLEKS                       R19 R9 K26 ["lineHeight"]
      686 GETTABLEKS                       R20 R9 K27 ["font"]
      688 GETTABLEKS                       R21 R9 K28 ["textSize"]
      690 CALL                             R16 5 2
      691 MOVE                             R12 R16
      692 MOVE                             R13 R17
      693 JUMPIFNOT                        R12 ; [+121]
      694 JUMPIFNOT                        R13 ; [+120]
      695 MOVE                             R14 R2
      696 GETUPVAL                         R15 0
      697 GETTABLEKS                       R15 R15 K4 ["createCollapsed"]
      699 GETTABLEKS                       R16 R5 K5 ["blockIndex"]
      701 MOVE                             R17 R12
      702 MOVE                             R18 R13
      703 CALL                             R15 3 -1
      704 CALL                             R14 -1 0
      705 RETURN                           R0 0
      706 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      708 LOADN                            R13 1
      709 JUMPIFNOTLT                      R13 R12 ; [+105]
      711 GETTABLEKS                       R14 R5 K5 ["blockIndex"]
      713 SUBK                             R13 R14 K13 [1]
      714 GETTABLE                         R12 R6 R13
      715 JUMPIFNOT                        R12 ; [+29]
      716 GETTABLEKS                       R13 R12 K10 ["name"]
      718 JUMPIFNOTEQKS                    R13 K18 ["LIST"] ; [+26]
      720 GETTABLEKS                       R14 R4 K2 ["preferredFlatOffset"]
      722 JUMPIFNOT                        R14 ; [+10]
      723 LOADN                            R14 0
      724 GETTABLEKS                       R16 R4 K2 ["preferredFlatOffset"]
      726 SUBK                             R15 R16 K19 [5]
      727 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
      729 GETIMPORT                        R13 K38 [math.max]
      731 CALL                             R13 2 1
      732 JUMP                             ; [+1]
      733 LOADNIL                          R13
      734 MOVE                             R14 R2
      735 GETUPVAL                         R15 3
      736 GETTABLEKS                       R17 R5 K5 ["blockIndex"]
      738 SUBK                             R16 R17 K13 [1]
      739 MOVE                             R17 R12
      740 LOADB                            R18 1
      741 MOVE                             R19 R13
      742 CALL                             R15 4 -1
      743 CALL                             R14 -1 0
      744 RETURN                           R0 0
      745 JUMPIFNOT                        R8 ; [+5]
      746 GETTABLEKS                       R15 R5 K5 ["blockIndex"]
      748 SUBK                             R14 R15 K13 [1]
      749 GETTABLE                         R13 R8 R14
      750 JUMP                             ; [+1]
      751 LOADNIL                          R13
      752 JUMPIFNOT                        R13 ; [+50]
      753 GETTABLEKS                       R15 R13 K24 ["rows"]
      755 LENGTH                           R14 R15
      756 LOADN                            R15 0
      757 JUMPIFNOTLT                      R15 R14 ; [+45]
      759 GETTABLEKS                       R17 R13 K24 ["rows"]
      761 LENGTH                           R16 R17
      762 SUBK                             R19 R16 K13 [1]
      763 GETTABLEKS                       R20 R13 K26 ["lineHeight"]
      765 MUL                              R18 R19 R20
      766 GETTABLEKS                       R20 R13 K26 ["lineHeight"]
      768 DIVK                             R19 R20 K32 [2]
      769 ADD                              R17 R18 R19
      770 GETUPVAL                         R18 5
      771 GETTABLEKS                       R18 R18 K33 ["charHitTest"]
      773 GETIMPORT                        R19 K36 [Vector2.new]
      775 MOVE                             R20 R11
      776 MOVE                             R21 R17
      777 CALL                             R19 2 1
      778 GETTABLEKS                       R20 R13 K24 ["rows"]
      780 GETTABLEKS                       R21 R13 K26 ["lineHeight"]
      782 GETTABLEKS                       R22 R13 K27 ["font"]
      784 GETTABLEKS                       R23 R13 K28 ["textSize"]
      786 CALL                             R18 5 2
      787 MOVE                             R14 R18
      788 MOVE                             R15 R19
      789 JUMPIFNOT                        R14 ; [+25]
      790 JUMPIFNOT                        R15 ; [+24]
      791 MOVE                             R16 R2
      792 GETUPVAL                         R17 0
      793 GETTABLEKS                       R17 R17 K4 ["createCollapsed"]
      795 GETTABLEKS                       R19 R5 K5 ["blockIndex"]
      797 SUBK                             R18 R19 K13 [1]
      798 MOVE                             R19 R14
      799 MOVE                             R20 R15
      800 CALL                             R17 3 -1
      801 CALL                             R16 -1 0
      802 RETURN                           R0 0
      803 JUMPIFNOT                        R12 ; [+11]
      804 MOVE                             R14 R2
      805 GETUPVAL                         R15 3
      806 GETTABLEKS                       R17 R5 K5 ["blockIndex"]
      808 SUBK                             R16 R17 K13 [1]
      809 MOVE                             R17 R12
      810 LOADB                            R18 1
      811 GETTABLEKS                       R19 R4 K2 ["preferredFlatOffset"]
      813 CALL                             R15 4 -1
      814 CALL                             R14 -1 0
      815 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["isCollapsed"]
        3 MOVE                             R6 R0
        4 CALL                             R5 1 1
        5 JUMPIF                           R5 ; [+26]
        6 LOADNIL                          R5
        7 SETTABLEKS                       R5 R4 K1 ["preferredColumn"]
        9 LOADNIL                          R5
       10 SETTABLEKS                       R5 R4 K2 ["preferredFlatOffset"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K3 ["getOrderedSelection"]
       15 MOVE                             R6 R0
       16 CALL                             R5 1 2
       17 MOVE                             R7 R2
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K4 ["createCollapsed"]
       21 GETTABLEKS                       R9 R6 K5 ["blockIndex"]
       23 GETTABLEKS                       R10 R6 K6 ["segmentIndex"]
       25 GETTABLEKS                       R11 R6 K7 ["charOffset"]
       27 GETTABLEKS                       R12 R6 K8 ["path"]
       29 CALL                             R8 4 -1
       30 CALL                             R7 -1 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R5 R0 K9 ["anchor"]
       34 MOVE                             R6 R3
       35 MOVE                             R7 R1
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R8 R5 K5 ["blockIndex"]
       39 GETTABLE                         R7 R6 R8
       40 JUMPIFNOT                        R7 ; [+93]
       41 GETTABLEKS                       R9 R7 K10 ["name"]
       43 JUMPIFEQKS                       R9 K11 ["TABLE"] ; [+2]
       45 LOADB                            R8 0 +1
       46 LOADB                            R8 1
       47 JUMPIFNOT                        R8 ; [+86]
       48 GETUPVAL                         R8 1
       49 MOVE                             R9 R7
       50 MOVE                             R10 R5
       51 CALL                             R8 2 3
       52 JUMPIFNOT                        R9 ; [+59]
       53 JUMPIFNOT                        R10 ; [+58]
       54 GETTABLEKS                       R11 R7 K12 ["children"]
       56 JUMPIF                           R11 ; [+2]
       57 NEWTABLE                         R11 0 0
       59 LENGTH                           R12 R11
       60 JUMPIFNOTLT                      R9 R12 ; [+51]
       62 ADDK                             R13 R9 K13 [1]
       63 GETTABLE                         R12 R11 R13
       64 GETTABLEKS                       R13 R12 K12 ["children"]
       66 JUMPIF                           R13 ; [+2]
       67 NEWTABLE                         R13 0 0
       69 LENGTH                           R16 R13
       70 FASTCALL2                        MATH_MIN R10 R16 ; [+4]
       72 MOVE                             R15 R10
       73 GETIMPORT                        R14 K16 [math.min]
       75 CALL                             R14 2 1
       76 LOADN                            R15 0
       77 JUMPIFNOTLT                      R15 R14 ; [+34]
       79 GETTABLE                         R15 R13 R14
       80 GETTABLEKS                       R16 R4 K2 ["preferredFlatOffset"]
       82 JUMPIF                           R16 ; [+18]
       83 JUMPIFNOT                        R8 ; [+17]
       84 GETTABLEKS                       R17 R8 K12 ["children"]
       86 JUMPIF                           R17 ; [+2]
       87 NEWTABLE                         R17 0 0
       89 LOADN                            R18 0
       90 LOADN                            R19 0
       91 NEWCLOSURE                       R20 P0
       92 CAPTURE                          REF R19
       93 CAPTURE                          VAL R5
       94 CAPTURE                          REF R18
       95 CAPTURE                          VAL R20
       96 MOVE                             R21 R20
       97 MOVE                             R22 R17
       98 CALL                             R21 1 1
       99 OR                               R16 R21 R18
      100 CLOSEUPVALS                      R18
      101 MOVE                             R17 R2
      102 GETUPVAL                         R18 2
      103 GETTABLEKS                       R19 R5 K5 ["blockIndex"]
      105 MOVE                             R20 R15
      106 ADDK                             R21 R9 K13 [1]
      107 MOVE                             R22 R14
      108 ORK                              R23 R16 K17 [0]
      109 CALL                             R18 5 -1
      110 CALL                             R17 -1 0
      111 RETURN                           R0 0
      112 GETTABLEKS                       R11 R5 K5 ["blockIndex"]
      114 LENGTH                           R12 R6
      115 JUMPIFNOTLT                      R11 R12 ; [+17]
      117 GETTABLEKS                       R13 R5 K5 ["blockIndex"]
      119 ADDK                             R12 R13 K13 [1]
      120 GETTABLE                         R11 R6 R12
      121 JUMPIFNOT                        R11 ; [+11]
      122 MOVE                             R12 R2
      123 GETUPVAL                         R13 3
      124 GETTABLEKS                       R15 R5 K5 ["blockIndex"]
      126 ADDK                             R14 R15 K13 [1]
      127 MOVE                             R15 R11
      128 LOADB                            R16 0
      129 GETTABLEKS                       R17 R4 K2 ["preferredFlatOffset"]
      131 CALL                             R13 4 -1
      132 CALL                             R12 -1 0
      133 RETURN                           R0 0
      134 JUMPIFNOT                        R7 ; [+360]
      135 GETTABLEKS                       R8 R7 K10 ["name"]
      137 JUMPIFNOTEQKS                    R8 K18 ["LIST"] ; [+357]
      139 GETTABLEKS                       R8 R7 K12 ["children"]
      141 JUMPIF                           R8 ; [+2]
      142 NEWTABLE                         R8 0 0
      144 GETTABLEKS                       R10 R5 K8 ["path"]
      146 JUMPIFNOT                        R10 ; [+4]
      147 GETTABLEKS                       R10 R5 K8 ["path"]
      149 GETTABLEN                        R9 R10 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R9
      152 JUMPIFNOT                        R9 ; [+246]
      153 GETTABLE                         R10 R8 R9
      154 GETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      156 JUMPIFNOTEQKNIL                  R11 ; [+22]
      158 JUMPIFNOT                        R10 ; [+20]
      159 GETTABLEKS                       R13 R10 K12 ["children"]
      161 JUMPIF                           R13 ; [+2]
      162 NEWTABLE                         R13 0 0
      164 LOADN                            R14 0
      165 LOADN                            R15 0
      166 NEWCLOSURE                       R16 P0
      167 CAPTURE                          REF R15
      168 CAPTURE                          VAL R5
      169 CAPTURE                          REF R14
      170 CAPTURE                          VAL R16
      171 MOVE                             R17 R16
      172 MOVE                             R18 R13
      173 CALL                             R17 1 1
      174 OR                               R12 R17 R14
      175 CLOSEUPVALS                      R14
      176 ADDK                             R11 R12 K19 [5]
      177 SETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      179 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      181 GETTABLEKS                       R13 R4 K20 ["itemLayoutRegistry"]
      183 JUMPIF                           R13 ; [+2]
      184 LOADNIL                          R11
      185 JUMP                             ; [+14]
      186 FASTCALL1                        TOSTRING R12 ; [+3]
      187 MOVE                             R19 R12
      188 GETIMPORT                        R18 K22 [tostring]
      190 CALL                             R18 1 1
      191 MOVE                             R15 R18
      192 LOADK                            R16 K23 [":"]
      193 FASTCALL1                        TOSTRING R9 ; [+3]
      194 MOVE                             R18 R9
      195 GETIMPORT                        R17 K22 [tostring]
      197 CALL                             R17 1 1
      198 CONCAT                           R14 R15 R17
      199 GETTABLE                         R11 R13 R14
      200 JUMPIFNOT                        R11 ; [+94]
      201 GETTABLEKS                       R13 R11 K24 ["rows"]
      203 LENGTH                           R12 R13
      204 LOADN                            R13 1
      205 JUMPIFNOTLT                      R13 R12 ; [+89]
      207 GETUPVAL                         R12 4
      208 GETTABLEKS                       R13 R11 K24 ["rows"]
      210 GETTABLEKS                       R14 R5 K6 ["segmentIndex"]
      212 CALL                             R12 2 1
      213 JUMPIFNOT                        R12 ; [+81]
      214 GETTABLEKS                       R14 R11 K24 ["rows"]
      216 LENGTH                           R13 R14
      217 JUMPIFNOTLT                      R12 R13 ; [+77]
      219 GETTABLEKS                       R13 R4 K1 ["preferredColumn"]
      221 JUMPIFNOTEQKNIL                  R13 ; [+24]
      223 GETUPVAL                         R13 5
      224 GETTABLEKS                       R13 R13 K25 ["computeCursorPosition"]
      226 GETTABLEKS                       R14 R11 K24 ["rows"]
      228 GETTABLEKS                       R15 R11 K26 ["lineHeight"]
      230 GETTABLEKS                       R16 R5 K6 ["segmentIndex"]
      232 GETTABLEKS                       R17 R5 K7 ["charOffset"]
      234 GETTABLEKS                       R18 R11 K27 ["font"]
      236 GETTABLEKS                       R19 R11 K28 ["textSize"]
      238 CALL                             R13 6 1
      239 JUMPIFNOT                        R13 ; [+3]
      240 GETTABLEKS                       R14 R13 K29 ["x"]
      242 JUMP                             ; [+1]
      243 LOADN                            R14 0
      244 SETTABLEKS                       R14 R4 K1 ["preferredColumn"]
      246 ADDK                             R15 R12 K13 [1]
      247 GETTABLEKS                       R17 R4 K1 ["preferredColumn"]
      249 ORK                              R16 R17 K17 [0]
      250 SUBK                             R19 R15 K13 [1]
      251 GETTABLEKS                       R20 R11 K26 ["lineHeight"]
      253 MUL                              R18 R19 R20
      254 GETTABLEKS                       R20 R11 K26 ["lineHeight"]
      256 DIVK                             R19 R20 K30 [2]
      257 ADD                              R17 R18 R19
      258 GETUPVAL                         R18 5
      259 GETTABLEKS                       R18 R18 K31 ["charHitTest"]
      261 GETIMPORT                        R19 K34 [Vector2.new]
      263 MOVE                             R20 R16
      264 MOVE                             R21 R17
      265 CALL                             R19 2 1
      266 GETTABLEKS                       R20 R11 K24 ["rows"]
      268 GETTABLEKS                       R21 R11 K26 ["lineHeight"]
      270 GETTABLEKS                       R22 R11 K27 ["font"]
      272 GETTABLEKS                       R23 R11 K28 ["textSize"]
      274 CALL                             R18 5 2
      275 MOVE                             R13 R18
      276 MOVE                             R14 R19
      277 JUMPIFNOT                        R13 ; [+17]
      278 JUMPIFNOT                        R14 ; [+16]
      279 MOVE                             R15 R2
      280 GETUPVAL                         R16 0
      281 GETTABLEKS                       R16 R16 K4 ["createCollapsed"]
      283 GETTABLEKS                       R17 R5 K5 ["blockIndex"]
      285 MOVE                             R18 R13
      286 MOVE                             R19 R14
      287 NEWTABLE                         R20 0 1
      289 MOVE                             R21 R9
      290 SETLIST                          R20 R21 1 [1]
      292 CALL                             R16 4 -1
      293 CALL                             R15 -1 0
      294 RETURN                           R0 0
      295 LENGTH                           R12 R8
      296 JUMPIFNOTLT                      R9 R12 ; [+102]
      298 ADDK                             R13 R9 K13 [1]
      299 GETTABLE                         R12 R8 R13
      300 JUMPIFNOT                        R12 ; [+97]
      301 GETTABLEKS                       R14 R5 K5 ["blockIndex"]
      303 ADDK                             R15 R9 K13 [1]
      304 GETTABLEKS                       R16 R4 K20 ["itemLayoutRegistry"]
      306 JUMPIF                           R16 ; [+2]
      307 LOADNIL                          R13
      308 JUMP                             ; [+14]
      309 FASTCALL1                        TOSTRING R14 ; [+3]
      310 MOVE                             R22 R14
      311 GETIMPORT                        R21 K22 [tostring]
      313 CALL                             R21 1 1
      314 MOVE                             R18 R21
      315 LOADK                            R19 K23 [":"]
      316 FASTCALL1                        TOSTRING R15 ; [+3]
      317 MOVE                             R21 R15
      318 GETIMPORT                        R20 K22 [tostring]
      320 CALL                             R20 1 1
      321 CONCAT                           R17 R18 R20
      322 GETTABLE                         R13 R16 R17
      323 JUMPIFNOT                        R13 ; [+56]
      324 GETTABLEKS                       R15 R13 K24 ["rows"]
      326 LENGTH                           R14 R15
      327 LOADN                            R15 0
      328 JUMPIFNOTLT                      R15 R14 ; [+51]
      330 GETTABLEKS                       R14 R4 K1 ["preferredColumn"]
      332 JUMPIFNOT                        R14 ; [+47]
      333 GETTABLEKS                       R16 R4 K1 ["preferredColumn"]
      335 LOADN                            R19 0
      336 GETTABLEKS                       R20 R13 K26 ["lineHeight"]
      338 MUL                              R18 R19 R20
      339 GETTABLEKS                       R20 R13 K26 ["lineHeight"]
      341 DIVK                             R19 R20 K30 [2]
      342 ADD                              R17 R18 R19
      343 GETUPVAL                         R18 5
      344 GETTABLEKS                       R18 R18 K31 ["charHitTest"]
      346 GETIMPORT                        R19 K34 [Vector2.new]
      348 MOVE                             R20 R16
      349 MOVE                             R21 R17
      350 CALL                             R19 2 1
      351 GETTABLEKS                       R20 R13 K24 ["rows"]
      353 GETTABLEKS                       R21 R13 K26 ["lineHeight"]
      355 GETTABLEKS                       R22 R13 K27 ["font"]
      357 GETTABLEKS                       R23 R13 K28 ["textSize"]
      359 CALL                             R18 5 2
      360 MOVE                             R14 R18
      361 MOVE                             R15 R19
      362 JUMPIFNOT                        R14 ; [+17]
      363 JUMPIFNOT                        R15 ; [+16]
      364 MOVE                             R16 R2
      365 GETUPVAL                         R17 0
      366 GETTABLEKS                       R17 R17 K4 ["createCollapsed"]
      368 GETTABLEKS                       R18 R5 K5 ["blockIndex"]
      370 MOVE                             R19 R14
      371 MOVE                             R20 R15
      372 NEWTABLE                         R21 0 1
      374 ADDK                             R22 R9 K13 [1]
      375 SETLIST                          R21 R22 1 [1]
      377 CALL                             R17 4 -1
      378 CALL                             R16 -1 0
      379 RETURN                           R0 0
      380 MOVE                             R14 R2
      381 GETUPVAL                         R15 6
      382 GETTABLEKS                       R16 R5 K5 ["blockIndex"]
      384 MOVE                             R17 R12
      385 ADDK                             R18 R9 K13 [1]
      386 LOADN                            R20 0
      387 GETTABLEKS                       R23 R4 K2 ["preferredFlatOffset"]
      389 ORK                              R22 R23 K17 [0]
      390 SUBK                             R21 R22 K19 [5]
      391 FASTCALL2                        MATH_MAX R20 R21 ; [+3]
      393 GETIMPORT                        R19 K36 [math.max]
      395 CALL                             R19 2 1
      396 CALL                             R15 4 -1
      397 CALL                             R14 -1 0
      398 RETURN                           R0 0
      399 GETTABLEKS                       R10 R5 K5 ["blockIndex"]
      401 LENGTH                           R11 R6
      402 JUMPIFNOTLT                      R10 R11 ; [+91]
      404 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      406 ADDK                             R11 R12 K13 [1]
      407 GETTABLE                         R10 R6 R11
      408 JUMPIFNOT                        R10 ; [+85]
      409 GETTABLEKS                       R11 R4 K37 ["layoutRegistry"]
      411 JUMPIFNOT                        R11 ; [+5]
      412 GETTABLEKS                       R14 R5 K5 ["blockIndex"]
      414 ADDK                             R13 R14 K13 [1]
      415 GETTABLE                         R12 R11 R13
      416 JUMP                             ; [+1]
      417 LOADNIL                          R12
      418 JUMPIFNOT                        R12 ; [+64]
      419 GETTABLEKS                       R14 R12 K24 ["rows"]
      421 LENGTH                           R13 R14
      422 LOADN                            R14 0
      423 JUMPIFNOTLT                      R14 R13 ; [+59]
      425 GETTABLEKS                       R13 R4 K1 ["preferredColumn"]
      427 JUMPIFNOT                        R13 ; [+55]
      428 GETTABLEKS                       R15 R4 K1 ["preferredColumn"]
      430 LOADN                            R18 0
      431 GETTABLEKS                       R19 R12 K26 ["lineHeight"]
      433 MUL                              R17 R18 R19
      434 GETTABLEKS                       R19 R12 K26 ["lineHeight"]
      436 DIVK                             R18 R19 K30 [2]
      437 ADD                              R16 R17 R18
      438 GETUPVAL                         R17 5
      439 GETTABLEKS                       R17 R17 K31 ["charHitTest"]
      441 GETIMPORT                        R18 K34 [Vector2.new]
      443 MOVE                             R19 R15
      444 MOVE                             R20 R16
      445 CALL                             R18 2 1
      446 GETTABLEKS                       R19 R12 K24 ["rows"]
      448 GETTABLEKS                       R20 R12 K26 ["lineHeight"]
      450 GETTABLEKS                       R21 R12 K27 ["font"]
      452 GETTABLEKS                       R22 R12 K28 ["textSize"]
      454 CALL                             R17 5 2
      455 MOVE                             R13 R17
      456 MOVE                             R14 R18
      457 JUMPIFNOT                        R13 ; [+13]
      458 JUMPIFNOT                        R14 ; [+12]
      459 MOVE                             R15 R2
      460 GETUPVAL                         R16 0
      461 GETTABLEKS                       R16 R16 K4 ["createCollapsed"]
      463 GETTABLEKS                       R18 R5 K5 ["blockIndex"]
      465 ADDK                             R17 R18 K13 [1]
      466 MOVE                             R18 R13
      467 MOVE                             R19 R14
      468 CALL                             R16 3 -1
      469 CALL                             R15 -1 0
      470 RETURN                           R0 0
      471 MOVE                             R15 R2
      472 GETUPVAL                         R16 3
      473 GETTABLEKS                       R18 R5 K5 ["blockIndex"]
      475 ADDK                             R17 R18 K13 [1]
      476 MOVE                             R18 R10
      477 LOADB                            R19 0
      478 GETTABLEKS                       R20 R4 K2 ["preferredFlatOffset"]
      480 CALL                             R16 4 -1
      481 CALL                             R15 -1 0
      482 RETURN                           R0 0
      483 MOVE                             R13 R2
      484 GETUPVAL                         R14 3
      485 GETTABLEKS                       R16 R5 K5 ["blockIndex"]
      487 ADDK                             R15 R16 K13 [1]
      488 MOVE                             R16 R10
      489 LOADB                            R17 0
      490 GETTABLEKS                       R18 R4 K2 ["preferredFlatOffset"]
      492 CALL                             R14 4 -1
      493 CALL                             R13 -1 0
      494 RETURN                           R0 0
      495 GETTABLEKS                       R8 R4 K37 ["layoutRegistry"]
      497 JUMPIFNOT                        R8 ; [+4]
      498 GETTABLEKS                       R10 R5 K5 ["blockIndex"]
      500 GETTABLE                         R9 R8 R10
      501 JUMP                             ; [+1]
      502 LOADNIL                          R9
      503 JUMPIF                           R9 ; [+75]
      504 GETTABLEKS                       R10 R4 K2 ["preferredFlatOffset"]
      506 JUMPIFNOTEQKNIL                  R10 ; [+36]
      508 GETTABLEKS                       R11 R7 K10 ["name"]
      510 LOADB                            R10 1
      511 JUMPIFEQKS                       R11 K38 ["PARAGRAPH"] ; [+11]
      513 LOADB                            R10 1
      514 JUMPIFEQKS                       R11 K39 ["HEADING"] ; [+8]
      516 LOADB                            R10 1
      517 JUMPIFEQKS                       R11 K40 ["QUOTE"] ; [+5]
      519 JUMPIFEQKS                       R11 K41 ["LIST_ITEM"] ; [+2]
      521 LOADB                            R10 0 +1
      522 LOADB                            R10 1
      523 JUMPIFNOT                        R10 ; [+19]
      524 GETTABLEKS                       R11 R7 K12 ["children"]
      526 JUMPIF                           R11 ; [+2]
      527 NEWTABLE                         R11 0 0
      529 LOADN                            R12 0
      530 LOADN                            R13 0
      531 NEWCLOSURE                       R14 P0
      532 CAPTURE                          REF R13
      533 CAPTURE                          VAL R5
      534 CAPTURE                          REF R12
      535 CAPTURE                          VAL R14
      536 MOVE                             R15 R14
      537 MOVE                             R16 R11
      538 CALL                             R15 1 1
      539 OR                               R10 R15 R12
      540 CLOSEUPVALS                      R12
      541 SETTABLEKS                       R10 R4 K2 ["preferredFlatOffset"]
      543 GETTABLEKS                       R10 R5 K5 ["blockIndex"]
      545 LENGTH                           R11 R6
      546 JUMPIFNOTLT                      R10 R11 ; [+31]
      548 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      550 ADDK                             R11 R12 K13 [1]
      551 GETTABLE                         R10 R6 R11
      552 JUMPIFNOT                        R10 ; [+25]
      553 GETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      555 GETTABLEKS                       R12 R10 K10 ["name"]
      557 JUMPIFNOTEQKS                    R12 K18 ["LIST"] ; [+10]
      559 JUMPIFNOT                        R11 ; [+8]
      560 LOADN                            R13 0
      561 SUBK                             R14 R11 K19 [5]
      562 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
      564 GETIMPORT                        R12 K36 [math.max]
      566 CALL                             R12 2 1
      567 MOVE                             R11 R12
      568 MOVE                             R12 R2
      569 GETUPVAL                         R13 3
      570 GETTABLEKS                       R15 R5 K5 ["blockIndex"]
      572 ADDK                             R14 R15 K13 [1]
      573 MOVE                             R15 R10
      574 LOADB                            R16 0
      575 MOVE                             R17 R11
      576 CALL                             R13 4 -1
      577 CALL                             R12 -1 0
      578 RETURN                           R0 0
      579 GETUPVAL                         R10 4
      580 GETTABLEKS                       R11 R9 K24 ["rows"]
      582 GETTABLEKS                       R12 R5 K6 ["segmentIndex"]
      584 CALL                             R10 2 1
      585 JUMPIF                           R10 ; [+1]
      586 RETURN                           R0 0
      587 GETTABLEKS                       R11 R4 K1 ["preferredColumn"]
      589 JUMPIFNOTEQKNIL                  R11 ; [+24]
      591 GETUPVAL                         R11 5
      592 GETTABLEKS                       R11 R11 K25 ["computeCursorPosition"]
      594 GETTABLEKS                       R12 R9 K24 ["rows"]
      596 GETTABLEKS                       R13 R9 K26 ["lineHeight"]
      598 GETTABLEKS                       R14 R5 K6 ["segmentIndex"]
      600 GETTABLEKS                       R15 R5 K7 ["charOffset"]
      602 GETTABLEKS                       R16 R9 K27 ["font"]
      604 GETTABLEKS                       R17 R9 K28 ["textSize"]
      606 CALL                             R11 6 1
      607 JUMPIFNOT                        R11 ; [+3]
      608 GETTABLEKS                       R12 R11 K29 ["x"]
      610 JUMP                             ; [+1]
      611 LOADN                            R12 0
      612 SETTABLEKS                       R12 R4 K1 ["preferredColumn"]
      614 GETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      616 JUMPIFNOTEQKNIL                  R11 ; [+36]
      618 GETTABLEKS                       R12 R7 K10 ["name"]
      620 LOADB                            R11 1
      621 JUMPIFEQKS                       R12 K38 ["PARAGRAPH"] ; [+11]
      623 LOADB                            R11 1
      624 JUMPIFEQKS                       R12 K39 ["HEADING"] ; [+8]
      626 LOADB                            R11 1
      627 JUMPIFEQKS                       R12 K40 ["QUOTE"] ; [+5]
      629 JUMPIFEQKS                       R12 K41 ["LIST_ITEM"] ; [+2]
      631 LOADB                            R11 0 +1
      632 LOADB                            R11 1
      633 JUMPIFNOT                        R11 ; [+19]
      634 GETTABLEKS                       R12 R7 K12 ["children"]
      636 JUMPIF                           R12 ; [+2]
      637 NEWTABLE                         R12 0 0
      639 LOADN                            R13 0
      640 LOADN                            R14 0
      641 NEWCLOSURE                       R15 P0
      642 CAPTURE                          REF R14
      643 CAPTURE                          VAL R5
      644 CAPTURE                          REF R13
      645 CAPTURE                          VAL R15
      646 MOVE                             R16 R15
      647 MOVE                             R17 R12
      648 CALL                             R16 1 1
      649 OR                               R11 R16 R13
      650 CLOSEUPVALS                      R13
      651 SETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      653 GETTABLEKS                       R11 R4 K1 ["preferredColumn"]
      655 GETTABLEKS                       R13 R9 K24 ["rows"]
      657 LENGTH                           R12 R13
      658 JUMPIFNOTLT                      R10 R12 ; [+42]
      660 ADDK                             R14 R10 K13 [1]
      661 SUBK                             R17 R14 K13 [1]
      662 GETTABLEKS                       R18 R9 K26 ["lineHeight"]
      664 MUL                              R16 R17 R18
      665 GETTABLEKS                       R18 R9 K26 ["lineHeight"]
      667 DIVK                             R17 R18 K30 [2]
      668 ADD                              R15 R16 R17
      669 GETUPVAL                         R16 5
      670 GETTABLEKS                       R16 R16 K31 ["charHitTest"]
      672 GETIMPORT                        R17 K34 [Vector2.new]
      674 MOVE                             R18 R11
      675 MOVE                             R19 R15
      676 CALL                             R17 2 1
      677 GETTABLEKS                       R18 R9 K24 ["rows"]
      679 GETTABLEKS                       R19 R9 K26 ["lineHeight"]
      681 GETTABLEKS                       R20 R9 K27 ["font"]
      683 GETTABLEKS                       R21 R9 K28 ["textSize"]
      685 CALL                             R16 5 2
      686 MOVE                             R12 R16
      687 MOVE                             R13 R17
      688 JUMPIFNOT                        R12 ; [+118]
      689 JUMPIFNOT                        R13 ; [+117]
      690 MOVE                             R14 R2
      691 GETUPVAL                         R15 0
      692 GETTABLEKS                       R15 R15 K4 ["createCollapsed"]
      694 GETTABLEKS                       R16 R5 K5 ["blockIndex"]
      696 MOVE                             R17 R12
      697 MOVE                             R18 R13
      698 CALL                             R15 3 -1
      699 CALL                             R14 -1 0
      700 RETURN                           R0 0
      701 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      703 LENGTH                           R13 R6
      704 JUMPIFNOTLT                      R12 R13 ; [+102]
      706 GETTABLEKS                       R14 R5 K5 ["blockIndex"]
      708 ADDK                             R13 R14 K13 [1]
      709 GETTABLE                         R12 R6 R13
      710 JUMPIFNOT                        R12 ; [+29]
      711 GETTABLEKS                       R13 R12 K10 ["name"]
      713 JUMPIFNOTEQKS                    R13 K18 ["LIST"] ; [+26]
      715 GETTABLEKS                       R14 R4 K2 ["preferredFlatOffset"]
      717 JUMPIFNOT                        R14 ; [+10]
      718 LOADN                            R14 0
      719 GETTABLEKS                       R16 R4 K2 ["preferredFlatOffset"]
      721 SUBK                             R15 R16 K19 [5]
      722 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
      724 GETIMPORT                        R13 K36 [math.max]
      726 CALL                             R13 2 1
      727 JUMP                             ; [+1]
      728 LOADNIL                          R13
      729 MOVE                             R14 R2
      730 GETUPVAL                         R15 3
      731 GETTABLEKS                       R17 R5 K5 ["blockIndex"]
      733 ADDK                             R16 R17 K13 [1]
      734 MOVE                             R17 R12
      735 LOADB                            R18 0
      736 MOVE                             R19 R13
      737 CALL                             R15 4 -1
      738 CALL                             R14 -1 0
      739 RETURN                           R0 0
      740 JUMPIFNOT                        R8 ; [+5]
      741 GETTABLEKS                       R15 R5 K5 ["blockIndex"]
      743 ADDK                             R14 R15 K13 [1]
      744 GETTABLE                         R13 R8 R14
      745 JUMP                             ; [+1]
      746 LOADNIL                          R13
      747 JUMPIFNOT                        R13 ; [+47]
      748 GETTABLEKS                       R15 R13 K24 ["rows"]
      750 LENGTH                           R14 R15
      751 LOADN                            R15 0
      752 JUMPIFNOTLT                      R15 R14 ; [+42]
      754 LOADN                            R18 0
      755 GETTABLEKS                       R19 R13 K26 ["lineHeight"]
      757 MUL                              R17 R18 R19
      758 GETTABLEKS                       R19 R13 K26 ["lineHeight"]
      760 DIVK                             R18 R19 K30 [2]
      761 ADD                              R16 R17 R18
      762 GETUPVAL                         R17 5
      763 GETTABLEKS                       R17 R17 K31 ["charHitTest"]
      765 GETIMPORT                        R18 K34 [Vector2.new]
      767 MOVE                             R19 R11
      768 MOVE                             R20 R16
      769 CALL                             R18 2 1
      770 GETTABLEKS                       R19 R13 K24 ["rows"]
      772 GETTABLEKS                       R20 R13 K26 ["lineHeight"]
      774 GETTABLEKS                       R21 R13 K27 ["font"]
      776 GETTABLEKS                       R22 R13 K28 ["textSize"]
      778 CALL                             R17 5 2
      779 MOVE                             R14 R17
      780 MOVE                             R15 R18
      781 JUMPIFNOT                        R14 ; [+25]
      782 JUMPIFNOT                        R15 ; [+24]
      783 MOVE                             R16 R2
      784 GETUPVAL                         R17 0
      785 GETTABLEKS                       R17 R17 K4 ["createCollapsed"]
      787 GETTABLEKS                       R19 R5 K5 ["blockIndex"]
      789 ADDK                             R18 R19 K13 [1]
      790 MOVE                             R19 R14
      791 MOVE                             R20 R15
      792 CALL                             R17 3 -1
      793 CALL                             R16 -1 0
      794 RETURN                           R0 0
      795 JUMPIFNOT                        R12 ; [+11]
      796 MOVE                             R14 R2
      797 GETUPVAL                         R15 3
      798 GETTABLEKS                       R17 R5 K5 ["blockIndex"]
      800 ADDK                             R16 R17 K13 [1]
      801 MOVE                             R17 R12
      802 LOADB                            R18 0
      803 GETTABLEKS                       R19 R4 K2 ["preferredFlatOffset"]
      805 CALL                             R15 4 -1
      806 CALL                             R14 -1 0
      807 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["BloxCodeEditor"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K7 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["EditorState"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["RichTextHitTest"]
       23 NEWTABLE                         R4 16 0
       25 DUPCLOSURE                       R5 K10 [PROTO_0]
       26 CAPTURE                          VAL R5
       27 DUPCLOSURE                       R6 K11 [PROTO_2]
       28 DUPCLOSURE                       R7 K12 [PROTO_4]
       29 CAPTURE                          VAL R2
       30 DUPCLOSURE                       R8 K13 [PROTO_5]
       31 CAPTURE                          VAL R8
       32 DUPCLOSURE                       R9 K14 [PROTO_6]
       33 DUPCLOSURE                       R10 K15 [PROTO_7]
       34 DUPCLOSURE                       R11 K16 [PROTO_8]
       35 DUPCLOSURE                       R12 K17 [PROTO_9]
       36 DUPCLOSURE                       R13 K18 [PROTO_10]
       37 CAPTURE                          VAL R13
       38 DUPCLOSURE                       R14 K19 [PROTO_11]
       39 CAPTURE                          VAL R13
       40 DUPCLOSURE                       R15 K20 [PROTO_12]
       41 CAPTURE                          VAL R13
       42 CAPTURE                          VAL R2
       43 DUPCLOSURE                       R16 K21 [PROTO_13]
       44 CAPTURE                          VAL R13
       45 CAPTURE                          VAL R2
       46 DUPCLOSURE                       R17 K22 [PROTO_14]
       47 DUPCLOSURE                       R18 K23 [PROTO_15]
       48 DUPCLOSURE                       R19 K24 [PROTO_16]
       49 DUPCLOSURE                       R20 K25 [PROTO_17]
       50 CAPTURE                          VAL R3
       51 DUPCLOSURE                       R21 K26 [PROTO_18]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 DUPCLOSURE                       R22 K27 [PROTO_19]
       55 CAPTURE                          VAL R15
       56 CAPTURE                          VAL R13
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R16
       59 CAPTURE                          VAL R21
       60 CAPTURE                          VAL R7
       61 DUPCLOSURE                       R23 K28 [PROTO_20]
       62 CAPTURE                          VAL R13
       63 CAPTURE                          VAL R23
       64 DUPCLOSURE                       R24 K29 [PROTO_21]
       65 CAPTURE                          VAL R13
       66 CAPTURE                          VAL R24
       67 DUPCLOSURE                       R25 K30 [PROTO_22]
       68 CAPTURE                          VAL R13
       69 CAPTURE                          VAL R25
       70 DUPCLOSURE                       R26 K31 [PROTO_23]
       71 DUPCLOSURE                       R27 K32 [PROTO_24]
       72 DUPCLOSURE                       R28 K33 [PROTO_25]
       73 CAPTURE                          VAL R13
       74 DUPCLOSURE                       R29 K34 [PROTO_26]
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R25
       77 DUPCLOSURE                       R30 K35 [PROTO_27]
       78 CAPTURE                          VAL R25
       79 DUPCLOSURE                       R31 K36 [PROTO_28]
       80 CAPTURE                          VAL R11
       81 DUPCLOSURE                       R32 K37 [PROTO_29]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R27
       84 CAPTURE                          VAL R24
       85 CAPTURE                          VAL R20
       86 CAPTURE                          VAL R21
       87 CAPTURE                          VAL R31
       88 CAPTURE                          VAL R25
       89 CAPTURE                          VAL R26
       90 CAPTURE                          VAL R18
       91 DUPCLOSURE                       R33 K38 [PROTO_30]
       92 CAPTURE                          VAL R32
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R24
       95 CAPTURE                          VAL R25
       96 CAPTURE                          VAL R27
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R23
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R18
      102 CAPTURE                          VAL R20
      103 CAPTURE                          VAL R21
      104 CAPTURE                          VAL R7
      105 SETTABLEKS                       R33 R4 K39 ["handleTextInput"]
      107 DUPCLOSURE                       R33 K40 [PROTO_31]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R32
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R27
      112 CAPTURE                          VAL R24
      113 CAPTURE                          VAL R18
      114 CAPTURE                          VAL R20
      115 CAPTURE                          VAL R21
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R26
      119 CAPTURE                          VAL R22
      120 SETTABLEKS                       R33 R4 K41 ["handleBackspace"]
      122 DUPCLOSURE                       R33 K42 [PROTO_32]
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R32
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R27
      128 CAPTURE                          VAL R24
      129 CAPTURE                          VAL R18
      130 CAPTURE                          VAL R26
      131 CAPTURE                          VAL R20
      132 CAPTURE                          VAL R21
      133 CAPTURE                          VAL R7
      134 SETTABLEKS                       R33 R4 K43 ["handleDelete"]
      136 DUPCLOSURE                       R33 K44 [PROTO_33]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R32
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R22
      141 CAPTURE                          VAL R25
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R27
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R21
      147 SETTABLEKS                       R33 R4 K45 ["handleEnter"]
      149 DUPCLOSURE                       R33 K46 [PROTO_34]
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R28
      153 CAPTURE                          VAL R29
      154 CAPTURE                          VAL R30
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R13
      158 SETTABLEKS                       R33 R4 K47 ["handleToggleStyle"]
      160 DUPCLOSURE                       R33 K48 [PROTO_35]
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R22
      168 SETTABLEKS                       R33 R4 K49 ["handleArrowLeft"]
      170 DUPCLOSURE                       R33 K50 [PROTO_36]
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R22
      178 SETTABLEKS                       R33 R4 K51 ["handleArrowRight"]
      180 DUPCLOSURE                       R33 K52 [PROTO_37]
      181 DUPCLOSURE                       R34 K53 [PROTO_38]
      182 DUPCLOSURE                       R35 K54 [PROTO_39]
      183 CAPTURE                          VAL R3
      184 DUPCLOSURE                       R36 K55 [PROTO_40]
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R16
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R33
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R15
      192 SETTABLEKS                       R36 R4 K56 ["handleArrowUp"]
      194 DUPCLOSURE                       R36 K57 [PROTO_41]
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R16
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R33
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R15
      202 SETTABLEKS                       R36 R4 K58 ["handleArrowDown"]
      204 RETURN                           R4 1
