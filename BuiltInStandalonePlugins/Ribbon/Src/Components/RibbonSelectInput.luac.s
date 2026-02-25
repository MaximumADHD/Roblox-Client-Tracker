PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Disabled"]
        3 JUMPIF                           R2 ; [+17]
        4 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
        6 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton1]
        8 JUMPIFNOTEQ                      R2 R3 ; [+12]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K5 ["cancelShowTooltip"]
       13 CALL                             R2 0 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K6 ["OnSelect"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K7 ["Uri"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Uri"]
        3 GETTABLEKS                       R3 R0 K1 ["ForwardRef"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R3 R0 K2 ["MenuData"]
        8 GETTABLEKS                       R2 R3 K3 ["isOpen"]
       10 JUMPIFNOT                        R2 ; [+14]
       11 GETTABLEKS                       R4 R0 K2 ["MenuData"]
       13 GETTABLEKS                       R3 R4 K4 ["widgetUriString"]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K5 ["toString"]
       18 GETTABLEKS                       R5 R0 K0 ["Uri"]
       20 CALL                             R4 1 1
       21 JUMPIFEQ                         R3 R4 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 GETTABLEKS                       R4 R0 K7 ["IconSide"]
       27 ORK                              R3 R4 K6 ["Left"]
       28 GETTABLEKS                       R5 R0 K8 ["Icon"]
       30 JUMPIFNOT                        R5 ; [+7]
       31 GETTABLEKS                       R4 R0 K8 ["Icon"]
       33 LOADK                            R6 K9 ["/"]
       34 NAMECALL                         R4 R4 K10 ["find"]
       36 CALL                             R4 2 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 GETTABLEKS                       R6 R0 K8 ["Icon"]
       41 JUMPIFNOT                        R6 ; [+12]
       42 JUMPIFNOT                        R4 ; [+3]
       43 GETTABLEKS                       R5 R0 K8 ["Icon"]
       45 JUMP                             ; [+9]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R5 R6 K11 ["getPathForIcon"]
       49 GETTABLEKS                       R6 R0 K8 ["Icon"]
       51 LOADK                            R7 K12 ["Small"]
       52 CALL                             R5 2 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R5
       55 GETUPVAL                         R6 3
       56 DUPTABLE                         R7 K17 [{"Uri", "Title", "Text", "Shortcuts", "WidgetRef"}]
       57 GETTABLEKS                       R8 R0 K0 ["Uri"]
       59 SETTABLEKS                       R8 R7 K0 ["Uri"]
       61 GETTABLEKS                       R8 R0 K18 ["TooltipTitle"]
       63 SETTABLEKS                       R8 R7 K13 ["Title"]
       65 GETTABLEKS                       R8 R0 K19 ["Tooltip"]
       67 SETTABLEKS                       R8 R7 K14 ["Text"]
       69 GETTABLEKS                       R8 R0 K15 ["Shortcuts"]
       71 SETTABLEKS                       R8 R7 K15 ["Shortcuts"]
       73 SETTABLEKS                       R1 R7 K16 ["WidgetRef"]
       75 CALL                             R6 1 2
       76 GETUPVAL                         R9 4
       77 GETTABLEKS                       R8 R9 K20 ["createElement"]
       79 LOADK                            R9 K21 ["TextButton"]
       80 NEWTABLE                         R10 8 0
       82 SETTABLEKS                       R1 R10 K22 ["ref"]
       84 GETTABLEKS                       R11 R0 K23 ["LayoutOrder"]
       86 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
       88 GETUPVAL                         R13 4
       89 GETTABLEKS                       R12 R13 K24 ["Event"]
       91 GETTABLEKS                       R11 R12 K25 ["InputBegan"]
       93 NEWCLOSURE                       R12 P0
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U5
       96 SETTABLE                         R12 R10 R11
       97 GETTABLEKS                       R11 R0 K26 ["Visible"]
       99 SETTABLEKS                       R11 R10 K26 ["Visible"]
      101 GETUPVAL                         R13 4
      102 GETTABLEKS                       R12 R13 K24 ["Event"]
      104 GETTABLEKS                       R11 R12 K27 ["MouseEnter"]
      106 SETTABLE                         R6 R10 R11
      107 GETUPVAL                         R13 4
      108 GETTABLEKS                       R12 R13 K24 ["Event"]
      110 GETTABLEKS                       R11 R12 K28 ["MouseLeave"]
      112 SETTABLE                         R7 R10 R11
      113 GETUPVAL                         R12 4
      114 GETTABLEKS                       R11 R12 K29 ["Tag"]
      116 GETUPVAL                         R12 6
      117 LOADK                            R14 K30 ["Component-RibbonSelectInput Role-Surface X-Row X-Middle data-testid=%*"]
      118 GETUPVAL                         R16 7
      119 GETTABLEKS                       R17 R0 K0 ["Uri"]
      121 CALL                             R16 1 1
      122 NAMECALL                         R14 R14 K31 ["format"]
      124 CALL                             R14 2 1
      125 MOVE                             R13 R14
      126 GETTABLEKS                       R15 R0 K32 ["Disabled"]
      128 JUMPIFNOT                        R15 ; [+2]
      129 LOADK                            R14 K33 ["State-Disabled"]
      130 JUMP                             ; [+1]
      131 LOADK                            R14 K34 ["State-Default"]
      132 JUMPIFNOT                        R2 ; [+2]
      133 LOADK                            R15 K35 ["State-Focus"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R15
      136 GETUPVAL                         R18 4
      137 GETTABLEKS                       R17 R18 K29 ["Tag"]
      139 GETTABLE                         R16 R0 R17
      140 CALL                             R12 4 1
      141 SETTABLE                         R12 R10 R11
      142 DUPTABLE                         R11 K38 [{"Value", "DropdownIcon"}]
      143 GETUPVAL                         R13 4
      144 GETTABLEKS                       R12 R13 K20 ["createElement"]
      146 LOADK                            R13 K39 ["Frame"]
      147 NEWTABLE                         R14 1 0
      149 GETUPVAL                         R16 4
      150 GETTABLEKS                       R15 R16 K29 ["Tag"]
      152 LOADK                            R16 K40 ["Role-Surface X-Fill X-Row X-Middle"]
      153 SETTABLE                         R16 R14 R15
      154 DUPTABLE                         R15 K41 [{"Icon", "Text"}]
      155 JUMPIFNOT                        R5 ; [+18]
      156 GETUPVAL                         R17 4
      157 GETTABLEKS                       R16 R17 K20 ["createElement"]
      159 LOADK                            R17 K42 ["ImageLabel"]
      160 NEWTABLE                         R18 2 0
      162 SETTABLEKS                       R5 R18 K43 ["Image"]
      164 GETUPVAL                         R20 4
      165 GETTABLEKS                       R19 R20 K29 ["Tag"]
      167 GETUPVAL                         R20 6
      168 LOADK                            R21 K44 ["Role-Surface"]
      169 MOVE                             R22 R3
      170 CALL                             R20 2 1
      171 SETTABLE                         R20 R18 R19
      172 CALL                             R16 2 1
      173 JUMP                             ; [+1]
      174 LOADNIL                          R16
      175 SETTABLEKS                       R16 R15 K8 ["Icon"]
      177 GETUPVAL                         R17 4
      178 GETTABLEKS                       R16 R17 K20 ["createElement"]
      180 LOADK                            R17 K45 ["TextLabel"]
      181 NEWTABLE                         R18 2 0
      183 GETTABLEKS                       R20 R0 K14 ["Text"]
      185 ORK                              R19 R20 K46 [""]
      186 SETTABLEKS                       R19 R18 K14 ["Text"]
      188 GETUPVAL                         R20 4
      189 GETTABLEKS                       R19 R20 K29 ["Tag"]
      191 GETUPVAL                         R20 6
      192 LOADK                            R21 K47 ["Role-Surface X-Fill"]
      193 CALL                             R20 1 1
      194 SETTABLE                         R20 R18 R19
      195 CALL                             R16 2 1
      196 SETTABLEKS                       R16 R15 K14 ["Text"]
      198 CALL                             R12 3 1
      199 SETTABLEKS                       R12 R11 K36 ["Value"]
      201 GETUPVAL                         R13 4
      202 GETTABLEKS                       R12 R13 K20 ["createElement"]
      204 LOADK                            R13 K42 ["ImageLabel"]
      205 NEWTABLE                         R14 1 0
      207 GETUPVAL                         R16 4
      208 GETTABLEKS                       R15 R16 K29 ["Tag"]
      210 GETUPVAL                         R16 6
      211 LOADK                            R17 K44 ["Role-Surface"]
      212 JUMPIFNOT                        R2 ; [+2]
      213 LOADK                            R18 K48 ["Icon-Up"]
      214 JUMP                             ; [+1]
      215 LOADNIL                          R18
      216 CALL                             R16 2 1
      217 SETTABLE                         R16 R14 R15
      218 CALL                             R12 2 1
      219 SETTABLEKS                       R12 R11 K37 ["DropdownIcon"]
      221 CALL                             R8 3 -1
      222 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["IconHelper"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["uriToTestId"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R7 K13 ["Types"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K6 ["Packages"]
       50 GETTABLEKS                       R7 R8 K14 ["StudioFoundation"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R8 R6 K10 ["Util"]
       55 GETTABLEKS                       R7 R8 K15 ["StudioUri"]
       57 GETTABLEKS                       R9 R6 K16 ["Hooks"]
       59 GETTABLEKS                       R8 R9 K17 ["useWidgetRef"]
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R12 R0 K9 ["Src"]
       65 GETTABLEKS                       R11 R12 K16 ["Hooks"]
       67 GETTABLEKS                       R10 R11 K18 ["TooltipSettings"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R13 R0 K9 ["Src"]
       74 GETTABLEKS                       R12 R13 K16 ["Hooks"]
       76 GETTABLEKS                       R11 R12 K19 ["useTooltip"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R14 R0 K9 ["Src"]
       83 GETTABLEKS                       R13 R14 K16 ["Hooks"]
       85 GETTABLEKS                       R12 R13 K20 ["useMenu"]
       87 CALL                             R11 1 1
       88 GETTABLEKS                       R12 R2 K21 ["Styling"]
       90 GETTABLEKS                       R13 R12 K22 ["joinTags"]
       92 DUPCLOSURE                       R14 K23 [PROTO_1]
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R4
      101 RETURN                           R14 1
