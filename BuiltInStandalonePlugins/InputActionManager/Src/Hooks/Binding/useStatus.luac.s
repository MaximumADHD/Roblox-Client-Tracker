PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIF                           R1 ; [+31]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+25]
        6 GETUPVAL                         R1 2
        7 JUMPIFNOTEQKS                    R1 K0 ["Touch"] ; [+6]
        9 GETUPVAL                         R1 3
       10 GETIMPORT                        R2 K4 [Enum.InputActionType.Bool]
       12 JUMPIFNOTEQ                      R1 R2 ; [+18]
       14 GETUPVAL                         R1 4
       15 JUMPIFEQKS                       R1 K5 ["primaryModifier"] ; [+15]
       17 GETUPVAL                         R1 4
       18 JUMPIFEQKS                       R1 K6 ["secondaryModifier"] ; [+12]
       20 MOVE                             R2 R0
       21 GETUPVAL                         R3 5
       22 GETUPVAL                         R4 6
       23 LOADK                            R5 K7 ["NO_KEYCODE"]
       24 LOADNIL                          R6
       25 GETUPVAL                         R7 4
       26 CALL                             R3 4 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R1 K10 [table.insert]
       30 CALL                             R1 -1 0
       31 GETUPVAL                         R1 7
       32 MOVE                             R2 R0
       33 CALL                             R1 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 4
       36 JUMPIFEQKS                       R1 K5 ["primaryModifier"] ; [+4]
       38 GETUPVAL                         R1 4
       39 JUMPIFNOTEQKS                    R1 K6 ["secondaryModifier"] ; [+28]
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K5 ["primaryModifier"]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K6 ["secondaryModifier"]
       47 JUMPIFNOTEQ                      R1 R2 ; [+54]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K5 ["primaryModifier"]
       52 GETIMPORT                        R2 K13 [Enum.KeyCode.Unknown]
       54 JUMPIFEQ                         R1 R2 ; [+47]
       56 MOVE                             R2 R0
       57 GETUPVAL                         R3 5
       58 GETUPVAL                         R4 6
       59 LOADK                            R5 K14 ["MODIFIER_KEYCODE"]
       60 LOADNIL                          R6
       61 GETUPVAL                         R7 4
       62 CALL                             R3 4 -1
       63 FASTCALL                         TABLE_INSERT ; [+2]
       64 GETIMPORT                        R1 K10 [table.insert]
       66 CALL                             R1 -1 0
       67 JUMP                             ; [+34]
       68 GETUPVAL                         R1 0
       69 GETTABLEKS                       R1 R1 K5 ["primaryModifier"]
       71 GETUPVAL                         R3 0
       72 GETUPVAL                         R4 4
       73 GETTABLE                         R2 R3 R4
       74 JUMPIFEQ                         R1 R2 ; [+9]
       76 GETUPVAL                         R1 0
       77 GETTABLEKS                       R1 R1 K6 ["secondaryModifier"]
       79 GETUPVAL                         R3 0
       80 GETUPVAL                         R4 4
       81 GETTABLE                         R2 R3 R4
       82 JUMPIFNOTEQ                      R1 R2 ; [+19]
       84 GETUPVAL                         R2 0
       85 GETUPVAL                         R3 4
       86 GETTABLE                         R1 R2 R3
       87 GETIMPORT                        R2 K13 [Enum.KeyCode.Unknown]
       89 JUMPIFEQ                         R1 R2 ; [+12]
       91 MOVE                             R2 R0
       92 GETUPVAL                         R3 5
       93 GETUPVAL                         R4 6
       94 LOADK                            R5 K14 ["MODIFIER_KEYCODE"]
       95 LOADNIL                          R6
       96 GETUPVAL                         R7 4
       97 CALL                             R3 4 -1
       98 FASTCALL                         TABLE_INSERT ; [+2]
       99 GETIMPORT                        R1 K10 [table.insert]
      101 CALL                             R1 -1 0
      102 GETUPVAL                         R2 0
      103 GETUPVAL                         R3 4
      104 GETTABLE                         R1 R2 R3
      105 GETUPVAL                         R2 2
      106 JUMPIFNOTEQKS                    R2 K0 ["Touch"] ; [+25]
      108 GETUPVAL                         R2 1
      109 JUMPIFNOT                        R2 ; [+132]
      110 GETUPVAL                         R2 3
      111 GETIMPORT                        R3 K4 [Enum.InputActionType.Bool]
      113 JUMPIFNOTEQ                      R2 R3 ; [+128]
      115 GETUPVAL                         R2 0
      116 GETTABLEKS                       R2 R2 K15 ["uiButton"]
      118 JUMPIFNOTEQKNIL                  R2 ; [+123]
      120 MOVE                             R3 R0
      121 GETUPVAL                         R4 5
      122 GETUPVAL                         R5 6
      123 LOADK                            R6 K7 ["NO_KEYCODE"]
      124 LOADNIL                          R7
      125 GETUPVAL                         R8 4
      126 CALL                             R4 4 -1
      127 FASTCALL                         TABLE_INSERT ; [+2]
      128 GETIMPORT                        R2 K10 [table.insert]
      130 CALL                             R2 -1 0
      131 JUMP                             ; [+110]
      132 GETUPVAL                         R2 1
      133 JUMPIFNOT                        R2 ; [+23]
      134 JUMPIFNOT                        R1 ; [+4]
      135 GETIMPORT                        R2 K13 [Enum.KeyCode.Unknown]
      137 JUMPIFNOTEQ                      R1 R2 ; [+19]
      139 GETUPVAL                         R2 4
      140 JUMPIFEQKS                       R2 K5 ["primaryModifier"] ; [+16]
      142 GETUPVAL                         R2 4
      143 JUMPIFEQKS                       R2 K6 ["secondaryModifier"] ; [+13]
      145 MOVE                             R3 R0
      146 GETUPVAL                         R4 5
      147 GETUPVAL                         R5 6
      148 LOADK                            R6 K7 ["NO_KEYCODE"]
      149 LOADNIL                          R7
      150 GETUPVAL                         R8 4
      151 CALL                             R4 4 -1
      152 FASTCALL                         TABLE_INSERT ; [+2]
      153 GETIMPORT                        R2 K10 [table.insert]
      155 CALL                             R2 -1 0
      156 JUMP                             ; [+85]
      157 JUMPIFNOT                        R1 ; [+4]
      158 GETIMPORT                        R2 K13 [Enum.KeyCode.Unknown]
      160 JUMPIFNOTEQ                      R1 R2 ; [+5]
      162 GETUPVAL                         R2 7
      163 MOVE                             R3 R0
      164 CALL                             R2 1 0
      165 RETURN                           R0 0
      166 GETUPVAL                         R2 8
      167 GETTABLEKS                       R2 R2 K16 ["getKeycodeUsage"]
      169 GETUPVAL                         R3 9
      170 MOVE                             R4 R1
      171 CALL                             R2 2 1
      172 NEWTABLE                         R3 0 0
      174 NEWTABLE                         R4 0 0
      176 MOVE                             R5 R2
      177 LOADNIL                          R6
      178 LOADNIL                          R7
      179 FORGPREP                         R5
      180 GETUPVAL                         R10 0
      181 GETTABLEKS                       R10 R10 K17 ["uuid"]
      183 JUMPIFEQ                         R9 R10 ; [+30]
      185 GETUPVAL                         R10 10
      186 GETTABLEKS                       R10 R10 K18 ["getBinding"]
      188 MOVE                             R11 R9
      189 CALL                             R10 1 1
      190 JUMPIFNOT                        R10 ; [+23]
      191 GETUPVAL                         R11 10
      192 GETTABLEKS                       R11 R11 K19 ["getAction"]
      194 GETTABLEKS                       R12 R10 K20 ["parentUuid"]
      196 CALL                             R11 1 1
      197 JUMPIFNOT                        R11 ; [+16]
      198 GETTABLEKS                       R13 R11 K21 ["name"]
      200 GETTABLE                         R12 R4 R13
      201 JUMPIF                           R12 ; [+12]
      202 GETTABLEKS                       R12 R11 K21 ["name"]
      204 LOADB                            R13 1
      205 SETTABLE                         R13 R4 R12
      206 GETTABLEKS                       R14 R11 K21 ["name"]
      208 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
      210 MOVE                             R13 R3
      211 GETIMPORT                        R12 K10 [table.insert]
      213 CALL                             R12 2 0
      214 FORGLOOP                         R5 2 ; [-35]
      216 LENGTH                           R5 R3
      217 LOADN                            R6 0
      218 JUMPIFNOTLT                      R6 R5 ; [+23]
      220 MOVE                             R6 R0
      221 GETUPVAL                         R7 5
      222 GETUPVAL                         R8 6
      223 LOADK                            R9 K22 ["DUPLICATE_KEYCODE"]
      224 DUPTABLE                         R10 K25 [{"keycode", "actions"}]
      225 GETTABLEKS                       R11 R1 K26 ["Name"]
      227 SETTABLEKS                       R11 R10 K23 ["keycode"]
      229 GETIMPORT                        R11 K28 [table.concat]
      231 MOVE                             R12 R3
      232 LOADK                            R13 K29 [", "]
      233 CALL                             R11 2 1
      234 SETTABLEKS                       R11 R10 K24 ["actions"]
      236 GETUPVAL                         R11 4
      237 CALL                             R7 4 -1
      238 FASTCALL                         TABLE_INSERT ; [+2]
      239 GETIMPORT                        R5 K10 [table.insert]
      241 CALL                             R5 -1 0
      242 GETUPVAL                         R2 7
      243 MOVE                             R3 R0
      244 CALL                             R2 1 0
      245 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["removeKeycodeUsage"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 GETUPVAL                         R3 4
        8 GETTABLEKS                       R3 R3 K1 ["uuid"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["uiButton"]
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 2
       11 GETTABLE                         R0 R1 R2
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETIMPORT                        R1 K4 [Enum.KeyCode.Unknown]
       15 JUMPIFNOTEQ                      R0 R1 ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K5 ["addKeycodeUsage"]
       21 GETUPVAL                         R2 4
       22 MOVE                             R3 R0
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K6 ["uuid"]
       26 CALL                             R1 3 0
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R1 K7 ["onKeycodeUsageChanged"]
       30 GETUPVAL                         R2 4
       31 MOVE                             R3 R0
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          UPVAL U0
       34 CALL                             R1 3 1
       35 NEWCLOSURE                       R2 P1
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U1
       41 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["useContext"]
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R7 R7 K1 ["Context"]
        6 CALL                             R6 1 1
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K0 ["useContext"]
       10 GETUPVAL                         R8 2
       11 GETTABLEKS                       R8 R8 K1 ["Context"]
       13 CALL                             R7 1 1
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K0 ["useContext"]
       17 GETUPVAL                         R9 3
       18 GETTABLEKS                       R9 R9 K1 ["Context"]
       20 CALL                             R8 1 1
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K2 ["useState"]
       24 NEWTABLE                         R10 0 0
       26 CALL                             R9 1 2
       27 LOADB                            R11 1
       28 JUMPIFEQKNIL                     R5 ; [+6]
       30 LOADN                            R12 1
       31 JUMPIFLE                         R5 R12 ; [+2]
       33 LOADB                            R11 0 +1
       34 LOADB                            R11 1
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R12 R12 K3 ["useCallback"]
       38 NEWCLOSURE                       R13 P0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R11
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R10
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R8
       50 NEWTABLE                         R14 0 6
       52 MOVE                             R15 R0
       53 MOVE                             R16 R1
       54 MOVE                             R17 R2
       55 MOVE                             R18 R11
       56 MOVE                             R19 R7
       57 MOVE                             R20 R8
       58 SETLIST                          R14 R15 6 [1]
       60 CALL                             R12 2 1
       61 GETUPVAL                         R13 0
       62 GETTABLEKS                       R13 R13 K4 ["useEffect"]
       64 NEWCLOSURE                       R14 P1
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R15 0 6
       72 MOVE                             R16 R0
       73 MOVE                             R17 R1
       74 MOVE                             R18 R2
       75 MOVE                             R19 R7
       76 MOVE                             R20 R8
       77 MOVE                             R21 R12
       78 SETLIST                          R15 R16 6 [1]
       80 CALL                             R13 2 0
       81 GETUPVAL                         R13 5
       82 MOVE                             R14 R9
       83 CALL                             R13 1 -1
       84 RETURN                           R13 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Contexts"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K9 ["Contexts"]
       31 GETTABLEKS                       R5 R5 K12 ["InputConfiguration"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K9 ["Contexts"]
       40 GETTABLEKS                       R6 R6 K13 ["Status"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K11 ["Src"]
       47 GETTABLEKS                       R7 R7 K14 ["Util"]
       49 GETTABLEKS                       R7 R7 K15 ["Binding"]
       51 GETTABLEKS                       R7 R7 K16 ["createStatusEntry"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Src"]
       58 GETTABLEKS                       R8 R8 K14 ["Util"]
       60 GETTABLEKS                       R8 R8 K13 ["Status"]
       62 GETTABLEKS                       R8 R8 K17 ["getPrimaryStatus"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K5 [require]
       67 GETTABLEKS                       R9 R0 K11 ["Src"]
       69 GETTABLEKS                       R9 R9 K18 ["Types"]
       71 CALL                             R8 1 1
       72 DUPCLOSURE                       R9 K19 [PROTO_4]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R7
       79 RETURN                           R9 1
