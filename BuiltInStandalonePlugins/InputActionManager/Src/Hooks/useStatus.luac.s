PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIF                           R1 ; [+26]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOTEQKS                    R1 K0 ["Touch"] ; [+6]
        7 GETUPVAL                         R1 2
        8 GETIMPORT                        R2 K4 [Enum.InputActionType.Bool]
       10 JUMPIFNOTEQ                      R1 R2 ; [+15]
       12 GETUPVAL                         R1 3
       13 JUMPIFEQKS                       R1 K5 ["primaryModifier"] ; [+12]
       15 GETUPVAL                         R1 3
       16 JUMPIFEQKS                       R1 K6 ["secondaryModifier"] ; [+9]
       18 MOVE                             R2 R0
       19 GETUPVAL                         R3 4
       20 LOADK                            R4 K7 ["NO_KEYCODE"]
       21 CALL                             R3 1 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R1 K10 [table.insert]
       25 CALL                             R1 -1 0
       26 GETUPVAL                         R1 5
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 3
       31 JUMPIFEQKS                       R1 K5 ["primaryModifier"] ; [+4]
       33 GETUPVAL                         R1 3
       34 JUMPIFNOTEQKS                    R1 K6 ["secondaryModifier"] ; [+25]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K5 ["primaryModifier"]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K6 ["secondaryModifier"]
       42 JUMPIFNOTEQ                      R1 R2 ; [+48]
       44 GETUPVAL                         R1 0
       45 GETTABLEKS                       R1 R1 K5 ["primaryModifier"]
       47 GETIMPORT                        R2 K13 [Enum.KeyCode.Unknown]
       49 JUMPIFEQ                         R1 R2 ; [+41]
       51 MOVE                             R2 R0
       52 GETUPVAL                         R3 4
       53 LOADK                            R4 K14 ["MODIFIER_KEYCODE"]
       54 CALL                             R3 1 -1
       55 FASTCALL                         TABLE_INSERT ; [+2]
       56 GETIMPORT                        R1 K10 [table.insert]
       58 CALL                             R1 -1 0
       59 JUMP                             ; [+31]
       60 GETUPVAL                         R1 0
       61 GETTABLEKS                       R1 R1 K5 ["primaryModifier"]
       63 GETUPVAL                         R3 0
       64 GETUPVAL                         R4 3
       65 GETTABLE                         R2 R3 R4
       66 JUMPIFEQ                         R1 R2 ; [+9]
       68 GETUPVAL                         R1 0
       69 GETTABLEKS                       R1 R1 K6 ["secondaryModifier"]
       71 GETUPVAL                         R3 0
       72 GETUPVAL                         R4 3
       73 GETTABLE                         R2 R3 R4
       74 JUMPIFNOTEQ                      R1 R2 ; [+16]
       76 GETUPVAL                         R2 0
       77 GETUPVAL                         R3 3
       78 GETTABLE                         R1 R2 R3
       79 GETIMPORT                        R2 K13 [Enum.KeyCode.Unknown]
       81 JUMPIFEQ                         R1 R2 ; [+9]
       83 MOVE                             R2 R0
       84 GETUPVAL                         R3 4
       85 LOADK                            R4 K14 ["MODIFIER_KEYCODE"]
       86 CALL                             R3 1 -1
       87 FASTCALL                         TABLE_INSERT ; [+2]
       88 GETIMPORT                        R1 K10 [table.insert]
       90 CALL                             R1 -1 0
       91 GETUPVAL                         R2 0
       92 GETUPVAL                         R3 3
       93 GETTABLE                         R1 R2 R3
       94 GETUPVAL                         R2 1
       95 JUMPIFNOTEQKS                    R2 K0 ["Touch"] ; [+20]
       97 GETUPVAL                         R2 2
       98 GETIMPORT                        R3 K4 [Enum.InputActionType.Bool]
      100 JUMPIFNOTEQ                      R2 R3 ; [+115]
      102 GETUPVAL                         R2 0
      103 GETTABLEKS                       R2 R2 K15 ["uiButton"]
      105 JUMPIFNOTEQKNIL                  R2 ; [+110]
      107 MOVE                             R3 R0
      108 GETUPVAL                         R4 4
      109 LOADK                            R5 K7 ["NO_KEYCODE"]
      110 CALL                             R4 1 -1
      111 FASTCALL                         TABLE_INSERT ; [+2]
      112 GETIMPORT                        R2 K10 [table.insert]
      114 CALL                             R2 -1 0
      115 JUMP                             ; [+100]
      116 JUMPIFNOT                        R1 ; [+4]
      117 GETIMPORT                        R2 K13 [Enum.KeyCode.Unknown]
      119 JUMPIFNOTEQ                      R1 R2 ; [+16]
      121 GETUPVAL                         R2 3
      122 JUMPIFEQKS                       R2 K5 ["primaryModifier"] ; [+13]
      124 GETUPVAL                         R2 3
      125 JUMPIFEQKS                       R2 K6 ["secondaryModifier"] ; [+10]
      127 MOVE                             R3 R0
      128 GETUPVAL                         R4 4
      129 LOADK                            R5 K7 ["NO_KEYCODE"]
      130 CALL                             R4 1 -1
      131 FASTCALL                         TABLE_INSERT ; [+2]
      132 GETIMPORT                        R2 K10 [table.insert]
      134 CALL                             R2 -1 0
      135 JUMP                             ; [+80]
      136 JUMPIFNOT                        R1 ; [+4]
      137 GETIMPORT                        R2 K13 [Enum.KeyCode.Unknown]
      139 JUMPIFNOTEQ                      R1 R2 ; [+2]
      141 RETURN                           R0 0
      142 GETUPVAL                         R2 6
      143 GETTABLEKS                       R2 R2 K16 ["getKeyCodeUsage"]
      145 GETUPVAL                         R3 7
      146 MOVE                             R4 R1
      147 CALL                             R2 2 1
      148 NEWTABLE                         R3 0 0
      150 NEWTABLE                         R4 0 0
      152 MOVE                             R5 R2
      153 LOADNIL                          R6
      154 LOADNIL                          R7
      155 FORGPREP                         R5
      156 GETUPVAL                         R10 0
      157 GETTABLEKS                       R10 R10 K17 ["uuid"]
      159 JUMPIFEQ                         R9 R10 ; [+30]
      161 GETUPVAL                         R10 8
      162 GETTABLEKS                       R10 R10 K18 ["getBinding"]
      164 MOVE                             R11 R9
      165 CALL                             R10 1 1
      166 JUMPIFNOT                        R10 ; [+23]
      167 GETUPVAL                         R11 8
      168 GETTABLEKS                       R11 R11 K19 ["getAction"]
      170 GETTABLEKS                       R12 R10 K20 ["parentUuid"]
      172 CALL                             R11 1 1
      173 JUMPIFNOT                        R11 ; [+16]
      174 GETTABLEKS                       R13 R11 K21 ["name"]
      176 GETTABLE                         R12 R4 R13
      177 JUMPIF                           R12 ; [+12]
      178 GETTABLEKS                       R12 R11 K21 ["name"]
      180 LOADB                            R13 1
      181 SETTABLE                         R13 R4 R12
      182 GETTABLEKS                       R14 R11 K21 ["name"]
      184 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
      186 MOVE                             R13 R3
      187 GETIMPORT                        R12 K10 [table.insert]
      189 CALL                             R12 2 0
      190 FORGLOOP                         R5 2 ; [-35]
      192 LENGTH                           R5 R3
      193 LOADN                            R6 0
      194 JUMPIFNOTLT                      R6 R5 ; [+21]
      196 MOVE                             R6 R0
      197 GETUPVAL                         R7 4
      198 LOADK                            R8 K22 ["DUPLICATE_KEYCODE"]
      199 DUPTABLE                         R9 K25 [{"keyCode", "actions"}]
      200 GETTABLEKS                       R10 R1 K26 ["Name"]
      202 SETTABLEKS                       R10 R9 K23 ["keyCode"]
      204 GETIMPORT                        R10 K28 [table.concat]
      206 MOVE                             R11 R3
      207 LOADK                            R12 K29 [", "]
      208 CALL                             R10 2 1
      209 SETTABLEKS                       R10 R9 K24 ["actions"]
      211 CALL                             R7 2 -1
      212 FASTCALL                         TABLE_INSERT ; [+2]
      213 GETIMPORT                        R5 K10 [table.insert]
      215 CALL                             R5 -1 0
      216 GETUPVAL                         R2 5
      217 MOVE                             R3 R0
      218 CALL                             R2 1 0
      219 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["removeKeyCodeUsage"]
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
       19 GETTABLEKS                       R1 R1 K5 ["addKeyCodeUsage"]
       21 GETUPVAL                         R2 4
       22 MOVE                             R3 R0
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K6 ["uuid"]
       26 CALL                             R1 3 0
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R1 K7 ["onKeyCodeUsageChanged"]
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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["useContext"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K1 ["Context"]
        6 CALL                             R5 1 1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K0 ["useContext"]
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R7 R7 K1 ["Context"]
       13 CALL                             R6 1 1
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K2 ["useState"]
       17 NEWTABLE                         R8 0 0
       19 CALL                             R7 1 2
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       23 NEWCLOSURE                       R10 P0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R8
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R6
       33 NEWTABLE                         R11 0 5
       35 MOVE                             R12 R0
       36 MOVE                             R13 R1
       37 MOVE                             R14 R2
       38 MOVE                             R15 R5
       39 MOVE                             R16 R6
       40 SETLIST                          R11 R12 5 [1]
       42 CALL                             R9 2 1
       43 GETUPVAL                         R10 0
       44 GETTABLEKS                       R10 R10 K4 ["useEffect"]
       46 NEWCLOSURE                       R11 P1
       47 CAPTURE                          VAL R9
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R12 0 6
       54 MOVE                             R13 R0
       55 MOVE                             R14 R1
       56 MOVE                             R15 R2
       57 MOVE                             R16 R5
       58 MOVE                             R17 R6
       59 MOVE                             R18 R9
       60 SETLIST                          R12 R13 6 [1]
       62 CALL                             R10 2 0
       63 GETUPVAL                         R10 4
       64 MOVE                             R11 R7
       65 CALL                             R10 1 -1
       66 RETURN                           R10 -1

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
       29 GETTABLEKS                       R4 R4 K11 ["BindingStatus"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["createStatusEntry"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["Status"]
       49 GETTABLEKS                       R6 R6 K15 ["getPrimaryStatus"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K8 ["Src"]
       56 GETTABLEKS                       R7 R7 K16 ["Types"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K17 [PROTO_4]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 RETURN                           R7 1
