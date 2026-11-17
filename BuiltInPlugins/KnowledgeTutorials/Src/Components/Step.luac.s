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
       47 DUPTABLE                         R9 K16 [{["tag"] = "size-full-0 auto-y bg-surface-100", ["LayoutOrder"]}]
       48 GETTABLEKS                       R10 R1 K5 ["index"]
       50 SETTABLEKS                       R10 R9 K15 ["LayoutOrder"]
       52 DUPTABLE                         R10 K18 [{"Background"}]
       53 GETUPVAL                         R11 1
       54 GETTABLEKS                       R11 R11 K12 ["createElement"]
       56 GETUPVAL                         R12 2
       57 DUPTABLE                         R13 K20 [{["tag"] = "row align-x-left align-y-top gap-medium size-full padding-small radius-small bg-surface-100"}]
       58 DUPTABLE                         R14 K23 [{"Number", "Content"}]
       59 GETUPVAL                         R15 1
       60 GETTABLEKS                       R15 R15 K12 ["createElement"]
       62 GETUPVAL                         R16 3
       63 DUPTABLE                         R17 K28 [{["backgroundStyle"], ["tag"] = "size-600-600 text-body-medium text-align-x-center radius-circle content-action-standard", ["Text"], ["LayoutOrder"] = 0}]
       64 JUMPIFNOT                        R6 ; [+9]
       65 GETTABLEKS                       R18 R4 K29 ["Color"]
       67 GETTABLEKS                       R18 R18 K30 ["Extended"]
       69 GETTABLEKS                       R18 R18 K31 ["Green"]
       71 GETTABLEKS                       R18 R18 K32 ["Green_600"]
       73 JUMP                             ; [+6]
       74 GETTABLEKS                       R18 R4 K29 ["Color"]
       76 GETTABLEKS                       R18 R18 K33 ["ActionStandard"]
       78 GETTABLEKS                       R18 R18 K17 ["Background"]
       80 SETTABLEKS                       R18 R17 K24 ["backgroundStyle"]
       82 JUMPIFNOT                        R6 ; [+2]
       83 LOADK                            R18 K34 [""]
       84 JUMP                             ; [+1]
       85 MOVE                             R18 R5
       86 SETTABLEKS                       R18 R17 K26 ["Text"]
       88 DUPTABLE                         R18 K36 [{"Checkmark"}]
       89 JUMPIFNOT                        R6 ; [+17]
       90 GETUPVAL                         R19 1
       91 GETTABLEKS                       R19 R19 K12 ["createElement"]
       93 GETUPVAL                         R20 4
       94 DUPTABLE                         R21 K43 [{["Image"] = "icons/status/success", ["imageStyle"], ["tag"] = "position-center-center anchor-center-center size-500-500", ["testId"] = "--knowledge-tutorials-StepCheckmark"}]
       95 GETTABLEKS                       R22 R4 K29 ["Color"]
       97 GETTABLEKS                       R22 R22 K30 ["Extended"]
       99 GETTABLEKS                       R22 R22 K44 ["White"]
      101 GETTABLEKS                       R22 R22 K45 ["White_100"]
      103 SETTABLEKS                       R22 R21 K39 ["imageStyle"]
      105 CALL                             R19 2 1
      106 JUMP                             ; [+1]
      107 LOADNIL                          R19
      108 SETTABLEKS                       R19 R18 K35 ["Checkmark"]
      110 CALL                             R15 3 1
      111 SETTABLEKS                       R15 R14 K21 ["Number"]
      113 GETUPVAL                         R15 1
      114 GETTABLEKS                       R15 R15 K12 ["createElement"]
      116 GETUPVAL                         R16 2
      117 DUPTABLE                         R17 K49 [{["tag"] = "col gap-small auto-y content-action-standard", ["Size"], ["LayoutOrder"] = 1}]
      118 GETIMPORT                        R18 K52 [UDim2.new]
      120 LOADN                            R19 1
      121 LOADN                            R20 -40
      122 LOADN                            R21 0
      123 LOADN                            R22 0
      124 CALL                             R18 4 1
      125 SETTABLEKS                       R18 R17 K47 ["Size"]
      127 DUPTABLE                         R18 K54 [{"Elements"}]
      128 GETUPVAL                         R19 1
      129 GETTABLEKS                       R19 R19 K12 ["createElement"]
      131 GETUPVAL                         R20 1
      132 GETTABLEKS                       R20 R20 K55 ["Fragment"]
      134 LOADNIL                          R21
      135 GETTABLEKS                       R22 R2 K56 ["processChildren"]
      137 GETTABLEKS                       R23 R1 K57 ["children"]
      139 MOVE                             R24 R2
      140 CALL                             R22 2 -1
      141 CALL                             R19 -1 1
      142 SETTABLEKS                       R19 R18 K53 ["Elements"]
      144 CALL                             R15 3 1
      145 SETTABLEKS                       R15 R14 K22 ["Content"]
      147 CALL                             R11 3 1
      148 SETTABLEKS                       R11 R10 K17 ["Background"]
      150 CALL                             R7 3 -1
      151 RETURN                           R7 -1

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
