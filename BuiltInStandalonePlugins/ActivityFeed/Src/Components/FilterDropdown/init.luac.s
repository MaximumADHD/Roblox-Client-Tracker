PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["X"]
        3 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["items"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 SETTABLE                         R4 R0 R5
       10 FORGLOOP                         R1 2 ; [-2]
       12 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["items"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       11 MOVE                             R7 R0
       12 MOVE                             R8 R5
       13 GETIMPORT                        R6 K5 [table.insert]
       15 CALL                             R6 2 0
       16 FORGLOOP                         R1 2 ; [-8]
       18 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["onChanged"]
        6 GETUPVAL                         R4 2
        7 GETTABLE                         R3 R4 R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["useState"]
       10 GETIMPORT                        R5 K3 [Vector2.new]
       12 LOADN                            R6 0
       13 LOADN                            R7 0
       14 CALL                             R5 2 -1
       15 CALL                             R4 -1 2
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R4
       21 NEWTABLE                         R8 0 1
       23 MOVE                             R9 R4
       24 SETLIST                          R8 R9 1 [1]
       26 CALL                             R6 2 1
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K4 ["useMemo"]
       30 NEWCLOSURE                       R8 P1
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R9 0 1
       34 GETTABLEKS                       R10 R0 K5 ["items"]
       36 SETLIST                          R9 R10 1 [1]
       38 CALL                             R7 2 1
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R8 R8 K4 ["useMemo"]
       42 NEWCLOSURE                       R9 P2
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R10 0 1
       46 GETTABLEKS                       R11 R0 K5 ["items"]
       48 SETLIST                          R10 R11 1 [1]
       50 CALL                             R8 2 1
       51 NEWCLOSURE                       R9 P3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R7
       55 NEWCLOSURE                       R10 P4
       56 CAPTURE                          VAL R2
       57 NEWCLOSURE                       R11 P5
       58 CAPTURE                          VAL R2
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R12 R12 K6 ["createElement"]
       62 LOADK                            R13 K7 ["Frame"]
       63 NEWTABLE                         R14 8 0
       65 GETUPVAL                         R15 0
       66 GETTABLEKS                       R15 R15 K8 ["Tag"]
       68 GETUPVAL                         R16 2
       69 LOADK                            R17 K9 ["Component-FilterDropdown"]
       70 GETTABLEKS                       R19 R3 K10 ["enabled"]
       72 JUMPIFNOT                        R19 ; [+2]
       73 LOADK                            R18 K11 ["ContentHovered"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R18
       76 CALL                             R16 2 1
       77 SETTABLE                         R16 R14 R15
       78 GETUPVAL                         R15 0
       79 GETTABLEKS                       R15 R15 K12 ["Event"]
       81 GETTABLEKS                       R15 R15 K13 ["MouseEnter"]
       83 GETTABLEKS                       R16 R3 K14 ["enable"]
       85 SETTABLE                         R16 R14 R15
       86 GETUPVAL                         R15 0
       87 GETTABLEKS                       R15 R15 K12 ["Event"]
       89 GETTABLEKS                       R15 R15 K15 ["MouseLeave"]
       91 GETTABLEKS                       R16 R3 K16 ["disable"]
       93 SETTABLE                         R16 R14 R15
       94 GETUPVAL                         R15 0
       95 GETTABLEKS                       R15 R15 K17 ["Change"]
       97 GETTABLEKS                       R15 R15 K18 ["AbsoluteSize"]
       99 NEWCLOSURE                       R16 P6
      100 CAPTURE                          VAL R5
      101 SETTABLE                         R16 R14 R15
      102 GETTABLEKS                       R15 R0 K19 ["layoutOrder"]
      104 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
      106 DUPTABLE                         R15 K23 [{"Content", "Menu"}]
      107 GETUPVAL                         R16 0
      108 GETTABLEKS                       R16 R16 K6 ["createElement"]
      110 LOADK                            R17 K24 ["TextButton"]
      111 NEWTABLE                         R18 4 0
      113 GETUPVAL                         R19 0
      114 GETTABLEKS                       R19 R19 K8 ["Tag"]
      116 GETUPVAL                         R20 2
      117 LOADK                            R21 K25 ["X-Row"]
      118 LOADK                            R22 K26 ["CX-Invisible"]
      119 CALL                             R20 2 1
      120 SETTABLE                         R20 R18 R19
      121 GETUPVAL                         R19 0
      122 GETTABLEKS                       R19 R19 K12 ["Event"]
      124 GETTABLEKS                       R19 R19 K27 ["Activated"]
      126 SETTABLE                         R11 R18 R19
      127 LOADK                            R19 K28 [""]
      128 SETTABLEKS                       R19 R18 K29 ["Text"]
      130 DUPTABLE                         R19 K32 [{"Selected", "DropdownIconContainer"}]
      131 GETUPVAL                         R20 0
      132 GETTABLEKS                       R20 R20 K6 ["createElement"]
      134 LOADK                            R21 K33 ["TextLabel"]
      135 NEWTABLE                         R22 4 0
      137 GETUPVAL                         R23 0
      138 GETTABLEKS                       R23 R23 K8 ["Tag"]
      140 GETUPVAL                         R24 2
      141 LOADK                            R25 K34 ["X-Fit"]
      142 LOADK                            R26 K26 ["CX-Invisible"]
      143 CALL                             R24 2 1
      144 SETTABLE                         R24 R22 R23
      145 GETTABLEKS                       R24 R0 K35 ["selectedItemIndex"]
      147 GETTABLE                         R23 R8 R24
      148 SETTABLEKS                       R23 R22 K29 ["Text"]
      150 GETUPVAL                         R23 3
      151 NAMECALL                         R23 R23 K36 ["getNextOrder"]
      153 CALL                             R23 1 1
      154 SETTABLEKS                       R23 R22 K20 ["LayoutOrder"]
      156 CALL                             R20 2 1
      157 SETTABLEKS                       R20 R19 K30 ["Selected"]
      159 GETUPVAL                         R20 0
      160 GETTABLEKS                       R20 R20 K6 ["createElement"]
      162 LOADK                            R21 K7 ["Frame"]
      163 NEWTABLE                         R22 2 0
      165 GETUPVAL                         R23 0
      166 GETTABLEKS                       R23 R23 K8 ["Tag"]
      168 GETUPVAL                         R24 2
      169 LOADK                            R25 K26 ["CX-Invisible"]
      170 CALL                             R24 1 1
      171 SETTABLE                         R24 R22 R23
      172 GETUPVAL                         R23 3
      173 NAMECALL                         R23 R23 K36 ["getNextOrder"]
      175 CALL                             R23 1 1
      176 SETTABLEKS                       R23 R22 K20 ["LayoutOrder"]
      178 DUPTABLE                         R23 K38 [{"DropdownIcon"}]
      179 GETUPVAL                         R24 0
      180 GETTABLEKS                       R24 R24 K6 ["createElement"]
      182 LOADK                            R25 K39 ["ImageLabel"]
      183 NEWTABLE                         R26 0 0
      185 CALL                             R24 2 1
      186 SETTABLEKS                       R24 R23 K37 ["DropdownIcon"]
      188 CALL                             R20 3 1
      189 SETTABLEKS                       R20 R19 K31 ["DropdownIconContainer"]
      191 CALL                             R16 3 1
      192 SETTABLEKS                       R16 R15 K21 ["Content"]
      194 GETUPVAL                         R16 0
      195 GETTABLEKS                       R16 R16 K6 ["createElement"]
      197 GETUPVAL                         R17 4
      198 DUPTABLE                         R18 K45 [{"Items", "Width", "Hide", "OnItemActivated", "OnFocusLost"}]
      199 SETTABLEKS                       R8 R18 K40 ["Items"]
      201 SETTABLEKS                       R6 R18 K41 ["Width"]
      203 NOT                              R19 R1
      204 SETTABLEKS                       R19 R18 K42 ["Hide"]
      206 SETTABLEKS                       R9 R18 K43 ["OnItemActivated"]
      208 SETTABLEKS                       R10 R18 K44 ["OnFocusLost"]
      210 CALL                             R16 2 1
      211 SETTABLEKS                       R16 R15 K22 ["Menu"]
      213 CALL                             R12 3 -1
      214 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["ReactUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["Styling"]
       32 GETTABLEKS                       R4 R4 K10 ["joinTags"]
       34 GETTABLEKS                       R5 R2 K11 ["useToggleState"]
       36 GETTABLEKS                       R6 R3 K12 ["Util"]
       38 GETTABLEKS                       R6 R6 K13 ["LayoutOrderIterator"]
       40 GETTABLEKS                       R7 R6 K14 ["new"]
       42 CALL                             R7 0 1
       43 GETTABLEKS                       R8 R3 K15 ["UI"]
       45 GETTABLEKS                       R9 R8 K16 ["DropdownMenu"]
       47 DUPCLOSURE                       R10 K17 [PROTO_7]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R9
       53 RETURN                           R10 1
