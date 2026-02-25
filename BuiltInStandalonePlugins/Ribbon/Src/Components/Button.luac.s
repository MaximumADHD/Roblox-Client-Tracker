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
        6 GETTABLEKS                       R3 R0 K2 ["Size"]
        8 JUMPIFNOTEQKS                    R3 K3 ["Small"] ; [+3]
       10 LOADK                            R2 K3 ["Small"]
       11 JUMP                             ; [+1]
       12 LOADK                            R2 K4 ["Large"]
       13 GETTABLEKS                       R4 R0 K5 ["TextOnly"]
       15 JUMPIF                           R4 ; [+4]
       16 GETTABLEKS                       R4 R0 K7 ["IconSide"]
       18 ORK                              R3 R4 K6 ["Left"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 GETTABLEKS                       R5 R0 K8 ["Icon"]
       23 JUMPIFNOT                        R5 ; [+7]
       24 GETTABLEKS                       R4 R0 K8 ["Icon"]
       26 LOADK                            R6 K9 ["/"]
       27 NAMECALL                         R4 R4 K10 ["find"]
       29 CALL                             R4 2 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R4
       32 GETTABLEKS                       R6 R0 K8 ["Icon"]
       34 JUMPIFNOT                        R6 ; [+12]
       35 JUMPIFNOT                        R4 ; [+3]
       36 GETTABLEKS                       R5 R0 K8 ["Icon"]
       38 JUMP                             ; [+9]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R5 R6 K11 ["getPathForIcon"]
       42 GETTABLEKS                       R6 R0 K8 ["Icon"]
       44 MOVE                             R7 R2
       45 CALL                             R5 2 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R5
       48 GETUPVAL                         R6 2
       49 DUPTABLE                         R7 K16 [{"Uri", "Title", "Text", "Shortcuts", "WidgetRef"}]
       50 GETTABLEKS                       R8 R0 K0 ["Uri"]
       52 SETTABLEKS                       R8 R7 K0 ["Uri"]
       54 GETTABLEKS                       R8 R0 K17 ["TooltipTitle"]
       56 SETTABLEKS                       R8 R7 K12 ["Title"]
       58 GETTABLEKS                       R8 R0 K18 ["Tooltip"]
       60 SETTABLEKS                       R8 R7 K13 ["Text"]
       62 GETTABLEKS                       R8 R0 K14 ["Shortcuts"]
       64 SETTABLEKS                       R8 R7 K14 ["Shortcuts"]
       66 SETTABLEKS                       R1 R7 K15 ["WidgetRef"]
       68 CALL                             R6 1 2
       69 GETUPVAL                         R9 3
       70 GETTABLEKS                       R8 R9 K19 ["createElement"]
       72 LOADK                            R9 K20 ["TextButton"]
       73 NEWTABLE                         R10 8 0
       75 SETTABLEKS                       R1 R10 K21 ["ref"]
       77 GETTABLEKS                       R11 R0 K22 ["LayoutOrder"]
       79 SETTABLEKS                       R11 R10 K22 ["LayoutOrder"]
       81 GETUPVAL                         R13 3
       82 GETTABLEKS                       R12 R13 K23 ["Event"]
       84 GETTABLEKS                       R11 R12 K24 ["InputBegan"]
       86 NEWCLOSURE                       R12 P0
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U4
       89 SETTABLE                         R12 R10 R11
       90 GETTABLEKS                       R11 R0 K25 ["Visible"]
       92 SETTABLEKS                       R11 R10 K25 ["Visible"]
       94 GETUPVAL                         R13 3
       95 GETTABLEKS                       R12 R13 K23 ["Event"]
       97 GETTABLEKS                       R11 R12 K26 ["MouseEnter"]
       99 SETTABLE                         R6 R10 R11
      100 GETUPVAL                         R13 3
      101 GETTABLEKS                       R12 R13 K23 ["Event"]
      103 GETTABLEKS                       R11 R12 K27 ["MouseLeave"]
      105 SETTABLE                         R7 R10 R11
      106 GETUPVAL                         R12 3
      107 GETTABLEKS                       R11 R12 K28 ["Tag"]
      109 GETUPVAL                         R12 5
      110 LOADK                            R14 K29 ["Component-Button Role-Surface X-Fit data-testid=%*"]
      111 GETUPVAL                         R16 6
      112 GETTABLEKS                       R17 R0 K0 ["Uri"]
      114 CALL                             R16 1 1
      115 NAMECALL                         R14 R14 K30 ["format"]
      117 CALL                             R14 2 1
      118 MOVE                             R13 R14
      119 GETTABLEKS                       R15 R0 K31 ["Disabled"]
      121 JUMPIFNOT                        R15 ; [+2]
      122 LOADK                            R14 K32 ["State-Disabled"]
      123 JUMP                             ; [+1]
      124 LOADK                            R14 K33 ["State-Default"]
      125 GETUPVAL                         R17 3
      126 GETTABLEKS                       R16 R17 K28 ["Tag"]
      128 GETTABLE                         R15 R0 R16
      129 CALL                             R12 3 1
      130 SETTABLE                         R12 R10 R11
      131 DUPTABLE                         R11 K35 [{"StateLayer"}]
      132 GETUPVAL                         R13 3
      133 GETTABLEKS                       R12 R13 K19 ["createElement"]
      135 LOADK                            R13 K36 ["Frame"]
      136 NEWTABLE                         R14 1 0
      138 GETUPVAL                         R16 3
      139 GETTABLEKS                       R15 R16 K28 ["Tag"]
      141 GETUPVAL                         R16 5
      142 LOADK                            R17 K37 ["Role-Surface X-Fit X-Row X-Middle X-Center"]
      143 GETTABLEKS                       R19 R0 K2 ["Size"]
      145 JUMPIFNOTEQKS                    R19 K3 ["Small"] ; [+3]
      147 LOADK                            R18 K3 ["Small"]
      148 JUMP                             ; [+7]
      149 GETTABLEKS                       R19 R0 K2 ["Size"]
      151 JUMPIFNOTEQKS                    R19 K4 ["Large"] ; [+3]
      153 LOADK                            R18 K4 ["Large"]
      154 JUMP                             ; [+1]
      155 LOADK                            R18 K38 ["Medium"]
      156 CALL                             R16 2 1
      157 SETTABLE                         R16 R14 R15
      158 DUPTABLE                         R15 K41 [{"ButtonIcon", "ButtonText"}]
      159 GETTABLEKS                       R17 R0 K5 ["TextOnly"]
      161 JUMPIF                           R17 ; [+23]
      162 GETUPVAL                         R17 3
      163 GETTABLEKS                       R16 R17 K19 ["createElement"]
      165 LOADK                            R17 K42 ["ImageLabel"]
      166 NEWTABLE                         R18 2 0
      168 SETTABLEKS                       R5 R18 K43 ["Image"]
      170 GETUPVAL                         R20 3
      171 GETTABLEKS                       R19 R20 K28 ["Tag"]
      173 GETUPVAL                         R20 5
      174 JUMPIFNOTEQKS                    R2 K3 ["Small"] ; [+3]
      176 LOADK                            R21 K44 ["Icon-Small"]
      177 JUMP                             ; [+1]
      178 LOADK                            R21 K45 ["Icon-Large"]
      179 MOVE                             R22 R3
      180 LOADK                            R23 K46 ["Role-Surface"]
      181 CALL                             R20 3 1
      182 SETTABLE                         R20 R18 R19
      183 CALL                             R16 2 1
      184 JUMP                             ; [+1]
      185 LOADNIL                          R16
      186 SETTABLEKS                       R16 R15 K39 ["ButtonIcon"]
      188 GETUPVAL                         R17 3
      189 GETTABLEKS                       R16 R17 K19 ["createElement"]
      191 LOADK                            R17 K47 ["TextLabel"]
      192 NEWTABLE                         R18 2 0
      194 GETTABLEKS                       R19 R0 K13 ["Text"]
      196 SETTABLEKS                       R19 R18 K13 ["Text"]
      198 GETUPVAL                         R20 3
      199 GETTABLEKS                       R19 R20 K28 ["Tag"]
      201 GETUPVAL                         R20 5
      202 LOADK                            R21 K48 ["Role-Surface X-Fit"]
      203 GETTABLEKS                       R23 R0 K2 ["Size"]
      205 JUMPIFNOTEQKS                    R23 K3 ["Small"] ; [+3]
      207 LOADK                            R22 K3 ["Small"]
      208 JUMP                             ; [+7]
      209 GETTABLEKS                       R23 R0 K2 ["Size"]
      211 JUMPIFNOTEQKS                    R23 K4 ["Large"] ; [+3]
      213 LOADK                            R22 K4 ["Large"]
      214 JUMP                             ; [+1]
      215 LOADNIL                          R22
      216 CALL                             R20 2 1
      217 SETTABLE                         R20 R18 R19
      218 CALL                             R16 2 1
      219 SETTABLEKS                       R16 R15 K40 ["ButtonText"]
      221 CALL                             R12 3 1
      222 SETTABLEKS                       R12 R11 K34 ["StateLayer"]
      224 CALL                             R8 3 -1
      225 RETURN                           R8 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["IconHelper"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["uriToTestId"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R6 K12 ["Framework"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R7 K13 ["Types"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R4 K14 ["Styling"]
       48 GETTABLEKS                       R7 R6 K15 ["joinTags"]
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R11 R0 K8 ["Src"]
       54 GETTABLEKS                       R10 R11 K16 ["Hooks"]
       56 GETTABLEKS                       R9 R10 K17 ["TooltipSettings"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R12 R0 K8 ["Src"]
       63 GETTABLEKS                       R11 R12 K16 ["Hooks"]
       65 GETTABLEKS                       R10 R11 K18 ["useTooltip"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R12 R0 K6 ["Packages"]
       72 GETTABLEKS                       R11 R12 K19 ["StudioFoundation"]
       74 CALL                             R10 1 1
       75 GETTABLEKS                       R12 R10 K16 ["Hooks"]
       77 GETTABLEKS                       R11 R12 K20 ["useWidgetRef"]
       79 DUPCLOSURE                       R12 K21 [PROTO_1]
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R3
       87 RETURN                           R12 1
