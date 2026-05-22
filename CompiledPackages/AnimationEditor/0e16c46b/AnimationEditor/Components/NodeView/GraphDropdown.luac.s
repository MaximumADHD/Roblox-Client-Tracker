PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["timestamp"]
        2 GETTABLEKS                       R3 R1 K0 ["timestamp"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K1 ["text"]
        8 GETTABLEKS                       R4 R1 K1 ["text"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K0 ["timestamp"]
       17 GETTABLEKS                       R4 R1 K0 ["timestamp"]
       19 JUMPIFLT                         R4 R3 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 LOADNIL                          R1
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+13]
        6 GETIMPORT                        R2 K2 [table.clone]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["graphItems"]
       11 CALL                             R2 1 1
       12 MOVE                             R1 R2
       13 GETIMPORT                        R2 K5 [table.sort]
       15 MOVE                             R3 R1
       16 DUPCLOSURE                       R4 K6 [PROTO_0]
       17 CALL                             R2 2 0
       18 JUMP                             ; [+3]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K3 ["graphItems"]
       22 MOVE                             R2 R1
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 GETUPVAL                         R7 0
       27 CALL                             R7 0 1
       28 JUMPIFNOT                        R7 ; [+3]
       29 LOADN                            R7 10
       30 JUMPIFLT                         R7 R5 ; [+52]
       32 GETTABLEKS                       R8 R6 K7 ["isDirty"]
       34 JUMPIFNOT                        R8 ; [+5]
       35 GETTABLEKS                       R8 R6 K8 ["text"]
       37 LOADK                            R9 K9 [" *"]
       38 CONCAT                           R7 R8 R9
       39 JUMP                             ; [+2]
       40 GETTABLEKS                       R7 R6 K8 ["text"]
       42 DUPTABLE                         R8 K13 [{"id", "text", "isChecked", "data"}]
       43 GETTABLEKS                       R9 R6 K10 ["id"]
       45 SETTABLEKS                       R9 R8 K10 ["id"]
       47 GETUPVAL                         R10 2
       48 CALL                             R10 0 1
       49 JUMPIFNOT                        R10 ; [+3]
       50 GETTABLEKS                       R9 R6 K8 ["text"]
       52 JUMP                             ; [+1]
       53 MOVE                             R9 R7
       54 SETTABLEKS                       R9 R8 K8 ["text"]
       56 GETTABLEKS                       R10 R6 K10 ["id"]
       58 GETUPVAL                         R11 1
       59 GETTABLEKS                       R11 R11 K14 ["selectedGraphId"]
       61 JUMPIFEQ                         R10 R11 ; [+2]
       63 LOADB                            R9 0 +1
       64 LOADB                            R9 1
       65 SETTABLEKS                       R9 R8 K11 ["isChecked"]
       67 DUPTABLE                         R9 K15 [{"isDirty"}]
       68 GETTABLEKS                       R10 R6 K7 ["isDirty"]
       70 SETTABLEKS                       R10 R9 K7 ["isDirty"]
       72 SETTABLEKS                       R9 R8 K12 ["data"]
       74 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       76 MOVE                             R10 R0
       77 MOVE                             R11 R8
       78 GETIMPORT                        R9 K17 [table.insert]
       80 CALL                             R9 2 0
       81 FORGLOOP                         R2 2 ; [-56]
       83 DUPTABLE                         R2 K19 [{"items"}]
       84 SETTABLEKS                       R0 R2 K18 ["items"]
       86 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"items"}]
        1 NEWTABLE                         R1 0 2
        3 DUPTABLE                         R2 K6 [{"id", "text", "isChecked", "isDisabled"}]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K7 ["NEW"]
        7 SETTABLEKS                       R3 R2 K2 ["id"]
        9 GETUPVAL                         R3 1
       10 LOADK                            R5 K8 ["Common"]
       11 LOADK                            R6 K9 ["AnimationEditor"]
       12 LOADK                            R7 K10 ["Menu"]
       13 LOADK                            R8 K11 ["New"]
       14 NAMECALL                         R3 R3 K12 ["getExternalText"]
       16 CALL                             R3 5 1
       17 SETTABLEKS                       R3 R2 K3 ["text"]
       19 LOADB                            R3 0
       20 SETTABLEKS                       R3 R2 K4 ["isChecked"]
       22 GETUPVAL                         R4 2
       23 JUMPIFEQKNIL                     R4 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 SETTABLEKS                       R3 R2 K5 ["isDisabled"]
       29 DUPTABLE                         R3 K6 [{"id", "text", "isChecked", "isDisabled"}]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K13 ["OPEN"]
       33 SETTABLEKS                       R4 R3 K2 ["id"]
       35 GETUPVAL                         R4 1
       36 LOADK                            R6 K8 ["Common"]
       37 LOADK                            R7 K9 ["AnimationEditor"]
       38 LOADK                            R8 K10 ["Menu"]
       39 LOADK                            R9 K14 ["OpenPopup"]
       40 NAMECALL                         R4 R4 K12 ["getExternalText"]
       42 CALL                             R4 5 1
       43 SETTABLEKS                       R4 R3 K3 ["text"]
       45 LOADB                            R4 0
       46 SETTABLEKS                       R4 R3 K4 ["isChecked"]
       48 GETUPVAL                         R5 3
       49 JUMPIFEQKNIL                     R5 ; [+2]
       51 LOADB                            R4 0 +1
       52 LOADB                            R4 1
       53 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       55 SETLIST                          R1 R2 2 [1]
       57 SETTABLEKS                       R1 R0 K0 ["items"]
       59 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["data"]
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R1 R0 K0 ["data"]
        5 GETTABLEKS                       R1 R1 K1 ["isDirty"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R2 R0 K2 ["text"]
       10 LOADK                            R3 K3 [" *"]
       11 CONCAT                           R1 R2 R3
       12 RETURN                           R1 1
       13 GETTABLEKS                       R1 R0 K2 ["text"]
       15 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectGraphByIdAsync"]
        3 GETUPVAL                         R2 1
        4 FASTCALL1                        TOSTRING R2 ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["NEW"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+6]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+2]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["OPEN"]
       13 JUMPIFNOTEQ                      R0 R1 ; [+6]
       15 GETUPVAL                         R1 2
       16 JUMPIFNOT                        R1 ; [+2]
       17 GETUPVAL                         R1 2
       18 CALL                             R1 0 0
       19 RETURN                           R0 0
       20 GETIMPORT                        R1 K4 [task.spawn]
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectGraphByIdAsync"]
        3 GETUPVAL                         R2 1
        4 FASTCALL1                        TOSTRING R2 ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+15]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["selectedGraphId"]
        4 JUMPIFNOT                        R2 ; [+38]
        5 JUMPIFEQKS                       R1 K1 [""] ; [+37]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["renameGraphByIdAsync"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["selectedGraphId"]
       13 MOVE                             R4 R1
       14 CALL                             R2 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K3 ["NEW"]
       19 JUMPIFNOTEQ                      R0 R2 ; [+6]
       21 GETUPVAL                         R2 2
       22 JUMPIFNOT                        R2 ; [+20]
       23 GETUPVAL                         R2 2
       24 CALL                             R2 0 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K4 ["OPEN"]
       29 JUMPIFNOTEQ                      R0 R2 ; [+6]
       31 GETUPVAL                         R2 3
       32 JUMPIFNOT                        R2 ; [+10]
       33 GETUPVAL                         R2 3
       34 CALL                             R2 0 0
       35 RETURN                           R0 0
       36 JUMPIFNOT                        R0 ; [+6]
       37 GETIMPORT                        R2 K7 [task.spawn]
       39 NEWCLOSURE                       R3 P0
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R0
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [next]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["items"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+7]
        9 GETUPVAL                         R3 0
       10 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K5 [table.insert]
       15 CALL                             R1 2 0
       16 GETIMPORT                        R1 K1 [next]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K2 ["items"]
       21 CALL                             R1 1 1
       22 JUMPIFNOT                        R1 ; [+7]
       23 GETUPVAL                         R3 1
       24 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       26 MOVE                             R2 R0
       27 GETIMPORT                        R1 K5 [table.insert]
       29 CALL                             R1 2 0
       30 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 4
       18 CALL                             R4 0 1
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U6
       26 NEWTABLE                         R7 0 2
       28 GETTABLEKS                       R8 R2 K6 ["graphItems"]
       30 GETTABLEKS                       R9 R2 K7 ["selectedGraphId"]
       32 SETLIST                          R7 R8 2 [1]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 NEWTABLE                         R8 0 3
       45 MOVE                             R9 R3
       46 MOVE                             R10 R4
       47 MOVE                             R11 R1
       48 SETLIST                          R8 R9 3 [1]
       50 CALL                             R6 2 1
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       54 DUPCLOSURE                       R8 K9 [PROTO_3]
       55 NEWTABLE                         R9 0 0
       57 CALL                             R7 2 1
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R8 R8 K8 ["useCallback"]
       61 NEWCLOSURE                       R9 P3
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 NEWTABLE                         R10 0 3
       68 GETTABLEKS                       R11 R2 K10 ["selectGraphByIdAsync"]
       70 MOVE                             R12 R3
       71 MOVE                             R13 R4
       72 SETLIST                          R10 R11 3 [1]
       74 CALL                             R8 2 1
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R9 R9 K8 ["useCallback"]
       78 NEWCLOSURE                       R10 P4
       79 CAPTURE                          VAL R2
       80 CAPTURE                          UPVAL U7
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R4
       83 NEWTABLE                         R11 0 4
       85 GETTABLEKS                       R12 R2 K11 ["renameGraphByIdAsync"]
       87 GETTABLEKS                       R13 R2 K7 ["selectedGraphId"]
       89 MOVE                             R14 R3
       90 MOVE                             R15 R4
       91 SETLIST                          R11 R12 4 [1]
       93 CALL                             R9 2 1
       94 GETUPVAL                         R10 1
       95 GETTABLEKS                       R10 R10 K5 ["useMemo"]
       97 NEWCLOSURE                       R11 P5
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R6
      100 NEWTABLE                         R12 0 2
      102 MOVE                             R13 R5
      103 MOVE                             R14 R6
      104 SETLIST                          R12 R13 2 [1]
      106 CALL                             R10 2 1
      107 GETUPVAL                         R11 6
      108 CALL                             R11 0 1
      109 JUMPIFNOT                        R11 ; [+54]
      110 GETUPVAL                         R11 1
      111 GETTABLEKS                       R11 R11 K12 ["createElement"]
      113 GETUPVAL                         R12 8
      114 DUPTABLE                         R13 K21 [{"placeholder", "size", "width", "Value", "LayoutOrder", "Options", "onChanged", "formatAsString"}]
      115 LOADK                            R16 K22 ["Common"]
      116 LOADK                            R17 K23 ["AnimationEditor"]
      117 LOADK                            R18 K24 ["Menu"]
      118 LOADK                            R19 K25 ["NoGraphName"]
      119 NAMECALL                         R14 R1 K26 ["getExternalText"]
      121 CALL                             R14 5 1
      122 SETTABLEKS                       R14 R13 K13 ["placeholder"]
      124 GETUPVAL                         R14 9
      125 GETTABLEKS                       R14 R14 K27 ["Enums"]
      127 GETTABLEKS                       R14 R14 K28 ["InputSize"]
      129 GETTABLEKS                       R14 R14 K29 ["XSmall"]
      131 SETTABLEKS                       R14 R13 K14 ["size"]
      133 GETIMPORT                        R14 K32 [UDim.new]
      135 LOADN                            R15 0
      136 GETUPVAL                         R16 9
      137 GETTABLEKS                       R16 R16 K33 ["Hooks"]
      139 GETTABLEKS                       R16 R16 K34 ["useScaledValue"]
      141 GETUPVAL                         R17 10
      142 GETTABLEKS                       R17 R17 K35 ["PARAMETER_PANE_WIDTH"]
      144 CALL                             R16 1 -1
      145 CALL                             R14 -1 1
      146 SETTABLEKS                       R14 R13 K15 ["width"]
      148 GETTABLEKS                       R14 R2 K7 ["selectedGraphId"]
      150 SETTABLEKS                       R14 R13 K16 ["Value"]
      152 GETTABLEKS                       R14 R0 K17 ["LayoutOrder"]
      154 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      156 SETTABLEKS                       R10 R13 K18 ["Options"]
      158 SETTABLEKS                       R9 R13 K19 ["onChanged"]
      160 SETTABLEKS                       R7 R13 K20 ["formatAsString"]
      162 CALL                             R11 2 1
      163 RETURN                           R11 1
      164 GETUPVAL                         R11 1
      165 GETTABLEKS                       R11 R11 K12 ["createElement"]
      167 GETUPVAL                         R12 9
      168 GETTABLEKS                       R12 R12 K36 ["Dropdown"]
      170 GETTABLEKS                       R12 R12 K37 ["Root"]
      172 DUPTABLE                         R13 K42 [{"label", "LayoutOrder", "placeholder", "value", "size", "width", "onItemChanged", "items"}]
      173 LOADK                            R14 K43 [""]
      174 SETTABLEKS                       R14 R13 K38 ["label"]
      176 GETTABLEKS                       R14 R0 K17 ["LayoutOrder"]
      178 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      180 LOADK                            R16 K22 ["Common"]
      181 LOADK                            R17 K23 ["AnimationEditor"]
      182 LOADK                            R18 K24 ["Menu"]
      183 LOADK                            R19 K25 ["NoGraphName"]
      184 NAMECALL                         R14 R1 K26 ["getExternalText"]
      186 CALL                             R14 5 1
      187 SETTABLEKS                       R14 R13 K13 ["placeholder"]
      189 GETTABLEKS                       R14 R2 K7 ["selectedGraphId"]
      191 SETTABLEKS                       R14 R13 K39 ["value"]
      193 GETUPVAL                         R14 9
      194 GETTABLEKS                       R14 R14 K27 ["Enums"]
      196 GETTABLEKS                       R14 R14 K28 ["InputSize"]
      198 GETTABLEKS                       R14 R14 K29 ["XSmall"]
      200 SETTABLEKS                       R14 R13 K14 ["size"]
      202 GETIMPORT                        R14 K32 [UDim.new]
      204 LOADN                            R15 0
      205 GETUPVAL                         R16 9
      206 GETTABLEKS                       R16 R16 K33 ["Hooks"]
      208 GETTABLEKS                       R16 R16 K34 ["useScaledValue"]
      210 GETUPVAL                         R17 10
      211 GETTABLEKS                       R17 R17 K35 ["PARAMETER_PANE_WIDTH"]
      213 CALL                             R16 1 -1
      214 CALL                             R14 -1 1
      215 SETTABLEKS                       R14 R13 K15 ["width"]
      217 SETTABLEKS                       R8 R13 K40 ["onItemChanged"]
      219 SETTABLEKS                       R10 R13 K41 ["items"]
      221 CALL                             R11 2 1
      222 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["ComboBox"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K13 ["GraphDropdownContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K10 ["Components"]
       46 GETTABLEKS                       R7 R7 K14 ["NodeView"]
       48 GETTABLEKS                       R7 R7 K15 ["ParameterPane"]
       50 GETTABLEKS                       R7 R7 K16 ["Constants"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Components"]
       57 GETTABLEKS                       R8 R8 K14 ["NodeView"]
       59 GETTABLEKS                       R8 R8 K17 ["MenuActions"]
       61 GETTABLEKS                       R8 R8 K18 ["useNewGraph"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K10 ["Components"]
       68 GETTABLEKS                       R9 R9 K14 ["NodeView"]
       70 GETTABLEKS                       R9 R9 K17 ["MenuActions"]
       72 GETTABLEKS                       R9 R9 K19 ["useOpenGraph"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K20 ["Flags"]
       79 GETTABLEKS                       R10 R10 K21 ["getFFlagAnimGraphUIGraphComboBox"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K20 ["Flags"]
       86 GETTABLEKS                       R11 R11 K22 ["getFFlagAnimGraphUISortGraphElements"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K25 [table.freeze]
       91 DUPTABLE                         R12 K28 [{"NEW", "OPEN"}]
       92 LOADK                            R13 K29 ["new"]
       93 SETTABLEKS                       R13 R12 K26 ["NEW"]
       95 LOADK                            R13 K30 ["open"]
       96 SETTABLEKS                       R13 R12 K27 ["OPEN"]
       98 CALL                             R11 1 1
       99 DUPCLOSURE                       R12 K31 [PROTO_9]
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R6
      111 RETURN                           R12 1
