PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R6 R5
        7 LOADNIL                          R7
        8 LOADNIL                          R8
        9 FORGPREP                         R6
       10 MOVE                             R11 R10
       11 LOADNIL                          R12
       12 LOADNIL                          R13
       13 FORGPREP                         R11
       14 GETTABLE                         R16 R0 R15
       15 JUMPIF                           R16 ; [+3]
       16 NEWTABLE                         R16 0 0
       18 SETTABLE                         R16 R0 R15
       19 GETIMPORT                        R16 K2 [table.find]
       21 GETTABLE                         R17 R0 R15
       22 MOVE                             R18 R4
       23 CALL                             R16 2 1
       24 JUMPIF                           R16 ; [+7]
       25 GETTABLE                         R17 R0 R15
       26 FASTCALL2                        TABLE_INSERT R17 R4 ; [+4]
       28 MOVE                             R18 R4
       29 GETIMPORT                        R16 K4 [table.insert]
       31 CALL                             R16 2 0
       32 FORGLOOP                         R11 2 ; [-19]
       34 FORGLOOP                         R6 2 ; [-25]
       36 FORGLOOP                         R1 2 ; [-31]
       38 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLE                         R6 R0 R5
        5 JUMPIFNOT                        R6 ; [+7]
        6 GETTABLE                         R6 R0 R5
        7 GETIMPORT                        R7 K3 [Enum.KeyCode.Unknown]
        9 JUMPIFEQ                         R6 R7 ; [+3]
       11 GETTABLE                         R6 R0 R5
       12 RETURN                           R6 1
       13 FORGLOOP                         R1 2 ; [-10]
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"All", "CompoundDirection", "KeyCode"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["All"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["CompoundDirection"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["KeyCode"]
       13 GETUPVAL                         R1 0
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 GETTABLEKS                       R6 R0 K0 ["All"]
       19 NEWTABLE                         R7 0 0
       21 SETTABLE                         R7 R6 R4
       22 FORGLOOP                         R1 2 ; [-6]
       24 NEWTABLE                         R1 0 0
       26 NEWTABLE                         R2 0 0
       28 NEWTABLE                         R3 0 0
       30 GETUPVAL                         R4 1
       31 JUMPIF                           R4 ; [+4]
       32 GETUPVAL                         R4 2
       33 MOVE                             R5 R0
       34 CALL                             R4 1 0
       35 RETURN                           R1 1
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K4 ["bindings"]
       39 LOADNIL                          R5
       40 LOADNIL                          R6
       41 FORGPREP                         R4
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R9 R9 K5 ["getBinding"]
       45 MOVE                             R10 R8
       46 CALL                             R9 1 1
       47 JUMPIFNOT                        R9 ; [+114]
       48 GETTABLEKS                       R10 R9 K6 ["keyCode"]
       50 GETIMPORT                        R11 K9 [Enum.KeyCode.Unknown]
       52 JUMPIFEQ                         R10 R11 ; [+48]
       54 GETUPVAL                         R11 4
       55 GETTABLEKS                       R12 R9 K6 ["keyCode"]
       57 GETTABLE                         R10 R11 R12
       58 MOVE                             R11 R10
       59 LOADNIL                          R12
       60 LOADNIL                          R13
       61 FORGPREP                         R11
       62 GETTABLE                         R16 R2 R15
       63 JUMPIF                           R16 ; [+3]
       64 LOADN                            R16 1
       65 SETTABLE                         R16 R2 R15
       66 JUMP                             ; [+3]
       67 GETTABLE                         R16 R2 R15
       68 ADDK                             R16 R16 K10 [1]
       69 SETTABLE                         R16 R2 R15
       70 GETTABLE                         R16 R2 R15
       71 GETTABLEKS                       R18 R0 K2 ["KeyCode"]
       73 LENGTH                           R17 R18
       74 JUMPIFNOTLT                      R17 R16 ; [+10]
       76 GETTABLEKS                       R17 R0 K2 ["KeyCode"]
       78 NEWTABLE                         R18 0 0
       80 FASTCALL2                        TABLE_INSERT R17 R18 ; [+3]
       82 GETIMPORT                        R16 K13 [table.insert]
       84 CALL                             R16 2 0
       85 GETTABLEKS                       R17 R0 K2 ["KeyCode"]
       87 GETTABLE                         R18 R2 R15
       88 GETTABLE                         R16 R17 R18
       89 SETTABLE                         R9 R16 R15
       90 GETTABLEKS                       R18 R0 K0 ["All"]
       92 GETTABLE                         R17 R18 R15
       93 FASTCALL2                        TABLE_INSERT R17 R9 ; [+4]
       95 MOVE                             R18 R9
       96 GETIMPORT                        R16 K13 [table.insert]
       98 CALL                             R16 2 0
       99 FORGLOOP                         R11 2 ; [-38]
      101 GETUPVAL                         R10 5
      102 MOVE                             R11 R9
      103 CALL                             R10 1 1
      104 JUMPIFNOT                        R10 ; [+45]
      105 GETUPVAL                         R12 4
      106 GETTABLE                         R11 R12 R10
      107 MOVE                             R12 R11
      108 LOADNIL                          R13
      109 LOADNIL                          R14
      110 FORGPREP                         R12
      111 GETTABLE                         R17 R3 R16
      112 JUMPIF                           R17 ; [+3]
      113 LOADN                            R17 1
      114 SETTABLE                         R17 R3 R16
      115 JUMP                             ; [+3]
      116 GETTABLE                         R17 R3 R16
      117 ADDK                             R17 R17 K10 [1]
      118 SETTABLE                         R17 R3 R16
      119 GETTABLE                         R17 R3 R16
      120 GETTABLEKS                       R19 R0 K1 ["CompoundDirection"]
      122 LENGTH                           R18 R19
      123 JUMPIFNOTLT                      R18 R17 ; [+10]
      125 GETTABLEKS                       R18 R0 K1 ["CompoundDirection"]
      127 NEWTABLE                         R19 0 0
      129 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
      131 GETIMPORT                        R17 K13 [table.insert]
      133 CALL                             R17 2 0
      134 GETTABLEKS                       R18 R0 K1 ["CompoundDirection"]
      136 GETTABLE                         R19 R3 R16
      137 GETTABLE                         R17 R18 R19
      138 SETTABLE                         R9 R17 R16
      139 GETTABLEKS                       R19 R0 K0 ["All"]
      141 GETTABLE                         R18 R19 R16
      142 FASTCALL2                        TABLE_INSERT R18 R9 ; [+4]
      144 MOVE                             R19 R9
      145 GETIMPORT                        R17 K13 [table.insert]
      147 CALL                             R17 2 0
      148 FORGLOOP                         R12 2 ; [-38]
      150 MOVE                             R12 R1
      151 GETUPVAL                         R13 3
      152 GETTABLEKS                       R13 R13 K14 ["subscribe"]
      154 MOVE                             R14 R8
      155 NEWCLOSURE                       R15 P0
      156 CAPTURE                          UPVAL U6
      157 CALL                             R13 2 -1
      158 FASTCALL                         TABLE_INSERT ; [+2]
      159 GETIMPORT                        R11 K13 [table.insert]
      161 CALL                             R11 -1 0
      162 FORGLOOP                         R4 2 ; [-121]
      164 GETUPVAL                         R4 2
      165 MOVE                             R5 R0
      166 CALL                             R4 1 0
      167 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R0
        8 MOVE                             R1 R0
        9 CALL                             R1 0 1
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R5 0 1
       21 MOVE                             R6 R2
       22 SETLIST                          R5 R6 1 [1]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       28 DUPCLOSURE                       R5 K4 [PROTO_1]
       29 CAPTURE                          UPVAL U3
       30 NEWTABLE                         R6 0 0
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K5 ["useState"]
       36 LOADNIL                          R6
       37 CALL                             R5 1 2
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       41 NEWCLOSURE                       R8 P2
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 NEWTABLE                         R9 0 3
       50 MOVE                             R10 R0
       51 MOVE                             R11 R5
       52 MOVE                             R12 R1
       53 SETLIST                          R9 R10 3 [1]
       55 CALL                             R7 2 1
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K6 ["useEffect"]
       59 NEWCLOSURE                       R9 P3
       60 CAPTURE                          VAL R7
       61 NEWTABLE                         R10 0 2
       63 MOVE                             R11 R0
       64 MOVE                             R12 R1
       65 SETLIST                          R10 R11 2 [1]
       67 CALL                             R8 2 0
       68 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["DatamodelReference"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K11 ["SchemaKeyCodes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Types"]
       38 CALL                             R4 1 1
       39 NEWTABLE                         R5 0 6
       41 LOADK                            R6 K13 ["up"]
       42 LOADK                            R7 K14 ["down"]
       43 LOADK                            R8 K15 ["left"]
       44 LOADK                            R9 K16 ["right"]
       45 LOADK                            R10 K17 ["forward"]
       46 LOADK                            R11 K18 ["backward"]
       47 SETLIST                          R5 R6 6 [1]
       49 DUPCLOSURE                       R6 K19 [PROTO_8]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R5
       54 RETURN                           R6 1
