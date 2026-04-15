PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["ease"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["selectedSource"]
        7 JUMPIFNOTEQKS                    R3 K2 ["Disk"] ; [+3]
        9 LOADK                            R2 K3 [0.5]
       10 JUMP                             ; [+1]
       11 LOADN                            R2 0
       12 DUPTABLE                         R3 K6 [{"duration", "easingStyle"}]
       13 LOADK                            R4 K7 [0.15]
       14 SETTABLEKS                       R4 R3 K4 ["duration"]
       16 GETIMPORT                        R4 K11 [Enum.EasingStyle.Quad]
       18 SETTABLEKS                       R4 R3 K5 ["easingStyle"]
       20 CALL                             R1 2 -1
       21 CALL                             R0 -1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onSelected"]
        3 LOADK                            R1 K1 ["Disk"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onSelected"]
        3 LOADK                            R1 K1 ["Studio"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [UDim2.fromScale]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useAnimatedBinding"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 1
       14 GETTABLEKS                       R6 R0 K2 ["selectedSource"]
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K3 ["useCallback"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R5 0 1
       26 GETTABLEKS                       R6 R0 K4 ["onSelected"]
       28 SETLIST                          R5 R6 1 [1]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K3 ["useCallback"]
       34 NEWCLOSURE                       R5 P2
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R6 0 1
       38 GETTABLEKS                       R7 R0 K4 ["onSelected"]
       40 SETLIST                          R6 R7 1 [1]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 2
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R6 R7 K5 ["View"]
       47 DUPTABLE                         R7 K7 [{"tag"}]
       48 LOADK                            R8 K8 ["size-full-700 bg-shift-200 radius-small"]
       49 SETTABLEKS                       R8 R7 K6 ["tag"]
       51 DUPTABLE                         R8 K11 [{"Highlight", "Options"}]
       52 GETUPVAL                         R9 2
       53 GETUPVAL                         R11 3
       54 GETTABLEKS                       R10 R11 K5 ["View"]
       56 DUPTABLE                         R11 K14 [{"tag", "Size", "Position"}]
       57 LOADK                            R12 K15 ["bg-shift-300 radius-small"]
       58 SETTABLEKS                       R12 R11 K6 ["tag"]
       60 GETIMPORT                        R12 K18 [UDim2.fromScale]
       62 LOADK                            R13 K19 [0.5]
       63 LOADN                            R14 1
       64 CALL                             R12 2 1
       65 SETTABLEKS                       R12 R11 K12 ["Size"]
       67 DUPCLOSURE                       R14 K20 [PROTO_3]
       68 NAMECALL                         R12 R1 K21 ["map"]
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K13 ["Position"]
       73 CALL                             R9 2 1
       74 SETTABLEKS                       R9 R8 K9 ["Highlight"]
       76 GETUPVAL                         R9 2
       77 GETUPVAL                         R11 3
       78 GETTABLEKS                       R10 R11 K5 ["View"]
       80 DUPTABLE                         R11 K7 [{"tag"}]
       81 LOADK                            R12 K22 ["row size-full-700 flex-x-fill gap-none padding-none items-stretch"]
       82 SETTABLEKS                       R12 R11 K6 ["tag"]
       84 DUPTABLE                         R12 K25 [{"Studio", "Disk"}]
       85 GETUPVAL                         R13 2
       86 GETUPVAL                         R15 3
       87 GETTABLEKS                       R14 R15 K26 ["Text"]
       89 DUPTABLE                         R15 K31 [{"tag", "stateLayer", "LayoutOrder", "Size", "Text", "AutoButtonColor", "onActivated"}]
       90 LOADK                            R16 K32 ["text-title-medium radius-small"]
       91 SETTABLEKS                       R16 R15 K6 ["tag"]
       93 DUPTABLE                         R16 K34 [{"affordance"}]
       94 GETUPVAL                         R20 3
       95 GETTABLEKS                       R19 R20 K35 ["Enums"]
       97 GETTABLEKS                       R18 R19 K36 ["StateLayerAffordance"]
       99 GETTABLEKS                       R17 R18 K37 ["None"]
      101 SETTABLEKS                       R17 R16 K33 ["affordance"]
      103 SETTABLEKS                       R16 R15 K27 ["stateLayer"]
      105 LOADN                            R16 1
      106 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      108 GETIMPORT                        R16 K18 [UDim2.fromScale]
      110 LOADK                            R17 K19 [0.5]
      111 LOADN                            R18 1
      112 CALL                             R16 2 1
      113 SETTABLEKS                       R16 R15 K12 ["Size"]
      115 GETTABLEKS                       R16 R0 K38 ["studioVersionLabel"]
      117 SETTABLEKS                       R16 R15 K26 ["Text"]
      119 LOADB                            R16 0
      120 SETTABLEKS                       R16 R15 K29 ["AutoButtonColor"]
      122 SETTABLEKS                       R4 R15 K30 ["onActivated"]
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K23 ["Studio"]
      127 GETUPVAL                         R13 2
      128 GETUPVAL                         R15 3
      129 GETTABLEKS                       R14 R15 K26 ["Text"]
      131 DUPTABLE                         R15 K39 [{"tag", "stateLayer", "LayoutOrder", "Size", "AutoButtonColor", "Text", "onActivated"}]
      132 LOADK                            R16 K32 ["text-title-medium radius-small"]
      133 SETTABLEKS                       R16 R15 K6 ["tag"]
      135 DUPTABLE                         R16 K34 [{"affordance"}]
      136 GETUPVAL                         R20 3
      137 GETTABLEKS                       R19 R20 K35 ["Enums"]
      139 GETTABLEKS                       R18 R19 K36 ["StateLayerAffordance"]
      141 GETTABLEKS                       R17 R18 K37 ["None"]
      143 SETTABLEKS                       R17 R16 K33 ["affordance"]
      145 SETTABLEKS                       R16 R15 K27 ["stateLayer"]
      147 LOADN                            R16 2
      148 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      150 GETIMPORT                        R16 K18 [UDim2.fromScale]
      152 LOADK                            R17 K19 [0.5]
      153 LOADN                            R18 1
      154 CALL                             R16 2 1
      155 SETTABLEKS                       R16 R15 K12 ["Size"]
      157 LOADB                            R16 0
      158 SETTABLEKS                       R16 R15 K29 ["AutoButtonColor"]
      160 GETTABLEKS                       R16 R0 K40 ["diskVersionLabel"]
      162 SETTABLEKS                       R16 R15 K26 ["Text"]
      164 SETTABLEKS                       R3 R15 K30 ["onActivated"]
      166 CALL                             R13 2 1
      167 SETTABLEKS                       R13 R12 K24 ["Disk"]
      169 CALL                             R9 3 1
      170 SETTABLEKS                       R9 R8 K10 ["Options"]
      172 CALL                             R5 3 -1
      173 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactOtter"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["createElement"]
       30 DUPCLOSURE                       R5 K11 [PROTO_4]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R1
       35 GETTABLEKS                       R6 R2 K12 ["memo"]
       37 MOVE                             R7 R5
       38 CALL                             R6 1 -1
       39 RETURN                           R6 -1
