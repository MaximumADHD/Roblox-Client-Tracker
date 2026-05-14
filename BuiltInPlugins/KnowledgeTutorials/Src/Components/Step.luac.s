PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R2 R0 K1 ["context"]
        4 GETTABLEKS                       R3 R0 K2 ["extraContext"]
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+2]
        8 LOADNIL                          R4
        9 RETURN                           R4 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["Hooks"]
       13 GETTABLEKS                       R4 R4 K4 ["useTokens"]
       15 CALL                             R4 0 1
       16 GETTABLEKS                       R6 R1 K5 ["index"]
       18 JUMPIFNOT                        R6 ; [+13]
       19 GETTABLEKS                       R7 R3 K6 ["stepNumbers"]
       21 GETTABLEKS                       R8 R1 K5 ["index"]
       23 GETTABLE                         R6 R7 R8
       24 JUMPIF                           R6 ; [+2]
       25 GETTABLEKS                       R6 R1 K5 ["index"]
       27 FASTCALL1                        TOSTRING R6 ; [+2]
       28 GETIMPORT                        R5 K8 [tostring]
       30 CALL                             R5 1 1
       31 JUMP                             ; [+1]
       32 LOADK                            R5 K9 ["?"]
       33 GETTABLEKS                       R8 R3 K10 ["stepCompletions"]
       35 GETTABLEKS                       R10 R1 K5 ["index"]
       37 ORK                              R9 R10 K11 [-1]
       38 GETTABLE                         R7 R8 R9
       39 JUMPIFEQKB                       R7 TRUE ; [+2]
       41 LOADB                            R6 0 +1
       42 LOADB                            R6 1
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K12 ["createElement"]
       46 GETUPVAL                         R8 2
       47 DUPTABLE                         R9 K15 [{"tag", "LayoutOrder"}]
       48 LOADK                            R10 K16 ["size-full-0 auto-y bg-surface-100"]
       49 SETTABLEKS                       R10 R9 K13 ["tag"]
       51 GETTABLEKS                       R10 R1 K5 ["index"]
       53 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
       55 DUPTABLE                         R10 K18 [{"Background"}]
       56 GETUPVAL                         R11 1
       57 GETTABLEKS                       R11 R11 K12 ["createElement"]
       59 GETUPVAL                         R12 2
       60 DUPTABLE                         R13 K19 [{"tag"}]
       61 LOADK                            R14 K20 ["row gap-medium padding-small align-x-left align-y-top size-full radius-small bg-surface-100"]
       62 SETTABLEKS                       R14 R13 K13 ["tag"]
       64 DUPTABLE                         R14 K23 [{"Number", "Content"}]
       65 GETUPVAL                         R15 1
       66 GETTABLEKS                       R15 R15 K12 ["createElement"]
       68 GETUPVAL                         R16 3
       69 DUPTABLE                         R17 K26 [{"backgroundStyle", "tag", "Text", "LayoutOrder"}]
       70 JUMPIFNOT                        R6 ; [+9]
       71 GETTABLEKS                       R18 R4 K27 ["Color"]
       73 GETTABLEKS                       R18 R18 K28 ["Extended"]
       75 GETTABLEKS                       R18 R18 K29 ["Green"]
       77 GETTABLEKS                       R18 R18 K30 ["Green_600"]
       79 JUMP                             ; [+6]
       80 GETTABLEKS                       R18 R4 K27 ["Color"]
       82 GETTABLEKS                       R18 R18 K31 ["ActionStandard"]
       84 GETTABLEKS                       R18 R18 K17 ["Background"]
       86 SETTABLEKS                       R18 R17 K24 ["backgroundStyle"]
       88 LOADK                            R18 K32 ["text-body-medium size-600-600 text-align-x-center radius-circle content-action-standard"]
       89 SETTABLEKS                       R18 R17 K13 ["tag"]
       91 JUMPIFNOT                        R6 ; [+2]
       92 LOADK                            R18 K33 [""]
       93 JUMP                             ; [+1]
       94 MOVE                             R18 R5
       95 SETTABLEKS                       R18 R17 K25 ["Text"]
       97 LOADN                            R18 0
       98 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      100 DUPTABLE                         R18 K35 [{"Checkmark"}]
      101 JUMPIFNOT                        R6 ; [+26]
      102 GETUPVAL                         R19 1
      103 GETTABLEKS                       R19 R19 K12 ["createElement"]
      105 GETUPVAL                         R20 4
      106 DUPTABLE                         R21 K39 [{"Image", "imageStyle", "tag", "testId"}]
      107 LOADK                            R22 K40 ["icons/status/success"]
      108 SETTABLEKS                       R22 R21 K36 ["Image"]
      110 GETTABLEKS                       R22 R4 K27 ["Color"]
      112 GETTABLEKS                       R22 R22 K28 ["Extended"]
      114 GETTABLEKS                       R22 R22 K41 ["White"]
      116 GETTABLEKS                       R22 R22 K42 ["White_100"]
      118 SETTABLEKS                       R22 R21 K37 ["imageStyle"]
      120 LOADK                            R22 K43 ["anchor-center-center position-center-center size-500-500"]
      121 SETTABLEKS                       R22 R21 K13 ["tag"]
      123 LOADK                            R22 K44 ["--knowledge-tutorials-StepCheckmark"]
      124 SETTABLEKS                       R22 R21 K38 ["testId"]
      126 CALL                             R19 2 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R19
      129 SETTABLEKS                       R19 R18 K34 ["Checkmark"]
      131 CALL                             R15 3 1
      132 SETTABLEKS                       R15 R14 K21 ["Number"]
      134 GETUPVAL                         R15 1
      135 GETTABLEKS                       R15 R15 K12 ["createElement"]
      137 GETUPVAL                         R16 2
      138 DUPTABLE                         R17 K46 [{"tag", "Size", "LayoutOrder"}]
      139 LOADK                            R18 K47 ["col gap-small auto-y content-action-standard"]
      140 SETTABLEKS                       R18 R17 K13 ["tag"]
      142 GETIMPORT                        R18 K50 [UDim2.new]
      144 LOADN                            R19 1
      145 LOADN                            R20 216
      146 LOADN                            R21 0
      147 LOADN                            R22 0
      148 CALL                             R18 4 1
      149 SETTABLEKS                       R18 R17 K45 ["Size"]
      151 LOADN                            R18 1
      152 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      154 DUPTABLE                         R18 K52 [{"Elements"}]
      155 GETUPVAL                         R19 1
      156 GETTABLEKS                       R19 R19 K12 ["createElement"]
      158 GETUPVAL                         R20 1
      159 GETTABLEKS                       R20 R20 K53 ["Fragment"]
      161 LOADNIL                          R21
      162 GETTABLEKS                       R22 R2 K54 ["processChildren"]
      164 GETTABLEKS                       R23 R1 K55 ["children"]
      166 MOVE                             R24 R2
      167 CALL                             R22 2 -1
      168 CALL                             R19 -1 1
      169 SETTABLEKS                       R19 R18 K51 ["Elements"]
      171 CALL                             R15 3 1
      172 SETTABLEKS                       R15 R14 K22 ["Content"]
      174 CALL                             R11 3 1
      175 SETTABLEKS                       R11 R10 K17 ["Background"]
      177 CALL                             R7 3 -1
      178 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["View"]
       30 GETTABLEKS                       R5 R3 K12 ["Text"]
       32 GETTABLEKS                       R6 R3 K13 ["Image"]
       34 DUPCLOSURE                       R7 K14 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R6
       40 RETURN                           R7 1
