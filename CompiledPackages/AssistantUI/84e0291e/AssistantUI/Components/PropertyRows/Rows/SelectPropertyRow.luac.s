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
      121 DUPTABLE                         R13 K27 [{"tag", "LayoutOrder"}]
      122 GETUPVAL                         R15 6
      123 GETTABLEKS                       R15 R15 K28 ["FFlagAssistantSharedVector3Input"]
      125 JUMPIFNOT                        R15 ; [+2]
      126 LOADK                            R14 K29 ["row align-y-center gap-xsmall size-full-0 auto-y clip"]
      127 JUMP                             ; [+1]
      128 LOADK                            R14 K30 ["row align-y-center gap-xsmall auto-y"]
      129 SETTABLEKS                       R14 R13 K25 ["tag"]
      131 GETTABLEKS                       R14 R0 K26 ["LayoutOrder"]
      133 SETTABLEKS                       R14 R13 K26 ["LayoutOrder"]
      135 DUPTABLE                         R14 K33 [{"Control", "Info"}]
      136 LENGTH                           R16 R6
      137 LOADN                            R17 0
      138 JUMPIFNOTLT                      R17 R16 ; [+49]
      140 GETUPVAL                         R15 4
      141 GETUPVAL                         R16 7
      142 DUPTABLE                         R17 K38 [{"segments", "value", "onActivated", "size", "fillBehavior", "tag", "LayoutOrder"}]
      143 SETTABLEKS                       R6 R17 K34 ["segments"]
      145 SETTABLEKS                       R4 R17 K3 ["value"]
      147 SETTABLEKS                       R7 R17 K35 ["onActivated"]
      149 GETUPVAL                         R18 2
      150 GETTABLEKS                       R18 R18 K39 ["Enums"]
      152 GETTABLEKS                       R18 R18 K40 ["InputSize"]
      154 GETTABLEKS                       R18 R18 K41 ["Small"]
      156 SETTABLEKS                       R18 R17 K36 ["size"]
      158 GETUPVAL                         R19 6
      159 GETTABLEKS                       R19 R19 K28 ["FFlagAssistantSharedVector3Input"]
      161 JUMPIFNOT                        R19 ; [+8]
      162 GETUPVAL                         R18 2
      163 GETTABLEKS                       R18 R18 K39 ["Enums"]
      165 GETTABLEKS                       R18 R18 K42 ["FillBehavior"]
      167 GETTABLEKS                       R18 R18 K43 ["Fill"]
      169 JUMP                             ; [+1]
      170 LOADNIL                          R18
      171 SETTABLEKS                       R18 R17 K37 ["fillBehavior"]
      173 GETUPVAL                         R19 6
      174 GETTABLEKS                       R19 R19 K28 ["FFlagAssistantSharedVector3Input"]
      176 JUMPIFNOT                        R19 ; [+2]
      177 LOADK                            R18 K44 ["fill"]
      178 JUMP                             ; [+1]
      179 LOADNIL                          R18
      180 SETTABLEKS                       R18 R17 K25 ["tag"]
      182 MOVE                             R18 R10
      183 CALL                             R18 0 1
      184 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      186 CALL                             R15 2 1
      187 JUMPIF                           R15 ; [+1]
      188 LOADNIL                          R15
      189 SETTABLEKS                       R15 R14 K31 ["Control"]
      191 JUMPIFNOT                        R8 ; [+53]
      192 GETUPVAL                         R15 4
      193 GETUPVAL                         R16 8
      194 DUPTABLE                         R17 K46 [{["title"] = "", ["text"], ["LayoutOrder"]}]
      195 GETTABLEKS                       R18 R8 K47 ["body"]
      197 SETTABLEKS                       R18 R17 K15 ["text"]
      199 MOVE                             R18 R10
      200 CALL                             R18 0 1
      201 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      203 DUPTABLE                         R18 K49 [{"Anchor"}]
      204 GETUPVAL                         R19 4
      205 GETUPVAL                         R20 9
      206 DUPTABLE                         R21 K53 [{"name", "size", "style", "testId"}]
      207 GETUPVAL                         R22 2
      208 GETTABLEKS                       R22 R22 K39 ["Enums"]
      210 GETTABLEKS                       R22 R22 K54 ["IconName"]
      212 GETTABLEKS                       R22 R22 K55 ["CircleI"]
      214 SETTABLEKS                       R22 R21 K50 ["name"]
      216 GETUPVAL                         R22 2
      217 GETTABLEKS                       R22 R22 K39 ["Enums"]
      219 GETTABLEKS                       R22 R22 K56 ["IconSize"]
      221 GETTABLEKS                       R22 R22 K57 ["XSmall"]
      223 SETTABLEKS                       R22 R21 K36 ["size"]
      225 GETTABLEKS                       R22 R9 K58 ["Color"]
      227 GETTABLEKS                       R22 R22 K59 ["Content"]
      229 GETTABLEKS                       R22 R22 K60 ["Default"]
      231 SETTABLEKS                       R22 R21 K51 ["style"]
      233 GETUPVAL                         R22 10
      234 GETTABLEKS                       R22 R22 K61 ["PropertyRow"]
      236 GETTABLEKS                       R22 R22 K62 ["InfoTooltip"]
      238 SETTABLEKS                       R22 R21 K52 ["testId"]
      240 CALL                             R19 2 1
      241 SETTABLEKS                       R19 R18 K48 ["Anchor"]
      243 CALL                             R15 3 1
      244 JUMP                             ; [+1]
      245 LOADNIL                          R15
      246 SETTABLEKS                       R15 R14 K32 ["Info"]
      248 CALL                             R11 3 -1
      249 RETURN                           R11 -1

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
       26 GETTABLEKS                       R6 R0 K10 ["Flags"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R7 R7 K4 ["Parent"]
       35 GETTABLEKS                       R7 R7 K4 ["Parent"]
       37 GETTABLEKS                       R7 R7 K11 ["PropertyRowTypes"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Util"]
       44 GETTABLEKS                       R8 R8 K13 ["TestIds"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K12 ["Util"]
       51 GETTABLEKS                       R9 R9 K14 ["AskInput"]
       53 GETTABLEKS                       R9 R9 K15 ["Validation"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R2 K16 ["Icon"]
       58 GETTABLEKS                       R10 R2 K17 ["SegmentedControl"]
       60 GETTABLEKS                       R11 R2 K18 ["Tooltip"]
       62 GETTABLEKS                       R12 R2 K19 ["View"]
       64 GETTABLEKS                       R13 R4 K20 ["createNextOrder"]
       66 GETTABLEKS                       R14 R3 K21 ["createElement"]
       68 DUPCLOSURE                       R15 K22 [PROTO_3]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R14
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R7
       80 RETURN                           R15 1
