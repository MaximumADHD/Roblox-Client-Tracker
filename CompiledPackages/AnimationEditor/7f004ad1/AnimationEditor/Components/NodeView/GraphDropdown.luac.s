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
       30 JUMPIFLT                         R7 R5 ; [+43]
       32 DUPTABLE                         R7 K12 [{"id", "text", "isChecked", "isDisabled", "data"}]
       33 GETTABLEKS                       R8 R6 K7 ["id"]
       35 SETTABLEKS                       R8 R7 K7 ["id"]
       37 GETTABLEKS                       R8 R6 K8 ["text"]
       39 SETTABLEKS                       R8 R7 K8 ["text"]
       41 GETTABLEKS                       R9 R6 K7 ["id"]
       43 GETUPVAL                         R10 2
       44 JUMPIFEQ                         R9 R10 ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 SETTABLEKS                       R8 R7 K9 ["isChecked"]
       50 GETUPVAL                         R9 3
       51 CALL                             R9 0 1
       52 JUMPIFNOT                        R9 ; [+2]
       53 GETUPVAL                         R8 4
       54 JUMP                             ; [+1]
       55 LOADNIL                          R8
       56 SETTABLEKS                       R8 R7 K10 ["isDisabled"]
       58 DUPTABLE                         R8 K14 [{"isDirty"}]
       59 GETTABLEKS                       R9 R6 K13 ["isDirty"]
       61 SETTABLEKS                       R9 R8 K13 ["isDirty"]
       63 SETTABLEKS                       R8 R7 K11 ["data"]
       65 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       67 MOVE                             R9 R0
       68 MOVE                             R10 R7
       69 GETIMPORT                        R8 K16 [table.insert]
       71 CALL                             R8 2 0
       72 FORGLOOP                         R2 2 ; [-47]
       74 DUPTABLE                         R2 K18 [{"items"}]
       75 SETTABLEKS                       R0 R2 K17 ["items"]
       77 RETURN                           R2 1

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
       15 GETUPVAL                         R4 3
       16 CALL                             R4 0 1
       17 JUMPIFNOT                        R4 ; [+8]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K3 ["useContext"]
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K4 ["Context"]
       24 CALL                             R3 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R3
       27 GETUPVAL                         R5 3
       28 CALL                             R5 0 1
       29 JUMPIFNOT                        R5 ; [+15]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K3 ["useContext"]
       33 GETIMPORT                        R5 K6 [require]
       35 GETUPVAL                         R6 5
       36 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       38 GETTABLEKS                       R6 R6 K8 ["GraphPlayedContext"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R5 R5 K4 ["Context"]
       43 CALL                             R4 1 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R4
       46 GETUPVAL                         R5 6
       47 CALL                             R5 0 1
       48 GETUPVAL                         R6 7
       49 CALL                             R6 0 1
       50 LOADNIL                          R7
       51 GETUPVAL                         R8 3
       52 CALL                             R8 0 1
       53 JUMPIFNOT                        R8 ; [+4]
       54 GETTABLEKS                       R8 R4 K9 ["isPreviewRunning"]
       56 JUMPIFNOT                        R8 ; [+1]
       57 LOADB                            R7 1
       58 GETUPVAL                         R9 3
       59 CALL                             R9 0 1
       60 JUMPIFNOT                        R9 ; [+7]
       61 GETUPVAL                         R8 8
       62 GETTABLEKS                       R8 R8 K10 ["useSignalState"]
       64 GETTABLEKS                       R9 R3 K11 ["observeSelectedGraphInstanceId"]
       66 CALL                             R8 1 1
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R8 R2 K12 ["selectedGraphId_DEPRECATED"]
       70 GETUPVAL                         R9 1
       71 GETTABLEKS                       R9 R9 K13 ["useMemo"]
       73 NEWCLOSURE                       R10 P0
       74 CAPTURE                          UPVAL U9
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R8
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          REF R7
       79 NEWTABLE                         R11 0 3
       81 GETTABLEKS                       R12 R2 K14 ["graphItems"]
       83 MOVE                             R13 R8
       84 GETUPVAL                         R15 3
       85 CALL                             R15 0 1
       86 JUMPIFNOT                        R15 ; [+2]
       87 MOVE                             R14 R7
       88 JUMP                             ; [+1]
       89 LOADNIL                          R14
       90 SETLIST                          R11 R12 3 [1]
       92 CALL                             R9 2 1
       93 GETUPVAL                         R10 1
       94 GETTABLEKS                       R10 R10 K13 ["useMemo"]
       96 NEWCLOSURE                       R11 P1
       97 CAPTURE                          UPVAL U10
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R6
      101 NEWTABLE                         R12 0 3
      103 MOVE                             R13 R5
      104 MOVE                             R14 R6
      105 MOVE                             R15 R1
      106 SETLIST                          R12 R13 3 [1]
      108 CALL                             R10 2 1
      109 GETUPVAL                         R11 1
      110 GETTABLEKS                       R11 R11 K15 ["useCallback"]
      112 DUPCLOSURE                       R12 K16 [PROTO_3]
      113 NEWTABLE                         R13 0 0
      115 CALL                             R11 2 1
      116 GETUPVAL                         R12 1
      117 GETTABLEKS                       R12 R12 K15 ["useCallback"]
      119 NEWCLOSURE                       R13 P3
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R2
      122 CAPTURE                          UPVAL U10
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R6
      125 NEWTABLE                         R14 0 4
      127 GETTABLEKS                       R15 R2 K17 ["renameGraphByIdAsync"]
      129 MOVE                             R16 R8
      130 MOVE                             R17 R5
      131 MOVE                             R18 R6
      132 SETLIST                          R14 R15 4 [1]
      134 CALL                             R12 2 1
      135 GETUPVAL                         R13 1
      136 GETTABLEKS                       R13 R13 K13 ["useMemo"]
      138 NEWCLOSURE                       R14 P4
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R10
      141 NEWTABLE                         R15 0 2
      143 MOVE                             R16 R9
      144 MOVE                             R17 R10
      145 SETLIST                          R15 R16 2 [1]
      147 CALL                             R13 2 1
      148 GETUPVAL                         R14 1
      149 GETTABLEKS                       R14 R14 K18 ["createElement"]
      151 GETUPVAL                         R15 11
      152 DUPTABLE                         R16 K28 [{"placeholder", "size", "width", "Value", "LayoutOrder", "Options", "onChanged", "formatAsString", "isDisabled"}]
      153 LOADK                            R19 K29 ["Common"]
      154 LOADK                            R20 K30 ["AnimationEditor"]
      155 LOADK                            R21 K31 ["Menu"]
      156 LOADK                            R22 K32 ["NoGraphName"]
      157 NAMECALL                         R17 R1 K33 ["getExternalText"]
      159 CALL                             R17 5 1
      160 SETTABLEKS                       R17 R16 K19 ["placeholder"]
      162 GETUPVAL                         R17 12
      163 GETTABLEKS                       R17 R17 K34 ["Enums"]
      165 GETTABLEKS                       R17 R17 K35 ["InputSize"]
      167 GETTABLEKS                       R17 R17 K36 ["XSmall"]
      169 SETTABLEKS                       R17 R16 K20 ["size"]
      171 GETIMPORT                        R17 K39 [UDim.new]
      173 LOADN                            R18 0
      174 GETUPVAL                         R19 12
      175 GETTABLEKS                       R19 R19 K40 ["Hooks"]
      177 GETTABLEKS                       R19 R19 K41 ["useScaledValue"]
      179 GETUPVAL                         R20 13
      180 GETTABLEKS                       R20 R20 K42 ["PARAMETER_PANE_WIDTH"]
      182 CALL                             R19 1 -1
      183 CALL                             R17 -1 1
      184 SETTABLEKS                       R17 R16 K21 ["width"]
      186 SETTABLEKS                       R8 R16 K22 ["Value"]
      188 GETTABLEKS                       R17 R0 K23 ["LayoutOrder"]
      190 SETTABLEKS                       R17 R16 K23 ["LayoutOrder"]
      192 SETTABLEKS                       R13 R16 K24 ["Options"]
      194 SETTABLEKS                       R12 R16 K25 ["onChanged"]
      196 SETTABLEKS                       R11 R16 K26 ["formatAsString"]
      198 GETUPVAL                         R18 3
      199 CALL                             R18 0 1
      200 JUMPIFNOT                        R18 ; [+2]
      201 MOVE                             R17 R7
      202 JUMP                             ; [+1]
      203 LOADNIL                          R17
      204 SETTABLEKS                       R17 R16 K27 ["isDisabled"]
      206 CALL                             R14 2 -1
      207 CLOSEUPVALS                      R7
      208 RETURN                           R14 -1

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
       55 GETTABLEKS                       R8 R0 K12 ["Contexts"]
       57 GETTABLEKS                       R8 R8 K17 ["SelectedGraphContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Parent"]
       64 GETTABLEKS                       R9 R9 K18 ["SignalsReact"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K19 ["Flags"]
       71 GETTABLEKS                       R10 R10 K20 ["getFFlagAnimGraphUISortGraphElements"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K19 ["Flags"]
       78 GETTABLEKS                       R11 R11 K21 ["getFFlagAnimGraphUI_RunTimeDebug"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K10 ["Components"]
       85 GETTABLEKS                       R12 R12 K14 ["NodeView"]
       87 GETTABLEKS                       R12 R12 K22 ["MenuActions"]
       89 GETTABLEKS                       R12 R12 K23 ["useNewGraph"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K10 ["Components"]
       96 GETTABLEKS                       R13 R13 K14 ["NodeView"]
       98 GETTABLEKS                       R13 R13 K22 ["MenuActions"]
      100 GETTABLEKS                       R13 R13 K24 ["useOpenGraph"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K27 [table.freeze]
      105 DUPTABLE                         R14 K32 [{["NEW"] = "new", ["OPEN"] = "open"}]
      106 CALL                             R13 1 1
      107 DUPCLOSURE                       R14 K33 [PROTO_7]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R0
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R6
      122 RETURN                           R14 1
