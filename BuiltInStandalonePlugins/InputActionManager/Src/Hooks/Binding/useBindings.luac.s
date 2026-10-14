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
       43 GETTABLEKS                       R9 R9 K5 ["getBinding"]
       45 MOVE                             R10 R8
       46 CALL                             R9 1 1
       47 JUMPIFNOT                        R9 ; [+171]
       48 GETUPVAL                         R10 4
       49 CALL                             R10 0 1
       50 JUMPIFNOT                        R10 ; [+6]
       51 GETTABLEKS                       R10 R9 K6 ["type"]
       53 GETIMPORT                        R11 K10 [Enum.InputBindingType.Automatic]
       55 JUMPIFNOTEQ                      R10 R11 ; [+163]
       57 GETTABLEKS                       R10 R9 K11 ["keyCode"]
       59 GETIMPORT                        R11 K14 [Enum.KeyCode.None]
       61 JUMPIFEQ                         R10 R11 ; [+48]
       63 GETUPVAL                         R11 5
       64 GETTABLEKS                       R12 R9 K11 ["keyCode"]
       66 GETTABLE                         R10 R11 R12
       67 MOVE                             R11 R10
       68 LOADNIL                          R12
       69 LOADNIL                          R13
       70 FORGPREP                         R11
       71 GETTABLE                         R16 R2 R15
       72 JUMPIF                           R16 ; [+3]
       73 LOADN                            R16 1
       74 SETTABLE                         R16 R2 R15
       75 JUMP                             ; [+3]
       76 GETTABLE                         R16 R2 R15
       77 ADDK                             R16 R16 K15 [1]
       78 SETTABLE                         R16 R2 R15
       79 GETTABLE                         R16 R2 R15
       80 GETTABLEKS                       R18 R0 K2 ["Keycode"]
       82 LENGTH                           R17 R18
       83 JUMPIFNOTLT                      R17 R16 ; [+10]
       85 GETTABLEKS                       R17 R0 K2 ["Keycode"]
       87 NEWTABLE                         R18 0 0
       89 FASTCALL2                        TABLE_INSERT R17 R18 ; [+3]
       91 GETIMPORT                        R16 K18 [table.insert]
       93 CALL                             R16 2 0
       94 GETTABLEKS                       R17 R0 K2 ["Keycode"]
       96 GETTABLE                         R18 R2 R15
       97 GETTABLE                         R16 R17 R18
       98 SETTABLE                         R9 R16 R15
       99 GETTABLEKS                       R18 R0 K0 ["All"]
      101 GETTABLE                         R17 R18 R15
      102 FASTCALL2                        TABLE_INSERT R17 R9 ; [+4]
      104 MOVE                             R18 R9
      105 GETIMPORT                        R16 K18 [table.insert]
      107 CALL                             R16 2 0
      108 FORGLOOP                         R11 2 ; [-38]
      110 GETUPVAL                         R10 6
      111 MOVE                             R11 R9
      112 CALL                             R10 1 1
      113 JUMPIFNOT                        R10 ; [+45]
      114 GETUPVAL                         R12 5
      115 GETTABLE                         R11 R12 R10
      116 MOVE                             R12 R11
      117 LOADNIL                          R13
      118 LOADNIL                          R14
      119 FORGPREP                         R12
      120 GETTABLE                         R17 R3 R16
      121 JUMPIF                           R17 ; [+3]
      122 LOADN                            R17 1
      123 SETTABLE                         R17 R3 R16
      124 JUMP                             ; [+3]
      125 GETTABLE                         R17 R3 R16
      126 ADDK                             R17 R17 K15 [1]
      127 SETTABLE                         R17 R3 R16
      128 GETTABLE                         R17 R3 R16
      129 GETTABLEKS                       R19 R0 K1 ["Composite"]
      131 LENGTH                           R18 R19
      132 JUMPIFNOTLT                      R18 R17 ; [+10]
      134 GETTABLEKS                       R18 R0 K1 ["Composite"]
      136 NEWTABLE                         R19 0 0
      138 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
      140 GETIMPORT                        R17 K18 [table.insert]
      142 CALL                             R17 2 0
      143 GETTABLEKS                       R18 R0 K1 ["Composite"]
      145 GETTABLE                         R19 R3 R16
      146 GETTABLE                         R17 R18 R19
      147 SETTABLE                         R9 R17 R16
      148 GETTABLEKS                       R19 R0 K0 ["All"]
      150 GETTABLE                         R18 R19 R16
      151 FASTCALL2                        TABLE_INSERT R18 R9 ; [+4]
      153 MOVE                             R19 R9
      154 GETIMPORT                        R17 K18 [table.insert]
      156 CALL                             R17 2 0
      157 FORGLOOP                         R12 2 ; [-38]
      159 GETTABLEKS                       R11 R9 K19 ["uiButton"]
      161 JUMPIFNOT                        R11 ; [+45]
      162 GETTABLEKS                       R11 R2 K20 ["Touch"]
      164 JUMPIF                           R11 ; [+4]
      165 LOADN                            R11 1
      166 SETTABLEKS                       R11 R2 K20 ["Touch"]
      168 JUMP                             ; [+5]
      169 GETTABLEKS                       R11 R2 K20 ["Touch"]
      171 ADDK                             R11 R11 K15 [1]
      172 SETTABLEKS                       R11 R2 K20 ["Touch"]
      174 GETTABLEKS                       R11 R2 K20 ["Touch"]
      176 GETTABLEKS                       R13 R0 K2 ["Keycode"]
      178 LENGTH                           R12 R13
      179 JUMPIFNOTLT                      R12 R11 ; [+10]
      181 GETTABLEKS                       R12 R0 K2 ["Keycode"]
      183 NEWTABLE                         R13 0 0
      185 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      187 GETIMPORT                        R11 K18 [table.insert]
      189 CALL                             R11 2 0
      190 GETTABLEKS                       R12 R0 K2 ["Keycode"]
      192 GETTABLEKS                       R13 R2 K20 ["Touch"]
      194 GETTABLE                         R11 R12 R13
      195 SETTABLEKS                       R9 R11 K20 ["Touch"]
      197 GETTABLEKS                       R13 R0 K0 ["All"]
      199 GETTABLEKS                       R12 R13 K20 ["Touch"]
      201 FASTCALL2                        TABLE_INSERT R12 R9 ; [+4]
      203 MOVE                             R13 R9
      204 GETIMPORT                        R11 K18 [table.insert]
      206 CALL                             R11 2 0
      207 MOVE                             R12 R1
      208 GETUPVAL                         R13 3
      209 GETTABLEKS                       R13 R13 K21 ["subscribe"]
      211 MOVE                             R14 R8
      212 NEWCLOSURE                       R15 P0
      213 CAPTURE                          UPVAL U7
      214 CALL                             R13 2 -1
      215 FASTCALL                         TABLE_INSERT ; [+2]
      216 GETIMPORT                        R11 K18 [table.insert]
      218 CALL                             R11 -1 0
      219 FORGLOOP                         R4 2 ; [-178]
      221 GETUPVAL                         R4 2
      222 MOVE                             R5 R0
      223 CALL                             R4 1 0
      224 RETURN                           R1 1

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
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          VAL R0
        9 MOVE                             R1 R0
       10 CALL                             R1 0 1
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R1
       13 RETURN                           R2 1

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
       46 CAPTURE                          UPVAL U4
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
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Flags"]
       45 GETTABLEKS                       R6 R6 K14 ["getFFlagIAMBindingMenu"]
       47 CALL                             R5 1 1
       48 NEWTABLE                         R6 0 6
       50 LOADK                            R7 K15 ["up"]
       51 LOADK                            R8 K16 ["down"]
       52 LOADK                            R9 K17 ["left"]
       53 LOADK                            R10 K18 ["right"]
       54 LOADK                            R11 K19 ["forward"]
       55 LOADK                            R12 K20 ["backward"]
       56 SETLIST                          R6 R7 6 [1]
       58 DUPCLOSURE                       R7 K21 [PROTO_8]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 RETURN                           R7 1
