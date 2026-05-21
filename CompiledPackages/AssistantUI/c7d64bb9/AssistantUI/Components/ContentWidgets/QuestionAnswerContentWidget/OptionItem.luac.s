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
       16 DUPTABLE                         R6 K8 [{"tag", "GroupTransparency", "LayoutOrder"}]
       17 LOADK                            R7 K9 ["col size-full-0 auto-y"]
       18 SETTABLEKS                       R7 R6 K5 ["tag"]
       20 GETTABLEKS                       R8 R0 K10 ["isSelected"]
       22 JUMPIFNOT                        R8 ; [+2]
       23 LOADN                            R7 0
       24 JUMP                             ; [+6]
       25 GETTABLEKS                       R8 R0 K11 ["hasAnyAnswer"]
       27 JUMPIFNOT                        R8 ; [+2]
       28 LOADK                            R7 K12 [0.5]
       29 JUMP                             ; [+1]
       30 LOADN                            R7 0
       31 SETTABLEKS                       R7 R6 K6 ["GroupTransparency"]
       33 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       35 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       37 DUPTABLE                         R7 K14 [{"Row"}]
       38 GETUPVAL                         R8 2
       39 GETUPVAL                         R9 3
       40 DUPTABLE                         R10 K16 [{"tag", "onActivated", "LayoutOrder"}]
       41 NEWTABLE                         R11 2 0
       43 LOADB                            R12 1
       44 SETTABLEKS                       R12 R11 K17 ["row size-full-800 auto-y radius-small cursor-pointer gap-medium align-y-top padding-x-small padding-y-xsmall"]
       46 GETTABLEKS                       R12 R0 K10 ["isSelected"]
       48 SETTABLEKS                       R12 R11 K18 ["bg-shift-200"]
       50 SETTABLEKS                       R11 R10 K5 ["tag"]
       52 GETTABLEKS                       R11 R0 K19 ["onSelect"]
       54 SETTABLEKS                       R11 R10 K15 ["onActivated"]
       56 MOVE                             R11 R2
       57 CALL                             R11 0 1
       58 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       60 DUPTABLE                         R11 K21 [{"KeyLabelContainer", "Content"}]
       61 GETUPVAL                         R12 2
       62 GETUPVAL                         R13 3
       63 DUPTABLE                         R14 K22 [{"tag", "LayoutOrder"}]
       64 LOADK                            R15 K23 ["col shrink-0 padding-top-xsmall auto-xy"]
       65 SETTABLEKS                       R15 R14 K5 ["tag"]
       67 MOVE                             R15 R2
       68 CALL                             R15 0 1
       69 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       71 DUPTABLE                         R15 K25 [{"KeyLabel"}]
       72 GETUPVAL                         R16 2
       73 GETUPVAL                         R17 3
       74 DUPTABLE                         R18 K27 [{"tag", "backgroundStyle", "LayoutOrder"}]
       75 NEWTABLE                         R19 2 0
       77 LOADB                            R20 1
       78 SETTABLEKS                       R20 R19 K28 ["col align-x-center align-y-center radius-small size-500-500"]
       80 GETTABLEKS                       R21 R0 K10 ["isSelected"]
       82 NOT                              R20 R21
       83 SETTABLEKS                       R20 R19 K18 ["bg-shift-200"]
       85 SETTABLEKS                       R19 R18 K5 ["tag"]
       87 GETTABLEKS                       R20 R0 K10 ["isSelected"]
       89 JUMPIFNOT                        R20 ; [+2]
       90 MOVE                             R19 R3
       91 JUMP                             ; [+1]
       92 LOADNIL                          R19
       93 SETTABLEKS                       R19 R18 K26 ["backgroundStyle"]
       95 MOVE                             R19 R2
       96 CALL                             R19 0 1
       97 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
       99 DUPTABLE                         R19 K30 [{"Number"}]
      100 GETUPVAL                         R20 2
      101 GETUPVAL                         R21 4
      102 DUPTABLE                         R22 K32 [{"tag", "Text", "LayoutOrder"}]
      103 NEWTABLE                         R23 4 0
      105 LOADB                            R24 1
      106 SETTABLEKS                       R24 R23 K33 ["auto-xy text-caption-small text-align-x-center"]
      108 GETTABLEKS                       R24 R0 K10 ["isSelected"]
      110 SETTABLEKS                       R24 R23 K34 ["content-inverse-emphasis"]
      112 GETTABLEKS                       R25 R0 K10 ["isSelected"]
      114 NOT                              R24 R25
      115 SETTABLEKS                       R24 R23 K35 ["content-emphasis"]
      117 SETTABLEKS                       R23 R22 K5 ["tag"]
      119 GETTABLEKS                       R24 R0 K36 ["index"]
      121 FASTCALL1                        TOSTRING R24 ; [+2]
      122 GETIMPORT                        R23 K38 [tostring]
      124 CALL                             R23 1 1
      125 SETTABLEKS                       R23 R22 K31 ["Text"]
      127 MOVE                             R23 R2
      128 CALL                             R23 0 1
      129 SETTABLEKS                       R23 R22 K7 ["LayoutOrder"]
      131 CALL                             R20 2 1
      132 SETTABLEKS                       R20 R19 K29 ["Number"]
      134 CALL                             R16 3 1
      135 SETTABLEKS                       R16 R15 K24 ["KeyLabel"]
      137 CALL                             R12 3 1
      138 SETTABLEKS                       R12 R11 K20 ["KeyLabelContainer"]
      140 GETUPVAL                         R12 2
      141 GETUPVAL                         R13 3
      142 DUPTABLE                         R14 K22 [{"tag", "LayoutOrder"}]
      143 LOADK                            R15 K39 ["col size-full-0 fill auto-y gap-none padding-right-xsmall"]
      144 SETTABLEKS                       R15 R14 K5 ["tag"]
      146 MOVE                             R15 R2
      147 CALL                             R15 0 1
      148 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      150 DUPTABLE                         R15 K42 [{"Title", "Description"}]
      151 GETUPVAL                         R16 2
      152 GETUPVAL                         R17 4
      153 DUPTABLE                         R18 K32 [{"tag", "Text", "LayoutOrder"}]
      154 LOADK                            R19 K43 ["auto-xy text-label-small content-emphasis text-wrap text-align-x-left"]
      155 SETTABLEKS                       R19 R18 K5 ["tag"]
      157 GETTABLEKS                       R19 R0 K44 ["optionText"]
      159 SETTABLEKS                       R19 R18 K31 ["Text"]
      161 MOVE                             R19 R2
      162 CALL                             R19 0 1
      163 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      165 CALL                             R16 2 1
      166 SETTABLEKS                       R16 R15 K40 ["Title"]
      168 GETTABLEKS                       R16 R0 K45 ["clarificationText"]
      170 JUMPIFNOT                        R16 ; [+20]
      171 LOADB                            R16 0
      172 GETTABLEKS                       R17 R0 K45 ["clarificationText"]
      174 JUMPIFEQKS                       R17 K46 [""] ; [+16]
      176 GETUPVAL                         R16 2
      177 GETUPVAL                         R17 4
      178 DUPTABLE                         R18 K32 [{"tag", "Text", "LayoutOrder"}]
      179 LOADK                            R19 K47 ["auto-xy text-body-small content-default text-wrap text-align-x-left"]
      180 SETTABLEKS                       R19 R18 K5 ["tag"]
      182 GETTABLEKS                       R19 R0 K45 ["clarificationText"]
      184 SETTABLEKS                       R19 R18 K31 ["Text"]
      186 MOVE                             R19 R2
      187 CALL                             R19 0 1
      188 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      190 CALL                             R16 2 1
      191 SETTABLEKS                       R16 R15 K41 ["Description"]
      193 CALL                             R12 3 1
      194 SETTABLEKS                       R12 R11 K3 ["Content"]
      196 CALL                             R8 3 1
      197 SETTABLEKS                       R8 R7 K13 ["Row"]
      199 CALL                             R4 3 -1
      200 RETURN                           R4 -1

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
