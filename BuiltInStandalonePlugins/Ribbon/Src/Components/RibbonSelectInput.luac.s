PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Disabled"]
        3 JUMPIF                           R2 ; [+68]
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 JUMP                             ; [+8]
       11 GETTABLEKS                       R3 R1 K1 ["UserInputType"]
       13 GETIMPORT                        R4 K4 [Enum.UserInputType.MouseButton1]
       15 JUMPIFEQ                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 JUMPIFNOT                        R2 ; [+52]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K5 ["cancelShowTooltip"]
       23 CALL                             R2 0 0
       24 GETUPVAL                         R2 4
       25 CALL                             R2 0 1
       26 JUMPIFNOT                        R2 ; [+38]
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R3 R3 K6 ["current"]
       30 JUMPIFNOT                        R3 ; [+12]
       31 GETUPVAL                         R3 5
       32 GETTABLEKS                       R3 R3 K6 ["current"]
       34 GETTABLEKS                       R3 R3 K7 ["AbsoluteSize"]
       36 GETTABLEKS                       R3 R3 K8 ["X"]
       38 FASTCALL1                        MATH_CEIL R3 ; [+2]
       39 GETIMPORT                        R2 K11 [math.ceil]
       41 CALL                             R2 1 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R2
       44 JUMPIFNOT                        R2 ; [+12]
       45 LOADN                            R3 0
       46 JUMPIFNOTLT                      R3 R2 ; [+10]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K12 ["OnSelect"]
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R4 R4 K13 ["Uri"]
       54 MOVE                             R5 R2
       55 CALL                             R3 2 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R3 0
       58 GETTABLEKS                       R3 R3 K12 ["OnSelect"]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K13 ["Uri"]
       63 CALL                             R3 1 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K12 ["OnSelect"]
       68 GETUPVAL                         R3 0
       69 GETTABLEKS                       R3 R3 K13 ["Uri"]
       71 CALL                             R2 1 0
       72 RETURN                           R0 0

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
       76 LOADNIL                          R8
       77 GETUPVAL                         R9 4
       78 CALL                             R9 0 1
       79 JUMPIFNOT                        R9 ; [+8]
       80 GETTABLEKS                       R9 R0 K20 ["Visible"]
       82 JUMPIFEQKNIL                     R9 ; [+4]
       84 GETTABLEKS                       R8 R0 K20 ["Visible"]
       86 JUMP                             ; [+1]
       87 LOADB                            R8 1
       88 GETUPVAL                         R9 5
       89 GETTABLEKS                       R9 R9 K21 ["createElement"]
       91 LOADK                            R10 K22 ["TextButton"]
       92 NEWTABLE                         R11 8 0
       94 SETTABLEKS                       R1 R11 K23 ["ref"]
       96 GETTABLEKS                       R12 R0 K24 ["LayoutOrder"]
       98 SETTABLEKS                       R12 R11 K24 ["LayoutOrder"]
      100 GETUPVAL                         R12 5
      101 GETTABLEKS                       R12 R12 K25 ["Event"]
      103 GETTABLEKS                       R12 R12 K26 ["InputBegan"]
      105 NEWCLOSURE                       R13 P0
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U4
      108 CAPTURE                          UPVAL U6
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          VAL R1
      112 SETTABLE                         R13 R11 R12
      113 GETTABLEKS                       R12 R0 K20 ["Visible"]
      115 SETTABLEKS                       R12 R11 K20 ["Visible"]
      117 GETUPVAL                         R13 4
      118 CALL                             R13 0 1
      119 JUMPIFNOT                        R13 ; [+5]
      120 GETTABLEKS                       R14 R0 K27 ["Disabled"]
      122 NOT                              R13 R14
      123 AND                              R12 R13 R8
      124 JUMP                             ; [+1]
      125 LOADNIL                          R12
      126 SETTABLEKS                       R12 R11 K28 ["Selectable"]
      128 GETUPVAL                         R12 5
      129 GETTABLEKS                       R12 R12 K25 ["Event"]
      131 GETTABLEKS                       R12 R12 K29 ["MouseEnter"]
      133 SETTABLE                         R6 R11 R12
      134 GETUPVAL                         R12 5
      135 GETTABLEKS                       R12 R12 K25 ["Event"]
      137 GETTABLEKS                       R12 R12 K30 ["MouseLeave"]
      139 SETTABLE                         R7 R11 R12
      140 GETUPVAL                         R12 5
      141 GETTABLEKS                       R12 R12 K31 ["Tag"]
      143 GETUPVAL                         R13 9
      144 LOADK                            R15 K32 ["Component-RibbonSelectInput Role-Surface X-Row X-Middle data-testid=%*"]
      145 GETUPVAL                         R17 10
      146 GETTABLEKS                       R18 R0 K0 ["Uri"]
      148 CALL                             R17 1 1
      149 NAMECALL                         R15 R15 K33 ["format"]
      151 CALL                             R15 2 1
      152 MOVE                             R14 R15
      153 GETTABLEKS                       R16 R0 K27 ["Disabled"]
      155 JUMPIFNOT                        R16 ; [+2]
      156 LOADK                            R15 K34 ["State-Disabled"]
      157 JUMP                             ; [+1]
      158 LOADK                            R15 K35 ["State-Default"]
      159 JUMPIFNOT                        R2 ; [+2]
      160 LOADK                            R16 K36 ["State-Focus"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R16
      163 GETUPVAL                         R18 5
      164 GETTABLEKS                       R18 R18 K31 ["Tag"]
      166 GETTABLE                         R17 R0 R18
      167 CALL                             R13 4 1
      168 SETTABLE                         R13 R11 R12
      169 DUPTABLE                         R12 K39 [{"Value", "DropdownIcon"}]
      170 GETUPVAL                         R13 5
      171 GETTABLEKS                       R13 R13 K21 ["createElement"]
      173 LOADK                            R14 K40 ["Frame"]
      174 NEWTABLE                         R15 1 0
      176 GETUPVAL                         R16 5
      177 GETTABLEKS                       R16 R16 K31 ["Tag"]
      179 LOADK                            R17 K41 ["Role-Surface X-Fill X-Row X-Middle"]
      180 SETTABLE                         R17 R15 R16
      181 DUPTABLE                         R16 K42 [{"Icon", "Text"}]
      182 JUMPIFNOT                        R5 ; [+18]
      183 GETUPVAL                         R17 5
      184 GETTABLEKS                       R17 R17 K21 ["createElement"]
      186 LOADK                            R18 K43 ["ImageLabel"]
      187 NEWTABLE                         R19 2 0
      189 SETTABLEKS                       R5 R19 K44 ["Image"]
      191 GETUPVAL                         R20 5
      192 GETTABLEKS                       R20 R20 K31 ["Tag"]
      194 GETUPVAL                         R21 9
      195 LOADK                            R22 K45 ["Role-Surface"]
      196 MOVE                             R23 R3
      197 CALL                             R21 2 1
      198 SETTABLE                         R21 R19 R20
      199 CALL                             R17 2 1
      200 JUMP                             ; [+1]
      201 LOADNIL                          R17
      202 SETTABLEKS                       R17 R16 K8 ["Icon"]
      204 GETUPVAL                         R17 5
      205 GETTABLEKS                       R17 R17 K21 ["createElement"]
      207 LOADK                            R18 K46 ["TextLabel"]
      208 NEWTABLE                         R19 2 0
      210 GETTABLEKS                       R21 R0 K14 ["Text"]
      212 ORK                              R20 R21 K47 [""]
      213 SETTABLEKS                       R20 R19 K14 ["Text"]
      215 GETUPVAL                         R20 5
      216 GETTABLEKS                       R20 R20 K31 ["Tag"]
      218 GETUPVAL                         R21 9
      219 LOADK                            R22 K48 ["Role-Surface X-Fill"]
      220 CALL                             R21 1 1
      221 SETTABLE                         R21 R19 R20
      222 CALL                             R17 2 1
      223 SETTABLEKS                       R17 R16 K14 ["Text"]
      225 CALL                             R13 3 1
      226 SETTABLEKS                       R13 R12 K37 ["Value"]
      228 GETUPVAL                         R13 5
      229 GETTABLEKS                       R13 R13 K21 ["createElement"]
      231 LOADK                            R14 K43 ["ImageLabel"]
      232 NEWTABLE                         R15 1 0
      234 GETUPVAL                         R16 5
      235 GETTABLEKS                       R16 R16 K31 ["Tag"]
      237 GETUPVAL                         R17 9
      238 LOADK                            R18 K45 ["Role-Surface"]
      239 JUMPIFNOT                        R2 ; [+2]
      240 LOADK                            R19 K49 ["Icon-Up"]
      241 JUMP                             ; [+1]
      242 LOADNIL                          R19
      243 CALL                             R17 2 1
      244 SETTABLE                         R17 R15 R16
      245 CALL                             R13 2 1
      246 SETTABLEKS                       R13 R12 K38 ["DropdownIcon"]
      248 CALL                             R9 3 -1
      249 RETURN                           R9 -1

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
       36 GETTABLEKS                       R5 R5 K12 ["isActivationInput"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Util"]
       45 GETTABLEKS                       R6 R6 K13 ["uriToTestId"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Types"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Packages"]
       59 GETTABLEKS                       R8 R8 K15 ["StudioFoundation"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R7 K10 ["Util"]
       64 GETTABLEKS                       R8 R8 K16 ["StudioUri"]
       66 GETTABLEKS                       R9 R7 K17 ["Hooks"]
       68 GETTABLEKS                       R9 R9 K18 ["useWidgetRef"]
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K9 ["Src"]
       74 GETTABLEKS                       R11 R11 K17 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K19 ["TooltipSettings"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K9 ["Src"]
       83 GETTABLEKS                       R12 R12 K17 ["Hooks"]
       85 GETTABLEKS                       R12 R12 K20 ["useTooltip"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K9 ["Src"]
       92 GETTABLEKS                       R13 R13 K17 ["Hooks"]
       94 GETTABLEKS                       R13 R13 K21 ["useMenu"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K9 ["Src"]
      101 GETTABLEKS                       R14 R14 K22 ["SharedFlags"]
      103 GETTABLEKS                       R14 R14 K23 ["getFFlagRibbonDropdownMinWidth"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R15 R0 K9 ["Src"]
      110 GETTABLEKS                       R15 R15 K22 ["SharedFlags"]
      112 GETTABLEKS                       R15 R15 K24 ["getFFlagRibbonEnableKeyboardNavigation"]
      114 CALL                             R14 1 1
      115 GETTABLEKS                       R15 R2 K25 ["Styling"]
      117 GETTABLEKS                       R16 R15 K26 ["joinTags"]
      119 DUPCLOSURE                       R17 K27 [PROTO_1]
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R5
      131 RETURN                           R17 1
