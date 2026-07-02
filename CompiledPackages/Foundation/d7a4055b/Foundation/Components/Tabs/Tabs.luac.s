PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K12 [{"id", "text", "key", "icon", "isActive", "onActivated", "LayoutOrder", "fillBehavior", "size", "isDisabled", "testId"}]
        5 GETTABLEKS                       R5 R0 K1 ["id"]
        7 SETTABLEKS                       R5 R4 K1 ["id"]
        9 GETTABLEKS                       R5 R0 K2 ["text"]
       11 SETTABLEKS                       R5 R4 K2 ["text"]
       13 GETTABLEKS                       R6 R0 K1 ["id"]
       15 FASTCALL1                        TOSTRING R6 ; [+2]
       16 GETIMPORT                        R5 K14 [tostring]
       18 CALL                             R5 1 1
       19 SETTABLEKS                       R5 R4 K3 ["key"]
       21 GETTABLEKS                       R5 R0 K4 ["icon"]
       23 SETTABLEKS                       R5 R4 K4 ["icon"]
       25 GETTABLEKS                       R6 R0 K1 ["id"]
       27 GETUPVAL                         R7 2
       28 JUMPIFEQ                         R6 R7 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K5 ["isActive"]
       34 GETUPVAL                         R5 3
       35 SETTABLEKS                       R5 R4 K6 ["onActivated"]
       37 SETTABLEKS                       R1 R4 K7 ["LayoutOrder"]
       39 GETUPVAL                         R5 4
       40 GETTABLEKS                       R5 R5 K8 ["fillBehavior"]
       42 SETTABLEKS                       R5 R4 K8 ["fillBehavior"]
       44 GETUPVAL                         R5 4
       45 GETTABLEKS                       R5 R5 K9 ["size"]
       47 SETTABLEKS                       R5 R4 K9 ["size"]
       49 GETTABLEKS                       R5 R0 K10 ["isDisabled"]
       51 SETTABLEKS                       R5 R4 K10 ["isDisabled"]
       53 LOADK                            R6 K15 ["%*--item-%*"]
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K11 ["testId"]
       57 GETTABLEKS                       R9 R0 K1 ["id"]
       59 NAMECALL                         R6 R6 K16 ["format"]
       61 CALL                             R6 3 1
       62 MOVE                             R5 R6
       63 SETTABLEKS                       R5 R4 K11 ["testId"]
       65 CALL                             R2 2 -1
       66 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 GETUPVAL                         R5 2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["useState"]
        9 GETTABLEKS                       R5 R3 K1 ["defaultActiveTabId"]
       11 JUMPIF                           R5 ; [+11]
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R5 R5 K2 ["get"]
       15 MOVE                             R6 R3
       16 NEWTABLE                         R7 0 2
       18 LOADN                            R8 1
       19 LOADK                            R9 K3 ["id"]
       20 SETLIST                          R7 R8 2 [1]
       22 CALL                             R5 2 1
       23 CALL                             R4 1 2
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R5
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R8 R3 K5 ["fillBehavior"]
       33 GETUPVAL                         R9 5
       34 GETTABLEKS                       R9 R9 K6 ["Fill"]
       36 JUMPIFEQ                         R8 R9 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 GETTABLEKS                       R9 R3 K7 ["activeTabId"]
       42 OR                               R8 R9 R4
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K8 ["find"]
       46 GETTABLEKS                       R10 R3 K9 ["tabs"]
       48 NEWCLOSURE                       R11 P1
       49 CAPTURE                          VAL R8
       50 CALL                             R9 2 1
       51 GETUPVAL                         R10 3
       52 GETTABLEKS                       R10 R10 K10 ["createElement"]
       54 GETUPVAL                         R11 6
       55 GETUPVAL                         R12 7
       56 MOVE                             R13 R3
       57 DUPTABLE                         R14 K14 [{["ref"], ["tag"] = "auto-y size-full-0 col"}]
       58 SETTABLEKS                       R1 R14 K11 ["ref"]
       60 CALL                             R12 2 1
       61 DUPTABLE                         R13 K17 [{"Wrapper", "Content"}]
       62 GETUPVAL                         R14 3
       63 GETTABLEKS                       R14 R14 K10 ["createElement"]
       65 GETUPVAL                         R15 6
       66 DUPTABLE                         R16 K22 [{["LayoutOrder"] = 1, ["tag"] = "auto-y size-full-0", ["testId"]}]
       67 LOADK                            R18 K23 ["%*--wrapper"]
       68 GETTABLEKS                       R20 R3 K21 ["testId"]
       70 NAMECALL                         R18 R18 K24 ["format"]
       72 CALL                             R18 2 1
       73 MOVE                             R17 R18
       74 SETTABLEKS                       R17 R16 K21 ["testId"]
       76 DUPTABLE                         R17 K27 [{"ScrollContainer", "Border"}]
       77 GETUPVAL                         R18 3
       78 GETTABLEKS                       R18 R18 K10 ["createElement"]
       80 GETUPVAL                         R19 8
       81 DUPTABLE                         R20 K29 [{["LayoutOrder"] = 1, ["size"], ["testId"]}]
       82 GETTABLEKS                       R21 R3 K28 ["size"]
       84 SETTABLEKS                       R21 R20 K28 ["size"]
       86 LOADK                            R22 K30 ["%*--scroll-container"]
       87 GETTABLEKS                       R24 R3 K21 ["testId"]
       89 NAMECALL                         R22 R22 K24 ["format"]
       91 CALL                             R22 2 1
       92 MOVE                             R21 R22
       93 SETTABLEKS                       R21 R20 K21 ["testId"]
       95 DUPTABLE                         R21 K32 [{"TabList"}]
       96 GETUPVAL                         R22 3
       97 GETTABLEKS                       R22 R22 K10 ["createElement"]
       99 GETUPVAL                         R23 6
      100 DUPTABLE                         R24 K33 [{"tag", "testId"}]
      101 NEWTABLE                         R25 4 0
      103 LOADB                            R26 1
      104 SETTABLEKS                       R26 R25 K34 ["row auto-xy flex-y-fill"]
      106 NOT                              R26 R7
      107 SETTABLEKS                       R26 R25 K35 ["gap-large"]
      109 SETTABLEKS                       R7 R25 K36 ["size-full-0"]
      111 SETTABLEKS                       R25 R24 K12 ["tag"]
      113 LOADK                            R26 K37 ["%*--list"]
      114 GETTABLEKS                       R28 R3 K21 ["testId"]
      116 NAMECALL                         R26 R26 K24 ["format"]
      118 CALL                             R26 2 1
      119 MOVE                             R25 R26
      120 SETTABLEKS                       R25 R24 K21 ["testId"]
      122 GETUPVAL                         R25 4
      123 GETTABLEKS                       R25 R25 K38 ["map"]
      125 GETTABLEKS                       R26 R3 K9 ["tabs"]
      127 NEWCLOSURE                       R27 P2
      128 CAPTURE                          UPVAL U3
      129 CAPTURE                          UPVAL U9
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R3
      133 CALL                             R25 2 -1
      134 CALL                             R22 -1 1
      135 SETTABLEKS                       R22 R21 K31 ["TabList"]
      137 CALL                             R18 3 1
      138 SETTABLEKS                       R18 R17 K25 ["ScrollContainer"]
      140 GETUPVAL                         R18 3
      141 GETTABLEKS                       R18 R18 K10 ["createElement"]
      143 GETUPVAL                         R19 6
      144 DUPTABLE                         R20 K44 [{["LayoutOrder"] = 2, ["AnchorPoint"], ["Size"], ["Position"], ["backgroundStyle"], ["testId"]}]
      145 GETIMPORT                        R21 K47 [Vector2.new]
      147 LOADN                            R22 0
      148 LOADN                            R23 1
      149 CALL                             R21 2 1
      150 SETTABLEKS                       R21 R20 K40 ["AnchorPoint"]
      152 GETIMPORT                        R21 K49 [UDim2.new]
      154 LOADN                            R22 1
      155 LOADN                            R23 0
      156 LOADN                            R24 0
      157 GETTABLEKS                       R25 R2 K50 ["Stroke"]
      159 GETTABLEKS                       R25 R25 K51 ["Thick"]
      161 CALL                             R21 4 1
      162 SETTABLEKS                       R21 R20 K41 ["Size"]
      164 GETIMPORT                        R21 K49 [UDim2.new]
      166 LOADN                            R22 0
      167 LOADN                            R23 0
      168 LOADN                            R24 1
      169 LOADN                            R25 0
      170 CALL                             R21 4 1
      171 SETTABLEKS                       R21 R20 K42 ["Position"]
      173 GETTABLEKS                       R21 R2 K52 ["Color"]
      175 GETTABLEKS                       R21 R21 K50 ["Stroke"]
      177 GETTABLEKS                       R21 R21 K53 ["Default"]
      179 SETTABLEKS                       R21 R20 K43 ["backgroundStyle"]
      181 LOADK                            R22 K54 ["%*--border"]
      182 GETTABLEKS                       R24 R3 K21 ["testId"]
      184 NAMECALL                         R22 R22 K24 ["format"]
      186 CALL                             R22 2 1
      187 MOVE                             R21 R22
      188 SETTABLEKS                       R21 R20 K21 ["testId"]
      190 CALL                             R18 2 1
      191 SETTABLEKS                       R18 R17 K26 ["Border"]
      193 CALL                             R14 3 1
      194 SETTABLEKS                       R14 R13 K15 ["Wrapper"]
      196 JUMPIFNOT                        R9 ; [+21]
      197 GETTABLEKS                       R15 R9 K55 ["content"]
      199 JUMPIFNOT                        R15 ; [+18]
      200 GETUPVAL                         R14 3
      201 GETTABLEKS                       R14 R14 K10 ["createElement"]
      203 GETUPVAL                         R15 6
      204 DUPTABLE                         R16 K56 [{["LayoutOrder"] = 2, ["tag"] = "auto-y size-full-0", ["testId"]}]
      205 LOADK                            R18 K57 ["%*--content"]
      206 GETTABLEKS                       R20 R3 K21 ["testId"]
      208 NAMECALL                         R18 R18 K24 ["format"]
      210 CALL                             R18 2 1
      211 MOVE                             R17 R18
      212 SETTABLEKS                       R17 R16 K21 ["testId"]
      214 GETTABLEKS                       R17 R9 K55 ["content"]
      216 CALL                             R14 3 1
      217 JUMP                             ; [+1]
      218 LOADNIL                          R14
      219 SETTABLEKS                       R14 R13 K16 ["Content"]
      221 CALL                             R10 3 -1
      222 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Utility"]
       37 GETTABLEKS                       R7 R7 K13 ["withDefaults"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Utility"]
       44 GETTABLEKS                       R8 R8 K14 ["withCommonProps"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Providers"]
       51 GETTABLEKS                       R9 R9 K16 ["Style"]
       53 GETTABLEKS                       R9 R9 K17 ["useTokens"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K18 ["Enums"]
       60 GETTABLEKS                       R10 R10 K19 ["FillBehavior"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K18 ["Enums"]
       67 GETTABLEKS                       R11 R11 K20 ["InputSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETIMPORT                        R12 K1 [script]
       74 GETTABLEKS                       R12 R12 K4 ["Parent"]
       76 GETTABLEKS                       R12 R12 K21 ["TabItem"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETIMPORT                        R13 K1 [script]
       83 GETTABLEKS                       R13 R13 K4 ["Parent"]
       85 GETTABLEKS                       R13 R13 K22 ["OverflowScrollContainer"]
       87 CALL                             R12 1 1
       88 DUPTABLE                         R13 K27 [{["fillBehavior"], ["size"], ["testId"] = "--foundation-tabs"}]
       89 GETTABLEKS                       R14 R9 K28 ["Fill"]
       91 SETTABLEKS                       R14 R13 K23 ["fillBehavior"]
       93 GETTABLEKS                       R14 R10 K29 ["Medium"]
       95 SETTABLEKS                       R14 R13 K24 ["size"]
       97 DUPCLOSURE                       R14 K30 [PROTO_3]
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R11
      108 GETTABLEKS                       R15 R2 K31 ["memo"]
      110 GETTABLEKS                       R16 R2 K32 ["forwardRef"]
      112 MOVE                             R17 R14
      113 CALL                             R16 1 -1
      114 CALL                             R15 -1 -1
      115 RETURN                           R15 -1
