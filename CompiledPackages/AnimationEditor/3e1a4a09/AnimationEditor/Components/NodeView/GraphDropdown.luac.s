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
        2 GETIMPORT                        R1 K2 [table.clone]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["graphItems"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K5 [table.sort]
       10 MOVE                             R3 R1
       11 DUPCLOSURE                       R4 K6 [PROTO_0]
       12 CALL                             R2 2 0
       13 LOADB                            R2 0
       14 MOVE                             R3 R1
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 LOADN                            R8 10
       19 JUMPIFLT                         R8 R6 ; [+44]
       21 GETTABLEKS                       R8 R7 K7 ["id"]
       23 GETUPVAL                         R9 1
       24 JUMPIFNOTEQ                      R8 R9 ; [+2]
       26 LOADB                            R2 1
       27 DUPTABLE                         R8 K12 [{"id", "text", "isChecked", "isDisabled", "data"}]
       28 GETTABLEKS                       R9 R7 K7 ["id"]
       30 SETTABLEKS                       R9 R8 K7 ["id"]
       32 GETTABLEKS                       R9 R7 K8 ["text"]
       34 SETTABLEKS                       R9 R8 K8 ["text"]
       36 GETTABLEKS                       R10 R7 K7 ["id"]
       38 GETUPVAL                         R11 1
       39 JUMPIFEQ                         R10 R11 ; [+2]
       41 LOADB                            R9 0 +1
       42 LOADB                            R9 1
       43 SETTABLEKS                       R9 R8 K9 ["isChecked"]
       45 GETUPVAL                         R9 2
       46 SETTABLEKS                       R9 R8 K10 ["isDisabled"]
       48 DUPTABLE                         R9 K14 [{"isDirty"}]
       49 GETTABLEKS                       R10 R7 K13 ["isDirty"]
       51 SETTABLEKS                       R10 R9 K13 ["isDirty"]
       53 SETTABLEKS                       R9 R8 K11 ["data"]
       55 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       57 MOVE                             R10 R0
       58 MOVE                             R11 R8
       59 GETIMPORT                        R9 K16 [table.insert]
       61 CALL                             R9 2 0
       62 FORGLOOP                         R3 2 ; [-45]
       64 JUMPIF                           R2 ; [+39]
       65 GETUPVAL                         R3 1
       66 JUMPIFNOT                        R3 ; [+37]
       67 MOVE                             R3 R1
       68 LOADNIL                          R4
       69 LOADNIL                          R5
       70 FORGPREP                         R3
       71 GETTABLEKS                       R8 R7 K7 ["id"]
       73 GETUPVAL                         R9 1
       74 JUMPIFNOTEQ                      R8 R9 ; [+27]
       76 DUPTABLE                         R10 K18 [{["id"], ["text"], ["isChecked"] = True, ["isDisabled"], ["data"]}]
       77 GETTABLEKS                       R11 R7 K7 ["id"]
       79 SETTABLEKS                       R11 R10 K7 ["id"]
       81 GETTABLEKS                       R11 R7 K8 ["text"]
       83 SETTABLEKS                       R11 R10 K8 ["text"]
       85 GETUPVAL                         R11 2
       86 SETTABLEKS                       R11 R10 K10 ["isDisabled"]
       88 DUPTABLE                         R11 K14 [{"isDirty"}]
       89 GETTABLEKS                       R12 R7 K13 ["isDirty"]
       91 SETTABLEKS                       R12 R11 K13 ["isDirty"]
       93 SETTABLEKS                       R11 R10 K11 ["data"]
       95 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       97 MOVE                             R9 R0
       98 GETIMPORT                        R8 K16 [table.insert]
      100 CALL                             R8 2 0
      101 JUMP                             ; [+2]
      102 FORGLOOP                         R3 2 ; [-32]
      104 DUPTABLE                         R3 K20 [{"items"}]
      105 SETTABLEKS                       R0 R3 K19 ["items"]
      107 RETURN                           R3 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"items"}]
        1 NEWTABLE                         R1 0 2
        3 DUPTABLE                         R2 K7 [{["id"], ["text"], ["isChecked"] = False, ["isDisabled"]}]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K8 ["NEW"]
        7 SETTABLEKS                       R3 R2 K2 ["id"]
        9 GETUPVAL                         R3 1
       10 LOADK                            R5 K9 ["Common"]
       11 LOADK                            R6 K10 ["AnimationEditor"]
       12 LOADK                            R7 K11 ["Menu"]
       13 LOADK                            R8 K12 ["New"]
       14 NAMECALL                         R3 R3 K13 ["getExternalText"]
       16 CALL                             R3 5 1
       17 SETTABLEKS                       R3 R2 K3 ["text"]
       19 GETUPVAL                         R4 2
       20 JUMPIFEQKNIL                     R4 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R2 K6 ["isDisabled"]
       26 DUPTABLE                         R3 K7 [{["id"], ["text"], ["isChecked"] = False, ["isDisabled"]}]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K14 ["OPEN"]
       30 SETTABLEKS                       R4 R3 K2 ["id"]
       32 GETUPVAL                         R4 1
       33 LOADK                            R6 K9 ["Common"]
       34 LOADK                            R7 K10 ["AnimationEditor"]
       35 LOADK                            R8 K11 ["Menu"]
       36 LOADK                            R9 K15 ["OpenPopup"]
       37 NAMECALL                         R4 R4 K13 ["getExternalText"]
       39 CALL                             R4 5 1
       40 SETTABLEKS                       R4 R3 K3 ["text"]
       42 GETUPVAL                         R5 3
       43 JUMPIFEQKNIL                     R5 ; [+2]
       45 LOADB                            R4 0 +1
       46 LOADB                            R4 1
       47 SETTABLEKS                       R4 R3 K6 ["isDisabled"]
       49 SETLIST                          R1 R2 2 [1]
       51 SETTABLEKS                       R1 R0 K0 ["items"]
       53 RETURN                           R0 1

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
        0 JUMPIFNOT                        R1 ; [+11]
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+36]
        3 JUMPIFEQKS                       R1 K0 [""] ; [+35]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["renameGraphByIdAsync"]
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K2 ["NEW"]
       15 JUMPIFNOTEQ                      R0 R2 ; [+6]
       17 GETUPVAL                         R2 3
       18 JUMPIFNOT                        R2 ; [+20]
       19 GETUPVAL                         R2 3
       20 CALL                             R2 0 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K3 ["OPEN"]
       25 JUMPIFNOTEQ                      R0 R2 ; [+6]
       27 GETUPVAL                         R2 4
       28 JUMPIFNOT                        R2 ; [+10]
       29 GETUPVAL                         R2 4
       30 CALL                             R2 0 0
       31 RETURN                           R0 0
       32 JUMPIFNOT                        R0 ; [+6]
       33 GETIMPORT                        R2 K6 [task.spawn]
       35 NEWCLOSURE                       R3 P0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R0
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["useContext"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K3 ["useContext"]
       25 GETIMPORT                        R5 K6 [require]
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       30 GETTABLEKS                       R6 R6 K8 ["GraphPlayedContext"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R5 R5 K4 ["Context"]
       35 CALL                             R4 1 1
       36 GETUPVAL                         R5 5
       37 CALL                             R5 0 1
       38 GETUPVAL                         R6 6
       39 CALL                             R6 0 1
       40 LOADNIL                          R7
       41 GETTABLEKS                       R8 R4 K9 ["isPreviewRunning"]
       43 JUMPIFNOT                        R8 ; [+1]
       44 LOADB                            R7 1
       45 GETUPVAL                         R8 7
       46 GETTABLEKS                       R8 R8 K10 ["useSignalState"]
       48 GETTABLEKS                       R9 R3 K11 ["observeSelectedGraphInstanceId"]
       50 CALL                             R8 1 1
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R9 R9 K12 ["useMemo"]
       54 NEWCLOSURE                       R10 P0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R8
       57 CAPTURE                          REF R7
       58 NEWTABLE                         R11 0 3
       60 GETTABLEKS                       R12 R2 K13 ["graphItems"]
       62 MOVE                             R13 R8
       63 MOVE                             R14 R7
       64 SETLIST                          R11 R12 3 [1]
       66 CALL                             R9 2 1
       67 GETUPVAL                         R10 1
       68 GETTABLEKS                       R10 R10 K12 ["useMemo"]
       70 NEWCLOSURE                       R11 P1
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 NEWTABLE                         R12 0 3
       77 MOVE                             R13 R5
       78 MOVE                             R14 R6
       79 MOVE                             R15 R1
       80 SETLIST                          R12 R13 3 [1]
       82 CALL                             R10 2 1
       83 GETUPVAL                         R11 1
       84 GETTABLEKS                       R11 R11 K14 ["useCallback"]
       86 DUPCLOSURE                       R12 K15 [PROTO_3]
       87 NEWTABLE                         R13 0 0
       89 CALL                             R11 2 1
       90 GETUPVAL                         R12 1
       91 GETTABLEKS                       R12 R12 K14 ["useCallback"]
       93 NEWCLOSURE                       R13 P3
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R2
       96 CAPTURE                          UPVAL U8
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R6
       99 NEWTABLE                         R14 0 4
      101 GETTABLEKS                       R15 R2 K16 ["renameGraphByIdAsync"]
      103 MOVE                             R16 R8
      104 MOVE                             R17 R5
      105 MOVE                             R18 R6
      106 SETLIST                          R14 R15 4 [1]
      108 CALL                             R12 2 1
      109 GETUPVAL                         R13 1
      110 GETTABLEKS                       R13 R13 K12 ["useMemo"]
      112 NEWCLOSURE                       R14 P4
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R10
      115 NEWTABLE                         R15 0 2
      117 MOVE                             R16 R9
      118 MOVE                             R17 R10
      119 SETLIST                          R15 R16 2 [1]
      121 CALL                             R13 2 1
      122 GETUPVAL                         R14 9
      123 GETTABLEKS                       R14 R14 K17 ["Hooks"]
      125 GETTABLEKS                       R14 R14 K18 ["useScaledValue"]
      127 LOADN                            R15 200
      128 CALL                             R14 1 1
      129 GETUPVAL                         R15 1
      130 GETTABLEKS                       R15 R15 K19 ["createElement"]
      132 GETUPVAL                         R16 10
      133 DUPTABLE                         R17 K29 [{"placeholder", "size", "width", "Value", "LayoutOrder", "Options", "onChanged", "formatAsString", "isDisabled"}]
      134 LOADK                            R20 K30 ["Common"]
      135 LOADK                            R21 K31 ["AnimationEditor"]
      136 LOADK                            R22 K32 ["Menu"]
      137 LOADK                            R23 K33 ["NoGraphName"]
      138 NAMECALL                         R18 R1 K34 ["getExternalText"]
      140 CALL                             R18 5 1
      141 SETTABLEKS                       R18 R17 K20 ["placeholder"]
      143 GETUPVAL                         R18 9
      144 GETTABLEKS                       R18 R18 K35 ["Enums"]
      146 GETTABLEKS                       R18 R18 K36 ["InputSize"]
      148 GETTABLEKS                       R18 R18 K37 ["XSmall"]
      150 SETTABLEKS                       R18 R17 K21 ["size"]
      152 GETIMPORT                        R18 K40 [UDim.new]
      154 LOADN                            R19 0
      155 MOVE                             R20 R14
      156 CALL                             R18 2 1
      157 SETTABLEKS                       R18 R17 K22 ["width"]
      159 SETTABLEKS                       R8 R17 K23 ["Value"]
      161 GETTABLEKS                       R18 R0 K24 ["LayoutOrder"]
      163 SETTABLEKS                       R18 R17 K24 ["LayoutOrder"]
      165 SETTABLEKS                       R13 R17 K25 ["Options"]
      167 SETTABLEKS                       R12 R17 K26 ["onChanged"]
      169 SETTABLEKS                       R11 R17 K27 ["formatAsString"]
      171 SETTABLEKS                       R7 R17 K28 ["isDisabled"]
      173 CALL                             R15 2 -1
      174 CLOSEUPVALS                      R7
      175 RETURN                           R15 -1

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
       44 GETTABLEKS                       R7 R0 K12 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K14 ["SelectedGraphContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["SignalsReact"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K10 ["Components"]
       60 GETTABLEKS                       R9 R9 K16 ["NodeView"]
       62 GETTABLEKS                       R9 R9 K17 ["MenuActions"]
       64 GETTABLEKS                       R9 R9 K18 ["useNewGraph"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K10 ["Components"]
       71 GETTABLEKS                       R10 R10 K16 ["NodeView"]
       73 GETTABLEKS                       R10 R10 K17 ["MenuActions"]
       75 GETTABLEKS                       R10 R10 K19 ["useOpenGraph"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K22 [table.freeze]
       80 DUPTABLE                         R11 K27 [{["NEW"] = "new", ["OPEN"] = "open"}]
       81 CALL                             R10 1 1
       82 DUPCLOSURE                       R11 K28 [PROTO_7]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R4
       94 RETURN                           R11 1
