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
       19 JUMPIFLT                         R8 R6 ; [+52]
       21 GETUPVAL                         R8 1
       22 CALL                             R8 0 1
       23 JUMPIFNOT                        R8 ; [+6]
       24 GETTABLEKS                       R8 R7 K7 ["id"]
       26 GETUPVAL                         R9 2
       27 JUMPIFNOTEQ                      R8 R9 ; [+2]
       29 LOADB                            R2 1
       30 DUPTABLE                         R8 K12 [{"id", "text", "isChecked", "isDisabled", "data"}]
       31 GETTABLEKS                       R9 R7 K7 ["id"]
       33 SETTABLEKS                       R9 R8 K7 ["id"]
       35 GETTABLEKS                       R9 R7 K8 ["text"]
       37 SETTABLEKS                       R9 R8 K8 ["text"]
       39 GETTABLEKS                       R10 R7 K7 ["id"]
       41 GETUPVAL                         R11 2
       42 JUMPIFEQ                         R10 R11 ; [+2]
       44 LOADB                            R9 0 +1
       45 LOADB                            R9 1
       46 SETTABLEKS                       R9 R8 K9 ["isChecked"]
       48 GETUPVAL                         R10 3
       49 CALL                             R10 0 1
       50 JUMPIFNOT                        R10 ; [+2]
       51 GETUPVAL                         R9 4
       52 JUMP                             ; [+1]
       53 LOADNIL                          R9
       54 SETTABLEKS                       R9 R8 K10 ["isDisabled"]
       56 DUPTABLE                         R9 K14 [{"isDirty"}]
       57 GETTABLEKS                       R10 R7 K13 ["isDirty"]
       59 SETTABLEKS                       R10 R9 K13 ["isDirty"]
       61 SETTABLEKS                       R9 R8 K11 ["data"]
       63 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       65 MOVE                             R10 R0
       66 MOVE                             R11 R8
       67 GETIMPORT                        R9 K16 [table.insert]
       69 CALL                             R9 2 0
       70 FORGLOOP                         R3 2 ; [-53]
       72 GETUPVAL                         R3 1
       73 CALL                             R3 0 1
       74 JUMPIFNOT                        R3 ; [+45]
       75 JUMPIF                           R2 ; [+44]
       76 GETUPVAL                         R3 2
       77 JUMPIFNOT                        R3 ; [+42]
       78 MOVE                             R3 R1
       79 LOADNIL                          R4
       80 LOADNIL                          R5
       81 FORGPREP                         R3
       82 GETTABLEKS                       R8 R7 K7 ["id"]
       84 GETUPVAL                         R9 2
       85 JUMPIFNOTEQ                      R8 R9 ; [+32]
       87 DUPTABLE                         R10 K18 [{["id"], ["text"], ["isChecked"] = True, ["isDisabled"], ["data"]}]
       88 GETTABLEKS                       R11 R7 K7 ["id"]
       90 SETTABLEKS                       R11 R10 K7 ["id"]
       92 GETTABLEKS                       R11 R7 K8 ["text"]
       94 SETTABLEKS                       R11 R10 K8 ["text"]
       96 GETUPVAL                         R12 3
       97 CALL                             R12 0 1
       98 JUMPIFNOT                        R12 ; [+2]
       99 GETUPVAL                         R11 4
      100 JUMP                             ; [+1]
      101 LOADNIL                          R11
      102 SETTABLEKS                       R11 R10 K10 ["isDisabled"]
      104 DUPTABLE                         R11 K14 [{"isDirty"}]
      105 GETTABLEKS                       R12 R7 K13 ["isDirty"]
      107 SETTABLEKS                       R12 R11 K13 ["isDirty"]
      109 SETTABLEKS                       R11 R10 K11 ["data"]
      111 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
      113 MOVE                             R9 R0
      114 GETIMPORT                        R8 K16 [table.insert]
      116 CALL                             R8 2 0
      117 JUMP                             ; [+2]
      118 FORGLOOP                         R3 2 ; [-37]
      120 DUPTABLE                         R3 K20 [{"items"}]
      121 SETTABLEKS                       R0 R3 K19 ["items"]
      123 RETURN                           R3 1

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
       74 CAPTURE                          VAL R2
       75 CAPTURE                          UPVAL U9
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
      179 GETUPVAL                         R21 13
      180 CALL                             R21 0 1
      181 JUMPIFNOT                        R21 ; [+2]
      182 LOADN                            R20 200
      183 JUMP                             ; [+3]
      184 GETUPVAL                         R20 14
      185 GETTABLEKS                       R20 R20 K42 ["PARAMETER_PANE_WIDTH"]
      187 CALL                             R19 1 -1
      188 CALL                             R17 -1 1
      189 SETTABLEKS                       R17 R16 K21 ["width"]
      191 SETTABLEKS                       R8 R16 K22 ["Value"]
      193 GETTABLEKS                       R17 R0 K23 ["LayoutOrder"]
      195 SETTABLEKS                       R17 R16 K23 ["LayoutOrder"]
      197 SETTABLEKS                       R13 R16 K24 ["Options"]
      199 SETTABLEKS                       R12 R16 K25 ["onChanged"]
      201 SETTABLEKS                       R11 R16 K26 ["formatAsString"]
      203 GETUPVAL                         R18 3
      204 CALL                             R18 0 1
      205 JUMPIFNOT                        R18 ; [+2]
      206 MOVE                             R17 R7
      207 JUMP                             ; [+1]
      208 LOADNIL                          R17
      209 SETTABLEKS                       R17 R16 K27 ["isDisabled"]
      211 CALL                             R14 2 -1
      212 CLOSEUPVALS                      R7
      213 RETURN                           R14 -1

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
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["NodeGraphing"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K10 ["Components"]
       53 GETTABLEKS                       R8 R8 K15 ["NodeView"]
       55 GETTABLEKS                       R8 R8 K16 ["ParameterPane"]
       57 GETTABLEKS                       R8 R8 K17 ["Constants"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K12 ["Contexts"]
       64 GETTABLEKS                       R9 R9 K18 ["SelectedGraphContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Parent"]
       71 GETTABLEKS                       R10 R10 K19 ["SignalsReact"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R10 R6 K20 ["getFFlagAnimGraphUIParametersPanePosition"]
       76 GETIMPORT                        R11 K5 [require]
       78 GETTABLEKS                       R12 R0 K21 ["Flags"]
       80 GETTABLEKS                       R12 R12 K22 ["getFFlagAnimGraphUI_FixDropdownSelectedName"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K5 [require]
       85 GETTABLEKS                       R13 R0 K21 ["Flags"]
       87 GETTABLEKS                       R13 R13 K23 ["getFFlagAnimGraphUI_RunTimeDebug"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R14 R0 K10 ["Components"]
       94 GETTABLEKS                       R14 R14 K15 ["NodeView"]
       96 GETTABLEKS                       R14 R14 K24 ["MenuActions"]
       98 GETTABLEKS                       R14 R14 K25 ["useNewGraph"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K5 [require]
      103 GETTABLEKS                       R15 R0 K10 ["Components"]
      105 GETTABLEKS                       R15 R15 K15 ["NodeView"]
      107 GETTABLEKS                       R15 R15 K24 ["MenuActions"]
      109 GETTABLEKS                       R15 R15 K26 ["useOpenGraph"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K29 [table.freeze]
      114 DUPTABLE                         R16 K34 [{["NEW"] = "new", ["OPEN"] = "open"}]
      115 CALL                             R15 1 1
      116 DUPCLOSURE                       R16 K35 [PROTO_7]
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R7
      132 RETURN                           R16 1
