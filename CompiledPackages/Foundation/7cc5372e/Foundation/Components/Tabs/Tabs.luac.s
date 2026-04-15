PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onActivated"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onActivated"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
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
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R5 R6 K8 ["fillBehavior"]
       42 SETTABLEKS                       R5 R4 K8 ["fillBehavior"]
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R5 R6 K9 ["size"]
       47 SETTABLEKS                       R5 R4 K9 ["size"]
       49 GETTABLEKS                       R5 R0 K10 ["isDisabled"]
       51 SETTABLEKS                       R5 R4 K10 ["isDisabled"]
       53 LOADK                            R6 K15 ["%*--item-%*"]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R8 R9 K11 ["testId"]
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
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K0 ["useState"]
        9 GETTABLEKS                       R5 R3 K1 ["defaultActiveTabId"]
       11 JUMPIF                           R5 ; [+11]
       12 GETUPVAL                         R6 4
       13 GETTABLEKS                       R5 R6 K2 ["get"]
       15 MOVE                             R6 R3
       16 NEWTABLE                         R7 0 2
       18 LOADN                            R8 1
       19 LOADK                            R9 K3 ["id"]
       20 SETLIST                          R7 R8 2 [1]
       22 CALL                             R5 2 1
       23 CALL                             R4 1 2
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R5
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R8 R3 K5 ["fillBehavior"]
       33 GETUPVAL                         R10 5
       34 GETTABLEKS                       R9 R10 K6 ["Fill"]
       36 JUMPIFEQ                         R8 R9 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 GETTABLEKS                       R9 R3 K7 ["activeTabId"]
       42 OR                               R8 R9 R4
       43 GETUPVAL                         R10 4
       44 GETTABLEKS                       R9 R10 K8 ["find"]
       46 GETTABLEKS                       R10 R3 K9 ["tabs"]
       48 NEWCLOSURE                       R11 P1
       49 CAPTURE                          VAL R8
       50 CALL                             R9 2 1
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R10 R11 K10 ["createElement"]
       54 GETUPVAL                         R11 6
       55 GETUPVAL                         R12 7
       56 MOVE                             R13 R3
       57 DUPTABLE                         R14 K13 [{"ref", "tag"}]
       58 SETTABLEKS                       R1 R14 K11 ["ref"]
       60 LOADK                            R15 K14 ["auto-y size-full-0 col"]
       61 SETTABLEKS                       R15 R14 K12 ["tag"]
       63 CALL                             R12 2 1
       64 DUPTABLE                         R13 K17 [{"Wrapper", "Content"}]
       65 GETUPVAL                         R15 3
       66 GETTABLEKS                       R14 R15 K10 ["createElement"]
       68 GETUPVAL                         R15 6
       69 DUPTABLE                         R16 K20 [{"LayoutOrder", "tag", "testId"}]
       70 LOADN                            R17 1
       71 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
       73 LOADK                            R17 K21 ["auto-y size-full-0"]
       74 SETTABLEKS                       R17 R16 K12 ["tag"]
       76 LOADK                            R18 K22 ["%*--wrapper"]
       77 GETTABLEKS                       R20 R3 K19 ["testId"]
       79 NAMECALL                         R18 R18 K23 ["format"]
       81 CALL                             R18 2 1
       82 MOVE                             R17 R18
       83 SETTABLEKS                       R17 R16 K19 ["testId"]
       85 DUPTABLE                         R17 K26 [{"ScrollContainer", "Border"}]
       86 GETUPVAL                         R19 3
       87 GETTABLEKS                       R18 R19 K10 ["createElement"]
       89 GETUPVAL                         R19 8
       90 DUPTABLE                         R20 K28 [{"LayoutOrder", "size", "testId"}]
       91 LOADN                            R21 1
       92 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
       94 GETTABLEKS                       R21 R3 K27 ["size"]
       96 SETTABLEKS                       R21 R20 K27 ["size"]
       98 LOADK                            R22 K29 ["%*--scroll-container"]
       99 GETTABLEKS                       R24 R3 K19 ["testId"]
      101 NAMECALL                         R22 R22 K23 ["format"]
      103 CALL                             R22 2 1
      104 MOVE                             R21 R22
      105 SETTABLEKS                       R21 R20 K19 ["testId"]
      107 DUPTABLE                         R21 K31 [{"TabList"}]
      108 GETUPVAL                         R23 3
      109 GETTABLEKS                       R22 R23 K10 ["createElement"]
      111 GETUPVAL                         R23 6
      112 DUPTABLE                         R24 K32 [{"tag", "testId"}]
      113 NEWTABLE                         R25 4 0
      115 LOADB                            R26 1
      116 SETTABLEKS                       R26 R25 K33 ["row auto-xy flex-y-fill"]
      118 NOT                              R26 R7
      119 SETTABLEKS                       R26 R25 K34 ["gap-large"]
      121 SETTABLEKS                       R7 R25 K35 ["size-full-0"]
      123 SETTABLEKS                       R25 R24 K12 ["tag"]
      125 LOADK                            R26 K36 ["%*--list"]
      126 GETTABLEKS                       R28 R3 K19 ["testId"]
      128 NAMECALL                         R26 R26 K23 ["format"]
      130 CALL                             R26 2 1
      131 MOVE                             R25 R26
      132 SETTABLEKS                       R25 R24 K19 ["testId"]
      134 GETUPVAL                         R26 4
      135 GETTABLEKS                       R25 R26 K37 ["map"]
      137 GETTABLEKS                       R26 R3 K9 ["tabs"]
      139 NEWCLOSURE                       R27 P2
      140 CAPTURE                          UPVAL U3
      141 CAPTURE                          UPVAL U9
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R3
      145 CALL                             R25 2 -1
      146 CALL                             R22 -1 1
      147 SETTABLEKS                       R22 R21 K30 ["TabList"]
      149 CALL                             R18 3 1
      150 SETTABLEKS                       R18 R17 K24 ["ScrollContainer"]
      152 GETUPVAL                         R19 3
      153 GETTABLEKS                       R18 R19 K10 ["createElement"]
      155 GETUPVAL                         R19 6
      156 DUPTABLE                         R20 K42 [{"LayoutOrder", "AnchorPoint", "Size", "Position", "backgroundStyle", "testId"}]
      157 LOADN                            R21 2
      158 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      160 GETIMPORT                        R21 K45 [Vector2.new]
      162 LOADN                            R22 0
      163 LOADN                            R23 1
      164 CALL                             R21 2 1
      165 SETTABLEKS                       R21 R20 K38 ["AnchorPoint"]
      167 GETIMPORT                        R21 K47 [UDim2.new]
      169 LOADN                            R22 1
      170 LOADN                            R23 0
      171 LOADN                            R24 0
      172 GETTABLEKS                       R26 R2 K48 ["Stroke"]
      174 GETTABLEKS                       R25 R26 K49 ["Thick"]
      176 CALL                             R21 4 1
      177 SETTABLEKS                       R21 R20 K39 ["Size"]
      179 GETIMPORT                        R21 K47 [UDim2.new]
      181 LOADN                            R22 0
      182 LOADN                            R23 0
      183 LOADN                            R24 1
      184 LOADN                            R25 0
      185 CALL                             R21 4 1
      186 SETTABLEKS                       R21 R20 K40 ["Position"]
      188 GETTABLEKS                       R23 R2 K50 ["Color"]
      190 GETTABLEKS                       R22 R23 K48 ["Stroke"]
      192 GETTABLEKS                       R21 R22 K51 ["Default"]
      194 SETTABLEKS                       R21 R20 K41 ["backgroundStyle"]
      196 LOADK                            R22 K52 ["%*--border"]
      197 GETTABLEKS                       R24 R3 K19 ["testId"]
      199 NAMECALL                         R22 R22 K23 ["format"]
      201 CALL                             R22 2 1
      202 MOVE                             R21 R22
      203 SETTABLEKS                       R21 R20 K19 ["testId"]
      205 CALL                             R18 2 1
      206 SETTABLEKS                       R18 R17 K25 ["Border"]
      208 CALL                             R14 3 1
      209 SETTABLEKS                       R14 R13 K15 ["Wrapper"]
      211 JUMPIFNOT                        R9 ; [+27]
      212 GETTABLEKS                       R15 R9 K53 ["content"]
      214 JUMPIFNOT                        R15 ; [+24]
      215 GETUPVAL                         R15 3
      216 GETTABLEKS                       R14 R15 K10 ["createElement"]
      218 GETUPVAL                         R15 6
      219 DUPTABLE                         R16 K20 [{"LayoutOrder", "tag", "testId"}]
      220 LOADN                            R17 2
      221 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      223 LOADK                            R17 K21 ["auto-y size-full-0"]
      224 SETTABLEKS                       R17 R16 K12 ["tag"]
      226 LOADK                            R18 K54 ["%*--content"]
      227 GETTABLEKS                       R20 R3 K19 ["testId"]
      229 NAMECALL                         R18 R18 K23 ["format"]
      231 CALL                             R18 2 1
      232 MOVE                             R17 R18
      233 SETTABLEKS                       R17 R16 K19 ["testId"]
      235 GETTABLEKS                       R17 R9 K53 ["content"]
      237 CALL                             R14 3 1
      238 JUMP                             ; [+1]
      239 LOADNIL                          R14
      240 SETTABLEKS                       R14 R13 K16 ["Content"]
      242 CALL                             R10 3 -1
      243 RETURN                           R10 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Utility"]
       37 GETTABLEKS                       R7 R8 K13 ["withDefaults"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K12 ["Utility"]
       44 GETTABLEKS                       R8 R9 K14 ["withCommonProps"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R11 R0 K15 ["Providers"]
       51 GETTABLEKS                       R10 R11 K16 ["Style"]
       53 GETTABLEKS                       R9 R10 K17 ["useTokens"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K18 ["Enums"]
       60 GETTABLEKS                       R10 R11 K19 ["FillBehavior"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K18 ["Enums"]
       67 GETTABLEKS                       R11 R12 K20 ["InputSize"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETIMPORT                        R14 K1 [script]
       74 GETTABLEKS                       R13 R14 K4 ["Parent"]
       76 GETTABLEKS                       R12 R13 K21 ["TabItem"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETIMPORT                        R15 K1 [script]
       83 GETTABLEKS                       R14 R15 K4 ["Parent"]
       85 GETTABLEKS                       R13 R14 K22 ["OverflowScrollContainer"]
       87 CALL                             R12 1 1
       88 DUPTABLE                         R13 K26 [{"fillBehavior", "size", "testId"}]
       89 GETTABLEKS                       R14 R9 K27 ["Fill"]
       91 SETTABLEKS                       R14 R13 K23 ["fillBehavior"]
       93 GETTABLEKS                       R14 R10 K28 ["Medium"]
       95 SETTABLEKS                       R14 R13 K24 ["size"]
       97 LOADK                            R14 K29 ["--foundation-tabs"]
       98 SETTABLEKS                       R14 R13 K25 ["testId"]
      100 DUPCLOSURE                       R14 K30 [PROTO_3]
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R11
      111 GETTABLEKS                       R15 R2 K31 ["memo"]
      113 GETTABLEKS                       R16 R2 K32 ["forwardRef"]
      115 MOVE                             R17 R14
      116 CALL                             R16 1 -1
      117 CALL                             R15 -1 -1
      118 RETURN                           R15 -1
