PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Value"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADK                            R0 K1 [""]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["Value"]
        9 FASTCALL1                        TOSTRING R1 ; [+2]
       10 GETIMPORT                        R0 K3 [tostring]
       12 CALL                             R0 1 1
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K1 ["Value"]
        4 ORK                              R2 R3 K0 [""]
        5 FASTCALL1                        TOSTRING R2 ; [+2]
        6 GETIMPORT                        R1 K3 [tostring]
        8 CALL                             R1 1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["getValue"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Options"]
        5 JUMPIFNOT                        R1 ; [+19]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["Options"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 DUPTABLE                         R8 K3 [{"id", "text"}]
       13 SETTABLEKS                       R5 R8 K1 ["id"]
       15 SETTABLEKS                       R5 R8 K2 ["text"]
       17 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       19 MOVE                             R7 R0
       20 GETIMPORT                        R6 K6 [table.insert]
       22 CALL                             R6 2 0
       23 FORGLOOP                         R1 2 ; [-12]
       25 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnChanged"]
        3 MOVE                             R3 R0
        4 JUMPIF                           R3 ; [+3]
        5 MOVE                             R3 R1
        6 JUMPIF                           R3 ; [+1]
        7 LOADK                            R3 K1 [""]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["Value"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["useBinding"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 2
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+13]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R6 0 1
       28 GETTABLEKS                       R7 R0 K1 ["Value"]
       30 SETLIST                          R6 R7 1 [1]
       32 CALL                             R4 2 0
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       36 NEWCLOSURE                       R5 P2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R6 0 2
       41 GETTABLEKS                       R7 R0 K5 ["OnChanged"]
       43 MOVE                             R8 R2
       44 SETLIST                          R6 R7 2 [1]
       46 CALL                             R4 2 1
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K0 ["useMemo"]
       50 NEWCLOSURE                       R6 P3
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R7 0 1
       54 GETTABLEKS                       R8 R0 K6 ["Options"]
       56 SETLIST                          R7 R8 1 [1]
       58 CALL                             R5 2 1
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       62 NEWCLOSURE                       R7 P4
       63 CAPTURE                          VAL R0
       64 NEWTABLE                         R8 0 1
       66 GETTABLEKS                       R9 R0 K5 ["OnChanged"]
       68 SETLIST                          R8 R9 1 [1]
       70 CALL                             R6 2 1
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K7 ["createElement"]
       74 GETUPVAL                         R8 2
       75 GETTABLEKS                       R8 R8 K8 ["View"]
       77 DUPTABLE                         R9 K12 [{"tag", "LayoutOrder", "testId"}]
       78 GETUPVAL                         R10 2
       79 GETTABLEKS                       R10 R10 K13 ["Hooks"]
       81 GETTABLEKS                       R10 R10 K14 ["useDefaultTags"]
       83 GETTABLEKS                       R11 R0 K15 ["tags"]
       85 LOADK                            R12 K16 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K9 ["tag"]
       89 GETTABLEKS                       R10 R0 K10 ["LayoutOrder"]
       91 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       93 GETTABLEKS                       R10 R0 K11 ["testId"]
       95 SETTABLEKS                       R10 R9 K11 ["testId"]
       97 DUPTABLE                         R10 K20 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R11 R11 K7 ["createElement"]
      101 GETUPVAL                         R12 3
      102 DUPTABLE                         R13 K23 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
      103 NEWTABLE                         R14 1 0
      105 LOADB                            R15 1
      106 SETTABLEKS                       R15 R14 K24 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
      108 SETTABLEKS                       R14 R13 K9 ["tag"]
      110 GETTABLEKS                       R14 R0 K25 ["Label"]
      112 SETTABLEKS                       R14 R13 K21 ["Text"]
      114 LOADN                            R14 1
      115 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      117 GETTABLEKS                       R15 R0 K27 ["IsDisabled"]
      119 ORK                              R14 R15 K26 [False]
      120 SETTABLEKS                       R14 R13 K22 ["isDisabled"]
      122 CALL                             R11 2 1
      123 SETTABLEKS                       R11 R10 K17 ["CompositorNodeInputLabel"]
      125 GETUPVAL                         R12 1
      126 CALL                             R12 0 1
      127 JUMPIFNOT                        R12 ; [+78]
      128 GETUPVAL                         R11 0
      129 GETTABLEKS                       R11 R11 K7 ["createElement"]
      131 GETUPVAL                         R12 4
      132 DUPTABLE                         R13 K32 [{"size", "width", "Value", "isDisabled", "LayoutOrder", "onChanged", "onOptionSelected", "Options"}]
      133 GETUPVAL                         R14 2
      134 GETTABLEKS                       R14 R14 K33 ["Enums"]
      136 GETTABLEKS                       R14 R14 K34 ["InputSize"]
      138 GETTABLEKS                       R14 R14 K35 ["XSmall"]
      140 SETTABLEKS                       R14 R13 K28 ["size"]
      142 GETIMPORT                        R14 K38 [UDim.new]
      144 LOADN                            R15 0
      145 LOADN                            R16 90
      146 CALL                             R14 2 1
      147 SETTABLEKS                       R14 R13 K29 ["width"]
      149 GETTABLEKS                       R15 R0 K27 ["IsDisabled"]
      151 JUMPIFNOT                        R15 ; [+3]
      152 GETTABLEKS                       R14 R0 K1 ["Value"]
      154 JUMP                             ; [+8]
      155 GETUPVAL                         R15 5
      156 CALL                             R15 0 1
      157 JUMPIFNOT                        R15 ; [+4]
      158 NAMECALL                         R14 R2 K39 ["getValue"]
      160 CALL                             R14 1 1
      161 JUMP                             ; [+1]
      162 MOVE                             R14 R2
      163 SETTABLEKS                       R14 R13 K1 ["Value"]
      165 GETTABLEKS                       R14 R0 K40 ["IsParameterized"]
      167 JUMPIF                           R14 ; [+4]
      168 GETTABLEKS                       R14 R0 K27 ["IsDisabled"]
      170 JUMPIF                           R14 ; [+1]
      171 LOADB                            R14 0
      172 SETTABLEKS                       R14 R13 K22 ["isDisabled"]
      174 LOADN                            R14 2
      175 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      177 GETUPVAL                         R15 5
      178 CALL                             R15 0 1
      179 JUMPIFNOT                        R15 ; [+2]
      180 MOVE                             R14 R6
      181 JUMP                             ; [+2]
      182 GETTABLEKS                       R14 R0 K5 ["OnChanged"]
      184 SETTABLEKS                       R14 R13 K30 ["onChanged"]
      186 GETUPVAL                         R15 5
      187 CALL                             R15 0 1
      188 JUMPIFNOT                        R15 ; [+2]
      189 LOADNIL                          R14
      190 JUMP                             ; [+2]
      191 GETTABLEKS                       R14 R0 K5 ["OnChanged"]
      193 SETTABLEKS                       R14 R13 K31 ["onOptionSelected"]
      195 GETUPVAL                         R15 5
      196 CALL                             R15 0 1
      197 JUMPIFNOT                        R15 ; [+2]
      198 MOVE                             R14 R5
      199 JUMP                             ; [+2]
      200 GETTABLEKS                       R14 R0 K6 ["Options"]
      202 SETTABLEKS                       R14 R13 K6 ["Options"]
      204 CALL                             R11 2 1
      205 JUMP                             ; [+60]
      206 GETUPVAL                         R11 0
      207 GETTABLEKS                       R11 R11 K7 ["createElement"]
      209 GETUPVAL                         R12 2
      210 GETTABLEKS                       R12 R12 K41 ["TextInput"]
      212 DUPTABLE                         R13 K45 [{"tag", "size", "width", "label", "text", "isDisabled", "LayoutOrder", "onChanged", "onFocusLost"}]
      213 LOADK                            R14 K46 ["shrink"]
      214 SETTABLEKS                       R14 R13 K9 ["tag"]
      216 GETUPVAL                         R14 2
      217 GETTABLEKS                       R14 R14 K33 ["Enums"]
      219 GETTABLEKS                       R14 R14 K34 ["InputSize"]
      221 GETTABLEKS                       R14 R14 K35 ["XSmall"]
      223 SETTABLEKS                       R14 R13 K28 ["size"]
      225 GETIMPORT                        R14 K38 [UDim.new]
      227 LOADN                            R15 0
      228 LOADN                            R16 90
      229 CALL                             R14 2 1
      230 SETTABLEKS                       R14 R13 K29 ["width"]
      232 LOADK                            R14 K47 [""]
      233 SETTABLEKS                       R14 R13 K42 ["label"]
      235 GETTABLEKS                       R15 R0 K27 ["IsDisabled"]
      237 JUMPIFNOT                        R15 ; [+3]
      238 GETTABLEKS                       R14 R0 K1 ["Value"]
      240 JUMP                             ; [+8]
      241 GETUPVAL                         R15 5
      242 CALL                             R15 0 1
      243 JUMPIFNOT                        R15 ; [+4]
      244 NAMECALL                         R14 R2 K39 ["getValue"]
      246 CALL                             R14 1 1
      247 JUMP                             ; [+1]
      248 MOVE                             R14 R2
      249 SETTABLEKS                       R14 R13 K43 ["text"]
      251 GETTABLEKS                       R14 R0 K40 ["IsParameterized"]
      253 JUMPIF                           R14 ; [+2]
      254 GETTABLEKS                       R14 R0 K27 ["IsDisabled"]
      256 SETTABLEKS                       R14 R13 K22 ["isDisabled"]
      258 LOADN                            R14 2
      259 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      261 SETTABLEKS                       R3 R13 K30 ["onChanged"]
      263 SETTABLEKS                       R4 R13 K44 ["onFocusLost"]
      265 CALL                             R11 2 1
      266 SETTABLEKS                       R11 R10 K18 ["Input"]
      268 GETUPVAL                         R11 0
      269 GETTABLEKS                       R11 R11 K7 ["createElement"]
      271 LOADK                            R12 K48 ["Folder"]
      272 NEWTABLE                         R13 0 0
      274 GETTABLEKS                       R14 R0 K49 ["children"]
      276 CALL                             R11 3 1
      277 SETTABLEKS                       R11 R10 K19 ["PinChildren"]
      279 CALL                             R7 3 -1
      280 RETURN                           R7 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["ComboBox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["PropertyLabel"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Flags"]
       41 GETTABLEKS                       R6 R6 K13 ["getFFlagAnimGraphUIGraphComboBox"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Flags"]
       48 GETTABLEKS                       R7 R7 K14 ["getFFlagAnimGraphUISelectCombo"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K15 [PROTO_5]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 RETURN                           R7 1
