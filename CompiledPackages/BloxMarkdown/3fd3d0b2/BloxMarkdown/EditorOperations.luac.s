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
        5 LOADN                            R4 0
        6 MOVE                             R6 R5
        7 LOADNIL                          R7
        8 LOADNIL                          R8
        9 FORGPREP                         R6
       10 GETUPVAL                         R11 0
       11 MOVE                             R12 R10
       12 CALL                             R11 1 1
       13 ADD                              R4 R4 R11
       14 FORGLOOP                         R6 2 ; [-5]
       16 FASTCALL2                        MATH_MIN R3 R4 ; [+5]
       18 MOVE                             R6 R3
       19 MOVE                             R7 R4
       20 GETIMPORT                        R5 K3 [math.min]
       22 CALL                             R5 2 1
       23 GETTABLEKS                       R7 R1 K0 ["children"]
       25 JUMPIF                           R7 ; [+2]
       26 NEWTABLE                         R7 0 0
       28 LOADN                            R8 0
       29 LOADN                            R9 0
       30 NEWCLOSURE                       R10 P0
       31 CAPTURE                          REF R8
       32 CAPTURE                          VAL R5
       33 CAPTURE                          REF R9
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R10
       37 MOVE                             R11 R10
       38 MOVE                             R12 R7
       39 CALL                             R11 1 1
       40 JUMPIFNOT                        R11 ; [+3]
       41 MOVE                             R6 R11
       42 CLOSEUPVALS                      R8
       43 JUMP                             ; [+15]
       44 GETUPVAL                         R12 1
       45 GETTABLEKS                       R12 R12 K4 ["createCollapsed"]
       47 MOVE                             R13 R0
       48 LOADN                            R15 1
       49 FASTCALL2                        MATH_MAX R15 R8 ; [+4]
       51 MOVE                             R16 R8
       52 GETIMPORT                        R14 K6 [math.max]
       54 CALL                             R14 2 1
       55 SUB                              R15 R5 R9
       56 CALL                             R12 3 1
       57 MOVE                             R6 R12
       58 CLOSEUPVALS                      R8
       59 GETUPVAL                         R7 1
       60 GETTABLEKS                       R7 R7 K4 ["createCollapsed"]
       62 MOVE                             R8 R0
       63 GETTABLEKS                       R9 R6 K7 ["anchor"]
       65 GETTABLEKS                       R9 R9 K8 ["segmentIndex"]
       67 GETTABLEKS                       R10 R6 K7 ["anchor"]
       69 GETTABLEKS                       R10 R10 K9 ["charOffset"]
       71 NEWTABLE                         R11 0 1
       73 MOVE                             R12 R2
       74 SETLIST                          R11 R12 1 [1]
       76 CALL                             R7 4 -1
       77 RETURN                           R7 -1

PROTO_13:
        0 GETTABLEKS                       R6 R1 K0 ["children"]
        2 JUMPIF                           R6 ; [+2]
        3 NEWTABLE                         R6 0 0
        5 LOADN                            R5 0
        6 MOVE                             R7 R6
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 GETUPVAL                         R12 0
       11 MOVE                             R13 R11
       12 CALL                             R12 1 1
       13 ADD                              R5 R5 R12
       14 FORGLOOP                         R7 2 ; [-5]
       16 FASTCALL2                        MATH_MIN R4 R5 ; [+5]
       18 MOVE                             R7 R4
       19 MOVE                             R8 R5
       20 GETIMPORT                        R6 K3 [math.min]
       22 CALL                             R6 2 1
       23 GETTABLEKS                       R8 R1 K0 ["children"]
       25 JUMPIF                           R8 ; [+2]
       26 NEWTABLE                         R8 0 0
       28 LOADN                            R9 0
       29 LOADN                            R10 0
       30 NEWCLOSURE                       R11 P0
       31 CAPTURE                          REF R9
       32 CAPTURE                          VAL R6
       33 CAPTURE                          REF R10
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R11
       37 MOVE                             R12 R11
       38 MOVE                             R13 R8
       39 CALL                             R12 1 1
       40 JUMPIFNOT                        R12 ; [+3]
       41 MOVE                             R7 R12
       42 CLOSEUPVALS                      R9
       43 JUMP                             ; [+15]
       44 GETUPVAL                         R13 1
       45 GETTABLEKS                       R13 R13 K4 ["createCollapsed"]
       47 MOVE                             R14 R0
       48 LOADN                            R16 1
       49 FASTCALL2                        MATH_MAX R16 R9 ; [+4]
       51 MOVE                             R17 R9
       52 GETIMPORT                        R15 K6 [math.max]
       54 CALL                             R15 2 1
       55 SUB                              R16 R6 R10
       56 CALL                             R13 3 1
       57 MOVE                             R7 R13
       58 CLOSEUPVALS                      R9
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K4 ["createCollapsed"]
       62 MOVE                             R9 R0
       63 GETTABLEKS                       R10 R7 K7 ["anchor"]
       65 GETTABLEKS                       R10 R10 K8 ["segmentIndex"]
       67 GETTABLEKS                       R11 R7 K7 ["anchor"]
       69 GETTABLEKS                       R11 R11 K9 ["charOffset"]
       71 NEWTABLE                         R12 0 2
       73 MOVE                             R13 R2
       74 MOVE                             R14 R3
       75 SETLIST                          R12 R13 2 [1]
       77 CALL                             R8 4 -1
       78 RETURN                           R8 -1

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
        2 JUMPIFNOTEQKS                    R4 K1 ["LIST"] ; [+117]
        4 GETTABLEKS                       R4 R1 K2 ["children"]
        6 JUMPIF                           R4 ; [+2]
        7 NEWTABLE                         R4 0 0
        9 JUMPIFNOT                        R2 ; [+85]
       10 LENGTH                           R5 R4
       11 LOADN                            R6 0
       12 JUMPIFNOTLT                      R6 R5 ; [+82]
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
       29 LOADN                            R6 0
       30 MOVE                             R8 R7
       31 LOADNIL                          R9
       32 LOADNIL                          R10
       33 FORGPREP                         R8
       34 GETUPVAL                         R13 1
       35 MOVE                             R14 R12
       36 CALL                             R13 1 1
       37 ADD                              R6 R6 R13
       38 FORGLOOP                         R8 2 ; [-5]
       40 GETTABLEKS                       R8 R5 K2 ["children"]
       42 JUMPIF                           R8 ; [+2]
       43 NEWTABLE                         R8 0 0
       45 LOADN                            R9 0
       46 LOADN                            R10 0
       47 NEWCLOSURE                       R11 P0
       48 CAPTURE                          REF R9
       49 CAPTURE                          VAL R6
       50 CAPTURE                          REF R10
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R11
       54 MOVE                             R12 R11
       55 MOVE                             R13 R8
       56 CALL                             R12 1 1
       57 JUMPIFNOT                        R12 ; [+3]
       58 MOVE                             R7 R12
       59 CLOSEUPVALS                      R9
       60 JUMP                             ; [+15]
       61 GETUPVAL                         R13 2
       62 GETTABLEKS                       R13 R13 K3 ["createCollapsed"]
       64 MOVE                             R14 R0
       65 LOADN                            R16 1
       66 FASTCALL2                        MATH_MAX R16 R9 ; [+4]
       68 MOVE                             R17 R9
       69 GETIMPORT                        R15 K6 [math.max]
       71 CALL                             R15 2 1
       72 SUB                              R16 R6 R10
       73 CALL                             R13 3 1
       74 MOVE                             R7 R13
       75 CLOSEUPVALS                      R9
       76 GETUPVAL                         R8 2
       77 GETTABLEKS                       R8 R8 K3 ["createCollapsed"]
       79 MOVE                             R9 R0
       80 GETTABLEKS                       R10 R7 K7 ["anchor"]
       82 GETTABLEKS                       R10 R10 K8 ["segmentIndex"]
       84 GETTABLEKS                       R11 R7 K7 ["anchor"]
       86 GETTABLEKS                       R11 R11 K9 ["charOffset"]
       88 NEWTABLE                         R12 0 1
       90 LENGTH                           R13 R4
       91 SETLIST                          R12 R13 1 [1]
       93 CALL                             R8 4 -1
       94 RETURN                           R8 -1
       95 LENGTH                           R5 R4
       96 LOADN                            R6 0
       97 JUMPIFNOTLT                      R6 R5 ; [+22]
       99 JUMPIFNOT                        R3 ; [+7]
      100 GETUPVAL                         R5 0
      101 MOVE                             R6 R0
      102 GETTABLEN                        R7 R4 1
      103 LOADN                            R8 1
      104 MOVE                             R9 R3
      105 CALL                             R5 4 -1
      106 RETURN                           R5 -1
      107 GETUPVAL                         R5 2
      108 GETTABLEKS                       R5 R5 K3 ["createCollapsed"]
      110 MOVE                             R6 R0
      111 LOADN                            R7 1
      112 LOADN                            R8 0
      113 NEWTABLE                         R9 0 1
      115 LOADN                            R10 1
      116 SETLIST                          R9 R10 1 [1]
      118 CALL                             R5 4 -1
      119 RETURN                           R5 -1
      120 GETTABLEKS                       R5 R1 K0 ["name"]
      122 JUMPIFEQKS                       R5 K10 ["TABLE"] ; [+2]
      124 LOADB                            R4 0 +1
      125 LOADB                            R4 1
      126 JUMPIFNOT                        R4 ; [+153]
      127 GETTABLEKS                       R4 R1 K2 ["children"]
      129 JUMPIF                           R4 ; [+2]
      130 NEWTABLE                         R4 0 0
      132 LENGTH                           R5 R4
      133 JUMPIFNOTEQKN                    R5 K11 [0] ; [+9]
      135 GETUPVAL                         R5 2
      136 GETTABLEKS                       R5 R5 K3 ["createCollapsed"]
      138 MOVE                             R6 R0
      139 LOADN                            R7 1
      140 LOADN                            R8 0
      141 CALL                             R5 3 -1
      142 RETURN                           R5 -1
      143 JUMPIFNOT                        R2 ; [+95]
      144 LENGTH                           R6 R4
      145 GETTABLE                         R5 R4 R6
      146 GETTABLEKS                       R6 R5 K2 ["children"]
      148 JUMPIF                           R6 ; [+2]
      149 NEWTABLE                         R6 0 0
      151 LENGTH                           R7 R6
      152 LOADN                            R8 0
      153 JUMPIFNOTLT                      R8 R7 ; [+118]
      155 LENGTH                           R8 R6
      156 GETTABLE                         R7 R6 R8
      157 JUMPIFNOT                        R3 ; [+8]
      158 GETUPVAL                         R8 3
      159 MOVE                             R9 R0
      160 MOVE                             R10 R7
      161 LENGTH                           R11 R4
      162 LENGTH                           R12 R6
      163 MOVE                             R13 R3
      164 CALL                             R8 5 -1
      165 RETURN                           R8 -1
      166 GETTABLEKS                       R9 R7 K2 ["children"]
      168 JUMPIF                           R9 ; [+2]
      169 NEWTABLE                         R9 0 0
      171 LOADN                            R8 0
      172 MOVE                             R10 R9
      173 LOADNIL                          R11
      174 LOADNIL                          R12
      175 FORGPREP                         R10
      176 GETUPVAL                         R15 1
      177 MOVE                             R16 R14
      178 CALL                             R15 1 1
      179 ADD                              R8 R8 R15
      180 FORGLOOP                         R10 2 ; [-5]
      182 GETTABLEKS                       R10 R7 K2 ["children"]
      184 JUMPIF                           R10 ; [+2]
      185 NEWTABLE                         R10 0 0
      187 LOADN                            R11 0
      188 LOADN                            R12 0
      189 NEWCLOSURE                       R13 P0
      190 CAPTURE                          REF R11
      191 CAPTURE                          VAL R8
      192 CAPTURE                          REF R12
      193 CAPTURE                          UPVAL U2
      194 CAPTURE                          VAL R0
      195 CAPTURE                          VAL R13
      196 MOVE                             R14 R13
      197 MOVE                             R15 R10
      198 CALL                             R14 1 1
      199 JUMPIFNOT                        R14 ; [+3]
      200 MOVE                             R9 R14
      201 CLOSEUPVALS                      R11
      202 JUMP                             ; [+15]
      203 GETUPVAL                         R15 2
      204 GETTABLEKS                       R15 R15 K3 ["createCollapsed"]
      206 MOVE                             R16 R0
      207 LOADN                            R18 1
      208 FASTCALL2                        MATH_MAX R18 R11 ; [+4]
      210 MOVE                             R19 R11
      211 GETIMPORT                        R17 K6 [math.max]
      213 CALL                             R17 2 1
      214 SUB                              R18 R8 R12
      215 CALL                             R15 3 1
      216 MOVE                             R9 R15
      217 CLOSEUPVALS                      R11
      218 GETUPVAL                         R10 2
      219 GETTABLEKS                       R10 R10 K3 ["createCollapsed"]
      221 MOVE                             R11 R0
      222 GETTABLEKS                       R12 R9 K7 ["anchor"]
      224 GETTABLEKS                       R12 R12 K8 ["segmentIndex"]
      226 GETTABLEKS                       R13 R9 K7 ["anchor"]
      228 GETTABLEKS                       R13 R13 K9 ["charOffset"]
      230 NEWTABLE                         R14 0 2
      232 LENGTH                           R15 R4
      233 LENGTH                           R16 R6
      234 SETLIST                          R14 R15 2 [1]
      236 CALL                             R10 4 -1
      237 RETURN                           R10 -1
      238 JUMP                             ; [+33]
      239 GETTABLEN                        R5 R4 1
      240 GETTABLEKS                       R6 R5 K2 ["children"]
      242 JUMPIF                           R6 ; [+2]
      243 NEWTABLE                         R6 0 0
      245 LENGTH                           R7 R6
      246 LOADN                            R8 0
      247 JUMPIFNOTLT                      R8 R7 ; [+24]
      249 JUMPIFNOT                        R3 ; [+8]
      250 GETUPVAL                         R7 3
      251 MOVE                             R8 R0
      252 GETTABLEN                        R9 R6 1
      253 LOADN                            R10 1
      254 LOADN                            R11 1
      255 MOVE                             R12 R3
      256 CALL                             R7 5 -1
      257 RETURN                           R7 -1
      258 GETUPVAL                         R7 2
      259 GETTABLEKS                       R7 R7 K3 ["createCollapsed"]
      261 MOVE                             R8 R0
      262 LOADN                            R9 1
      263 LOADN                            R10 0
      264 NEWTABLE                         R11 0 2
      266 LOADN                            R12 1
      267 LOADN                            R13 1
      268 SETLIST                          R11 R12 2 [1]
      270 CALL                             R7 4 -1
      271 RETURN                           R7 -1
      272 GETUPVAL                         R5 2
      273 GETTABLEKS                       R5 R5 K3 ["createCollapsed"]
      275 MOVE                             R6 R0
      276 LOADN                            R7 1
      277 LOADN                            R8 0
      278 CALL                             R5 3 -1
      279 RETURN                           R5 -1
      280 GETTABLEKS                       R5 R1 K0 ["name"]
      282 JUMPIFEQKS                       R5 K12 ["CODE_BLOCK"] ; [+2]
      284 LOADB                            R4 0 +1
      285 LOADB                            R4 1
      286 JUMPIFNOT                        R4 ; [+31]
      287 GETTABLEKS                       R5 R1 K14 ["text"]
      289 ORK                              R4 R5 K13 [""]
      290 JUMPIFNOT                        R2 ; [+6]
      291 GETUPVAL                         R5 4
      292 MOVE                             R6 R0
      293 MOVE                             R7 R4
      294 LENGTH                           R8 R4
      295 CALL                             R5 3 -1
      296 RETURN                           R5 -1
      297 JUMPIFNOT                        R3 ; [+12]
      298 GETUPVAL                         R5 4
      299 MOVE                             R6 R0
      300 MOVE                             R7 R4
      301 LENGTH                           R10 R4
      302 FASTCALL2                        MATH_MIN R3 R10 ; [+4]
      304 MOVE                             R9 R3
      305 GETIMPORT                        R8 K16 [math.min]
      307 CALL                             R8 2 1
      308 CALL                             R5 3 -1
      309 RETURN                           R5 -1
      310 GETUPVAL                         R5 2
      311 GETTABLEKS                       R5 R5 K3 ["createCollapsed"]
      313 MOVE                             R6 R0
      314 LOADN                            R7 1
      315 LOADN                            R8 0
      316 CALL                             R5 3 -1
      317 RETURN                           R5 -1
      318 JUMPIFNOT                        R2 ; [+59]
      319 GETTABLEKS                       R5 R1 K0 ["name"]
      321 LOADB                            R4 1
      322 JUMPIFEQKS                       R5 K17 ["PARAGRAPH"] ; [+11]
      324 LOADB                            R4 1
      325 JUMPIFEQKS                       R5 K18 ["HEADING"] ; [+8]
      327 LOADB                            R4 1
      328 JUMPIFEQKS                       R5 K19 ["QUOTE"] ; [+5]
      330 JUMPIFEQKS                       R5 K20 ["LIST_ITEM"] ; [+2]
      332 LOADB                            R4 0 +1
      333 LOADB                            R4 1
      334 JUMPIFNOT                        R4 ; [+43]
      335 GETTABLEKS                       R5 R1 K2 ["children"]
      337 JUMPIF                           R5 ; [+2]
      338 NEWTABLE                         R5 0 0
      340 LOADN                            R4 0
      341 MOVE                             R6 R5
      342 LOADNIL                          R7
      343 LOADNIL                          R8
      344 FORGPREP                         R6
      345 GETUPVAL                         R11 1
      346 MOVE                             R12 R10
      347 CALL                             R11 1 1
      348 ADD                              R4 R4 R11
      349 FORGLOOP                         R6 2 ; [-5]
      351 JUMPIFNOT                        R3 ; [+16]
      352 GETUPVAL                         R5 5
      353 MOVE                             R6 R0
      354 GETTABLEKS                       R7 R1 K2 ["children"]
      356 JUMPIF                           R7 ; [+2]
      357 NEWTABLE                         R7 0 0
      359 FASTCALL2                        MATH_MIN R3 R4 ; [+5]
      361 MOVE                             R9 R3
      362 MOVE                             R10 R4
      363 GETIMPORT                        R8 K16 [math.min]
      365 CALL                             R8 2 1
      366 CALL                             R5 3 -1
      367 RETURN                           R5 -1
      368 GETUPVAL                         R5 5
      369 MOVE                             R6 R0
      370 GETTABLEKS                       R7 R1 K2 ["children"]
      372 JUMPIF                           R7 ; [+2]
      373 NEWTABLE                         R7 0 0
      375 MOVE                             R8 R4
      376 CALL                             R5 3 -1
      377 RETURN                           R5 -1
      378 JUMPIFNOT                        R3 ; [+48]
      379 GETTABLEKS                       R5 R1 K0 ["name"]
      381 LOADB                            R4 1
      382 JUMPIFEQKS                       R5 K17 ["PARAGRAPH"] ; [+11]
      384 LOADB                            R4 1
      385 JUMPIFEQKS                       R5 K18 ["HEADING"] ; [+8]
      387 LOADB                            R4 1
      388 JUMPIFEQKS                       R5 K19 ["QUOTE"] ; [+5]
      390 JUMPIFEQKS                       R5 K20 ["LIST_ITEM"] ; [+2]
      392 LOADB                            R4 0 +1
      393 LOADB                            R4 1
      394 JUMPIFNOT                        R4 ; [+32]
      395 GETTABLEKS                       R5 R1 K2 ["children"]
      397 JUMPIF                           R5 ; [+2]
      398 NEWTABLE                         R5 0 0
      400 LOADN                            R4 0
      401 MOVE                             R6 R5
      402 LOADNIL                          R7
      403 LOADNIL                          R8
      404 FORGPREP                         R6
      405 GETUPVAL                         R11 1
      406 MOVE                             R12 R10
      407 CALL                             R11 1 1
      408 ADD                              R4 R4 R11
      409 FORGLOOP                         R6 2 ; [-5]
      411 GETUPVAL                         R5 5
      412 MOVE                             R6 R0
      413 GETTABLEKS                       R7 R1 K2 ["children"]
      415 JUMPIF                           R7 ; [+2]
      416 NEWTABLE                         R7 0 0
      418 FASTCALL2                        MATH_MIN R3 R4 ; [+5]
      420 MOVE                             R9 R3
      421 MOVE                             R10 R4
      422 GETIMPORT                        R8 K16 [math.min]
      424 CALL                             R8 2 1
      425 CALL                             R5 3 -1
      426 RETURN                           R5 -1
      427 GETUPVAL                         R4 2
      428 GETTABLEKS                       R4 R4 K3 ["createCollapsed"]
      430 MOVE                             R5 R0
      431 LOADN                            R6 1
      432 LOADN                            R7 0
      433 CALL                             R4 3 -1
      434 RETURN                           R4 -1

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
       16 JUMP                             ; [+182]
       17 GETTABLEKS                       R11 R10 K3 ["name"]
       19 JUMPIFNOTEQKS                    R11 K4 ["TEXT"] ; [+44]
       21 GETTABLEKS                       R12 R10 K6 ["text"]
       23 ORK                              R11 R12 K5 [""]
       24 LENGTH                           R13 R11
       25 ADD                              R12 R4 R13
       26 JUMPIFNOTLE                      R1 R12 ; [+28]
       28 SUB                              R13 R1 R4
       29 LOADN                            R17 1
       30 MOVE                             R18 R13
       31 NAMECALL                         R15 R11 K7 ["sub"]
       33 CALL                             R15 3 1
       34 MOVE                             R16 R2
       35 ADDK                             R19 R13 K8 [1]
       36 NAMECALL                         R17 R11 K7 ["sub"]
       38 CALL                             R17 2 1
       39 CONCAT                           R14 R15 R17
       40 DUPTABLE                         R17 K10 [{["name"] = "TEXT", ["children"], ["text"]}]
       41 NEWTABLE                         R18 0 0
       43 SETTABLEKS                       R18 R17 K9 ["children"]
       45 SETTABLEKS                       R14 R17 K6 ["text"]
       47 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
       49 MOVE                             R16 R3
       50 GETIMPORT                        R15 K2 [table.insert]
       52 CALL                             R15 2 0
       53 LOADB                            R5 1
       54 JUMP                             ; [+144]
       55 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       57 MOVE                             R14 R3
       58 MOVE                             R15 R10
       59 GETIMPORT                        R13 K2 [table.insert]
       61 CALL                             R13 2 0
       62 MOVE                             R4 R12
       63 JUMP                             ; [+135]
       64 GETTABLEKS                       R11 R10 K3 ["name"]
       66 JUMPIFEQKS                       R11 K11 ["STYLED_TEXT"] ; [+5]
       68 GETTABLEKS                       R11 R10 K3 ["name"]
       70 JUMPIFNOTEQKS                    R11 K12 ["LINK"] ; [+83]
       72 GETTABLEKS                       R12 R10 K9 ["children"]
       74 JUMPIF                           R12 ; [+2]
       75 NEWTABLE                         R12 0 0
       77 LOADN                            R11 0
       78 MOVE                             R13 R12
       79 LOADNIL                          R14
       80 LOADNIL                          R15
       81 FORGPREP                         R13
       82 GETUPVAL                         R18 0
       83 MOVE                             R19 R17
       84 CALL                             R18 1 1
       85 ADD                              R11 R11 R18
       86 FORGLOOP                         R13 2 ; [-5]
       88 ADD                              R12 R4 R11
       89 JUMPIFNOTLT                      R4 R1 ; [+27]
       91 JUMPIFNOTLT                      R1 R12 ; [+25]
       93 GETUPVAL                         R13 1
       94 GETTABLEKS                       R14 R10 K9 ["children"]
       96 JUMPIF                           R14 ; [+2]
       97 NEWTABLE                         R14 0 0
       99 SUB                              R15 R1 R4
      100 MOVE                             R16 R2
      101 CALL                             R13 3 1
      102 GETIMPORT                        R14 K14 [table.clone]
      104 MOVE                             R15 R10
      105 CALL                             R14 1 1
      106 SETTABLEKS                       R13 R14 K9 ["children"]
      108 FASTCALL2                        TABLE_INSERT R3 R14 ; [+5]
      110 MOVE                             R16 R3
      111 MOVE                             R17 R14
      112 GETIMPORT                        R15 K2 [table.insert]
      114 CALL                             R15 2 0
      115 LOADB                            R5 1
      116 JUMP                             ; [+82]
      117 JUMPIFNOTLE                      R1 R4 ; [+27]
      119 LENGTH                           R13 R2
      120 LOADN                            R14 0
      121 JUMPIFNOTLT                      R14 R13 ; [+14]
      123 DUPTABLE                         R15 K10 [{["name"] = "TEXT", ["children"], ["text"]}]
      124 NEWTABLE                         R16 0 0
      126 SETTABLEKS                       R16 R15 K9 ["children"]
      128 SETTABLEKS                       R2 R15 K6 ["text"]
      130 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
      132 MOVE                             R14 R3
      133 GETIMPORT                        R13 K2 [table.insert]
      135 CALL                             R13 2 0
      136 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      138 MOVE                             R14 R3
      139 MOVE                             R15 R10
      140 GETIMPORT                        R13 K2 [table.insert]
      142 CALL                             R13 2 0
      143 LOADB                            R5 1
      144 JUMP                             ; [+54]
      145 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      147 MOVE                             R14 R3
      148 MOVE                             R15 R10
      149 GETIMPORT                        R13 K2 [table.insert]
      151 CALL                             R13 2 0
      152 MOVE                             R4 R12
      153 JUMP                             ; [+45]
      154 GETTABLEKS                       R11 R10 K3 ["name"]
      156 JUMPIFNOTEQKS                    R11 K15 ["BREAK"] ; [+35]
      158 ADDK                             R11 R4 K8 [1]
      159 JUMPIFNOTLE                      R1 R4 ; [+23]
      161 DUPTABLE                         R14 K10 [{["name"] = "TEXT", ["children"], ["text"]}]
      162 NEWTABLE                         R15 0 0
      164 SETTABLEKS                       R15 R14 K9 ["children"]
      166 SETTABLEKS                       R2 R14 K6 ["text"]
      168 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
      170 MOVE                             R13 R3
      171 GETIMPORT                        R12 K2 [table.insert]
      173 CALL                             R12 2 0
      174 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      176 MOVE                             R13 R3
      177 MOVE                             R14 R10
      178 GETIMPORT                        R12 K2 [table.insert]
      180 CALL                             R12 2 0
      181 LOADB                            R5 1
      182 JUMP                             ; [+16]
      183 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      185 MOVE                             R13 R3
      186 MOVE                             R14 R10
      187 GETIMPORT                        R12 K2 [table.insert]
      189 CALL                             R12 2 0
      190 MOVE                             R4 R11
      191 JUMP                             ; [+7]
      192 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      194 MOVE                             R12 R3
      195 MOVE                             R13 R10
      196 GETIMPORT                        R11 K2 [table.insert]
      198 CALL                             R11 2 0
      199 FORGLOOP                         R6 2 ; [-192]
      201 JUMPIF                           R5 ; [+41]
      202 LENGTH                           R7 R3
      203 LOADN                            R8 0
      204 JUMPIFNOTLT                      R8 R7 ; [+4]
      206 LENGTH                           R7 R3
      207 GETTABLE                         R6 R3 R7
      208 JUMPIF                           R6 ; [+1]
      209 LOADNIL                          R6
      210 JUMPIFNOT                        R6 ; [+19]
      211 GETTABLEKS                       R7 R6 K3 ["name"]
      213 JUMPIFNOTEQKS                    R7 K4 ["TEXT"] ; [+16]
      215 LENGTH                           R7 R3
      216 DUPTABLE                         R8 K10 [{["name"] = "TEXT", ["children"], ["text"]}]
      217 NEWTABLE                         R9 0 0
      219 SETTABLEKS                       R9 R8 K9 ["children"]
      221 GETTABLEKS                       R11 R6 K6 ["text"]
      223 ORK                              R10 R11 K5 [""]
      224 MOVE                             R11 R2
      225 CONCAT                           R9 R10 R11
      226 SETTABLEKS                       R9 R8 K6 ["text"]
      228 SETTABLE                         R8 R3 R7
      229 RETURN                           R3 1
      230 DUPTABLE                         R9 K10 [{["name"] = "TEXT", ["children"], ["text"]}]
      231 NEWTABLE                         R10 0 0
      233 SETTABLEKS                       R10 R9 K9 ["children"]
      235 SETTABLEKS                       R2 R9 K6 ["text"]
      237 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      239 MOVE                             R8 R3
      240 GETIMPORT                        R7 K2 [table.insert]
      242 CALL                             R7 2 0
      243 RETURN                           R3 1

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
       70 JUMP                             ; [+111]
       71 GETTABLEKS                       R10 R9 K0 ["name"]
       73 JUMPIFEQKS                       R10 K11 ["STYLED_TEXT"] ; [+5]
       75 GETTABLEKS                       R10 R9 K0 ["name"]
       77 JUMPIFNOTEQKS                    R10 K12 ["LINK"] ; [+78]
       79 GETTABLEKS                       R11 R9 K9 ["children"]
       81 JUMPIF                           R11 ; [+2]
       82 NEWTABLE                         R11 0 0
       84 LOADN                            R10 0
       85 MOVE                             R12 R11
       86 LOADNIL                          R13
       87 LOADNIL                          R14
       88 FORGPREP                         R12
       89 GETUPVAL                         R17 0
       90 MOVE                             R18 R16
       91 CALL                             R17 1 1
       92 ADD                              R10 R10 R17
       93 FORGLOOP                         R12 2 ; [-5]
       95 MOVE                             R11 R4
       96 ADD                              R12 R4 R10
       97 JUMPIFLE                         R12 R1 ; [+3]
       99 JUMPIFNOTLE                      R2 R11 ; [+9]
      101 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      103 MOVE                             R14 R3
      104 MOVE                             R15 R9
      105 GETIMPORT                        R13 K6 [table.insert]
      107 CALL                             R13 2 0
      108 JUMP                             ; [+45]
      109 JUMPIFNOTLE                      R1 R11 ; [+4]
      111 JUMPIFNOTLE                      R12 R2 ; [+2]
      113 JUMP                             ; [+40]
      114 LOADN                            R14 0
      115 SUB                              R15 R1 R11
      116 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
      118 GETIMPORT                        R13 K15 [math.max]
      120 CALL                             R13 2 1
      121 SUB                              R16 R2 R11
      122 FASTCALL2                        MATH_MIN R10 R16 ; [+4]
      124 MOVE                             R15 R10
      125 GETIMPORT                        R14 K17 [math.min]
      127 CALL                             R14 2 1
      128 GETUPVAL                         R15 1
      129 GETTABLEKS                       R16 R9 K9 ["children"]
      131 JUMPIF                           R16 ; [+2]
      132 NEWTABLE                         R16 0 0
      134 MOVE                             R17 R13
      135 MOVE                             R18 R14
      136 CALL                             R15 3 1
      137 LENGTH                           R16 R15
      138 LOADN                            R17 0
      139 JUMPIFNOTLT                      R17 R16 ; [+14]
      141 GETIMPORT                        R16 K19 [table.clone]
      143 MOVE                             R17 R9
      144 CALL                             R16 1 1
      145 SETTABLEKS                       R15 R16 K9 ["children"]
      147 FASTCALL2                        TABLE_INSERT R3 R16 ; [+5]
      149 MOVE                             R18 R3
      150 MOVE                             R19 R16
      151 GETIMPORT                        R17 K6 [table.insert]
      153 CALL                             R17 2 0
      154 MOVE                             R4 R12
      155 JUMP                             ; [+26]
      156 GETTABLEKS                       R10 R9 K0 ["name"]
      158 JUMPIFNOTEQKS                    R10 K20 ["BREAK"] ; [+16]
      160 MOVE                             R10 R4
      161 ADDK                             R11 R4 K8 [1]
      162 JUMPIFLE                         R11 R1 ; [+3]
      164 JUMPIFNOTLE                      R2 R10 ; [+8]
      166 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      168 MOVE                             R13 R3
      169 MOVE                             R14 R9
      170 GETIMPORT                        R12 K6 [table.insert]
      172 CALL                             R12 2 0
      173 MOVE                             R4 R11
      174 JUMP                             ; [+7]
      175 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      177 MOVE                             R11 R3
      178 MOVE                             R12 R9
      179 GETIMPORT                        R10 K6 [table.insert]
      181 CALL                             R10 2 0
      182 FORGLOOP                         R5 2 ; [-176]
      184 RETURN                           R3 1

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
       18 JUMP                             ; [+201]
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
       38 JUMP                             ; [+181]
       39 JUMPIFNOTLE                      R12 R1 ; [+10]
       41 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       43 MOVE                             R14 R2
       44 MOVE                             R15 R10
       45 GETIMPORT                        R13 K2 [table.insert]
       47 CALL                             R13 2 0
       48 MOVE                             R4 R12
       49 JUMP                             ; [+170]
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
       95 JUMP                             ; [+124]
       96 GETTABLEKS                       R11 R10 K3 ["name"]
       98 JUMPIFEQKS                       R11 K11 ["STYLED_TEXT"] ; [+5]
      100 GETTABLEKS                       R11 R10 K3 ["name"]
      102 JUMPIFNOTEQKS                    R11 K12 ["LINK"] ; [+85]
      104 GETTABLEKS                       R12 R10 K9 ["children"]
      106 JUMPIF                           R12 ; [+2]
      107 NEWTABLE                         R12 0 0
      109 LOADN                            R11 0
      110 MOVE                             R13 R12
      111 LOADNIL                          R14
      112 LOADNIL                          R15
      113 FORGPREP                         R13
      114 GETUPVAL                         R18 0
      115 MOVE                             R19 R17
      116 CALL                             R18 1 1
      117 ADD                              R11 R11 R18
      118 FORGLOOP                         R13 2 ; [-5]
      120 ADD                              R12 R4 R11
      121 JUMPIFNOTLE                      R1 R4 ; [+10]
      123 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      125 MOVE                             R14 R3
      126 MOVE                             R15 R10
      127 GETIMPORT                        R13 K2 [table.insert]
      129 CALL                             R13 2 0
      130 LOADB                            R5 1
      131 JUMP                             ; [+88]
      132 JUMPIFNOTLE                      R12 R1 ; [+10]
      134 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
      136 MOVE                             R14 R2
      137 MOVE                             R15 R10
      138 GETIMPORT                        R13 K2 [table.insert]
      140 CALL                             R13 2 0
      141 MOVE                             R4 R12
      142 JUMP                             ; [+77]
      143 SUB                              R13 R1 R4
      144 GETUPVAL                         R14 1
      145 GETTABLEKS                       R15 R10 K9 ["children"]
      147 JUMPIF                           R15 ; [+2]
      148 NEWTABLE                         R15 0 0
      150 MOVE                             R16 R13
      151 CALL                             R14 2 2
      152 LENGTH                           R16 R14
      153 LOADN                            R17 0
      154 JUMPIFNOTLT                      R17 R16 ; [+14]
      156 GETIMPORT                        R16 K14 [table.clone]
      158 MOVE                             R17 R10
      159 CALL                             R16 1 1
      160 SETTABLEKS                       R14 R16 K9 ["children"]
      162 FASTCALL2                        TABLE_INSERT R2 R16 ; [+5]
      164 MOVE                             R18 R2
      165 MOVE                             R19 R16
      166 GETIMPORT                        R17 K2 [table.insert]
      168 CALL                             R17 2 0
      169 LENGTH                           R16 R15
      170 LOADN                            R17 0
      171 JUMPIFNOTLT                      R17 R16 ; [+14]
      173 GETIMPORT                        R16 K14 [table.clone]
      175 MOVE                             R17 R10
      176 CALL                             R16 1 1
      177 SETTABLEKS                       R15 R16 K9 ["children"]
      179 FASTCALL2                        TABLE_INSERT R3 R16 ; [+5]
      181 MOVE                             R18 R3
      182 MOVE                             R19 R16
      183 GETIMPORT                        R17 K2 [table.insert]
      185 CALL                             R17 2 0
      186 LOADB                            R5 1
      187 JUMP                             ; [+32]
      188 GETTABLEKS                       R11 R10 K3 ["name"]
      190 JUMPIFNOTEQKS                    R11 K15 ["BREAK"] ; [+22]
      192 ADDK                             R11 R4 K8 [1]
      193 JUMPIFNOTLE                      R1 R4 ; [+10]
      195 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      197 MOVE                             R13 R3
      198 MOVE                             R14 R10
      199 GETIMPORT                        R12 K2 [table.insert]
      201 CALL                             R12 2 0
      202 LOADB                            R5 1
      203 JUMP                             ; [+16]
      204 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
      206 MOVE                             R13 R2
      207 MOVE                             R14 R10
      208 GETIMPORT                        R12 K2 [table.insert]
      210 CALL                             R12 2 0
      211 MOVE                             R4 R11
      212 JUMP                             ; [+7]
      213 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
      215 MOVE                             R12 R2
      216 MOVE                             R13 R10
      217 GETIMPORT                        R11 K2 [table.insert]
      219 CALL                             R11 2 0
      220 FORGLOOP                         R6 2 ; [-211]
      222 RETURN                           R2 2

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
      140 JUMPIFNOTEQ                      R10 R11 ; [+50]
      142 JUMPIFNOT                        R8 ; [+48]
      143 GETTABLEKS                       R11 R8 K3 ["name"]
      145 JUMPIFEQKS                       R11 K15 ["CODE_BLOCK"] ; [+2]
      147 LOADB                            R10 0 +1
      148 LOADB                            R10 1
      149 JUMPIFNOT                        R10 ; [+41]
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
      161 LOADN                            R16 1
      162 MOVE                             R17 R11
      163 NAMECALL                         R14 R10 K18 ["sub"]
      165 CALL                             R14 3 1
      166 ADDK                             R17 R12 K19 [1]
      167 NAMECALL                         R15 R10 K18 ["sub"]
      169 CALL                             R15 2 1
      170 CONCAT                           R13 R14 R15
      171 MOVE                             R14 R2
      172 GETTABLEKS                       R16 R5 K2 ["blockIndex"]
      174 GETTABLE                         R15 R1 R16
      175 GETTABLEKS                       R15 R15 K17 ["text"]
      177 CALL                             R14 1 1
      178 MOVE                             R16 R13
      179 NAMECALL                         R14 R14 K9 ["set"]
      181 CALL                             R14 2 0
      182 GETUPVAL                         R14 4
      183 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
      185 MOVE                             R16 R13
      186 MOVE                             R17 R11
      187 CALL                             R14 3 1
      188 GETTABLEKS                       R14 R14 K14 ["anchor"]
      190 RETURN                           R14 1
      191 GETTABLEKS                       R10 R5 K2 ["blockIndex"]
      193 GETTABLEKS                       R11 R6 K2 ["blockIndex"]
      195 JUMPIFNOTEQ                      R10 R11 ; [+241]
      197 JUMPIFNOT                        R8 ; [+239]
      198 GETTABLEKS                       R10 R8 K3 ["name"]
      200 JUMPIFNOTEQKS                    R10 K20 ["LIST"] ; [+236]
      202 GETUPVAL                         R10 5
      203 MOVE                             R11 R8
      204 MOVE                             R12 R5
      205 CALL                             R10 2 1
      206 GETUPVAL                         R11 5
      207 MOVE                             R12 R8
      208 MOVE                             R13 R6
      209 CALL                             R11 2 1
      210 JUMPIFNOT                        R10 ; [+226]
      211 JUMPIFNOT                        R11 ; [+225]
      212 GETTABLEKS                       R12 R10 K21 ["listItemIndex"]
      214 GETTABLEKS                       R13 R11 K21 ["listItemIndex"]
      216 JUMPIFNOTEQ                      R12 R13 ; [+97]
      218 GETUPVAL                         R12 1
      219 GETUPVAL                         R13 2
      220 GETTABLEKS                       R14 R10 K8 ["children"]
      222 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
      224 GETTABLEKS                       R16 R11 K22 ["flatOffset"]
      226 CALL                             R13 3 1
      227 CALL                             R12 1 1
      228 GETTABLEKS                       R13 R10 K23 ["listItem"]
      230 GETTABLEKS                       R14 R10 K21 ["listItemIndex"]
      232 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
      234 MOVE                             R16 R2
      235 GETTABLE                         R18 R1 R15
      236 GETTABLEKS                       R18 R18 K8 ["children"]
      238 GETTABLE                         R17 R18 R14
      239 CALL                             R16 1 1
      240 DUPTABLE                         R18 K26 [{"name", "children", "attributes", "index"}]
      241 GETTABLEKS                       R19 R13 K3 ["name"]
      243 SETTABLEKS                       R19 R18 K3 ["name"]
      245 SETTABLEKS                       R12 R18 K8 ["children"]
      247 GETTABLEKS                       R19 R13 K24 ["attributes"]
      249 SETTABLEKS                       R19 R18 K24 ["attributes"]
      251 GETTABLEKS                       R19 R13 K25 ["index"]
      253 SETTABLEKS                       R19 R18 K25 ["index"]
      255 NAMECALL                         R16 R16 K9 ["set"]
      257 CALL                             R16 2 0
      258 GETTABLEKS                       R14 R5 K2 ["blockIndex"]
      260 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
      262 LOADN                            R16 0
      263 LOADN                            R17 0
      264 NEWCLOSURE                       R18 P1
      265 CAPTURE                          REF R16
      266 CAPTURE                          VAL R15
      267 CAPTURE                          REF R17
      268 CAPTURE                          UPVAL U0
      269 CAPTURE                          VAL R14
      270 CAPTURE                          VAL R18
      271 MOVE                             R19 R18
      272 MOVE                             R20 R12
      273 CALL                             R19 1 1
      274 JUMPIFNOT                        R19 ; [+3]
      275 MOVE                             R13 R19
      276 CLOSEUPVALS                      R16
      277 JUMP                             ; [+15]
      278 GETUPVAL                         R20 0
      279 GETTABLEKS                       R20 R20 K10 ["createCollapsed"]
      281 MOVE                             R21 R14
      282 LOADN                            R23 1
      283 FASTCALL2                        MATH_MAX R23 R16 ; [+4]
      285 MOVE                             R24 R16
      286 GETIMPORT                        R22 K13 [math.max]
      288 CALL                             R22 2 1
      289 SUB                              R23 R15 R17
      290 CALL                             R20 3 1
      291 MOVE                             R13 R20
      292 CLOSEUPVALS                      R16
      293 GETUPVAL                         R14 0
      294 GETTABLEKS                       R14 R14 K27 ["createPosition"]
      296 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
      298 GETTABLEKS                       R16 R13 K14 ["anchor"]
      300 GETTABLEKS                       R16 R16 K28 ["segmentIndex"]
      302 GETTABLEKS                       R17 R13 K14 ["anchor"]
      304 GETTABLEKS                       R17 R17 K29 ["charOffset"]
      306 NEWTABLE                         R18 0 1
      308 GETTABLEKS                       R19 R10 K21 ["listItemIndex"]
      310 SETLIST                          R18 R19 1 [1]
      312 CALL                             R14 4 -1
      313 RETURN                           R14 -1
      314 GETUPVAL                         R12 6
      315 GETTABLEKS                       R13 R10 K8 ["children"]
      317 GETTABLEKS                       R14 R10 K22 ["flatOffset"]
      319 CALL                             R12 2 1
      320 GETUPVAL                         R13 6
      321 GETTABLEKS                       R14 R11 K8 ["children"]
      323 GETTABLEKS                       R15 R11 K22 ["flatOffset"]
      325 CALL                             R13 2 2
      326 GETUPVAL                         R15 1
      327 GETUPVAL                         R16 7
      328 MOVE                             R17 R12
      329 MOVE                             R18 R14
      330 CALL                             R16 2 1
      331 CALL                             R15 1 1
      332 GETTABLEKS                       R16 R10 K23 ["listItem"]
      334 GETTABLEKS                       R17 R10 K21 ["listItemIndex"]
      336 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      338 MOVE                             R19 R2
      339 GETTABLE                         R21 R1 R18
      340 GETTABLEKS                       R21 R21 K8 ["children"]
      342 GETTABLE                         R20 R21 R17
      343 CALL                             R19 1 1
      344 DUPTABLE                         R21 K26 [{"name", "children", "attributes", "index"}]
      345 GETTABLEKS                       R22 R16 K3 ["name"]
      347 SETTABLEKS                       R22 R21 K3 ["name"]
      349 SETTABLEKS                       R15 R21 K8 ["children"]
      351 GETTABLEKS                       R22 R16 K24 ["attributes"]
      353 SETTABLEKS                       R22 R21 K24 ["attributes"]
      355 GETTABLEKS                       R22 R16 K25 ["index"]
      357 SETTABLEKS                       R22 R21 K25 ["index"]
      359 NAMECALL                         R19 R19 K9 ["set"]
      361 CALL                             R19 2 0
      362 GETTABLEKS                       R18 R11 K21 ["listItemIndex"]
      364 GETTABLEKS                       R19 R10 K21 ["listItemIndex"]
      366 ADDK                             R16 R19 K19 [1]
      367 LOADN                            R17 -1
      368 FORNPREP                         R16
      369 MOVE                             R19 R2
      370 GETTABLEKS                       R21 R5 K2 ["blockIndex"]
      372 GETTABLE                         R20 R1 R21
      373 GETTABLEKS                       R20 R20 K8 ["children"]
      375 CALL                             R19 1 1
      376 MOVE                             R21 R18
      377 NAMECALL                         R19 R19 K30 ["remove"]
      379 CALL                             R19 2 0
      380 FORNLOOP                         R16
      381 GETTABLEKS                       R17 R5 K2 ["blockIndex"]
      383 GETTABLEKS                       R18 R10 K22 ["flatOffset"]
      385 LOADN                            R19 0
      386 LOADN                            R20 0
      387 NEWCLOSURE                       R21 P1
      388 CAPTURE                          REF R19
      389 CAPTURE                          VAL R18
      390 CAPTURE                          REF R20
      391 CAPTURE                          UPVAL U0
      392 CAPTURE                          VAL R17
      393 CAPTURE                          VAL R21
      394 MOVE                             R22 R21
      395 MOVE                             R23 R15
      396 CALL                             R22 1 1
      397 JUMPIFNOT                        R22 ; [+3]
      398 MOVE                             R16 R22
      399 CLOSEUPVALS                      R19
      400 JUMP                             ; [+15]
      401 GETUPVAL                         R23 0
      402 GETTABLEKS                       R23 R23 K10 ["createCollapsed"]
      404 MOVE                             R24 R17
      405 LOADN                            R26 1
      406 FASTCALL2                        MATH_MAX R26 R19 ; [+4]
      408 MOVE                             R27 R19
      409 GETIMPORT                        R25 K13 [math.max]
      411 CALL                             R25 2 1
      412 SUB                              R26 R18 R20
      413 CALL                             R23 3 1
      414 MOVE                             R16 R23
      415 CLOSEUPVALS                      R19
      416 GETUPVAL                         R17 0
      417 GETTABLEKS                       R17 R17 K27 ["createPosition"]
      419 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      421 GETTABLEKS                       R19 R16 K14 ["anchor"]
      423 GETTABLEKS                       R19 R19 K28 ["segmentIndex"]
      425 GETTABLEKS                       R20 R16 K14 ["anchor"]
      427 GETTABLEKS                       R20 R20 K29 ["charOffset"]
      429 NEWTABLE                         R21 0 1
      431 GETTABLEKS                       R22 R10 K21 ["listItemIndex"]
      433 SETLIST                          R21 R22 1 [1]
      435 CALL                             R17 4 -1
      436 RETURN                           R17 -1
      437 GETTABLEKS                       R10 R5 K2 ["blockIndex"]
      439 GETTABLEKS                       R11 R6 K2 ["blockIndex"]
      441 JUMPIFNOTEQ                      R10 R11 ; [+280]
      443 JUMPIFNOT                        R8 ; [+278]
      444 GETTABLEKS                       R11 R8 K3 ["name"]
      446 JUMPIFEQKS                       R11 K31 ["TABLE"] ; [+2]
      448 LOADB                            R10 0 +1
      449 LOADB                            R10 1
      450 JUMPIFNOT                        R10 ; [+271]
      451 GETUPVAL                         R10 5
      452 MOVE                             R11 R8
      453 MOVE                             R12 R5
      454 CALL                             R10 2 1
      455 GETUPVAL                         R11 5
      456 MOVE                             R12 R8
      457 MOVE                             R13 R6
      458 CALL                             R11 2 1
      459 JUMPIFNOT                        R10 ; [+262]
      460 JUMPIFNOT                        R11 ; [+261]
      461 GETTABLEKS                       R12 R10 K32 ["isTable"]
      463 JUMPIFNOT                        R12 ; [+258]
      464 GETTABLEKS                       R12 R11 K32 ["isTable"]
      466 JUMPIFNOT                        R12 ; [+255]
      467 GETTABLEKS                       R12 R10 K33 ["tableRowIndex"]
      469 GETTABLEKS                       R13 R11 K33 ["tableRowIndex"]
      471 JUMPIFNOTEQ                      R12 R13 ; [+88]
      473 GETTABLEKS                       R12 R10 K34 ["tableCellIndex"]
      475 GETTABLEKS                       R13 R11 K34 ["tableCellIndex"]
      477 JUMPIFNOTEQ                      R12 R13 ; [+82]
      479 GETUPVAL                         R12 1
      480 GETUPVAL                         R13 2
      481 GETTABLEKS                       R14 R10 K8 ["children"]
      483 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
      485 GETTABLEKS                       R16 R11 K22 ["flatOffset"]
      487 CALL                             R13 3 1
      488 CALL                             R12 1 1
      489 GETUPVAL                         R13 8
      490 GETTABLEKS                       R14 R10 K35 ["tableCell"]
      492 GETTABLEKS                       R15 R10 K33 ["tableRowIndex"]
      494 GETTABLEKS                       R16 R10 K34 ["tableCellIndex"]
      496 MOVE                             R17 R12
      497 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      499 MOVE                             R19 R1
      500 MOVE                             R20 R2
      501 CALL                             R13 7 0
      502 GETTABLEKS                       R14 R5 K2 ["blockIndex"]
      504 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
      506 LOADN                            R16 0
      507 LOADN                            R17 0
      508 NEWCLOSURE                       R18 P1
      509 CAPTURE                          REF R16
      510 CAPTURE                          VAL R15
      511 CAPTURE                          REF R17
      512 CAPTURE                          UPVAL U0
      513 CAPTURE                          VAL R14
      514 CAPTURE                          VAL R18
      515 MOVE                             R19 R18
      516 MOVE                             R20 R12
      517 CALL                             R19 1 1
      518 JUMPIFNOT                        R19 ; [+3]
      519 MOVE                             R13 R19
      520 CLOSEUPVALS                      R16
      521 JUMP                             ; [+15]
      522 GETUPVAL                         R20 0
      523 GETTABLEKS                       R20 R20 K10 ["createCollapsed"]
      525 MOVE                             R21 R14
      526 LOADN                            R23 1
      527 FASTCALL2                        MATH_MAX R23 R16 ; [+4]
      529 MOVE                             R24 R16
      530 GETIMPORT                        R22 K13 [math.max]
      532 CALL                             R22 2 1
      533 SUB                              R23 R15 R17
      534 CALL                             R20 3 1
      535 MOVE                             R13 R20
      536 CLOSEUPVALS                      R16
      537 GETUPVAL                         R14 0
      538 GETTABLEKS                       R14 R14 K27 ["createPosition"]
      540 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
      542 GETTABLEKS                       R16 R13 K14 ["anchor"]
      544 GETTABLEKS                       R16 R16 K28 ["segmentIndex"]
      546 GETTABLEKS                       R17 R13 K14 ["anchor"]
      548 GETTABLEKS                       R17 R17 K29 ["charOffset"]
      550 NEWTABLE                         R18 0 2
      552 GETTABLEKS                       R19 R10 K33 ["tableRowIndex"]
      554 GETTABLEKS                       R20 R10 K34 ["tableCellIndex"]
      556 SETLIST                          R18 R19 2 [1]
      558 CALL                             R14 4 -1
      559 RETURN                           R14 -1
      560 GETUPVAL                         R12 1
      561 GETUPVAL                         R13 6
      562 GETTABLEKS                       R14 R10 K8 ["children"]
      564 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
      566 CALL                             R13 2 -1
      567 CALL                             R12 -1 1
      568 GETUPVAL                         R13 8
      569 GETTABLEKS                       R14 R10 K35 ["tableCell"]
      571 GETTABLEKS                       R15 R10 K33 ["tableRowIndex"]
      573 GETTABLEKS                       R16 R10 K34 ["tableCellIndex"]
      575 MOVE                             R17 R12
      576 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      578 MOVE                             R19 R1
      579 MOVE                             R20 R2
      580 CALL                             R13 7 0
      581 GETUPVAL                         R13 6
      582 GETTABLEKS                       R14 R11 K8 ["children"]
      584 GETTABLEKS                       R15 R11 K22 ["flatOffset"]
      586 CALL                             R13 2 2
      587 GETUPVAL                         R15 8
      588 GETTABLEKS                       R16 R11 K35 ["tableCell"]
      590 GETTABLEKS                       R17 R11 K33 ["tableRowIndex"]
      592 GETTABLEKS                       R18 R11 K34 ["tableCellIndex"]
      594 GETUPVAL                         R19 1
      595 MOVE                             R20 R14
      596 CALL                             R19 1 1
      597 GETTABLEKS                       R20 R5 K2 ["blockIndex"]
      599 MOVE                             R21 R1
      600 MOVE                             R22 R2
      601 CALL                             R15 7 0
      602 GETTABLEKS                       R15 R8 K8 ["children"]
      604 JUMPIF                           R15 ; [+2]
      605 NEWTABLE                         R15 0 0
      607 GETTABLEKS                       R18 R10 K33 ["tableRowIndex"]
      609 GETTABLEKS                       R16 R11 K33 ["tableRowIndex"]
      611 LOADN                            R17 1
      612 FORNPREP                         R16
      613 GETTABLE                         R19 R15 R18
      614 JUMPIFNOT                        R19 ; [+48]
      615 GETTABLEKS                       R20 R19 K8 ["children"]
      617 JUMPIF                           R20 ; [+2]
      618 NEWTABLE                         R20 0 0
      620 GETTABLEKS                       R22 R10 K33 ["tableRowIndex"]
      622 JUMPIFNOTEQ                      R18 R22 ; [+5]
      624 GETTABLEKS                       R22 R10 K34 ["tableCellIndex"]
      626 ADDK                             R21 R22 K19 [1]
      627 JUMP                             ; [+1]
      628 LOADN                            R21 1
      629 GETTABLEKS                       R23 R11 K33 ["tableRowIndex"]
      631 JUMPIFNOTEQ                      R18 R23 ; [+5]
      633 GETTABLEKS                       R23 R11 K34 ["tableCellIndex"]
      635 SUBK                             R22 R23 K19 [1]
      636 JUMP                             ; [+1]
      637 LENGTH                           R22 R20
      638 MOVE                             R25 R21
      639 MOVE                             R23 R22
      640 LOADN                            R24 1
      641 FORNPREP                         R23
      642 GETTABLE                         R26 R20 R25
      643 JUMPIFNOT                        R26 ; [+18]
      644 GETUPVAL                         R27 8
      645 MOVE                             R28 R26
      646 MOVE                             R29 R18
      647 MOVE                             R30 R25
      648 NEWTABLE                         R31 0 1
      650 DUPTABLE                         R32 K37 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      651 NEWTABLE                         R33 0 0
      653 SETTABLEKS                       R33 R32 K8 ["children"]
      655 SETLIST                          R31 R32 1 [1]
      657 GETTABLEKS                       R32 R5 K2 ["blockIndex"]
      659 MOVE                             R33 R1
      660 MOVE                             R34 R2
      661 CALL                             R27 7 0
      662 FORNLOOP                         R23
      663 FORNLOOP                         R16
      664 GETTABLEKS                       R17 R5 K2 ["blockIndex"]
      666 GETTABLEKS                       R18 R10 K22 ["flatOffset"]
      668 LOADN                            R19 0
      669 LOADN                            R20 0
      670 NEWCLOSURE                       R21 P1
      671 CAPTURE                          REF R19
      672 CAPTURE                          VAL R18
      673 CAPTURE                          REF R20
      674 CAPTURE                          UPVAL U0
      675 CAPTURE                          VAL R17
      676 CAPTURE                          VAL R21
      677 MOVE                             R22 R21
      678 MOVE                             R23 R12
      679 CALL                             R22 1 1
      680 JUMPIFNOT                        R22 ; [+3]
      681 MOVE                             R16 R22
      682 CLOSEUPVALS                      R19
      683 JUMP                             ; [+15]
      684 GETUPVAL                         R23 0
      685 GETTABLEKS                       R23 R23 K10 ["createCollapsed"]
      687 MOVE                             R24 R17
      688 LOADN                            R26 1
      689 FASTCALL2                        MATH_MAX R26 R19 ; [+4]
      691 MOVE                             R27 R19
      692 GETIMPORT                        R25 K13 [math.max]
      694 CALL                             R25 2 1
      695 SUB                              R26 R18 R20
      696 CALL                             R23 3 1
      697 MOVE                             R16 R23
      698 CLOSEUPVALS                      R19
      699 GETUPVAL                         R17 0
      700 GETTABLEKS                       R17 R17 K27 ["createPosition"]
      702 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      704 GETTABLEKS                       R19 R16 K14 ["anchor"]
      706 GETTABLEKS                       R19 R19 K28 ["segmentIndex"]
      708 GETTABLEKS                       R20 R16 K14 ["anchor"]
      710 GETTABLEKS                       R20 R20 K29 ["charOffset"]
      712 NEWTABLE                         R21 0 2
      714 GETTABLEKS                       R22 R10 K33 ["tableRowIndex"]
      716 GETTABLEKS                       R23 R10 K34 ["tableCellIndex"]
      718 SETLIST                          R21 R22 2 [1]
      720 CALL                             R17 4 -1
      721 RETURN                           R17 -1
      722 JUMPIFNOT                        R8 ; [+5]
      723 GETUPVAL                         R10 5
      724 MOVE                             R11 R8
      725 MOVE                             R12 R5
      726 CALL                             R10 2 1
      727 JUMP                             ; [+1]
      728 LOADNIL                          R10
      729 JUMPIFNOT                        R9 ; [+5]
      730 GETUPVAL                         R11 5
      731 MOVE                             R12 R9
      732 MOVE                             R13 R6
      733 CALL                             R11 2 1
      734 JUMP                             ; [+1]
      735 LOADNIL                          R11
      736 JUMPIFNOT                        R10 ; [+256]
      737 JUMPIFNOT                        R11 ; [+255]
      738 GETUPVAL                         R12 6
      739 GETTABLEKS                       R13 R10 K8 ["children"]
      741 GETTABLEKS                       R14 R10 K22 ["flatOffset"]
      743 CALL                             R12 2 1
      744 GETUPVAL                         R13 6
      745 GETTABLEKS                       R14 R11 K8 ["children"]
      747 GETTABLEKS                       R15 R11 K22 ["flatOffset"]
      749 CALL                             R13 2 2
      750 GETUPVAL                         R15 1
      751 GETUPVAL                         R16 7
      752 MOVE                             R17 R12
      753 MOVE                             R18 R14
      754 CALL                             R16 2 1
      755 CALL                             R15 1 1
      756 NEWTABLE                         R16 0 0
      758 GETTABLEKS                       R17 R11 K38 ["isList"]
      760 JUMPIFNOT                        R17 ; [+19]
      761 GETTABLEKS                       R17 R9 K8 ["children"]
      763 JUMPIF                           R17 ; [+2]
      764 NEWTABLE                         R17 0 0
      766 GETTABLEKS                       R21 R11 K21 ["listItemIndex"]
      768 ADDK                             R20 R21 K19 [1]
      769 LENGTH                           R18 R17
      770 LOADN                            R19 1
      771 FORNPREP                         R18
      772 GETTABLE                         R23 R17 R20
      773 FASTCALL2                        TABLE_INSERT R16 R23 ; [+4]
      775 MOVE                             R22 R16
      776 GETIMPORT                        R21 K41 [table.insert]
      778 CALL                             R21 2 0
      779 FORNLOOP                         R18
      780 GETTABLEKS                       R17 R10 K38 ["isList"]
      782 JUMPIFNOT                        R17 ; [+54]
      783 GETTABLEKS                       R17 R10 K23 ["listItem"]
      785 GETTABLEKS                       R18 R10 K21 ["listItemIndex"]
      787 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
      789 MOVE                             R20 R2
      790 GETTABLE                         R22 R1 R19
      791 GETTABLEKS                       R22 R22 K8 ["children"]
      793 GETTABLE                         R21 R22 R18
      794 CALL                             R20 1 1
      795 DUPTABLE                         R22 K26 [{"name", "children", "attributes", "index"}]
      796 GETTABLEKS                       R23 R17 K3 ["name"]
      798 SETTABLEKS                       R23 R22 K3 ["name"]
      800 SETTABLEKS                       R15 R22 K8 ["children"]
      802 GETTABLEKS                       R23 R17 K24 ["attributes"]
      804 SETTABLEKS                       R23 R22 K24 ["attributes"]
      806 GETTABLEKS                       R23 R17 K25 ["index"]
      808 SETTABLEKS                       R23 R22 K25 ["index"]
      810 NAMECALL                         R20 R20 K9 ["set"]
      812 CALL                             R20 2 0
      813 GETTABLEKS                       R17 R8 K8 ["children"]
      815 JUMPIF                           R17 ; [+2]
      816 NEWTABLE                         R17 0 0
      818 LENGTH                           R20 R17
      819 GETTABLEKS                       R21 R10 K21 ["listItemIndex"]
      821 ADDK                             R18 R21 K19 [1]
      822 LOADN                            R19 -1
      823 FORNPREP                         R18
      824 MOVE                             R21 R2
      825 GETTABLEKS                       R23 R5 K2 ["blockIndex"]
      827 GETTABLE                         R22 R1 R23
      828 GETTABLEKS                       R22 R22 K8 ["children"]
      830 CALL                             R21 1 1
      831 MOVE                             R23 R20
      832 NAMECALL                         R21 R21 K30 ["remove"]
      834 CALL                             R21 2 0
      835 FORNLOOP                         R18
      836 JUMP                             ; [+28]
      837 GETTABLEKS                       R17 R10 K32 ["isTable"]
      839 JUMPIFNOT                        R17 ; [+14]
      840 GETUPVAL                         R17 8
      841 GETTABLEKS                       R18 R10 K35 ["tableCell"]
      843 GETTABLEKS                       R19 R10 K33 ["tableRowIndex"]
      845 GETTABLEKS                       R20 R10 K34 ["tableCellIndex"]
      847 MOVE                             R21 R15
      848 GETTABLEKS                       R22 R5 K2 ["blockIndex"]
      850 MOVE                             R23 R1
      851 MOVE                             R24 R2
      852 CALL                             R17 7 0
      853 JUMP                             ; [+11]
      854 MOVE                             R17 R2
      855 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
      857 GETTABLE                         R18 R1 R19
      858 GETTABLEKS                       R18 R18 K8 ["children"]
      860 CALL                             R17 1 1
      861 MOVE                             R19 R15
      862 NAMECALL                         R17 R17 K9 ["set"]
      864 CALL                             R17 2 0
      865 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      867 GETTABLEKS                       R20 R5 K2 ["blockIndex"]
      869 ADDK                             R17 R20 K19 [1]
      870 LOADN                            R18 -1
      871 FORNPREP                         R17
      872 MOVE                             R20 R2
      873 MOVE                             R21 R1
      874 CALL                             R20 1 1
      875 MOVE                             R22 R19
      876 NAMECALL                         R20 R20 K30 ["remove"]
      878 CALL                             R20 2 0
      879 FORNLOOP                         R17
      880 LENGTH                           R17 R16
      881 LOADN                            R18 0
      882 JUMPIFNOTLT                      R18 R17 ; [+22]
      884 DUPTABLE                         R17 K42 [{["name"] = "LIST", ["children"], ["attributes"], ["index"]}]
      885 SETTABLEKS                       R16 R17 K8 ["children"]
      887 GETTABLEKS                       R18 R9 K24 ["attributes"]
      889 SETTABLEKS                       R18 R17 K24 ["attributes"]
      891 MOVE                             R18 R4
      892 CALL                             R18 0 1
      893 SETTABLEKS                       R18 R17 K25 ["index"]
      895 MOVE                             R18 R2
      896 MOVE                             R19 R1
      897 CALL                             R18 1 1
      898 MOVE                             R20 R17
      899 GETTABLEKS                       R22 R5 K2 ["blockIndex"]
      901 ADDK                             R21 R22 K19 [1]
      902 NAMECALL                         R18 R18 K40 ["insert"]
      904 CALL                             R18 3 0
      905 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
      907 GETTABLEKS                       R19 R10 K22 ["flatOffset"]
      909 LOADN                            R20 0
      910 LOADN                            R21 0
      911 NEWCLOSURE                       R22 P1
      912 CAPTURE                          REF R20
      913 CAPTURE                          VAL R19
      914 CAPTURE                          REF R21
      915 CAPTURE                          UPVAL U0
      916 CAPTURE                          VAL R18
      917 CAPTURE                          VAL R22
      918 MOVE                             R23 R22
      919 MOVE                             R24 R15
      920 CALL                             R23 1 1
      921 JUMPIFNOT                        R23 ; [+3]
      922 MOVE                             R17 R23
      923 CLOSEUPVALS                      R20
      924 JUMP                             ; [+15]
      925 GETUPVAL                         R24 0
      926 GETTABLEKS                       R24 R24 K10 ["createCollapsed"]
      928 MOVE                             R25 R18
      929 LOADN                            R27 1
      930 FASTCALL2                        MATH_MAX R27 R20 ; [+4]
      932 MOVE                             R28 R20
      933 GETIMPORT                        R26 K13 [math.max]
      935 CALL                             R26 2 1
      936 SUB                              R27 R19 R21
      937 CALL                             R24 3 1
      938 MOVE                             R17 R24
      939 CLOSEUPVALS                      R20
      940 GETTABLEKS                       R18 R10 K38 ["isList"]
      942 JUMPIFNOT                        R18 ; [+21]
      943 GETUPVAL                         R18 0
      944 GETTABLEKS                       R18 R18 K27 ["createPosition"]
      946 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
      948 GETTABLEKS                       R20 R17 K14 ["anchor"]
      950 GETTABLEKS                       R20 R20 K28 ["segmentIndex"]
      952 GETTABLEKS                       R21 R17 K14 ["anchor"]
      954 GETTABLEKS                       R21 R21 K29 ["charOffset"]
      956 NEWTABLE                         R22 0 1
      958 GETTABLEKS                       R23 R10 K21 ["listItemIndex"]
      960 SETLIST                          R22 R23 1 [1]
      962 CALL                             R18 4 -1
      963 RETURN                           R18 -1
      964 GETTABLEKS                       R18 R10 K32 ["isTable"]
      966 JUMPIFNOT                        R18 ; [+23]
      967 GETUPVAL                         R18 0
      968 GETTABLEKS                       R18 R18 K27 ["createPosition"]
      970 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
      972 GETTABLEKS                       R20 R17 K14 ["anchor"]
      974 GETTABLEKS                       R20 R20 K28 ["segmentIndex"]
      976 GETTABLEKS                       R21 R17 K14 ["anchor"]
      978 GETTABLEKS                       R21 R21 K29 ["charOffset"]
      980 NEWTABLE                         R22 0 2
      982 GETTABLEKS                       R23 R10 K33 ["tableRowIndex"]
      984 GETTABLEKS                       R24 R10 K34 ["tableCellIndex"]
      986 SETLIST                          R22 R23 2 [1]
      988 CALL                             R18 4 -1
      989 RETURN                           R18 -1
      990 GETTABLEKS                       R18 R17 K14 ["anchor"]
      992 RETURN                           R18 1
      993 JUMPIFNOT                        R10 ; [+93]
      994 GETUPVAL                         R12 1
      995 GETUPVAL                         R13 6
      996 GETTABLEKS                       R14 R10 K8 ["children"]
      998 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
     1000 CALL                             R13 2 -1
     1001 CALL                             R12 -1 1
     1002 GETTABLEKS                       R13 R10 K38 ["isList"]
     1004 JUMPIFNOT                        R13 ; [+54]
     1005 GETTABLEKS                       R13 R10 K23 ["listItem"]
     1007 GETTABLEKS                       R14 R10 K21 ["listItemIndex"]
     1009 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1011 MOVE                             R16 R2
     1012 GETTABLE                         R18 R1 R15
     1013 GETTABLEKS                       R18 R18 K8 ["children"]
     1015 GETTABLE                         R17 R18 R14
     1016 CALL                             R16 1 1
     1017 DUPTABLE                         R18 K26 [{"name", "children", "attributes", "index"}]
     1018 GETTABLEKS                       R19 R13 K3 ["name"]
     1020 SETTABLEKS                       R19 R18 K3 ["name"]
     1022 SETTABLEKS                       R12 R18 K8 ["children"]
     1024 GETTABLEKS                       R19 R13 K24 ["attributes"]
     1026 SETTABLEKS                       R19 R18 K24 ["attributes"]
     1028 GETTABLEKS                       R19 R13 K25 ["index"]
     1030 SETTABLEKS                       R19 R18 K25 ["index"]
     1032 NAMECALL                         R16 R16 K9 ["set"]
     1034 CALL                             R16 2 0
     1035 GETTABLEKS                       R13 R8 K8 ["children"]
     1037 JUMPIF                           R13 ; [+2]
     1038 NEWTABLE                         R13 0 0
     1040 LENGTH                           R16 R13
     1041 GETTABLEKS                       R17 R10 K21 ["listItemIndex"]
     1043 ADDK                             R14 R17 K19 [1]
     1044 LOADN                            R15 -1
     1045 FORNPREP                         R14
     1046 MOVE                             R17 R2
     1047 GETTABLEKS                       R19 R5 K2 ["blockIndex"]
     1049 GETTABLE                         R18 R1 R19
     1050 GETTABLEKS                       R18 R18 K8 ["children"]
     1052 CALL                             R17 1 1
     1053 MOVE                             R19 R16
     1054 NAMECALL                         R17 R17 K30 ["remove"]
     1056 CALL                             R17 2 0
     1057 FORNLOOP                         R14
     1058 JUMP                             ; [+28]
     1059 GETTABLEKS                       R13 R10 K32 ["isTable"]
     1061 JUMPIFNOT                        R13 ; [+14]
     1062 GETUPVAL                         R13 8
     1063 GETTABLEKS                       R14 R10 K35 ["tableCell"]
     1065 GETTABLEKS                       R15 R10 K33 ["tableRowIndex"]
     1067 GETTABLEKS                       R16 R10 K34 ["tableCellIndex"]
     1069 MOVE                             R17 R12
     1070 GETTABLEKS                       R18 R5 K2 ["blockIndex"]
     1072 MOVE                             R19 R1
     1073 MOVE                             R20 R2
     1074 CALL                             R13 7 0
     1075 JUMP                             ; [+11]
     1076 MOVE                             R13 R2
     1077 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1079 GETTABLE                         R14 R1 R15
     1080 GETTABLEKS                       R14 R14 K8 ["children"]
     1082 CALL                             R13 1 1
     1083 MOVE                             R15 R12
     1084 NAMECALL                         R13 R13 K9 ["set"]
     1086 CALL                             R13 2 0
     1087 JUMPIFNOT                        R11 ; [+99]
     1088 GETUPVAL                         R12 6
     1089 GETTABLEKS                       R13 R11 K8 ["children"]
     1091 GETTABLEKS                       R14 R11 K22 ["flatOffset"]
     1093 CALL                             R12 2 2
     1094 GETUPVAL                         R14 1
     1095 MOVE                             R15 R13
     1096 CALL                             R14 1 1
     1097 MOVE                             R13 R14
     1098 GETTABLEKS                       R14 R11 K38 ["isList"]
     1100 JUMPIFNOT                        R14 ; [+58]
     1101 GETTABLEKS                       R17 R11 K21 ["listItemIndex"]
     1103 SUBK                             R16 R17 K19 [1]
     1104 LOADN                            R14 1
     1105 LOADN                            R15 -1
     1106 FORNPREP                         R14
     1107 MOVE                             R17 R2
     1108 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
     1110 GETTABLE                         R18 R1 R19
     1111 GETTABLEKS                       R18 R18 K8 ["children"]
     1113 CALL                             R17 1 1
     1114 MOVE                             R19 R16
     1115 NAMECALL                         R17 R17 K30 ["remove"]
     1117 CALL                             R17 2 0
     1118 FORNLOOP                         R14
     1119 MOVE                             R16 R3
     1120 MOVE                             R17 R1
     1121 CALL                             R16 1 1
     1122 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
     1124 GETTABLE                         R15 R16 R17
     1125 GETTABLEKS                       R15 R15 K8 ["children"]
     1127 JUMPIF                           R15 ; [+2]
     1128 NEWTABLE                         R15 0 0
     1130 GETTABLEN                        R14 R15 1
     1131 JUMPIFNOT                        R14 ; [+55]
     1132 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
     1134 MOVE                             R17 R2
     1135 GETTABLE                         R19 R1 R16
     1136 GETTABLEKS                       R19 R19 K8 ["children"]
     1138 GETTABLEN                        R18 R19 1
     1139 CALL                             R17 1 1
     1140 DUPTABLE                         R19 K26 [{"name", "children", "attributes", "index"}]
     1141 GETTABLEKS                       R20 R14 K3 ["name"]
     1143 SETTABLEKS                       R20 R19 K3 ["name"]
     1145 SETTABLEKS                       R13 R19 K8 ["children"]
     1147 GETTABLEKS                       R20 R14 K24 ["attributes"]
     1149 SETTABLEKS                       R20 R19 K24 ["attributes"]
     1151 GETTABLEKS                       R20 R14 K25 ["index"]
     1153 SETTABLEKS                       R20 R19 K25 ["index"]
     1155 NAMECALL                         R17 R17 K9 ["set"]
     1157 CALL                             R17 2 0
     1158 JUMP                             ; [+28]
     1159 GETTABLEKS                       R14 R11 K32 ["isTable"]
     1161 JUMPIFNOT                        R14 ; [+14]
     1162 GETUPVAL                         R14 8
     1163 GETTABLEKS                       R15 R11 K35 ["tableCell"]
     1165 GETTABLEKS                       R16 R11 K33 ["tableRowIndex"]
     1167 GETTABLEKS                       R17 R11 K34 ["tableCellIndex"]
     1169 MOVE                             R18 R13
     1170 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
     1172 MOVE                             R20 R1
     1173 MOVE                             R21 R2
     1174 CALL                             R14 7 0
     1175 JUMP                             ; [+11]
     1176 MOVE                             R14 R2
     1177 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
     1179 GETTABLE                         R15 R1 R16
     1180 GETTABLEKS                       R15 R15 K8 ["children"]
     1182 CALL                             R14 1 1
     1183 MOVE                             R16 R13
     1184 NAMECALL                         R14 R14 K9 ["set"]
     1186 CALL                             R14 2 0
     1187 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
     1189 SUBK                             R14 R15 K19 [1]
     1190 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1192 ADDK                             R12 R15 K19 [1]
     1193 LOADN                            R13 -1
     1194 FORNPREP                         R12
     1195 MOVE                             R15 R2
     1196 MOVE                             R16 R1
     1197 CALL                             R15 1 1
     1198 MOVE                             R17 R14
     1199 NAMECALL                         R15 R15 K30 ["remove"]
     1201 CALL                             R15 2 0
     1202 FORNLOOP                         R12
     1203 JUMPIFNOT                        R10 ; [+96]
     1204 GETUPVAL                         R12 1
     1205 GETUPVAL                         R13 6
     1206 GETTABLEKS                       R14 R10 K8 ["children"]
     1208 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
     1210 CALL                             R13 2 -1
     1211 CALL                             R12 -1 1
     1212 GETTABLEKS                       R14 R5 K2 ["blockIndex"]
     1214 GETTABLEKS                       R15 R10 K22 ["flatOffset"]
     1216 LOADN                            R16 0
     1217 LOADN                            R17 0
     1218 NEWCLOSURE                       R18 P1
     1219 CAPTURE                          REF R16
     1220 CAPTURE                          VAL R15
     1221 CAPTURE                          REF R17
     1222 CAPTURE                          UPVAL U0
     1223 CAPTURE                          VAL R14
     1224 CAPTURE                          VAL R18
     1225 MOVE                             R19 R18
     1226 MOVE                             R20 R12
     1227 CALL                             R19 1 1
     1228 JUMPIFNOT                        R19 ; [+3]
     1229 MOVE                             R13 R19
     1230 CLOSEUPVALS                      R16
     1231 JUMP                             ; [+15]
     1232 GETUPVAL                         R20 0
     1233 GETTABLEKS                       R20 R20 K10 ["createCollapsed"]
     1235 MOVE                             R21 R14
     1236 LOADN                            R23 1
     1237 FASTCALL2                        MATH_MAX R23 R16 ; [+4]
     1239 MOVE                             R24 R16
     1240 GETIMPORT                        R22 K13 [math.max]
     1242 CALL                             R22 2 1
     1243 SUB                              R23 R15 R17
     1244 CALL                             R20 3 1
     1245 MOVE                             R13 R20
     1246 CLOSEUPVALS                      R16
     1247 GETTABLEKS                       R14 R10 K38 ["isList"]
     1249 JUMPIFNOT                        R14 ; [+21]
     1250 GETUPVAL                         R14 0
     1251 GETTABLEKS                       R14 R14 K27 ["createPosition"]
     1253 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1255 GETTABLEKS                       R16 R13 K14 ["anchor"]
     1257 GETTABLEKS                       R16 R16 K28 ["segmentIndex"]
     1259 GETTABLEKS                       R17 R13 K14 ["anchor"]
     1261 GETTABLEKS                       R17 R17 K29 ["charOffset"]
     1263 NEWTABLE                         R18 0 1
     1265 GETTABLEKS                       R19 R10 K21 ["listItemIndex"]
     1267 SETLIST                          R18 R19 1 [1]
     1269 CALL                             R14 4 -1
     1270 RETURN                           R14 -1
     1271 GETTABLEKS                       R14 R10 K32 ["isTable"]
     1273 JUMPIFNOT                        R14 ; [+23]
     1274 GETUPVAL                         R14 0
     1275 GETTABLEKS                       R14 R14 K27 ["createPosition"]
     1277 GETTABLEKS                       R15 R5 K2 ["blockIndex"]
     1279 GETTABLEKS                       R16 R13 K14 ["anchor"]
     1281 GETTABLEKS                       R16 R16 K28 ["segmentIndex"]
     1283 GETTABLEKS                       R17 R13 K14 ["anchor"]
     1285 GETTABLEKS                       R17 R17 K29 ["charOffset"]
     1287 NEWTABLE                         R18 0 2
     1289 GETTABLEKS                       R19 R10 K33 ["tableRowIndex"]
     1291 GETTABLEKS                       R20 R10 K34 ["tableCellIndex"]
     1293 SETLIST                          R18 R19 2 [1]
     1295 CALL                             R14 4 -1
     1296 RETURN                           R14 -1
     1297 GETTABLEKS                       R14 R13 K14 ["anchor"]
     1299 RETURN                           R14 1
     1300 GETUPVAL                         R12 0
     1301 GETTABLEKS                       R12 R12 K27 ["createPosition"]
     1303 GETTABLEKS                       R13 R5 K2 ["blockIndex"]
     1305 LOADN                            R14 1
     1306 LOADN                            R15 0
     1307 CALL                             R12 3 -1
     1308 RETURN                           R12 -1

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
      601 JUMPIFNOT                        R15 ; [+39]
      602 GETTABLEKS                       R16 R9 K18 ["text"]
      604 ORK                              R15 R16 K26 [""]
      605 GETUPVAL                         R16 10
      606 MOVE                             R17 R7
      607 MOVE                             R18 R15
      608 CALL                             R16 2 1
      609 LOADN                            R20 1
      610 MOVE                             R21 R16
      611 NAMECALL                         R18 R15 K5 ["sub"]
      613 CALL                             R18 3 1
      614 MOVE                             R19 R0
      615 ADDK                             R22 R16 K12 [1]
      616 NAMECALL                         R20 R15 K5 ["sub"]
      618 CALL                             R20 2 1
      619 CONCAT                           R17 R18 R20
      620 MOVE                             R18 R3
      621 GETTABLEKS                       R20 R7 K0 ["blockIndex"]
      623 GETTABLE                         R19 R2 R20
      624 GETTABLEKS                       R19 R19 K18 ["text"]
      626 CALL                             R18 1 1
      627 MOVE                             R20 R17
      628 NAMECALL                         R18 R18 K30 ["set"]
      630 CALL                             R18 2 0
      631 MOVE                             R18 R4
      632 GETUPVAL                         R19 11
      633 GETTABLEKS                       R20 R7 K0 ["blockIndex"]
      635 MOVE                             R21 R17
      636 LENGTH                           R23 R0
      637 ADD                              R22 R16 R23
      638 CALL                             R19 3 -1
      639 CALL                             R18 -1 0
      640 RETURN                           R0 0
      641 GETTABLEKS                       R16 R9 K1 ["name"]
      643 LOADB                            R15 1
      644 JUMPIFEQKS                       R16 K40 ["PARAGRAPH"] ; [+11]
      646 LOADB                            R15 1
      647 JUMPIFEQKS                       R16 K41 ["HEADING"] ; [+8]
      649 LOADB                            R15 1
      650 JUMPIFEQKS                       R16 K42 ["QUOTE"] ; [+5]
      652 JUMPIFEQKS                       R16 K43 ["LIST_ITEM"] ; [+2]
      654 LOADB                            R15 0 +1
      655 LOADB                            R15 1
      656 JUMPIF                           R15 ; [+36]
      657 NEWTABLE                         R15 0 1
      659 DUPTABLE                         R16 K19 [{["name"] = "TEXT", ["children"], ["text"]}]
      660 NEWTABLE                         R17 0 0
      662 SETTABLEKS                       R17 R16 K4 ["children"]
      664 SETTABLEKS                       R0 R16 K18 ["text"]
      666 SETLIST                          R15 R16 1 [1]
      668 DUPTABLE                         R16 K44 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      669 SETTABLEKS                       R15 R16 K4 ["children"]
      671 MOVE                             R17 R5
      672 CALL                             R17 0 1
      673 SETTABLEKS                       R17 R16 K28 ["index"]
      675 MOVE                             R17 R3
      676 MOVE                             R18 R2
      677 CALL                             R17 1 1
      678 MOVE                             R19 R16
      679 GETTABLEKS                       R20 R7 K0 ["blockIndex"]
      681 NAMECALL                         R17 R17 K23 ["insert"]
      683 CALL                             R17 3 0
      684 MOVE                             R17 R4
      685 GETUPVAL                         R18 12
      686 GETTABLEKS                       R19 R7 K0 ["blockIndex"]
      688 MOVE                             R20 R15
      689 LENGTH                           R21 R0
      690 CALL                             R18 3 -1
      691 CALL                             R17 -1 0
      692 RETURN                           R0 0
      693 GETTABLEKS                       R16 R9 K4 ["children"]
      695 JUMPIF                           R16 ; [+2]
      696 NEWTABLE                         R16 0 0
      698 LOADN                            R17 0
      699 LOADN                            R18 0
      700 NEWCLOSURE                       R19 P0
      701 CAPTURE                          REF R18
      702 CAPTURE                          VAL R7
      703 CAPTURE                          REF R17
      704 CAPTURE                          VAL R19
      705 MOVE                             R20 R19
      706 MOVE                             R21 R16
      707 CALL                             R20 1 1
      708 OR                               R15 R20 R17
      709 CLOSEUPVALS                      R17
      710 GETUPVAL                         R16 1
      711 GETTABLEKS                       R17 R9 K4 ["children"]
      713 JUMPIF                           R17 ; [+2]
      714 NEWTABLE                         R17 0 0
      716 CALL                             R16 1 1
      717 LOADN                            R19 1
      718 MOVE                             R20 R15
      719 NAMECALL                         R17 R16 K5 ["sub"]
      721 CALL                             R17 3 1
      722 JUMPIFNOTEQKS                    R0 K45 [" "] ; [+61]
      724 GETTABLEKS                       R18 R9 K1 ["name"]
      726 JUMPIFNOTEQKS                    R18 K40 ["PARAGRAPH"] ; [+57]
      728 LOADK                            R20 K46 ["^(#+)$"]
      729 NAMECALL                         R18 R17 K47 ["match"]
      731 CALL                             R18 2 1
      732 JUMPIFNOT                        R18 ; [+51]
      733 LENGTH                           R19 R18
      734 LOADN                            R20 6
      735 JUMPIFNOTLE                      R19 R20 ; [+48]
      737 LENGTH                           R19 R18
      738 ADDK                             R22 R15 K12 [1]
      739 NAMECALL                         R20 R16 K5 ["sub"]
      741 CALL                             R20 2 1
      742 MOVE                             R21 R3
      743 GETTABLEKS                       R23 R7 K0 ["blockIndex"]
      745 GETTABLE                         R22 R2 R23
      746 CALL                             R21 1 1
      747 DUPTABLE                         R23 K48 [{["name"] = "HEADING", ["children"], ["attributes"], ["index"]}]
      748 NEWTABLE                         R24 0 1
      750 DUPTABLE                         R25 K19 [{["name"] = "TEXT", ["children"], ["text"]}]
      751 NEWTABLE                         R26 0 0
      753 SETTABLEKS                       R26 R25 K4 ["children"]
      755 SETTABLEKS                       R20 R25 K18 ["text"]
      757 SETLIST                          R24 R25 1 [1]
      759 SETTABLEKS                       R24 R23 K4 ["children"]
      761 DUPTABLE                         R24 K50 [{"depth"}]
      762 SETTABLEKS                       R19 R24 K49 ["depth"]
      764 SETTABLEKS                       R24 R23 K15 ["attributes"]
      766 GETTABLEKS                       R24 R9 K28 ["index"]
      768 SETTABLEKS                       R24 R23 K28 ["index"]
      770 NAMECALL                         R21 R21 K30 ["set"]
      772 CALL                             R21 2 0
      773 MOVE                             R21 R4
      774 GETUPVAL                         R22 6
      775 GETTABLEKS                       R22 R22 K31 ["createCollapsed"]
      777 GETTABLEKS                       R23 R7 K0 ["blockIndex"]
      779 LOADN                            R24 1
      780 LOADN                            R25 0
      781 CALL                             R22 3 -1
      782 CALL                             R21 -1 0
      783 RETURN                           R0 0
      784 JUMPIFNOTEQKS                    R0 K45 [" "] ; [+75]
      786 GETTABLEKS                       R18 R9 K1 ["name"]
      788 JUMPIFNOTEQKS                    R18 K40 ["PARAGRAPH"] ; [+71]
      790 JUMPIFEQKS                       R17 K51 ["-"] ; [+3]
      792 JUMPIFNOTEQKS                    R17 K8 ["*"] ; [+67]
      794 ADDK                             R20 R15 K12 [1]
      795 NAMECALL                         R18 R16 K5 ["sub"]
      797 CALL                             R18 2 1
      798 DUPTABLE                         R19 K52 [{["name"] = "LIST_ITEM", ["children"], ["attributes"], ["index"]}]
      799 NEWTABLE                         R20 0 1
      801 DUPTABLE                         R21 K19 [{["name"] = "TEXT", ["children"], ["text"]}]
      802 NEWTABLE                         R22 0 0
      804 SETTABLEKS                       R22 R21 K4 ["children"]
      806 SETTABLEKS                       R18 R21 K18 ["text"]
      808 SETLIST                          R20 R21 1 [1]
      810 SETTABLEKS                       R20 R19 K4 ["children"]
      812 DUPTABLE                         R20 K54 [{"prefix"}]
      813 SETTABLEKS                       R17 R20 K53 ["prefix"]
      815 SETTABLEKS                       R20 R19 K15 ["attributes"]
      817 MOVE                             R20 R5
      818 CALL                             R20 0 1
      819 SETTABLEKS                       R20 R19 K28 ["index"]
      821 MOVE                             R20 R3
      822 GETTABLEKS                       R22 R7 K0 ["blockIndex"]
      824 GETTABLE                         R21 R2 R22
      825 CALL                             R20 1 1
      826 DUPTABLE                         R22 K55 [{["name"] = "LIST", ["children"], ["attributes"], ["index"]}]
      827 NEWTABLE                         R23 0 1
      829 MOVE                             R24 R19
      830 SETLIST                          R23 R24 1 [1]
      832 SETTABLEKS                       R23 R22 K4 ["children"]
      834 DUPTABLE                         R23 K58 [{["ordered"] = False}]
      835 SETTABLEKS                       R23 R22 K15 ["attributes"]
      837 GETTABLEKS                       R23 R9 K28 ["index"]
      839 SETTABLEKS                       R23 R22 K28 ["index"]
      841 NAMECALL                         R20 R20 K30 ["set"]
      843 CALL                             R20 2 0
      844 MOVE                             R20 R4
      845 GETUPVAL                         R21 6
      846 GETTABLEKS                       R21 R21 K31 ["createCollapsed"]
      848 GETTABLEKS                       R22 R7 K0 ["blockIndex"]
      850 LOADN                            R23 1
      851 LOADN                            R24 0
      852 NEWTABLE                         R25 0 1
      854 LOADN                            R26 1
      855 SETLIST                          R25 R26 1 [1]
      857 CALL                             R21 4 -1
      858 CALL                             R20 -1 0
      859 RETURN                           R0 0
      860 JUMPIFNOTEQKS                    R0 K45 [" "] ; [+84]
      862 GETTABLEKS                       R18 R9 K1 ["name"]
      864 JUMPIFNOTEQKS                    R18 K40 ["PARAGRAPH"] ; [+80]
      866 LOADK                            R20 K59 ["^%[([xX ]?)%]$"]
      867 NAMECALL                         R18 R17 K47 ["match"]
      869 CALL                             R18 2 1
      870 JUMPIFEQKNIL                     R18 ; [+74]
      872 NAMECALL                         R20 R18 K60 ["lower"]
      874 CALL                             R20 1 1
      875 JUMPIFEQKS                       R20 K61 ["x"] ; [+2]
      877 LOADB                            R19 0 +1
      878 LOADB                            R19 1
      879 ADDK                             R22 R15 K12 [1]
      880 NAMECALL                         R20 R16 K5 ["sub"]
      882 CALL                             R20 2 1
      883 DUPTABLE                         R21 K52 [{["name"] = "LIST_ITEM", ["children"], ["attributes"], ["index"]}]
      884 NEWTABLE                         R22 0 1
      886 DUPTABLE                         R23 K19 [{["name"] = "TEXT", ["children"], ["text"]}]
      887 NEWTABLE                         R24 0 0
      889 SETTABLEKS                       R24 R23 K4 ["children"]
      891 SETTABLEKS                       R20 R23 K18 ["text"]
      893 SETLIST                          R22 R23 1 [1]
      895 SETTABLEKS                       R22 R21 K4 ["children"]
      897 DUPTABLE                         R22 K65 [{["prefix"] = "-", ["checkbox"] = True, ["checked"]}]
      898 SETTABLEKS                       R19 R22 K64 ["checked"]
      900 SETTABLEKS                       R22 R21 K15 ["attributes"]
      902 MOVE                             R22 R5
      903 CALL                             R22 0 1
      904 SETTABLEKS                       R22 R21 K28 ["index"]
      906 MOVE                             R22 R3
      907 GETTABLEKS                       R24 R7 K0 ["blockIndex"]
      909 GETTABLE                         R23 R2 R24
      910 CALL                             R22 1 1
      911 DUPTABLE                         R24 K55 [{["name"] = "LIST", ["children"], ["attributes"], ["index"]}]
      912 NEWTABLE                         R25 0 1
      914 MOVE                             R26 R21
      915 SETLIST                          R25 R26 1 [1]
      917 SETTABLEKS                       R25 R24 K4 ["children"]
      919 DUPTABLE                         R25 K58 [{["ordered"] = False}]
      920 SETTABLEKS                       R25 R24 K15 ["attributes"]
      922 GETTABLEKS                       R25 R9 K28 ["index"]
      924 SETTABLEKS                       R25 R24 K28 ["index"]
      926 NAMECALL                         R22 R22 K30 ["set"]
      928 CALL                             R22 2 0
      929 MOVE                             R22 R4
      930 GETUPVAL                         R23 6
      931 GETTABLEKS                       R23 R23 K31 ["createCollapsed"]
      933 GETTABLEKS                       R24 R7 K0 ["blockIndex"]
      935 LOADN                            R25 1
      936 LOADN                            R26 0
      937 NEWTABLE                         R27 0 1
      939 LOADN                            R28 1
      940 SETLIST                          R27 R28 1 [1]
      942 CALL                             R23 4 -1
      943 CALL                             R22 -1 0
      944 RETURN                           R0 0
      945 JUMPIFNOTEQKS                    R0 K6 ["`"] ; [+3]
      947 LOADK                            R18 K7 ["INLINE_CODE"]
      948 JUMP                             ; [+9]
      949 JUMPIFNOTEQKS                    R0 K8 ["*"] ; [+3]
      951 LOADK                            R18 K9 ["BOLD"]
      952 JUMP                             ; [+5]
      953 JUMPIFNOTEQKS                    R0 K10 ["_"] ; [+3]
      955 LOADK                            R18 K11 ["ITALIC"]
      956 JUMP                             ; [+1]
      957 LOADNIL                          R18
      958 JUMPIFNOT                        R18 ; [+141]
      959 LOADNIL                          R19
      960 LENGTH                           R22 R17
      961 LOADN                            R20 1
      962 LOADN                            R21 -1
      963 FORNPREP                         R20
      964 MOVE                             R25 R22
      965 MOVE                             R26 R22
      966 NAMECALL                         R23 R17 K5 ["sub"]
      968 CALL                             R23 3 1
      969 JUMPIFNOTEQ                      R23 R0 ; [+3]
      971 SUBK                             R19 R22 K12 [1]
      972 JUMP                             ; [+1]
      973 FORNLOOP                         R20
      974 JUMPIFEQKNIL                     R19 ; [+125]
      976 ADDK                             R22 R19 K13 [2]
      977 NAMECALL                         R20 R17 K5 ["sub"]
      979 CALL                             R20 2 1
      980 LENGTH                           R21 R20
      981 LOADN                            R22 0
      982 JUMPIFNOTLT                      R22 R21 ; [+117]
      984 GETUPVAL                         R21 2
      985 GETTABLEKS                       R22 R9 K4 ["children"]
      987 JUMPIF                           R22 ; [+2]
      988 NEWTABLE                         R22 0 0
      990 MOVE                             R23 R19
      991 MOVE                             R24 R15
      992 CALL                             R21 3 1
      993 GETUPVAL                         R22 3
      994 MOVE                             R23 R21
      995 MOVE                             R24 R19
      996 CALL                             R22 2 2
      997 DUPTABLE                         R24 K16 [{["name"] = "STYLED_TEXT", ["children"], ["attributes"]}]
      998 NEWTABLE                         R25 0 1
     1000 DUPTABLE                         R26 K19 [{["name"] = "TEXT", ["children"], ["text"]}]
     1001 NEWTABLE                         R27 0 0
     1003 SETTABLEKS                       R27 R26 K4 ["children"]
     1005 SETTABLEKS                       R20 R26 K18 ["text"]
     1007 SETLIST                          R25 R26 1 [1]
     1009 SETTABLEKS                       R25 R24 K4 ["children"]
     1011 DUPTABLE                         R25 K21 [{"style"}]
     1012 SETTABLEKS                       R18 R25 K20 ["style"]
     1014 SETTABLEKS                       R25 R24 K15 ["attributes"]
     1016 NEWTABLE                         R25 0 0
     1018 MOVE                             R26 R22
     1019 LOADNIL                          R27
     1020 LOADNIL                          R28
     1021 FORGPREP                         R26
     1022 FASTCALL2                        TABLE_INSERT R25 R30 ; [+5]
     1024 MOVE                             R32 R25
     1025 MOVE                             R33 R30
     1026 GETIMPORT                        R31 K24 [table.insert]
     1028 CALL                             R31 2 0
     1029 FORGLOOP                         R26 2 ; [-8]
     1031 FASTCALL2                        TABLE_INSERT R25 R24 ; [+5]
     1033 MOVE                             R27 R25
     1034 MOVE                             R28 R24
     1035 GETIMPORT                        R26 K24 [table.insert]
     1037 CALL                             R26 2 0
     1038 MOVE                             R26 R23
     1039 LOADNIL                          R27
     1040 LOADNIL                          R28
     1041 FORGPREP                         R26
     1042 FASTCALL2                        TABLE_INSERT R25 R30 ; [+5]
     1044 MOVE                             R32 R25
     1045 MOVE                             R33 R30
     1046 GETIMPORT                        R31 K24 [table.insert]
     1048 CALL                             R31 2 0
     1049 FORGLOOP                         R26 2 ; [-8]
     1051 LENGTH                           R26 R23
     1052 JUMPIFNOTEQKN                    R26 K25 [0] ; [+12]
     1054 DUPTABLE                         R28 K27 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
     1055 NEWTABLE                         R29 0 0
     1057 SETTABLEKS                       R29 R28 K4 ["children"]
     1059 FASTCALL2                        TABLE_INSERT R25 R28 ; [+4]
     1061 MOVE                             R27 R25
     1062 GETIMPORT                        R26 K24 [table.insert]
     1064 CALL                             R26 2 0
     1065 MOVE                             R26 R3
     1066 GETTABLEKS                       R28 R7 K0 ["blockIndex"]
     1068 GETTABLE                         R27 R2 R28
     1069 GETTABLEKS                       R27 R27 K4 ["children"]
     1071 CALL                             R26 1 1
     1072 GETUPVAL                         R28 4
     1073 MOVE                             R29 R25
     1074 CALL                             R28 1 1
     1075 NAMECALL                         R26 R26 K30 ["set"]
     1077 CALL                             R26 2 0
     1078 GETUPVAL                         R27 5
     1079 MOVE                             R28 R22
     1080 CALL                             R27 1 1
     1081 GETUPVAL                         R28 5
     1082 NEWTABLE                         R29 0 1
     1084 MOVE                             R30 R24
     1085 SETLIST                          R29 R30 1 [1]
     1087 CALL                             R28 1 1
     1088 ADD                              R26 R27 R28
     1089 MOVE                             R27 R4
     1090 GETUPVAL                         R28 6
     1091 GETTABLEKS                       R28 R28 K31 ["createCollapsed"]
     1093 GETTABLEKS                       R29 R7 K0 ["blockIndex"]
     1095 ADDK                             R30 R26 K12 [1]
     1096 LOADN                            R31 0
     1097 CALL                             R28 3 -1
     1098 CALL                             R27 -1 0
     1099 RETURN                           R0 0
     1100 GETUPVAL                         R19 7
     1101 GETTABLEKS                       R20 R9 K4 ["children"]
     1103 JUMPIF                           R20 ; [+2]
     1104 NEWTABLE                         R20 0 0
     1106 MOVE                             R21 R15
     1107 MOVE                             R22 R0
     1108 CALL                             R19 3 1
     1109 MOVE                             R20 R3
     1110 GETTABLEKS                       R22 R7 K0 ["blockIndex"]
     1112 GETTABLE                         R21 R2 R22
     1113 GETTABLEKS                       R21 R21 K4 ["children"]
     1115 CALL                             R20 1 1
     1116 MOVE                             R22 R19
     1117 NAMECALL                         R20 R20 K30 ["set"]
     1119 CALL                             R20 2 0
     1120 LENGTH                           R21 R0
     1121 ADD                              R20 R15 R21
     1122 MOVE                             R21 R4
     1123 GETUPVAL                         R22 12
     1124 GETTABLEKS                       R23 R7 K0 ["blockIndex"]
     1126 MOVE                             R24 R19
     1127 MOVE                             R25 R20
     1128 CALL                             R22 3 -1
     1129 CALL                             R21 -1 0
     1130 RETURN                           R0 0

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
      544 JUMPIFNOT                        R11 ; [+74]
      545 GETTABLEKS                       R12 R8 K35 ["text"]
      547 ORK                              R11 R12 K34 [""]
      548 GETUPVAL                         R12 6
      549 MOVE                             R13 R6
      550 MOVE                             R14 R11
      551 CALL                             R12 2 1
      552 LOADN                            R13 0
      553 JUMPIFNOTLT                      R13 R12 ; [+31]
      555 LOADN                            R16 1
      556 SUBK                             R17 R12 K10 [1]
      557 NAMECALL                         R14 R11 K36 ["sub"]
      559 CALL                             R14 3 1
      560 ADDK                             R17 R12 K10 [1]
      561 NAMECALL                         R15 R11 K36 ["sub"]
      563 CALL                             R15 2 1
      564 CONCAT                           R13 R14 R15
      565 MOVE                             R14 R2
      566 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      568 GETTABLE                         R15 R1 R16
      569 GETTABLEKS                       R15 R15 K35 ["text"]
      571 CALL                             R14 1 1
      572 MOVE                             R16 R13
      573 NAMECALL                         R14 R14 K18 ["set"]
      575 CALL                             R14 2 0
      576 MOVE                             R14 R3
      577 GETUPVAL                         R15 7
      578 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      580 MOVE                             R17 R13
      581 SUBK                             R18 R12 K10 [1]
      582 CALL                             R15 3 -1
      583 CALL                             R14 -1 0
      584 RETURN                           R0 0
      585 LENGTH                           R13 R11
      586 JUMPIFNOTEQKN                    R13 K37 [0] ; [+31]
      588 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      590 LOADN                            R14 1
      591 JUMPIFNOTLT                      R14 R13 ; [+26]
      593 MOVE                             R13 R2
      594 MOVE                             R14 R1
      595 CALL                             R13 1 1
      596 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      598 NAMECALL                         R13 R13 K22 ["remove"]
      600 CALL                             R13 2 0
      601 MOVE                             R13 R3
      602 GETUPVAL                         R14 0
      603 GETTABLEKS                       R14 R14 K1 ["createCollapsed"]
      605 LOADN                            R16 1
      606 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      608 SUBK                             R17 R18 K10 [1]
      609 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      611 GETIMPORT                        R15 K13 [math.max]
      613 CALL                             R15 2 1
      614 LOADN                            R16 1
      615 LOADN                            R17 0
      616 CALL                             R14 3 -1
      617 CALL                             R13 -1 0
      618 RETURN                           R0 0
      619 GETTABLEKS                       R12 R8 K7 ["name"]
      621 LOADB                            R11 1
      622 JUMPIFEQKS                       R12 K23 ["PARAGRAPH"] ; [+11]
      624 LOADB                            R11 1
      625 JUMPIFEQKS                       R12 K38 ["HEADING"] ; [+8]
      627 LOADB                            R11 1
      628 JUMPIFEQKS                       R12 K39 ["QUOTE"] ; [+5]
      630 JUMPIFEQKS                       R12 K40 ["LIST_ITEM"] ; [+2]
      632 LOADB                            R11 0 +1
      633 LOADB                            R11 1
      634 JUMPIFNOT                        R11 ; [+51]
      635 GETTABLEKS                       R12 R8 K9 ["children"]
      637 JUMPIF                           R12 ; [+2]
      638 NEWTABLE                         R12 0 0
      640 LOADN                            R13 0
      641 LOADN                            R14 0
      642 NEWCLOSURE                       R15 P0
      643 CAPTURE                          REF R14
      644 CAPTURE                          VAL R6
      645 CAPTURE                          REF R13
      646 CAPTURE                          VAL R15
      647 MOVE                             R16 R15
      648 MOVE                             R17 R12
      649 CALL                             R16 1 1
      650 OR                               R11 R16 R13
      651 CLOSEUPVALS                      R13
      652 LOADN                            R12 0
      653 JUMPIFNOTLT                      R12 R11 ; [+32]
      655 GETUPVAL                         R12 3
      656 GETUPVAL                         R13 4
      657 GETTABLEKS                       R14 R8 K9 ["children"]
      659 JUMPIF                           R14 ; [+2]
      660 NEWTABLE                         R14 0 0
      662 SUBK                             R15 R11 K10 [1]
      663 MOVE                             R16 R11
      664 CALL                             R13 3 1
      665 CALL                             R12 1 1
      666 MOVE                             R13 R2
      667 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      669 GETTABLE                         R14 R1 R15
      670 GETTABLEKS                       R14 R14 K9 ["children"]
      672 CALL                             R13 1 1
      673 MOVE                             R15 R12
      674 NAMECALL                         R13 R13 K18 ["set"]
      676 CALL                             R13 2 0
      677 MOVE                             R13 R3
      678 GETUPVAL                         R14 8
      679 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      681 MOVE                             R16 R12
      682 SUBK                             R17 R11 K10 [1]
      683 CALL                             R14 3 -1
      684 CALL                             R13 -1 0
      685 RETURN                           R0 0
      686 GETTABLEKS                       R11 R6 K2 ["blockIndex"]
      688 LOADN                            R12 1
      689 JUMPIFNOTLT                      R12 R11 ; [+190]
      691 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      693 SUBK                             R12 R13 K10 [1]
      694 GETTABLE                         R11 R7 R12
      695 JUMPIFNOT                        R11 ; [+90]
      696 GETTABLEKS                       R13 R11 K7 ["name"]
      698 LOADB                            R12 1
      699 JUMPIFEQKS                       R13 K23 ["PARAGRAPH"] ; [+11]
      701 LOADB                            R12 1
      702 JUMPIFEQKS                       R13 K38 ["HEADING"] ; [+8]
      704 LOADB                            R12 1
      705 JUMPIFEQKS                       R13 K39 ["QUOTE"] ; [+5]
      707 JUMPIFEQKS                       R13 K40 ["LIST_ITEM"] ; [+2]
      709 LOADB                            R12 0 +1
      710 LOADB                            R12 1
      711 JUMPIFNOT                        R12 ; [+74]
      712 GETTABLEKS                       R13 R8 K7 ["name"]
      714 LOADB                            R12 1
      715 JUMPIFEQKS                       R13 K23 ["PARAGRAPH"] ; [+11]
      717 LOADB                            R12 1
      718 JUMPIFEQKS                       R13 K38 ["HEADING"] ; [+8]
      720 LOADB                            R12 1
      721 JUMPIFEQKS                       R13 K39 ["QUOTE"] ; [+5]
      723 JUMPIFEQKS                       R13 K40 ["LIST_ITEM"] ; [+2]
      725 LOADB                            R12 0 +1
      726 LOADB                            R12 1
      727 JUMPIFNOT                        R12 ; [+58]
      728 GETTABLEKS                       R13 R11 K9 ["children"]
      730 JUMPIF                           R13 ; [+2]
      731 NEWTABLE                         R13 0 0
      733 LOADN                            R12 0
      734 MOVE                             R14 R13
      735 LOADNIL                          R15
      736 LOADNIL                          R16
      737 FORGPREP                         R14
      738 GETUPVAL                         R19 9
      739 MOVE                             R20 R18
      740 CALL                             R19 1 1
      741 ADD                              R12 R12 R19
      742 FORGLOOP                         R14 2 ; [-5]
      744 GETUPVAL                         R13 10
      745 GETTABLEKS                       R14 R11 K9 ["children"]
      747 JUMPIF                           R14 ; [+2]
      748 NEWTABLE                         R14 0 0
      750 GETTABLEKS                       R15 R8 K9 ["children"]
      752 JUMPIF                           R15 ; [+2]
      753 NEWTABLE                         R15 0 0
      755 CALL                             R13 2 1
      756 MOVE                             R14 R2
      757 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      759 SUBK                             R16 R17 K10 [1]
      760 GETTABLE                         R15 R1 R16
      761 GETTABLEKS                       R15 R15 K9 ["children"]
      763 CALL                             R14 1 1
      764 MOVE                             R16 R13
      765 NAMECALL                         R14 R14 K18 ["set"]
      767 CALL                             R14 2 0
      768 MOVE                             R14 R2
      769 MOVE                             R15 R1
      770 CALL                             R14 1 1
      771 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      773 NAMECALL                         R14 R14 K22 ["remove"]
      775 CALL                             R14 2 0
      776 MOVE                             R14 R3
      777 GETUPVAL                         R15 8
      778 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      780 SUBK                             R16 R17 K10 [1]
      781 MOVE                             R17 R13
      782 MOVE                             R18 R12
      783 CALL                             R15 3 -1
      784 CALL                             R14 -1 0
      785 RETURN                           R0 0
      786 GETTABLEKS                       R13 R8 K7 ["name"]
      788 LOADB                            R12 1
      789 JUMPIFEQKS                       R13 K23 ["PARAGRAPH"] ; [+11]
      791 LOADB                            R12 1
      792 JUMPIFEQKS                       R13 K38 ["HEADING"] ; [+8]
      794 LOADB                            R12 1
      795 JUMPIFEQKS                       R13 K39 ["QUOTE"] ; [+5]
      797 JUMPIFEQKS                       R13 K40 ["LIST_ITEM"] ; [+2]
      799 LOADB                            R12 0 +1
      800 LOADB                            R12 1
      801 JUMPIF                           R12 ; [+26]
      802 MOVE                             R12 R2
      803 MOVE                             R13 R1
      804 CALL                             R12 1 1
      805 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      807 NAMECALL                         R12 R12 K22 ["remove"]
      809 CALL                             R12 2 0
      810 MOVE                             R12 R3
      811 GETUPVAL                         R13 0
      812 GETTABLEKS                       R13 R13 K1 ["createCollapsed"]
      814 LOADN                            R15 1
      815 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      817 SUBK                             R16 R17 K10 [1]
      818 FASTCALL2                        MATH_MAX R15 R16 ; [+3]
      820 GETIMPORT                        R14 K13 [math.max]
      822 CALL                             R14 2 1
      823 LOADN                            R15 1
      824 LOADN                            R16 0
      825 CALL                             R13 3 -1
      826 CALL                             R12 -1 0
      827 RETURN                           R0 0
      828 JUMPIFNOT                        R11 ; [+51]
      829 GETTABLEKS                       R13 R11 K7 ["name"]
      831 LOADB                            R12 1
      832 JUMPIFEQKS                       R13 K23 ["PARAGRAPH"] ; [+11]
      834 LOADB                            R12 1
      835 JUMPIFEQKS                       R13 K38 ["HEADING"] ; [+8]
      837 LOADB                            R12 1
      838 JUMPIFEQKS                       R13 K39 ["QUOTE"] ; [+5]
      840 JUMPIFEQKS                       R13 K40 ["LIST_ITEM"] ; [+2]
      842 LOADB                            R12 0 +1
      843 LOADB                            R12 1
      844 JUMPIF                           R12 ; [+35]
      845 GETTABLEKS                       R13 R8 K9 ["children"]
      847 JUMPIF                           R13 ; [+2]
      848 NEWTABLE                         R13 0 0
      850 LOADN                            R12 0
      851 MOVE                             R14 R13
      852 LOADNIL                          R15
      853 LOADNIL                          R16
      854 FORGPREP                         R14
      855 GETUPVAL                         R19 9
      856 MOVE                             R20 R18
      857 CALL                             R19 1 1
      858 ADD                              R12 R12 R19
      859 FORGLOOP                         R14 2 ; [-5]
      861 JUMPIFNOTEQKN                    R12 K37 [0] ; [+18]
      863 MOVE                             R12 R2
      864 MOVE                             R13 R1
      865 CALL                             R12 1 1
      866 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      868 NAMECALL                         R12 R12 K22 ["remove"]
      870 CALL                             R12 2 0
      871 MOVE                             R12 R3
      872 GETUPVAL                         R13 11
      873 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      875 SUBK                             R14 R15 K10 [1]
      876 MOVE                             R15 R11
      877 LOADB                            R16 1
      878 CALL                             R13 3 -1
      879 CALL                             R12 -1 0
      880 RETURN                           R0 0

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
       44 JUMPIFNOT                        R9 ; [+109]
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
       69 MOVE                             R15 R12
       70 LOADNIL                          R16
       71 LOADNIL                          R17
       72 FORGPREP                         R15
       73 GETUPVAL                         R20 3
       74 MOVE                             R21 R19
       75 CALL                             R20 1 1
       76 ADD                              R14 R14 R20
       77 FORGLOOP                         R15 2 ; [-5]
       79 JUMPIFNOTLT                      R13 R14 ; [+73]
       81 GETUPVAL                         R15 4
       82 GETUPVAL                         R16 5
       83 MOVE                             R17 R12
       84 MOVE                             R18 R13
       85 ADDK                             R19 R13 K10 [1]
       86 CALL                             R16 3 1
       87 CALL                             R15 1 1
       88 GETUPVAL                         R16 6
       89 MOVE                             R17 R9
       90 MOVE                             R18 R10
       91 MOVE                             R19 R11
       92 MOVE                             R20 R15
       93 GETTABLEKS                       R21 R6 K2 ["blockIndex"]
       95 MOVE                             R22 R1
       96 MOVE                             R23 R2
       97 CALL                             R16 7 0
       98 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      100 LOADN                            R18 0
      101 LOADN                            R19 0
      102 NEWCLOSURE                       R20 P1
      103 CAPTURE                          REF R18
      104 CAPTURE                          VAL R13
      105 CAPTURE                          REF R19
      106 CAPTURE                          UPVAL U0
      107 CAPTURE                          VAL R17
      108 CAPTURE                          VAL R20
      109 MOVE                             R21 R20
      110 MOVE                             R22 R15
      111 CALL                             R21 1 1
      112 JUMPIFNOT                        R21 ; [+3]
      113 MOVE                             R16 R21
      114 CLOSEUPVALS                      R18
      115 JUMP                             ; [+15]
      116 GETUPVAL                         R22 0
      117 GETTABLEKS                       R22 R22 K1 ["createCollapsed"]
      119 MOVE                             R23 R17
      120 LOADN                            R25 1
      121 FASTCALL2                        MATH_MAX R25 R18 ; [+4]
      123 MOVE                             R26 R18
      124 GETIMPORT                        R24 K13 [math.max]
      126 CALL                             R24 2 1
      127 SUB                              R25 R13 R19
      128 CALL                             R22 3 1
      129 MOVE                             R16 R22
      130 CLOSEUPVALS                      R18
      131 MOVE                             R17 R3
      132 GETUPVAL                         R18 0
      133 GETTABLEKS                       R18 R18 K1 ["createCollapsed"]
      135 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      137 GETTABLEKS                       R20 R16 K6 ["anchor"]
      139 GETTABLEKS                       R20 R20 K3 ["segmentIndex"]
      141 GETTABLEKS                       R21 R16 K6 ["anchor"]
      143 GETTABLEKS                       R21 R21 K4 ["charOffset"]
      145 NEWTABLE                         R22 0 2
      147 MOVE                             R23 R10
      148 MOVE                             R24 R11
      149 SETLIST                          R22 R23 2 [1]
      151 CALL                             R18 4 -1
      152 CALL                             R17 -1 0
      153 RETURN                           R0 0
      154 GETTABLEKS                       R11 R8 K7 ["name"]
      156 JUMPIFEQKS                       R11 K14 ["LIST"] ; [+4]
      158 LOADNIL                          R9
      159 LOADNIL                          R10
      160 JUMP                             ; [+19]
      161 GETTABLEKS                       R12 R6 K5 ["path"]
      163 JUMPIFNOT                        R12 ; [+4]
      164 GETTABLEKS                       R12 R6 K5 ["path"]
      166 GETTABLEN                        R11 R12 1
      167 JUMP                             ; [+1]
      168 LOADNIL                          R11
      169 JUMPIF                           R11 ; [+3]
      170 LOADNIL                          R9
      171 LOADNIL                          R10
      172 JUMP                             ; [+7]
      173 GETTABLEKS                       R12 R8 K9 ["children"]
      175 JUMPIF                           R12 ; [+2]
      176 NEWTABLE                         R12 0 0
      178 GETTABLE                         R9 R12 R11
      179 MOVE                             R10 R11
      180 GETTABLEKS                       R11 R8 K7 ["name"]
      182 JUMPIFNOTEQKS                    R11 K14 ["LIST"] ; [+244]
      184 JUMPIF                           R9 ; [+1]
      185 RETURN                           R0 0
      186 GETTABLEKS                       R11 R8 K9 ["children"]
      188 JUMPIF                           R11 ; [+2]
      189 NEWTABLE                         R11 0 0
      191 GETTABLEKS                       R13 R9 K9 ["children"]
      193 JUMPIF                           R13 ; [+2]
      194 NEWTABLE                         R13 0 0
      196 LOADN                            R14 0
      197 LOADN                            R15 0
      198 NEWCLOSURE                       R16 P0
      199 CAPTURE                          REF R15
      200 CAPTURE                          VAL R6
      201 CAPTURE                          REF R14
      202 CAPTURE                          VAL R16
      203 MOVE                             R17 R16
      204 MOVE                             R18 R13
      205 CALL                             R17 1 1
      206 OR                               R12 R17 R14
      207 CLOSEUPVALS                      R14
      208 GETTABLEKS                       R14 R9 K9 ["children"]
      210 JUMPIF                           R14 ; [+2]
      211 NEWTABLE                         R14 0 0
      213 LOADN                            R13 0
      214 MOVE                             R15 R14
      215 LOADNIL                          R16
      216 LOADNIL                          R17
      217 FORGPREP                         R15
      218 GETUPVAL                         R20 3
      219 MOVE                             R21 R19
      220 CALL                             R20 1 1
      221 ADD                              R13 R13 R20
      222 FORGLOOP                         R15 2 ; [-5]
      224 JUMPIFNOTLT                      R12 R13 ; [+93]
      226 GETUPVAL                         R14 4
      227 GETUPVAL                         R15 5
      228 GETTABLEKS                       R16 R9 K9 ["children"]
      230 JUMPIF                           R16 ; [+2]
      231 NEWTABLE                         R16 0 0
      233 MOVE                             R17 R12
      234 ADDK                             R18 R12 K10 [1]
      235 CALL                             R15 3 1
      236 CALL                             R14 1 1
      237 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      239 MOVE                             R16 R2
      240 GETTABLE                         R18 R1 R15
      241 GETTABLEKS                       R18 R18 K9 ["children"]
      243 GETTABLE                         R17 R18 R10
      244 CALL                             R16 1 1
      245 DUPTABLE                         R18 K17 [{"name", "children", "attributes", "index"}]
      246 GETTABLEKS                       R19 R9 K7 ["name"]
      248 SETTABLEKS                       R19 R18 K7 ["name"]
      250 SETTABLEKS                       R14 R18 K9 ["children"]
      252 GETTABLEKS                       R19 R9 K15 ["attributes"]
      254 SETTABLEKS                       R19 R18 K15 ["attributes"]
      256 GETTABLEKS                       R19 R9 K16 ["index"]
      258 SETTABLEKS                       R19 R18 K16 ["index"]
      260 NAMECALL                         R16 R16 K18 ["set"]
      262 CALL                             R16 2 0
      263 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      265 LOADN                            R17 0
      266 LOADN                            R18 0
      267 NEWCLOSURE                       R19 P1
      268 CAPTURE                          REF R17
      269 CAPTURE                          VAL R12
      270 CAPTURE                          REF R18
      271 CAPTURE                          UPVAL U0
      272 CAPTURE                          VAL R16
      273 CAPTURE                          VAL R19
      274 MOVE                             R20 R19
      275 MOVE                             R21 R14
      276 CALL                             R20 1 1
      277 JUMPIFNOT                        R20 ; [+3]
      278 MOVE                             R15 R20
      279 CLOSEUPVALS                      R17
      280 JUMP                             ; [+15]
      281 GETUPVAL                         R21 0
      282 GETTABLEKS                       R21 R21 K1 ["createCollapsed"]
      284 MOVE                             R22 R16
      285 LOADN                            R24 1
      286 FASTCALL2                        MATH_MAX R24 R17 ; [+4]
      288 MOVE                             R25 R17
      289 GETIMPORT                        R23 K13 [math.max]
      291 CALL                             R23 2 1
      292 SUB                              R24 R12 R18
      293 CALL                             R21 3 1
      294 MOVE                             R15 R21
      295 CLOSEUPVALS                      R17
      296 MOVE                             R16 R3
      297 GETUPVAL                         R17 0
      298 GETTABLEKS                       R17 R17 K1 ["createCollapsed"]
      300 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      302 GETTABLEKS                       R19 R15 K6 ["anchor"]
      304 GETTABLEKS                       R19 R19 K3 ["segmentIndex"]
      306 GETTABLEKS                       R20 R15 K6 ["anchor"]
      308 GETTABLEKS                       R20 R20 K4 ["charOffset"]
      310 NEWTABLE                         R21 0 1
      312 MOVE                             R22 R10
      313 SETLIST                          R21 R22 1 [1]
      315 CALL                             R17 4 -1
      316 CALL                             R16 -1 0
      317 RETURN                           R0 0
      318 LENGTH                           R14 R11
      319 JUMPIFNOTLT                      R10 R14 ; [+106]
      321 ADDK                             R15 R10 K10 [1]
      322 GETTABLE                         R14 R11 R15
      323 GETUPVAL                         R15 7
      324 GETTABLEKS                       R16 R9 K9 ["children"]
      326 JUMPIF                           R16 ; [+2]
      327 NEWTABLE                         R16 0 0
      329 GETTABLEKS                       R17 R14 K9 ["children"]
      331 JUMPIF                           R17 ; [+2]
      332 NEWTABLE                         R17 0 0
      334 CALL                             R15 2 1
      335 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      337 MOVE                             R17 R2
      338 GETTABLE                         R19 R1 R16
      339 GETTABLEKS                       R19 R19 K9 ["children"]
      341 GETTABLE                         R18 R19 R10
      342 CALL                             R17 1 1
      343 DUPTABLE                         R19 K17 [{"name", "children", "attributes", "index"}]
      344 GETTABLEKS                       R20 R9 K7 ["name"]
      346 SETTABLEKS                       R20 R19 K7 ["name"]
      348 SETTABLEKS                       R15 R19 K9 ["children"]
      350 GETTABLEKS                       R20 R9 K15 ["attributes"]
      352 SETTABLEKS                       R20 R19 K15 ["attributes"]
      354 GETTABLEKS                       R20 R9 K16 ["index"]
      356 SETTABLEKS                       R20 R19 K16 ["index"]
      358 NAMECALL                         R17 R17 K18 ["set"]
      360 CALL                             R17 2 0
      361 MOVE                             R16 R2
      362 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      364 GETTABLE                         R17 R1 R18
      365 GETTABLEKS                       R17 R17 K9 ["children"]
      367 CALL                             R16 1 1
      368 ADDK                             R18 R10 K10 [1]
      369 NAMECALL                         R16 R16 K19 ["remove"]
      371 CALL                             R16 2 0
      372 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      374 LOADN                            R18 0
      375 LOADN                            R19 0
      376 NEWCLOSURE                       R20 P1
      377 CAPTURE                          REF R18
      378 CAPTURE                          VAL R12
      379 CAPTURE                          REF R19
      380 CAPTURE                          UPVAL U0
      381 CAPTURE                          VAL R17
      382 CAPTURE                          VAL R20
      383 MOVE                             R21 R20
      384 MOVE                             R22 R15
      385 CALL                             R21 1 1
      386 JUMPIFNOT                        R21 ; [+3]
      387 MOVE                             R16 R21
      388 CLOSEUPVALS                      R18
      389 JUMP                             ; [+15]
      390 GETUPVAL                         R22 0
      391 GETTABLEKS                       R22 R22 K1 ["createCollapsed"]
      393 MOVE                             R23 R17
      394 LOADN                            R25 1
      395 FASTCALL2                        MATH_MAX R25 R18 ; [+4]
      397 MOVE                             R26 R18
      398 GETIMPORT                        R24 K13 [math.max]
      400 CALL                             R24 2 1
      401 SUB                              R25 R12 R19
      402 CALL                             R22 3 1
      403 MOVE                             R16 R22
      404 CLOSEUPVALS                      R18
      405 MOVE                             R17 R3
      406 GETUPVAL                         R18 0
      407 GETTABLEKS                       R18 R18 K1 ["createCollapsed"]
      409 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      411 GETTABLEKS                       R20 R16 K6 ["anchor"]
      413 GETTABLEKS                       R20 R20 K3 ["segmentIndex"]
      415 GETTABLEKS                       R21 R16 K6 ["anchor"]
      417 GETTABLEKS                       R21 R21 K4 ["charOffset"]
      419 NEWTABLE                         R22 0 1
      421 MOVE                             R23 R10
      422 SETLIST                          R22 R23 1 [1]
      424 CALL                             R18 4 -1
      425 CALL                             R17 -1 0
      426 RETURN                           R0 0
      427 GETTABLEKS                       R12 R8 K7 ["name"]
      429 JUMPIFEQKS                       R12 K20 ["CODE_BLOCK"] ; [+2]
      431 LOADB                            R11 0 +1
      432 LOADB                            R11 1
      433 JUMPIFNOT                        R11 ; [+40]
      434 GETTABLEKS                       R12 R8 K22 ["text"]
      436 ORK                              R11 R12 K21 [""]
      437 GETUPVAL                         R12 8
      438 MOVE                             R13 R6
      439 MOVE                             R14 R11
      440 CALL                             R12 2 1
      441 LENGTH                           R13 R11
      442 JUMPIFNOTLT                      R12 R13 ; [+30]
      444 LOADN                            R16 1
      445 MOVE                             R17 R12
      446 NAMECALL                         R14 R11 K23 ["sub"]
      448 CALL                             R14 3 1
      449 ADDK                             R17 R12 K24 [2]
      450 NAMECALL                         R15 R11 K23 ["sub"]
      452 CALL                             R15 2 1
      453 CONCAT                           R13 R14 R15
      454 MOVE                             R14 R2
      455 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      457 GETTABLE                         R15 R1 R16
      458 GETTABLEKS                       R15 R15 K22 ["text"]
      460 CALL                             R14 1 1
      461 MOVE                             R16 R13
      462 NAMECALL                         R14 R14 K18 ["set"]
      464 CALL                             R14 2 0
      465 MOVE                             R14 R3
      466 GETUPVAL                         R15 9
      467 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      469 MOVE                             R17 R13
      470 MOVE                             R18 R12
      471 CALL                             R15 3 -1
      472 CALL                             R14 -1 0
      473 RETURN                           R0 0
      474 GETTABLEKS                       R12 R8 K7 ["name"]
      476 LOADB                            R11 1
      477 JUMPIFEQKS                       R12 K25 ["PARAGRAPH"] ; [+11]
      479 LOADB                            R11 1
      480 JUMPIFEQKS                       R12 K26 ["HEADING"] ; [+8]
      482 LOADB                            R11 1
      483 JUMPIFEQKS                       R12 K27 ["QUOTE"] ; [+5]
      485 JUMPIFEQKS                       R12 K28 ["LIST_ITEM"] ; [+2]
      487 LOADB                            R11 0 +1
      488 LOADB                            R11 1
      489 JUMPIFNOT                        R11 ; [+160]
      490 GETTABLEKS                       R12 R8 K9 ["children"]
      492 JUMPIF                           R12 ; [+2]
      493 NEWTABLE                         R12 0 0
      495 LOADN                            R13 0
      496 LOADN                            R14 0
      497 NEWCLOSURE                       R15 P0
      498 CAPTURE                          REF R14
      499 CAPTURE                          VAL R6
      500 CAPTURE                          REF R13
      501 CAPTURE                          VAL R15
      502 MOVE                             R16 R15
      503 MOVE                             R17 R12
      504 CALL                             R16 1 1
      505 OR                               R11 R16 R13
      506 CLOSEUPVALS                      R13
      507 GETTABLEKS                       R13 R8 K9 ["children"]
      509 JUMPIF                           R13 ; [+2]
      510 NEWTABLE                         R13 0 0
      512 LOADN                            R12 0
      513 MOVE                             R14 R13
      514 LOADNIL                          R15
      515 LOADNIL                          R16
      516 FORGPREP                         R14
      517 GETUPVAL                         R19 3
      518 MOVE                             R20 R18
      519 CALL                             R19 1 1
      520 ADD                              R12 R12 R19
      521 FORGLOOP                         R14 2 ; [-5]
      523 JUMPIFNOTLT                      R11 R12 ; [+32]
      525 GETUPVAL                         R13 4
      526 GETUPVAL                         R14 5
      527 GETTABLEKS                       R15 R8 K9 ["children"]
      529 JUMPIF                           R15 ; [+2]
      530 NEWTABLE                         R15 0 0
      532 MOVE                             R16 R11
      533 ADDK                             R17 R11 K10 [1]
      534 CALL                             R14 3 1
      535 CALL                             R13 1 1
      536 MOVE                             R14 R2
      537 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      539 GETTABLE                         R15 R1 R16
      540 GETTABLEKS                       R15 R15 K9 ["children"]
      542 CALL                             R14 1 1
      543 MOVE                             R16 R13
      544 NAMECALL                         R14 R14 K18 ["set"]
      546 CALL                             R14 2 0
      547 MOVE                             R14 R3
      548 GETUPVAL                         R15 10
      549 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      551 MOVE                             R17 R13
      552 MOVE                             R18 R11
      553 CALL                             R15 3 -1
      554 CALL                             R14 -1 0
      555 RETURN                           R0 0
      556 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      558 LENGTH                           R14 R7
      559 JUMPIFNOTLT                      R13 R14 ; [+121]
      561 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      563 ADDK                             R14 R15 K10 [1]
      564 GETTABLE                         R13 R7 R14
      565 JUMPIFNOT                        R13 ; [+57]
      566 GETTABLEKS                       R15 R13 K7 ["name"]
      568 LOADB                            R14 1
      569 JUMPIFEQKS                       R15 K25 ["PARAGRAPH"] ; [+11]
      571 LOADB                            R14 1
      572 JUMPIFEQKS                       R15 K26 ["HEADING"] ; [+8]
      574 LOADB                            R14 1
      575 JUMPIFEQKS                       R15 K27 ["QUOTE"] ; [+5]
      577 JUMPIFEQKS                       R15 K28 ["LIST_ITEM"] ; [+2]
      579 LOADB                            R14 0 +1
      580 LOADB                            R14 1
      581 JUMPIFNOT                        R14 ; [+41]
      582 GETUPVAL                         R14 7
      583 GETTABLEKS                       R15 R8 K9 ["children"]
      585 JUMPIF                           R15 ; [+2]
      586 NEWTABLE                         R15 0 0
      588 GETTABLEKS                       R16 R13 K9 ["children"]
      590 JUMPIF                           R16 ; [+2]
      591 NEWTABLE                         R16 0 0
      593 CALL                             R14 2 1
      594 MOVE                             R15 R2
      595 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      597 GETTABLE                         R16 R1 R17
      598 GETTABLEKS                       R16 R16 K9 ["children"]
      600 CALL                             R15 1 1
      601 MOVE                             R17 R14
      602 NAMECALL                         R15 R15 K18 ["set"]
      604 CALL                             R15 2 0
      605 MOVE                             R15 R2
      606 MOVE                             R16 R1
      607 CALL                             R15 1 1
      608 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      610 ADDK                             R17 R18 K10 [1]
      611 NAMECALL                         R15 R15 K19 ["remove"]
      613 CALL                             R15 2 0
      614 MOVE                             R15 R3
      615 GETUPVAL                         R16 10
      616 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      618 MOVE                             R18 R14
      619 MOVE                             R19 R11
      620 CALL                             R16 3 -1
      621 CALL                             R15 -1 0
      622 RETURN                           R0 0
      623 JUMPIFNOT                        R13 ; [+57]
      624 GETTABLEKS                       R15 R13 K7 ["name"]
      626 LOADB                            R14 1
      627 JUMPIFEQKS                       R15 K25 ["PARAGRAPH"] ; [+11]
      629 LOADB                            R14 1
      630 JUMPIFEQKS                       R15 K26 ["HEADING"] ; [+8]
      632 LOADB                            R14 1
      633 JUMPIFEQKS                       R15 K27 ["QUOTE"] ; [+5]
      635 JUMPIFEQKS                       R15 K28 ["LIST_ITEM"] ; [+2]
      637 LOADB                            R14 0 +1
      638 LOADB                            R14 1
      639 JUMPIF                           R14 ; [+41]
      640 MOVE                             R14 R2
      641 MOVE                             R15 R1
      642 CALL                             R14 1 1
      643 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      645 ADDK                             R16 R17 K10 [1]
      646 NAMECALL                         R14 R14 K19 ["remove"]
      648 CALL                             R14 2 0
      649 RETURN                           R0 0
      650 MOVE                             R11 R2
      651 MOVE                             R12 R1
      652 CALL                             R11 1 1
      653 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      655 NAMECALL                         R11 R11 K19 ["remove"]
      657 CALL                             R11 2 0
      658 MOVE                             R11 R3
      659 GETUPVAL                         R12 0
      660 GETTABLEKS                       R12 R12 K1 ["createCollapsed"]
      662 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      664 LOADN                            R16 1
      665 LENGTH                           R18 R7
      666 SUBK                             R17 R18 K10 [1]
      667 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      669 GETIMPORT                        R15 K13 [math.max]
      671 CALL                             R15 2 1
      672 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
      674 GETIMPORT                        R13 K30 [math.min]
      676 CALL                             R13 2 1
      677 LOADN                            R14 1
      678 LOADN                            R15 0
      679 CALL                             R12 3 -1
      680 CALL                             R11 -1 0
      681 RETURN                           R0 0

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
      142 JUMPIFNOTEQKS                    R9 K19 ["LIST"] ; [+332]
      144 GETTABLEKS                       R9 R8 K5 ["children"]
      146 JUMPIF                           R9 ; [+2]
      147 NEWTABLE                         R9 0 0
      149 GETTABLEKS                       R11 R6 K20 ["path"]
      151 JUMPIFNOT                        R11 ; [+4]
      152 GETTABLEKS                       R11 R6 K20 ["path"]
      154 GETTABLEN                        R10 R11 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R10
      157 JUMPIFNOT                        R10 ; [+316]
      158 GETTABLE                         R11 R9 R10
      159 JUMPIFNOT                        R11 ; [+314]
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
      191 LOADN                            R15 0
      192 MOVE                             R17 R16
      193 LOADNIL                          R18
      194 LOADNIL                          R19
      195 FORGPREP                         R17
      196 GETUPVAL                         R22 5
      197 MOVE                             R23 R21
      198 CALL                             R22 1 1
      199 ADD                              R15 R15 R22
      200 FORGLOOP                         R17 2 ; [-5]
      202 JUMPIFNOTEQKN                    R15 K21 [0] ; [+191]
      204 LENGTH                           R15 R9
      205 JUMPIFNOTEQKN                    R15 K6 [1] ; [+36]
      207 MOVE                             R15 R2
      208 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      210 GETTABLE                         R16 R1 R17
      211 CALL                             R15 1 1
      212 DUPTABLE                         R17 K13 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      213 NEWTABLE                         R18 0 1
      215 DUPTABLE                         R19 K17 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      216 NEWTABLE                         R20 0 0
      218 SETTABLEKS                       R20 R19 K5 ["children"]
      220 SETLIST                          R18 R19 1 [1]
      222 SETTABLEKS                       R18 R17 K5 ["children"]
      224 GETTABLEKS                       R18 R8 K12 ["index"]
      226 SETTABLEKS                       R18 R17 K12 ["index"]
      228 NAMECALL                         R15 R15 K22 ["set"]
      230 CALL                             R15 2 0
      231 MOVE                             R15 R3
      232 GETUPVAL                         R16 0
      233 GETTABLEKS                       R16 R16 K10 ["createCollapsed"]
      235 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      237 LOADN                            R18 1
      238 LOADN                            R19 0
      239 CALL                             R16 3 -1
      240 CALL                             R15 -1 0
      241 RETURN                           R0 0
      242 JUMPIFNOTEQKN                    R10 K6 [1] ; [+48]
      244 MOVE                             R15 R2
      245 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      247 GETTABLE                         R16 R1 R17
      248 GETTABLEKS                       R16 R16 K5 ["children"]
      250 CALL                             R15 1 1
      251 LOADN                            R17 1
      252 NAMECALL                         R15 R15 K23 ["remove"]
      254 CALL                             R15 2 0
      255 DUPTABLE                         R15 K13 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      256 NEWTABLE                         R16 0 1
      258 DUPTABLE                         R17 K17 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      259 NEWTABLE                         R18 0 0
      261 SETTABLEKS                       R18 R17 K5 ["children"]
      263 SETLIST                          R16 R17 1 [1]
      265 SETTABLEKS                       R16 R15 K5 ["children"]
      267 MOVE                             R16 R4
      268 CALL                             R16 0 1
      269 SETTABLEKS                       R16 R15 K12 ["index"]
      271 MOVE                             R16 R2
      272 MOVE                             R17 R1
      273 CALL                             R16 1 1
      274 MOVE                             R18 R15
      275 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      277 NAMECALL                         R16 R16 K18 ["insert"]
      279 CALL                             R16 3 0
      280 MOVE                             R16 R3
      281 GETUPVAL                         R17 0
      282 GETTABLEKS                       R17 R17 K10 ["createCollapsed"]
      284 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      286 LOADN                            R19 1
      287 LOADN                            R20 0
      288 CALL                             R17 3 -1
      289 CALL                             R16 -1 0
      290 RETURN                           R0 0
      291 NEWTABLE                         R15 0 0
      293 ADDK                             R18 R10 K6 [1]
      294 LENGTH                           R16 R9
      295 LOADN                            R17 1
      296 FORNPREP                         R16
      297 GETTABLE                         R21 R9 R18
      298 FASTCALL2                        TABLE_INSERT R15 R21 ; [+4]
      300 MOVE                             R20 R15
      301 GETIMPORT                        R19 K25 [table.insert]
      303 CALL                             R19 2 0
      304 FORNLOOP                         R16
      305 LENGTH                           R18 R9
      306 MOVE                             R16 R10
      307 LOADN                            R17 -1
      308 FORNPREP                         R16
      309 MOVE                             R19 R2
      310 GETTABLEKS                       R21 R6 K2 ["blockIndex"]
      312 GETTABLE                         R20 R1 R21
      313 GETTABLEKS                       R20 R20 K5 ["children"]
      315 CALL                             R19 1 1
      316 MOVE                             R21 R18
      317 NAMECALL                         R19 R19 K23 ["remove"]
      319 CALL                             R19 2 0
      320 FORNLOOP                         R16
      321 DUPTABLE                         R16 K13 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      322 NEWTABLE                         R17 0 1
      324 DUPTABLE                         R18 K17 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      325 NEWTABLE                         R19 0 0
      327 SETTABLEKS                       R19 R18 K5 ["children"]
      329 SETLIST                          R17 R18 1 [1]
      331 SETTABLEKS                       R17 R16 K5 ["children"]
      333 MOVE                             R17 R4
      334 CALL                             R17 0 1
      335 SETTABLEKS                       R17 R16 K12 ["index"]
      337 MOVE                             R17 R2
      338 MOVE                             R18 R1
      339 CALL                             R17 1 1
      340 MOVE                             R19 R16
      341 GETTABLEKS                       R21 R6 K2 ["blockIndex"]
      343 ADDK                             R20 R21 K6 [1]
      344 NAMECALL                         R17 R17 K18 ["insert"]
      346 CALL                             R17 3 0
      347 LENGTH                           R17 R15
      348 LOADN                            R18 0
      349 JUMPIFNOTLT                      R18 R17 ; [+32]
      351 DUPTABLE                         R17 K27 [{["name"] = "LIST", ["children"], ["attributes"], ["index"]}]
      352 SETTABLEKS                       R15 R17 K5 ["children"]
      354 DUPTABLE                         R18 K29 [{"ordered"}]
      355 GETTABLEKS                       R20 R8 K26 ["attributes"]
      357 JUMPIFNOT                        R20 ; [+5]
      358 GETTABLEKS                       R19 R8 K26 ["attributes"]
      360 GETTABLEKS                       R19 R19 K28 ["ordered"]
      362 JUMPIF                           R19 ; [+1]
      363 LOADB                            R19 0
      364 SETTABLEKS                       R19 R18 K28 ["ordered"]
      366 SETTABLEKS                       R18 R17 K26 ["attributes"]
      368 MOVE                             R18 R4
      369 CALL                             R18 0 1
      370 SETTABLEKS                       R18 R17 K12 ["index"]
      372 MOVE                             R18 R2
      373 MOVE                             R19 R1
      374 CALL                             R18 1 1
      375 MOVE                             R20 R17
      376 GETTABLEKS                       R22 R6 K2 ["blockIndex"]
      378 ADDK                             R21 R22 K30 [2]
      379 NAMECALL                         R18 R18 K18 ["insert"]
      381 CALL                             R18 3 0
      382 MOVE                             R17 R3
      383 GETUPVAL                         R18 0
      384 GETTABLEKS                       R18 R18 K10 ["createCollapsed"]
      386 GETTABLEKS                       R20 R6 K2 ["blockIndex"]
      388 ADDK                             R19 R20 K6 [1]
      389 LOADN                            R20 1
      390 LOADN                            R21 0
      391 CALL                             R18 3 -1
      392 CALL                             R17 -1 0
      393 RETURN                           R0 0
      394 GETUPVAL                         R15 6
      395 MOVE                             R16 R13
      396 CALL                             R15 1 1
      397 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      399 MOVE                             R17 R2
      400 GETTABLE                         R19 R1 R16
      401 GETTABLEKS                       R19 R19 K5 ["children"]
      403 GETTABLE                         R18 R19 R10
      404 CALL                             R17 1 1
      405 DUPTABLE                         R19 K31 [{"name", "children", "attributes", "index"}]
      406 GETTABLEKS                       R20 R11 K3 ["name"]
      408 SETTABLEKS                       R20 R19 K3 ["name"]
      410 SETTABLEKS                       R15 R19 K5 ["children"]
      412 GETTABLEKS                       R20 R11 K26 ["attributes"]
      414 SETTABLEKS                       R20 R19 K26 ["attributes"]
      416 GETTABLEKS                       R20 R11 K12 ["index"]
      418 SETTABLEKS                       R20 R19 K12 ["index"]
      420 NAMECALL                         R17 R17 K22 ["set"]
      422 CALL                             R17 2 0
      423 DUPTABLE                         R15 K33 [{["name"] = "LIST_ITEM", ["children"], ["attributes"], ["index"]}]
      424 GETUPVAL                         R16 6
      425 MOVE                             R17 R14
      426 CALL                             R16 1 1
      427 SETTABLEKS                       R16 R15 K5 ["children"]
      429 DUPTABLE                         R16 K35 [{"prefix"}]
      430 GETTABLEKS                       R18 R11 K26 ["attributes"]
      432 JUMPIFNOT                        R18 ; [+5]
      433 GETTABLEKS                       R17 R11 K26 ["attributes"]
      435 GETTABLEKS                       R17 R17 K34 ["prefix"]
      437 JUMPIF                           R17 ; [+1]
      438 LOADK                            R17 K36 ["-"]
      439 SETTABLEKS                       R17 R16 K34 ["prefix"]
      441 SETTABLEKS                       R16 R15 K26 ["attributes"]
      443 MOVE                             R16 R4
      444 CALL                             R16 0 1
      445 SETTABLEKS                       R16 R15 K12 ["index"]
      447 MOVE                             R16 R2
      448 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      450 GETTABLE                         R17 R1 R18
      451 GETTABLEKS                       R17 R17 K5 ["children"]
      453 CALL                             R16 1 1
      454 MOVE                             R18 R15
      455 ADDK                             R19 R10 K6 [1]
      456 NAMECALL                         R16 R16 K18 ["insert"]
      458 CALL                             R16 3 0
      459 MOVE                             R16 R3
      460 GETUPVAL                         R17 0
      461 GETTABLEKS                       R17 R17 K10 ["createCollapsed"]
      463 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      465 LOADN                            R19 1
      466 LOADN                            R20 0
      467 NEWTABLE                         R21 0 1
      469 ADDK                             R22 R10 K6 [1]
      470 SETLIST                          R21 R22 1 [1]
      472 CALL                             R17 4 -1
      473 CALL                             R16 -1 0
      474 RETURN                           R0 0
      475 GETTABLEKS                       R9 R8 K3 ["name"]
      477 JUMPIFNOTEQKS                    R9 K11 ["PARAGRAPH"] ; [+54]
      479 GETUPVAL                         R9 7
      480 GETTABLEKS                       R10 R8 K5 ["children"]
      482 JUMPIF                           R10 ; [+2]
      483 NEWTABLE                         R10 0 0
      485 CALL                             R9 1 1
      486 LOADK                            R12 K37 ["^```(%w*)$"]
      487 NAMECALL                         R10 R9 K38 ["match"]
      489 CALL                             R10 2 1
      490 JUMPIFEQKNIL                     R10 ; [+41]
      492 MOVE                             R11 R2
      493 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      495 GETTABLE                         R12 R1 R13
      496 CALL                             R11 1 1
      497 DUPTABLE                         R13 K40 [{["name"] = "CODE_BLOCK", ["children"], ["text"] = "", ["attributes"], ["index"]}]
      498 NEWTABLE                         R14 0 0
      500 SETTABLEKS                       R14 R13 K5 ["children"]
      502 DUPTABLE                         R14 K42 [{"language"}]
      503 LENGTH                           R16 R10
      504 LOADN                            R17 0
      505 JUMPIFNOTLT                      R17 R16 ; [+3]
      507 MOVE                             R15 R10
      508 JUMP                             ; [+1]
      509 LOADNIL                          R15
      510 SETTABLEKS                       R15 R14 K41 ["language"]
      512 SETTABLEKS                       R14 R13 K26 ["attributes"]
      514 GETTABLEKS                       R14 R8 K12 ["index"]
      516 SETTABLEKS                       R14 R13 K12 ["index"]
      518 NAMECALL                         R11 R11 K22 ["set"]
      520 CALL                             R11 2 0
      521 MOVE                             R11 R3
      522 GETUPVAL                         R12 0
      523 GETTABLEKS                       R12 R12 K10 ["createCollapsed"]
      525 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      527 LOADN                            R14 1
      528 LOADN                            R15 0
      529 CALL                             R12 3 -1
      530 CALL                             R11 -1 0
      531 RETURN                           R0 0
      532 GETTABLEKS                       R9 R8 K3 ["name"]
      534 JUMPIFNOTEQKS                    R9 K11 ["PARAGRAPH"] ; [+68]
      536 GETUPVAL                         R9 7
      537 GETTABLEKS                       R10 R8 K5 ["children"]
      539 JUMPIF                           R10 ; [+2]
      540 NEWTABLE                         R10 0 0
      542 CALL                             R9 1 1
      543 LOADK                            R12 K43 ["^%-%-%-+$"]
      544 NAMECALL                         R10 R9 K38 ["match"]
      546 CALL                             R10 2 1
      547 JUMPIFNOT                        R10 ; [+55]
      548 MOVE                             R10 R2
      549 GETTABLEKS                       R12 R6 K2 ["blockIndex"]
      551 GETTABLE                         R11 R1 R12
      552 CALL                             R10 1 1
      553 DUPTABLE                         R12 K45 [{["name"] = "DIVIDER", ["children"], ["index"]}]
      554 NEWTABLE                         R13 0 0
      556 SETTABLEKS                       R13 R12 K5 ["children"]
      558 GETTABLEKS                       R13 R8 K12 ["index"]
      560 SETTABLEKS                       R13 R12 K12 ["index"]
      562 NAMECALL                         R10 R10 K22 ["set"]
      564 CALL                             R10 2 0
      565 DUPTABLE                         R10 K13 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      566 NEWTABLE                         R11 0 1
      568 DUPTABLE                         R12 K17 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      569 NEWTABLE                         R13 0 0
      571 SETTABLEKS                       R13 R12 K5 ["children"]
      573 SETLIST                          R11 R12 1 [1]
      575 SETTABLEKS                       R11 R10 K5 ["children"]
      577 MOVE                             R11 R4
      578 CALL                             R11 0 1
      579 SETTABLEKS                       R11 R10 K12 ["index"]
      581 MOVE                             R11 R2
      582 MOVE                             R12 R1
      583 CALL                             R11 1 1
      584 MOVE                             R13 R10
      585 GETTABLEKS                       R15 R6 K2 ["blockIndex"]
      587 ADDK                             R14 R15 K6 [1]
      588 NAMECALL                         R11 R11 K18 ["insert"]
      590 CALL                             R11 3 0
      591 MOVE                             R11 R3
      592 GETUPVAL                         R12 0
      593 GETTABLEKS                       R12 R12 K10 ["createCollapsed"]
      595 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      597 ADDK                             R13 R14 K6 [1]
      598 LOADN                            R14 1
      599 LOADN                            R15 0
      600 CALL                             R12 3 -1
      601 CALL                             R11 -1 0
      602 RETURN                           R0 0
      603 GETTABLEKS                       R10 R8 K3 ["name"]
      605 JUMPIFEQKS                       R10 K39 ["CODE_BLOCK"] ; [+2]
      607 LOADB                            R9 0 +1
      608 LOADB                            R9 1
      609 JUMPIFNOT                        R9 ; [+155]
      610 GETTABLEKS                       R10 R8 K15 ["text"]
      612 ORK                              R9 R10 K16 [""]
      613 GETUPVAL                         R10 8
      614 MOVE                             R11 R6
      615 MOVE                             R12 R9
      616 CALL                             R10 2 1
      617 LOADK                            R13 K46 ["\n[^\n]*$"]
      618 NAMECALL                         R11 R9 K47 ["find"]
      620 CALL                             R11 2 1
      621 JUMPIFNOT                        R11 ; [+5]
      622 ADDK                             R14 R11 K6 [1]
      623 NAMECALL                         R12 R9 K48 ["sub"]
      625 CALL                             R12 2 1
      626 JUMP                             ; [+1]
      627 LOADNIL                          R12
      628 LOADB                            R13 1
      629 JUMPIFEQKS                       R9 K16 [""] ; [+16]
      631 LOADB                            R13 0
      632 LENGTH                           R14 R9
      633 JUMPIFNOTEQ                      R10 R14 ; [+12]
      635 LOADB                            R13 0
      636 JUMPIFEQKNIL                     R12 ; [+9]
      638 LOADK                            R16 K49 ["^[\t ]*$"]
      639 NAMECALL                         R14 R12 K38 ["match"]
      641 CALL                             R14 2 1
      642 JUMPIFNOTEQKNIL                  R14 ; [+2]
      644 LOADB                            R13 0 +1
      645 LOADB                            R13 1
      646 LENGTH                           R14 R9
      647 JUMPIFNOTEQ                      R10 R14 ; [+60]
      649 JUMPIFNOT                        R13 ; [+58]
      650 LENGTH                           R14 R9
      651 LOADN                            R15 0
      652 JUMPIFNOTLT                      R15 R14 ; [+17]
      654 LOADN                            R16 1
      655 SUBK                             R17 R11 K6 [1]
      656 NAMECALL                         R14 R9 K48 ["sub"]
      658 CALL                             R14 3 1
      659 MOVE                             R15 R2
      660 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      662 GETTABLE                         R16 R1 R17
      663 GETTABLEKS                       R16 R16 K15 ["text"]
      665 CALL                             R15 1 1
      666 MOVE                             R17 R14
      667 NAMECALL                         R15 R15 K22 ["set"]
      669 CALL                             R15 2 0
      670 DUPTABLE                         R14 K13 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      671 NEWTABLE                         R15 0 1
      673 DUPTABLE                         R16 K17 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      674 NEWTABLE                         R17 0 0
      676 SETTABLEKS                       R17 R16 K5 ["children"]
      678 SETLIST                          R15 R16 1 [1]
      680 SETTABLEKS                       R15 R14 K5 ["children"]
      682 MOVE                             R15 R4
      683 CALL                             R15 0 1
      684 SETTABLEKS                       R15 R14 K12 ["index"]
      686 MOVE                             R15 R2
      687 MOVE                             R16 R1
      688 CALL                             R15 1 1
      689 MOVE                             R17 R14
      690 GETTABLEKS                       R19 R6 K2 ["blockIndex"]
      692 ADDK                             R18 R19 K6 [1]
      693 NAMECALL                         R15 R15 K18 ["insert"]
      695 CALL                             R15 3 0
      696 MOVE                             R15 R3
      697 GETUPVAL                         R16 0
      698 GETTABLEKS                       R16 R16 K10 ["createCollapsed"]
      700 GETTABLEKS                       R18 R6 K2 ["blockIndex"]
      702 ADDK                             R17 R18 K6 [1]
      703 LOADN                            R18 1
      704 LOADN                            R19 0
      705 CALL                             R16 3 -1
      706 CALL                             R15 -1 0
      707 RETURN                           R0 0
      708 MOVE                             R14 R10
      709 LOADN                            R15 0
      710 JUMPIFNOTLT                      R15 R14 ; [+10]
      712 MOVE                             R17 R14
      713 MOVE                             R18 R14
      714 NAMECALL                         R15 R9 K48 ["sub"]
      716 CALL                             R15 3 1
      717 JUMPIFEQKS                       R15 K50 ["\n"] ; [+3]
      719 SUBK                             R14 R14 K6 [1]
      720 JUMPBACK                         ; [-12]
      721 ADDK                             R17 R14 K6 [1]
      722 MOVE                             R18 R10
      723 NAMECALL                         R15 R9 K48 ["sub"]
      725 CALL                             R15 3 1
      726 LOADK                            R19 K51 ["^([\t ]*)"]
      727 NAMECALL                         R17 R15 K38 ["match"]
      729 CALL                             R17 2 1
      730 ORK                              R16 R17 K16 [""]
      731 LOADN                            R20 1
      732 MOVE                             R21 R10
      733 NAMECALL                         R18 R9 K48 ["sub"]
      735 CALL                             R18 3 1
      736 LOADK                            R19 K50 ["\n"]
      737 MOVE                             R20 R16
      738 ADDK                             R23 R10 K6 [1]
      739 NAMECALL                         R21 R9 K48 ["sub"]
      741 CALL                             R21 2 1
      742 CONCAT                           R17 R18 R21
      743 MOVE                             R18 R2
      744 GETTABLEKS                       R20 R6 K2 ["blockIndex"]
      746 GETTABLE                         R19 R1 R20
      747 GETTABLEKS                       R19 R19 K15 ["text"]
      749 CALL                             R18 1 1
      750 MOVE                             R20 R17
      751 NAMECALL                         R18 R18 K22 ["set"]
      753 CALL                             R18 2 0
      754 MOVE                             R18 R3
      755 GETUPVAL                         R19 9
      756 GETTABLEKS                       R20 R6 K2 ["blockIndex"]
      758 MOVE                             R21 R17
      759 ADDK                             R23 R10 K6 [1]
      760 LENGTH                           R24 R16
      761 ADD                              R22 R23 R24
      762 CALL                             R19 3 -1
      763 CALL                             R18 -1 0
      764 RETURN                           R0 0
      765 GETTABLEKS                       R10 R8 K3 ["name"]
      767 LOADB                            R9 1
      768 JUMPIFEQKS                       R10 K11 ["PARAGRAPH"] ; [+11]
      770 LOADB                            R9 1
      771 JUMPIFEQKS                       R10 K52 ["HEADING"] ; [+8]
      773 LOADB                            R9 1
      774 JUMPIFEQKS                       R10 K53 ["QUOTE"] ; [+5]
      776 JUMPIFEQKS                       R10 K32 ["LIST_ITEM"] ; [+2]
      778 LOADB                            R9 0 +1
      779 LOADB                            R9 1
      780 JUMPIFNOT                        R9 ; [+80]
      781 GETTABLEKS                       R10 R8 K5 ["children"]
      783 JUMPIF                           R10 ; [+2]
      784 NEWTABLE                         R10 0 0
      786 LOADN                            R11 0
      787 LOADN                            R12 0
      788 NEWCLOSURE                       R13 P0
      789 CAPTURE                          REF R12
      790 CAPTURE                          VAL R6
      791 CAPTURE                          REF R11
      792 CAPTURE                          VAL R13
      793 MOVE                             R14 R13
      794 MOVE                             R15 R10
      795 CALL                             R14 1 1
      796 OR                               R9 R14 R11
      797 CLOSEUPVALS                      R11
      798 GETUPVAL                         R10 4
      799 GETTABLEKS                       R11 R8 K5 ["children"]
      801 JUMPIF                           R11 ; [+2]
      802 NEWTABLE                         R11 0 0
      804 MOVE                             R12 R9
      805 CALL                             R10 2 2
      806 MOVE                             R12 R2
      807 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      809 GETTABLE                         R13 R1 R14
      810 GETTABLEKS                       R13 R13 K5 ["children"]
      812 CALL                             R12 1 1
      813 GETUPVAL                         R14 6
      814 MOVE                             R15 R10
      815 CALL                             R14 1 1
      816 NAMECALL                         R12 R12 K22 ["set"]
      818 CALL                             R12 2 0
      819 DUPTABLE                         R12 K54 [{"name", "children", "index"}]
      820 GETTABLEKS                       R14 R8 K3 ["name"]
      822 JUMPIFNOTEQKS                    R14 K52 ["HEADING"] ; [+3]
      824 LOADK                            R13 K11 ["PARAGRAPH"]
      825 JUMP                             ; [+2]
      826 GETTABLEKS                       R13 R8 K3 ["name"]
      828 SETTABLEKS                       R13 R12 K3 ["name"]
      830 GETUPVAL                         R13 6
      831 MOVE                             R14 R11
      832 CALL                             R13 1 1
      833 SETTABLEKS                       R13 R12 K5 ["children"]
      835 MOVE                             R13 R4
      836 CALL                             R13 0 1
      837 SETTABLEKS                       R13 R12 K12 ["index"]
      839 MOVE                             R13 R2
      840 MOVE                             R14 R1
      841 CALL                             R13 1 1
      842 MOVE                             R15 R12
      843 GETTABLEKS                       R17 R6 K2 ["blockIndex"]
      845 ADDK                             R16 R17 K6 [1]
      846 NAMECALL                         R13 R13 K18 ["insert"]
      848 CALL                             R13 3 0
      849 MOVE                             R13 R3
      850 GETUPVAL                         R14 0
      851 GETTABLEKS                       R14 R14 K10 ["createCollapsed"]
      853 GETTABLEKS                       R16 R6 K2 ["blockIndex"]
      855 ADDK                             R15 R16 K6 [1]
      856 LOADN                            R16 1
      857 LOADN                            R17 0
      858 CALL                             R14 3 -1
      859 CALL                             R13 -1 0
      860 RETURN                           R0 0
      861 DUPTABLE                         R9 K13 [{["name"] = "PARAGRAPH", ["children"], ["index"]}]
      862 NEWTABLE                         R10 0 1
      864 DUPTABLE                         R11 K17 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      865 NEWTABLE                         R12 0 0
      867 SETTABLEKS                       R12 R11 K5 ["children"]
      869 SETLIST                          R10 R11 1 [1]
      871 SETTABLEKS                       R10 R9 K5 ["children"]
      873 MOVE                             R10 R4
      874 CALL                             R10 0 1
      875 SETTABLEKS                       R10 R9 K12 ["index"]
      877 MOVE                             R10 R2
      878 MOVE                             R11 R1
      879 CALL                             R10 1 1
      880 MOVE                             R12 R9
      881 GETTABLEKS                       R14 R6 K2 ["blockIndex"]
      883 ADDK                             R13 R14 K6 [1]
      884 NAMECALL                         R10 R10 K18 ["insert"]
      886 CALL                             R10 3 0
      887 MOVE                             R10 R3
      888 GETUPVAL                         R11 0
      889 GETTABLEKS                       R11 R11 K10 ["createCollapsed"]
      891 GETTABLEKS                       R13 R6 K2 ["blockIndex"]
      893 ADDK                             R12 R13 K6 [1]
      894 LOADN                            R13 1
      895 LOADN                            R14 0
      896 CALL                             R11 3 -1
      897 CALL                             R10 -1 0
      898 RETURN                           R0 0

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
      152 LOADN                            R22 0
      153 LOADN                            R23 0
      154 NEWCLOSURE                       R24 P0
      155 CAPTURE                          REF R23
      156 CAPTURE                          VAL R6
      157 CAPTURE                          REF R22
      158 CAPTURE                          VAL R24
      159 MOVE                             R25 R24
      160 MOVE                             R26 R10
      161 CALL                             R25 1 1
      162 OR                               R20 R25 R22
      163 CLOSEUPVALS                      R22
      164 LOADN                            R23 0
      165 LOADN                            R24 0
      166 NEWCLOSURE                       R25 P0
      167 CAPTURE                          REF R24
      168 CAPTURE                          VAL R7
      169 CAPTURE                          REF R23
      170 CAPTURE                          VAL R25
      171 MOVE                             R26 R25
      172 MOVE                             R27 R10
      173 CALL                             R26 1 1
      174 OR                               R21 R26 R23
      175 CLOSEUPVALS                      R23
      176 JUMPIFNOTEQ                      R20 R21 ; [+2]
      178 RETURN                           R0 0
      179 LOADNIL                          R22
      180 GETUPVAL                         R23 2
      181 MOVE                             R24 R10
      182 MOVE                             R25 R20
      183 MOVE                             R26 R21
      184 MOVE                             R27 R0
      185 CALL                             R23 4 1
      186 JUMPIFNOT                        R23 ; [+8]
      187 GETUPVAL                         R24 3
      188 MOVE                             R25 R10
      189 MOVE                             R26 R20
      190 MOVE                             R27 R21
      191 MOVE                             R28 R0
      192 CALL                             R24 4 1
      193 MOVE                             R22 R24
      194 JUMP                             ; [+25]
      195 GETUPVAL                         R24 4
      196 MOVE                             R25 R10
      197 MOVE                             R26 R20
      198 MOVE                             R27 R21
      199 MOVE                             R28 R0
      200 CALL                             R24 4 1
      201 MOVE                             R22 R24
      202 LENGTH                           R25 R22
      203 GETTABLE                         R24 R22 R25
      204 JUMPIFNOT                        R24 ; [+15]
      205 GETTABLEKS                       R25 R24 K3 ["name"]
      207 JUMPIFNOTEQKS                    R25 K12 ["STYLED_TEXT"] ; [+12]
      209 DUPTABLE                         R27 K16 [{["name"] = "TEXT", ["children"], ["text"] = ""}]
      210 NEWTABLE                         R28 0 0
      212 SETTABLEKS                       R28 R27 K6 ["children"]
      214 FASTCALL2                        TABLE_INSERT R22 R27 ; [+4]
      216 MOVE                             R26 R22
      217 GETIMPORT                        R25 K19 [table.insert]
      219 CALL                             R25 2 0
      220 JUMPIFNOT                        R13 ; [+27]
      221 GETTABLEKS                       R25 R6 K2 ["blockIndex"]
      223 MOVE                             R26 R3
      224 GETTABLE                         R28 R2 R25
      225 GETTABLEKS                       R28 R28 K6 ["children"]
      227 GETTABLE                         R27 R28 R16
      228 CALL                             R26 1 1
      229 DUPTABLE                         R28 K22 [{"name", "children", "attributes", "index"}]
      230 GETTABLEKS                       R29 R15 K3 ["name"]
      232 SETTABLEKS                       R29 R28 K3 ["name"]
      234 SETTABLEKS                       R22 R28 K6 ["children"]
      236 GETTABLEKS                       R29 R15 K20 ["attributes"]
      238 SETTABLEKS                       R29 R28 K20 ["attributes"]
      240 GETTABLEKS                       R29 R15 K21 ["index"]
      242 SETTABLEKS                       R29 R28 K21 ["index"]
      244 NAMECALL                         R26 R26 K23 ["set"]
      246 CALL                             R26 2 0
      247 JUMP                             ; [+19]
      248 JUMPIFNOT                        R14 ; [+11]
      249 GETUPVAL                         R24 5
      250 MOVE                             R25 R17
      251 MOVE                             R26 R18
      252 MOVE                             R27 R19
      253 MOVE                             R28 R22
      254 GETTABLEKS                       R29 R6 K2 ["blockIndex"]
      256 MOVE                             R30 R2
      257 MOVE                             R31 R3
      258 CALL                             R24 7 0
      259 JUMP                             ; [+7]
      260 MOVE                             R24 R3
      261 MOVE                             R25 R11
      262 CALL                             R24 1 1
      263 MOVE                             R26 R22
      264 NAMECALL                         R24 R24 K23 ["set"]
      266 CALL                             R24 2 0
      267 JUMPIFNOT                        R23 ; [+116]
      268 GETTABLEKS                       R25 R6 K2 ["blockIndex"]
      270 LOADN                            R27 0
      271 LOADN                            R28 0
      272 NEWCLOSURE                       R29 P1
      273 CAPTURE                          REF R27
      274 CAPTURE                          VAL R20
      275 CAPTURE                          REF R28
      276 CAPTURE                          UPVAL U0
      277 CAPTURE                          VAL R25
      278 CAPTURE                          VAL R29
      279 MOVE                             R30 R29
      280 MOVE                             R31 R22
      281 CALL                             R30 1 1
      282 JUMPIFNOT                        R30 ; [+3]
      283 MOVE                             R24 R30
      284 CLOSEUPVALS                      R27
      285 JUMP                             ; [+15]
      286 GETUPVAL                         R31 0
      287 GETTABLEKS                       R31 R31 K24 ["createCollapsed"]
      289 MOVE                             R32 R25
      290 LOADN                            R34 1
      291 FASTCALL2                        MATH_MAX R34 R27 ; [+4]
      293 MOVE                             R35 R27
      294 GETIMPORT                        R33 K27 [math.max]
      296 CALL                             R33 2 1
      297 SUB                              R34 R20 R28
      298 CALL                             R31 3 1
      299 MOVE                             R24 R31
      300 CLOSEUPVALS                      R27
      301 GETTABLEKS                       R26 R6 K2 ["blockIndex"]
      303 LOADN                            R28 0
      304 LOADN                            R29 0
      305 NEWCLOSURE                       R30 P1
      306 CAPTURE                          REF R28
      307 CAPTURE                          VAL R21
      308 CAPTURE                          REF R29
      309 CAPTURE                          UPVAL U0
      310 CAPTURE                          VAL R26
      311 CAPTURE                          VAL R30
      312 MOVE                             R31 R30
      313 MOVE                             R32 R22
      314 CALL                             R31 1 1
      315 JUMPIFNOT                        R31 ; [+3]
      316 MOVE                             R25 R31
      317 CLOSEUPVALS                      R28
      318 JUMP                             ; [+15]
      319 GETUPVAL                         R32 0
      320 GETTABLEKS                       R32 R32 K24 ["createCollapsed"]
      322 MOVE                             R33 R26
      323 LOADN                            R35 1
      324 FASTCALL2                        MATH_MAX R35 R28 ; [+4]
      326 MOVE                             R36 R28
      327 GETIMPORT                        R34 K27 [math.max]
      329 CALL                             R34 2 1
      330 SUB                              R35 R21 R29
      331 CALL                             R32 3 1
      332 MOVE                             R25 R32
      333 CLOSEUPVALS                      R28
      334 MOVE                             R26 R4
      335 DUPTABLE                         R27 K30 [{"anchor", "focus"}]
      336 DUPTABLE                         R28 K33 [{"blockIndex", "path", "segmentIndex", "charOffset"}]
      337 GETTABLEKS                       R29 R24 K28 ["anchor"]
      339 GETTABLEKS                       R29 R29 K2 ["blockIndex"]
      341 SETTABLEKS                       R29 R28 K2 ["blockIndex"]
      343 SETTABLEKS                       R12 R28 K5 ["path"]
      345 GETTABLEKS                       R29 R24 K28 ["anchor"]
      347 GETTABLEKS                       R29 R29 K31 ["segmentIndex"]
      349 SETTABLEKS                       R29 R28 K31 ["segmentIndex"]
      351 GETTABLEKS                       R29 R24 K28 ["anchor"]
      353 GETTABLEKS                       R29 R29 K32 ["charOffset"]
      355 SETTABLEKS                       R29 R28 K32 ["charOffset"]
      357 SETTABLEKS                       R28 R27 K28 ["anchor"]
      359 DUPTABLE                         R28 K33 [{"blockIndex", "path", "segmentIndex", "charOffset"}]
      360 GETTABLEKS                       R29 R25 K28 ["anchor"]
      362 GETTABLEKS                       R29 R29 K2 ["blockIndex"]
      364 SETTABLEKS                       R29 R28 K2 ["blockIndex"]
      366 SETTABLEKS                       R12 R28 K5 ["path"]
      368 GETTABLEKS                       R29 R25 K28 ["anchor"]
      370 GETTABLEKS                       R29 R29 K31 ["segmentIndex"]
      372 SETTABLEKS                       R29 R28 K31 ["segmentIndex"]
      374 GETTABLEKS                       R29 R25 K28 ["anchor"]
      376 GETTABLEKS                       R29 R29 K32 ["charOffset"]
      378 SETTABLEKS                       R29 R28 K32 ["charOffset"]
      380 SETTABLEKS                       R28 R27 K29 ["focus"]
      382 CALL                             R26 1 0
      383 RETURN                           R0 0
      384 LOADN                            R24 0
      385 LOADN                            R25 0
      386 MOVE                             R26 R22
      387 LOADNIL                          R27
      388 LOADNIL                          R28
      389 FORGPREP                         R26
      390 GETTABLEKS                       R31 R30 K3 ["name"]
      392 JUMPIFNOTEQKS                    R31 K12 ["STYLED_TEXT"] ; [+12]
      394 JUMPIFNOTEQ                      R24 R20 ; [+10]
      396 GETUPVAL                         R31 6
      397 NEWTABLE                         R32 0 1
      399 MOVE                             R33 R30
      400 SETLIST                          R32 R33 1 [1]
      402 CALL                             R31 1 1
      403 ADD                              R25 R25 R31
      404 JUMP                             ; [+14]
      405 GETUPVAL                         R31 6
      406 NEWTABLE                         R32 0 1
      408 MOVE                             R33 R30
      409 SETLIST                          R32 R33 1 [1]
      411 CALL                             R31 1 1
      412 ADD                              R25 R25 R31
      413 GETUPVAL                         R31 7
      414 MOVE                             R32 R30
      415 CALL                             R31 1 1
      416 ADD                              R24 R24 R31
      417 FORGLOOP                         R26 2 ; [-28]
      419 MOVE                             R26 R4
      420 GETUPVAL                         R27 0
      421 GETTABLEKS                       R27 R27 K24 ["createCollapsed"]
      423 GETTABLEKS                       R28 R6 K2 ["blockIndex"]
      425 ADDK                             R29 R25 K34 [1]
      426 LOADN                            R30 0
      427 MOVE                             R31 R12
      428 CALL                             R27 4 -1
      429 CALL                             R26 -1 0
      430 RETURN                           R0 0

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
       42 JUMPIFNOT                        R7 ; [+275]
       43 GETUPVAL                         R7 1
       44 MOVE                             R8 R6
       45 MOVE                             R9 R4
       46 CALL                             R7 2 3
       47 JUMPIFNOT                        R7 ; [+270]
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
      136 JUMPIFNOTLT                      R12 R9 ; [+88]
      138 GETTABLE                         R13 R11 R8
      139 GETTABLEKS                       R13 R13 K10 ["children"]
      141 JUMPIF                           R13 ; [+2]
      142 NEWTABLE                         R13 0 0
      144 SUBK                             R14 R9 K11 [1]
      145 GETTABLE                         R12 R13 R14
      146 JUMPIFNOT                        R12 ; [+171]
      147 GETTABLEKS                       R14 R12 K10 ["children"]
      149 JUMPIF                           R14 ; [+2]
      150 NEWTABLE                         R14 0 0
      152 LOADN                            R13 0
      153 MOVE                             R15 R14
      154 LOADNIL                          R16
      155 LOADNIL                          R17
      156 FORGPREP                         R15
      157 GETUPVAL                         R20 2
      158 MOVE                             R21 R19
      159 CALL                             R20 1 1
      160 ADD                              R13 R13 R20
      161 FORGLOOP                         R15 2 ; [-5]
      163 GETTABLEKS                       R15 R4 K3 ["blockIndex"]
      165 GETTABLEKS                       R16 R12 K10 ["children"]
      167 JUMPIF                           R16 ; [+2]
      168 NEWTABLE                         R16 0 0
      170 LOADN                            R17 0
      171 LOADN                            R18 0
      172 NEWCLOSURE                       R19 P1
      173 CAPTURE                          REF R17
      174 CAPTURE                          VAL R13
      175 CAPTURE                          REF R18
      176 CAPTURE                          UPVAL U0
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R19
      179 MOVE                             R20 R19
      180 MOVE                             R21 R16
      181 CALL                             R20 1 1
      182 JUMPIFNOT                        R20 ; [+3]
      183 MOVE                             R14 R20
      184 CLOSEUPVALS                      R17
      185 JUMP                             ; [+15]
      186 GETUPVAL                         R21 0
      187 GETTABLEKS                       R21 R21 K2 ["createCollapsed"]
      189 MOVE                             R22 R15
      190 LOADN                            R24 1
      191 FASTCALL2                        MATH_MAX R24 R17 ; [+4]
      193 MOVE                             R25 R17
      194 GETIMPORT                        R23 K14 [math.max]
      196 CALL                             R23 2 1
      197 SUB                              R24 R13 R18
      198 CALL                             R21 3 1
      199 MOVE                             R14 R21
      200 CLOSEUPVALS                      R17
      201 MOVE                             R15 R2
      202 GETUPVAL                         R16 0
      203 GETTABLEKS                       R16 R16 K2 ["createCollapsed"]
      205 GETTABLEKS                       R17 R4 K3 ["blockIndex"]
      207 GETTABLEKS                       R18 R14 K7 ["anchor"]
      209 GETTABLEKS                       R18 R18 K4 ["segmentIndex"]
      211 GETTABLEKS                       R19 R14 K7 ["anchor"]
      213 GETTABLEKS                       R19 R19 K5 ["charOffset"]
      215 NEWTABLE                         R20 0 2
      217 MOVE                             R21 R8
      218 SUBK                             R22 R9 K11 [1]
      219 SETLIST                          R20 R21 2 [1]
      221 CALL                             R16 4 -1
      222 CALL                             R15 -1 0
      223 RETURN                           R0 0
      224 JUMP                             ; [+93]
      225 LOADN                            R12 1
      226 JUMPIFNOTLT                      R12 R8 ; [+91]
      228 SUBK                             R13 R8 K11 [1]
      229 GETTABLE                         R12 R11 R13
      230 GETTABLEKS                       R13 R12 K10 ["children"]
      232 JUMPIF                           R13 ; [+2]
      233 NEWTABLE                         R13 0 0
      235 LENGTH                           R14 R13
      236 LOADN                            R15 0
      237 JUMPIFNOTLT                      R15 R14 ; [+80]
      239 LENGTH                           R15 R13
      240 GETTABLE                         R14 R13 R15
      241 GETTABLEKS                       R16 R14 K10 ["children"]
      243 JUMPIF                           R16 ; [+2]
      244 NEWTABLE                         R16 0 0
      246 LOADN                            R15 0
      247 MOVE                             R17 R16
      248 LOADNIL                          R18
      249 LOADNIL                          R19
      250 FORGPREP                         R17
      251 GETUPVAL                         R22 2
      252 MOVE                             R23 R21
      253 CALL                             R22 1 1
      254 ADD                              R15 R15 R22
      255 FORGLOOP                         R17 2 ; [-5]
      257 GETTABLEKS                       R17 R4 K3 ["blockIndex"]
      259 GETTABLEKS                       R18 R14 K10 ["children"]
      261 JUMPIF                           R18 ; [+2]
      262 NEWTABLE                         R18 0 0
      264 LOADN                            R19 0
      265 LOADN                            R20 0
      266 NEWCLOSURE                       R21 P1
      267 CAPTURE                          REF R19
      268 CAPTURE                          VAL R15
      269 CAPTURE                          REF R20
      270 CAPTURE                          UPVAL U0
      271 CAPTURE                          VAL R17
      272 CAPTURE                          VAL R21
      273 MOVE                             R22 R21
      274 MOVE                             R23 R18
      275 CALL                             R22 1 1
      276 JUMPIFNOT                        R22 ; [+3]
      277 MOVE                             R16 R22
      278 CLOSEUPVALS                      R19
      279 JUMP                             ; [+15]
      280 GETUPVAL                         R23 0
      281 GETTABLEKS                       R23 R23 K2 ["createCollapsed"]
      283 MOVE                             R24 R17
      284 LOADN                            R26 1
      285 FASTCALL2                        MATH_MAX R26 R19 ; [+4]
      287 MOVE                             R27 R19
      288 GETIMPORT                        R25 K14 [math.max]
      290 CALL                             R25 2 1
      291 SUB                              R26 R15 R20
      292 CALL                             R23 3 1
      293 MOVE                             R16 R23
      294 CLOSEUPVALS                      R19
      295 MOVE                             R17 R2
      296 GETUPVAL                         R18 0
      297 GETTABLEKS                       R18 R18 K2 ["createCollapsed"]
      299 GETTABLEKS                       R19 R4 K3 ["blockIndex"]
      301 GETTABLEKS                       R20 R16 K7 ["anchor"]
      303 GETTABLEKS                       R20 R20 K4 ["segmentIndex"]
      305 GETTABLEKS                       R21 R16 K7 ["anchor"]
      307 GETTABLEKS                       R21 R21 K5 ["charOffset"]
      309 NEWTABLE                         R22 0 2
      311 SUBK                             R23 R8 K11 [1]
      312 LENGTH                           R24 R13
      313 SETLIST                          R22 R23 2 [1]
      315 CALL                             R18 4 -1
      316 CALL                             R17 -1 0
      317 RETURN                           R0 0
      318 GETTABLEKS                       R9 R6 K8 ["name"]
      320 JUMPIFEQKS                       R9 K15 ["LIST"] ; [+4]
      322 LOADNIL                          R7
      323 LOADNIL                          R8
      324 JUMP                             ; [+19]
      325 GETTABLEKS                       R10 R4 K6 ["path"]
      327 JUMPIFNOT                        R10 ; [+4]
      328 GETTABLEKS                       R10 R4 K6 ["path"]
      330 GETTABLEN                        R9 R10 1
      331 JUMP                             ; [+1]
      332 LOADNIL                          R9
      333 JUMPIF                           R9 ; [+3]
      334 LOADNIL                          R7
      335 LOADNIL                          R8
      336 JUMP                             ; [+7]
      337 GETTABLEKS                       R10 R6 K10 ["children"]
      339 JUMPIF                           R10 ; [+2]
      340 NEWTABLE                         R10 0 0
      342 GETTABLE                         R7 R10 R9
      343 MOVE                             R8 R9
      344 GETTABLEKS                       R9 R6 K8 ["name"]
      346 JUMPIFNOTEQKS                    R9 K15 ["LIST"] ; [+170]
      348 JUMPIFNOT                        R7 ; [+168]
      349 GETTABLEKS                       R10 R7 K10 ["children"]
      351 JUMPIF                           R10 ; [+2]
      352 NEWTABLE                         R10 0 0
      354 LOADN                            R11 0
      355 LOADN                            R12 0
      356 NEWCLOSURE                       R13 P0
      357 CAPTURE                          REF R12
      358 CAPTURE                          VAL R4
      359 CAPTURE                          REF R11
      360 CAPTURE                          VAL R13
      361 MOVE                             R14 R13
      362 MOVE                             R15 R10
      363 CALL                             R14 1 1
      364 OR                               R9 R14 R11
      365 CLOSEUPVALS                      R11
      366 LOADN                            R10 0
      367 JUMPIFNOTLT                      R10 R9 ; [+62]
      369 GETTABLEKS                       R11 R4 K3 ["blockIndex"]
      371 GETTABLEKS                       R12 R7 K10 ["children"]
      373 JUMPIF                           R12 ; [+2]
      374 NEWTABLE                         R12 0 0
      376 SUBK                             R13 R9 K11 [1]
      377 LOADN                            R14 0
      378 LOADN                            R15 0
      379 NEWCLOSURE                       R16 P1
      380 CAPTURE                          REF R14
      381 CAPTURE                          VAL R13
      382 CAPTURE                          REF R15
      383 CAPTURE                          UPVAL U0
      384 CAPTURE                          VAL R11
      385 CAPTURE                          VAL R16
      386 MOVE                             R17 R16
      387 MOVE                             R18 R12
      388 CALL                             R17 1 1
      389 JUMPIFNOT                        R17 ; [+3]
      390 MOVE                             R10 R17
      391 CLOSEUPVALS                      R14
      392 JUMP                             ; [+15]
      393 GETUPVAL                         R18 0
      394 GETTABLEKS                       R18 R18 K2 ["createCollapsed"]
      396 MOVE                             R19 R11
      397 LOADN                            R21 1
      398 FASTCALL2                        MATH_MAX R21 R14 ; [+4]
      400 MOVE                             R22 R14
      401 GETIMPORT                        R20 K14 [math.max]
      403 CALL                             R20 2 1
      404 SUB                              R21 R13 R15
      405 CALL                             R18 3 1
      406 MOVE                             R10 R18
      407 CLOSEUPVALS                      R14
      408 MOVE                             R11 R2
      409 GETUPVAL                         R12 0
      410 GETTABLEKS                       R12 R12 K2 ["createCollapsed"]
      412 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      414 GETTABLEKS                       R14 R10 K7 ["anchor"]
      416 GETTABLEKS                       R14 R14 K4 ["segmentIndex"]
      418 GETTABLEKS                       R15 R10 K7 ["anchor"]
      420 GETTABLEKS                       R15 R15 K5 ["charOffset"]
      422 NEWTABLE                         R16 0 1
      424 MOVE                             R17 R8
      425 SETLIST                          R16 R17 1 [1]
      427 CALL                             R12 4 -1
      428 CALL                             R11 -1 0
      429 RETURN                           R0 0
      430 LOADN                            R10 1
      431 JUMPIFNOTLT                      R10 R8 ; [+85]
      433 GETTABLEKS                       R11 R6 K10 ["children"]
      435 JUMPIF                           R11 ; [+2]
      436 NEWTABLE                         R11 0 0
      438 SUBK                             R12 R8 K11 [1]
      439 GETTABLE                         R10 R11 R12
      440 JUMPIFNOT                        R10 ; [+76]
      441 GETTABLEKS                       R12 R10 K10 ["children"]
      443 JUMPIF                           R12 ; [+2]
      444 NEWTABLE                         R12 0 0
      446 LOADN                            R11 0
      447 MOVE                             R13 R12
      448 LOADNIL                          R14
      449 LOADNIL                          R15
      450 FORGPREP                         R13
      451 GETUPVAL                         R18 2
      452 MOVE                             R19 R17
      453 CALL                             R18 1 1
      454 ADD                              R11 R11 R18
      455 FORGLOOP                         R13 2 ; [-5]
      457 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      459 GETTABLEKS                       R14 R10 K10 ["children"]
      461 JUMPIF                           R14 ; [+2]
      462 NEWTABLE                         R14 0 0
      464 LOADN                            R15 0
      465 LOADN                            R16 0
      466 NEWCLOSURE                       R17 P1
      467 CAPTURE                          REF R15
      468 CAPTURE                          VAL R11
      469 CAPTURE                          REF R16
      470 CAPTURE                          UPVAL U0
      471 CAPTURE                          VAL R13
      472 CAPTURE                          VAL R17
      473 MOVE                             R18 R17
      474 MOVE                             R19 R14
      475 CALL                             R18 1 1
      476 JUMPIFNOT                        R18 ; [+3]
      477 MOVE                             R12 R18
      478 CLOSEUPVALS                      R15
      479 JUMP                             ; [+15]
      480 GETUPVAL                         R19 0
      481 GETTABLEKS                       R19 R19 K2 ["createCollapsed"]
      483 MOVE                             R20 R13
      484 LOADN                            R22 1
      485 FASTCALL2                        MATH_MAX R22 R15 ; [+4]
      487 MOVE                             R23 R15
      488 GETIMPORT                        R21 K14 [math.max]
      490 CALL                             R21 2 1
      491 SUB                              R22 R11 R16
      492 CALL                             R19 3 1
      493 MOVE                             R12 R19
      494 CLOSEUPVALS                      R15
      495 MOVE                             R13 R2
      496 GETUPVAL                         R14 0
      497 GETTABLEKS                       R14 R14 K2 ["createCollapsed"]
      499 GETTABLEKS                       R15 R4 K3 ["blockIndex"]
      501 GETTABLEKS                       R16 R12 K7 ["anchor"]
      503 GETTABLEKS                       R16 R16 K4 ["segmentIndex"]
      505 GETTABLEKS                       R17 R12 K7 ["anchor"]
      507 GETTABLEKS                       R17 R17 K5 ["charOffset"]
      509 NEWTABLE                         R18 0 1
      511 SUBK                             R19 R8 K11 [1]
      512 SETLIST                          R18 R19 1 [1]
      514 CALL                             R14 4 -1
      515 CALL                             R13 -1 0
      516 RETURN                           R0 0
      517 GETTABLEKS                       R10 R6 K8 ["name"]
      519 JUMPIFEQKS                       R10 K16 ["CODE_BLOCK"] ; [+2]
      521 LOADB                            R9 0 +1
      522 LOADB                            R9 1
      523 JUMPIFNOT                        R9 ; [+19]
      524 GETTABLEKS                       R10 R6 K18 ["text"]
      526 ORK                              R9 R10 K17 [""]
      527 GETUPVAL                         R10 3
      528 MOVE                             R11 R4
      529 MOVE                             R12 R9
      530 CALL                             R10 2 1
      531 LOADN                            R11 0
      532 JUMPIFNOTLT                      R11 R10 ; [+10]
      534 MOVE                             R11 R2
      535 GETUPVAL                         R12 4
      536 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      538 MOVE                             R14 R9
      539 SUBK                             R15 R10 K11 [1]
      540 CALL                             R12 3 -1
      541 CALL                             R11 -1 0
      542 RETURN                           R0 0
      543 GETTABLEKS                       R10 R6 K8 ["name"]
      545 LOADB                            R9 1
      546 JUMPIFEQKS                       R10 K19 ["PARAGRAPH"] ; [+11]
      548 LOADB                            R9 1
      549 JUMPIFEQKS                       R10 K20 ["HEADING"] ; [+8]
      551 LOADB                            R9 1
      552 JUMPIFEQKS                       R10 K21 ["QUOTE"] ; [+5]
      554 JUMPIFEQKS                       R10 K22 ["LIST_ITEM"] ; [+2]
      556 LOADB                            R9 0 +1
      557 LOADB                            R9 1
      558 JUMPIFNOT                        R9 ; [+33]
      559 GETTABLEKS                       R10 R6 K10 ["children"]
      561 JUMPIF                           R10 ; [+2]
      562 NEWTABLE                         R10 0 0
      564 LOADN                            R11 0
      565 LOADN                            R12 0
      566 NEWCLOSURE                       R13 P0
      567 CAPTURE                          REF R12
      568 CAPTURE                          VAL R4
      569 CAPTURE                          REF R11
      570 CAPTURE                          VAL R13
      571 MOVE                             R14 R13
      572 MOVE                             R15 R10
      573 CALL                             R14 1 1
      574 OR                               R9 R14 R11
      575 CLOSEUPVALS                      R11
      576 LOADN                            R10 0
      577 JUMPIFNOTLT                      R10 R9 ; [+14]
      579 MOVE                             R10 R2
      580 GETUPVAL                         R11 5
      581 GETTABLEKS                       R12 R4 K3 ["blockIndex"]
      583 GETTABLEKS                       R13 R6 K10 ["children"]
      585 JUMPIF                           R13 ; [+2]
      586 NEWTABLE                         R13 0 0
      588 SUBK                             R14 R9 K11 [1]
      589 CALL                             R11 3 -1
      590 CALL                             R10 -1 0
      591 RETURN                           R0 0
      592 GETTABLEKS                       R9 R4 K3 ["blockIndex"]
      594 LOADN                            R10 1
      595 JUMPIFNOTLT                      R10 R9 ; [+15]
      597 GETTABLEKS                       R11 R4 K3 ["blockIndex"]
      599 SUBK                             R10 R11 K11 [1]
      600 GETTABLE                         R9 R5 R10
      601 JUMPIFNOT                        R9 ; [+9]
      602 MOVE                             R10 R2
      603 GETUPVAL                         R11 6
      604 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      606 SUBK                             R12 R13 K11 [1]
      607 MOVE                             R13 R9
      608 LOADB                            R14 1
      609 CALL                             R11 3 -1
      610 CALL                             R10 -1 0
      611 RETURN                           R0 0

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
       42 JUMPIFNOT                        R7 ; [+155]
       43 GETUPVAL                         R7 1
       44 MOVE                             R8 R6
       45 MOVE                             R9 R4
       46 CALL                             R7 2 3
       47 JUMPIFNOT                        R7 ; [+150]
       48 JUMPIFNOT                        R8 ; [+149]
       49 JUMPIFNOT                        R9 ; [+148]
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
       72 LOADN                            R11 0
       73 MOVE                             R13 R12
       74 LOADNIL                          R14
       75 LOADNIL                          R15
       76 FORGPREP                         R13
       77 GETUPVAL                         R18 2
       78 MOVE                             R19 R17
       79 CALL                             R18 1 1
       80 ADD                              R11 R11 R18
       81 FORGLOOP                         R13 2 ; [-5]
       83 JUMPIFNOTLT                      R10 R11 ; [+63]
       85 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
       87 GETTABLEKS                       R14 R7 K10 ["children"]
       89 JUMPIF                           R14 ; [+2]
       90 NEWTABLE                         R14 0 0
       92 ADDK                             R15 R10 K11 [1]
       93 LOADN                            R16 0
       94 LOADN                            R17 0
       95 NEWCLOSURE                       R18 P1
       96 CAPTURE                          REF R16
       97 CAPTURE                          VAL R15
       98 CAPTURE                          REF R17
       99 CAPTURE                          UPVAL U0
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R18
      102 MOVE                             R19 R18
      103 MOVE                             R20 R14
      104 CALL                             R19 1 1
      105 JUMPIFNOT                        R19 ; [+3]
      106 MOVE                             R12 R19
      107 CLOSEUPVALS                      R16
      108 JUMP                             ; [+15]
      109 GETUPVAL                         R20 0
      110 GETTABLEKS                       R20 R20 K2 ["createCollapsed"]
      112 MOVE                             R21 R13
      113 LOADN                            R23 1
      114 FASTCALL2                        MATH_MAX R23 R16 ; [+4]
      116 MOVE                             R24 R16
      117 GETIMPORT                        R22 K14 [math.max]
      119 CALL                             R22 2 1
      120 SUB                              R23 R15 R17
      121 CALL                             R20 3 1
      122 MOVE                             R12 R20
      123 CLOSEUPVALS                      R16
      124 MOVE                             R13 R2
      125 GETUPVAL                         R14 0
      126 GETTABLEKS                       R14 R14 K2 ["createCollapsed"]
      128 GETTABLEKS                       R15 R4 K3 ["blockIndex"]
      130 GETTABLEKS                       R16 R12 K7 ["anchor"]
      132 GETTABLEKS                       R16 R16 K4 ["segmentIndex"]
      134 GETTABLEKS                       R17 R12 K7 ["anchor"]
      136 GETTABLEKS                       R17 R17 K5 ["charOffset"]
      138 NEWTABLE                         R18 0 2
      140 MOVE                             R19 R8
      141 MOVE                             R20 R9
      142 SETLIST                          R18 R19 2 [1]
      144 CALL                             R14 4 -1
      145 CALL                             R13 -1 0
      146 RETURN                           R0 0
      147 GETTABLEKS                       R12 R6 K10 ["children"]
      149 JUMPIF                           R12 ; [+2]
      150 NEWTABLE                         R12 0 0
      152 GETTABLE                         R13 R12 R8
      153 GETTABLEKS                       R14 R13 K10 ["children"]
      155 JUMPIF                           R14 ; [+2]
      156 NEWTABLE                         R14 0 0
      158 LENGTH                           R15 R14
      159 JUMPIFNOTLT                      R9 R15 ; [+18]
      161 MOVE                             R15 R2
      162 GETUPVAL                         R16 0
      163 GETTABLEKS                       R16 R16 K2 ["createCollapsed"]
      165 GETTABLEKS                       R17 R4 K3 ["blockIndex"]
      167 LOADN                            R18 1
      168 LOADN                            R19 0
      169 NEWTABLE                         R20 0 2
      171 MOVE                             R21 R8
      172 ADDK                             R22 R9 K11 [1]
      173 SETLIST                          R20 R21 2 [1]
      175 CALL                             R16 4 -1
      176 CALL                             R15 -1 0
      177 RETURN                           R0 0
      178 LENGTH                           R15 R12
      179 JUMPIFNOTLT                      R8 R15 ; [+18]
      181 MOVE                             R15 R2
      182 GETUPVAL                         R16 0
      183 GETTABLEKS                       R16 R16 K2 ["createCollapsed"]
      185 GETTABLEKS                       R17 R4 K3 ["blockIndex"]
      187 LOADN                            R18 1
      188 LOADN                            R19 0
      189 NEWTABLE                         R20 0 2
      191 ADDK                             R21 R8 K11 [1]
      192 LOADN                            R22 1
      193 SETLIST                          R20 R21 2 [1]
      195 CALL                             R16 4 -1
      196 CALL                             R15 -1 0
      197 RETURN                           R0 0
      198 GETTABLEKS                       R9 R6 K8 ["name"]
      200 JUMPIFEQKS                       R9 K15 ["LIST"] ; [+4]
      202 LOADNIL                          R7
      203 LOADNIL                          R8
      204 JUMP                             ; [+19]
      205 GETTABLEKS                       R10 R4 K6 ["path"]
      207 JUMPIFNOT                        R10 ; [+4]
      208 GETTABLEKS                       R10 R4 K6 ["path"]
      210 GETTABLEN                        R9 R10 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R9
      213 JUMPIF                           R9 ; [+3]
      214 LOADNIL                          R7
      215 LOADNIL                          R8
      216 JUMP                             ; [+7]
      217 GETTABLEKS                       R10 R6 K10 ["children"]
      219 JUMPIF                           R10 ; [+2]
      220 NEWTABLE                         R10 0 0
      222 GETTABLE                         R7 R10 R9
      223 MOVE                             R8 R9
      224 GETTABLEKS                       R9 R6 K8 ["name"]
      226 JUMPIFNOTEQKS                    R9 K15 ["LIST"] ; [+122]
      228 JUMPIFNOT                        R7 ; [+120]
      229 GETTABLEKS                       R10 R7 K10 ["children"]
      231 JUMPIF                           R10 ; [+2]
      232 NEWTABLE                         R10 0 0
      234 LOADN                            R11 0
      235 LOADN                            R12 0
      236 NEWCLOSURE                       R13 P0
      237 CAPTURE                          REF R12
      238 CAPTURE                          VAL R4
      239 CAPTURE                          REF R11
      240 CAPTURE                          VAL R13
      241 MOVE                             R14 R13
      242 MOVE                             R15 R10
      243 CALL                             R14 1 1
      244 OR                               R9 R14 R11
      245 CLOSEUPVALS                      R11
      246 GETTABLEKS                       R11 R7 K10 ["children"]
      248 JUMPIF                           R11 ; [+2]
      249 NEWTABLE                         R11 0 0
      251 LOADN                            R10 0
      252 MOVE                             R12 R11
      253 LOADNIL                          R13
      254 LOADNIL                          R14
      255 FORGPREP                         R12
      256 GETUPVAL                         R17 2
      257 MOVE                             R18 R16
      258 CALL                             R17 1 1
      259 ADD                              R10 R10 R17
      260 FORGLOOP                         R12 2 ; [-5]
      262 JUMPIFNOTLT                      R9 R10 ; [+62]
      264 GETTABLEKS                       R12 R4 K3 ["blockIndex"]
      266 GETTABLEKS                       R13 R7 K10 ["children"]
      268 JUMPIF                           R13 ; [+2]
      269 NEWTABLE                         R13 0 0
      271 ADDK                             R14 R9 K11 [1]
      272 LOADN                            R15 0
      273 LOADN                            R16 0
      274 NEWCLOSURE                       R17 P1
      275 CAPTURE                          REF R15
      276 CAPTURE                          VAL R14
      277 CAPTURE                          REF R16
      278 CAPTURE                          UPVAL U0
      279 CAPTURE                          VAL R12
      280 CAPTURE                          VAL R17
      281 MOVE                             R18 R17
      282 MOVE                             R19 R13
      283 CALL                             R18 1 1
      284 JUMPIFNOT                        R18 ; [+3]
      285 MOVE                             R11 R18
      286 CLOSEUPVALS                      R15
      287 JUMP                             ; [+15]
      288 GETUPVAL                         R19 0
      289 GETTABLEKS                       R19 R19 K2 ["createCollapsed"]
      291 MOVE                             R20 R12
      292 LOADN                            R22 1
      293 FASTCALL2                        MATH_MAX R22 R15 ; [+4]
      295 MOVE                             R23 R15
      296 GETIMPORT                        R21 K14 [math.max]
      298 CALL                             R21 2 1
      299 SUB                              R22 R14 R16
      300 CALL                             R19 3 1
      301 MOVE                             R11 R19
      302 CLOSEUPVALS                      R15
      303 MOVE                             R12 R2
      304 GETUPVAL                         R13 0
      305 GETTABLEKS                       R13 R13 K2 ["createCollapsed"]
      307 GETTABLEKS                       R14 R4 K3 ["blockIndex"]
      309 GETTABLEKS                       R15 R11 K7 ["anchor"]
      311 GETTABLEKS                       R15 R15 K4 ["segmentIndex"]
      313 GETTABLEKS                       R16 R11 K7 ["anchor"]
      315 GETTABLEKS                       R16 R16 K5 ["charOffset"]
      317 NEWTABLE                         R17 0 1
      319 MOVE                             R18 R8
      320 SETLIST                          R17 R18 1 [1]
      322 CALL                             R13 4 -1
      323 CALL                             R12 -1 0
      324 RETURN                           R0 0
      325 GETTABLEKS                       R11 R6 K10 ["children"]
      327 JUMPIF                           R11 ; [+2]
      328 NEWTABLE                         R11 0 0
      330 LENGTH                           R12 R11
      331 JUMPIFNOTLT                      R8 R12 ; [+17]
      333 MOVE                             R12 R2
      334 GETUPVAL                         R13 0
      335 GETTABLEKS                       R13 R13 K2 ["createCollapsed"]
      337 GETTABLEKS                       R14 R4 K3 ["blockIndex"]
      339 LOADN                            R15 1
      340 LOADN                            R16 0
      341 NEWTABLE                         R17 0 1
      343 ADDK                             R18 R8 K11 [1]
      344 SETLIST                          R17 R18 1 [1]
      346 CALL                             R13 4 -1
      347 CALL                             R12 -1 0
      348 RETURN                           R0 0
      349 GETTABLEKS                       R10 R6 K8 ["name"]
      351 JUMPIFEQKS                       R10 K16 ["CODE_BLOCK"] ; [+2]
      353 LOADB                            R9 0 +1
      354 LOADB                            R9 1
      355 JUMPIFNOT                        R9 ; [+19]
      356 GETTABLEKS                       R10 R6 K18 ["text"]
      358 ORK                              R9 R10 K17 [""]
      359 GETUPVAL                         R10 3
      360 MOVE                             R11 R4
      361 MOVE                             R12 R9
      362 CALL                             R10 2 1
      363 LENGTH                           R11 R9
      364 JUMPIFNOTLT                      R10 R11 ; [+10]
      366 MOVE                             R11 R2
      367 GETUPVAL                         R12 4
      368 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      370 MOVE                             R14 R9
      371 ADDK                             R15 R10 K11 [1]
      372 CALL                             R12 3 -1
      373 CALL                             R11 -1 0
      374 RETURN                           R0 0
      375 GETTABLEKS                       R10 R6 K8 ["name"]
      377 LOADB                            R9 1
      378 JUMPIFEQKS                       R10 K19 ["PARAGRAPH"] ; [+11]
      380 LOADB                            R9 1
      381 JUMPIFEQKS                       R10 K20 ["HEADING"] ; [+8]
      383 LOADB                            R9 1
      384 JUMPIFEQKS                       R10 K21 ["QUOTE"] ; [+5]
      386 JUMPIFEQKS                       R10 K22 ["LIST_ITEM"] ; [+2]
      388 LOADB                            R9 0 +1
      389 LOADB                            R9 1
      390 JUMPIFNOT                        R9 ; [+48]
      391 GETTABLEKS                       R10 R6 K10 ["children"]
      393 JUMPIF                           R10 ; [+2]
      394 NEWTABLE                         R10 0 0
      396 LOADN                            R11 0
      397 LOADN                            R12 0
      398 NEWCLOSURE                       R13 P0
      399 CAPTURE                          REF R12
      400 CAPTURE                          VAL R4
      401 CAPTURE                          REF R11
      402 CAPTURE                          VAL R13
      403 MOVE                             R14 R13
      404 MOVE                             R15 R10
      405 CALL                             R14 1 1
      406 OR                               R9 R14 R11
      407 CLOSEUPVALS                      R11
      408 GETTABLEKS                       R11 R6 K10 ["children"]
      410 JUMPIF                           R11 ; [+2]
      411 NEWTABLE                         R11 0 0
      413 LOADN                            R10 0
      414 MOVE                             R12 R11
      415 LOADNIL                          R13
      416 LOADNIL                          R14
      417 FORGPREP                         R12
      418 GETUPVAL                         R17 2
      419 MOVE                             R18 R16
      420 CALL                             R17 1 1
      421 ADD                              R10 R10 R17
      422 FORGLOOP                         R12 2 ; [-5]
      424 JUMPIFNOTLT                      R9 R10 ; [+14]
      426 MOVE                             R11 R2
      427 GETUPVAL                         R12 5
      428 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      430 GETTABLEKS                       R14 R6 K10 ["children"]
      432 JUMPIF                           R14 ; [+2]
      433 NEWTABLE                         R14 0 0
      435 ADDK                             R15 R9 K11 [1]
      436 CALL                             R12 3 -1
      437 CALL                             R11 -1 0
      438 RETURN                           R0 0
      439 GETTABLEKS                       R9 R4 K3 ["blockIndex"]
      441 LENGTH                           R10 R5
      442 JUMPIFNOTLT                      R9 R10 ; [+15]
      444 GETTABLEKS                       R11 R4 K3 ["blockIndex"]
      446 ADDK                             R10 R11 K11 [1]
      447 GETTABLE                         R9 R5 R10
      448 JUMPIFNOT                        R9 ; [+9]
      449 MOVE                             R10 R2
      450 GETUPVAL                         R11 6
      451 GETTABLEKS                       R13 R4 K3 ["blockIndex"]
      453 ADDK                             R12 R13 K11 [1]
      454 MOVE                             R13 R9
      455 LOADB                            R14 0
      456 CALL                             R11 3 -1
      457 CALL                             R10 -1 0
      458 RETURN                           R0 0

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
        6 MOVE                             R7 R1
        7 GETIMPORT                        R6 K2 [tostring]
        9 CALL                             R6 1 1
       10 LOADK                            R7 K3 [":"]
       11 FASTCALL1                        TOSTRING R2 ; [+3]
       12 MOVE                             R9 R2
       13 GETIMPORT                        R8 K2 [tostring]
       15 CALL                             R8 1 1
       16 CONCAT                           R5 R6 R8
       17 GETTABLE                         R4 R3 R5
       18 RETURN                           R4 1

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
      134 JUMPIFNOT                        R7 ; [+365]
      135 GETTABLEKS                       R8 R7 K10 ["name"]
      137 JUMPIFNOTEQKS                    R8 K18 ["LIST"] ; [+362]
      139 GETTABLEKS                       R8 R7 K12 ["children"]
      141 JUMPIF                           R8 ; [+2]
      142 NEWTABLE                         R8 0 0
      144 GETTABLEKS                       R10 R5 K8 ["path"]
      146 JUMPIFNOT                        R10 ; [+4]
      147 GETTABLEKS                       R10 R5 K8 ["path"]
      149 GETTABLEN                        R9 R10 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R9
      152 JUMPIFNOT                        R9 ; [+248]
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
      185 JUMP                             ; [+13]
      186 FASTCALL1                        TOSTRING R12 ; [+3]
      187 MOVE                             R16 R12
      188 GETIMPORT                        R15 K22 [tostring]
      190 CALL                             R15 1 1
      191 LOADK                            R16 K23 [":"]
      192 FASTCALL1                        TOSTRING R9 ; [+3]
      193 MOVE                             R18 R9
      194 GETIMPORT                        R17 K22 [tostring]
      196 CALL                             R17 1 1
      197 CONCAT                           R14 R15 R17
      198 GETTABLE                         R11 R13 R14
      199 JUMPIFNOT                        R11 ; [+97]
      200 GETTABLEKS                       R13 R11 K24 ["rows"]
      202 LENGTH                           R12 R13
      203 LOADN                            R13 1
      204 JUMPIFNOTLT                      R13 R12 ; [+92]
      206 GETUPVAL                         R12 4
      207 GETTABLEKS                       R13 R11 K24 ["rows"]
      209 GETTABLEKS                       R14 R5 K6 ["segmentIndex"]
      211 CALL                             R12 2 1
      212 JUMPIFNOT                        R12 ; [+84]
      213 LOADN                            R13 1
      214 JUMPIFNOTLT                      R13 R12 ; [+82]
      216 GETTABLEKS                       R13 R4 K1 ["preferredColumn"]
      218 JUMPIFNOTEQKNIL                  R13 ; [+24]
      220 GETUPVAL                         R13 5
      221 GETTABLEKS                       R13 R13 K25 ["computeCursorPosition"]
      223 GETTABLEKS                       R14 R11 K24 ["rows"]
      225 GETTABLEKS                       R15 R11 K26 ["lineHeight"]
      227 GETTABLEKS                       R16 R5 K6 ["segmentIndex"]
      229 GETTABLEKS                       R17 R5 K7 ["charOffset"]
      231 GETTABLEKS                       R18 R11 K27 ["font"]
      233 GETTABLEKS                       R19 R11 K28 ["textSize"]
      235 CALL                             R13 6 1
      236 JUMPIFNOT                        R13 ; [+3]
      237 GETTABLEKS                       R14 R13 K29 ["x"]
      239 JUMP                             ; [+1]
      240 LOADN                            R14 0
      241 SETTABLEKS                       R14 R4 K1 ["preferredColumn"]
      243 GETTABLEKS                       R14 R4 K1 ["preferredColumn"]
      245 FASTCALL2K                       ASSERT R14 K1 ; [+4]
      247 LOADK                            R15 K1 ["preferredColumn"]
      248 GETIMPORT                        R13 K31 [assert]
      250 CALL                             R13 2 1
      251 SUBK                             R16 R12 K13 [1]
      252 SUBK                             R19 R16 K13 [1]
      253 GETTABLEKS                       R20 R11 K26 ["lineHeight"]
      255 MUL                              R18 R19 R20
      256 GETTABLEKS                       R20 R11 K26 ["lineHeight"]
      258 DIVK                             R19 R20 K32 [2]
      259 ADD                              R17 R18 R19
      260 GETUPVAL                         R18 5
      261 GETTABLEKS                       R18 R18 K33 ["charHitTest"]
      263 GETIMPORT                        R19 K36 [Vector2.new]
      265 MOVE                             R20 R13
      266 MOVE                             R21 R17
      267 CALL                             R19 2 1
      268 GETTABLEKS                       R20 R11 K24 ["rows"]
      270 GETTABLEKS                       R21 R11 K26 ["lineHeight"]
      272 GETTABLEKS                       R22 R11 K27 ["font"]
      274 GETTABLEKS                       R23 R11 K28 ["textSize"]
      276 CALL                             R18 5 2
      277 MOVE                             R14 R18
      278 MOVE                             R15 R19
      279 JUMPIFNOT                        R14 ; [+17]
      280 JUMPIFNOT                        R15 ; [+16]
      281 MOVE                             R16 R2
      282 GETUPVAL                         R17 0
      283 GETTABLEKS                       R17 R17 K4 ["createCollapsed"]
      285 GETTABLEKS                       R18 R5 K5 ["blockIndex"]
      287 MOVE                             R19 R14
      288 MOVE                             R20 R15
      289 NEWTABLE                         R21 0 1
      291 MOVE                             R22 R9
      292 SETLIST                          R21 R22 1 [1]
      294 CALL                             R17 4 -1
      295 CALL                             R16 -1 0
      296 RETURN                           R0 0
      297 LOADN                            R12 1
      298 JUMPIFNOTLT                      R12 R9 ; [+102]
      300 SUBK                             R13 R9 K13 [1]
      301 GETTABLE                         R12 R8 R13
      302 JUMPIFNOT                        R12 ; [+98]
      303 GETTABLEKS                       R14 R5 K5 ["blockIndex"]
      305 SUBK                             R15 R9 K13 [1]
      306 GETTABLEKS                       R16 R4 K20 ["itemLayoutRegistry"]
      308 JUMPIF                           R16 ; [+2]
      309 LOADNIL                          R13
      310 JUMP                             ; [+13]
      311 FASTCALL1                        TOSTRING R14 ; [+3]
      312 MOVE                             R19 R14
      313 GETIMPORT                        R18 K22 [tostring]
      315 CALL                             R18 1 1
      316 LOADK                            R19 K23 [":"]
      317 FASTCALL1                        TOSTRING R15 ; [+3]
      318 MOVE                             R21 R15
      319 GETIMPORT                        R20 K22 [tostring]
      321 CALL                             R20 1 1
      322 CONCAT                           R17 R18 R20
      323 GETTABLE                         R13 R16 R17
      324 GETTABLEKS                       R14 R4 K1 ["preferredColumn"]
      326 JUMPIFNOT                        R13 ; [+55]
      327 GETTABLEKS                       R16 R13 K24 ["rows"]
      329 LENGTH                           R15 R16
      330 LOADN                            R16 0
      331 JUMPIFNOTLT                      R16 R15 ; [+50]
      333 JUMPIFNOT                        R14 ; [+48]
      334 GETTABLEKS                       R18 R13 K24 ["rows"]
      336 LENGTH                           R17 R18
      337 SUBK                             R20 R17 K13 [1]
      338 GETTABLEKS                       R21 R13 K26 ["lineHeight"]
      340 MUL                              R19 R20 R21
      341 GETTABLEKS                       R21 R13 K26 ["lineHeight"]
      343 DIVK                             R20 R21 K32 [2]
      344 ADD                              R18 R19 R20
      345 GETUPVAL                         R19 5
      346 GETTABLEKS                       R19 R19 K33 ["charHitTest"]
      348 GETIMPORT                        R20 K36 [Vector2.new]
      350 MOVE                             R21 R14
      351 MOVE                             R22 R18
      352 CALL                             R20 2 1
      353 GETTABLEKS                       R21 R13 K24 ["rows"]
      355 GETTABLEKS                       R22 R13 K26 ["lineHeight"]
      357 GETTABLEKS                       R23 R13 K27 ["font"]
      359 GETTABLEKS                       R24 R13 K28 ["textSize"]
      361 CALL                             R19 5 2
      362 MOVE                             R15 R19
      363 MOVE                             R16 R20
      364 JUMPIFNOT                        R15 ; [+17]
      365 JUMPIFNOT                        R16 ; [+16]
      366 MOVE                             R17 R2
      367 GETUPVAL                         R18 0
      368 GETTABLEKS                       R18 R18 K4 ["createCollapsed"]
      370 GETTABLEKS                       R19 R5 K5 ["blockIndex"]
      372 MOVE                             R20 R15
      373 MOVE                             R21 R16
      374 NEWTABLE                         R22 0 1
      376 SUBK                             R23 R9 K13 [1]
      377 SETLIST                          R22 R23 1 [1]
      379 CALL                             R18 4 -1
      380 CALL                             R17 -1 0
      381 RETURN                           R0 0
      382 MOVE                             R15 R2
      383 GETUPVAL                         R16 6
      384 GETTABLEKS                       R17 R5 K5 ["blockIndex"]
      386 MOVE                             R18 R12
      387 SUBK                             R19 R9 K13 [1]
      388 LOADN                            R21 0
      389 GETTABLEKS                       R24 R4 K2 ["preferredFlatOffset"]
      391 ORK                              R23 R24 K17 [0]
      392 SUBK                             R22 R23 K19 [5]
      393 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
      395 GETIMPORT                        R20 K38 [math.max]
      397 CALL                             R20 2 1
      398 CALL                             R16 4 -1
      399 CALL                             R15 -1 0
      400 RETURN                           R0 0
      401 GETTABLEKS                       R10 R5 K5 ["blockIndex"]
      403 LOADN                            R11 1
      404 JUMPIFNOTLT                      R11 R10 ; [+94]
      406 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      408 SUBK                             R11 R12 K13 [1]
      409 GETTABLE                         R10 R6 R11
      410 JUMPIFNOT                        R10 ; [+88]
      411 GETTABLEKS                       R11 R4 K39 ["layoutRegistry"]
      413 JUMPIFNOT                        R11 ; [+5]
      414 GETTABLEKS                       R14 R5 K5 ["blockIndex"]
      416 SUBK                             R13 R14 K13 [1]
      417 GETTABLE                         R12 R11 R13
      418 JUMP                             ; [+1]
      419 LOADNIL                          R12
      420 JUMPIFNOT                        R12 ; [+67]
      421 GETTABLEKS                       R14 R12 K24 ["rows"]
      423 LENGTH                           R13 R14
      424 LOADN                            R14 0
      425 JUMPIFNOTLT                      R14 R13 ; [+62]
      427 GETTABLEKS                       R13 R4 K1 ["preferredColumn"]
      429 JUMPIFNOT                        R13 ; [+58]
      430 GETTABLEKS                       R16 R12 K24 ["rows"]
      432 LENGTH                           R15 R16
      433 GETTABLEKS                       R16 R4 K1 ["preferredColumn"]
      435 SUBK                             R19 R15 K13 [1]
      436 GETTABLEKS                       R20 R12 K26 ["lineHeight"]
      438 MUL                              R18 R19 R20
      439 GETTABLEKS                       R20 R12 K26 ["lineHeight"]
      441 DIVK                             R19 R20 K32 [2]
      442 ADD                              R17 R18 R19
      443 GETUPVAL                         R18 5
      444 GETTABLEKS                       R18 R18 K33 ["charHitTest"]
      446 GETIMPORT                        R19 K36 [Vector2.new]
      448 MOVE                             R20 R16
      449 MOVE                             R21 R17
      450 CALL                             R19 2 1
      451 GETTABLEKS                       R20 R12 K24 ["rows"]
      453 GETTABLEKS                       R21 R12 K26 ["lineHeight"]
      455 GETTABLEKS                       R22 R12 K27 ["font"]
      457 GETTABLEKS                       R23 R12 K28 ["textSize"]
      459 CALL                             R18 5 2
      460 MOVE                             R13 R18
      461 MOVE                             R14 R19
      462 JUMPIFNOT                        R13 ; [+13]
      463 JUMPIFNOT                        R14 ; [+12]
      464 MOVE                             R15 R2
      465 GETUPVAL                         R16 0
      466 GETTABLEKS                       R16 R16 K4 ["createCollapsed"]
      468 GETTABLEKS                       R18 R5 K5 ["blockIndex"]
      470 SUBK                             R17 R18 K13 [1]
      471 MOVE                             R18 R13
      472 MOVE                             R19 R14
      473 CALL                             R16 3 -1
      474 CALL                             R15 -1 0
      475 RETURN                           R0 0
      476 MOVE                             R15 R2
      477 GETUPVAL                         R16 3
      478 GETTABLEKS                       R18 R5 K5 ["blockIndex"]
      480 SUBK                             R17 R18 K13 [1]
      481 MOVE                             R18 R10
      482 LOADB                            R19 1
      483 GETTABLEKS                       R20 R4 K2 ["preferredFlatOffset"]
      485 CALL                             R16 4 -1
      486 CALL                             R15 -1 0
      487 RETURN                           R0 0
      488 MOVE                             R13 R2
      489 GETUPVAL                         R14 3
      490 GETTABLEKS                       R16 R5 K5 ["blockIndex"]
      492 SUBK                             R15 R16 K13 [1]
      493 MOVE                             R16 R10
      494 LOADB                            R17 1
      495 GETTABLEKS                       R18 R4 K2 ["preferredFlatOffset"]
      497 CALL                             R14 4 -1
      498 CALL                             R13 -1 0
      499 RETURN                           R0 0
      500 GETTABLEKS                       R8 R4 K39 ["layoutRegistry"]
      502 JUMPIFNOT                        R8 ; [+4]
      503 GETTABLEKS                       R10 R5 K5 ["blockIndex"]
      505 GETTABLE                         R9 R8 R10
      506 JUMP                             ; [+1]
      507 LOADNIL                          R9
      508 JUMPIF                           R9 ; [+75]
      509 GETTABLEKS                       R10 R4 K2 ["preferredFlatOffset"]
      511 JUMPIFNOTEQKNIL                  R10 ; [+36]
      513 GETTABLEKS                       R11 R7 K10 ["name"]
      515 LOADB                            R10 1
      516 JUMPIFEQKS                       R11 K40 ["PARAGRAPH"] ; [+11]
      518 LOADB                            R10 1
      519 JUMPIFEQKS                       R11 K41 ["HEADING"] ; [+8]
      521 LOADB                            R10 1
      522 JUMPIFEQKS                       R11 K42 ["QUOTE"] ; [+5]
      524 JUMPIFEQKS                       R11 K43 ["LIST_ITEM"] ; [+2]
      526 LOADB                            R10 0 +1
      527 LOADB                            R10 1
      528 JUMPIFNOT                        R10 ; [+19]
      529 GETTABLEKS                       R11 R7 K12 ["children"]
      531 JUMPIF                           R11 ; [+2]
      532 NEWTABLE                         R11 0 0
      534 LOADN                            R12 0
      535 LOADN                            R13 0
      536 NEWCLOSURE                       R14 P0
      537 CAPTURE                          REF R13
      538 CAPTURE                          VAL R5
      539 CAPTURE                          REF R12
      540 CAPTURE                          VAL R14
      541 MOVE                             R15 R14
      542 MOVE                             R16 R11
      543 CALL                             R15 1 1
      544 OR                               R10 R15 R12
      545 CLOSEUPVALS                      R12
      546 SETTABLEKS                       R10 R4 K2 ["preferredFlatOffset"]
      548 GETTABLEKS                       R10 R5 K5 ["blockIndex"]
      550 LOADN                            R11 1
      551 JUMPIFNOTLT                      R11 R10 ; [+31]
      553 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      555 SUBK                             R11 R12 K13 [1]
      556 GETTABLE                         R10 R6 R11
      557 JUMPIFNOT                        R10 ; [+25]
      558 GETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      560 GETTABLEKS                       R12 R10 K10 ["name"]
      562 JUMPIFNOTEQKS                    R12 K18 ["LIST"] ; [+10]
      564 JUMPIFNOT                        R11 ; [+8]
      565 LOADN                            R13 0
      566 SUBK                             R14 R11 K19 [5]
      567 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
      569 GETIMPORT                        R12 K38 [math.max]
      571 CALL                             R12 2 1
      572 MOVE                             R11 R12
      573 MOVE                             R12 R2
      574 GETUPVAL                         R13 3
      575 GETTABLEKS                       R15 R5 K5 ["blockIndex"]
      577 SUBK                             R14 R15 K13 [1]
      578 MOVE                             R15 R10
      579 LOADB                            R16 1
      580 MOVE                             R17 R11
      581 CALL                             R13 4 -1
      582 CALL                             R12 -1 0
      583 RETURN                           R0 0
      584 GETUPVAL                         R10 4
      585 GETTABLEKS                       R11 R9 K24 ["rows"]
      587 GETTABLEKS                       R12 R5 K6 ["segmentIndex"]
      589 CALL                             R10 2 1
      590 JUMPIF                           R10 ; [+1]
      591 RETURN                           R0 0
      592 GETTABLEKS                       R11 R4 K1 ["preferredColumn"]
      594 JUMPIFNOTEQKNIL                  R11 ; [+24]
      596 GETUPVAL                         R11 5
      597 GETTABLEKS                       R11 R11 K25 ["computeCursorPosition"]
      599 GETTABLEKS                       R12 R9 K24 ["rows"]
      601 GETTABLEKS                       R13 R9 K26 ["lineHeight"]
      603 GETTABLEKS                       R14 R5 K6 ["segmentIndex"]
      605 GETTABLEKS                       R15 R5 K7 ["charOffset"]
      607 GETTABLEKS                       R16 R9 K27 ["font"]
      609 GETTABLEKS                       R17 R9 K28 ["textSize"]
      611 CALL                             R11 6 1
      612 JUMPIFNOT                        R11 ; [+3]
      613 GETTABLEKS                       R12 R11 K29 ["x"]
      615 JUMP                             ; [+1]
      616 LOADN                            R12 0
      617 SETTABLEKS                       R12 R4 K1 ["preferredColumn"]
      619 GETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      621 JUMPIFNOTEQKNIL                  R11 ; [+36]
      623 GETTABLEKS                       R12 R7 K10 ["name"]
      625 LOADB                            R11 1
      626 JUMPIFEQKS                       R12 K40 ["PARAGRAPH"] ; [+11]
      628 LOADB                            R11 1
      629 JUMPIFEQKS                       R12 K41 ["HEADING"] ; [+8]
      631 LOADB                            R11 1
      632 JUMPIFEQKS                       R12 K42 ["QUOTE"] ; [+5]
      634 JUMPIFEQKS                       R12 K43 ["LIST_ITEM"] ; [+2]
      636 LOADB                            R11 0 +1
      637 LOADB                            R11 1
      638 JUMPIFNOT                        R11 ; [+19]
      639 GETTABLEKS                       R12 R7 K12 ["children"]
      641 JUMPIF                           R12 ; [+2]
      642 NEWTABLE                         R12 0 0
      644 LOADN                            R13 0
      645 LOADN                            R14 0
      646 NEWCLOSURE                       R15 P0
      647 CAPTURE                          REF R14
      648 CAPTURE                          VAL R5
      649 CAPTURE                          REF R13
      650 CAPTURE                          VAL R15
      651 MOVE                             R16 R15
      652 MOVE                             R17 R12
      653 CALL                             R16 1 1
      654 OR                               R11 R16 R13
      655 CLOSEUPVALS                      R13
      656 SETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      658 GETTABLEKS                       R11 R4 K1 ["preferredColumn"]
      660 LOADN                            R12 1
      661 JUMPIFNOTLT                      R12 R10 ; [+42]
      663 SUBK                             R14 R10 K13 [1]
      664 SUBK                             R17 R14 K13 [1]
      665 GETTABLEKS                       R18 R9 K26 ["lineHeight"]
      667 MUL                              R16 R17 R18
      668 GETTABLEKS                       R18 R9 K26 ["lineHeight"]
      670 DIVK                             R17 R18 K32 [2]
      671 ADD                              R15 R16 R17
      672 GETUPVAL                         R16 5
      673 GETTABLEKS                       R16 R16 K33 ["charHitTest"]
      675 GETIMPORT                        R17 K36 [Vector2.new]
      677 MOVE                             R18 R11
      678 MOVE                             R19 R15
      679 CALL                             R17 2 1
      680 GETTABLEKS                       R18 R9 K24 ["rows"]
      682 GETTABLEKS                       R19 R9 K26 ["lineHeight"]
      684 GETTABLEKS                       R20 R9 K27 ["font"]
      686 GETTABLEKS                       R21 R9 K28 ["textSize"]
      688 CALL                             R16 5 2
      689 MOVE                             R12 R16
      690 MOVE                             R13 R17
      691 JUMPIFNOT                        R12 ; [+121]
      692 JUMPIFNOT                        R13 ; [+120]
      693 MOVE                             R14 R2
      694 GETUPVAL                         R15 0
      695 GETTABLEKS                       R15 R15 K4 ["createCollapsed"]
      697 GETTABLEKS                       R16 R5 K5 ["blockIndex"]
      699 MOVE                             R17 R12
      700 MOVE                             R18 R13
      701 CALL                             R15 3 -1
      702 CALL                             R14 -1 0
      703 RETURN                           R0 0
      704 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      706 LOADN                            R13 1
      707 JUMPIFNOTLT                      R13 R12 ; [+105]
      709 GETTABLEKS                       R14 R5 K5 ["blockIndex"]
      711 SUBK                             R13 R14 K13 [1]
      712 GETTABLE                         R12 R6 R13
      713 JUMPIFNOT                        R12 ; [+29]
      714 GETTABLEKS                       R13 R12 K10 ["name"]
      716 JUMPIFNOTEQKS                    R13 K18 ["LIST"] ; [+26]
      718 GETTABLEKS                       R14 R4 K2 ["preferredFlatOffset"]
      720 JUMPIFNOT                        R14 ; [+10]
      721 LOADN                            R14 0
      722 GETTABLEKS                       R16 R4 K2 ["preferredFlatOffset"]
      724 SUBK                             R15 R16 K19 [5]
      725 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
      727 GETIMPORT                        R13 K38 [math.max]
      729 CALL                             R13 2 1
      730 JUMP                             ; [+1]
      731 LOADNIL                          R13
      732 MOVE                             R14 R2
      733 GETUPVAL                         R15 3
      734 GETTABLEKS                       R17 R5 K5 ["blockIndex"]
      736 SUBK                             R16 R17 K13 [1]
      737 MOVE                             R17 R12
      738 LOADB                            R18 1
      739 MOVE                             R19 R13
      740 CALL                             R15 4 -1
      741 CALL                             R14 -1 0
      742 RETURN                           R0 0
      743 JUMPIFNOT                        R8 ; [+5]
      744 GETTABLEKS                       R15 R5 K5 ["blockIndex"]
      746 SUBK                             R14 R15 K13 [1]
      747 GETTABLE                         R13 R8 R14
      748 JUMP                             ; [+1]
      749 LOADNIL                          R13
      750 JUMPIFNOT                        R13 ; [+50]
      751 GETTABLEKS                       R15 R13 K24 ["rows"]
      753 LENGTH                           R14 R15
      754 LOADN                            R15 0
      755 JUMPIFNOTLT                      R15 R14 ; [+45]
      757 GETTABLEKS                       R17 R13 K24 ["rows"]
      759 LENGTH                           R16 R17
      760 SUBK                             R19 R16 K13 [1]
      761 GETTABLEKS                       R20 R13 K26 ["lineHeight"]
      763 MUL                              R18 R19 R20
      764 GETTABLEKS                       R20 R13 K26 ["lineHeight"]
      766 DIVK                             R19 R20 K32 [2]
      767 ADD                              R17 R18 R19
      768 GETUPVAL                         R18 5
      769 GETTABLEKS                       R18 R18 K33 ["charHitTest"]
      771 GETIMPORT                        R19 K36 [Vector2.new]
      773 MOVE                             R20 R11
      774 MOVE                             R21 R17
      775 CALL                             R19 2 1
      776 GETTABLEKS                       R20 R13 K24 ["rows"]
      778 GETTABLEKS                       R21 R13 K26 ["lineHeight"]
      780 GETTABLEKS                       R22 R13 K27 ["font"]
      782 GETTABLEKS                       R23 R13 K28 ["textSize"]
      784 CALL                             R18 5 2
      785 MOVE                             R14 R18
      786 MOVE                             R15 R19
      787 JUMPIFNOT                        R14 ; [+25]
      788 JUMPIFNOT                        R15 ; [+24]
      789 MOVE                             R16 R2
      790 GETUPVAL                         R17 0
      791 GETTABLEKS                       R17 R17 K4 ["createCollapsed"]
      793 GETTABLEKS                       R19 R5 K5 ["blockIndex"]
      795 SUBK                             R18 R19 K13 [1]
      796 MOVE                             R19 R14
      797 MOVE                             R20 R15
      798 CALL                             R17 3 -1
      799 CALL                             R16 -1 0
      800 RETURN                           R0 0
      801 JUMPIFNOT                        R12 ; [+11]
      802 MOVE                             R14 R2
      803 GETUPVAL                         R15 3
      804 GETTABLEKS                       R17 R5 K5 ["blockIndex"]
      806 SUBK                             R16 R17 K13 [1]
      807 MOVE                             R17 R12
      808 LOADB                            R18 1
      809 GETTABLEKS                       R19 R4 K2 ["preferredFlatOffset"]
      811 CALL                             R15 4 -1
      812 CALL                             R14 -1 0
      813 RETURN                           R0 0

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
      134 JUMPIFNOT                        R7 ; [+358]
      135 GETTABLEKS                       R8 R7 K10 ["name"]
      137 JUMPIFNOTEQKS                    R8 K18 ["LIST"] ; [+355]
      139 GETTABLEKS                       R8 R7 K12 ["children"]
      141 JUMPIF                           R8 ; [+2]
      142 NEWTABLE                         R8 0 0
      144 GETTABLEKS                       R10 R5 K8 ["path"]
      146 JUMPIFNOT                        R10 ; [+4]
      147 GETTABLEKS                       R10 R5 K8 ["path"]
      149 GETTABLEN                        R9 R10 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R9
      152 JUMPIFNOT                        R9 ; [+244]
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
      185 JUMP                             ; [+13]
      186 FASTCALL1                        TOSTRING R12 ; [+3]
      187 MOVE                             R16 R12
      188 GETIMPORT                        R15 K22 [tostring]
      190 CALL                             R15 1 1
      191 LOADK                            R16 K23 [":"]
      192 FASTCALL1                        TOSTRING R9 ; [+3]
      193 MOVE                             R18 R9
      194 GETIMPORT                        R17 K22 [tostring]
      196 CALL                             R17 1 1
      197 CONCAT                           R14 R15 R17
      198 GETTABLE                         R11 R13 R14
      199 JUMPIFNOT                        R11 ; [+94]
      200 GETTABLEKS                       R13 R11 K24 ["rows"]
      202 LENGTH                           R12 R13
      203 LOADN                            R13 1
      204 JUMPIFNOTLT                      R13 R12 ; [+89]
      206 GETUPVAL                         R12 4
      207 GETTABLEKS                       R13 R11 K24 ["rows"]
      209 GETTABLEKS                       R14 R5 K6 ["segmentIndex"]
      211 CALL                             R12 2 1
      212 JUMPIFNOT                        R12 ; [+81]
      213 GETTABLEKS                       R14 R11 K24 ["rows"]
      215 LENGTH                           R13 R14
      216 JUMPIFNOTLT                      R12 R13 ; [+77]
      218 GETTABLEKS                       R13 R4 K1 ["preferredColumn"]
      220 JUMPIFNOTEQKNIL                  R13 ; [+24]
      222 GETUPVAL                         R13 5
      223 GETTABLEKS                       R13 R13 K25 ["computeCursorPosition"]
      225 GETTABLEKS                       R14 R11 K24 ["rows"]
      227 GETTABLEKS                       R15 R11 K26 ["lineHeight"]
      229 GETTABLEKS                       R16 R5 K6 ["segmentIndex"]
      231 GETTABLEKS                       R17 R5 K7 ["charOffset"]
      233 GETTABLEKS                       R18 R11 K27 ["font"]
      235 GETTABLEKS                       R19 R11 K28 ["textSize"]
      237 CALL                             R13 6 1
      238 JUMPIFNOT                        R13 ; [+3]
      239 GETTABLEKS                       R14 R13 K29 ["x"]
      241 JUMP                             ; [+1]
      242 LOADN                            R14 0
      243 SETTABLEKS                       R14 R4 K1 ["preferredColumn"]
      245 ADDK                             R15 R12 K13 [1]
      246 GETTABLEKS                       R17 R4 K1 ["preferredColumn"]
      248 ORK                              R16 R17 K17 [0]
      249 SUBK                             R19 R15 K13 [1]
      250 GETTABLEKS                       R20 R11 K26 ["lineHeight"]
      252 MUL                              R18 R19 R20
      253 GETTABLEKS                       R20 R11 K26 ["lineHeight"]
      255 DIVK                             R19 R20 K30 [2]
      256 ADD                              R17 R18 R19
      257 GETUPVAL                         R18 5
      258 GETTABLEKS                       R18 R18 K31 ["charHitTest"]
      260 GETIMPORT                        R19 K34 [Vector2.new]
      262 MOVE                             R20 R16
      263 MOVE                             R21 R17
      264 CALL                             R19 2 1
      265 GETTABLEKS                       R20 R11 K24 ["rows"]
      267 GETTABLEKS                       R21 R11 K26 ["lineHeight"]
      269 GETTABLEKS                       R22 R11 K27 ["font"]
      271 GETTABLEKS                       R23 R11 K28 ["textSize"]
      273 CALL                             R18 5 2
      274 MOVE                             R13 R18
      275 MOVE                             R14 R19
      276 JUMPIFNOT                        R13 ; [+17]
      277 JUMPIFNOT                        R14 ; [+16]
      278 MOVE                             R15 R2
      279 GETUPVAL                         R16 0
      280 GETTABLEKS                       R16 R16 K4 ["createCollapsed"]
      282 GETTABLEKS                       R17 R5 K5 ["blockIndex"]
      284 MOVE                             R18 R13
      285 MOVE                             R19 R14
      286 NEWTABLE                         R20 0 1
      288 MOVE                             R21 R9
      289 SETLIST                          R20 R21 1 [1]
      291 CALL                             R16 4 -1
      292 CALL                             R15 -1 0
      293 RETURN                           R0 0
      294 LENGTH                           R12 R8
      295 JUMPIFNOTLT                      R9 R12 ; [+101]
      297 ADDK                             R13 R9 K13 [1]
      298 GETTABLE                         R12 R8 R13
      299 JUMPIFNOT                        R12 ; [+96]
      300 GETTABLEKS                       R14 R5 K5 ["blockIndex"]
      302 ADDK                             R15 R9 K13 [1]
      303 GETTABLEKS                       R16 R4 K20 ["itemLayoutRegistry"]
      305 JUMPIF                           R16 ; [+2]
      306 LOADNIL                          R13
      307 JUMP                             ; [+13]
      308 FASTCALL1                        TOSTRING R14 ; [+3]
      309 MOVE                             R19 R14
      310 GETIMPORT                        R18 K22 [tostring]
      312 CALL                             R18 1 1
      313 LOADK                            R19 K23 [":"]
      314 FASTCALL1                        TOSTRING R15 ; [+3]
      315 MOVE                             R21 R15
      316 GETIMPORT                        R20 K22 [tostring]
      318 CALL                             R20 1 1
      319 CONCAT                           R17 R18 R20
      320 GETTABLE                         R13 R16 R17
      321 JUMPIFNOT                        R13 ; [+56]
      322 GETTABLEKS                       R15 R13 K24 ["rows"]
      324 LENGTH                           R14 R15
      325 LOADN                            R15 0
      326 JUMPIFNOTLT                      R15 R14 ; [+51]
      328 GETTABLEKS                       R14 R4 K1 ["preferredColumn"]
      330 JUMPIFNOT                        R14 ; [+47]
      331 GETTABLEKS                       R16 R4 K1 ["preferredColumn"]
      333 LOADN                            R19 0
      334 GETTABLEKS                       R20 R13 K26 ["lineHeight"]
      336 MUL                              R18 R19 R20
      337 GETTABLEKS                       R20 R13 K26 ["lineHeight"]
      339 DIVK                             R19 R20 K30 [2]
      340 ADD                              R17 R18 R19
      341 GETUPVAL                         R18 5
      342 GETTABLEKS                       R18 R18 K31 ["charHitTest"]
      344 GETIMPORT                        R19 K34 [Vector2.new]
      346 MOVE                             R20 R16
      347 MOVE                             R21 R17
      348 CALL                             R19 2 1
      349 GETTABLEKS                       R20 R13 K24 ["rows"]
      351 GETTABLEKS                       R21 R13 K26 ["lineHeight"]
      353 GETTABLEKS                       R22 R13 K27 ["font"]
      355 GETTABLEKS                       R23 R13 K28 ["textSize"]
      357 CALL                             R18 5 2
      358 MOVE                             R14 R18
      359 MOVE                             R15 R19
      360 JUMPIFNOT                        R14 ; [+17]
      361 JUMPIFNOT                        R15 ; [+16]
      362 MOVE                             R16 R2
      363 GETUPVAL                         R17 0
      364 GETTABLEKS                       R17 R17 K4 ["createCollapsed"]
      366 GETTABLEKS                       R18 R5 K5 ["blockIndex"]
      368 MOVE                             R19 R14
      369 MOVE                             R20 R15
      370 NEWTABLE                         R21 0 1
      372 ADDK                             R22 R9 K13 [1]
      373 SETLIST                          R21 R22 1 [1]
      375 CALL                             R17 4 -1
      376 CALL                             R16 -1 0
      377 RETURN                           R0 0
      378 MOVE                             R14 R2
      379 GETUPVAL                         R15 6
      380 GETTABLEKS                       R16 R5 K5 ["blockIndex"]
      382 MOVE                             R17 R12
      383 ADDK                             R18 R9 K13 [1]
      384 LOADN                            R20 0
      385 GETTABLEKS                       R23 R4 K2 ["preferredFlatOffset"]
      387 ORK                              R22 R23 K17 [0]
      388 SUBK                             R21 R22 K19 [5]
      389 FASTCALL2                        MATH_MAX R20 R21 ; [+3]
      391 GETIMPORT                        R19 K36 [math.max]
      393 CALL                             R19 2 1
      394 CALL                             R15 4 -1
      395 CALL                             R14 -1 0
      396 RETURN                           R0 0
      397 GETTABLEKS                       R10 R5 K5 ["blockIndex"]
      399 LENGTH                           R11 R6
      400 JUMPIFNOTLT                      R10 R11 ; [+91]
      402 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      404 ADDK                             R11 R12 K13 [1]
      405 GETTABLE                         R10 R6 R11
      406 JUMPIFNOT                        R10 ; [+85]
      407 GETTABLEKS                       R11 R4 K37 ["layoutRegistry"]
      409 JUMPIFNOT                        R11 ; [+5]
      410 GETTABLEKS                       R14 R5 K5 ["blockIndex"]
      412 ADDK                             R13 R14 K13 [1]
      413 GETTABLE                         R12 R11 R13
      414 JUMP                             ; [+1]
      415 LOADNIL                          R12
      416 JUMPIFNOT                        R12 ; [+64]
      417 GETTABLEKS                       R14 R12 K24 ["rows"]
      419 LENGTH                           R13 R14
      420 LOADN                            R14 0
      421 JUMPIFNOTLT                      R14 R13 ; [+59]
      423 GETTABLEKS                       R13 R4 K1 ["preferredColumn"]
      425 JUMPIFNOT                        R13 ; [+55]
      426 GETTABLEKS                       R15 R4 K1 ["preferredColumn"]
      428 LOADN                            R18 0
      429 GETTABLEKS                       R19 R12 K26 ["lineHeight"]
      431 MUL                              R17 R18 R19
      432 GETTABLEKS                       R19 R12 K26 ["lineHeight"]
      434 DIVK                             R18 R19 K30 [2]
      435 ADD                              R16 R17 R18
      436 GETUPVAL                         R17 5
      437 GETTABLEKS                       R17 R17 K31 ["charHitTest"]
      439 GETIMPORT                        R18 K34 [Vector2.new]
      441 MOVE                             R19 R15
      442 MOVE                             R20 R16
      443 CALL                             R18 2 1
      444 GETTABLEKS                       R19 R12 K24 ["rows"]
      446 GETTABLEKS                       R20 R12 K26 ["lineHeight"]
      448 GETTABLEKS                       R21 R12 K27 ["font"]
      450 GETTABLEKS                       R22 R12 K28 ["textSize"]
      452 CALL                             R17 5 2
      453 MOVE                             R13 R17
      454 MOVE                             R14 R18
      455 JUMPIFNOT                        R13 ; [+13]
      456 JUMPIFNOT                        R14 ; [+12]
      457 MOVE                             R15 R2
      458 GETUPVAL                         R16 0
      459 GETTABLEKS                       R16 R16 K4 ["createCollapsed"]
      461 GETTABLEKS                       R18 R5 K5 ["blockIndex"]
      463 ADDK                             R17 R18 K13 [1]
      464 MOVE                             R18 R13
      465 MOVE                             R19 R14
      466 CALL                             R16 3 -1
      467 CALL                             R15 -1 0
      468 RETURN                           R0 0
      469 MOVE                             R15 R2
      470 GETUPVAL                         R16 3
      471 GETTABLEKS                       R18 R5 K5 ["blockIndex"]
      473 ADDK                             R17 R18 K13 [1]
      474 MOVE                             R18 R10
      475 LOADB                            R19 0
      476 GETTABLEKS                       R20 R4 K2 ["preferredFlatOffset"]
      478 CALL                             R16 4 -1
      479 CALL                             R15 -1 0
      480 RETURN                           R0 0
      481 MOVE                             R13 R2
      482 GETUPVAL                         R14 3
      483 GETTABLEKS                       R16 R5 K5 ["blockIndex"]
      485 ADDK                             R15 R16 K13 [1]
      486 MOVE                             R16 R10
      487 LOADB                            R17 0
      488 GETTABLEKS                       R18 R4 K2 ["preferredFlatOffset"]
      490 CALL                             R14 4 -1
      491 CALL                             R13 -1 0
      492 RETURN                           R0 0
      493 GETTABLEKS                       R8 R4 K37 ["layoutRegistry"]
      495 JUMPIFNOT                        R8 ; [+4]
      496 GETTABLEKS                       R10 R5 K5 ["blockIndex"]
      498 GETTABLE                         R9 R8 R10
      499 JUMP                             ; [+1]
      500 LOADNIL                          R9
      501 JUMPIF                           R9 ; [+75]
      502 GETTABLEKS                       R10 R4 K2 ["preferredFlatOffset"]
      504 JUMPIFNOTEQKNIL                  R10 ; [+36]
      506 GETTABLEKS                       R11 R7 K10 ["name"]
      508 LOADB                            R10 1
      509 JUMPIFEQKS                       R11 K38 ["PARAGRAPH"] ; [+11]
      511 LOADB                            R10 1
      512 JUMPIFEQKS                       R11 K39 ["HEADING"] ; [+8]
      514 LOADB                            R10 1
      515 JUMPIFEQKS                       R11 K40 ["QUOTE"] ; [+5]
      517 JUMPIFEQKS                       R11 K41 ["LIST_ITEM"] ; [+2]
      519 LOADB                            R10 0 +1
      520 LOADB                            R10 1
      521 JUMPIFNOT                        R10 ; [+19]
      522 GETTABLEKS                       R11 R7 K12 ["children"]
      524 JUMPIF                           R11 ; [+2]
      525 NEWTABLE                         R11 0 0
      527 LOADN                            R12 0
      528 LOADN                            R13 0
      529 NEWCLOSURE                       R14 P0
      530 CAPTURE                          REF R13
      531 CAPTURE                          VAL R5
      532 CAPTURE                          REF R12
      533 CAPTURE                          VAL R14
      534 MOVE                             R15 R14
      535 MOVE                             R16 R11
      536 CALL                             R15 1 1
      537 OR                               R10 R15 R12
      538 CLOSEUPVALS                      R12
      539 SETTABLEKS                       R10 R4 K2 ["preferredFlatOffset"]
      541 GETTABLEKS                       R10 R5 K5 ["blockIndex"]
      543 LENGTH                           R11 R6
      544 JUMPIFNOTLT                      R10 R11 ; [+31]
      546 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      548 ADDK                             R11 R12 K13 [1]
      549 GETTABLE                         R10 R6 R11
      550 JUMPIFNOT                        R10 ; [+25]
      551 GETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      553 GETTABLEKS                       R12 R10 K10 ["name"]
      555 JUMPIFNOTEQKS                    R12 K18 ["LIST"] ; [+10]
      557 JUMPIFNOT                        R11 ; [+8]
      558 LOADN                            R13 0
      559 SUBK                             R14 R11 K19 [5]
      560 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
      562 GETIMPORT                        R12 K36 [math.max]
      564 CALL                             R12 2 1
      565 MOVE                             R11 R12
      566 MOVE                             R12 R2
      567 GETUPVAL                         R13 3
      568 GETTABLEKS                       R15 R5 K5 ["blockIndex"]
      570 ADDK                             R14 R15 K13 [1]
      571 MOVE                             R15 R10
      572 LOADB                            R16 0
      573 MOVE                             R17 R11
      574 CALL                             R13 4 -1
      575 CALL                             R12 -1 0
      576 RETURN                           R0 0
      577 GETUPVAL                         R10 4
      578 GETTABLEKS                       R11 R9 K24 ["rows"]
      580 GETTABLEKS                       R12 R5 K6 ["segmentIndex"]
      582 CALL                             R10 2 1
      583 JUMPIF                           R10 ; [+1]
      584 RETURN                           R0 0
      585 GETTABLEKS                       R11 R4 K1 ["preferredColumn"]
      587 JUMPIFNOTEQKNIL                  R11 ; [+24]
      589 GETUPVAL                         R11 5
      590 GETTABLEKS                       R11 R11 K25 ["computeCursorPosition"]
      592 GETTABLEKS                       R12 R9 K24 ["rows"]
      594 GETTABLEKS                       R13 R9 K26 ["lineHeight"]
      596 GETTABLEKS                       R14 R5 K6 ["segmentIndex"]
      598 GETTABLEKS                       R15 R5 K7 ["charOffset"]
      600 GETTABLEKS                       R16 R9 K27 ["font"]
      602 GETTABLEKS                       R17 R9 K28 ["textSize"]
      604 CALL                             R11 6 1
      605 JUMPIFNOT                        R11 ; [+3]
      606 GETTABLEKS                       R12 R11 K29 ["x"]
      608 JUMP                             ; [+1]
      609 LOADN                            R12 0
      610 SETTABLEKS                       R12 R4 K1 ["preferredColumn"]
      612 GETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      614 JUMPIFNOTEQKNIL                  R11 ; [+36]
      616 GETTABLEKS                       R12 R7 K10 ["name"]
      618 LOADB                            R11 1
      619 JUMPIFEQKS                       R12 K38 ["PARAGRAPH"] ; [+11]
      621 LOADB                            R11 1
      622 JUMPIFEQKS                       R12 K39 ["HEADING"] ; [+8]
      624 LOADB                            R11 1
      625 JUMPIFEQKS                       R12 K40 ["QUOTE"] ; [+5]
      627 JUMPIFEQKS                       R12 K41 ["LIST_ITEM"] ; [+2]
      629 LOADB                            R11 0 +1
      630 LOADB                            R11 1
      631 JUMPIFNOT                        R11 ; [+19]
      632 GETTABLEKS                       R12 R7 K12 ["children"]
      634 JUMPIF                           R12 ; [+2]
      635 NEWTABLE                         R12 0 0
      637 LOADN                            R13 0
      638 LOADN                            R14 0
      639 NEWCLOSURE                       R15 P0
      640 CAPTURE                          REF R14
      641 CAPTURE                          VAL R5
      642 CAPTURE                          REF R13
      643 CAPTURE                          VAL R15
      644 MOVE                             R16 R15
      645 MOVE                             R17 R12
      646 CALL                             R16 1 1
      647 OR                               R11 R16 R13
      648 CLOSEUPVALS                      R13
      649 SETTABLEKS                       R11 R4 K2 ["preferredFlatOffset"]
      651 GETTABLEKS                       R11 R4 K1 ["preferredColumn"]
      653 GETTABLEKS                       R13 R9 K24 ["rows"]
      655 LENGTH                           R12 R13
      656 JUMPIFNOTLT                      R10 R12 ; [+42]
      658 ADDK                             R14 R10 K13 [1]
      659 SUBK                             R17 R14 K13 [1]
      660 GETTABLEKS                       R18 R9 K26 ["lineHeight"]
      662 MUL                              R16 R17 R18
      663 GETTABLEKS                       R18 R9 K26 ["lineHeight"]
      665 DIVK                             R17 R18 K30 [2]
      666 ADD                              R15 R16 R17
      667 GETUPVAL                         R16 5
      668 GETTABLEKS                       R16 R16 K31 ["charHitTest"]
      670 GETIMPORT                        R17 K34 [Vector2.new]
      672 MOVE                             R18 R11
      673 MOVE                             R19 R15
      674 CALL                             R17 2 1
      675 GETTABLEKS                       R18 R9 K24 ["rows"]
      677 GETTABLEKS                       R19 R9 K26 ["lineHeight"]
      679 GETTABLEKS                       R20 R9 K27 ["font"]
      681 GETTABLEKS                       R21 R9 K28 ["textSize"]
      683 CALL                             R16 5 2
      684 MOVE                             R12 R16
      685 MOVE                             R13 R17
      686 JUMPIFNOT                        R12 ; [+118]
      687 JUMPIFNOT                        R13 ; [+117]
      688 MOVE                             R14 R2
      689 GETUPVAL                         R15 0
      690 GETTABLEKS                       R15 R15 K4 ["createCollapsed"]
      692 GETTABLEKS                       R16 R5 K5 ["blockIndex"]
      694 MOVE                             R17 R12
      695 MOVE                             R18 R13
      696 CALL                             R15 3 -1
      697 CALL                             R14 -1 0
      698 RETURN                           R0 0
      699 GETTABLEKS                       R12 R5 K5 ["blockIndex"]
      701 LENGTH                           R13 R6
      702 JUMPIFNOTLT                      R12 R13 ; [+102]
      704 GETTABLEKS                       R14 R5 K5 ["blockIndex"]
      706 ADDK                             R13 R14 K13 [1]
      707 GETTABLE                         R12 R6 R13
      708 JUMPIFNOT                        R12 ; [+29]
      709 GETTABLEKS                       R13 R12 K10 ["name"]
      711 JUMPIFNOTEQKS                    R13 K18 ["LIST"] ; [+26]
      713 GETTABLEKS                       R14 R4 K2 ["preferredFlatOffset"]
      715 JUMPIFNOT                        R14 ; [+10]
      716 LOADN                            R14 0
      717 GETTABLEKS                       R16 R4 K2 ["preferredFlatOffset"]
      719 SUBK                             R15 R16 K19 [5]
      720 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
      722 GETIMPORT                        R13 K36 [math.max]
      724 CALL                             R13 2 1
      725 JUMP                             ; [+1]
      726 LOADNIL                          R13
      727 MOVE                             R14 R2
      728 GETUPVAL                         R15 3
      729 GETTABLEKS                       R17 R5 K5 ["blockIndex"]
      731 ADDK                             R16 R17 K13 [1]
      732 MOVE                             R17 R12
      733 LOADB                            R18 0
      734 MOVE                             R19 R13
      735 CALL                             R15 4 -1
      736 CALL                             R14 -1 0
      737 RETURN                           R0 0
      738 JUMPIFNOT                        R8 ; [+5]
      739 GETTABLEKS                       R15 R5 K5 ["blockIndex"]
      741 ADDK                             R14 R15 K13 [1]
      742 GETTABLE                         R13 R8 R14
      743 JUMP                             ; [+1]
      744 LOADNIL                          R13
      745 JUMPIFNOT                        R13 ; [+47]
      746 GETTABLEKS                       R15 R13 K24 ["rows"]
      748 LENGTH                           R14 R15
      749 LOADN                            R15 0
      750 JUMPIFNOTLT                      R15 R14 ; [+42]
      752 LOADN                            R18 0
      753 GETTABLEKS                       R19 R13 K26 ["lineHeight"]
      755 MUL                              R17 R18 R19
      756 GETTABLEKS                       R19 R13 K26 ["lineHeight"]
      758 DIVK                             R18 R19 K30 [2]
      759 ADD                              R16 R17 R18
      760 GETUPVAL                         R17 5
      761 GETTABLEKS                       R17 R17 K31 ["charHitTest"]
      763 GETIMPORT                        R18 K34 [Vector2.new]
      765 MOVE                             R19 R11
      766 MOVE                             R20 R16
      767 CALL                             R18 2 1
      768 GETTABLEKS                       R19 R13 K24 ["rows"]
      770 GETTABLEKS                       R20 R13 K26 ["lineHeight"]
      772 GETTABLEKS                       R21 R13 K27 ["font"]
      774 GETTABLEKS                       R22 R13 K28 ["textSize"]
      776 CALL                             R17 5 2
      777 MOVE                             R14 R17
      778 MOVE                             R15 R18
      779 JUMPIFNOT                        R14 ; [+25]
      780 JUMPIFNOT                        R15 ; [+24]
      781 MOVE                             R16 R2
      782 GETUPVAL                         R17 0
      783 GETTABLEKS                       R17 R17 K4 ["createCollapsed"]
      785 GETTABLEKS                       R19 R5 K5 ["blockIndex"]
      787 ADDK                             R18 R19 K13 [1]
      788 MOVE                             R19 R14
      789 MOVE                             R20 R15
      790 CALL                             R17 3 -1
      791 CALL                             R16 -1 0
      792 RETURN                           R0 0
      793 JUMPIFNOT                        R12 ; [+11]
      794 MOVE                             R14 R2
      795 GETUPVAL                         R15 3
      796 GETTABLEKS                       R17 R5 K5 ["blockIndex"]
      798 ADDK                             R16 R17 K13 [1]
      799 MOVE                             R17 R12
      800 LOADB                            R18 0
      801 GETTABLEKS                       R19 R4 K2 ["preferredFlatOffset"]
      803 CALL                             R15 4 -1
      804 CALL                             R14 -1 0
      805 RETURN                           R0 0

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
