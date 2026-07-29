PROTO_0:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K7 [{"code", "name", "version", "filePath", "moduleScript", "origin"}]
        5 GETTABLEKS                       R3 R0 K8 ["Source"]
        7 SETTABLEKS                       R3 R2 K1 ["code"]
        9 GETTABLEKS                       R3 R0 K9 ["Name"]
       11 SETTABLEKS                       R3 R2 K2 ["name"]
       13 GETUPVAL                         R3 0
       14 SETTABLEKS                       R3 R2 K3 ["version"]
       16 LOADK                            R4 K10 ["ModuleScript: "]
       17 NAMECALL                         R5 R0 K11 ["GetFullName"]
       19 CALL                             R5 1 1
       20 CONCAT                           R3 R4 R5
       21 SETTABLEKS                       R3 R2 K4 ["filePath"]
       23 SETTABLEKS                       R0 R2 K5 ["moduleScript"]
       25 GETUPVAL                         R3 2
       26 SETTABLEKS                       R3 R2 K6 ["origin"]
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+29]
        4 GETUPVAL                         R1 2
        5 ADDK                             R1 R1 K0 [1]
        6 SETUPVAL                         R1 2
        7 GETUPVAL                         R1 3
        8 DUPTABLE                         R2 K7 [{"code", "name", "version", "filePath", "moduleScript", "origin"}]
        9 GETTABLEKS                       R3 R0 K8 ["Source"]
       11 SETTABLEKS                       R3 R2 K1 ["code"]
       13 GETTABLEKS                       R3 R0 K9 ["Name"]
       15 SETTABLEKS                       R3 R2 K2 ["name"]
       17 GETUPVAL                         R3 2
       18 SETTABLEKS                       R3 R2 K3 ["version"]
       20 LOADK                            R4 K10 ["ModuleScript: "]
       21 NAMECALL                         R5 R0 K11 ["GetFullName"]
       23 CALL                             R5 1 1
       24 CONCAT                           R3 R4 R5
       25 SETTABLEKS                       R3 R2 K4 ["filePath"]
       27 SETTABLEKS                       R0 R2 K5 ["moduleScript"]
       29 GETUPVAL                         R3 4
       30 SETTABLEKS                       R3 R2 K6 ["origin"]
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETIMPORT                        R0 K2 [task.defer]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+6]
        3 NAMECALL                         R2 R1 K0 ["Disconnect"]
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 0
        7 LOADNIL                          R3
        8 SETTABLE                         R3 R2 R0
        9 GETUPVAL                         R2 1
       10 LOADNIL                          R3
       11 SETTABLE                         R3 R2 R0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 SETTABLE                         R2 R0 R1
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+1]
       11 RETURN                           R0 0
       12 LOADB                            R0 1
       13 SETUPVAL                         R0 2
       14 GETIMPORT                        R0 K2 [task.defer]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 LOADK                            R4 K0 ["Source"]
        6 NAMECALL                         R2 R0 K1 ["GetPropertyChangedSignal"]
        8 CALL                             R2 2 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 NAMECALL                         R2 R2 K2 ["Connect"]
       19 CALL                             R2 2 1
       20 SETTABLE                         R2 R1 R0
       21 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 ADDK                             R0 R0 K0 [1]
        6 FORGLOOP                         R1 1 ; [-2]
        8 RETURN                           R0 1

PROTO_7:
        0 NAMECALL                         R3 R0 K0 ["GetFullName"]
        2 CALL                             R3 1 1
        3 NAMECALL                         R4 R1 K0 ["GetFullName"]
        5 CALL                             R4 1 1
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LOADB                            R6 1
        7 SETTABLE                         R6 R0 R4
        8 FORGLOOP                         R1 1 ; [-3]
       10 NEWTABLE                         R1 0 0
       12 GETUPVAL                         R2 0
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 LOADB                            R7 1
       17 SETTABLE                         R7 R1 R5
       18 FORGLOOP                         R2 1 ; [-3]
       20 GETUPVAL                         R2 1
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 LOADB                            R7 1
       25 SETTABLE                         R7 R1 R5
       26 FORGLOOP                         R2 1 ; [-3]
       28 LOADN                            R2 0
       29 SETUPVAL                         R2 2
       30 MOVE                             R2 R1
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 FORGPREP                         R2
       34 GETUPVAL                         R7 2
       35 ADDK                             R7 R7 K0 [1]
       36 SETUPVAL                         R7 2
       37 FORGLOOP                         R2 1 ; [-4]
       39 GETUPVAL                         R3 2
       40 LOADN                            R4 500
       41 JUMPIFLT                         R4 R3 ; [+2]
       43 LOADB                            R2 0 +1
       44 LOADB                            R2 1
       45 SETUPVAL                         R2 3
       46 NEWTABLE                         R2 0 0
       48 GETUPVAL                         R3 1
       49 LOADNIL                          R4
       50 LOADNIL                          R5
       51 FORGPREP                         R3
       52 GETTABLE                         R8 R0 R6
       53 JUMPIF                           R8 ; [+7]
       54 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       56 MOVE                             R9 R2
       57 MOVE                             R10 R6
       58 GETIMPORT                        R8 K3 [table.insert]
       60 CALL                             R8 2 0
       61 FORGLOOP                         R3 1 ; [-10]
       63 GETIMPORT                        R3 K5 [table.sort]
       65 MOVE                             R4 R2
       66 DUPCLOSURE                       R5 K6 [PROTO_7]
       67 CALL                             R3 2 0
       68 MOVE                             R3 R2
       69 LOADNIL                          R4
       70 LOADNIL                          R5
       71 FORGPREP                         R3
       72 GETUPVAL                         R8 2
       73 LOADN                            R9 500
       74 JUMPIFNOTLT                      R9 R8 ; [+13]
       76 LOADN                            R9 0
       77 GETUPVAL                         R10 4
       78 LOADNIL                          R11
       79 LOADNIL                          R12
       80 FORGPREP                         R10
       81 ADDK                             R9 R9 K0 [1]
       82 FORGLOOP                         R10 1 ; [-2]
       84 MOVE                             R8 R9
       85 LOADN                            R9 500
       86 JUMPIFLE                         R9 R8 ; [+5]
       88 LOADB                            R8 1
       89 SETTABLE                         R8 R0 R7
       90 FORGLOOP                         R3 2 ; [-19]
       92 GETUPVAL                         R3 4
       93 LOADNIL                          R4
       94 LOADNIL                          R5
       95 FORGPREP                         R3
       96 GETTABLE                         R8 R0 R6
       97 JUMPIF                           R8 ; [+12]
       98 GETUPVAL                         R9 4
       99 GETTABLE                         R8 R9 R6
      100 JUMPIFNOT                        R8 ; [+6]
      101 NAMECALL                         R9 R8 K7 ["Disconnect"]
      103 CALL                             R9 1 0
      104 GETUPVAL                         R9 4
      105 LOADNIL                          R10
      106 SETTABLE                         R10 R9 R6
      107 GETUPVAL                         R9 5
      108 LOADNIL                          R10
      109 SETTABLE                         R10 R9 R6
      110 FORGLOOP                         R3 1 ; [-15]
      112 MOVE                             R3 R0
      113 LOADNIL                          R4
      114 LOADNIL                          R5
      115 FORGPREP                         R3
      116 LOADN                            R9 0
      117 GETUPVAL                         R10 4
      118 LOADNIL                          R11
      119 LOADNIL                          R12
      120 FORGPREP                         R10
      121 ADDK                             R9 R9 K0 [1]
      122 FORGLOOP                         R10 1 ; [-2]
      124 MOVE                             R8 R9
      125 LOADN                            R9 500
      126 JUMPIFNOTLE                      R9 R8 ; [+4]
      128 GETUPVAL                         R9 4
      129 GETTABLE                         R8 R9 R6
      130 JUMPIFNOT                        R8 ; [+23]
      131 GETUPVAL                         R9 4
      132 GETTABLE                         R8 R9 R6
      133 JUMPIFNOT                        R8 ; [+1]
      134 JUMP                             ; [+17]
      135 GETUPVAL                         R8 4
      136 LOADK                            R11 K8 ["Source"]
      137 NAMECALL                         R9 R6 K9 ["GetPropertyChangedSignal"]
      139 CALL                             R9 2 1
      140 NEWCLOSURE                       R11 P1
      141 CAPTURE                          UPVAL U5
      142 CAPTURE                          VAL R6
      143 CAPTURE                          UPVAL U6
      144 CAPTURE                          UPVAL U7
      145 CAPTURE                          UPVAL U8
      146 CAPTURE                          UPVAL U9
      147 CAPTURE                          UPVAL U10
      148 NAMECALL                         R9 R9 K10 ["Connect"]
      150 CALL                             R9 2 1
      151 SETTABLE                         R9 R8 R6
      152 FORGLOOP                         R3 1 ; [-37]
      154 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R3 K0 ["ModuleScript"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+19]
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 1
        7 SETTABLE                         R2 R1 R0
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 0
       10 GETUPVAL                         R1 2
       11 JUMPIFNOT                        R1 ; [+1]
       12 RETURN                           R0 0
       13 LOADB                            R1 1
       14 SETUPVAL                         R1 2
       15 GETIMPORT                        R1 K4 [task.defer]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R3 K0 ["ModuleScript"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+19]
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 SETTABLE                         R2 R1 R0
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 0
       10 GETUPVAL                         R1 2
       11 JUMPIFNOT                        R1 ; [+1]
       12 RETURN                           R0 0
       13 LOADB                            R1 1
       14 SETUPVAL                         R1 2
       15 GETIMPORT                        R1 K4 [task.defer]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        5 CALL                             R1 1 3
        6 FORGPREP                         R1
        7 LOADK                            R8 K1 ["ModuleScript"]
        8 NAMECALL                         R6 R5 K2 ["IsA"]
       10 CALL                             R6 2 1
       11 JUMPIFNOT                        R6 ; [+3]
       12 GETUPVAL                         R6 0
       13 LOADB                            R7 1
       14 SETTABLE                         R7 R6 R5
       15 FORGLOOP                         R1 2 ; [-9]
       17 GETUPVAL                         R1 1
       18 CALL                             R1 0 0
       19 GETTABLEKS                       R1 R0 K3 ["DescendantAdded"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 NAMECALL                         R1 R1 K4 ["Connect"]
       31 CALL                             R1 2 1
       32 SETUPVAL                         R1 2
       33 GETTABLEKS                       R1 R0 K5 ["DescendantRemoving"]
       35 NEWCLOSURE                       R3 P1
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          UPVAL U7
       43 NAMECALL                         R1 R1 K4 ["Connect"]
       45 CALL                             R1 2 1
       46 SETUPVAL                         R1 8
       47 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R7 0
        5 GETTABLE                         R6 R7 R4
        6 JUMPIFNOT                        R6 ; [+6]
        7 NAMECALL                         R7 R6 K0 ["Disconnect"]
        9 CALL                             R7 1 0
       10 GETUPVAL                         R7 0
       11 LOADNIL                          R8
       12 SETTABLE                         R8 R7 R4
       13 GETUPVAL                         R7 1
       14 LOADNIL                          R8
       15 SETTABLE                         R8 R7 R4
       16 FORGLOOP                         R1 1 ; [-13]
       18 GETUPVAL                         R1 2
       19 JUMPIFNOT                        R1 ; [+6]
       20 GETUPVAL                         R1 2
       21 NAMECALL                         R1 R1 K0 ["Disconnect"]
       23 CALL                             R1 1 0
       24 LOADNIL                          R1
       25 SETUPVAL                         R1 2
       26 GETUPVAL                         R1 3
       27 JUMPIFNOT                        R1 ; [+6]
       28 GETUPVAL                         R1 3
       29 NAMECALL                         R1 R1 K0 ["Disconnect"]
       31 CALL                             R1 1 0
       32 LOADNIL                          R1
       33 SETUPVAL                         R1 3
       34 LOADNIL                          R1
       35 SETUPVAL                         R1 4
       36 LOADNIL                          R1
       37 SETUPVAL                         R1 5
       38 LOADB                            R1 0
       39 SETUPVAL                         R1 6
       40 GETIMPORT                        R1 K3 [table.clear]
       42 GETUPVAL                         R2 1
       43 CALL                             R1 1 0
       44 GETIMPORT                        R1 K3 [table.clear]
       46 GETUPVAL                         R2 7
       47 CALL                             R1 1 0
       48 GETIMPORT                        R1 K3 [table.clear]
       50 GETUPVAL                         R2 8
       51 CALL                             R1 1 0
       52 LOADN                            R1 0
       53 SETUPVAL                         R1 9
       54 LOADB                            R1 0
       55 SETUPVAL                         R1 10
       56 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["classify"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["discover"]
        8 MOVE                             R5 R1
        9 CALL                             R4 1 2
       10 JUMPIFNOT                        R5 ; [+4]
       11 LOADB                            R6 0
       12 GETTABLEKS                       R7 R5 K2 ["message"]
       14 RETURN                           R6 2
       15 JUMPIFNOTEQKS                    R3 K3 ["external"] ; [+5]
       17 JUMPIF                           R4 ; [+3]
       18 LOADB                            R6 0
       19 LOADK                            R7 K4 ["[external-harness-required] External stories must provide a structural .storybook harness"]
       20 RETURN                           R6 2
       21 NAMECALL                         R6 R0 K5 ["unbind"]
       23 CALL                             R6 1 0
       24 SETUPVAL                         R1 2
       25 SETUPVAL                         R3 3
       26 GETUPVAL                         R6 4
       27 MOVE                             R7 R1
       28 CALL                             R6 1 0
       29 JUMPIFNOT                        R4 ; [+5]
       30 GETUPVAL                         R6 5
       31 LOADB                            R7 1
       32 SETTABLE                         R7 R6 R4
       33 GETUPVAL                         R6 6
       34 CALL                             R6 0 0
       35 JUMPIFEQKB                       R2 FALSE ; [+30]
       37 GETUPVAL                         R6 7
       38 ADDK                             R6 R6 K6 [1]
       39 SETUPVAL                         R6 7
       40 GETUPVAL                         R6 8
       41 DUPTABLE                         R7 K13 [{"code", "name", "version", "filePath", "moduleScript", "origin"}]
       42 GETTABLEKS                       R8 R1 K14 ["Source"]
       44 SETTABLEKS                       R8 R7 K7 ["code"]
       46 GETTABLEKS                       R8 R1 K15 ["Name"]
       48 SETTABLEKS                       R8 R7 K8 ["name"]
       50 GETUPVAL                         R8 7
       51 SETTABLEKS                       R8 R7 K9 ["version"]
       53 LOADK                            R9 K16 ["ModuleScript: "]
       54 NAMECALL                         R10 R1 K17 ["GetFullName"]
       56 CALL                             R10 1 1
       57 CONCAT                           R8 R9 R10
       58 SETTABLEKS                       R8 R7 K10 ["filePath"]
       60 SETTABLEKS                       R1 R7 K11 ["moduleScript"]
       62 GETUPVAL                         R8 3
       63 SETTABLEKS                       R8 R7 K12 ["origin"]
       65 CALL                             R6 1 0
       66 LOADB                            R6 1
       67 LOADNIL                          R7
       68 RETURN                           R6 2

PROTO_14:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 GETTABLEN                        R2 R1 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 LOADK                            R5 K1 ["ModuleScript"]
        7 NAMECALL                         R3 R2 K2 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIF                           R3 ; [+3]
       11 LOADB                            R3 0
       12 LOADK                            R4 K3 ["Select a ModuleScript in Explorer to enable Live mode."]
       13 RETURN                           R3 2
       14 MOVE                             R5 R2
       15 NAMECALL                         R3 R0 K4 ["bind"]
       17 CALL                             R3 2 2
       18 JUMPIF                           R3 ; [+3]
       19 LOADB                            R5 0
       20 ORK                              R6 R4 K5 ["Unable to bind selected ModuleScript."]
       21 RETURN                           R5 2
       22 LOADB                            R5 1
       23 LOADK                            R7 K6 ["Live: "]
       24 NAMECALL                         R8 R2 K7 ["GetFullName"]
       26 CALL                             R8 1 1
       27 CONCAT                           R6 R7 R8
       28 RETURN                           R5 2

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_19:
        0 LOADN                            R2 0
        1 GETUPVAL                         R3 0
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 ADDK                             R2 R2 K0 [1]
        6 FORGLOOP                         R3 1 ; [-2]
        8 MOVE                             R1 R2
        9 RETURN                           R1 1

PROTO_20:
        0 GETIMPORT                        R2 K2 [table.clear]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 0
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETUPVAL                         R7 0
        9 LOADB                            R8 1
       10 SETTABLE                         R8 R7 R6
       11 FORGLOOP                         R2 2 ; [-4]
       13 GETUPVAL                         R2 1
       14 CALL                             R2 0 0
       15 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R1 K5 [{[1], ["requested"], ["limit"] = 500, ["limitExceeded"]}]
        1 NAMECALL                         R2 R0 K6 ["getWatchedModuleCount"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["watched"]
        6 GETUPVAL                         R2 0
        7 SETTABLEKS                       R2 R1 K1 ["requested"]
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R2 R1 K4 ["limitExceeded"]
       12 RETURN                           R1 1

PROTO_22:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+1]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQKS                    R3 K0 ["external"] ; [+3]
        5 LOADB                            R4 0
        6 RETURN                           R4 1
        7 GETUPVAL                         R4 1
        8 LOADB                            R5 0
        9 JUMPIFEQKNIL                     R4 ; [+8]
       11 LOADB                            R5 1
       12 JUMPIFEQ                         R1 R4 ; [+5]
       14 MOVE                             R7 R4
       15 NAMECALL                         R5 R1 K1 ["IsDescendantOf"]
       17 CALL                             R5 2 1
       18 RETURN                           R5 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+2]
        2 LOADB                            R3 0
        3 RETURN                           R3 1
        4 GETTABLEKS                       R3 R2 K0 ["Source"]
        6 JUMPIFNOTEQ                      R3 R1 ; [+3]
        8 LOADB                            R3 1
        9 RETURN                           R3 1
       10 MOVE                             R5 R2
       11 MOVE                             R6 R1
       12 NAMECALL                         R3 R0 K1 ["writeModuleSource"]
       14 CALL                             R3 3 -1
       15 RETURN                           R3 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetEditorSource"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["UpdateSourceAsync"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_27:
        0 MOVE                             R5 R1
        1 GETUPVAL                         R6 0
        2 NAMECALL                         R3 R0 K0 ["isWritableModule"]
        4 CALL                             R3 3 1
        5 JUMPIF                           R3 ; [+2]
        6 LOADB                            R3 0
        7 RETURN                           R3 1
        8 GETTABLEKS                       R3 R1 K1 ["Source"]
       10 GETIMPORT                        R4 K3 [pcall]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 CALL                             R4 1 2
       16 JUMPIFNOT                        R4 ; [+8]
       17 FASTCALL1                        TYPE R5 ; [+3]
       18 MOVE                             R7 R5
       19 GETIMPORT                        R6 K5 [type]
       21 CALL                             R6 1 1
       22 JUMPIFNOTEQKS                    R6 K6 ["string"] ; [+2]
       24 MOVE                             R3 R5
       25 JUMPIFNOTEQ                      R3 R2 ; [+3]
       27 LOADB                            R6 1
       28 RETURN                           R6 1
       29 GETUPVAL                         R6 2
       30 LOADB                            R7 1
       31 SETTABLE                         R7 R6 R1
       32 GETIMPORT                        R6 K3 [pcall]
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 CALL                             R6 1 1
       39 JUMPIF                           R6 ; [+5]
       40 GETUPVAL                         R7 2
       41 LOADNIL                          R8
       42 SETTABLE                         R8 R7 R1
       43 LOADB                            R7 0
       44 RETURN                           R7 1
       45 LOADB                            R7 1
       46 RETURN                           R7 1

PROTO_28:
        0 NAMECALL                         R1 R0 K0 ["unbind"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_29:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETTABLEKS                       R3 R1 K0 ["scriptEditorService"]
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["scriptEditorService"]
        6 JUMP                             ; [+1]
        7 GETUPVAL                         R2 0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 NEWTABLE                         R5 0 0
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 LOADN                            R8 0
       15 NEWTABLE                         R9 0 0
       17 LOADB                            R10 0
       18 NEWTABLE                         R11 0 0
       20 NEWTABLE                         R12 0 0
       22 LOADN                            R13 0
       23 LOADB                            R14 0
       24 NEWTABLE                         R15 0 0
       26 NEWCLOSURE                       R16 P0
       27 CAPTURE                          REF R8
       28 CAPTURE                          VAL R0
       29 CAPTURE                          REF R4
       30 NEWCLOSURE                       R17 P1
       31 CAPTURE                          REF R10
       32 CAPTURE                          REF R3
       33 CAPTURE                          REF R8
       34 CAPTURE                          VAL R0
       35 CAPTURE                          REF R4
       36 NEWCLOSURE                       R18 P2
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R9
       39 NEWCLOSURE                       R19 P3
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R9
       42 CAPTURE                          REF R10
       43 CAPTURE                          REF R3
       44 CAPTURE                          REF R8
       45 CAPTURE                          VAL R0
       46 CAPTURE                          REF R4
       47 NEWCLOSURE                       R20 P4
       48 CAPTURE                          VAL R5
       49 NEWCLOSURE                       R21 P5
       50 CAPTURE                          VAL R11
       51 CAPTURE                          VAL R12
       52 CAPTURE                          REF R13
       53 CAPTURE                          REF R14
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R9
       56 CAPTURE                          REF R10
       57 CAPTURE                          REF R3
       58 CAPTURE                          REF R8
       59 CAPTURE                          VAL R0
       60 CAPTURE                          REF R4
       61 NEWCLOSURE                       R22 P6
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R21
       64 CAPTURE                          REF R6
       65 CAPTURE                          REF R10
       66 CAPTURE                          REF R3
       67 CAPTURE                          REF R8
       68 CAPTURE                          VAL R0
       69 CAPTURE                          REF R4
       70 CAPTURE                          REF R7
       71 NEWCLOSURE                       R23 P7
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R9
       74 CAPTURE                          REF R6
       75 CAPTURE                          REF R7
       76 CAPTURE                          REF R3
       77 CAPTURE                          REF R4
       78 CAPTURE                          REF R10
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R12
       81 CAPTURE                          REF R13
       82 CAPTURE                          REF R14
       83 SETTABLEKS                       R23 R15 K1 ["unbind"]
       85 NEWCLOSURE                       R23 P8
       86 CAPTURE                          UPVAL U1
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          REF R3
       89 CAPTURE                          REF R4
       90 CAPTURE                          VAL R22
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R21
       93 CAPTURE                          REF R8
       94 CAPTURE                          VAL R0
       95 SETTABLEKS                       R23 R15 K2 ["bind"]
       97 DUPCLOSURE                       R23 K3 [PROTO_14]
       98 CAPTURE                          UPVAL U3
       99 SETTABLEKS                       R23 R15 K4 ["bindToSelection"]
      101 NEWCLOSURE                       R23 P10
      102 CAPTURE                          REF R3
      103 SETTABLEKS                       R23 R15 K5 ["isBound"]
      105 NEWCLOSURE                       R23 P11
      106 CAPTURE                          REF R3
      107 SETTABLEKS                       R23 R15 K6 ["isActive"]
      109 NEWCLOSURE                       R23 P12
      110 CAPTURE                          REF R3
      111 SETTABLEKS                       R23 R15 K7 ["getModule"]
      113 NEWCLOSURE                       R23 P13
      114 CAPTURE                          REF R4
      115 SETTABLEKS                       R23 R15 K8 ["getOrigin"]
      117 NEWCLOSURE                       R23 P14
      118 CAPTURE                          VAL R5
      119 SETTABLEKS                       R23 R15 K9 ["getWatchedModuleCount"]
      121 NEWCLOSURE                       R23 P15
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R21
      124 SETTABLEKS                       R23 R15 K10 ["setExecutionWatchModules"]
      126 NEWCLOSURE                       R23 P16
      127 CAPTURE                          REF R13
      128 CAPTURE                          REF R14
      129 SETTABLEKS                       R23 R15 K11 ["getWatchStats"]
      131 NEWCLOSURE                       R23 P17
      132 CAPTURE                          REF R4
      133 CAPTURE                          REF R3
      134 SETTABLEKS                       R23 R15 K12 ["isWritableModule"]
      136 NEWCLOSURE                       R23 P18
      137 CAPTURE                          REF R3
      138 SETTABLEKS                       R23 R15 K13 ["writeSource"]
      140 NEWCLOSURE                       R23 P19
      141 CAPTURE                          REF R4
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R9
      144 SETTABLEKS                       R23 R15 K14 ["writeModuleSource"]
      146 DUPCLOSURE                       R23 K15 [PROTO_28]
      147 SETTABLEKS                       R23 R15 K16 ["destroy"]
      149 CLOSEUPVALS                      R3
      150 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ScriptEditorService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETIMPORT                        R3 K8 [script]
       17 GETTABLEKS                       R3 R3 K9 ["Parent"]
       19 GETTABLEKS                       R3 R3 K10 ["StoryOrigin"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETIMPORT                        R4 K8 [script]
       26 GETTABLEKS                       R4 R4 K9 ["Parent"]
       28 GETTABLEKS                       R4 R4 K11 ["StorybookDiscovery"]
       30 CALL                             R3 1 1
       31 DUPCLOSURE                       R4 K12 [PROTO_29]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R0
       36 DUPTABLE                         R5 K14 [{"createLiveModuleSource"}]
       37 SETTABLEKS                       R4 R5 K13 ["createLiveModuleSource"]
       39 RETURN                           R5 1
