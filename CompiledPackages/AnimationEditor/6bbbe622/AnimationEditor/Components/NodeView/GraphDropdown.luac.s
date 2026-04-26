PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["graphItems"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R7 R5 K1 ["isDirty"]
       10 JUMPIFNOT                        R7 ; [+5]
       11 GETTABLEKS                       R7 R5 K2 ["text"]
       13 LOADK                            R8 K3 [" *"]
       14 CONCAT                           R6 R7 R8
       15 JUMP                             ; [+2]
       16 GETTABLEKS                       R6 R5 K2 ["text"]
       18 DUPTABLE                         R7 K6 [{"id", "text", "isChecked"}]
       19 GETTABLEKS                       R8 R5 K4 ["id"]
       21 SETTABLEKS                       R8 R7 K4 ["id"]
       23 SETTABLEKS                       R6 R7 K2 ["text"]
       25 GETTABLEKS                       R9 R5 K4 ["id"]
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R10 R11 K7 ["selectedGraphId"]
       30 JUMPIFEQ                         R9 R10 ; [+2]
       32 LOADB                            R8 0 +1
       33 LOADB                            R8 1
       34 SETTABLEKS                       R8 R7 K5 ["isChecked"]
       36 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       38 MOVE                             R9 R0
       39 MOVE                             R10 R7
       40 GETIMPORT                        R8 K10 [table.insert]
       42 CALL                             R8 2 0
       43 FORGLOOP                         R1 2 ; [-36]
       45 DUPTABLE                         R1 K12 [{"items"}]
       46 SETTABLEKS                       R0 R1 K11 ["items"]
       48 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"items"}]
        1 NEWTABLE                         R1 0 2
        3 DUPTABLE                         R2 K6 [{"id", "text", "isChecked", "isDisabled"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K7 ["NEW"]
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
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K13 ["OPEN"]
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectGraphByIdAsync"]
        3 GETUPVAL                         R2 1
        4 FASTCALL1                        TOSTRING R2 ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["NEW"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+6]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+2]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K1 ["OPEN"]
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

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [next]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["items"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+7]
        9 GETUPVAL                         R3 0
       10 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K5 [table.insert]
       15 CALL                             R1 2 0
       16 GETIMPORT                        R1 K1 [next]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K2 ["items"]
       21 CALL                             R1 1 1
       22 JUMPIFNOT                        R1 ; [+7]
       23 GETUPVAL                         R3 1
       24 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       26 MOVE                             R2 R0
       27 GETIMPORT                        R1 K5 [table.insert]
       29 CALL                             R1 2 0
       30 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["useContext"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 4
       18 CALL                             R4 0 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K5 ["useMemo"]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          VAL R2
       24 NEWTABLE                         R7 0 2
       26 GETTABLEKS                       R8 R2 K6 ["graphItems"]
       28 GETTABLEKS                       R9 R2 K7 ["selectedGraphId"]
       30 SETLIST                          R7 R8 2 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R6 R7 K5 ["useMemo"]
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R8 0 3
       43 MOVE                             R9 R3
       44 MOVE                             R10 R4
       45 MOVE                             R11 R1
       46 SETLIST                          R8 R9 3 [1]
       48 CALL                             R6 2 1
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R7 R8 K8 ["useCallback"]
       52 NEWCLOSURE                       R8 P2
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 NEWTABLE                         R9 0 3
       59 GETTABLEKS                       R10 R2 K9 ["selectGraphByIdAsync"]
       61 MOVE                             R11 R3
       62 MOVE                             R12 R4
       63 SETLIST                          R9 R10 3 [1]
       65 CALL                             R7 2 1
       66 GETUPVAL                         R9 1
       67 GETTABLEKS                       R8 R9 K5 ["useMemo"]
       69 NEWCLOSURE                       R9 P3
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 NEWTABLE                         R10 0 2
       74 MOVE                             R11 R5
       75 MOVE                             R12 R6
       76 SETLIST                          R10 R11 2 [1]
       78 CALL                             R8 2 1
       79 GETUPVAL                         R10 1
       80 GETTABLEKS                       R9 R10 K10 ["createElement"]
       82 GETUPVAL                         R12 6
       83 GETTABLEKS                       R11 R12 K11 ["Dropdown"]
       85 GETTABLEKS                       R10 R11 K12 ["Root"]
       87 DUPTABLE                         R11 K21 [{"label", "LayoutOrder", "placeholder", "value", "size", "width", "onItemChanged", "items"}]
       88 LOADK                            R12 K22 [""]
       89 SETTABLEKS                       R12 R11 K13 ["label"]
       91 GETTABLEKS                       R12 R0 K14 ["LayoutOrder"]
       93 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       95 LOADK                            R14 K23 ["Common"]
       96 LOADK                            R15 K24 ["AnimationEditor"]
       97 LOADK                            R16 K25 ["Menu"]
       98 LOADK                            R17 K26 ["NoGraphName"]
       99 NAMECALL                         R12 R1 K27 ["getExternalText"]
      101 CALL                             R12 5 1
      102 SETTABLEKS                       R12 R11 K15 ["placeholder"]
      104 GETTABLEKS                       R12 R2 K7 ["selectedGraphId"]
      106 SETTABLEKS                       R12 R11 K16 ["value"]
      108 GETUPVAL                         R15 6
      109 GETTABLEKS                       R14 R15 K28 ["Enums"]
      111 GETTABLEKS                       R13 R14 K29 ["InputSize"]
      113 GETTABLEKS                       R12 R13 K30 ["XSmall"]
      115 SETTABLEKS                       R12 R11 K17 ["size"]
      117 GETIMPORT                        R12 K33 [UDim.new]
      119 LOADN                            R13 0
      120 GETUPVAL                         R16 6
      121 GETTABLEKS                       R15 R16 K34 ["Hooks"]
      123 GETTABLEKS                       R14 R15 K35 ["useScaledValue"]
      125 GETUPVAL                         R16 7
      126 GETTABLEKS                       R15 R16 K36 ["PARAMETER_PANE_WIDTH"]
      128 CALL                             R14 1 -1
      129 CALL                             R12 -1 1
      130 SETTABLEKS                       R12 R11 K18 ["width"]
      132 SETTABLEKS                       R7 R11 K19 ["onItemChanged"]
      134 SETTABLEKS                       R8 R11 K20 ["items"]
      136 CALL                             R9 2 -1
      137 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["GraphDropdownContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K11 ["Components"]
       32 GETTABLEKS                       R7 R8 K12 ["NodeView"]
       34 GETTABLEKS                       R6 R7 K13 ["ParameterPane"]
       36 GETTABLEKS                       R5 R6 K14 ["Constants"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Parent"]
       43 GETTABLEKS                       R6 R7 K15 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R10 R0 K11 ["Components"]
       50 GETTABLEKS                       R9 R10 K12 ["NodeView"]
       52 GETTABLEKS                       R8 R9 K16 ["MenuActions"]
       54 GETTABLEKS                       R7 R8 K17 ["useNewGraph"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R11 R0 K11 ["Components"]
       61 GETTABLEKS                       R10 R11 K12 ["NodeView"]
       63 GETTABLEKS                       R9 R10 K16 ["MenuActions"]
       65 GETTABLEKS                       R8 R9 K18 ["useOpenGraph"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K21 [table.freeze]
       70 DUPTABLE                         R9 K24 [{"NEW", "OPEN"}]
       71 LOADK                            R10 K25 ["new"]
       72 SETTABLEKS                       R10 R9 K22 ["NEW"]
       74 LOADK                            R10 K26 ["open"]
       75 SETTABLEKS                       R10 R9 K23 ["OPEN"]
       77 CALL                             R8 1 1
       78 DUPCLOSURE                       R9 K27 [PROTO_5]
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R4
       87 RETURN                           R9 1
