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
       30 JUMPIFLT                         R7 R5 ; [+58]
       32 GETTABLEKS                       R8 R6 K7 ["isDirty"]
       34 JUMPIFNOT                        R8 ; [+5]
       35 GETTABLEKS                       R8 R6 K8 ["text"]
       37 LOADK                            R9 K9 [" *"]
       38 CONCAT                           R7 R8 R9
       39 JUMP                             ; [+2]
       40 GETTABLEKS                       R7 R6 K8 ["text"]
       42 DUPTABLE                         R8 K14 [{"id", "text", "isChecked", "isDisabled", "data"}]
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
       58 GETUPVAL                         R11 3
       59 JUMPIFEQ                         R10 R11 ; [+2]
       61 LOADB                            R9 0 +1
       62 LOADB                            R9 1
       63 SETTABLEKS                       R9 R8 K11 ["isChecked"]
       65 GETUPVAL                         R10 4
       66 CALL                             R10 0 1
       67 JUMPIFNOT                        R10 ; [+2]
       68 GETUPVAL                         R9 5
       69 JUMP                             ; [+1]
       70 LOADNIL                          R9
       71 SETTABLEKS                       R9 R8 K12 ["isDisabled"]
       73 DUPTABLE                         R9 K15 [{"isDirty"}]
       74 GETTABLEKS                       R10 R6 K7 ["isDirty"]
       76 SETTABLEKS                       R10 R9 K7 ["isDirty"]
       78 SETTABLEKS                       R9 R8 K13 ["data"]
       80 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       82 MOVE                             R10 R0
       83 MOVE                             R11 R8
       84 GETIMPORT                        R9 K17 [table.insert]
       86 CALL                             R9 2 0
       87 FORGLOOP                         R2 2 ; [-62]
       89 DUPTABLE                         R2 K19 [{"items"}]
       90 SETTABLEKS                       R0 R2 K18 ["items"]
       92 RETURN                           R2 1

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
       76 CAPTURE                          UPVAL U10
       77 CAPTURE                          VAL R8
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          REF R7
       80 NEWTABLE                         R11 0 3
       82 GETTABLEKS                       R12 R2 K14 ["graphItems"]
       84 MOVE                             R13 R8
       85 GETUPVAL                         R15 3
       86 CALL                             R15 0 1
       87 JUMPIFNOT                        R15 ; [+2]
       88 MOVE                             R14 R7
       89 JUMP                             ; [+1]
       90 LOADNIL                          R14
       91 SETLIST                          R11 R12 3 [1]
       93 CALL                             R9 2 1
       94 GETUPVAL                         R10 1
       95 GETTABLEKS                       R10 R10 K13 ["useMemo"]
       97 NEWCLOSURE                       R11 P1
       98 CAPTURE                          UPVAL U11
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R6
      102 NEWTABLE                         R12 0 3
      104 MOVE                             R13 R5
      105 MOVE                             R14 R6
      106 MOVE                             R15 R1
      107 SETLIST                          R12 R13 3 [1]
      109 CALL                             R10 2 1
      110 GETUPVAL                         R11 1
      111 GETTABLEKS                       R11 R11 K15 ["useCallback"]
      113 DUPCLOSURE                       R12 K16 [PROTO_3]
      114 NEWTABLE                         R13 0 0
      116 CALL                             R11 2 1
      117 GETUPVAL                         R12 1
      118 GETTABLEKS                       R12 R12 K15 ["useCallback"]
      120 NEWCLOSURE                       R13 P3
      121 CAPTURE                          UPVAL U11
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R2
      125 NEWTABLE                         R14 0 3
      127 GETTABLEKS                       R15 R2 K17 ["selectGraphByIdAsync"]
      129 MOVE                             R16 R5
      130 MOVE                             R17 R6
      131 SETLIST                          R14 R15 3 [1]
      133 CALL                             R12 2 1
      134 GETUPVAL                         R13 1
      135 GETTABLEKS                       R13 R13 K15 ["useCallback"]
      137 NEWCLOSURE                       R14 P4
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R2
      140 CAPTURE                          UPVAL U11
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R6
      143 NEWTABLE                         R15 0 4
      145 GETTABLEKS                       R16 R2 K18 ["renameGraphByIdAsync"]
      147 MOVE                             R17 R8
      148 MOVE                             R18 R5
      149 MOVE                             R19 R6
      150 SETLIST                          R15 R16 4 [1]
      152 CALL                             R13 2 1
      153 GETUPVAL                         R14 1
      154 GETTABLEKS                       R14 R14 K13 ["useMemo"]
      156 NEWCLOSURE                       R15 P5
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R10
      159 NEWTABLE                         R16 0 2
      161 MOVE                             R17 R9
      162 MOVE                             R18 R10
      163 SETLIST                          R16 R17 2 [1]
      165 CALL                             R14 2 1
      166 GETUPVAL                         R15 10
      167 CALL                             R15 0 1
      168 JUMPIFNOT                        R15 ; [+61]
      169 GETUPVAL                         R15 1
      170 GETTABLEKS                       R15 R15 K19 ["createElement"]
      172 GETUPVAL                         R16 12
      173 DUPTABLE                         R17 K29 [{"placeholder", "size", "width", "Value", "LayoutOrder", "Options", "onChanged", "formatAsString", "isDisabled"}]
      174 LOADK                            R20 K30 ["Common"]
      175 LOADK                            R21 K31 ["AnimationEditor"]
      176 LOADK                            R22 K32 ["Menu"]
      177 LOADK                            R23 K33 ["NoGraphName"]
      178 NAMECALL                         R18 R1 K34 ["getExternalText"]
      180 CALL                             R18 5 1
      181 SETTABLEKS                       R18 R17 K20 ["placeholder"]
      183 GETUPVAL                         R18 13
      184 GETTABLEKS                       R18 R18 K35 ["Enums"]
      186 GETTABLEKS                       R18 R18 K36 ["InputSize"]
      188 GETTABLEKS                       R18 R18 K37 ["XSmall"]
      190 SETTABLEKS                       R18 R17 K21 ["size"]
      192 GETIMPORT                        R18 K40 [UDim.new]
      194 LOADN                            R19 0
      195 GETUPVAL                         R20 13
      196 GETTABLEKS                       R20 R20 K41 ["Hooks"]
      198 GETTABLEKS                       R20 R20 K42 ["useScaledValue"]
      200 GETUPVAL                         R21 14
      201 GETTABLEKS                       R21 R21 K43 ["PARAMETER_PANE_WIDTH"]
      203 CALL                             R20 1 -1
      204 CALL                             R18 -1 1
      205 SETTABLEKS                       R18 R17 K22 ["width"]
      207 SETTABLEKS                       R8 R17 K23 ["Value"]
      209 GETTABLEKS                       R18 R0 K24 ["LayoutOrder"]
      211 SETTABLEKS                       R18 R17 K24 ["LayoutOrder"]
      213 SETTABLEKS                       R14 R17 K25 ["Options"]
      215 SETTABLEKS                       R13 R17 K26 ["onChanged"]
      217 SETTABLEKS                       R11 R17 K27 ["formatAsString"]
      219 GETUPVAL                         R19 3
      220 CALL                             R19 0 1
      221 JUMPIFNOT                        R19 ; [+2]
      222 MOVE                             R18 R7
      223 JUMP                             ; [+1]
      224 LOADNIL                          R18
      225 SETTABLEKS                       R18 R17 K28 ["isDisabled"]
      227 CALL                             R15 2 1
      228 CLOSEUPVALS                      R7
      229 RETURN                           R15 1
      230 GETUPVAL                         R15 1
      231 GETTABLEKS                       R15 R15 K19 ["createElement"]
      233 GETUPVAL                         R16 13
      234 GETTABLEKS                       R16 R16 K44 ["Dropdown"]
      236 GETTABLEKS                       R16 R16 K45 ["Root"]
      238 DUPTABLE                         R17 K50 [{"label", "LayoutOrder", "placeholder", "value", "size", "width", "onItemChanged", "items", "isDisabled"}]
      239 LOADK                            R18 K51 [""]
      240 SETTABLEKS                       R18 R17 K46 ["label"]
      242 GETTABLEKS                       R18 R0 K24 ["LayoutOrder"]
      244 SETTABLEKS                       R18 R17 K24 ["LayoutOrder"]
      246 LOADK                            R20 K30 ["Common"]
      247 LOADK                            R21 K31 ["AnimationEditor"]
      248 LOADK                            R22 K32 ["Menu"]
      249 LOADK                            R23 K33 ["NoGraphName"]
      250 NAMECALL                         R18 R1 K34 ["getExternalText"]
      252 CALL                             R18 5 1
      253 SETTABLEKS                       R18 R17 K20 ["placeholder"]
      255 SETTABLEKS                       R8 R17 K47 ["value"]
      257 GETUPVAL                         R18 13
      258 GETTABLEKS                       R18 R18 K35 ["Enums"]
      260 GETTABLEKS                       R18 R18 K36 ["InputSize"]
      262 GETTABLEKS                       R18 R18 K37 ["XSmall"]
      264 SETTABLEKS                       R18 R17 K21 ["size"]
      266 GETIMPORT                        R18 K40 [UDim.new]
      268 LOADN                            R19 0
      269 GETUPVAL                         R20 13
      270 GETTABLEKS                       R20 R20 K41 ["Hooks"]
      272 GETTABLEKS                       R20 R20 K42 ["useScaledValue"]
      274 GETUPVAL                         R21 14
      275 GETTABLEKS                       R21 R21 K43 ["PARAMETER_PANE_WIDTH"]
      277 CALL                             R20 1 -1
      278 CALL                             R18 -1 1
      279 SETTABLEKS                       R18 R17 K22 ["width"]
      281 SETTABLEKS                       R12 R17 K48 ["onItemChanged"]
      283 SETTABLEKS                       R14 R17 K49 ["items"]
      285 GETUPVAL                         R19 3
      286 CALL                             R19 0 1
      287 JUMPIFNOT                        R19 ; [+2]
      288 MOVE                             R18 R7
      289 JUMP                             ; [+1]
      290 LOADNIL                          R18
      291 SETTABLEKS                       R18 R17 K28 ["isDisabled"]
      293 CALL                             R15 2 1
      294 CLOSEUPVALS                      R7
      295 RETURN                           R15 1

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
       71 GETTABLEKS                       R10 R10 K20 ["getFFlagAnimGraphUIGraphComboBox"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K19 ["Flags"]
       78 GETTABLEKS                       R11 R11 K21 ["getFFlagAnimGraphUISortGraphElements"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K19 ["Flags"]
       85 GETTABLEKS                       R12 R12 K22 ["getFFlagAnimGraphUI_RunTimeDebug"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K10 ["Components"]
       92 GETTABLEKS                       R13 R13 K14 ["NodeView"]
       94 GETTABLEKS                       R13 R13 K23 ["MenuActions"]
       96 GETTABLEKS                       R13 R13 K24 ["useNewGraph"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K10 ["Components"]
      103 GETTABLEKS                       R14 R14 K14 ["NodeView"]
      105 GETTABLEKS                       R14 R14 K23 ["MenuActions"]
      107 GETTABLEKS                       R14 R14 K25 ["useOpenGraph"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K28 [table.freeze]
      112 DUPTABLE                         R15 K31 [{"NEW", "OPEN"}]
      113 LOADK                            R16 K32 ["new"]
      114 SETTABLEKS                       R16 R15 K29 ["NEW"]
      116 LOADK                            R16 K33 ["open"]
      117 SETTABLEKS                       R16 R15 K30 ["OPEN"]
      119 CALL                             R14 1 1
      120 DUPCLOSURE                       R15 K34 [PROTO_9]
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R0
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R6
      136 RETURN                           R15 1
