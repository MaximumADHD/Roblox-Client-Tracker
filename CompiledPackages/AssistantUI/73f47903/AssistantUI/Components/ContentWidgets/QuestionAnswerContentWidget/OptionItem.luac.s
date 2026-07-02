PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R1 K2 ["Color"]
       10 GETTABLEKS                       R3 R3 K3 ["Content"]
       12 GETTABLEKS                       R3 R3 K4 ["Emphasis"]
       14 GETUPVAL                         R4 2
       15 GETUPVAL                         R5 3
       16 DUPTABLE                         R6 K9 [{["tag"] = "col size-full-0 auto-y", ["GroupTransparency"], ["LayoutOrder"]}]
       17 GETTABLEKS                       R8 R0 K10 ["isSelected"]
       19 JUMPIFNOT                        R8 ; [+2]
       20 LOADN                            R7 0
       21 JUMP                             ; [+6]
       22 GETTABLEKS                       R8 R0 K11 ["hasAnyAnswer"]
       24 JUMPIFNOT                        R8 ; [+2]
       25 LOADK                            R7 K12 [0.5]
       26 JUMP                             ; [+1]
       27 LOADN                            R7 0
       28 SETTABLEKS                       R7 R6 K7 ["GroupTransparency"]
       30 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       32 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       34 DUPTABLE                         R7 K14 [{"Row"}]
       35 GETUPVAL                         R8 2
       36 GETUPVAL                         R9 3
       37 DUPTABLE                         R10 K16 [{"tag", "onActivated", "LayoutOrder"}]
       38 NEWTABLE                         R11 2 0
       40 LOADB                            R12 1
       41 SETTABLEKS                       R12 R11 K17 ["cursor-pointer row align-y-top gap-medium size-full-800 auto-y padding-x-small padding-y-xsmall radius-small"]
       43 GETTABLEKS                       R12 R0 K10 ["isSelected"]
       45 SETTABLEKS                       R12 R11 K18 ["bg-shift-200"]
       47 SETTABLEKS                       R11 R10 K5 ["tag"]
       49 GETTABLEKS                       R11 R0 K19 ["onSelect"]
       51 SETTABLEKS                       R11 R10 K15 ["onActivated"]
       53 MOVE                             R11 R2
       54 CALL                             R11 0 1
       55 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       57 DUPTABLE                         R11 K21 [{"KeyLabelContainer", "Content"}]
       58 GETUPVAL                         R12 2
       59 GETUPVAL                         R13 3
       60 DUPTABLE                         R14 K23 [{["tag"] = "shrink-0 col auto-xy padding-top-xsmall", ["LayoutOrder"]}]
       61 MOVE                             R15 R2
       62 CALL                             R15 0 1
       63 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       65 DUPTABLE                         R15 K25 [{"KeyLabel"}]
       66 GETUPVAL                         R16 2
       67 GETUPVAL                         R17 3
       68 DUPTABLE                         R18 K27 [{"tag", "backgroundStyle", "LayoutOrder"}]
       69 NEWTABLE                         R19 2 0
       71 LOADB                            R20 1
       72 SETTABLEKS                       R20 R19 K28 ["col align-x-center align-y-center size-500-500 radius-small"]
       74 GETTABLEKS                       R21 R0 K10 ["isSelected"]
       76 NOT                              R20 R21
       77 SETTABLEKS                       R20 R19 K18 ["bg-shift-200"]
       79 SETTABLEKS                       R19 R18 K5 ["tag"]
       81 GETTABLEKS                       R20 R0 K10 ["isSelected"]
       83 JUMPIFNOT                        R20 ; [+2]
       84 MOVE                             R19 R3
       85 JUMP                             ; [+1]
       86 LOADNIL                          R19
       87 SETTABLEKS                       R19 R18 K26 ["backgroundStyle"]
       89 MOVE                             R19 R2
       90 CALL                             R19 0 1
       91 SETTABLEKS                       R19 R18 K8 ["LayoutOrder"]
       93 DUPTABLE                         R19 K30 [{"Number"}]
       94 GETUPVAL                         R20 2
       95 GETUPVAL                         R21 4
       96 DUPTABLE                         R22 K32 [{"tag", "Text", "LayoutOrder"}]
       97 NEWTABLE                         R23 4 0
       99 LOADB                            R24 1
      100 SETTABLEKS                       R24 R23 K33 ["auto-xy text-caption-small text-align-x-center"]
      102 GETTABLEKS                       R24 R0 K10 ["isSelected"]
      104 SETTABLEKS                       R24 R23 K34 ["content-inverse-emphasis"]
      106 GETTABLEKS                       R25 R0 K10 ["isSelected"]
      108 NOT                              R24 R25
      109 SETTABLEKS                       R24 R23 K35 ["content-emphasis"]
      111 SETTABLEKS                       R23 R22 K5 ["tag"]
      113 GETTABLEKS                       R24 R0 K36 ["index"]
      115 FASTCALL1                        TOSTRING R24 ; [+2]
      116 GETIMPORT                        R23 K38 [tostring]
      118 CALL                             R23 1 1
      119 SETTABLEKS                       R23 R22 K31 ["Text"]
      121 MOVE                             R23 R2
      122 CALL                             R23 0 1
      123 SETTABLEKS                       R23 R22 K8 ["LayoutOrder"]
      125 CALL                             R20 2 1
      126 SETTABLEKS                       R20 R19 K29 ["Number"]
      128 CALL                             R16 3 1
      129 SETTABLEKS                       R16 R15 K24 ["KeyLabel"]
      131 CALL                             R12 3 1
      132 SETTABLEKS                       R12 R11 K20 ["KeyLabelContainer"]
      134 GETUPVAL                         R12 2
      135 GETUPVAL                         R13 3
      136 DUPTABLE                         R14 K40 [{["tag"] = "col fill gap-none size-full-0 auto-y padding-right-xsmall", ["LayoutOrder"]}]
      137 MOVE                             R15 R2
      138 CALL                             R15 0 1
      139 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
      141 DUPTABLE                         R15 K43 [{"Title", "Description"}]
      142 GETUPVAL                         R16 2
      143 GETUPVAL                         R17 4
      144 DUPTABLE                         R18 K45 [{["tag"] = "auto-xy text-label-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      145 GETTABLEKS                       R19 R0 K46 ["optionText"]
      147 SETTABLEKS                       R19 R18 K31 ["Text"]
      149 MOVE                             R19 R2
      150 CALL                             R19 0 1
      151 SETTABLEKS                       R19 R18 K8 ["LayoutOrder"]
      153 CALL                             R16 2 1
      154 SETTABLEKS                       R16 R15 K41 ["Title"]
      156 GETTABLEKS                       R16 R0 K47 ["clarificationText"]
      158 JUMPIFNOT                        R16 ; [+17]
      159 LOADB                            R16 0
      160 GETTABLEKS                       R17 R0 K47 ["clarificationText"]
      162 JUMPIFEQKS                       R17 K48 [""] ; [+13]
      164 GETUPVAL                         R16 2
      165 GETUPVAL                         R17 4
      166 DUPTABLE                         R18 K50 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      167 GETTABLEKS                       R19 R0 K47 ["clarificationText"]
      169 SETTABLEKS                       R19 R18 K31 ["Text"]
      171 MOVE                             R19 R2
      172 CALL                             R19 0 1
      173 SETTABLEKS                       R19 R18 K8 ["LayoutOrder"]
      175 CALL                             R16 2 1
      176 SETTABLEKS                       R16 R15 K42 ["Description"]
      178 CALL                             R12 3 1
      179 SETTABLEKS                       R12 R11 K3 ["Content"]
      181 CALL                             R8 3 1
      182 SETTABLEKS                       R8 R7 K13 ["Row"]
      184 CALL                             R4 3 -1
      185 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["Text"]
       30 GETTABLEKS                       R5 R1 K11 ["View"]
       32 GETTABLEKS                       R6 R3 K12 ["createNextOrder"]
       34 GETTABLEKS                       R7 R2 K13 ["createElement"]
       36 DUPCLOSURE                       R8 K14 [PROTO_0]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 RETURN                           R8 1
