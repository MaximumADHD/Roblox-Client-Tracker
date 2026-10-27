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
       16 JUMP                             ; [+184]
       17 GETTABLEKS                       R11 R10 K3 ["name"]
       19 JUMPIFNOTEQKS                    R11 K4 ["TEXT"] ; [+45]
       21 GETTABLEKS                       R12 R10 K6 ["text"]
       23 ORK                              R11 R12 K5 [""]
       24 LENGTH                           R13 R11
       25 ADD                              R12 R4 R13
       26 JUMPIFNOTLE                      R1 R12 ; [+29]
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
       41 DUPTABLE                         R17 K10 [{["name"] = "TEXT", ["children"], ["text"]}]
       42 NEWTABLE                         R18 0 0
       44 SETTABLEKS                       R18 R17 K9 ["children"]
       46 SETTABLEKS                       R14 R17 K6 ["text"]
       48 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
       50 MOVE                             R16 R3
       51 GETIMPORT                        R15 K2 [table.insert]
       53 CALL                             R15 2 0
       54 LOADB                            R5 1
       55 JUMP                             ; [+145]
       56 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       58 MOVE                             R14 R3
       59 MOVE                             R15 R10
       60 GETIMPORT                        R13 K2 [table.insert]
       62 CALL                             R13 2 0
       63 MOVE                             R4 R12
       64 JUMP                             ; [+136]
       65 GETTABLEKS                       R11 R10 K3 ["name"]
       67 JUMPIFEQKS                       R11 K11 ["STYLED_TEXT"] ; [+5]
       69 GETTABLEKS                       R11 R10 K3 ["name"]
       71 JUMPIFNOTEQKS                    R11 K12 ["LINK"] ; [+84]
       73 GETTABLEKS                       R12 R10 K9 ["children"]
       75 JUMPIF                           R12 ; [+2]
       76 NEWTABLE                         R12 0 0
       78 LOADN                            R13 0
       79 MOVE                             R14 R12
       80 LOADNIL                          R15
       81 LOADNIL                          R16
       82 FORGPREP                         R14
       83 GETUPVAL                         R19 0
       84 MOVE                             R20 R18
       85 CALL                             R19 1 1
       86 ADD                              R13 R13 R19
       87 FORGLOOP                         R14 2 ; [-5]
       89 MOVE                             R11 R13
       90 ADD                              R12 R4 R11
       91 JUMPIFNOTLT                      R4 R1 ; [+27]
       93 JUMPIFNOTLT                      R1 R12 ; [+25]
       95 GETUPVAL                         R13 1
       96 GETTABLEKS                       R14 R10 K9 ["children"]
       98 JUMPIF                           R14 ; [+2]
       99 NEWTABLE                         R14 0 0
      101 SUB                              R15 R1 R4
      102 MOVE                             R16 R2
      103 CALL                             R13 3 1
      104 GETIMPORT                        R14 K14 [table.clone]
      106 MOVE                             R15 R10
      107 CALL                             R14 1 1
      108 SETTABLEKS                       R13 R14 K9 ["children"]
      110 FASTCALL2                        TABLE_INSERT R3 R14 ; [+5]
      112 MOVE                             R16 R3
      113 MOVE                             R17 R14
      114 GETIMPORT                        R15 K2 [table.insert]
      116 CALL                             R15 2 0
      117 LOADB                            R5 1
      118 JUMP                             ; [+82]
      119 JUMPIFNOTLE                      R1 R4 ; [+27]
      121 LENGTH                           R13 R2
      122 LOADN                            R14 0
      123 JUMPIFNOTLT                      R14 R13 ; [+14]
      125 DUPTABLE                         R15 K10 [{["name"] = "TEXT", ["children"], ["text"]}]
      126 NEWTABLE                         R16 0 0
      128 SETTABLEKS                       R16 R15 K9 ["children"]
      130 SETTABLEKS                       R2 R15 K6 ["text"]
      132 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
      134 MOVE                             R14 R3
      135 GETIMPORT                        R13 K2 [table.insert]
      137 CALL                             R13 2 0
      138 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      140 MOVE                             R14 R3
      141 MOVE                             R15 R10
      142 GETIMPORT                        R13 K2 [table.insert]
      144 CALL                             R13 2 0
      145 LOADB                            R5 1
      146 JUMP                             ; [+54]
      147 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      149 MOVE                             R14 R3
      150 MOVE                             R15 R10
      151 GETIMPORT                        R13 K2 [table.insert]
      153 CALL                             R13 2 0
      154 MOVE                             R4 R12
      155 JUMP                             ; [+45]
      156 GETTABLEKS                       R11 R10 K3 ["name"]
      158 JUMPIFNOTEQKS                    R11 K15 ["BREAK"] ; [+35]
      160 ADDK                             R11 R4 K8 [1]
      161 JUMPIFNOTLE                      R1 R4 ; [+23]
      163 DUPTABLE                         R14 K10 [{["name"] = "TEXT", ["children"], ["text"]}]
      164 NEWTABLE                         R15 0 0
      166 SETTABLEKS                       R15 R14 K9 ["children"]
      168 SETTABLEKS                       R2 R14 K6 ["text"]
      170 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
      172 MOVE                             R13 R3
      173 GETIMPORT                        R12 K2 [table.insert]
      175 CALL                             R12 2 0
      176 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      178 MOVE                             R13 R3
      179 MOVE                             R14 R10
      180 GETIMPORT                        R12 K2 [table.insert]
      182 CALL                             R12 2 0
      183 LOADB                            R5 1
      184 JUMP                             ; [+16]
      185 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      187 MOVE                             R13 R3
      188 MOVE                             R14 R10
      189 GETIMPORT                        R12 K2 [table.insert]
      191 CALL                             R12 2 0
      192 MOVE                             R4 R11
      193 JUMP                             ; [+7]
      194 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      196 MOVE                             R12 R3
      197 MOVE                             R13 R10
      198 GETIMPORT                        R11 K2 [table.insert]
      200 CALL                             R11 2 0
      201 FORGLOOP                         R6 2 ; [-194]
      203 JUMPIF                           R5 ; [+41]
      204 LENGTH                           R7 R3
      205 LOADN                            R8 0
      206 JUMPIFNOTLT                      R8 R7 ; [+4]
      208 LENGTH                           R7 R3
      209 GETTABLE                         R6 R3 R7
      210 JUMPIF                           R6 ; [+1]
      211 LOADNIL                          R6
      212 JUMPIFNOT                        R6 ; [+19]
      213 GETTABLEKS                       R7 R6 K3 ["name"]
      215 JUMPIFNOTEQKS                    R7 K4 ["TEXT"] ; [+16]
      217 LENGTH                           R7 R3
      218 DUPTABLE                         R8 K10 [{["name"] = "TEXT", ["children"], ["text"]}]
      219 NEWTABLE                         R9 0 0
      221 SETTABLEKS                       R9 R8 K9 ["children"]
      223 GETTABLEKS                       R12 R6 K6 ["text"]
      225 ORK                              R10 R12 K5 [""]
      226 MOVE                             R11 R2
      227 CONCAT                           R9 R10 R11
      228 SETTABLEKS                       R9 R8 K6 ["text"]
      230 SETTABLE                         R8 R3 R7
      231 RETURN                           R3 1
      232 DUPTABLE                         R9 K10 [{["name"] = "TEXT", ["children"], ["text"]}]
      233 NEWTABLE                         R10 0 0
      235 SETTABLEKS                       R10 R9 K9 ["children"]
      237 SETTABLEKS                       R2 R9 K6 ["text"]
      239 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      241 MOVE                             R8 R3
      242 GETIMPORT                        R7 K2 [table.insert]
      244 CALL                             R7 2 0
      245 RETURN                           R3 1

PROTO_21:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R4 0
        3 MOVE                             R5 R0
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 FORGPREP                         R5
        7 GETTABLEKS                       R10 R9 K0 ["name"]
        9 JUMPIFNOTEQKS                    R10 K1 ["TEXT"] ; [+61]
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
       28 JUMP                             ; [+40]
       29 JUMPIFNOTLE                      R1 R11 ; [+4]
       31 JUMPIFNOTLE                      R12 R2 ; [+2]
       33 JUMP                             ; [+35]
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
       54 JUMPIFNOTLT                      R15 R14 ; [+14]
       56 DUPTABLE                         R16 K10 [{[1] = "TEXT", ["children"], ["text"]}]
       57 NEWTABLE                         R17 0 0
       59 SETTABLEKS                       R17 R16 K9 ["children"]
       61 SETTABLEKS                       R13 R16 K3 ["text"]
       63 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
       65 MOVE                             R15 R3
       66 GETIMPORT                        R14 K6 [table.insert]
       68 CALL                             R14 2 0
       69 MOVE                             R4 R12
       70 JUMP                             ; [+112]
       71 GETTABLEKS                       R10 R9 K0 ["name"]
       73 JUMPIFEQKS                       R10 K11 ["STYLED_TEXT"] ; [+5]
       75 GETTABLEKS                       R10 R9 K0 ["name"]
       77 JUMPIFNOTEQKS                    R10 K12 ["LINK"] ; [+79]
       79 GETTABLEKS                       R11 R9 K9 ["children"]
       81 JUMPIF                           R11 ; [+2]
       82 NEWTABLE                         R11 0 0
       84 LOADN                            R12 0
       85 MOVE                             R13 R11
       86 LOADNIL                          R14
       87 LOADNIL                          R15
       88 FORGPREP                         R13
       89 GETUPVAL                         R18 0
       90 MOVE                             R19 R17
       91 CALL                             R18 1 1
       92 ADD                              R12 R12 R18
       93 FORGLOOP                         R13 2 ; [-5]
       95 MOVE                             R10 R12
       96 MOVE                             R11 R4
       97 ADD                              R12 R4 R10
       98 JUMPIFLE                         R12 R1 ; [+3]
      100 JUMPIFNOTLE                      R2 R11 ; [+9]
      102 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      104 MOVE                             R14 R3
      105 MOVE                             R15 R9
      106 GETIMPORT                        R13 K6 [table.insert]
      108 CALL                             R13 2 0
      109 JUMP                             ; [+45]
      110 JUMPIFNOTLE                      R1 R11 ; [+4]
      112 JUMPIFNOTLE                      R12 R2 ; [+2]
      114 JUMP                             ; [+40]
      115 LOADN                            R14 0
      116 SUB                              R15 R1 R11
      117 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
      119 GETIMPORT                        R13 K15 [math.max]
      121 CALL                             R13 2 1
      122 SUB                              R16 R2 R11
      123 FASTCALL2                        MATH_MIN R10 R16 ; [+4]
      125 MOVE                             R15 R10
      126 GETIMPORT                        R14 K17 [math.min]
      128 CALL                             R14 2 1
      129 GETUPVAL                         R15 1
      130 GETTABLEKS                       R16 R9 K9 ["children"]
      132 JUMPIF                           R16 ; [+2]
      133 NEWTABLE                         R16 0 0
      135 MOVE                             R17 R13
      136 MOVE                             R18 R14
      137 CALL                             R15 3 1
      138 LENGTH                           R16 R15
      139 LOADN                            R17 0
      140 JUMPIFNOTLT                      R17 R16 ; [+14]
      142 GETIMPORT                        R16 K19 [table.clone]
      144 MOVE                             R17 R9
      145 CALL                             R16 1 1
      146 SETTABLEKS                       R15 R16 K9 ["children"]
      148 FASTCALL2                        TABLE_INSERT R3 R16 ; [+5]
      150 MOVE                             R18 R3
      151 MOVE                             R19 R16
      152 GETIMPORT                        R17 K6 [table.insert]
      154 CALL                             R17 2 0
      155 MOVE                             R4 R12
      156 JUMP                             ; [+26]
      157 GETTABLEKS                       R10 R9 K0 ["name"]
      159 JUMPIFNOTEQKS                    R10 K20 ["BREAK"] ; [+16]
      161 MOVE                             R10 R4
      162 ADDK                             R11 R4 K8 [1]
      163 JUMPIFLE                         R11 R1 ; [+3]
      165 JUMPIFNOTLE                      R2 R10 ; [+8]
      167 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      169 MOVE                             R13 R3
      170 MOVE                             R14 R9
      171 GETIMPORT                        R12 K6 [table.insert]
      173 CALL                             R12 2 0
      174 MOVE                             R4 R11
      175 JUMP                             ; [+7]
      176 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      178 MOVE                             R11 R3
      179 MOVE                             R12 R9
      180 GETIMPORT                        R10 K6 [table.insert]
      182 CALL                             R10 2 0
      183 FORGLOOP                         R5 2 ; [-177]
      185 RETURN                           R3 1

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
       18 JUMP                             ; [+202]
       19 GETTABLEKS                       R11 R10 K3 ["name"]
       21 JUMPIFNOTEQKS                    R11 K4 ["TEXT"] ; [+74]
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
       38 JUMP                             ; [+182]
       39 JUMPIFNOTLE                      R12 R1 ; [+10]
       41 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       43 MOVE                             R14 R2
       44 MOVE                             R15 R10
       45 GETIMPORT                        R13 K2 [table.insert]
       47 CALL                             R13 2 0
       48 MOVE                             R4 R12
       49 JUMP                             ; [+171]
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
       62 JUMPIFNOTLT                      R17 R16 ; [+14]
       64 DUPTABLE                         R18 K10 [{["name"] = "TEXT", ["children"], ["text"]}]
       65 NEWTABLE                         R19 0 0
       67 SETTABLEKS                       R19 R18 K9 ["children"]
       69 SETTABLEKS                       R14 R18 K6 ["text"]
       71 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
       73 MOVE                             R17 R2
       74 GETIMPORT                        R16 K2 [table.insert]
       76 CALL                             R16 2 0
       77 LENGTH                           R16 R15
       78 LOADN                            R17 0
       79 JUMPIFNOTLT                      R17 R16 ; [+14]
       81 DUPTABLE                         R18 K10 [{["name"] = "TEXT", ["children"], ["text"]}]
       82 NEWTABLE                         R19 0 0
       84 SETTABLEKS                       R19 R18 K9 ["children"]
       86 SETTABLEKS                       R15 R18 K6 ["text"]
       88 FASTCALL2                        TABLE_INSERT R3 R18 ; [+4]
       90 MOVE                             R17 R3
       91 GETIMPORT                        R16 K2 [table.insert]
       93 CALL                             R16 2 0
       94 LOADB                            R5 1
       95 JUMP                             ; [+125]
       96 GETTABLEKS                       R11 R10 K3 ["name"]
       98 JUMPIFEQKS                       R11 K11 ["STYLED_TEXT"] ; [+5]
      100 GETTABLEKS                       R11 R10 K3 ["name"]
      102 JUMPIFNOTEQKS                    R11 K12 ["LINK"] ; [+86]
      104 GETTABLEKS                       R12 R10 K9 ["children"]
      106 JUMPIF                           R12 ; [+2]
      107 NEWTABLE                         R12 0 0
      109 LOADN                            R13 0
      110 MOVE                             R14 R12
      111 LOADNIL                          R15
      112 LOADNIL                          R16
      113 FORGPREP                         R14
      114 GETUPVAL                         R19 0
      115 MOVE                             R20 R18
      116 CALL                             R19 1 1
      117 ADD                              R13 R13 R19
      118 FORGLOOP                         R14 2 ; [-5]
      120 MOVE                             R11 R13
      121 ADD                              R12 R4 R11
      122 JUMPIFNOTLE                      R1 R4 ; [+10]
      124 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      126 MOVE                             R14 R3
      127 MOVE                             R15 R10
      128 GETIMPORT                        R13 K2 [table.insert]
      130 CALL                             R13 2 0
      131 LOADB                            R5 1
      132 JUMP                             ; [+88]
      133 JUMPIFNOTLE                      R12 R1 ; [+10]
      135 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
      137 MOVE                             R14 R2
      138 MOVE                             R15 R10
      139 GETIMPORT                        R13 K2 [table.insert]
      141 CALL                             R13 2 0
      142 MOVE                             R4 R12
      143 JUMP                             ; [+77]
      144 SUB                              R13 R1 R4
      145 GETUPVAL                         R14 1
      146 GETTABLEKS                       R15 R10 K9 ["children"]
      148 JUMPIF                           R15 ; [+2]
      149 NEWTABLE                         R15 0 0
      151 MOVE                             R16 R13
      152 CALL                             R14 2 2
      153 LENGTH                           R16 R14
      154 LOADN                            R17 0
      155 JUMPIFNOTLT                      R17 R16 ; [+14]
      157 GETIMPORT                        R16 K14 [table.clone]
      159 MOVE                             R17 R10
      160 CALL                             R16 1 1
      161 SETTABLEKS                       R14 R16 K9 ["children"]
      163 FASTCALL2                        TABLE_INSERT R2 R16 ; [+5]
      165 MOVE                             R18 R2
      166 MOVE                             R19 R16
      167 GETIMPORT                        R17 K2 [table.insert]
      169 CALL                             R17 2 0
      170 LENGTH                           R16 R15
      171 LOADN                            R17 0
      172 JUMPIFNOTLT                      R17 R16 ; [+14]
      174 GETIMPORT                        R16 K14 [table.clone]
      176 MOVE                             R17 R10
      177 CALL                             R16 1 1
      178 SETTABLEKS                       R15 R16 K9 ["children"]
      180 FASTCALL2                        TABLE_INSERT R3 R16 ; [+5]
      182 MOVE                             R18 R3
      183 MOVE                             R19 R16
      184 GETIMPORT                        R17 K2 [table.insert]
      186 CALL                             R17 2 0
      187 LOADB                            R5 1
      188 JUMP                             ; [+32]
      189 GETTABLEKS                       R11 R10 K3 ["name"]
      191 JUMPIFNOTEQKS                    R11 K15 ["BREAK"] ; [+22]
      193 ADDK                             R11 R4 K8 [1]
      194 JUMPIFNOTLE                      R1 R4 ; [+10]
      196 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      198 MOVE                             R13 R3
      199 MOVE                             R14 R10
      200 GETIMPORT                        R12 K2 [table.insert]
      202 CALL                             R12 2 0
      203 LOADB                            R5 1
      204 JUMP                             ; [+16]
      205 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
      207 MOVE                             R13 R2
      208 MOVE                             R14 R10
      209 GETIMPORT                        R12 K2 [table.insert]
      211 CALL                             R12 2 0
      212 MOVE                             R4 R11
      213 JUMP                             ; [+7]
      214 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
      216 MOVE                             R12 R2
      217 MOVE                             R13 R10
      218 GETIMPORT                        R11 K2 [table.insert]
      220 CALL                             R11 2 0
      221 FORGLOOP                         R6 2 ; [-212]
      223 RETURN                           R2 2

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
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+11]
        3 NEWTABLE                         R2 0 1
        5 DUPTABLE                         R3 K6 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
        6 NEWTABLE                         R4 0 0
        8 SETTABLEKS                       R4 R3 K3 ["children"]
       10 SETLIST                          R2 R3 1 [1]
       12 RETURN                           R2 1
       13 RETURN                           R0 1

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
       13 JUMPIFNOTEQKS                    R13 K1 ["STYLED_TEXT"] ; [+105]
       15 GETTABLEKS                       R13 R10 K2 ["attributes"]
       17 JUMPIFNOT                        R13 ; [+101]
       18 GETTABLEKS                       R13 R10 K2 ["attributes"]
       20 GETTABLEKS                       R13 R13 K3 ["style"]
       22 JUMPIFNOTEQ                      R13 R3 ; [+96]
       24 JUMPIFNOTLE                      R12 R1 ; [+94]
       26 ADD                              R13 R12 R11
       27 JUMPIFNOTLE                      R2 R13 ; [+91]
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
       53 JUMP                             ; [+72]
       54 LOADN                            R16 0
       55 JUMPIFNOTLT                      R16 R13 ; [+23]
       57 GETUPVAL                         R16 1
       58 MOVE                             R17 R15
       59 MOVE                             R18 R13
       60 CALL                             R16 2 1
       61 LENGTH                           R17 R16
       62 LOADN                            R18 0
       63 JUMPIFNOTLT                      R18 R17 ; [+15]
       65 DUPTABLE                         R19 K9 [{[1] = "STYLED_TEXT", ["children"], ["attributes"]}]
       66 SETTABLEKS                       R16 R19 K4 ["children"]
       68 DUPTABLE                         R20 K10 [{"style"}]
       69 SETTABLEKS                       R3 R20 K3 ["style"]
       71 SETTABLEKS                       R20 R19 K2 ["attributes"]
       73 FASTCALL2                        TABLE_INSERT R4 R19 ; [+4]
       75 MOVE                             R18 R4
       76 GETIMPORT                        R17 K8 [table.insert]
       78 CALL                             R17 2 0
       79 GETUPVAL                         R16 1
       80 MOVE                             R17 R15
       81 MOVE                             R18 R13
       82 CALL                             R16 2 2
       83 GETUPVAL                         R18 1
       84 MOVE                             R19 R17
       85 SUB                              R20 R14 R13
       86 CALL                             R18 2 2
       87 MOVE                             R20 R18
       88 LOADNIL                          R21
       89 LOADNIL                          R22
       90 FORGPREP                         R20
       91 FASTCALL2                        TABLE_INSERT R4 R24 ; [+5]
       93 MOVE                             R26 R4
       94 MOVE                             R27 R24
       95 GETIMPORT                        R25 K8 [table.insert]
       97 CALL                             R25 2 0
       98 FORGLOOP                         R20 2 ; [-8]
      100 LENGTH                           R20 R19
      101 LOADN                            R21 0
      102 JUMPIFNOTLT                      R21 R20 ; [+23]
      104 DUPTABLE                         R22 K9 [{[1] = "STYLED_TEXT", ["children"], ["attributes"]}]
      105 SETTABLEKS                       R19 R22 K4 ["children"]
      107 DUPTABLE                         R23 K10 [{"style"}]
      108 SETTABLEKS                       R3 R23 K3 ["style"]
      110 SETTABLEKS                       R23 R22 K2 ["attributes"]
      112 FASTCALL2                        TABLE_INSERT R4 R22 ; [+4]
      114 MOVE                             R21 R4
      115 GETIMPORT                        R20 K8 [table.insert]
      117 CALL                             R20 2 0
      118 JUMP                             ; [+7]
      119 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
      121 MOVE                             R14 R4
      122 MOVE                             R15 R10
      123 GETIMPORT                        R13 K8 [table.insert]
      125 CALL                             R13 2 0
      126 ADD                              R5 R5 R11
      127 FORGLOOP                         R6 2 ; [-121]
      129 RETURN                           R4 1

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
       12 DUPTABLE                         R8 K5 [{["name"] = "STYLED_TEXT", ["children"], ["attributes"]}]
       13 SETTABLEKS                       R6 R8 K3 ["children"]
       15 DUPTABLE                         R9 K7 [{"style"}]
       16 SETTABLEKS                       R3 R9 K6 ["style"]
       18 SETTABLEKS                       R9 R8 K4 ["attributes"]
       20 NEWTABLE                         R9 0 0
       22 MOVE                             R10 R4
       23 LOADNIL                          R11
       24 LOADNIL                          R12
       25 FORGPREP                         R10
       26 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       28 MOVE                             R16 R9
       29 MOVE                             R17 R14
       30 GETIMPORT                        R15 K10 [table.insert]
       32 CALL                             R15 2 0
       33 FORGLOOP                         R10 2 ; [-8]
       35 FASTCALL2                        TABLE_INSERT R9 R8 ; [+5]
       37 MOVE                             R11 R9
       38 MOVE                             R12 R8
       39 GETIMPORT                        R10 K10 [table.insert]
       41 CALL                             R10 2 0
       42 MOVE                             R10 R7
       43 LOADNIL                          R11
       44 LOADNIL                          R12
       45 FORGPREP                         R10
       46 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       48 MOVE                             R16 R9
       49 MOVE                             R17 R14
       50 GETIMPORT                        R15 K10 [table.insert]
       52 CALL                             R15 2 0
       53 FORGLOOP                         R10 2 ; [-8]
       55 RETURN                           R9 1

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 JUMPIFNOTEQKS                    R2 K1 ["LIST"] ; [+62]
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
       30 JUMPIFNOT                        R2 ; [+32]
       31 DUPTABLE                         R4 K9 [{["children"], ["flatOffset"], ["isList"] = True, ["listItemIndex"], ["listItem"]}]
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
       58 SETTABLEKS                       R3 R4 K7 ["listItemIndex"]
       60 SETTABLEKS                       R2 R4 K8 ["listItem"]
       62 RETURN                           R4 1
       63 LOADNIL                          R4
       64 RETURN                           R4 1
       65 GETTABLEKS                       R3 R0 K0 ["name"]
       67 JUMPIFEQKS                       R3 K10 ["TABLE"] ; [+2]
       69 LOADB                            R2 0 +1
       70 LOADB                            R2 1
       71 JUMPIFNOT                        R2 ; [+41]
       72 GETUPVAL                         R2 0
       73 MOVE                             R3 R0
       74 MOVE                             R4 R1
       75 CALL                             R2 2 3
       76 JUMPIFNOT                        R2 ; [+34]
       77 DUPTABLE                         R5 K15 [{["children"], ["flatOffset"], ["isTable"] = True, ["tableRowIndex"], ["tableCellIndex"], ["tableCell"]}]
       78 GETTABLEKS                       R6 R2 K3 ["children"]
       80 JUMPIF                           R6 ; [+2]
       81 NEWTABLE                         R6 0 0
       83 SETTABLEKS                       R6 R5 K3 ["children"]
       85 GETTABLEKS                       R7 R2 K3 ["children"]
       87 JUMPIF                           R7 ; [+2]
       88 NEWTABLE                         R7 0 0
       90 LOADN                            R8 0
       91 LOADN                            R9 0
       92 NEWCLOSURE                       R10 P0
       93 CAPTURE                          REF R9
       94 CAPTURE                          VAL R1
       95 CAPTURE                          REF R8
       96 CAPTURE                          VAL R10
       97 MOVE                             R11 R10
       98 MOVE                             R12 R7
       99 CALL                             R11 1 1
      100 OR                               R6 R11 R8
      101 CLOSEUPVALS                      R8
      102 SETTABLEKS                       R6 R5 K4 ["flatOffset"]
      104 SETTABLEKS                       R3 R5 K12 ["tableRowIndex"]
      106 SETTABLEKS                       R4 R5 K13 ["tableCellIndex"]
      108 SETTABLEKS                       R2 R5 K14 ["tableCell"]
      110 RETURN                           R5 1
      111 LOADNIL                          R5
      112 RETURN                           R5 1
      113 GETTABLEKS                       R3 R0 K0 ["name"]
      115 LOADB                            R2 1
      116 JUMPIFEQKS                       R3 K16 ["PARAGRAPH"] ; [+11]
      118 LOADB                            R2 1
      119 JUMPIFEQKS                       R3 K17 ["HEADING"] ; [+8]
      121 LOADB                            R2 1
      122 JUMPIFEQKS                       R3 K18 ["QUOTE"] ; [+5]
      124 JUMPIFEQKS                       R3 K19 ["LIST_ITEM"] ; [+2]
      126 LOADB                            R2 0 +1
      127 LOADB                            R2 1
      128 JUMPIFNOT                        R2 ; [+28]
      129 DUPTABLE                         R2 K21 [{["children"], ["flatOffset"], ["isList"] = False}]
      130 GETTABLEKS                       R3 R0 K3 ["children"]
      132 JUMPIF                           R3 ; [+2]
      133 NEWTABLE                         R3 0 0
      135 SETTABLEKS                       R3 R2 K3 ["children"]
      137 GETTABLEKS                       R4 R0 K3 ["children"]
      139 JUMPIF                           R4 ; [+2]
      140 NEWTABLE                         R4 0 0
      142 LOADN                            R5 0
      143 LOADN                            R6 0
      144 NEWCLOSURE                       R7 P0
      145 CAPTURE                          REF R6
      146 CAPTURE                          VAL R1
      147 CAPTURE                          REF R5
      148 CAPTURE                          VAL R7
      149 MOVE                             R8 R7
      150 MOVE                             R9 R4
      151 CALL                             R8 1 1
      152 OR                               R3 R8 R5
      153 CLOSEUPVALS                      R5
      154 SETTABLEKS                       R3 R2 K4 ["flatOffset"]
      156 RETURN                           R2 1
      157 LOADNIL                          R2
      158 RETURN                           R2 1

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
      368 LOADN                            R17 -1
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
      442 JUMPIFNOTEQ                      R10 R11 ; [+280]
      444 JUMPIFNOT                        R8 ; [+278]
      445 GETTABLEKS                       R11 R8 K3 ["name"]
      447 JUMPIFEQKS                       R11 K31 ["TABLE"] ; [+2]
      449 LOADB                            R10 0 +1
      450 LOADB                            R10 1
      451 JUMPIFNOT                        R10 ; [+271]
      452 GETUPVAL                         R10 5
      453 MOVE                             R11 R8
      454 MOVE                             R12 R5
      455 CALL                             R10 2 1
      456 GETUPVAL                         R11 5
      457 MOVE                             R12 R8
      458 MOVE                             R13 R6
      459 CALL                             R11 2 1
      460 JUMPIFNOT                        R10 ; [+262]
      461 JUMPIFNOT                        R11 ; [+261]
      462 GETTABLEKS                       R12 R10 K32 ["isTable"]
      464 JUMPIFNOT                        R12 ; [+258]
      465 GETTABLEKS                       R12 R11 K32 ["isTable"]
      467 JUMPIFNOT                        R12 ; [+255]
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
      615 JUMPIFNOT                        R19 ; [+48]
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
      644 JUMPIFNOT                        R26 ; [+18]
      645 GETUPVAL                         R27 8
      646 MOVE                             R28 R26
      647 MOVE                             R29 R18
      648 MOVE                             R30 R25
      649 NEWTABLE                         R31 0 1
      651 DUPTABLE                         R32 K37 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      652 NEWTABLE                         R33 0 0
      654 SETTABLEKS                       R33 R32 K8 ["children"]
      656 SETLIST                          R31 R32 1 [1]
      658 GETTABLEKS                       R32 R5 K2 ["blockIndex"]
      660 MOVE                             R33 R1
      661 MOVE                             R34 R2
      662 CALL                             R27 7 0
      663 FORNLOOP                         R23
      664 FORNLOOP                         R16
      665 GETTABLEKS                       R17 R5 K2 ["blockIndex"]
      667 GETTABLEKS                       R18 R10 K22 ["flatOffset"]
      669 LOADN                            R19 0
      670 LOADN                            R20 0
      671 NEWCLOSURE                       R21 P1
      672 CAPTURE                          REF R19
      673 CAPTURE                          VAL R18
      674 CAPTURE                          REF R20
      675 CAPTURE                          UPVAL U0
      676 CAPTURE                          VAL R17
      677 CAPTURE                          VAL R21
      678 MOVE                             R22 R21
      679 MOVE                             R23 R12
      680 CALL                             R22 1 1
      681 JUMPIFNOT                        R22 ; [+3]
      682 MOVE                             R16 R22
      683 CLOSEUPVALS                      R19
      684 JUMP                             ; [+15]
      685 GETUPVAL                         R23 0
      686 GETTABLEKS                       R23 R23 K10 ["createCollapsed"]
      688 MOVE                             R24 R17
      689 LOADN                            R26 1
      690 FASTCALL2                        MATH_MAX R26 R19 ; [+4]
      692 MOVE                             R27 R19
      693 GETIMPORT                        R25 K13 [math.max]
      695 CALL                             R25 2 1
      696 SUB                              R26 R18 R20
      697 CALL                             R23 3 1
      698 MOVE                             R16 R23
      699 CLOSEUPVALS                      R19
      700 GETUPVAL                         R17 0
      701 GETTABLEKS                       R17 R17 K27 ["createPosition"]
      703 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      705 GETTABLEKS                       R19 R16 K14 ["anchor"]
      707 GETTABLEKS                       R19 R19 K28 ["segmentIndex"]
      709 GETTABLEKS                       R20 R16 K14 ["anchor"]
      711 GETTABLEKS                       R20 R20 K29 ["charOffset"]
      713 NEWTABLE                         R21 0 2
      715 GETTABLEKS                       R22 R10 K33 ["tableRowIndex"]
      717 GETTABLEKS                       R23 R10 K34 ["tableCellIndex"]
      719 SETLIST                          R21 R22 2 [1]
      721 CALL                             R17 4 -1
      722 RETURN                           R17 -1
      723 JUMPIFNOT                        R8 ; [+5]
      724 GETUPVAL                         R10 5
      725 MOVE                             R11 R8
      726 MOVE                             R12 R5
      727 CALL                             R10 2 1
      728 JUMP                             ; [+1]
      729 LOADNIL                          R10
      730 JUMPIFNOT                        R9 ; [+5]
      731 GETUPVAL                         R11 5
      732 MOVE                             R12 R9
      733 MOVE                             R13 R6
      734 CALL                             R11 2 1
      735 JUMP                             ; [+1]
      736 LOADNIL                          R11
      737 JUMPIFNOT                        R10 ; [+256]
      738 JUMPIFNOT                        R11 ; [+255]
      739 GETUPVAL                         R12 6
      740 GETTABLEKS                       R13 R10 K8 ["children"]
      742 GETTABLEKS                       R14 R10 K22 ["flatOffset"]
      744 CALL                             R12 2 1
      745 GETUPVAL                         R13 6
      746 GETTABLEKS                       R14 R11 K8 ["children"]
      748 GETTABLEKS                       R15 R11 K22 ["flatOffset"]
      750 CALL                             R13 2 2
      751 GETUPVAL                         R15 1
      752 GETUPVAL                         R16 7
      753 MOVE                             R17 R12
      754 MOVE                             R18 R14
      755 CALL                             R16 2 1
      756 CALL                             R15 1 1
      757 NEWTABLE                         R16 0 0
      759 GETTABLEKS                       R17 R11 K38 ["isList"]
      761 JUMPIFNOT                        R17 ; [+19]
      762 GETTABLEKS                       R17 R9 K8 ["children"]
      764 JUMPIF                           R17 ; [+2]
      765 NEWTABLE                         R17 0 0
      767 GETTABLEKS                       R21 R11 K21 ["listItemIndex"]
      769 ADDK                             R20 R21 K19 [1]
      770 LENGTH                           R18 R17
      771 LOADN                            R19 1
      772 FORNPREP                         R18
      773 GETTABLE                         R23 R17 R20
      774 FASTCALL2                        TABLE_INSERT R16 R23 ; [+4]
      776 MOVE                             R22 R16
      777 GETIMPORT                        R21 K41 [table.insert]
      779 CALL                             R21 2 0
      780 FORNLOOP                         R18
      781 GETTABLEKS                       R17 R10 K38 ["isList"]
      783 JUMPIFNOT                        R17 ; [+54]
      784 GETTABLEKS                       R17 R10 K23 ["listItem"]
      786 GETTABLEKS                       R18 R10 K21 ["listItemIndex"]
      788 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
      790 MOVE                             R20 R2
      791 GETTABLE                         R22 R1 R19
      792 GETTABLEKS                       R22 R22 K8 ["children"]
      794 GETTABLE                         R21 R22 R18
      795 CALL                             R20 1 1
      796 DUPTABLE                         R22 K26 [{"name", "children", "attributes", "index"}]
      797 GETTABLEKS                       R23 R17 K3 ["name"]
      799 SETTABLEKS                       R23 R22 K3 ["name"]
      801 SETTABLEKS                       R15 R22 K8 ["children"]
      803 GETTABLEKS                       R23 R17 K24 ["attributes"]
      805 SETTABLEKS                       R23 R22 K24 ["attributes"]
      807 GETTABLEKS                       R23 R17 K25 ["index"]
      809 SETTABLEKS                       R23 R22 K25 ["index"]
      811 NAMECALL                         R20 R20 K9 ["set"]
      813 CALL                             R20 2 0
      814 GETTABLEKS                       R17 R8 K8 ["children"]
      816 JUMPIF                           R17 ; [+2]
      817 NEWTABLE                         R17 0 0
      819 LENGTH                           R20 R17
      820 GETTABLEKS                       R21 R10 K21 ["listItemIndex"]
      822 ADDK                             R18 R21 K19 [1]
      823 LOADN                            R19 -1
      824 FORNPREP                         R18
      825 MOVE                             R21 R2
      826 GETTABLEKS                       R23 R5 K2 ["blockIndex"]
      828 GETTABLE                         R22 R1 R23
      829 GETTABLEKS                       R22 R22 K8 ["children"]
      831 CALL                             R21 1 1
      832 MOVE                             R23 R20
      833 NAMECALL                         R21 R21 K30 ["remove"]
      835 CALL                             R21 2 0
      836 FORNLOOP                         R18
      837 JUMP                             ; [+28]
      838 GETTABLEKS                       R17 R10 K32 ["isTable"]
      840 JUMPIFNOT                        R17 ; [+14]
      841 GETUPVAL                         R17 8
      842 GETTABLEKS                       R18 R10 K35 ["tableCell"]
      844 GETTABLEKS                       R19 R10 K33 ["tableRowIndex"]
      846 GETTABLEKS                       R20 R10 K34 ["tableCellIndex"]
      848 MOVE                             R21 R15
      849 GETTABLEKS                       R22 R5 K2 ["blockIndex"]
      851 MOVE                             R23 R1
      852 MOVE                             R24 R2
      853 CALL                             R17 7 0
      854 JUMP                             ; [+11]
      855 MOVE                             R17 R2
      856 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
      858 GETTABLE                         R18 R1 R19
      859 GETTABLEKS                       R18 R18 K8 ["children"]
      861 CALL                             R17 1 1
      862 MOVE                             R19 R15
      863 NAMECALL                         R17 R17 K9 ["set"]
      865 CALL                             R17 2 0
      866 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      868 GETTABLEKS                       R20 R5 K2 ["blockIndex"]
      870 ADDK                             R17 R20 K19 [1]
      871 LOADN                            R18 -1
      872 FORNPREP                         R17
      873 MOVE                             R20 R2
      874 MOVE                             R21 R1
      875 CALL                             R20 1 1
      876 MOVE                             R22 R19
      877 NAMECALL                         R20 R20 K30 ["remove"]
      879 CALL                             R20 2 0
      880 FORNLOOP                         R17
      881 LENGTH                           R17 R16
      882 LOADN                            R18 0
      883 JUMPIFNOTLT                      R18 R17 ; [+22]
      885 DUPTABLE                         R17 K42 [{["name"] = "LIST", ["children"], ["attributes"], ["index"]}]
      886 SETTABLEKS                       R16 R17 K8 ["children"]
      888 GETTABLEKS                       R18 R9 K24 ["attributes"]
      890 SETTABLEKS                       R18 R17 K24 ["attributes"]
      892 MOVE                             R18 R4
      893 CALL                             R18 0 1
      894 SETTABLEKS                       R18 R17 K25 ["index"]
      896 MOVE                             R18 R2
      897 MOVE                             R19 R1
      898 CALL                             R18 1 1
      899 MOVE                             R20 R17
      900 GETTABLEKS                       R22 R5 K2 ["blockIndex"]
      902 ADDK                             R21 R22 K19 [1]
      903 NAMECALL                         R18 R18 K40 ["insert"]
      905 CALL                             R18 3 0
      906 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      908 GETTABLEKS                       R19 R10 K22 ["flatOffset"]
      910 LOADN                            R20 0
      911 LOADN                            R21 0
      912 NEWCLOSURE                       R22 P1
      913 CAPTURE                          REF R20
      914 CAPTURE                          VAL R19
      915 CAPTURE                          REF R21
      916 CAPTURE                          UPVAL U0
      917 CAPTURE                          VAL R18
      918 CAPTURE                          VAL R22
      919 MOVE                             R23 R22
      920 MOVE                             R24 R15
      921 CALL                             R23 1 1
      922 JUMPIFNOT                        R23 ; [+3]
      923 MOVE                             R17 R23
      924 CLOSEUPVALS                      R20
      925 JUMP                             ; [+15]
      926 GETUPVAL                         R24 0
      927 GETTABLEKS                       R24 R24 K10 ["createCollapsed"]
      929 MOVE                             R25 R18
      930 LOADN                            R27 1
      931 FASTCALL2                        MATH_MAX R27 R20 ; [+4]
      933 MOVE                             R28 R20
      934 GETIMPORT                        R26 K13 [math.max]
      936 CALL                             R26 2 1
      937 SUB                              R27 R19 R21
      938 CALL                             R24 3 1
      939 MOVE                             R17 R24
      940 CLOSEUPVALS                      R20
      941 GETTABLEKS                       R18 R10 K38 ["isList"]
      943 JUMPIFNOT                        R18 ; [+21]
      944 GETUPVAL                         R18 0
      945 GETTABLEKS                       R18 R18 K27 ["createPosition"]
      947 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
      949 GETTABLEKS                       R20 R17 K14 ["anchor"]
      951 GETTABLEKS                       R20 R20 K28 ["segmentIndex"]
      953 GETTABLEKS                       R21 R17 K14 ["anchor"]
      955 GETTABLEKS                       R21 R21 K29 ["charOffset"]
      957 NEWTABLE                         R22 0 1
      959 GETTABLEKS                       R23 R10 K21 ["listItemIndex"]
      961 SETLIST                          R22 R23 1 [1]
      963 CALL                             R18 4 -1
      964 RETURN                           R18 -1
      965 GETTABLEKS                       R18 R10 K32 ["isTable"]
      967 JUMPIFNOT                        R18 ; [+23]
      968 GETUPVAL                         R18 0
      969 GETTABLEKS                       R18 R18 K27 ["createPosition"]
      971 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
      973 GETTABLEKS                       R20 R17 K14 ["anchor"]
      975 GETTABLEKS                       R20 R20 K28 ["segmentIndex"]
      977 GETTABLEKS                       R21 R17 K14 ["anchor"]
      979 GETTABLEKS                       R21 R21 K29 ["charOffset"]
      981 NEWTABLE                         R22 0 2
      983 GETTABLEKS                       R23 R10 K33 ["tableRowIndex"]
      985 GETTABLEKS                       R24 R10 K34 ["tableCellIndex"]
      987 SETLIST                          R22 R23 2 [1]
      989 CALL                             R18 4 -1
      990 RETURN                           R18 -1
      991 GETTABLEKS                       R18 R17 K14 ["anchor"]
      993 RETURN                           R18 1
      994 JUMPIFNOT                        R10 ; [+93]
      995 GETUPVAL                         R12 1
      996 GETUPVAL                         R13 6
      997 GETTABLEKS                       R14 R10 K8 ["children"]
      999 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
     1001 CALL                             R13 2 -1
     1002 CALL                             R12 -1 1
     1003 GETTABLEKS                       R13 R10 K38 ["isList"]
     1005 JUMPIFNOT                        R13 ; [+54]
     1006 GETTABLEKS                       R13 R10 K23 ["listItem"]
     1008 GETTABLEKS                       R14 R10 K21 ["listItemIndex"]
     1010 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1012 MOVE                             R16 R2
     1013 GETTABLE                         R18 R1 R15
     1014 GETTABLEKS                       R18 R18 K8 ["children"]
     1016 GETTABLE                         R17 R18 R14
     1017 CALL                             R16 1 1
     1018 DUPTABLE                         R18 K26 [{"name", "children", "attributes", "index"}]
     1019 GETTABLEKS                       R19 R13 K3 ["name"]
     1021 SETTABLEKS                       R19 R18 K3 ["name"]
     1023 SETTABLEKS                       R12 R18 K8 ["children"]
     1025 GETTABLEKS                       R19 R13 K24 ["attributes"]
     1027 SETTABLEKS                       R19 R18 K24 ["attributes"]
     1029 GETTABLEKS                       R19 R13 K25 ["index"]
     1031 SETTABLEKS                       R19 R18 K25 ["index"]
     1033 NAMECALL                         R16 R16 K9 ["set"]
     1035 CALL                             R16 2 0
     1036 GETTABLEKS                       R13 R8 K8 ["children"]
     1038 JUMPIF                           R13 ; [+2]
     1039 NEWTABLE                         R13 0 0
     1041 LENGTH                           R16 R13
     1042 GETTABLEKS                       R17 R10 K21 ["listItemIndex"]
     1044 ADDK                             R14 R17 K19 [1]
     1045 LOADN                            R15 -1
     1046 FORNPREP                         R14
     1047 MOVE                             R17 R2
     1048 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
     1050 GETTABLE                         R18 R1 R19
     1051 GETTABLEKS                       R18 R18 K8 ["children"]
     1053 CALL                             R17 1 1
     1054 MOVE                             R19 R16
     1055 NAMECALL                         R17 R17 K30 ["remove"]
     1057 CALL                             R17 2 0
     1058 FORNLOOP                         R14
     1059 JUMP                             ; [+28]
     1060 GETTABLEKS                       R13 R10 K32 ["isTable"]
     1062 JUMPIFNOT                        R13 ; [+14]
     1063 GETUPVAL                         R13 8
     1064 GETTABLEKS                       R14 R10 K35 ["tableCell"]
     1066 GETTABLEKS                       R15 R10 K33 ["tableRowIndex"]
     1068 GETTABLEKS                       R16 R10 K34 ["tableCellIndex"]
     1070 MOVE                             R17 R12
     1071 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
     1073 MOVE                             R19 R1
     1074 MOVE                             R20 R2
     1075 CALL                             R13 7 0
     1076 JUMP                             ; [+11]
     1077 MOVE                             R13 R2
     1078 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1080 GETTABLE                         R14 R1 R15
     1081 GETTABLEKS                       R14 R14 K8 ["children"]
     1083 CALL                             R13 1 1
     1084 MOVE                             R15 R12
     1085 NAMECALL                         R13 R13 K9 ["set"]
     1087 CALL                             R13 2 0
     1088 JUMPIFNOT                        R11 ; [+100]
     1089 GETUPVAL                         R12 6
     1090 GETTABLEKS                       R13 R11 K8 ["children"]
     1092 GETTABLEKS                       R14 R11 K22 ["flatOffset"]
     1094 CALL                             R12 2 2
     1095 GETUPVAL                         R14 1
     1096 MOVE                             R15 R13
     1097 CALL                             R14 1 1
     1098 MOVE                             R13 R14
     1099 GETTABLEKS                       R14 R11 K38 ["isList"]
     1101 JUMPIFNOT                        R14 ; [+59]
     1102 GETTABLEKS                       R17 R11 K21 ["listItemIndex"]
     1104 SUBK                             R16 R17 K19 [1]
     1105 LOADN                            R14 1
     1106 LOADN                            R15 -1
     1107 FORNPREP                         R14
     1108 MOVE                             R17 R2
     1109 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
     1111 GETTABLE                         R18 R1 R19
     1112 GETTABLEKS                       R18 R18 K8 ["children"]
     1114 CALL                             R17 1 1
     1115 MOVE                             R19 R16
     1116 NAMECALL                         R17 R17 K30 ["remove"]
     1118 CALL                             R17 2 0
     1119 FORNLOOP                         R14
     1120 MOVE                             R16 R3
     1121 MOVE                             R17 R1
     1122 CALL                             R16 1 1
     1123 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
     1125 GETTABLE                         R15 R16 R17
     1126 GETTABLEKS                       R15 R15 K8 ["children"]
     1128 JUMPIF                           R15 ; [+2]
     1129 NEWTABLE                         R15 0 0
     1131 GETTABLEN                        R14 R15 1
     1132 JUMPIFNOT                        R14 ; [+56]
     1133 MOVE                             R15 R13
     1134 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
     1136 MOVE                             R17 R2
     1137 GETTABLE                         R19 R1 R16
     1138 GETTABLEKS                       R19 R19 K8 ["children"]
     1140 GETTABLEN                        R18 R19 1
     1141 CALL                             R17 1 1
     1142 DUPTABLE                         R19 K26 [{"name", "children", "attributes", "index"}]
     1143 GETTABLEKS                       R20 R14 K3 ["name"]
     1145 SETTABLEKS                       R20 R19 K3 ["name"]
     1147 SETTABLEKS                       R15 R19 K8 ["children"]
     1149 GETTABLEKS                       R20 R14 K24 ["attributes"]
     1151 SETTABLEKS                       R20 R19 K24 ["attributes"]
     1153 GETTABLEKS                       R20 R14 K25 ["index"]
     1155 SETTABLEKS                       R20 R19 K25 ["index"]
     1157 NAMECALL                         R17 R17 K9 ["set"]
     1159 CALL                             R17 2 0
     1160 JUMP                             ; [+28]
     1161 GETTABLEKS                       R14 R11 K32 ["isTable"]
     1163 JUMPIFNOT                        R14 ; [+14]
     1164 GETUPVAL                         R14 8
     1165 GETTABLEKS                       R15 R11 K35 ["tableCell"]
     1167 GETTABLEKS                       R16 R11 K33 ["tableRowIndex"]
     1169 GETTABLEKS                       R17 R11 K34 ["tableCellIndex"]
     1171 MOVE                             R18 R13
     1172 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
     1174 MOVE                             R20 R1
     1175 MOVE                             R21 R2
     1176 CALL                             R14 7 0
     1177 JUMP                             ; [+11]
     1178 MOVE                             R14 R2
     1179 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
     1181 GETTABLE                         R15 R1 R16
     1182 GETTABLEKS                       R15 R15 K8 ["children"]
     1184 CALL                             R14 1 1
     1185 MOVE                             R16 R13
     1186 NAMECALL                         R14 R14 K9 ["set"]
     1188 CALL                             R14 2 0
     1189 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
     1191 SUBK                             R14 R15 K19 [1]
     1192 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1194 ADDK                             R12 R15 K19 [1]
     1195 LOADN                            R13 -1
     1196 FORNPREP                         R12
     1197 MOVE                             R15 R2
     1198 MOVE                             R16 R1
     1199 CALL                             R15 1 1
     1200 MOVE                             R17 R14
     1201 NAMECALL                         R15 R15 K30 ["remove"]
     1203 CALL                             R15 2 0
     1204 FORNLOOP                         R12
     1205 JUMPIFNOT                        R10 ; [+96]
     1206 GETUPVAL                         R12 1
     1207 GETUPVAL                         R13 6
     1208 GETTABLEKS                       R14 R10 K8 ["children"]
     1210 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
     1212 CALL                             R13 2 -1
     1213 CALL                             R12 -1 1
     1214 GETTABLEKS                       R14 R5 K2 ["blockIndex"]
     1216 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
     1218 LOADN                            R16 0
     1219 LOADN                            R17 0
     1220 NEWCLOSURE                       R18 P1
     1221 CAPTURE                          REF R16
     1222 CAPTURE                          VAL R15
     1223 CAPTURE                          REF R17
     1224 CAPTURE                          UPVAL U0
     1225 CAPTURE                          VAL R14
     1226 CAPTURE                          VAL R18
     1227 MOVE                             R19 R18
     1228 MOVE                             R20 R12
     1229 CALL                             R19 1 1
     1230 JUMPIFNOT                        R19 ; [+3]
     1231 MOVE                             R13 R19
     1232 CLOSEUPVALS                      R16
     1233 JUMP                             ; [+15]
     1234 GETUPVAL                         R20 0
     1235 GETTABLEKS                       R20 R20 K10 ["createCollapsed"]
     1237 MOVE                             R21 R14
     1238 LOADN                            R23 1
     1239 FASTCALL2                        MATH_MAX R23 R16 ; [+4]
     1241 MOVE                             R24 R16
     1242 GETIMPORT                        R22 K13 [math.max]
     1244 CALL                             R22 2 1
     1245 SUB                              R23 R15 R17
     1246 CALL                             R20 3 1
     1247 MOVE                             R13 R20
     1248 CLOSEUPVALS                      R16
     1249 GETTABLEKS                       R14 R10 K38 ["isList"]
     1251 JUMPIFNOT                        R14 ; [+21]
     1252 GETUPVAL                         R14 0
     1253 GETTABLEKS                       R14 R14 K27 ["createPosition"]
     1255 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1257 GETTABLEKS                       R16 R13 K14 ["anchor"]
     1259 GETTABLEKS                       R16 R16 K28 ["segmentIndex"]
     1261 GETTABLEKS                       R17 R13 K14 ["anchor"]
     1263 GETTABLEKS                       R17 R17 K29 ["charOffset"]
     1265 NEWTABLE                         R18 0 1
     1267 GETTABLEKS                       R19 R10 K21 ["listItemIndex"]
     1269 SETLIST                          R18 R19 1 [1]
     1271 CALL                             R14 4 -1
     1272 RETURN                           R14 -1
     1273 GETTABLEKS                       R14 R10 K32 ["isTable"]
     1275 JUMPIFNOT                        R14 ; [+23]
     1276 GETUPVAL                         R14 0
     1277 GETTABLEKS                       R14 R14 K27 ["createPosition"]
     1279 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1281 GETTABLEKS                       R16 R13 K14 ["anchor"]
     1283 GETTABLEKS                       R16 R16 K28 ["segmentIndex"]
     1285 GETTABLEKS                       R17 R13 K14 ["anchor"]
     1287 GETTABLEKS                       R17 R17 K29 ["charOffset"]
     1289 NEWTABLE                         R18 0 2
     1291 GETTABLEKS                       R19 R10 K33 ["tableRowIndex"]
     1293 GETTABLEKS                       R20 R10 K34 ["tableCellIndex"]
     1295 SETLIST                          R18 R19 2 [1]
     1297 CALL                             R14 4 -1
     1298 RETURN                           R14 -1
     1299 GETTABLEKS                       R14 R13 K14 ["anchor"]
     1301 RETURN                           R14 1
     1302 GETUPVAL                         R12 0
     1303 GETTABLEKS                       R12 R12 K27 ["createPosition"]
     1305 GETTABLEKS                       R13 R5 K2 ["blockIndex"]
     1307 LOADN                            R14 1
     1308 LOADN                            R15 0
     1309 CALL                             R12 3 -1
     1310 RETURN                           R12 -1

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
       43 JUMPIFNOTEQKS                    R12 K2 ["LIST"] ; [+288]
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
       85 JUMPIFNOT                        R16 ; [+158]
       86 LOADNIL                          R17
       87 LENGTH                           R20 R15
       88 LOADN                            R18 1
       89 LOADN                            R19 -1
       90 FORNPREP                         R18
       91 MOVE                             R23 R20
       92 MOVE                             R24 R20
       93 NAMECALL                         R21 R15 K5 ["sub"]
       95 CALL                             R21 3 1
       96 JUMPIFNOTEQ                      R21 R0 ; [+3]
       98 SUBK                             R17 R20 K12 [1]
       99 JUMP                             ; [+1]
      100 FORNLOOP                         R18
      101 JUMPIFEQKNIL                     R17 ; [+142]
      103 ADDK                             R20 R17 K13 [2]
      104 NAMECALL                         R18 R15 K5 ["sub"]
      106 CALL                             R18 2 1
      107 LENGTH                           R19 R18
      108 LOADN                            R20 0
      109 JUMPIFNOTLT                      R20 R19 ; [+134]
      111 GETUPVAL                         R19 2
      112 MOVE                             R20 R12
      113 MOVE                             R21 R17
      114 MOVE                             R22 R13
      115 CALL                             R19 3 1
      116 GETUPVAL                         R20 3
      117 MOVE                             R21 R19
      118 MOVE                             R22 R17
      119 CALL                             R20 2 2
      120 DUPTABLE                         R22 K16 [{["name"] = "STYLED_TEXT", ["children"], ["attributes"]}]
      121 NEWTABLE                         R23 0 1
      123 DUPTABLE                         R24 K19 [{["name"] = "TEXT", ["children"], ["text"]}]
      124 NEWTABLE                         R25 0 0
      126 SETTABLEKS                       R25 R24 K4 ["children"]
      128 SETTABLEKS                       R18 R24 K18 ["text"]
      130 SETLIST                          R23 R24 1 [1]
      132 SETTABLEKS                       R23 R22 K4 ["children"]
      134 DUPTABLE                         R23 K21 [{"style"}]
      135 SETTABLEKS                       R16 R23 K20 ["style"]
      137 SETTABLEKS                       R23 R22 K15 ["attributes"]
      139 NEWTABLE                         R23 0 0
      141 MOVE                             R24 R20
      142 LOADNIL                          R25
      143 LOADNIL                          R26
      144 FORGPREP                         R24
      145 FASTCALL2                        TABLE_INSERT R23 R28 ; [+5]
      147 MOVE                             R30 R23
      148 MOVE                             R31 R28
      149 GETIMPORT                        R29 K24 [table.insert]
      151 CALL                             R29 2 0
      152 FORGLOOP                         R24 2 ; [-8]
      154 FASTCALL2                        TABLE_INSERT R23 R22 ; [+5]
      156 MOVE                             R25 R23
      157 MOVE                             R26 R22
      158 GETIMPORT                        R24 K24 [table.insert]
      160 CALL                             R24 2 0
      161 MOVE                             R24 R21
      162 LOADNIL                          R25
      163 LOADNIL                          R26
      164 FORGPREP                         R24
      165 FASTCALL2                        TABLE_INSERT R23 R28 ; [+5]
      167 MOVE                             R30 R23
      168 MOVE                             R31 R28
      169 GETIMPORT                        R29 K24 [table.insert]
      171 CALL                             R29 2 0
      172 FORGLOOP                         R24 2 ; [-8]
      174 LENGTH                           R24 R21
      175 JUMPIFNOTEQKN                    R24 K25 [0] ; [+12]
      177 DUPTABLE                         R26 K27 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      178 NEWTABLE                         R27 0 0
      180 SETTABLEKS                       R27 R26 K4 ["children"]
      182 FASTCALL2                        TABLE_INSERT R23 R26 ; [+4]
      184 MOVE                             R25 R23
      185 GETIMPORT                        R24 K24 [table.insert]
      187 CALL                             R24 2 0
      188 GETUPVAL                         R24 4
      189 MOVE                             R25 R23
      190 CALL                             R24 1 1
      191 GETTABLEKS                       R25 R7 K0 ["blockIndex"]
      193 MOVE                             R26 R3
      194 GETTABLE                         R28 R2 R25
      195 GETTABLEKS                       R28 R28 K4 ["children"]
      197 GETTABLE                         R27 R28 R11
      198 CALL                             R26 1 1
      199 DUPTABLE                         R28 K29 [{"name", "children", "attributes", "index"}]
      200 GETTABLEKS                       R29 R10 K1 ["name"]
      202 SETTABLEKS                       R29 R28 K1 ["name"]
      204 SETTABLEKS                       R24 R28 K4 ["children"]
      206 GETTABLEKS                       R29 R10 K15 ["attributes"]
      208 SETTABLEKS                       R29 R28 K15 ["attributes"]
      210 GETTABLEKS                       R29 R10 K28 ["index"]
      212 SETTABLEKS                       R29 R28 K28 ["index"]
      214 NAMECALL                         R26 R26 K30 ["set"]
      216 CALL                             R26 2 0
      217 GETUPVAL                         R25 5
      218 MOVE                             R26 R20
      219 CALL                             R25 1 1
      220 GETUPVAL                         R26 5
      221 NEWTABLE                         R27 0 1
      223 MOVE                             R28 R22
      224 SETLIST                          R27 R28 1 [1]
      226 CALL                             R26 1 1
      227 ADD                              R24 R25 R26
      228 MOVE                             R25 R4
      229 GETUPVAL                         R26 6
      230 GETTABLEKS                       R26 R26 K31 ["createCollapsed"]
      232 GETTABLEKS                       R27 R7 K0 ["blockIndex"]
      234 ADDK                             R28 R24 K12 [1]
      235 LOADN                            R29 0
      236 NEWTABLE                         R30 0 1
      238 MOVE                             R31 R11
      239 SETLIST                          R30 R31 1 [1]
      241 CALL                             R26 4 -1
      242 CALL                             R25 -1 0
      243 RETURN                           R0 0
      244 GETUPVAL                         R17 7
      245 MOVE                             R18 R12
      246 MOVE                             R19 R13
      247 MOVE                             R20 R0
      248 CALL                             R17 3 1
      249 GETTABLEKS                       R18 R7 K0 ["blockIndex"]
      251 MOVE                             R19 R3
      252 GETTABLE                         R21 R2 R18
      253 GETTABLEKS                       R21 R21 K4 ["children"]
      255 GETTABLE                         R20 R21 R11
      256 CALL                             R19 1 1
      257 DUPTABLE                         R21 K29 [{"name", "children", "attributes", "index"}]
      258 GETTABLEKS                       R22 R10 K1 ["name"]
      260 SETTABLEKS                       R22 R21 K1 ["name"]
      262 SETTABLEKS                       R17 R21 K4 ["children"]
      264 GETTABLEKS                       R22 R10 K15 ["attributes"]
      266 SETTABLEKS                       R22 R21 K15 ["attributes"]
      268 GETTABLEKS                       R22 R10 K28 ["index"]
      270 SETTABLEKS                       R22 R21 K28 ["index"]
      272 NAMECALL                         R19 R19 K30 ["set"]
      274 CALL                             R19 2 0
      275 LENGTH                           R19 R0
      276 ADD                              R18 R13 R19
      277 GETTABLEKS                       R20 R7 K0 ["blockIndex"]
      279 LOADN                            R21 0
      280 LOADN                            R22 0
      281 NEWCLOSURE                       R23 P1
      282 CAPTURE                          REF R21
      283 CAPTURE                          VAL R18
      284 CAPTURE                          REF R22
      285 CAPTURE                          UPVAL U6
      286 CAPTURE                          VAL R20
      287 CAPTURE                          VAL R23
      288 MOVE                             R24 R23
      289 MOVE                             R25 R17
      290 CALL                             R24 1 1
      291 JUMPIFNOT                        R24 ; [+3]
      292 MOVE                             R19 R24
      293 CLOSEUPVALS                      R21
      294 JUMP                             ; [+15]
      295 GETUPVAL                         R25 6
      296 GETTABLEKS                       R25 R25 K31 ["createCollapsed"]
      298 MOVE                             R26 R20
      299 LOADN                            R28 1
      300 FASTCALL2                        MATH_MAX R28 R21 ; [+4]
      302 MOVE                             R29 R21
      303 GETIMPORT                        R27 K34 [math.max]
      305 CALL                             R27 2 1
      306 SUB                              R28 R18 R22
      307 CALL                             R25 3 1
      308 MOVE                             R19 R25
      309 CLOSEUPVALS                      R21
      310 MOVE                             R20 R4
      311 GETUPVAL                         R21 6
      312 GETTABLEKS                       R21 R21 K31 ["createCollapsed"]
      314 GETTABLEKS                       R22 R7 K0 ["blockIndex"]
      316 GETTABLEKS                       R23 R19 K35 ["anchor"]
      318 GETTABLEKS                       R23 R23 K36 ["segmentIndex"]
      320 GETTABLEKS                       R24 R19 K35 ["anchor"]
      322 GETTABLEKS                       R24 R24 K37 ["charOffset"]
      324 NEWTABLE                         R25 0 1
      326 MOVE                             R26 R11
      327 SETLIST                          R25 R26 1 [1]
      329 CALL                             R21 4 -1
      330 CALL                             R20 -1 0
      331 RETURN                           R0 0
      332 GETUPVAL                         R12 8
      333 MOVE                             R13 R9
      334 MOVE                             R14 R7
      335 CALL                             R12 2 3
      336 GETTABLEKS                       R16 R9 K1 ["name"]
      338 JUMPIFEQKS                       R16 K38 ["TABLE"] ; [+2]
      340 LOADB                            R15 0 +1
      341 LOADB                            R15 1
      342 JUMPIFNOT                        R15 ; [+252]
      343 JUMPIF                           R12 ; [+1]
      344 RETURN                           R0 0
      345 GETTABLEKS                       R15 R12 K4 ["children"]
      347 JUMPIF                           R15 ; [+2]
      348 NEWTABLE                         R15 0 0
      350 LOADN                            R17 0
      351 LOADN                            R18 0
      352 NEWCLOSURE                       R19 P0
      353 CAPTURE                          REF R18
      354 CAPTURE                          VAL R7
      355 CAPTURE                          REF R17
      356 CAPTURE                          VAL R19
      357 MOVE                             R20 R19
      358 MOVE                             R21 R15
      359 CALL                             R20 1 1
      360 OR                               R16 R20 R17
      361 CLOSEUPVALS                      R17
      362 NEWTABLE                         R17 0 2
      364 MOVE                             R18 R13
      365 MOVE                             R19 R14
      366 SETLIST                          R17 R18 2 [1]
      368 GETUPVAL                         R18 1
      369 MOVE                             R19 R15
      370 CALL                             R18 1 1
      371 LOADN                            R21 1
      372 MOVE                             R22 R16
      373 NAMECALL                         R19 R18 K5 ["sub"]
      375 CALL                             R19 3 1
      376 JUMPIFNOTEQKS                    R0 K6 ["`"] ; [+3]
      378 LOADK                            R20 K7 ["INLINE_CODE"]
      379 JUMP                             ; [+9]
      380 JUMPIFNOTEQKS                    R0 K8 ["*"] ; [+3]
      382 LOADK                            R20 K9 ["BOLD"]
      383 JUMP                             ; [+5]
      384 JUMPIFNOTEQKS                    R0 K10 ["_"] ; [+3]
      386 LOADK                            R20 K11 ["ITALIC"]
      387 JUMP                             ; [+1]
      388 LOADNIL                          R20
      389 JUMPIFNOT                        R20 ; [+137]
      390 LOADNIL                          R21
      391 LENGTH                           R24 R19
      392 LOADN                            R22 1
      393 LOADN                            R23 -1
      394 FORNPREP                         R22
      395 MOVE                             R27 R24
      396 MOVE                             R28 R24
      397 NAMECALL                         R25 R19 K5 ["sub"]
      399 CALL                             R25 3 1
      400 JUMPIFNOTEQ                      R25 R0 ; [+3]
      402 SUBK                             R21 R24 K12 [1]
      403 JUMP                             ; [+1]
      404 FORNLOOP                         R22
      405 JUMPIFEQKNIL                     R21 ; [+121]
      407 ADDK                             R24 R21 K13 [2]
      408 NAMECALL                         R22 R19 K5 ["sub"]
      410 CALL                             R22 2 1
      411 LENGTH                           R23 R22
      412 LOADN                            R24 0
      413 JUMPIFNOTLT                      R24 R23 ; [+113]
      415 GETUPVAL                         R23 2
      416 MOVE                             R24 R15
      417 MOVE                             R25 R21
      418 MOVE                             R26 R16
      419 CALL                             R23 3 1
      420 GETUPVAL                         R24 3
      421 MOVE                             R25 R23
      422 MOVE                             R26 R21
      423 CALL                             R24 2 2
      424 DUPTABLE                         R26 K16 [{["name"] = "STYLED_TEXT", ["children"], ["attributes"]}]
      425 NEWTABLE                         R27 0 1
      427 DUPTABLE                         R28 K19 [{["name"] = "TEXT", ["children"], ["text"]}]
      428 NEWTABLE                         R29 0 0
      430 SETTABLEKS                       R29 R28 K4 ["children"]
      432 SETTABLEKS                       R22 R28 K18 ["text"]
      434 SETLIST                          R27 R28 1 [1]
      436 SETTABLEKS                       R27 R26 K4 ["children"]
      438 DUPTABLE                         R27 K21 [{"style"}]
      439 SETTABLEKS                       R20 R27 K20 ["style"]
      441 SETTABLEKS                       R27 R26 K15 ["attributes"]
      443 NEWTABLE                         R27 0 0
      445 MOVE                             R28 R24
      446 LOADNIL                          R29
      447 LOADNIL                          R30
      448 FORGPREP                         R28
      449 FASTCALL2                        TABLE_INSERT R27 R32 ; [+5]
      451 MOVE                             R34 R27
      452 MOVE                             R35 R32
      453 GETIMPORT                        R33 K24 [table.insert]
      455 CALL                             R33 2 0
      456 FORGLOOP                         R28 2 ; [-8]
      458 FASTCALL2                        TABLE_INSERT R27 R26 ; [+5]
      460 MOVE                             R29 R27
      461 MOVE                             R30 R26
      462 GETIMPORT                        R28 K24 [table.insert]
      464 CALL                             R28 2 0
      465 MOVE                             R28 R25
      466 LOADNIL                          R29
      467 LOADNIL                          R30
      468 FORGPREP                         R28
      469 FASTCALL2                        TABLE_INSERT R27 R32 ; [+5]
      471 MOVE                             R34 R27
      472 MOVE                             R35 R32
      473 GETIMPORT                        R33 K24 [table.insert]
      475 CALL                             R33 2 0
      476 FORGLOOP                         R28 2 ; [-8]
      478 LENGTH                           R28 R25
      479 JUMPIFNOTEQKN                    R28 K25 [0] ; [+12]
      481 DUPTABLE                         R30 K27 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      482 NEWTABLE                         R31 0 0
      484 SETTABLEKS                       R31 R30 K4 ["children"]
      486 FASTCALL2                        TABLE_INSERT R27 R30 ; [+4]
      488 MOVE                             R29 R27
      489 GETIMPORT                        R28 K24 [table.insert]
      491 CALL                             R28 2 0
      492 GETUPVAL                         R28 9
      493 MOVE                             R29 R12
      494 MOVE                             R30 R13
      495 MOVE                             R31 R14
      496 GETUPVAL                         R32 4
      497 MOVE                             R33 R27
      498 CALL                             R32 1 1
      499 GETTABLEKS                       R33 R7 K0 ["blockIndex"]
      501 MOVE                             R34 R2
      502 MOVE                             R35 R3
      503 CALL                             R28 7 0
      504 GETUPVAL                         R29 5
      505 MOVE                             R30 R24
      506 CALL                             R29 1 1
      507 GETUPVAL                         R30 5
      508 NEWTABLE                         R31 0 1
      510 MOVE                             R32 R26
      511 SETLIST                          R31 R32 1 [1]
      513 CALL                             R30 1 1
      514 ADD                              R28 R29 R30
      515 MOVE                             R29 R4
      516 GETUPVAL                         R30 6
      517 GETTABLEKS                       R30 R30 K31 ["createCollapsed"]
      519 GETTABLEKS                       R31 R7 K0 ["blockIndex"]
      521 ADDK                             R32 R28 K12 [1]
      522 LOADN                            R33 0
      523 MOVE                             R34 R17
      524 CALL                             R30 4 -1
      525 CALL                             R29 -1 0
      526 RETURN                           R0 0
      527 GETUPVAL                         R21 7
      528 MOVE                             R22 R15
      529 MOVE                             R23 R16
      530 MOVE                             R24 R0
      531 CALL                             R21 3 1
      532 GETUPVAL                         R22 9
      533 MOVE                             R23 R12
      534 MOVE                             R24 R13
      535 MOVE                             R25 R14
      536 MOVE                             R26 R21
      537 GETTABLEKS                       R27 R7 K0 ["blockIndex"]
      539 MOVE                             R28 R2
      540 MOVE                             R29 R3
      541 CALL                             R22 7 0
      542 LENGTH                           R23 R0
      543 ADD                              R22 R16 R23
      544 GETTABLEKS                       R24 R7 K0 ["blockIndex"]
      546 LOADN                            R25 0
      547 LOADN                            R26 0
      548 NEWCLOSURE                       R27 P1
      549 CAPTURE                          REF R25
      550 CAPTURE                          VAL R22
      551 CAPTURE                          REF R26
      552 CAPTURE                          UPVAL U6
      553 CAPTURE                          VAL R24
      554 CAPTURE                          VAL R27
      555 MOVE                             R28 R27
      556 MOVE                             R29 R21
      557 CALL                             R28 1 1
      558 JUMPIFNOT                        R28 ; [+3]
      559 MOVE                             R23 R28
      560 CLOSEUPVALS                      R25
      561 JUMP                             ; [+15]
      562 GETUPVAL                         R29 6
      563 GETTABLEKS                       R29 R29 K31 ["createCollapsed"]
      565 MOVE                             R30 R24
      566 LOADN                            R32 1
      567 FASTCALL2                        MATH_MAX R32 R25 ; [+4]
      569 MOVE                             R33 R25
      570 GETIMPORT                        R31 K34 [math.max]
      572 CALL                             R31 2 1
      573 SUB                              R32 R22 R26
      574 CALL                             R29 3 1
      575 MOVE                             R23 R29
      576 CLOSEUPVALS                      R25
      577 MOVE                             R24 R4
      578 GETUPVAL                         R25 6
      579 GETTABLEKS                       R25 R25 K31 ["createCollapsed"]
      581 GETTABLEKS                       R26 R7 K0 ["blockIndex"]
      583 GETTABLEKS                       R27 R23 K35 ["anchor"]
      585 GETTABLEKS                       R27 R27 K36 ["segmentIndex"]
      587 GETTABLEKS                       R28 R23 K35 ["anchor"]
      589 GETTABLEKS                       R28 R28 K37 ["charOffset"]
      591 MOVE                             R29 R17
      592 CALL                             R25 4 -1
      593 CALL                             R24 -1 0
      594 RETURN                           R0 0
      595 GETTABLEKS                       R16 R9 K1 ["name"]
      597 JUMPIFEQKS                       R16 K39 ["CODE_BLOCK"] ; [+2]
      599 LOADB                            R15 0 +1
      600 LOADB                            R15 1
      601 JUMPIFNOT                        R15 ; [+40]
      602 GETTABLEKS                       R16 R9 K18 ["text"]
      604 ORK                              R15 R16 K26 [""]
      605 GETUPVAL                         R16 10
      606 MOVE                             R17 R7
      607 MOVE                             R18 R15
      608 CALL                             R16 2 1
      609 LOADN                            R23 1
      610 MOVE                             R24 R16
      611 NAMECALL                         R21 R15 K5 ["sub"]
      613 CALL                             R21 3 1
      614 MOVE                             R18 R21
      615 MOVE                             R19 R0
      616 ADDK                             R22 R16 K12 [1]
      617 NAMECALL                         R20 R15 K5 ["sub"]
      619 CALL                             R20 2 1
      620 CONCAT                           R17 R18 R20
      621 MOVE                             R18 R3
      622 GETTABLEKS                       R20 R7 K0 ["blockIndex"]
      624 GETTABLE                         R19 R2 R20
      625 GETTABLEKS                       R19 R19 K18 ["text"]
      627 CALL                             R18 1 1
      628 MOVE                             R20 R17
      629 NAMECALL                         R18 R18 K30 ["set"]
      631 CALL                             R18 2 0
      632 MOVE                             R18 R4
      633 GETUPVAL                         R19 11
      634 GETTABLEKS                       R20 R7 K0 ["blockIndex"]
      636 MOVE                             R21 R17
      637 LENGTH                           R23 R0
      638 ADD                              R22 R16 R23
      639 CALL                             R19 3 -1
      640 CALL                             R18 -1 0
      641 RETURN                           R0 0
      642 GETTABLEKS                       R16 R9 K1 ["name"]
      644 LOADB                            R15 1
      645 JUMPIFEQKS                       R16 K40 ["PARAGRAPH"] ; [+11]
      647 LOADB                            R15 1
      648 JUMPIFEQKS                       R16 K41 ["HEADING"] ; [+8]
      650 LOADB                            R15 1
      651 JUMPIFEQKS                       R16 K42 ["QUOTE"] ; [+5]
      653 JUMPIFEQKS                       R16 K43 ["LIST_ITEM"] ; [+2]
      655 LOADB                            R15 0 +1
      656 LOADB                            R15 1
      657 JUMPIF                           R15 ; [+36]
      658 NEWTABLE                         R15 0 1
      660 DUPTABLE                         R16 K19 [{["name"] = "TEXT", ["children"], ["text"]}]
      661 NEWTABLE                         R17 0 0
      663 SETTABLEKS                       R17 R16 K4 ["children"]
      665 SETTABLEKS                       R0 R16 K18 ["text"]
      667 SETLIST                          R15 R16 1 [1]
      669 DUPTABLE                         R16 K44 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      670 SETTABLEKS                       R15 R16 K4 ["children"]
      672 MOVE                             R17 R5
      673 CALL                             R17 0 1
      674 SETTABLEKS                       R17 R16 K28 ["index"]
      676 MOVE                             R17 R3
      677 MOVE                             R18 R2
      678 CALL                             R17 1 1
      679 MOVE                             R19 R16
      680 GETTABLEKS                       R20 R7 K0 ["blockIndex"]
      682 NAMECALL                         R17 R17 K23 ["insert"]
      684 CALL                             R17 3 0
      685 MOVE                             R17 R4
      686 GETUPVAL                         R18 12
      687 GETTABLEKS                       R19 R7 K0 ["blockIndex"]
      689 MOVE                             R20 R15
      690 LENGTH                           R21 R0
      691 CALL                             R18 3 -1
      692 CALL                             R17 -1 0
      693 RETURN                           R0 0
      694 GETTABLEKS                       R16 R9 K4 ["children"]
      696 JUMPIF                           R16 ; [+2]
      697 NEWTABLE                         R16 0 0
      699 LOADN                            R17 0
      700 LOADN                            R18 0
      701 NEWCLOSURE                       R19 P0
      702 CAPTURE                          REF R18
      703 CAPTURE                          VAL R7
      704 CAPTURE                          REF R17
      705 CAPTURE                          VAL R19
      706 MOVE                             R20 R19
      707 MOVE                             R21 R16
      708 CALL                             R20 1 1
      709 OR                               R15 R20 R17
      710 CLOSEUPVALS                      R17
      711 GETUPVAL                         R16 1
      712 GETTABLEKS                       R17 R9 K4 ["children"]
      714 JUMPIF                           R17 ; [+2]
      715 NEWTABLE                         R17 0 0
      717 CALL                             R16 1 1
      718 LOADN                            R19 1
      719 MOVE                             R20 R15
      720 NAMECALL                         R17 R16 K5 ["sub"]
      722 CALL                             R17 3 1
      723 JUMPIFNOTEQKS                    R0 K45 [" "] ; [+61]
      725 GETTABLEKS                       R18 R9 K1 ["name"]
      727 JUMPIFNOTEQKS                    R18 K40 ["PARAGRAPH"] ; [+57]
      729 LOADK                            R20 K46 ["^(#+)$"]
      730 NAMECALL                         R18 R17 K47 ["match"]
      732 CALL                             R18 2 1
      733 JUMPIFNOT                        R18 ; [+51]
      734 LENGTH                           R19 R18
      735 LOADN                            R20 6
      736 JUMPIFNOTLE                      R19 R20 ; [+48]
      738 LENGTH                           R19 R18
      739 ADDK                             R22 R15 K12 [1]
      740 NAMECALL                         R20 R16 K5 ["sub"]
      742 CALL                             R20 2 1
      743 MOVE                             R21 R3
      744 GETTABLEKS                       R23 R7 K0 ["blockIndex"]
      746 GETTABLE                         R22 R2 R23
      747 CALL                             R21 1 1
      748 DUPTABLE                         R23 K48 [{["name"] = "HEADING", ["children"], ["attributes"], ["index"]}]
      749 NEWTABLE                         R24 0 1
      751 DUPTABLE                         R25 K19 [{["name"] = "TEXT", ["children"], ["text"]}]
      752 NEWTABLE                         R26 0 0
      754 SETTABLEKS                       R26 R25 K4 ["children"]
      756 SETTABLEKS                       R20 R25 K18 ["text"]
      758 SETLIST                          R24 R25 1 [1]
      760 SETTABLEKS                       R24 R23 K4 ["children"]
      762 DUPTABLE                         R24 K50 [{"depth"}]
      763 SETTABLEKS                       R19 R24 K49 ["depth"]
      765 SETTABLEKS                       R24 R23 K15 ["attributes"]
      767 GETTABLEKS                       R24 R9 K28 ["index"]
      769 SETTABLEKS                       R24 R23 K28 ["index"]
      771 NAMECALL                         R21 R21 K30 ["set"]
      773 CALL                             R21 2 0
      774 MOVE                             R21 R4
      775 GETUPVAL                         R22 6
      776 GETTABLEKS                       R22 R22 K31 ["createCollapsed"]
      778 GETTABLEKS                       R23 R7 K0 ["blockIndex"]
      780 LOADN                            R24 1
      781 LOADN                            R25 0
      782 CALL                             R22 3 -1
      783 CALL                             R21 -1 0
      784 RETURN                           R0 0
      785 JUMPIFNOTEQKS                    R0 K45 [" "] ; [+75]
      787 GETTABLEKS                       R18 R9 K1 ["name"]
      789 JUMPIFNOTEQKS                    R18 K40 ["PARAGRAPH"] ; [+71]
      791 JUMPIFEQKS                       R17 K51 ["-"] ; [+3]
      793 JUMPIFNOTEQKS                    R17 K8 ["*"] ; [+67]
      795 ADDK                             R20 R15 K12 [1]
      796 NAMECALL                         R18 R16 K5 ["sub"]
      798 CALL                             R18 2 1
      799 DUPTABLE                         R19 K52 [{["name"] = "LIST_ITEM", ["children"], ["attributes"], ["index"]}]
      800 NEWTABLE                         R20 0 1
      802 DUPTABLE                         R21 K19 [{["name"] = "TEXT", ["children"], ["text"]}]
      803 NEWTABLE                         R22 0 0
      805 SETTABLEKS                       R22 R21 K4 ["children"]
      807 SETTABLEKS                       R18 R21 K18 ["text"]
      809 SETLIST                          R20 R21 1 [1]
      811 SETTABLEKS                       R20 R19 K4 ["children"]
      813 DUPTABLE                         R20 K54 [{"prefix"}]
      814 SETTABLEKS                       R17 R20 K53 ["prefix"]
      816 SETTABLEKS                       R20 R19 K15 ["attributes"]
      818 MOVE                             R20 R5
      819 CALL                             R20 0 1
      820 SETTABLEKS                       R20 R19 K28 ["index"]
      822 MOVE                             R20 R3
      823 GETTABLEKS                       R22 R7 K0 ["blockIndex"]
      825 GETTABLE                         R21 R2 R22
      826 CALL                             R20 1 1
      827 DUPTABLE                         R22 K55 [{["name"] = "LIST", ["children"], ["attributes"], ["index"]}]
      828 NEWTABLE                         R23 0 1
      830 MOVE                             R24 R19
      831 SETLIST                          R23 R24 1 [1]
      833 SETTABLEKS                       R23 R22 K4 ["children"]
      835 DUPTABLE                         R23 K58 [{["ordered"] = False}]
      836 SETTABLEKS                       R23 R22 K15 ["attributes"]
      838 GETTABLEKS                       R23 R9 K28 ["index"]
      840 SETTABLEKS                       R23 R22 K28 ["index"]
      842 NAMECALL                         R20 R20 K30 ["set"]
      844 CALL                             R20 2 0
      845 MOVE                             R20 R4
      846 GETUPVAL                         R21 6
      847 GETTABLEKS                       R21 R21 K31 ["createCollapsed"]
      849 GETTABLEKS                       R22 R7 K0 ["blockIndex"]
      851 LOADN                            R23 1
      852 LOADN                            R24 0
      853 NEWTABLE                         R25 0 1
      855 LOADN                            R26 1
      856 SETLIST                          R25 R26 1 [1]
      858 CALL                             R21 4 -1
      859 CALL                             R20 -1 0
      860 RETURN                           R0 0
      861 JUMPIFNOTEQKS                    R0 K45 [" "] ; [+84]
      863 GETTABLEKS                       R18 R9 K1 ["name"]
      865 JUMPIFNOTEQKS                    R18 K40 ["PARAGRAPH"] ; [+80]
      867 LOADK                            R20 K59 ["^%[([xX ]?)%]$"]
      868 NAMECALL                         R18 R17 K47 ["match"]
      870 CALL                             R18 2 1
      871 JUMPIFEQKNIL                     R18 ; [+74]
      873 NAMECALL                         R20 R18 K60 ["lower"]
      875 CALL                             R20 1 1
      876 JUMPIFEQKS                       R20 K61 ["x"] ; [+2]
      878 LOADB                            R19 0 +1
      879 LOADB                            R19 1
      880 ADDK                             R22 R15 K12 [1]
      881 NAMECALL                         R20 R16 K5 ["sub"]
      883 CALL                             R20 2 1
      884 DUPTABLE                         R21 K52 [{["name"] = "LIST_ITEM", ["children"], ["attributes"], ["index"]}]
      885 NEWTABLE                         R22 0 1
      887 DUPTABLE                         R23 K19 [{["name"] = "TEXT", ["children"], ["text"]}]
      888 NEWTABLE                         R24 0 0
      890 SETTABLEKS                       R24 R23 K4 ["children"]
      892 SETTABLEKS                       R20 R23 K18 ["text"]
      894 SETLIST                          R22 R23 1 [1]
      896 SETTABLEKS                       R22 R21 K4 ["children"]
      898 DUPTABLE                         R22 K65 [{["prefix"] = "-", ["checkbox"] = True, ["checked"]}]
      899 SETTABLEKS                       R19 R22 K64 ["checked"]
      901 SETTABLEKS                       R22 R21 K15 ["attributes"]
      903 MOVE                             R22 R5
      904 CALL                             R22 0 1
      905 SETTABLEKS                       R22 R21 K28 ["index"]
      907 MOVE                             R22 R3
      908 GETTABLEKS                       R24 R7 K0 ["blockIndex"]
      910 GETTABLE                         R23 R2 R24
      911 CALL                             R22 1 1
      912 DUPTABLE                         R24 K55 [{["name"] = "LIST", ["children"], ["attributes"], ["index"]}]
      913 NEWTABLE                         R25 0 1
      915 MOVE                             R26 R21
      916 SETLIST                          R25 R26 1 [1]
      918 SETTABLEKS                       R25 R24 K4 ["children"]
      920 DUPTABLE                         R25 K58 [{["ordered"] = False}]
      921 SETTABLEKS                       R25 R24 K15 ["attributes"]
      923 GETTABLEKS                       R25 R9 K28 ["index"]
      925 SETTABLEKS                       R25 R24 K28 ["index"]
      927 NAMECALL                         R22 R22 K30 ["set"]
      929 CALL                             R22 2 0
      930 MOVE                             R22 R4
      931 GETUPVAL                         R23 6
      932 GETTABLEKS                       R23 R23 K31 ["createCollapsed"]
      934 GETTABLEKS                       R24 R7 K0 ["blockIndex"]
      936 LOADN                            R25 1
      937 LOADN                            R26 0
      938 NEWTABLE                         R27 0 1
      940 LOADN                            R28 1
      941 SETLIST                          R27 R28 1 [1]
      943 CALL                             R23 4 -1
      944 CALL                             R22 -1 0
      945 RETURN                           R0 0
      946 JUMPIFNOTEQKS                    R0 K6 ["`"] ; [+3]
      948 LOADK                            R18 K7 ["INLINE_CODE"]
      949 JUMP                             ; [+9]
      950 JUMPIFNOTEQKS                    R0 K8 ["*"] ; [+3]
      952 LOADK                            R18 K9 ["BOLD"]
      953 JUMP                             ; [+5]
      954 JUMPIFNOTEQKS                    R0 K10 ["_"] ; [+3]
      956 LOADK                            R18 K11 ["ITALIC"]
      957 JUMP                             ; [+1]
      958 LOADNIL                          R18
      959 JUMPIFNOT                        R18 ; [+141]
      960 LOADNIL                          R19
      961 LENGTH                           R22 R17
      962 LOADN                            R20 1
      963 LOADN                            R21 -1
      964 FORNPREP                         R20
      965 MOVE                             R25 R22
      966 MOVE                             R26 R22
      967 NAMECALL                         R23 R17 K5 ["sub"]
      969 CALL                             R23 3 1
      970 JUMPIFNOTEQ                      R23 R0 ; [+3]
      972 SUBK                             R19 R22 K12 [1]
      973 JUMP                             ; [+1]
      974 FORNLOOP                         R20
      975 JUMPIFEQKNIL                     R19 ; [+125]
      977 ADDK                             R22 R19 K13 [2]
      978 NAMECALL                         R20 R17 K5 ["sub"]
      980 CALL                             R20 2 1
      981 LENGTH                           R21 R20
      982 LOADN                            R22 0
      983 JUMPIFNOTLT                      R22 R21 ; [+117]
      985 GETUPVAL                         R21 2
      986 GETTABLEKS                       R22 R9 K4 ["children"]
      988 JUMPIF                           R22 ; [+2]
      989 NEWTABLE                         R22 0 0
      991 MOVE                             R23 R19
      992 MOVE                             R24 R15
      993 CALL                             R21 3 1
      994 GETUPVAL                         R22 3
      995 MOVE                             R23 R21
      996 MOVE                             R24 R19
      997 CALL                             R22 2 2
      998 DUPTABLE                         R24 K16 [{["name"] = "STYLED_TEXT", ["children"], ["attributes"]}]
      999 NEWTABLE                         R25 0 1
     1001 DUPTABLE                         R26 K19 [{["name"] = "TEXT", ["children"], ["text"]}]
     1002 NEWTABLE                         R27 0 0
     1004 SETTABLEKS                       R27 R26 K4 ["children"]
     1006 SETTABLEKS                       R20 R26 K18 ["text"]
     1008 SETLIST                          R25 R26 1 [1]
     1010 SETTABLEKS                       R25 R24 K4 ["children"]
     1012 DUPTABLE                         R25 K21 [{"style"}]
     1013 SETTABLEKS                       R18 R25 K20 ["style"]
     1015 SETTABLEKS                       R25 R24 K15 ["attributes"]
     1017 NEWTABLE                         R25 0 0
     1019 MOVE                             R26 R22
     1020 LOADNIL                          R27
     1021 LOADNIL                          R28
     1022 FORGPREP                         R26
     1023 FASTCALL2                        TABLE_INSERT R25 R30 ; [+5]
     1025 MOVE                             R32 R25
     1026 MOVE                             R33 R30
     1027 GETIMPORT                        R31 K24 [table.insert]
     1029 CALL                             R31 2 0
     1030 FORGLOOP                         R26 2 ; [-8]
     1032 FASTCALL2                        TABLE_INSERT R25 R24 ; [+5]
     1034 MOVE                             R27 R25
     1035 MOVE                             R28 R24
     1036 GETIMPORT                        R26 K24 [table.insert]
     1038 CALL                             R26 2 0
     1039 MOVE                             R26 R23
     1040 LOADNIL                          R27
     1041 LOADNIL                          R28
     1042 FORGPREP                         R26
     1043 FASTCALL2                        TABLE_INSERT R25 R30 ; [+5]
     1045 MOVE                             R32 R25
     1046 MOVE                             R33 R30
     1047 GETIMPORT                        R31 K24 [table.insert]
     1049 CALL                             R31 2 0
     1050 FORGLOOP                         R26 2 ; [-8]
     1052 LENGTH                           R26 R23
     1053 JUMPIFNOTEQKN                    R26 K25 [0] ; [+12]
     1055 DUPTABLE                         R28 K27 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
     1056 NEWTABLE                         R29 0 0
     1058 SETTABLEKS                       R29 R28 K4 ["children"]
     1060 FASTCALL2                        TABLE_INSERT R25 R28 ; [+4]
     1062 MOVE                             R27 R25
     1063 GETIMPORT                        R26 K24 [table.insert]
     1065 CALL                             R26 2 0
     1066 MOVE                             R26 R3
     1067 GETTABLEKS                       R28 R7 K0 ["blockIndex"]
     1069 GETTABLE                         R27 R2 R28
     1070 GETTABLEKS                       R27 R27 K4 ["children"]
     1072 CALL                             R26 1 1
     1073 GETUPVAL                         R28 4
     1074 MOVE                             R29 R25
     1075 CALL                             R28 1 1
     1076 NAMECALL                         R26 R26 K30 ["set"]
     1078 CALL                             R26 2 0
     1079 GETUPVAL                         R27 5
     1080 MOVE                             R28 R22
     1081 CALL                             R27 1 1
     1082 GETUPVAL                         R28 5
     1083 NEWTABLE                         R29 0 1
     1085 MOVE                             R30 R24
     1086 SETLIST                          R29 R30 1 [1]
     1088 CALL                             R28 1 1
     1089 ADD                              R26 R27 R28
     1090 MOVE                             R27 R4
     1091 GETUPVAL                         R28 6
     1092 GETTABLEKS                       R28 R28 K31 ["createCollapsed"]
     1094 GETTABLEKS                       R29 R7 K0 ["blockIndex"]
     1096 ADDK                             R30 R26 K12 [1]
     1097 LOADN                            R31 0
     1098 CALL                             R28 3 -1
     1099 CALL                             R27 -1 0
     1100 RETURN                           R0 0
     1101 GETUPVAL                         R19 7
     1102 GETTABLEKS                       R20 R9 K4 ["children"]
     1104 JUMPIF                           R20 ; [+2]
     1105 NEWTABLE                         R20 0 0
     1107 MOVE                             R21 R15
     1108 MOVE                             R22 R0
     1109 CALL                             R19 3 1
     1110 MOVE                             R20 R3
     1111 GETTABLEKS                       R22 R7 K0 ["blockIndex"]
     1113 GETTABLE                         R21 R2 R22
     1114 GETTABLEKS                       R21 R21 K4 ["children"]
     1116 CALL                             R20 1 1
     1117 MOVE                             R22 R19
     1118 NAMECALL                         R20 R20 K30 ["set"]
     1120 CALL                             R20 2 0
     1121 LENGTH                           R21 R0
     1122 ADD                              R20 R15 R21
     1123 MOVE                             R21 R4
     1124 GETUPVAL                         R22 12
     1125 GETTABLEKS                       R23 R7 K0 ["blockIndex"]
     1127 MOVE                             R24 R19
     1128 MOVE                             R25 R20
     1129 CALL                             R22 3 -1
     1130 CALL                             R21 -1 0
     1131 RETURN                           R0 0

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
      173 JUMPIFNOTEQKS                    R11 K14 ["LIST"] ; [+364]
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
      296 JUMPIFNOTLT                      R13 R10 ; [+102]
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
      314 LOADN                            R15 -1
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
      328 DUPTABLE                         R14 K24 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      329 GETUPVAL                         R15 3
      330 GETTABLEKS                       R16 R9 K9 ["children"]
      332 JUMPIF                           R16 ; [+2]
      333 NEWTABLE                         R16 0 0
      335 CALL                             R15 1 1
      336 SETTABLEKS                       R15 R14 K9 ["children"]
      338 MOVE                             R15 R4
      339 CALL                             R15 0 1
      340 SETTABLEKS                       R15 R14 K16 ["index"]
      342 MOVE                             R15 R2
      343 MOVE                             R16 R1
      344 CALL                             R15 1 1
      345 MOVE                             R17 R14
      346 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      348 ADDK                             R18 R19 K10 [1]
      349 NAMECALL                         R15 R15 K20 ["insert"]
      351 CALL                             R15 3 0
      352 LENGTH                           R15 R13
      353 LOADN                            R16 0
      354 JUMPIFNOTLT                      R16 R15 ; [+32]
      356 DUPTABLE                         R15 K25 [{["name"] = "LIST", ["children"], ["attributes"], ["index"]}]
      357 SETTABLEKS                       R13 R15 K9 ["children"]
      359 DUPTABLE                         R16 K27 [{"ordered"}]
      360 GETTABLEKS                       R18 R8 K15 ["attributes"]
      362 JUMPIFNOT                        R18 ; [+5]
      363 GETTABLEKS                       R17 R8 K15 ["attributes"]
      365 GETTABLEKS                       R17 R17 K26 ["ordered"]
      367 JUMPIF                           R17 ; [+1]
      368 LOADB                            R17 0
      369 SETTABLEKS                       R17 R16 K26 ["ordered"]
      371 SETTABLEKS                       R16 R15 K15 ["attributes"]
      373 MOVE                             R16 R4
      374 CALL                             R16 0 1
      375 SETTABLEKS                       R16 R15 K16 ["index"]
      377 MOVE                             R16 R2
      378 MOVE                             R17 R1
      379 CALL                             R16 1 1
      380 MOVE                             R18 R15
      381 GETTABLEKS                       R20 R6 K2 ["blockIndex"]
      383 ADDK                             R19 R20 K28 [2]
      384 NAMECALL                         R16 R16 K20 ["insert"]
      386 CALL                             R16 3 0
      387 MOVE                             R15 R3
      388 GETUPVAL                         R16 0
      389 GETTABLEKS                       R16 R16 K1 ["createCollapsed"]
      391 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      393 ADDK                             R17 R18 K10 [1]
      394 LOADN                            R18 1
      395 LOADN                            R19 0
      396 CALL                             R16 3 -1
      397 CALL                             R15 -1 0
      398 RETURN                           R0 0
      399 GETTABLEKS                       R13 R9 K15 ["attributes"]
      401 JUMPIFNOT                        R13 ; [+55]
      402 GETTABLEKS                       R13 R9 K15 ["attributes"]
      404 GETTABLEKS                       R13 R13 K29 ["checkbox"]
      406 JUMPIFNOT                        R13 ; [+50]
      407 MOVE                             R13 R2
      408 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      410 GETTABLE                         R15 R1 R16
      411 GETTABLEKS                       R15 R15 K9 ["children"]
      413 GETTABLE                         R14 R15 R10
      414 CALL                             R13 1 1
      415 DUPTABLE                         R15 K17 [{"name", "children", "attributes", "index"}]
      416 GETTABLEKS                       R16 R9 K7 ["name"]
      418 SETTABLEKS                       R16 R15 K7 ["name"]
      420 GETTABLEKS                       R16 R9 K9 ["children"]
      422 SETTABLEKS                       R16 R15 K9 ["children"]
      424 DUPTABLE                         R16 K31 [{"prefix"}]
      425 GETTABLEKS                       R18 R9 K15 ["attributes"]
      427 GETTABLEKS                       R18 R18 K30 ["prefix"]
      429 ORK                              R17 R18 K32 ["-"]
      430 SETTABLEKS                       R17 R16 K30 ["prefix"]
      432 SETTABLEKS                       R16 R15 K15 ["attributes"]
      434 GETTABLEKS                       R16 R9 K16 ["index"]
      436 SETTABLEKS                       R16 R15 K16 ["index"]
      438 NAMECALL                         R13 R13 K18 ["set"]
      440 CALL                             R13 2 0
      441 MOVE                             R13 R3
      442 GETUPVAL                         R14 0
      443 GETTABLEKS                       R14 R14 K1 ["createCollapsed"]
      445 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      447 LOADN                            R16 1
      448 LOADN                            R17 0
      449 NEWTABLE                         R18 0 1
      451 MOVE                             R19 R10
      452 SETLIST                          R18 R19 1 [1]
      454 CALL                             R14 4 -1
      455 CALL                             R13 -1 0
      456 RETURN                           R0 0
      457 LENGTH                           R13 R11
      458 JUMPIFNOTEQKN                    R13 K10 [1] ; [+34]
      460 MOVE                             R13 R2
      461 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      463 GETTABLE                         R14 R1 R15
      464 CALL                             R13 1 1
      465 DUPTABLE                         R15 K24 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      466 GETUPVAL                         R16 3
      467 GETTABLEKS                       R17 R9 K9 ["children"]
      469 JUMPIF                           R17 ; [+2]
      470 NEWTABLE                         R17 0 0
      472 CALL                             R16 1 1
      473 SETTABLEKS                       R16 R15 K9 ["children"]
      475 GETTABLEKS                       R16 R8 K16 ["index"]
      477 SETTABLEKS                       R16 R15 K16 ["index"]
      479 NAMECALL                         R13 R13 K18 ["set"]
      481 CALL                             R13 2 0
      482 MOVE                             R13 R3
      483 GETUPVAL                         R14 0
      484 GETTABLEKS                       R14 R14 K1 ["createCollapsed"]
      486 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      488 LOADN                            R16 1
      489 LOADN                            R17 0
      490 CALL                             R14 3 -1
      491 CALL                             R13 -1 0
      492 RETURN                           R0 0
      493 MOVE                             R13 R2
      494 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      496 GETTABLE                         R14 R1 R15
      497 GETTABLEKS                       R14 R14 K9 ["children"]
      499 CALL                             R13 1 1
      500 LOADN                            R15 1
      501 NAMECALL                         R13 R13 K22 ["remove"]
      503 CALL                             R13 2 0
      504 DUPTABLE                         R13 K24 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      505 GETUPVAL                         R14 3
      506 GETTABLEKS                       R15 R9 K9 ["children"]
      508 JUMPIF                           R15 ; [+2]
      509 NEWTABLE                         R15 0 0
      511 CALL                             R14 1 1
      512 SETTABLEKS                       R14 R13 K9 ["children"]
      514 MOVE                             R14 R4
      515 CALL                             R14 0 1
      516 SETTABLEKS                       R14 R13 K16 ["index"]
      518 MOVE                             R14 R2
      519 MOVE                             R15 R1
      520 CALL                             R14 1 1
      521 MOVE                             R16 R13
      522 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      524 NAMECALL                         R14 R14 K20 ["insert"]
      526 CALL                             R14 3 0
      527 MOVE                             R14 R3
      528 GETUPVAL                         R15 0
      529 GETTABLEKS                       R15 R15 K1 ["createCollapsed"]
      531 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      533 LOADN                            R17 1
      534 LOADN                            R18 0
      535 CALL                             R15 3 -1
      536 CALL                             R14 -1 0
      537 RETURN                           R0 0
      538 GETTABLEKS                       R12 R8 K7 ["name"]
      540 JUMPIFEQKS                       R12 K33 ["CODE_BLOCK"] ; [+2]
      542 LOADB                            R11 0 +1
      543 LOADB                            R11 1
      544 JUMPIFNOT                        R11 ; [+75]
      545 GETTABLEKS                       R12 R8 K35 ["text"]
      547 ORK                              R11 R12 K34 [""]
      548 GETUPVAL                         R12 6
      549 MOVE                             R13 R6
      550 MOVE                             R14 R11
      551 CALL                             R12 2 1
      552 LOADN                            R13 0
      553 JUMPIFNOTLT                      R13 R12 ; [+32]
      555 LOADN                            R18 1
      556 SUBK                             R19 R12 K10 [1]
      557 NAMECALL                         R16 R11 K36 ["sub"]
      559 CALL                             R16 3 1
      560 MOVE                             R14 R16
      561 ADDK                             R17 R12 K10 [1]
      562 NAMECALL                         R15 R11 K36 ["sub"]
      564 CALL                             R15 2 1
      565 CONCAT                           R13 R14 R15
      566 MOVE                             R14 R2
      567 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      569 GETTABLE                         R15 R1 R16
      570 GETTABLEKS                       R15 R15 K35 ["text"]
      572 CALL                             R14 1 1
      573 MOVE                             R16 R13
      574 NAMECALL                         R14 R14 K18 ["set"]
      576 CALL                             R14 2 0
      577 MOVE                             R14 R3
      578 GETUPVAL                         R15 7
      579 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      581 MOVE                             R17 R13
      582 SUBK                             R18 R12 K10 [1]
      583 CALL                             R15 3 -1
      584 CALL                             R14 -1 0
      585 RETURN                           R0 0
      586 LENGTH                           R13 R11
      587 JUMPIFNOTEQKN                    R13 K37 [0] ; [+31]
      589 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      591 LOADN                            R14 1
      592 JUMPIFNOTLT                      R14 R13 ; [+26]
      594 MOVE                             R13 R2
      595 MOVE                             R14 R1
      596 CALL                             R13 1 1
      597 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      599 NAMECALL                         R13 R13 K22 ["remove"]
      601 CALL                             R13 2 0
      602 MOVE                             R13 R3
      603 GETUPVAL                         R14 0
      604 GETTABLEKS                       R14 R14 K1 ["createCollapsed"]
      606 LOADN                            R16 1
      607 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      609 SUBK                             R17 R18 K10 [1]
      610 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      612 GETIMPORT                        R15 K13 [math.max]
      614 CALL                             R15 2 1
      615 LOADN                            R16 1
      616 LOADN                            R17 0
      617 CALL                             R14 3 -1
      618 CALL                             R13 -1 0
      619 RETURN                           R0 0
      620 GETTABLEKS                       R12 R8 K7 ["name"]
      622 LOADB                            R11 1
      623 JUMPIFEQKS                       R12 K23 ["PARAGRAPH"] ; [+11]
      625 LOADB                            R11 1
      626 JUMPIFEQKS                       R12 K38 ["HEADING"] ; [+8]
      628 LOADB                            R11 1
      629 JUMPIFEQKS                       R12 K39 ["QUOTE"] ; [+5]
      631 JUMPIFEQKS                       R12 K40 ["LIST_ITEM"] ; [+2]
      633 LOADB                            R11 0 +1
      634 LOADB                            R11 1
      635 JUMPIFNOT                        R11 ; [+51]
      636 GETTABLEKS                       R12 R8 K9 ["children"]
      638 JUMPIF                           R12 ; [+2]
      639 NEWTABLE                         R12 0 0
      641 LOADN                            R13 0
      642 LOADN                            R14 0
      643 NEWCLOSURE                       R15 P0
      644 CAPTURE                          REF R14
      645 CAPTURE                          VAL R6
      646 CAPTURE                          REF R13
      647 CAPTURE                          VAL R15
      648 MOVE                             R16 R15
      649 MOVE                             R17 R12
      650 CALL                             R16 1 1
      651 OR                               R11 R16 R13
      652 CLOSEUPVALS                      R13
      653 LOADN                            R12 0
      654 JUMPIFNOTLT                      R12 R11 ; [+32]
      656 GETUPVAL                         R12 3
      657 GETUPVAL                         R13 4
      658 GETTABLEKS                       R14 R8 K9 ["children"]
      660 JUMPIF                           R14 ; [+2]
      661 NEWTABLE                         R14 0 0
      663 SUBK                             R15 R11 K10 [1]
      664 MOVE                             R16 R11
      665 CALL                             R13 3 1
      666 CALL                             R12 1 1
      667 MOVE                             R13 R2
      668 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      670 GETTABLE                         R14 R1 R15
      671 GETTABLEKS                       R14 R14 K9 ["children"]
      673 CALL                             R13 1 1
      674 MOVE                             R15 R12
      675 NAMECALL                         R13 R13 K18 ["set"]
      677 CALL                             R13 2 0
      678 MOVE                             R13 R3
      679 GETUPVAL                         R14 8
      680 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      682 MOVE                             R16 R12
      683 SUBK                             R17 R11 K10 [1]
      684 CALL                             R14 3 -1
      685 CALL                             R13 -1 0
      686 RETURN                           R0 0
      687 GETTABLEKS                       R11 R6 K2 ["blockIndex"]
      689 LOADN                            R12 1
      690 JUMPIFNOTLT                      R12 R11 ; [+192]
      692 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      694 SUBK                             R12 R13 K10 [1]
      695 GETTABLE                         R11 R7 R12
      696 JUMPIFNOT                        R11 ; [+91]
      697 GETTABLEKS                       R13 R11 K7 ["name"]
      699 LOADB                            R12 1
      700 JUMPIFEQKS                       R13 K23 ["PARAGRAPH"] ; [+11]
      702 LOADB                            R12 1
      703 JUMPIFEQKS                       R13 K38 ["HEADING"] ; [+8]
      705 LOADB                            R12 1
      706 JUMPIFEQKS                       R13 K39 ["QUOTE"] ; [+5]
      708 JUMPIFEQKS                       R13 K40 ["LIST_ITEM"] ; [+2]
      710 LOADB                            R12 0 +1
      711 LOADB                            R12 1
      712 JUMPIFNOT                        R12 ; [+75]
      713 GETTABLEKS                       R13 R8 K7 ["name"]
      715 LOADB                            R12 1
      716 JUMPIFEQKS                       R13 K23 ["PARAGRAPH"] ; [+11]
      718 LOADB                            R12 1
      719 JUMPIFEQKS                       R13 K38 ["HEADING"] ; [+8]
      721 LOADB                            R12 1
      722 JUMPIFEQKS                       R13 K39 ["QUOTE"] ; [+5]
      724 JUMPIFEQKS                       R13 K40 ["LIST_ITEM"] ; [+2]
      726 LOADB                            R12 0 +1
      727 LOADB                            R12 1
      728 JUMPIFNOT                        R12 ; [+59]
      729 GETTABLEKS                       R13 R11 K9 ["children"]
      731 JUMPIF                           R13 ; [+2]
      732 NEWTABLE                         R13 0 0
      734 LOADN                            R14 0
      735 MOVE                             R15 R13
      736 LOADNIL                          R16
      737 LOADNIL                          R17
      738 FORGPREP                         R15
      739 GETUPVAL                         R20 9
      740 MOVE                             R21 R19
      741 CALL                             R20 1 1
      742 ADD                              R14 R14 R20
      743 FORGLOOP                         R15 2 ; [-5]
      745 MOVE                             R12 R14
      746 GETUPVAL                         R13 10
      747 GETTABLEKS                       R14 R11 K9 ["children"]
      749 JUMPIF                           R14 ; [+2]
      750 NEWTABLE                         R14 0 0
      752 GETTABLEKS                       R15 R8 K9 ["children"]
      754 JUMPIF                           R15 ; [+2]
      755 NEWTABLE                         R15 0 0
      757 CALL                             R13 2 1
      758 MOVE                             R14 R2
      759 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      761 SUBK                             R16 R17 K10 [1]
      762 GETTABLE                         R15 R1 R16
      763 GETTABLEKS                       R15 R15 K9 ["children"]
      765 CALL                             R14 1 1
      766 MOVE                             R16 R13
      767 NAMECALL                         R14 R14 K18 ["set"]
      769 CALL                             R14 2 0
      770 MOVE                             R14 R2
      771 MOVE                             R15 R1
      772 CALL                             R14 1 1
      773 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      775 NAMECALL                         R14 R14 K22 ["remove"]
      777 CALL                             R14 2 0
      778 MOVE                             R14 R3
      779 GETUPVAL                         R15 8
      780 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      782 SUBK                             R16 R17 K10 [1]
      783 MOVE                             R17 R13
      784 MOVE                             R18 R12
      785 CALL                             R15 3 -1
      786 CALL                             R14 -1 0
      787 RETURN                           R0 0
      788 GETTABLEKS                       R13 R8 K7 ["name"]
      790 LOADB                            R12 1
      791 JUMPIFEQKS                       R13 K23 ["PARAGRAPH"] ; [+11]
      793 LOADB                            R12 1
      794 JUMPIFEQKS                       R13 K38 ["HEADING"] ; [+8]
      796 LOADB                            R12 1
      797 JUMPIFEQKS                       R13 K39 ["QUOTE"] ; [+5]
      799 JUMPIFEQKS                       R13 K40 ["LIST_ITEM"] ; [+2]
      801 LOADB                            R12 0 +1
      802 LOADB                            R12 1
      803 JUMPIF                           R12 ; [+26]
      804 MOVE                             R12 R2
      805 MOVE                             R13 R1
      806 CALL                             R12 1 1
      807 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      809 NAMECALL                         R12 R12 K22 ["remove"]
      811 CALL                             R12 2 0
      812 MOVE                             R12 R3
      813 GETUPVAL                         R13 0
      814 GETTABLEKS                       R13 R13 K1 ["createCollapsed"]
      816 LOADN                            R15 1
      817 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      819 SUBK                             R16 R17 K10 [1]
      820 FASTCALL2                        MATH_MAX R15 R16 ; [+3]
      822 GETIMPORT                        R14 K13 [math.max]
      824 CALL                             R14 2 1
      825 LOADN                            R15 1
      826 LOADN                            R16 0
      827 CALL                             R13 3 -1
      828 CALL                             R12 -1 0
      829 RETURN                           R0 0
      830 JUMPIFNOT                        R11 ; [+52]
      831 GETTABLEKS                       R13 R11 K7 ["name"]
      833 LOADB                            R12 1
      834 JUMPIFEQKS                       R13 K23 ["PARAGRAPH"] ; [+11]
      836 LOADB                            R12 1
      837 JUMPIFEQKS                       R13 K38 ["HEADING"] ; [+8]
      839 LOADB                            R12 1
      840 JUMPIFEQKS                       R13 K39 ["QUOTE"] ; [+5]
      842 JUMPIFEQKS                       R13 K40 ["LIST_ITEM"] ; [+2]
      844 LOADB                            R12 0 +1
      845 LOADB                            R12 1
      846 JUMPIF                           R12 ; [+36]
      847 GETTABLEKS                       R13 R8 K9 ["children"]
      849 JUMPIF                           R13 ; [+2]
      850 NEWTABLE                         R13 0 0
      852 LOADN                            R14 0
      853 MOVE                             R15 R13
      854 LOADNIL                          R16
      855 LOADNIL                          R17
      856 FORGPREP                         R15
      857 GETUPVAL                         R20 9
      858 MOVE                             R21 R19
      859 CALL                             R20 1 1
      860 ADD                              R14 R14 R20
      861 FORGLOOP                         R15 2 ; [-5]
      863 MOVE                             R12 R14
      864 JUMPIFNOTEQKN                    R12 K37 [0] ; [+18]
      866 MOVE                             R12 R2
      867 MOVE                             R13 R1
      868 CALL                             R12 1 1
      869 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      871 NAMECALL                         R12 R12 K22 ["remove"]
      873 CALL                             R12 2 0
      874 MOVE                             R12 R3
      875 GETUPVAL                         R13 11
      876 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      878 SUBK                             R14 R15 K10 [1]
      879 MOVE                             R15 R11
      880 LOADB                            R16 1
      881 CALL                             R13 3 -1
      882 CALL                             R12 -1 0
      883 RETURN                           R0 0

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
       30 JUMPIFNOT                        R9 ; [+109]
       31 GETUPVAL                         R9 2
       32 MOVE                             R10 R8
       33 MOVE                             R11 R6
       34 CALL                             R9 2 3
       35 JUMPIFNOT                        R10 ; [+103]
       36 JUMPIFNOT                        R11 ; [+102]
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
       60 JUMPIFNOTLT                      R16 R15 ; [+78]
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
       91 JUMPIFNOT                        R14 ; [+47]
       92 MOVE                             R15 R3
       93 GETUPVAL                         R16 3
       94 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
       96 ADDK                             R17 R18 K6 [1]
       97 MOVE                             R18 R14
       98 LOADB                            R19 0
       99 CALL                             R16 3 -1
      100 CALL                             R15 -1 0
      101 RETURN                           R0 0
      102 DUPTABLE                         R14 K13 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      103 NEWTABLE                         R15 0 1
      105 DUPTABLE                         R16 K17 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      106 NEWTABLE                         R17 0 0
      108 SETTABLEKS                       R17 R16 K5 ["children"]
      110 SETLIST                          R15 R16 1 [1]
      112 SETTABLEKS                       R15 R14 K5 ["children"]
      114 MOVE                             R15 R4
      115 CALL                             R15 0 1
      116 SETTABLEKS                       R15 R14 K12 ["index"]
      118 MOVE                             R15 R2
      119 MOVE                             R16 R1
      120 CALL                             R15 1 1
      121 MOVE                             R17 R14
      122 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      124 ADDK                             R18 R19 K6 [1]
      125 NAMECALL                         R15 R15 K18 ["insert"]
      127 CALL                             R15 3 0
      128 MOVE                             R15 R3
      129 GETUPVAL                         R16 0
      130 GETTABLEKS                       R16 R16 K10 ["createCollapsed"]
      132 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      134 ADDK                             R17 R18 K6 [1]
      135 LOADN                            R18 1
      136 LOADN                            R19 0
      137 CALL                             R16 3 -1
      138 CALL                             R15 -1 0
      139 RETURN                           R0 0
      140 GETTABLEKS                       R9 R8 K3 ["name"]
      142 JUMPIFNOTEQKS                    R9 K19 ["LIST"] ; [+333]
      144 GETTABLEKS                       R9 R8 K5 ["children"]
      146 JUMPIF                           R9 ; [+2]
      147 NEWTABLE                         R9 0 0
      149 GETTABLEKS                       R11 R6 K20 ["path"]
      151 JUMPIFNOT                        R11 ; [+4]
      152 GETTABLEKS                       R11 R6 K20 ["path"]
      154 GETTABLEN                        R10 R11 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R10
      157 JUMPIFNOT                        R10 ; [+317]
      158 GETTABLE                         R11 R9 R10
      159 JUMPIFNOT                        R11 ; [+315]
      160 GETTABLE                         R11 R9 R10
      161 GETTABLEKS                       R13 R11 K5 ["children"]
      163 JUMPIF                           R13 ; [+2]
      164 NEWTABLE                         R13 0 0
      166 LOADN                            R14 0
      167 LOADN                            R15 0
      168 NEWCLOSURE                       R16 P0
      169 CAPTURE                          REF R15
      170 CAPTURE                          VAL R6
      171 CAPTURE                          REF R14
      172 CAPTURE                          VAL R16
      173 MOVE                             R17 R16
      174 MOVE                             R18 R13
      175 CALL                             R17 1 1
      176 OR                               R12 R17 R14
      177 CLOSEUPVALS                      R14
      178 GETUPVAL                         R13 4
      179 GETTABLEKS                       R14 R11 K5 ["children"]
      181 JUMPIF                           R14 ; [+2]
      182 NEWTABLE                         R14 0 0
      184 MOVE                             R15 R12
      185 CALL                             R13 2 2
      186 GETTABLEKS                       R16 R11 K5 ["children"]
      188 JUMPIF                           R16 ; [+2]
      189 NEWTABLE                         R16 0 0
      191 LOADN                            R17 0
      192 MOVE                             R18 R16
      193 LOADNIL                          R19
      194 LOADNIL                          R20
      195 FORGPREP                         R18
      196 GETUPVAL                         R23 5
      197 MOVE                             R24 R22
      198 CALL                             R23 1 1
      199 ADD                              R17 R17 R23
      200 FORGLOOP                         R18 2 ; [-5]
      202 MOVE                             R15 R17
      203 JUMPIFNOTEQKN                    R15 K21 [0] ; [+191]
      205 LENGTH                           R15 R9
      206 JUMPIFNOTEQKN                    R15 K6 [1] ; [+36]
      208 MOVE                             R15 R2
      209 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      211 GETTABLE                         R16 R1 R17
      212 CALL                             R15 1 1
      213 DUPTABLE                         R17 K13 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      214 NEWTABLE                         R18 0 1
      216 DUPTABLE                         R19 K17 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      217 NEWTABLE                         R20 0 0
      219 SETTABLEKS                       R20 R19 K5 ["children"]
      221 SETLIST                          R18 R19 1 [1]
      223 SETTABLEKS                       R18 R17 K5 ["children"]
      225 GETTABLEKS                       R18 R8 K12 ["index"]
      227 SETTABLEKS                       R18 R17 K12 ["index"]
      229 NAMECALL                         R15 R15 K22 ["set"]
      231 CALL                             R15 2 0
      232 MOVE                             R15 R3
      233 GETUPVAL                         R16 0
      234 GETTABLEKS                       R16 R16 K10 ["createCollapsed"]
      236 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      238 LOADN                            R18 1
      239 LOADN                            R19 0
      240 CALL                             R16 3 -1
      241 CALL                             R15 -1 0
      242 RETURN                           R0 0
      243 JUMPIFNOTEQKN                    R10 K6 [1] ; [+48]
      245 MOVE                             R15 R2
      246 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      248 GETTABLE                         R16 R1 R17
      249 GETTABLEKS                       R16 R16 K5 ["children"]
      251 CALL                             R15 1 1
      252 LOADN                            R17 1
      253 NAMECALL                         R15 R15 K23 ["remove"]
      255 CALL                             R15 2 0
      256 DUPTABLE                         R15 K13 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      257 NEWTABLE                         R16 0 1
      259 DUPTABLE                         R17 K17 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      260 NEWTABLE                         R18 0 0
      262 SETTABLEKS                       R18 R17 K5 ["children"]
      264 SETLIST                          R16 R17 1 [1]
      266 SETTABLEKS                       R16 R15 K5 ["children"]
      268 MOVE                             R16 R4
      269 CALL                             R16 0 1
      270 SETTABLEKS                       R16 R15 K12 ["index"]
      272 MOVE                             R16 R2
      273 MOVE                             R17 R1
      274 CALL                             R16 1 1
      275 MOVE                             R18 R15
      276 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      278 NAMECALL                         R16 R16 K18 ["insert"]
      280 CALL                             R16 3 0
      281 MOVE                             R16 R3
      282 GETUPVAL                         R17 0
      283 GETTABLEKS                       R17 R17 K10 ["createCollapsed"]
      285 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      287 LOADN                            R19 1
      288 LOADN                            R20 0
      289 CALL                             R17 3 -1
      290 CALL                             R16 -1 0
      291 RETURN                           R0 0
      292 NEWTABLE                         R15 0 0
      294 ADDK                             R18 R10 K6 [1]
      295 LENGTH                           R16 R9
      296 LOADN                            R17 1
      297 FORNPREP                         R16
      298 GETTABLE                         R21 R9 R18
      299 FASTCALL2                        TABLE_INSERT R15 R21 ; [+4]
      301 MOVE                             R20 R15
      302 GETIMPORT                        R19 K25 [table.insert]
      304 CALL                             R19 2 0
      305 FORNLOOP                         R16
      306 LENGTH                           R18 R9
      307 MOVE                             R16 R10
      308 LOADN                            R17 -1
      309 FORNPREP                         R16
      310 MOVE                             R19 R2
      311 GETTABLEKS                       R21 R6 K2 ["blockIndex"]
      313 GETTABLE                         R20 R1 R21
      314 GETTABLEKS                       R20 R20 K5 ["children"]
      316 CALL                             R19 1 1
      317 MOVE                             R21 R18
      318 NAMECALL                         R19 R19 K23 ["remove"]
      320 CALL                             R19 2 0
      321 FORNLOOP                         R16
      322 DUPTABLE                         R16 K13 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      323 NEWTABLE                         R17 0 1
      325 DUPTABLE                         R18 K17 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      326 NEWTABLE                         R19 0 0
      328 SETTABLEKS                       R19 R18 K5 ["children"]
      330 SETLIST                          R17 R18 1 [1]
      332 SETTABLEKS                       R17 R16 K5 ["children"]
      334 MOVE                             R17 R4
      335 CALL                             R17 0 1
      336 SETTABLEKS                       R17 R16 K12 ["index"]
      338 MOVE                             R17 R2
      339 MOVE                             R18 R1
      340 CALL                             R17 1 1
      341 MOVE                             R19 R16
      342 GETTABLEKS                       R21 R6 K2 ["blockIndex"]
      344 ADDK                             R20 R21 K6 [1]
      345 NAMECALL                         R17 R17 K18 ["insert"]
      347 CALL                             R17 3 0
      348 LENGTH                           R17 R15
      349 LOADN                            R18 0
      350 JUMPIFNOTLT                      R18 R17 ; [+32]
      352 DUPTABLE                         R17 K27 [{["name"] = "LIST", ["children"], ["attributes"], ["index"]}]
      353 SETTABLEKS                       R15 R17 K5 ["children"]
      355 DUPTABLE                         R18 K29 [{"ordered"}]
      356 GETTABLEKS                       R20 R8 K26 ["attributes"]
      358 JUMPIFNOT                        R20 ; [+5]
      359 GETTABLEKS                       R19 R8 K26 ["attributes"]
      361 GETTABLEKS                       R19 R19 K28 ["ordered"]
      363 JUMPIF                           R19 ; [+1]
      364 LOADB                            R19 0
      365 SETTABLEKS                       R19 R18 K28 ["ordered"]
      367 SETTABLEKS                       R18 R17 K26 ["attributes"]
      369 MOVE                             R18 R4
      370 CALL                             R18 0 1
      371 SETTABLEKS                       R18 R17 K12 ["index"]
      373 MOVE                             R18 R2
      374 MOVE                             R19 R1
      375 CALL                             R18 1 1
      376 MOVE                             R20 R17
      377 GETTABLEKS                       R22 R6 K2 ["blockIndex"]
      379 ADDK                             R21 R22 K30 [2]
      380 NAMECALL                         R18 R18 K18 ["insert"]
      382 CALL                             R18 3 0
      383 MOVE                             R17 R3
      384 GETUPVAL                         R18 0
      385 GETTABLEKS                       R18 R18 K10 ["createCollapsed"]
      387 GETTABLEKS                       R20 R6 K2 ["blockIndex"]
      389 ADDK                             R19 R20 K6 [1]
      390 LOADN                            R20 1
      391 LOADN                            R21 0
      392 CALL                             R18 3 -1
      393 CALL                             R17 -1 0
      394 RETURN                           R0 0
      395 GETUPVAL                         R15 6
      396 MOVE                             R16 R13
      397 CALL                             R15 1 1
      398 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      400 MOVE                             R17 R2
      401 GETTABLE                         R19 R1 R16
      402 GETTABLEKS                       R19 R19 K5 ["children"]
      404 GETTABLE                         R18 R19 R10
      405 CALL                             R17 1 1
      406 DUPTABLE                         R19 K31 [{"name", "children", "attributes", "index"}]
      407 GETTABLEKS                       R20 R11 K3 ["name"]
      409 SETTABLEKS                       R20 R19 K3 ["name"]
      411 SETTABLEKS                       R15 R19 K5 ["children"]
      413 GETTABLEKS                       R20 R11 K26 ["attributes"]
      415 SETTABLEKS                       R20 R19 K26 ["attributes"]
      417 GETTABLEKS                       R20 R11 K12 ["index"]
      419 SETTABLEKS                       R20 R19 K12 ["index"]
      421 NAMECALL                         R17 R17 K22 ["set"]
      423 CALL                             R17 2 0
      424 DUPTABLE                         R15 K33 [{["name"] = "LIST_ITEM", ["children"], ["attributes"], ["index"]}]
      425 GETUPVAL                         R16 6
      426 MOVE                             R17 R14
      427 CALL                             R16 1 1
      428 SETTABLEKS                       R16 R15 K5 ["children"]
      430 DUPTABLE                         R16 K35 [{"prefix"}]
      431 GETTABLEKS                       R18 R11 K26 ["attributes"]
      433 JUMPIFNOT                        R18 ; [+5]
      434 GETTABLEKS                       R17 R11 K26 ["attributes"]
      436 GETTABLEKS                       R17 R17 K34 ["prefix"]
      438 JUMPIF                           R17 ; [+1]
      439 LOADK                            R17 K36 ["-"]
      440 SETTABLEKS                       R17 R16 K34 ["prefix"]
      442 SETTABLEKS                       R16 R15 K26 ["attributes"]
      444 MOVE                             R16 R4
      445 CALL                             R16 0 1
      446 SETTABLEKS                       R16 R15 K12 ["index"]
      448 MOVE                             R16 R2
      449 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      451 GETTABLE                         R17 R1 R18
      452 GETTABLEKS                       R17 R17 K5 ["children"]
      454 CALL                             R16 1 1
      455 MOVE                             R18 R15
      456 ADDK                             R19 R10 K6 [1]
      457 NAMECALL                         R16 R16 K18 ["insert"]
      459 CALL                             R16 3 0
      460 MOVE                             R16 R3
      461 GETUPVAL                         R17 0
      462 GETTABLEKS                       R17 R17 K10 ["createCollapsed"]
      464 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      466 LOADN                            R19 1
      467 LOADN                            R20 0
      468 NEWTABLE                         R21 0 1
      470 ADDK                             R22 R10 K6 [1]
      471 SETLIST                          R21 R22 1 [1]
      473 CALL                             R17 4 -1
      474 CALL                             R16 -1 0
      475 RETURN                           R0 0
      476 GETTABLEKS                       R9 R8 K3 ["name"]
      478 JUMPIFNOTEQKS                    R9 K11 ["PARAGRAPH"] ; [+54]
      480 GETUPVAL                         R9 7
      481 GETTABLEKS                       R10 R8 K5 ["children"]
      483 JUMPIF                           R10 ; [+2]
      484 NEWTABLE                         R10 0 0
      486 CALL                             R9 1 1
      487 LOADK                            R12 K37 ["^```(%w*)$"]
      488 NAMECALL                         R10 R9 K38 ["match"]
      490 CALL                             R10 2 1
      491 JUMPIFEQKNIL                     R10 ; [+41]
      493 MOVE                             R11 R2
      494 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      496 GETTABLE                         R12 R1 R13
      497 CALL                             R11 1 1
      498 DUPTABLE                         R13 K40 [{["name"] = "CODE_BLOCK", ["children"], ["text"] = "", ["attributes"], ["index"]}]
      499 NEWTABLE                         R14 0 0
      501 SETTABLEKS                       R14 R13 K5 ["children"]
      503 DUPTABLE                         R14 K42 [{"language"}]
      504 LENGTH                           R16 R10
      505 LOADN                            R17 0
      506 JUMPIFNOTLT                      R17 R16 ; [+3]
      508 MOVE                             R15 R10
      509 JUMP                             ; [+1]
      510 LOADNIL                          R15
      511 SETTABLEKS                       R15 R14 K41 ["language"]
      513 SETTABLEKS                       R14 R13 K26 ["attributes"]
      515 GETTABLEKS                       R14 R8 K12 ["index"]
      517 SETTABLEKS                       R14 R13 K12 ["index"]
      519 NAMECALL                         R11 R11 K22 ["set"]
      521 CALL                             R11 2 0
      522 MOVE                             R11 R3
      523 GETUPVAL                         R12 0
      524 GETTABLEKS                       R12 R12 K10 ["createCollapsed"]
      526 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      528 LOADN                            R14 1
      529 LOADN                            R15 0
      530 CALL                             R12 3 -1
      531 CALL                             R11 -1 0
      532 RETURN                           R0 0
      533 GETTABLEKS                       R9 R8 K3 ["name"]
      535 JUMPIFNOTEQKS                    R9 K11 ["PARAGRAPH"] ; [+68]
      537 GETUPVAL                         R9 7
      538 GETTABLEKS                       R10 R8 K5 ["children"]
      540 JUMPIF                           R10 ; [+2]
      541 NEWTABLE                         R10 0 0
      543 CALL                             R9 1 1
      544 LOADK                            R12 K43 ["^%-%-%-+$"]
      545 NAMECALL                         R10 R9 K38 ["match"]
      547 CALL                             R10 2 1
      548 JUMPIFNOT                        R10 ; [+55]
      549 MOVE                             R10 R2
      550 GETTABLEKS                       R12 R6 K2 ["blockIndex"]
      552 GETTABLE                         R11 R1 R12
      553 CALL                             R10 1 1
      554 DUPTABLE                         R12 K45 [{["name"] = "DIVIDER", ["children"], ["index"]}]
      555 NEWTABLE                         R13 0 0
      557 SETTABLEKS                       R13 R12 K5 ["children"]
      559 GETTABLEKS                       R13 R8 K12 ["index"]
      561 SETTABLEKS                       R13 R12 K12 ["index"]
      563 NAMECALL                         R10 R10 K22 ["set"]
      565 CALL                             R10 2 0
      566 DUPTABLE                         R10 K13 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      567 NEWTABLE                         R11 0 1
      569 DUPTABLE                         R12 K17 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      570 NEWTABLE                         R13 0 0
      572 SETTABLEKS                       R13 R12 K5 ["children"]
      574 SETLIST                          R11 R12 1 [1]
      576 SETTABLEKS                       R11 R10 K5 ["children"]
      578 MOVE                             R11 R4
      579 CALL                             R11 0 1
      580 SETTABLEKS                       R11 R10 K12 ["index"]
      582 MOVE                             R11 R2
      583 MOVE                             R12 R1
      584 CALL                             R11 1 1
      585 MOVE                             R13 R10
      586 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      588 ADDK                             R14 R15 K6 [1]
      589 NAMECALL                         R11 R11 K18 ["insert"]
      591 CALL                             R11 3 0
      592 MOVE                             R11 R3
      593 GETUPVAL                         R12 0
      594 GETTABLEKS                       R12 R12 K10 ["createCollapsed"]
      596 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      598 ADDK                             R13 R14 K6 [1]
      599 LOADN                            R14 1
      600 LOADN                            R15 0
      601 CALL                             R12 3 -1
      602 CALL                             R11 -1 0
      603 RETURN                           R0 0
      604 GETTABLEKS                       R10 R8 K3 ["name"]
      606 JUMPIFEQKS                       R10 K39 ["CODE_BLOCK"] ; [+2]
      608 LOADB                            R9 0 +1
      609 LOADB                            R9 1
      610 JUMPIFNOT                        R9 ; [+156]
      611 GETTABLEKS                       R10 R8 K15 ["text"]
      613 ORK                              R9 R10 K16 [""]
      614 GETUPVAL                         R10 8
      615 MOVE                             R11 R6
      616 MOVE                             R12 R9
      617 CALL                             R10 2 1
      618 LOADK                            R13 K46 ["\n[^\n]*$"]
      619 NAMECALL                         R11 R9 K47 ["find"]
      621 CALL                             R11 2 1
      622 JUMPIFNOT                        R11 ; [+5]
      623 ADDK                             R14 R11 K6 [1]
      624 NAMECALL                         R12 R9 K48 ["sub"]
      626 CALL                             R12 2 1
      627 JUMP                             ; [+1]
      628 LOADNIL                          R12
      629 LOADB                            R13 1
      630 JUMPIFEQKS                       R9 K16 [""] ; [+16]
      632 LOADB                            R13 0
      633 LENGTH                           R14 R9
      634 JUMPIFNOTEQ                      R10 R14 ; [+12]
      636 LOADB                            R13 0
      637 JUMPIFEQKNIL                     R12 ; [+9]
      639 LOADK                            R16 K49 ["^[\t ]*$"]
      640 NAMECALL                         R14 R12 K38 ["match"]
      642 CALL                             R14 2 1
      643 JUMPIFNOTEQKNIL                  R14 ; [+2]
      645 LOADB                            R13 0 +1
      646 LOADB                            R13 1
      647 LENGTH                           R14 R9
      648 JUMPIFNOTEQ                      R10 R14 ; [+60]
      650 JUMPIFNOT                        R13 ; [+58]
      651 LENGTH                           R14 R9
      652 LOADN                            R15 0
      653 JUMPIFNOTLT                      R15 R14 ; [+17]
      655 LOADN                            R16 1
      656 SUBK                             R17 R11 K6 [1]
      657 NAMECALL                         R14 R9 K48 ["sub"]
      659 CALL                             R14 3 1
      660 MOVE                             R15 R2
      661 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      663 GETTABLE                         R16 R1 R17
      664 GETTABLEKS                       R16 R16 K15 ["text"]
      666 CALL                             R15 1 1
      667 MOVE                             R17 R14
      668 NAMECALL                         R15 R15 K22 ["set"]
      670 CALL                             R15 2 0
      671 DUPTABLE                         R14 K13 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      672 NEWTABLE                         R15 0 1
      674 DUPTABLE                         R16 K17 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      675 NEWTABLE                         R17 0 0
      677 SETTABLEKS                       R17 R16 K5 ["children"]
      679 SETLIST                          R15 R16 1 [1]
      681 SETTABLEKS                       R15 R14 K5 ["children"]
      683 MOVE                             R15 R4
      684 CALL                             R15 0 1
      685 SETTABLEKS                       R15 R14 K12 ["index"]
      687 MOVE                             R15 R2
      688 MOVE                             R16 R1
      689 CALL                             R15 1 1
      690 MOVE                             R17 R14
      691 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      693 ADDK                             R18 R19 K6 [1]
      694 NAMECALL                         R15 R15 K18 ["insert"]
      696 CALL                             R15 3 0
      697 MOVE                             R15 R3
      698 GETUPVAL                         R16 0
      699 GETTABLEKS                       R16 R16 K10 ["createCollapsed"]
      701 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      703 ADDK                             R17 R18 K6 [1]
      704 LOADN                            R18 1
      705 LOADN                            R19 0
      706 CALL                             R16 3 -1
      707 CALL                             R15 -1 0
      708 RETURN                           R0 0
      709 MOVE                             R14 R10
      710 LOADN                            R15 0
      711 JUMPIFNOTLT                      R15 R14 ; [+10]
      713 MOVE                             R17 R14
      714 MOVE                             R18 R14
      715 NAMECALL                         R15 R9 K48 ["sub"]
      717 CALL                             R15 3 1
      718 JUMPIFEQKS                       R15 K50 ["\n"] ; [+3]
      720 SUBK                             R14 R14 K6 [1]
      721 JUMPBACK                         ; [-12]
      722 ADDK                             R17 R14 K6 [1]
      723 MOVE                             R18 R10
      724 NAMECALL                         R15 R9 K48 ["sub"]
      726 CALL                             R15 3 1
      727 LOADK                            R19 K51 ["^([\t ]*)"]
      728 NAMECALL                         R17 R15 K38 ["match"]
      730 CALL                             R17 2 1
      731 ORK                              R16 R17 K16 [""]
      732 LOADN                            R24 1
      733 MOVE                             R25 R10
      734 NAMECALL                         R22 R9 K48 ["sub"]
      736 CALL                             R22 3 1
      737 MOVE                             R18 R22
      738 LOADK                            R19 K50 ["\n"]
      739 MOVE                             R20 R16
      740 ADDK                             R23 R10 K6 [1]
      741 NAMECALL                         R21 R9 K48 ["sub"]
      743 CALL                             R21 2 1
      744 CONCAT                           R17 R18 R21
      745 MOVE                             R18 R2
      746 GETTABLEKS                       R20 R6 K2 ["blockIndex"]
      748 GETTABLE                         R19 R1 R20
      749 GETTABLEKS                       R19 R19 K15 ["text"]
      751 CALL                             R18 1 1
      752 MOVE                             R20 R17
      753 NAMECALL                         R18 R18 K22 ["set"]
      755 CALL                             R18 2 0
      756 MOVE                             R18 R3
      757 GETUPVAL                         R19 9
      758 GETTABLEKS                       R20 R6 K2 ["blockIndex"]
      760 MOVE                             R21 R17
      761 ADDK                             R23 R10 K6 [1]
      762 LENGTH                           R24 R16
      763 ADD                              R22 R23 R24
      764 CALL                             R19 3 -1
      765 CALL                             R18 -1 0
      766 RETURN                           R0 0
      767 GETTABLEKS                       R10 R8 K3 ["name"]
      769 LOADB                            R9 1
      770 JUMPIFEQKS                       R10 K11 ["PARAGRAPH"] ; [+11]
      772 LOADB                            R9 1
      773 JUMPIFEQKS                       R10 K52 ["HEADING"] ; [+8]
      775 LOADB                            R9 1
      776 JUMPIFEQKS                       R10 K53 ["QUOTE"] ; [+5]
      778 JUMPIFEQKS                       R10 K32 ["LIST_ITEM"] ; [+2]
      780 LOADB                            R9 0 +1
      781 LOADB                            R9 1
      782 JUMPIFNOT                        R9 ; [+80]
      783 GETTABLEKS                       R10 R8 K5 ["children"]
      785 JUMPIF                           R10 ; [+2]
      786 NEWTABLE                         R10 0 0
      788 LOADN                            R11 0
      789 LOADN                            R12 0
      790 NEWCLOSURE                       R13 P0
      791 CAPTURE                          REF R12
      792 CAPTURE                          VAL R6
      793 CAPTURE                          REF R11
      794 CAPTURE                          VAL R13
      795 MOVE                             R14 R13
      796 MOVE                             R15 R10
      797 CALL                             R14 1 1
      798 OR                               R9 R14 R11
      799 CLOSEUPVALS                      R11
      800 GETUPVAL                         R10 4
      801 GETTABLEKS                       R11 R8 K5 ["children"]
      803 JUMPIF                           R11 ; [+2]
      804 NEWTABLE                         R11 0 0
      806 MOVE                             R12 R9
      807 CALL                             R10 2 2
      808 MOVE                             R12 R2
      809 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      811 GETTABLE                         R13 R1 R14
      812 GETTABLEKS                       R13 R13 K5 ["children"]
      814 CALL                             R12 1 1
      815 GETUPVAL                         R14 6
      816 MOVE                             R15 R10
      817 CALL                             R14 1 1
      818 NAMECALL                         R12 R12 K22 ["set"]
      820 CALL                             R12 2 0
      821 DUPTABLE                         R12 K54 [{"name", "children", "index"}]
      822 GETTABLEKS                       R14 R8 K3 ["name"]
      824 JUMPIFNOTEQKS                    R14 K52 ["HEADING"] ; [+3]
      826 LOADK                            R13 K11 ["PARAGRAPH"]
      827 JUMP                             ; [+2]
      828 GETTABLEKS                       R13 R8 K3 ["name"]
      830 SETTABLEKS                       R13 R12 K3 ["name"]
      832 GETUPVAL                         R13 6
      833 MOVE                             R14 R11
      834 CALL                             R13 1 1
      835 SETTABLEKS                       R13 R12 K5 ["children"]
      837 MOVE                             R13 R4
      838 CALL                             R13 0 1
      839 SETTABLEKS                       R13 R12 K12 ["index"]
      841 MOVE                             R13 R2
      842 MOVE                             R14 R1
      843 CALL                             R13 1 1
      844 MOVE                             R15 R12
      845 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      847 ADDK                             R16 R17 K6 [1]
      848 NAMECALL                         R13 R13 K18 ["insert"]
      850 CALL                             R13 3 0
      851 MOVE                             R13 R3
      852 GETUPVAL                         R14 0
      853 GETTABLEKS                       R14 R14 K10 ["createCollapsed"]
      855 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      857 ADDK                             R15 R16 K6 [1]
      858 LOADN                            R16 1
      859 LOADN                            R17 0
      860 CALL                             R14 3 -1
      861 CALL                             R13 -1 0
      862 RETURN                           R0 0
      863 DUPTABLE                         R9 K13 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      864 NEWTABLE                         R10 0 1
      866 DUPTABLE                         R11 K17 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      867 NEWTABLE                         R12 0 0
      869 SETTABLEKS                       R12 R11 K5 ["children"]
      871 SETLIST                          R10 R11 1 [1]
      873 SETTABLEKS                       R10 R9 K5 ["children"]
      875 MOVE                             R10 R4
      876 CALL                             R10 0 1
      877 SETTABLEKS                       R10 R9 K12 ["index"]
      879 MOVE                             R10 R2
      880 MOVE                             R11 R1
      881 CALL                             R10 1 1
      882 MOVE                             R12 R9
      883 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      885 ADDK                             R13 R14 K6 [1]
      886 NAMECALL                         R10 R10 K18 ["insert"]
      888 CALL                             R10 3 0
      889 MOVE                             R10 R3
      890 GETUPVAL                         R11 0
      891 GETTABLEKS                       R11 R11 K10 ["createCollapsed"]
      893 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      895 ADDK                             R12 R13 K6 [1]
      896 LOADN                            R13 1
      897 LOADN                            R14 0
      898 CALL                             R11 3 -1
      899 CALL                             R10 -1 0
      900 RETURN                           R0 0

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
      196 JUMP                             ; [+25]
      197 GETUPVAL                         R24 4
      198 MOVE                             R25 R10
      199 MOVE                             R26 R20
      200 MOVE                             R27 R21
      201 MOVE                             R28 R0
      202 CALL                             R24 4 1
      203 MOVE                             R22 R24
      204 LENGTH                           R25 R22
      205 GETTABLE                         R24 R22 R25
      206 JUMPIFNOT                        R24 ; [+15]
      207 GETTABLEKS                       R25 R24 K3 ["name"]
      209 JUMPIFNOTEQKS                    R25 K12 ["STYLED_TEXT"] ; [+12]
      211 DUPTABLE                         R27 K16 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      212 NEWTABLE                         R28 0 0
      214 SETTABLEKS                       R28 R27 K6 ["children"]
      216 FASTCALL2                        TABLE_INSERT R22 R27 ; [+4]
      218 MOVE                             R26 R22
      219 GETIMPORT                        R25 K19 [table.insert]
      221 CALL                             R25 2 0
      222 JUMPIFNOT                        R13 ; [+28]
      223 MOVE                             R24 R22
      224 GETTABLEKS                       R25 R6 K2 ["blockIndex"]
      226 MOVE                             R26 R3
      227 GETTABLE                         R28 R2 R25
      228 GETTABLEKS                       R28 R28 K6 ["children"]
      230 GETTABLE                         R27 R28 R16
      231 CALL                             R26 1 1
      232 DUPTABLE                         R28 K22 [{"name", "children", "attributes", "index"}]
      233 GETTABLEKS                       R29 R15 K3 ["name"]
      235 SETTABLEKS                       R29 R28 K3 ["name"]
      237 SETTABLEKS                       R24 R28 K6 ["children"]
      239 GETTABLEKS                       R29 R15 K20 ["attributes"]
      241 SETTABLEKS                       R29 R28 K20 ["attributes"]
      243 GETTABLEKS                       R29 R15 K21 ["index"]
      245 SETTABLEKS                       R29 R28 K21 ["index"]
      247 NAMECALL                         R26 R26 K23 ["set"]
      249 CALL                             R26 2 0
      250 JUMP                             ; [+19]
      251 JUMPIFNOT                        R14 ; [+11]
      252 GETUPVAL                         R24 5
      253 MOVE                             R25 R17
      254 MOVE                             R26 R18
      255 MOVE                             R27 R19
      256 MOVE                             R28 R22
      257 GETTABLEKS                       R29 R6 K2 ["blockIndex"]
      259 MOVE                             R30 R2
      260 MOVE                             R31 R3
      261 CALL                             R24 7 0
      262 JUMP                             ; [+7]
      263 MOVE                             R24 R3
      264 MOVE                             R25 R11
      265 CALL                             R24 1 1
      266 MOVE                             R26 R22
      267 NAMECALL                         R24 R24 K23 ["set"]
      269 CALL                             R24 2 0
      270 JUMPIFNOT                        R23 ; [+118]
      271 GETTABLEKS                       R25 R6 K2 ["blockIndex"]
      273 MOVE                             R26 R22
      274 LOADN                            R27 0
      275 LOADN                            R28 0
      276 NEWCLOSURE                       R29 P1
      277 CAPTURE                          REF R27
      278 CAPTURE                          VAL R20
      279 CAPTURE                          REF R28
      280 CAPTURE                          UPVAL U0
      281 CAPTURE                          VAL R25
      282 CAPTURE                          VAL R29
      283 MOVE                             R30 R29
      284 MOVE                             R31 R26
      285 CALL                             R30 1 1
      286 JUMPIFNOT                        R30 ; [+3]
      287 MOVE                             R24 R30
      288 CLOSEUPVALS                      R27
      289 JUMP                             ; [+15]
      290 GETUPVAL                         R31 0
      291 GETTABLEKS                       R31 R31 K24 ["createCollapsed"]
      293 MOVE                             R32 R25
      294 LOADN                            R34 1
      295 FASTCALL2                        MATH_MAX R34 R27 ; [+4]
      297 MOVE                             R35 R27
      298 GETIMPORT                        R33 K27 [math.max]
      300 CALL                             R33 2 1
      301 SUB                              R34 R20 R28
      302 CALL                             R31 3 1
      303 MOVE                             R24 R31
      304 CLOSEUPVALS                      R27
      305 GETTABLEKS                       R26 R6 K2 ["blockIndex"]
      307 MOVE                             R27 R22
      308 LOADN                            R28 0
      309 LOADN                            R29 0
      310 NEWCLOSURE                       R30 P1
      311 CAPTURE                          REF R28
      312 CAPTURE                          VAL R21
      313 CAPTURE                          REF R29
      314 CAPTURE                          UPVAL U0
      315 CAPTURE                          VAL R26
      316 CAPTURE                          VAL R30
      317 MOVE                             R31 R30
      318 MOVE                             R32 R27
      319 CALL                             R31 1 1
      320 JUMPIFNOT                        R31 ; [+3]
      321 MOVE                             R25 R31
      322 CLOSEUPVALS                      R28
      323 JUMP                             ; [+15]
      324 GETUPVAL                         R32 0
      325 GETTABLEKS                       R32 R32 K24 ["createCollapsed"]
      327 MOVE                             R33 R26
      328 LOADN                            R35 1
      329 FASTCALL2                        MATH_MAX R35 R28 ; [+4]
      331 MOVE                             R36 R28
      332 GETIMPORT                        R34 K27 [math.max]
      334 CALL                             R34 2 1
      335 SUB                              R35 R21 R29
      336 CALL                             R32 3 1
      337 MOVE                             R25 R32
      338 CLOSEUPVALS                      R28
      339 MOVE                             R26 R4
      340 DUPTABLE                         R27 K30 [{"anchor", "focus"}]
      341 DUPTABLE                         R28 K33 [{"blockIndex", "path", "segmentIndex", "charOffset"}]
      342 GETTABLEKS                       R29 R24 K28 ["anchor"]
      344 GETTABLEKS                       R29 R29 K2 ["blockIndex"]
      346 SETTABLEKS                       R29 R28 K2 ["blockIndex"]
      348 SETTABLEKS                       R12 R28 K5 ["path"]
      350 GETTABLEKS                       R29 R24 K28 ["anchor"]
      352 GETTABLEKS                       R29 R29 K31 ["segmentIndex"]
      354 SETTABLEKS                       R29 R28 K31 ["segmentIndex"]
      356 GETTABLEKS                       R29 R24 K28 ["anchor"]
      358 GETTABLEKS                       R29 R29 K32 ["charOffset"]
      360 SETTABLEKS                       R29 R28 K32 ["charOffset"]
      362 SETTABLEKS                       R28 R27 K28 ["anchor"]
      364 DUPTABLE                         R28 K33 [{"blockIndex", "path", "segmentIndex", "charOffset"}]
      365 GETTABLEKS                       R29 R25 K28 ["anchor"]
      367 GETTABLEKS                       R29 R29 K2 ["blockIndex"]
      369 SETTABLEKS                       R29 R28 K2 ["blockIndex"]
      371 SETTABLEKS                       R12 R28 K5 ["path"]
      373 GETTABLEKS                       R29 R25 K28 ["anchor"]
      375 GETTABLEKS                       R29 R29 K31 ["segmentIndex"]
      377 SETTABLEKS                       R29 R28 K31 ["segmentIndex"]
      379 GETTABLEKS                       R29 R25 K28 ["anchor"]
      381 GETTABLEKS                       R29 R29 K32 ["charOffset"]
      383 SETTABLEKS                       R29 R28 K32 ["charOffset"]
      385 SETTABLEKS                       R28 R27 K29 ["focus"]
      387 CALL                             R26 1 0
      388 RETURN                           R0 0
      389 LOADN                            R24 0
      390 LOADN                            R25 0
      391 MOVE                             R26 R22
      392 LOADNIL                          R27
      393 LOADNIL                          R28
      394 FORGPREP                         R26
      395 GETTABLEKS                       R31 R30 K3 ["name"]
      397 JUMPIFNOTEQKS                    R31 K12 ["STYLED_TEXT"] ; [+12]
      399 JUMPIFNOTEQ                      R24 R20 ; [+10]
      401 GETUPVAL                         R31 6
      402 NEWTABLE                         R32 0 1
      404 MOVE                             R33 R30
      405 SETLIST                          R32 R33 1 [1]
      407 CALL                             R31 1 1
      408 ADD                              R25 R25 R31
      409 JUMP                             ; [+14]
      410 GETUPVAL                         R31 6
      411 NEWTABLE                         R32 0 1
      413 MOVE                             R33 R30
      414 SETLIST                          R32 R33 1 [1]
      416 CALL                             R31 1 1
      417 ADD                              R25 R25 R31
      418 GETUPVAL                         R31 7
      419 MOVE                             R32 R30
      420 CALL                             R31 1 1
      421 ADD                              R24 R24 R31
      422 FORGLOOP                         R26 2 ; [-28]
      424 MOVE                             R26 R4
      425 GETUPVAL                         R27 0
      426 GETTABLEKS                       R27 R27 K24 ["createCollapsed"]
      428 GETTABLEKS                       R28 R6 K2 ["blockIndex"]
      430 ADDK                             R29 R25 K34 [1]
      431 LOADN                            R30 0
      432 MOVE                             R31 R12
      433 CALL                             R27 4 -1
      434 CALL                             R26 -1 0
      435 RETURN                           R0 0

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
        3 LOADK                            R2 K2 ["BloxMarkdown"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BloxCodeEditor"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["EditorState"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R2 K9 ["RichTextHitTest"]
       25 NEWTABLE                         R5 16 0
       27 DUPCLOSURE                       R6 K10 [PROTO_0]
       28 CAPTURE                          VAL R6
       29 DUPCLOSURE                       R7 K11 [PROTO_2]
       30 DUPCLOSURE                       R8 K12 [PROTO_4]
       31 CAPTURE                          VAL R3
       32 DUPCLOSURE                       R9 K13 [PROTO_5]
       33 CAPTURE                          VAL R9
       34 DUPCLOSURE                       R10 K14 [PROTO_6]
       35 DUPCLOSURE                       R11 K15 [PROTO_7]
       36 DUPCLOSURE                       R12 K16 [PROTO_8]
       37 DUPCLOSURE                       R13 K17 [PROTO_9]
       38 DUPCLOSURE                       R14 K18 [PROTO_10]
       39 CAPTURE                          VAL R14
       40 DUPCLOSURE                       R15 K19 [PROTO_11]
       41 CAPTURE                          VAL R14
       42 DUPCLOSURE                       R16 K20 [PROTO_12]
       43 CAPTURE                          VAL R14
       44 CAPTURE                          VAL R3
       45 DUPCLOSURE                       R17 K21 [PROTO_13]
       46 CAPTURE                          VAL R14
       47 CAPTURE                          VAL R3
       48 DUPCLOSURE                       R18 K22 [PROTO_14]
       49 DUPCLOSURE                       R19 K23 [PROTO_15]
       50 DUPCLOSURE                       R20 K24 [PROTO_16]
       51 DUPCLOSURE                       R21 K25 [PROTO_17]
       52 CAPTURE                          VAL R4
       53 DUPCLOSURE                       R22 K26 [PROTO_18]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 DUPCLOSURE                       R23 K27 [PROTO_19]
       57 CAPTURE                          VAL R16
       58 CAPTURE                          VAL R14
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R17
       61 CAPTURE                          VAL R22
       62 CAPTURE                          VAL R8
       63 DUPCLOSURE                       R24 K28 [PROTO_20]
       64 CAPTURE                          VAL R14
       65 CAPTURE                          VAL R24
       66 DUPCLOSURE                       R25 K29 [PROTO_21]
       67 CAPTURE                          VAL R14
       68 CAPTURE                          VAL R25
       69 DUPCLOSURE                       R26 K30 [PROTO_22]
       70 CAPTURE                          VAL R14
       71 CAPTURE                          VAL R26
       72 DUPCLOSURE                       R27 K31 [PROTO_23]
       73 DUPCLOSURE                       R28 K32 [PROTO_24]
       74 DUPCLOSURE                       R29 K33 [PROTO_25]
       75 CAPTURE                          VAL R14
       76 DUPCLOSURE                       R30 K34 [PROTO_26]
       77 CAPTURE                          VAL R14
       78 CAPTURE                          VAL R26
       79 DUPCLOSURE                       R31 K35 [PROTO_27]
       80 CAPTURE                          VAL R26
       81 DUPCLOSURE                       R32 K36 [PROTO_28]
       82 CAPTURE                          VAL R12
       83 DUPCLOSURE                       R33 K37 [PROTO_29]
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R28
       86 CAPTURE                          VAL R25
       87 CAPTURE                          VAL R21
       88 CAPTURE                          VAL R22
       89 CAPTURE                          VAL R32
       90 CAPTURE                          VAL R26
       91 CAPTURE                          VAL R27
       92 CAPTURE                          VAL R19
       93 DUPCLOSURE                       R34 K38 [PROTO_30]
       94 CAPTURE                          VAL R33
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R25
       97 CAPTURE                          VAL R26
       98 CAPTURE                          VAL R28
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R24
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R19
      104 CAPTURE                          VAL R21
      105 CAPTURE                          VAL R22
      106 CAPTURE                          VAL R8
      107 SETTABLEKS                       R34 R5 K39 ["handleTextInput"]
      109 DUPCLOSURE                       R34 K40 [PROTO_31]
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R33
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R28
      114 CAPTURE                          VAL R25
      115 CAPTURE                          VAL R19
      116 CAPTURE                          VAL R21
      117 CAPTURE                          VAL R22
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R27
      121 CAPTURE                          VAL R23
      122 SETTABLEKS                       R34 R5 K41 ["handleBackspace"]
      124 DUPCLOSURE                       R34 K42 [PROTO_32]
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R33
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R28
      130 CAPTURE                          VAL R25
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R27
      133 CAPTURE                          VAL R21
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R8
      136 SETTABLEKS                       R34 R5 K43 ["handleDelete"]
      138 DUPCLOSURE                       R34 K44 [PROTO_33]
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R33
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R23
      143 CAPTURE                          VAL R26
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R28
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R22
      149 SETTABLEKS                       R34 R5 K45 ["handleEnter"]
      151 DUPCLOSURE                       R34 K46 [PROTO_34]
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R29
      155 CAPTURE                          VAL R30
      156 CAPTURE                          VAL R31
      157 CAPTURE                          VAL R19
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R14
      160 SETTABLEKS                       R34 R5 K47 ["handleToggleStyle"]
      162 DUPCLOSURE                       R34 K48 [PROTO_35]
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R23
      170 SETTABLEKS                       R34 R5 K49 ["handleArrowLeft"]
      172 DUPCLOSURE                       R34 K50 [PROTO_36]
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R23
      180 SETTABLEKS                       R34 R5 K51 ["handleArrowRight"]
      182 DUPCLOSURE                       R34 K52 [PROTO_37]
      183 DUPCLOSURE                       R35 K53 [PROTO_38]
      184 DUPCLOSURE                       R36 K54 [PROTO_39]
      185 CAPTURE                          VAL R4
      186 DUPCLOSURE                       R37 K55 [PROTO_40]
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R34
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R16
      194 SETTABLEKS                       R37 R5 K56 ["handleArrowUp"]
      196 DUPCLOSURE                       R37 K57 [PROTO_41]
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R34
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R16
      204 SETTABLEKS                       R37 R5 K58 ["handleArrowDown"]
      206 RETURN                           R5 1
