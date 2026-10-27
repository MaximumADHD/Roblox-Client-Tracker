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
        7 GETIMPORT                        R7 K3 [Enum.KeyCode.None]
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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K3 [{"All", "Composite", "Keycode"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["All"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["Composite"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["Keycode"]
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
       43 CALL                             R9 0 1
       44 JUMPIFNOT                        R9 ; [+12]
       45 MOVE                             R10 R1
       46 GETUPVAL                         R11 4
       47 GETTABLEKS                       R11 R11 K5 ["subscribe"]
       49 MOVE                             R12 R8
       50 NEWCLOSURE                       R13 P0
       51 CAPTURE                          UPVAL U5
       52 CALL                             R11 2 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R9 K8 [table.insert]
       56 CALL                             R9 -1 0
       57 GETUPVAL                         R9 4
       58 GETTABLEKS                       R9 R9 K9 ["getBinding"]
       60 MOVE                             R10 R8
       61 CALL                             R9 1 1
       62 JUMPIFNOT                        R9 ; [+171]
       63 GETTABLEKS                       R10 R9 K10 ["type"]
       65 GETIMPORT                        R11 K14 [Enum.InputBindingType.Automatic]
       67 JUMPIFNOTEQ                      R10 R11 ; [+166]
       69 GETTABLEKS                       R10 R9 K15 ["keyCode"]
       71 GETIMPORT                        R11 K18 [Enum.KeyCode.None]
       73 JUMPIFEQ                         R10 R11 ; [+48]
       75 GETUPVAL                         R11 6
       76 GETTABLEKS                       R12 R9 K15 ["keyCode"]
       78 GETTABLE                         R10 R11 R12
       79 MOVE                             R11 R10
       80 LOADNIL                          R12
       81 LOADNIL                          R13
       82 FORGPREP                         R11
       83 GETTABLE                         R16 R2 R15
       84 JUMPIF                           R16 ; [+3]
       85 LOADN                            R16 1
       86 SETTABLE                         R16 R2 R15
       87 JUMP                             ; [+3]
       88 GETTABLE                         R16 R2 R15
       89 ADDK                             R16 R16 K19 [1]
       90 SETTABLE                         R16 R2 R15
       91 GETTABLE                         R16 R2 R15
       92 GETTABLEKS                       R18 R0 K2 ["Keycode"]
       94 LENGTH                           R17 R18
       95 JUMPIFNOTLT                      R17 R16 ; [+10]
       97 GETTABLEKS                       R17 R0 K2 ["Keycode"]
       99 NEWTABLE                         R18 0 0
      101 FASTCALL2                        TABLE_INSERT R17 R18 ; [+3]
      103 GETIMPORT                        R16 K8 [table.insert]
      105 CALL                             R16 2 0
      106 GETTABLEKS                       R17 R0 K2 ["Keycode"]
      108 GETTABLE                         R18 R2 R15
      109 GETTABLE                         R16 R17 R18
      110 SETTABLE                         R9 R16 R15
      111 GETTABLEKS                       R18 R0 K0 ["All"]
      113 GETTABLE                         R17 R18 R15
      114 FASTCALL2                        TABLE_INSERT R17 R9 ; [+4]
      116 MOVE                             R18 R9
      117 GETIMPORT                        R16 K8 [table.insert]
      119 CALL                             R16 2 0
      120 FORGLOOP                         R11 2 ; [-38]
      122 GETUPVAL                         R10 7
      123 MOVE                             R11 R9
      124 CALL                             R10 1 1
      125 JUMPIFNOT                        R10 ; [+45]
      126 GETUPVAL                         R12 6
      127 GETTABLE                         R11 R12 R10
      128 MOVE                             R12 R11
      129 LOADNIL                          R13
      130 LOADNIL                          R14
      131 FORGPREP                         R12
      132 GETTABLE                         R17 R3 R16
      133 JUMPIF                           R17 ; [+3]
      134 LOADN                            R17 1
      135 SETTABLE                         R17 R3 R16
      136 JUMP                             ; [+3]
      137 GETTABLE                         R17 R3 R16
      138 ADDK                             R17 R17 K19 [1]
      139 SETTABLE                         R17 R3 R16
      140 GETTABLE                         R17 R3 R16
      141 GETTABLEKS                       R19 R0 K1 ["Composite"]
      143 LENGTH                           R18 R19
      144 JUMPIFNOTLT                      R18 R17 ; [+10]
      146 GETTABLEKS                       R18 R0 K1 ["Composite"]
      148 NEWTABLE                         R19 0 0
      150 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
      152 GETIMPORT                        R17 K8 [table.insert]
      154 CALL                             R17 2 0
      155 GETTABLEKS                       R18 R0 K1 ["Composite"]
      157 GETTABLE                         R19 R3 R16
      158 GETTABLE                         R17 R18 R19
      159 SETTABLE                         R9 R17 R16
      160 GETTABLEKS                       R19 R0 K0 ["All"]
      162 GETTABLE                         R18 R19 R16
      163 FASTCALL2                        TABLE_INSERT R18 R9 ; [+4]
      165 MOVE                             R19 R9
      166 GETIMPORT                        R17 K8 [table.insert]
      168 CALL                             R17 2 0
      169 FORGLOOP                         R12 2 ; [-38]
      171 GETTABLEKS                       R11 R9 K20 ["uiButton"]
      173 JUMPIFNOT                        R11 ; [+45]
      174 GETTABLEKS                       R11 R2 K21 ["Touch"]
      176 JUMPIF                           R11 ; [+4]
      177 LOADN                            R11 1
      178 SETTABLEKS                       R11 R2 K21 ["Touch"]
      180 JUMP                             ; [+5]
      181 GETTABLEKS                       R11 R2 K21 ["Touch"]
      183 ADDK                             R11 R11 K19 [1]
      184 SETTABLEKS                       R11 R2 K21 ["Touch"]
      186 GETTABLEKS                       R11 R2 K21 ["Touch"]
      188 GETTABLEKS                       R13 R0 K2 ["Keycode"]
      190 LENGTH                           R12 R13
      191 JUMPIFNOTLT                      R12 R11 ; [+10]
      193 GETTABLEKS                       R12 R0 K2 ["Keycode"]
      195 NEWTABLE                         R13 0 0
      197 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      199 GETIMPORT                        R11 K8 [table.insert]
      201 CALL                             R11 2 0
      202 GETTABLEKS                       R12 R0 K2 ["Keycode"]
      204 GETTABLEKS                       R13 R2 K21 ["Touch"]
      206 GETTABLE                         R11 R12 R13
      207 SETTABLEKS                       R9 R11 K21 ["Touch"]
      209 GETTABLEKS                       R13 R0 K0 ["All"]
      211 GETTABLEKS                       R12 R13 K21 ["Touch"]
      213 FASTCALL2                        TABLE_INSERT R12 R9 ; [+4]
      215 MOVE                             R13 R9
      216 GETIMPORT                        R11 K8 [table.insert]
      218 CALL                             R11 2 0
      219 GETUPVAL                         R11 3
      220 CALL                             R11 0 1
      221 JUMPIF                           R11 ; [+12]
      222 MOVE                             R12 R1
      223 GETUPVAL                         R13 4
      224 GETTABLEKS                       R13 R13 K5 ["subscribe"]
      226 MOVE                             R14 R8
      227 NEWCLOSURE                       R15 P1
      228 CAPTURE                          UPVAL U5
      229 CALL                             R13 2 -1
      230 FASTCALL                         TABLE_INSERT ; [+2]
      231 GETIMPORT                        R11 K8 [table.insert]
      233 CALL                             R11 -1 0
      234 FORGLOOP                         R4 2 ; [-193]
      236 GETUPVAL                         R4 2
      237 MOVE                             R5 R0
      238 CALL                             R4 1 0
      239 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 MOVE                             R1 R0
       10 CALL                             R1 0 1
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R1
       13 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_9:
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
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R9 0 3
       51 MOVE                             R10 R0
       52 MOVE                             R11 R5
       53 MOVE                             R12 R1
       54 SETLIST                          R9 R10 3 [1]
       56 CALL                             R7 2 1
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K6 ["useEffect"]
       60 NEWCLOSURE                       R9 P3
       61 CAPTURE                          VAL R7
       62 NEWTABLE                         R10 0 2
       64 MOVE                             R11 R0
       65 MOVE                             R12 R1
       66 SETLIST                          R10 R11 2 [1]
       68 CALL                             R8 2 0
       69 RETURN                           R5 1

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
       20 GETTABLEKS                       R3 R3 K10 ["InputConfiguration"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K11 ["SchemaConfiguration"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Types"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R0 K8 ["Src"]
       41 GETTABLEKS                       R5 R5 K13 ["Flags"]
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R5 K14 ["getFFlagIAMBindingUpdateOrder"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 0 6
       50 LOADK                            R8 K15 ["up"]
       51 LOADK                            R9 K16 ["down"]
       52 LOADK                            R10 K17 ["left"]
       53 LOADK                            R11 K18 ["right"]
       54 LOADK                            R12 K19 ["forward"]
       55 LOADK                            R13 K20 ["backward"]
       56 SETLIST                          R7 R8 6 [1]
       58 DUPCLOSURE                       R8 K21 [PROTO_9]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R6
       64 RETURN                           R8 1
