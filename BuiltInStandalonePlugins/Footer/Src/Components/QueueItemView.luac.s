PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onView"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onView"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["item"]
       10 GETTABLEKS                       R1 R1 K2 ["id"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Hooks"]
        5 GETTABLEKS                       R2 R2 K1 ["useTokens"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R5 0 2
       15 GETTABLEKS                       R6 R0 K3 ["onView"]
       17 GETTABLEKS                       R7 R0 K4 ["item"]
       19 GETTABLEKS                       R7 R7 K5 ["id"]
       21 SETLIST                          R5 R6 2 [1]
       23 CALL                             R3 2 1
       24 LOADNIL                          R4
       25 GETTABLEKS                       R5 R0 K4 ["item"]
       27 GETTABLEKS                       R5 R5 K6 ["status"]
       29 JUMPIFNOTEQKS                    R5 K7 ["Loading"] ; [+30]
       31 GETUPVAL                         R5 3
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K8 ["Progress"]
       35 DUPTABLE                         R7 K15 [{["shape"], ["size"], ["value"], ["LayoutOrder"], ["testId"] = "--queue-item-status-loading"}]
       36 GETUPVAL                         R8 4
       37 GETTABLEKS                       R8 R8 K16 ["Circle"]
       39 SETTABLEKS                       R8 R7 K9 ["shape"]
       41 GETUPVAL                         R8 5
       42 GETTABLEKS                       R8 R8 K17 ["Small"]
       44 SETTABLEKS                       R8 R7 K10 ["size"]
       46 GETTABLEKS                       R9 R0 K4 ["item"]
       48 GETTABLEKS                       R9 R9 K19 ["progress"]
       50 ORK                              R8 R9 K18 [0]
       51 SETTABLEKS                       R8 R7 K11 ["value"]
       53 MOVE                             R8 R1
       54 CALL                             R8 0 1
       55 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
       57 CALL                             R5 2 1
       58 MOVE                             R4 R5
       59 JUMP                             ; [+85]
       60 GETTABLEKS                       R5 R0 K4 ["item"]
       62 GETTABLEKS                       R5 R5 K6 ["status"]
       64 JUMPIFNOTEQKS                    R5 K20 ["Complete"] ; [+38]
       66 GETUPVAL                         R5 3
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K21 ["Icon"]
       70 DUPTABLE                         R7 K26 [{["name"], ["size"], ["variant"], ["style"], ["LayoutOrder"], ["testId"] = "--queue-item-status-complete"}]
       71 GETUPVAL                         R8 6
       72 GETTABLEKS                       R8 R8 K21 ["Icon"]
       74 GETTABLEKS                       R8 R8 K27 ["CircleCheck"]
       76 SETTABLEKS                       R8 R7 K22 ["name"]
       78 GETUPVAL                         R8 7
       79 GETTABLEKS                       R8 R8 K17 ["Small"]
       81 SETTABLEKS                       R8 R7 K10 ["size"]
       83 GETUPVAL                         R8 8
       84 GETTABLEKS                       R8 R8 K28 ["Filled"]
       86 SETTABLEKS                       R8 R7 K23 ["variant"]
       88 GETTABLEKS                       R8 R2 K29 ["Color"]
       90 GETTABLEKS                       R8 R8 K30 ["System"]
       92 GETTABLEKS                       R8 R8 K31 ["Success"]
       94 SETTABLEKS                       R8 R7 K24 ["style"]
       96 MOVE                             R8 R1
       97 CALL                             R8 0 1
       98 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
      100 CALL                             R5 2 1
      101 MOVE                             R4 R5
      102 JUMP                             ; [+42]
      103 GETTABLEKS                       R5 R0 K4 ["item"]
      105 GETTABLEKS                       R5 R5 K6 ["status"]
      107 JUMPIFNOTEQKS                    R5 K32 ["Error"] ; [+37]
      109 GETUPVAL                         R5 3
      110 GETUPVAL                         R6 1
      111 GETTABLEKS                       R6 R6 K21 ["Icon"]
      113 DUPTABLE                         R7 K34 [{["name"], ["size"], ["variant"], ["style"], ["LayoutOrder"], ["testId"] = "--queue-item-status-error"}]
      114 GETUPVAL                         R8 6
      115 GETTABLEKS                       R8 R8 K21 ["Icon"]
      117 GETTABLEKS                       R8 R8 K35 ["CircleX"]
      119 SETTABLEKS                       R8 R7 K22 ["name"]
      121 GETUPVAL                         R8 7
      122 GETTABLEKS                       R8 R8 K17 ["Small"]
      124 SETTABLEKS                       R8 R7 K10 ["size"]
      126 GETUPVAL                         R8 8
      127 GETTABLEKS                       R8 R8 K28 ["Filled"]
      129 SETTABLEKS                       R8 R7 K23 ["variant"]
      131 GETTABLEKS                       R8 R2 K29 ["Color"]
      133 GETTABLEKS                       R8 R8 K30 ["System"]
      135 GETTABLEKS                       R8 R8 K36 ["Alert"]
      137 SETTABLEKS                       R8 R7 K24 ["style"]
      139 MOVE                             R8 R1
      140 CALL                             R8 0 1
      141 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
      143 CALL                             R5 2 1
      144 MOVE                             R4 R5
      145 GETUPVAL                         R5 3
      146 GETUPVAL                         R6 1
      147 GETTABLEKS                       R6 R6 K37 ["View"]
      149 DUPTABLE                         R7 K41 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"], ["testId"] = "--queue-item"}]
      150 GETTABLEKS                       R8 R0 K12 ["LayoutOrder"]
      152 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
      154 DUPTABLE                         R8 K43 [{"ItemRow"}]
      155 GETUPVAL                         R9 3
      156 GETUPVAL                         R10 1
      157 GETTABLEKS                       R10 R10 K37 ["View"]
      159 DUPTABLE                         R11 K45 [{["tag"] = "row flex-x-between items-center gap-small size-full-0 auto-y padding-x-medium padding-y-xsmall", ["LayoutOrder"]}]
      160 MOVE                             R12 R1
      161 CALL                             R12 0 1
      162 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
      164 DUPTABLE                         R12 K48 [{"LeftContent", "ViewButton"}]
      165 GETUPVAL                         R13 3
      166 GETUPVAL                         R14 1
      167 GETTABLEKS                       R14 R14 K37 ["View"]
      169 DUPTABLE                         R15 K50 [{["tag"] = "row auto-xy items-center gap-small", ["LayoutOrder"]}]
      170 MOVE                             R16 R1
      171 CALL                             R16 0 1
      172 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      174 DUPTABLE                         R16 K53 [{"StatusIcon", "Message"}]
      175 SETTABLEKS                       R4 R16 K51 ["StatusIcon"]
      177 GETUPVAL                         R17 3
      178 GETUPVAL                         R18 1
      179 GETTABLEKS                       R18 R18 K54 ["Text"]
      181 DUPTABLE                         R19 K57 [{["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"], ["testId"] = "--queue-item-message"}]
      182 GETTABLEKS                       R20 R0 K4 ["item"]
      184 GETTABLEKS                       R20 R20 K58 ["message"]
      186 SETTABLEKS                       R20 R19 K54 ["Text"]
      188 MOVE                             R20 R1
      189 CALL                             R20 0 1
      190 SETTABLEKS                       R20 R19 K12 ["LayoutOrder"]
      192 CALL                             R17 2 1
      193 SETTABLEKS                       R17 R16 K52 ["Message"]
      195 CALL                             R13 3 1
      196 SETTABLEKS                       R13 R12 K46 ["LeftContent"]
      198 GETUPVAL                         R13 3
      199 GETUPVAL                         R14 1
      200 GETTABLEKS                       R14 R14 K59 ["Button"]
      202 DUPTABLE                         R15 K63 [{["text"] = "View", ["variant"], ["size"], ["onActivated"], ["LayoutOrder"], ["testId"] = "--queue-item-view-button"}]
      203 GETUPVAL                         R16 9
      204 GETTABLEKS                       R16 R16 K64 ["Link"]
      206 SETTABLEKS                       R16 R15 K23 ["variant"]
      208 GETUPVAL                         R16 10
      209 GETTABLEKS                       R16 R16 K65 ["XSmall"]
      211 SETTABLEKS                       R16 R15 K10 ["size"]
      213 SETTABLEKS                       R3 R15 K61 ["onActivated"]
      215 MOVE                             R16 R1
      216 CALL                             R16 0 1
      217 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      219 CALL                             R13 2 1
      220 SETTABLEKS                       R13 R12 K47 ["ViewButton"]
      222 CALL                             R9 3 1
      223 SETTABLEKS                       R9 R8 K42 ["ItemRow"]
      225 CALL                             R5 3 -1
      226 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Footer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["BuilderIcons"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["Util"]
       37 GETTABLEKS                       R5 R5 K12 ["counter"]
       39 GETTABLEKS                       R6 R4 K13 ["createElement"]
       41 GETTABLEKS                       R7 R2 K14 ["Enums"]
       43 GETTABLEKS                       R7 R7 K15 ["IconSize"]
       45 GETTABLEKS                       R8 R2 K14 ["Enums"]
       47 GETTABLEKS                       R8 R8 K16 ["IconVariant"]
       49 GETTABLEKS                       R9 R2 K14 ["Enums"]
       51 GETTABLEKS                       R9 R9 K17 ["ButtonVariant"]
       53 GETTABLEKS                       R10 R2 K14 ["Enums"]
       55 GETTABLEKS                       R10 R10 K18 ["InputSize"]
       57 GETTABLEKS                       R11 R2 K14 ["Enums"]
       59 GETTABLEKS                       R11 R11 K19 ["ProgressShape"]
       61 GETTABLEKS                       R12 R2 K14 ["Enums"]
       63 GETTABLEKS                       R12 R12 K20 ["ProgressSize"]
       65 DUPCLOSURE                       R13 K21 [PROTO_1]
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R10
       77 GETTABLEKS                       R14 R4 K22 ["memo"]
       79 MOVE                             R15 R13
       80 CALL                             R14 1 -1
       81 RETURN                           R14 -1
