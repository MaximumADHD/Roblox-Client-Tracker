PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["interactable"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["value"]
        7 JUMPIFNOTEQKNIL                  R0 ; [+11]
        9 GETUPVAL                         R0 1
       10 JUMPIFEQKNIL                     R0 ; [+8]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K2 ["setValue"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K3 ["id"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["interactable"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["setValue"]
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K3 [tostring]
       12 CALL                             R2 1 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["definition"]
        2 GETTABLEKS                       R1 R1 K1 ["selectOptions"]
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 GETTABLEKS                       R2 R0 K2 ["getRowValue"]
        9 GETTABLEN                        R3 R1 1
       10 GETTABLEKS                       R4 R0 K3 ["value"]
       12 JUMPIF                           R4 ; [+5]
       13 JUMPIFNOT                        R3 ; [+3]
       14 GETTABLEKS                       R4 R3 K4 ["id"]
       16 JUMPIF                           R4 ; [+1]
       17 LOADK                            R4 K5 [""]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K6 ["useEffect"]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R7 0 4
       26 GETTABLEKS                       R8 R0 K7 ["interactable"]
       28 GETTABLEKS                       R9 R0 K3 ["value"]
       30 GETTABLEKS                       R10 R0 K8 ["setValue"]
       32 MOVE                             R11 R3
       33 SETLIST                          R7 R8 4 [1]
       35 CALL                             R5 2 0
       36 NEWTABLE                         R6 0 0
       38 DUPTABLE                         R7 K10 [{"__index"}]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R8 R7 K9 ["__index"]
       43 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       45 GETIMPORT                        R5 K12 [setmetatable]
       47 CALL                             R5 2 1
       48 NEWTABLE                         R6 0 0
       50 MOVE                             R7 R1
       51 LOADNIL                          R8
       52 LOADNIL                          R9
       53 FORGPREP                         R7
       54 GETTABLEKS                       R12 R0 K7 ["interactable"]
       56 JUMPIFNOT                        R12 ; [+10]
       57 GETTABLEKS                       R12 R11 K13 ["badgeWhen"]
       59 JUMPIFNOT                        R12 ; [+7]
       60 GETUPVAL                         R12 1
       61 GETTABLEKS                       R12 R12 K14 ["evaluateValidation"]
       63 GETTABLEKS                       R13 R11 K13 ["badgeWhen"]
       65 MOVE                             R14 R5
       66 CALL                             R12 2 1
       67 GETTABLEKS                       R13 R11 K15 ["text"]
       69 JUMPIF                           R13 ; [+2]
       70 GETTABLEKS                       R13 R11 K4 ["id"]
       72 JUMPIFNOT                        R12 ; [+4]
       73 MOVE                             R15 R13
       74 LOADK                            R16 K16 ["  ⚠"]
       75 CONCAT                           R14 R15 R16
       76 JUMP                             ; [+1]
       77 MOVE                             R14 R13
       78 DUPTABLE                         R17 K17 [{"id", "text"}]
       79 GETTABLEKS                       R18 R11 K4 ["id"]
       81 SETTABLEKS                       R18 R17 K4 ["id"]
       83 SETTABLEKS                       R14 R17 K15 ["text"]
       85 FASTCALL2                        TABLE_INSERT R6 R17 ; [+4]
       87 MOVE                             R16 R6
       88 GETIMPORT                        R15 K20 [table.insert]
       90 CALL                             R15 2 0
       91 FORGLOOP                         R7 2 ; [-38]
       93 GETUPVAL                         R7 0
       94 GETTABLEKS                       R7 R7 K21 ["useCallback"]
       96 NEWCLOSURE                       R8 P2
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R9 0 2
      100 GETTABLEKS                       R10 R0 K7 ["interactable"]
      102 GETTABLEKS                       R11 R0 K8 ["setValue"]
      104 SETLIST                          R9 R10 2 [1]
      106 CALL                             R7 2 1
      107 GETTABLEKS                       R8 R0 K0 ["definition"]
      109 GETTABLEKS                       R8 R8 K22 ["infoPopover"]
      111 GETUPVAL                         R9 2
      112 GETTABLEKS                       R9 R9 K23 ["Hooks"]
      114 GETTABLEKS                       R9 R9 K24 ["useTokens"]
      116 CALL                             R9 0 1
      117 GETUPVAL                         R10 3
      118 CALL                             R10 0 1
      119 GETUPVAL                         R11 4
      120 GETUPVAL                         R12 5
      121 DUPTABLE                         R13 K28 [{["tag"] = "row align-y-center gap-xsmall auto-y", ["LayoutOrder"]}]
      122 GETTABLEKS                       R14 R0 K27 ["LayoutOrder"]
      124 SETTABLEKS                       R14 R13 K27 ["LayoutOrder"]
      126 DUPTABLE                         R14 K31 [{"Control", "Info"}]
      127 LENGTH                           R16 R6
      128 LOADN                            R17 0
      129 JUMPIFNOTLT                      R17 R16 ; [+25]
      131 GETUPVAL                         R15 4
      132 GETUPVAL                         R16 6
      133 DUPTABLE                         R17 K35 [{"segments", "value", "onActivated", "size", "LayoutOrder"}]
      134 SETTABLEKS                       R6 R17 K32 ["segments"]
      136 SETTABLEKS                       R4 R17 K3 ["value"]
      138 SETTABLEKS                       R7 R17 K33 ["onActivated"]
      140 GETUPVAL                         R18 2
      141 GETTABLEKS                       R18 R18 K36 ["Enums"]
      143 GETTABLEKS                       R18 R18 K37 ["InputSize"]
      145 GETTABLEKS                       R18 R18 K38 ["Small"]
      147 SETTABLEKS                       R18 R17 K34 ["size"]
      149 MOVE                             R18 R10
      150 CALL                             R18 0 1
      151 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      153 CALL                             R15 2 1
      154 JUMPIF                           R15 ; [+1]
      155 LOADNIL                          R15
      156 SETTABLEKS                       R15 R14 K29 ["Control"]
      158 JUMPIFNOT                        R8 ; [+53]
      159 GETUPVAL                         R15 4
      160 GETUPVAL                         R16 7
      161 DUPTABLE                         R17 K40 [{["title"] = "", ["text"], ["LayoutOrder"]}]
      162 GETTABLEKS                       R18 R8 K41 ["body"]
      164 SETTABLEKS                       R18 R17 K15 ["text"]
      166 MOVE                             R18 R10
      167 CALL                             R18 0 1
      168 SETTABLEKS                       R18 R17 K27 ["LayoutOrder"]
      170 DUPTABLE                         R18 K43 [{"Anchor"}]
      171 GETUPVAL                         R19 4
      172 GETUPVAL                         R20 8
      173 DUPTABLE                         R21 K47 [{"name", "size", "style", "testId"}]
      174 GETUPVAL                         R22 2
      175 GETTABLEKS                       R22 R22 K36 ["Enums"]
      177 GETTABLEKS                       R22 R22 K48 ["IconName"]
      179 GETTABLEKS                       R22 R22 K49 ["CircleI"]
      181 SETTABLEKS                       R22 R21 K44 ["name"]
      183 GETUPVAL                         R22 2
      184 GETTABLEKS                       R22 R22 K36 ["Enums"]
      186 GETTABLEKS                       R22 R22 K50 ["IconSize"]
      188 GETTABLEKS                       R22 R22 K51 ["XSmall"]
      190 SETTABLEKS                       R22 R21 K34 ["size"]
      192 GETTABLEKS                       R22 R9 K52 ["Color"]
      194 GETTABLEKS                       R22 R22 K53 ["Content"]
      196 GETTABLEKS                       R22 R22 K54 ["Default"]
      198 SETTABLEKS                       R22 R21 K45 ["style"]
      200 GETUPVAL                         R22 9
      201 GETTABLEKS                       R22 R22 K55 ["PropertyRow"]
      203 GETTABLEKS                       R22 R22 K56 ["InfoTooltip"]
      205 SETTABLEKS                       R22 R21 K46 ["testId"]
      207 CALL                             R19 2 1
      208 SETTABLEKS                       R19 R18 K42 ["Anchor"]
      210 CALL                             R15 3 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R15
      213 SETTABLEKS                       R15 R14 K30 ["Info"]
      215 CALL                             R11 3 -1
      216 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETIMPORT                        R6 K1 [script]
       28 GETTABLEKS                       R6 R6 K4 ["Parent"]
       30 GETTABLEKS                       R6 R6 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K10 ["PropertyRowTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Util"]
       39 GETTABLEKS                       R7 R7 K12 ["TestIds"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Util"]
       46 GETTABLEKS                       R8 R8 K13 ["AskInput"]
       48 GETTABLEKS                       R8 R8 K14 ["Validation"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R2 K15 ["Icon"]
       53 GETTABLEKS                       R9 R2 K16 ["SegmentedControl"]
       55 GETTABLEKS                       R10 R2 K17 ["Tooltip"]
       57 GETTABLEKS                       R11 R2 K18 ["View"]
       59 GETTABLEKS                       R12 R4 K19 ["createNextOrder"]
       61 GETTABLEKS                       R13 R3 K20 ["createElement"]
       63 DUPCLOSURE                       R14 K21 [PROTO_3]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R13
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R6
       74 RETURN                           R14 1
