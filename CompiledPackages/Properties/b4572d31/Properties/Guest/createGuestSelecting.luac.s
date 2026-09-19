PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 MOVE                             R3 R0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETUPVAL                         R8 0
        8 MOVE                             R9 R7
        9 CALL                             R8 1 1
       10 JUMPIFNOTEQ                      R8 R2 ; [+2]
       12 RETURN                           R6 1
       13 FORGLOOP                         R3 2 ; [-7]
       15 LOADNIL                          R3
       16 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R3 R4 R2
        5 JUMPIFNOT                        R3 ; [+2]
        6 MOVE                             R4 R3
        7 CALL                             R4 0 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K0 ["listenToParts"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 NEWCLOSURE                       R8 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 CALL                             R5 3 1
       18 SETTABLE                         R5 R4 R2
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["startAggregating"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Get"]
        7 CALL                             R1 0 3
        8 FORGPREP                         R1
        9 GETUPVAL                         R6 2
       10 MOVE                             R7 R5
       11 MOVE                             R8 R0
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+25]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K2 ["catalogProperty"]
       17 MOVE                             R7 R5
       18 MOVE                             R8 R0
       19 CALL                             R6 2 0
       20 GETUPVAL                         R6 3
       21 MOVE                             R7 R0
       22 CALL                             R6 1 1
       23 GETUPVAL                         R8 4
       24 GETTABLE                         R7 R8 R6
       25 JUMPIFNOT                        R7 ; [+2]
       26 MOVE                             R8 R7
       27 CALL                             R8 0 0
       28 GETUPVAL                         R8 4
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K3 ["listenToParts"]
       32 MOVE                             R10 R5
       33 MOVE                             R11 R0
       34 NEWCLOSURE                       R12 P0
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R0
       37 CALL                             R9 3 1
       38 SETTABLE                         R9 R8 R6
       39 FORGLOOP                         R1 2 ; [-31]
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K4 ["getCataloggedProperties"]
       44 CALL                             R1 0 1
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K5 ["getCataloggedInfos"]
       48 CALL                             R2 0 1
       49 GETUPVAL                         R3 6
       50 GETTABLEKS                       R3 R3 K6 ["showProperties"]
       52 MOVE                             R4 R1
       53 MOVE                             R5 R2
       54 CALL                             R3 2 0
       55 GETUPVAL                         R4 3
       56 MOVE                             R5 R0
       57 CALL                             R4 1 1
       58 MOVE                             R5 R1
       59 LOADNIL                          R6
       60 LOADNIL                          R7
       61 FORGPREP                         R5
       62 GETUPVAL                         R10 3
       63 MOVE                             R11 R9
       64 CALL                             R10 1 1
       65 JUMPIFNOTEQ                      R10 R4 ; [+3]
       67 MOVE                             R3 R8
       68 JUMP                             ; [+3]
       69 FORGLOOP                         R5 2 ; [-8]
       71 LOADNIL                          R3
       72 GETUPVAL                         R5 7
       73 GETUPVAL                         R6 3
       74 MOVE                             R7 R0
       75 CALL                             R6 1 1
       76 MOVE                             R7 R5
       77 LOADNIL                          R8
       78 LOADNIL                          R9
       79 FORGPREP                         R7
       80 GETUPVAL                         R12 3
       81 MOVE                             R13 R11
       82 CALL                             R12 1 1
       83 JUMPIFNOTEQ                      R12 R6 ; [+3]
       85 MOVE                             R4 R10
       86 JUMP                             ; [+3]
       87 FORGLOOP                         R7 2 ; [-8]
       89 LOADNIL                          R4
       90 JUMPIFEQKNIL                     R3 ; [+11]
       92 JUMPIFNOTEQKNIL                  R4 ; [+9]
       94 GETUPVAL                         R6 7
       95 FASTCALL2                        TABLE_INSERT R6 R0 ; [+4]
       97 MOVE                             R7 R0
       98 GETIMPORT                        R5 K9 [table.insert]
      100 CALL                             R5 2 0
      101 JUMP                             ; [+18]
      102 JUMPIFNOTEQKNIL                  R3 ; [+17]
      104 JUMPIFEQKNIL                     R4 ; [+15]
      106 GETIMPORT                        R5 K11 [table.remove]
      108 GETUPVAL                         R6 7
      109 MOVE                             R7 R4
      110 CALL                             R5 2 0
      111 GETUPVAL                         R5 6
      112 GETTABLEKS                       R5 R5 K12 ["hideProperties"]
      114 NEWTABLE                         R6 0 1
      116 MOVE                             R7 R0
      117 SETLIST                          R6 R7 1 [1]
      119 CALL                             R5 1 0
      120 GETUPVAL                         R5 0
      121 GETTABLEKS                       R5 R5 K13 ["stopAggregating"]
      123 CALL                             R5 0 0
      124 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["startAggregating"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["Get"]
        7 CALL                             R0 0 1
        8 MOVE                             R1 R0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R7 R5 K2 ["ClassName"]
       15 GETUPVAL                         R8 3
       16 CALL                             R6 2 3
       17 FORGPREP                         R6
       18 GETUPVAL                         R12 4
       19 GETTABLEKS                       R12 R12 K3 ["propertyPatches"]
       21 GETUPVAL                         R13 5
       22 MOVE                             R14 R9
       23 CALL                             R13 1 1
       24 GETTABLE                         R11 R12 R13
       25 JUMPIFEQKNIL                     R11 ; [+10]
       27 GETTABLEKS                       R12 R11 K4 ["isVisible"]
       29 JUMPIFEQKNIL                     R12 ; [+6]
       31 GETTABLEKS                       R12 R11 K4 ["isVisible"]
       33 MOVE                             R13 R5
       34 CALL                             R12 1 1
       35 JUMPIFNOT                        R12 ; [+25]
       36 GETUPVAL                         R12 0
       37 GETTABLEKS                       R12 R12 K5 ["catalogProperty"]
       39 MOVE                             R13 R5
       40 MOVE                             R14 R9
       41 CALL                             R12 2 0
       42 GETUPVAL                         R12 5
       43 MOVE                             R13 R9
       44 CALL                             R12 1 1
       45 GETUPVAL                         R14 6
       46 GETTABLE                         R13 R14 R12
       47 JUMPIFNOT                        R13 ; [+2]
       48 MOVE                             R14 R13
       49 CALL                             R14 0 0
       50 GETUPVAL                         R14 6
       51 GETUPVAL                         R15 0
       52 GETTABLEKS                       R15 R15 K6 ["listenToParts"]
       54 MOVE                             R16 R5
       55 MOVE                             R17 R9
       56 NEWCLOSURE                       R18 P0
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          VAL R9
       59 CALL                             R15 3 1
       60 SETTABLE                         R15 R14 R12
       61 FORGLOOP                         R6 2 ; [-44]
       63 NAMECALL                         R6 R5 K7 ["GetAttributes"]
       65 CALL                             R6 1 3
       66 FORGPREP                         R6
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R11 R11 K5 ["catalogProperty"]
       70 MOVE                             R12 R5
       71 GETUPVAL                         R13 8
       72 GETTABLEKS                       R13 R13 K8 ["fromAttribute"]
       74 MOVE                             R14 R9
       75 CALL                             R13 1 -1
       76 CALL                             R11 -1 0
       77 FORGLOOP                         R6 2 ; [-11]
       79 NAMECALL                         R6 R5 K9 ["GetTags"]
       81 CALL                             R6 1 3
       82 FORGPREP                         R6
       83 GETUPVAL                         R11 0
       84 GETTABLEKS                       R11 R11 K5 ["catalogProperty"]
       86 MOVE                             R12 R5
       87 GETUPVAL                         R13 8
       88 GETTABLEKS                       R13 R13 K10 ["fromTag"]
       90 MOVE                             R14 R10
       91 CALL                             R13 1 -1
       92 CALL                             R11 -1 0
       93 FORGLOOP                         R6 2 ; [-11]
       95 FORGLOOP                         R1 2 ; [-84]
       97 GETUPVAL                         R1 0
       98 GETTABLEKS                       R1 R1 K11 ["getCataloggedProperties"]
      100 CALL                             R1 0 1
      101 GETUPVAL                         R2 0
      102 GETTABLEKS                       R2 R2 K12 ["getCataloggedInfos"]
      104 CALL                             R2 0 1
      105 DUPTABLE                         R3 K15 [{"processedInstances", "totalInstances"}]
      106 LENGTH                           R4 R0
      107 SETTABLEKS                       R4 R3 K13 ["processedInstances"]
      109 LENGTH                           R4 R0
      110 SETTABLEKS                       R4 R3 K14 ["totalInstances"]
      112 GETUPVAL                         R4 9
      113 GETTABLEKS                       R4 R4 K16 ["showProperties"]
      115 MOVE                             R5 R1
      116 MOVE                             R6 R2
      117 MOVE                             R7 R3
      118 CALL                             R4 3 0
      119 NEWTABLE                         R4 0 0
      121 MOVE                             R5 R1
      122 LOADNIL                          R6
      123 LOADNIL                          R7
      124 FORGPREP                         R5
      125 GETUPVAL                         R10 5
      126 MOVE                             R11 R9
      127 CALL                             R10 1 1
      128 LOADB                            R11 1
      129 SETTABLE                         R11 R4 R10
      130 FORGLOOP                         R5 2 ; [-6]
      132 NEWTABLE                         R5 0 0
      134 GETUPVAL                         R6 10
      135 LOADNIL                          R7
      136 LOADNIL                          R8
      137 FORGPREP                         R6
      138 GETUPVAL                         R12 5
      139 MOVE                             R13 R10
      140 CALL                             R12 1 1
      141 GETTABLE                         R11 R4 R12
      142 JUMPIF                           R11 ; [+7]
      143 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      145 MOVE                             R12 R5
      146 MOVE                             R13 R10
      147 GETIMPORT                        R11 K19 [table.insert]
      149 CALL                             R11 2 0
      150 FORGLOOP                         R6 2 ; [-13]
      152 LENGTH                           R6 R5
      153 LOADN                            R7 0
      154 JUMPIFNOTLT                      R7 R6 ; [+6]
      156 GETUPVAL                         R6 9
      157 GETTABLEKS                       R6 R6 K20 ["hideProperties"]
      159 MOVE                             R7 R5
      160 CALL                             R6 1 0
      161 GETIMPORT                        R6 K22 [table.clone]
      163 MOVE                             R7 R1
      164 CALL                             R6 1 1
      165 SETUPVAL                         R6 10
      166 GETUPVAL                         R6 0
      167 GETTABLEKS                       R6 R6 K23 ["stopAggregating"]
      169 CALL                             R6 0 0
      170 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 GETUPVAL                         R0 1
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 MOVE                             R5 R4
       13 CALL                             R5 0 0
       14 FORGLOOP                         R0 2 ; [-3]
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isAggregating"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["stopAggregating"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [task.defer]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["fromAttribute"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["fromTag"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["fromTag"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_16:
        0 LOADK                            R3 K0 ["ValueBase"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+31]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K2 ["ClassName"]
        8 GETUPVAL                         R3 1
        9 CALL                             R1 2 3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R6 R4 K3 ["metaType"]
       13 JUMPIFNOTEQKS                    R6 K4 ["Property"] ; [+19]
       15 GETTABLEKS                       R8 R4 K5 ["name"]
       17 NAMECALL                         R6 R0 K6 ["GetPropertyChangedSignal"]
       19 CALL                             R6 2 1
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          UPVAL U2
       22 NAMECALL                         R6 R6 K7 ["Connect"]
       24 CALL                             R6 2 1
       25 GETUPVAL                         R8 3
       26 NEWCLOSURE                       R9 P1
       27 CAPTURE                          VAL R6
       28 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       30 GETIMPORT                        R7 K10 [table.insert]
       32 CALL                             R7 2 0
       33 FORGLOOP                         R1 2 ; [-23]
       35 JUMP                             ; [+15]
       36 GETTABLEKS                       R1 R0 K11 ["Changed"]
       38 NEWCLOSURE                       R3 P2
       39 CAPTURE                          UPVAL U2
       40 NAMECALL                         R1 R1 K7 ["Connect"]
       42 CALL                             R1 2 1
       43 GETUPVAL                         R3 3
       44 NEWCLOSURE                       R4 P3
       45 CAPTURE                          VAL R1
       46 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       48 GETIMPORT                        R2 K10 [table.insert]
       50 CALL                             R2 2 0
       51 GETTABLEKS                       R1 R0 K12 ["AttributeChanged"]
       53 NEWCLOSURE                       R3 P4
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U5
       56 NAMECALL                         R1 R1 K7 ["Connect"]
       58 CALL                             R1 2 1
       59 GETUPVAL                         R3 3
       60 NEWCLOSURE                       R4 P5
       61 CAPTURE                          VAL R1
       62 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       64 GETIMPORT                        R2 K10 [table.insert]
       66 CALL                             R2 2 0
       67 GETUPVAL                         R2 6
       68 JUMPIFNOT                        R2 ; [+31]
       69 GETUPVAL                         R2 7
       70 MOVE                             R4 R0
       71 NAMECALL                         R2 R2 K13 ["GetTagAddedSignal"]
       73 CALL                             R2 2 1
       74 NEWCLOSURE                       R4 P6
       75 CAPTURE                          UPVAL U4
       76 CAPTURE                          UPVAL U5
       77 NAMECALL                         R2 R2 K7 ["Connect"]
       79 CALL                             R2 2 1
       80 GETUPVAL                         R3 7
       81 MOVE                             R5 R0
       82 NAMECALL                         R3 R3 K14 ["GetTagRemovedSignal"]
       84 CALL                             R3 2 1
       85 NEWCLOSURE                       R5 P7
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          UPVAL U5
       88 NAMECALL                         R3 R3 K7 ["Connect"]
       90 CALL                             R3 2 1
       91 GETUPVAL                         R5 3
       92 NEWCLOSURE                       R6 P8
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R3
       95 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       97 GETIMPORT                        R4 K10 [table.insert]
       99 CALL                             R4 2 0
      100 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Get"]
        3 CALL                             R0 0 1
        4 MOVE                             R1 R0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R6 1
        9 MOVE                             R7 R5
       10 CALL                             R6 1 0
       11 FORGLOOP                         R1 2 ; [-4]
       13 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 GETUPVAL                         R0 1
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 MOVE                             R5 R4
       13 CALL                             R5 0 0
       14 FORGLOOP                         R0 2 ; [-3]
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K0 ["Get"]
       19 CALL                             R0 0 1
       20 MOVE                             R1 R0
       21 LOADNIL                          R2
       22 LOADNIL                          R3
       23 FORGPREP                         R1
       24 GETUPVAL                         R6 3
       25 MOVE                             R7 R5
       26 CALL                             R6 1 0
       27 FORGLOOP                         R1 2 ; [-4]
       29 GETUPVAL                         R0 4
       30 GETTABLEKS                       R0 R0 K1 ["hideProperties"]
       32 GETUPVAL                         R1 5
       33 CALL                             R0 1 0
       34 GETUPVAL                         R0 6
       35 GETTABLEKS                       R0 R0 K2 ["isAggregating"]
       37 CALL                             R0 0 1
       38 JUMPIFNOT                        R0 ; [+4]
       39 GETUPVAL                         R0 6
       40 GETTABLEKS                       R0 R0 K3 ["stopAggregating"]
       42 CALL                             R0 0 0
       43 GETUPVAL                         R0 7
       44 CALL                             R0 0 0
       45 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hideProperties"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K1 ["isAggregating"]
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K2 ["stopAggregating"]
       13 CALL                             R0 0 0
       14 GETUPVAL                         R0 3
       15 NAMECALL                         R0 R0 K3 ["Disconnect"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_20:
        0 NEWTABLE                         R4 0 0
        2 NEWTABLE                         R5 0 0
        4 NEWTABLE                         R6 0 0
        6 LOADNIL                          R7
        7 NEWCLOSURE                       R8 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R6
       10 CAPTURE                          VAL R3
       11 CAPTURE                          REF R7
       12 NEWCLOSURE                       R9 P1
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R6
       18 CAPTURE                          REF R7
       19 CAPTURE                          VAL R0
       20 CAPTURE                          REF R4
       21 MOVE                             R7 R9
       22 NEWCLOSURE                       R10 P2
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R6
       30 CAPTURE                          REF R7
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R0
       33 CAPTURE                          REF R4
       34 NEWCLOSURE                       R11 P3
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R6
       37 NEWCLOSURE                       R12 P4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R10
       40 NEWCLOSURE                       R13 P5
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R12
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R9
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 NEWCLOSURE                       R14 P6
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R13
       52 NEWCLOSURE                       R15 P7
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R13
       57 CAPTURE                          VAL R0
       58 CAPTURE                          REF R4
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R10
       61 GETTABLEKS                       R16 R1 K0 ["SelectionChanged"]
       63 MOVE                             R18 R15
       64 NAMECALL                         R16 R16 K1 ["Connect"]
       66 CALL                             R16 2 1
       67 GETIMPORT                        R17 K4 [task.defer]
       69 MOVE                             R18 R15
       70 CALL                             R17 1 0
       71 NEWCLOSURE                       R17 P8
       72 CAPTURE                          VAL R0
       73 CAPTURE                          REF R4
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R16
       76 DUPTABLE                         R18 K6 [{"destroy"}]
       77 SETTABLEKS                       R17 R18 K5 ["destroy"]
       79 CLOSEUPVALS                      R4
       80 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Properties"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Flags"]
       17 GETTABLEKS                       R3 R3 K11 ["EngineFeatureCollectionServiceTagAddedRemovedOnInstanceSignals"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["PropertyInteraction"]
       24 GETTABLEKS                       R4 R4 K13 ["PropertyId"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K14 ["PropertyTypes"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R1 K15 ["RpcTypes"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K9 [require]
       39 GETTABLEKS                       R7 R1 K12 ["PropertyInteraction"]
       41 GETTABLEKS                       R7 R7 K16 ["SpecialProperties"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K9 [require]
       46 GETTABLEKS                       R8 R1 K12 ["PropertyInteraction"]
       48 GETTABLEKS                       R8 R8 K17 ["getReadablePropertiesForClass"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K9 [require]
       53 GETTABLEKS                       R9 R1 K12 ["PropertyInteraction"]
       55 GETTABLEKS                       R9 R9 K18 ["hasProperty"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K9 [require]
       60 GETTABLEKS                       R10 R1 K12 ["PropertyInteraction"]
       62 GETTABLEKS                       R10 R10 K19 ["propertyIdToString"]
       64 CALL                             R9 1 1
       65 DUPCLOSURE                       R10 K20 [PROTO_0]
       66 CAPTURE                          VAL R9
       67 DUPCLOSURE                       R11 K21 [PROTO_20]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R0
       75 RETURN                           R11 1
