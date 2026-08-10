PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Disabled"]
        3 JUMPIF                           R2 ; [+58]
        4 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
        6 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton1]
        8 JUMPIFNOTEQ                      R2 R3 ; [+53]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K5 ["cancelShowTooltip"]
       13 CALL                             R2 0 0
       14 GETUPVAL                         R2 2
       15 CALL                             R2 0 1
       16 JUMPIFNOT                        R2 ; [+38]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K6 ["current"]
       20 JUMPIFNOT                        R3 ; [+12]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K6 ["current"]
       24 GETTABLEKS                       R3 R3 K7 ["AbsoluteSize"]
       26 GETTABLEKS                       R3 R3 K8 ["X"]
       28 FASTCALL1                        MATH_CEIL R3 ; [+2]
       29 GETIMPORT                        R2 K11 [math.ceil]
       31 CALL                             R2 1 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R2
       34 JUMPIFNOT                        R2 ; [+12]
       35 LOADN                            R3 0
       36 JUMPIFNOTLT                      R3 R2 ; [+10]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K12 ["OnSelect"]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K13 ["Uri"]
       44 MOVE                             R5 R2
       45 CALL                             R3 2 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K12 ["OnSelect"]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K13 ["Uri"]
       53 CALL                             R3 1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K12 ["OnSelect"]
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R3 R3 K13 ["Uri"]
       61 CALL                             R2 1 0
       62 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Uri"]
        3 GETTABLEKS                       R3 R0 K1 ["ForwardRef"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R2 R0 K2 ["MenuData"]
        8 GETTABLEKS                       R2 R2 K3 ["isOpen"]
       10 JUMPIFNOT                        R2 ; [+14]
       11 GETTABLEKS                       R3 R0 K2 ["MenuData"]
       13 GETTABLEKS                       R3 R3 K4 ["widgetUriString"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K5 ["toString"]
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
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R5 R5 K11 ["getPathForIcon"]
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
       76 GETUPVAL                         R8 4
       77 GETTABLEKS                       R8 R8 K20 ["createElement"]
       79 LOADK                            R9 K21 ["TextButton"]
       80 NEWTABLE                         R10 8 0
       82 SETTABLEKS                       R1 R10 K22 ["ref"]
       84 GETTABLEKS                       R11 R0 K23 ["LayoutOrder"]
       86 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
       88 GETUPVAL                         R11 4
       89 GETTABLEKS                       R11 R11 K24 ["Event"]
       91 GETTABLEKS                       R11 R11 K25 ["InputBegan"]
       93 NEWCLOSURE                       R12 P0
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 SETTABLE                         R12 R10 R11
       99 GETTABLEKS                       R11 R0 K26 ["Visible"]
      101 SETTABLEKS                       R11 R10 K26 ["Visible"]
      103 GETUPVAL                         R11 4
      104 GETTABLEKS                       R11 R11 K24 ["Event"]
      106 GETTABLEKS                       R11 R11 K27 ["MouseEnter"]
      108 SETTABLE                         R6 R10 R11
      109 GETUPVAL                         R11 4
      110 GETTABLEKS                       R11 R11 K24 ["Event"]
      112 GETTABLEKS                       R11 R11 K28 ["MouseLeave"]
      114 SETTABLE                         R7 R10 R11
      115 GETUPVAL                         R11 4
      116 GETTABLEKS                       R11 R11 K29 ["Tag"]
      118 GETUPVAL                         R12 7
      119 LOADK                            R14 K30 ["Component-RibbonSelectInput Role-Surface X-Row X-Middle data-testid=%*"]
      120 GETUPVAL                         R16 8
      121 GETTABLEKS                       R17 R0 K0 ["Uri"]
      123 CALL                             R16 1 1
      124 NAMECALL                         R14 R14 K31 ["format"]
      126 CALL                             R14 2 1
      127 MOVE                             R13 R14
      128 GETTABLEKS                       R15 R0 K32 ["Disabled"]
      130 JUMPIFNOT                        R15 ; [+2]
      131 LOADK                            R14 K33 ["State-Disabled"]
      132 JUMP                             ; [+1]
      133 LOADK                            R14 K34 ["State-Default"]
      134 JUMPIFNOT                        R2 ; [+2]
      135 LOADK                            R15 K35 ["State-Focus"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R15
      138 GETUPVAL                         R17 4
      139 GETTABLEKS                       R17 R17 K29 ["Tag"]
      141 GETTABLE                         R16 R0 R17
      142 CALL                             R12 4 1
      143 SETTABLE                         R12 R10 R11
      144 DUPTABLE                         R11 K38 [{"Value", "DropdownIcon"}]
      145 GETUPVAL                         R12 4
      146 GETTABLEKS                       R12 R12 K20 ["createElement"]
      148 LOADK                            R13 K39 ["Frame"]
      149 NEWTABLE                         R14 1 0
      151 GETUPVAL                         R15 4
      152 GETTABLEKS                       R15 R15 K29 ["Tag"]
      154 LOADK                            R16 K40 ["Role-Surface X-Fill X-Row X-Middle"]
      155 SETTABLE                         R16 R14 R15
      156 DUPTABLE                         R15 K41 [{"Icon", "Text"}]
      157 JUMPIFNOT                        R5 ; [+18]
      158 GETUPVAL                         R16 4
      159 GETTABLEKS                       R16 R16 K20 ["createElement"]
      161 LOADK                            R17 K42 ["ImageLabel"]
      162 NEWTABLE                         R18 2 0
      164 SETTABLEKS                       R5 R18 K43 ["Image"]
      166 GETUPVAL                         R19 4
      167 GETTABLEKS                       R19 R19 K29 ["Tag"]
      169 GETUPVAL                         R20 7
      170 LOADK                            R21 K44 ["Role-Surface"]
      171 MOVE                             R22 R3
      172 CALL                             R20 2 1
      173 SETTABLE                         R20 R18 R19
      174 CALL                             R16 2 1
      175 JUMP                             ; [+1]
      176 LOADNIL                          R16
      177 SETTABLEKS                       R16 R15 K8 ["Icon"]
      179 GETUPVAL                         R16 4
      180 GETTABLEKS                       R16 R16 K20 ["createElement"]
      182 LOADK                            R17 K45 ["TextLabel"]
      183 NEWTABLE                         R18 2 0
      185 GETTABLEKS                       R20 R0 K14 ["Text"]
      187 ORK                              R19 R20 K46 [""]
      188 SETTABLEKS                       R19 R18 K14 ["Text"]
      190 GETUPVAL                         R19 4
      191 GETTABLEKS                       R19 R19 K29 ["Tag"]
      193 GETUPVAL                         R20 7
      194 LOADK                            R21 K47 ["Role-Surface X-Fill"]
      195 CALL                             R20 1 1
      196 SETTABLE                         R20 R18 R19
      197 CALL                             R16 2 1
      198 SETTABLEKS                       R16 R15 K14 ["Text"]
      200 CALL                             R12 3 1
      201 SETTABLEKS                       R12 R11 K36 ["Value"]
      203 GETUPVAL                         R12 4
      204 GETTABLEKS                       R12 R12 K20 ["createElement"]
      206 LOADK                            R13 K42 ["ImageLabel"]
      207 NEWTABLE                         R14 1 0
      209 GETUPVAL                         R15 4
      210 GETTABLEKS                       R15 R15 K29 ["Tag"]
      212 GETUPVAL                         R16 7
      213 LOADK                            R17 K44 ["Role-Surface"]
      214 JUMPIFNOT                        R2 ; [+2]
      215 LOADK                            R18 K48 ["Icon-Up"]
      216 JUMP                             ; [+1]
      217 LOADNIL                          R18
      218 CALL                             R16 2 1
      219 SETTABLE                         R16 R14 R15
      220 CALL                             R12 2 1
      221 SETTABLEKS                       R12 R11 K37 ["DropdownIcon"]
      223 CALL                             R8 3 -1
      224 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["IconHelper"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["uriToTestId"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Types"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Packages"]
       50 GETTABLEKS                       R7 R7 K14 ["StudioFoundation"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R6 K10 ["Util"]
       55 GETTABLEKS                       R7 R7 K15 ["StudioUri"]
       57 GETTABLEKS                       R8 R6 K16 ["Hooks"]
       59 GETTABLEKS                       R8 R8 K17 ["useWidgetRef"]
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K9 ["Src"]
       65 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       67 GETTABLEKS                       R10 R10 K18 ["TooltipSettings"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K9 ["Src"]
       74 GETTABLEKS                       R11 R11 K16 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K19 ["useTooltip"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K9 ["Src"]
       83 GETTABLEKS                       R12 R12 K16 ["Hooks"]
       85 GETTABLEKS                       R12 R12 K20 ["useMenu"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K9 ["Src"]
       92 GETTABLEKS                       R13 R13 K21 ["SharedFlags"]
       94 GETTABLEKS                       R13 R13 K22 ["getFFlagRibbonDropdownMinWidth"]
       96 CALL                             R12 1 1
       97 GETTABLEKS                       R13 R2 K23 ["Styling"]
       99 GETTABLEKS                       R14 R13 K24 ["joinTags"]
      101 DUPCLOSURE                       R15 K25 [PROTO_1]
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R4
      111 RETURN                           R15 1
