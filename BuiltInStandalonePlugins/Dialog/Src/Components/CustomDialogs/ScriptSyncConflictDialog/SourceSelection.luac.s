PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["ease"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["selectedSource"]
        7 JUMPIFNOTEQKS                    R3 K2 ["Disk"] ; [+3]
        9 LOADK                            R2 K3 [0.5]
       10 JUMP                             ; [+1]
       11 LOADN                            R2 0
       12 DUPTABLE                         R3 K7 [{["duration"] = 0.15, ["easingStyle"]}]
       13 GETIMPORT                        R4 K11 [Enum.EasingStyle.Quad]
       15 SETTABLEKS                       R4 R3 K6 ["easingStyle"]
       17 CALL                             R1 2 -1
       18 CALL                             R0 -1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelected"]
        3 LOADK                            R1 K1 ["Disk"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelected"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useAnimatedBinding"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 1
       14 GETTABLEKS                       R6 R0 K2 ["selectedSource"]
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K3 ["useCallback"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R5 0 1
       26 GETTABLEKS                       R6 R0 K4 ["onSelected"]
       28 SETLIST                          R5 R6 1 [1]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       34 NEWCLOSURE                       R5 P2
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R6 0 1
       38 GETTABLEKS                       R7 R0 K4 ["onSelected"]
       40 SETLIST                          R6 R7 1 [1]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 2
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K5 ["View"]
       47 DUPTABLE                         R7 K8 [{["tag"] = "size-full-700 radius-small bg-shift-200"}]
       48 DUPTABLE                         R8 K11 [{"Highlight", "Options"}]
       49 GETUPVAL                         R9 2
       50 GETUPVAL                         R10 3
       51 GETTABLEKS                       R10 R10 K5 ["View"]
       53 DUPTABLE                         R11 K15 [{["tag"] = "radius-small bg-shift-300", ["Size"], ["Position"]}]
       54 GETIMPORT                        R12 K18 [UDim2.fromScale]
       56 LOADK                            R13 K19 [0.5]
       57 LOADN                            R14 1
       58 CALL                             R12 2 1
       59 SETTABLEKS                       R12 R11 K13 ["Size"]
       61 DUPCLOSURE                       R14 K20 [PROTO_3]
       62 NAMECALL                         R12 R1 K21 ["map"]
       64 CALL                             R12 2 1
       65 SETTABLEKS                       R12 R11 K14 ["Position"]
       67 CALL                             R9 2 1
       68 SETTABLEKS                       R9 R8 K9 ["Highlight"]
       70 GETUPVAL                         R9 2
       71 GETUPVAL                         R10 3
       72 GETTABLEKS                       R10 R10 K5 ["View"]
       74 DUPTABLE                         R11 K23 [{["tag"] = "row flex-x-fill items-stretch gap-none size-full-700 padding-none"}]
       75 DUPTABLE                         R12 K26 [{"Studio", "Disk"}]
       76 GETUPVAL                         R13 2
       77 GETUPVAL                         R14 3
       78 GETTABLEKS                       R14 R14 K27 ["Text"]
       80 DUPTABLE                         R15 K35 [{["tag"] = "text-title-medium radius-small", ["stateLayer"], ["LayoutOrder"] = 1, ["Size"], ["Text"], ["AutoButtonColor"] = False, ["onActivated"]}]
       81 DUPTABLE                         R16 K37 [{"affordance"}]
       82 GETUPVAL                         R17 3
       83 GETTABLEKS                       R17 R17 K38 ["Enums"]
       85 GETTABLEKS                       R17 R17 K39 ["StateLayerAffordance"]
       87 GETTABLEKS                       R17 R17 K40 ["None"]
       89 SETTABLEKS                       R17 R16 K36 ["affordance"]
       91 SETTABLEKS                       R16 R15 K29 ["stateLayer"]
       93 GETIMPORT                        R16 K18 [UDim2.fromScale]
       95 LOADK                            R17 K19 [0.5]
       96 LOADN                            R18 1
       97 CALL                             R16 2 1
       98 SETTABLEKS                       R16 R15 K13 ["Size"]
      100 GETTABLEKS                       R16 R0 K41 ["studioVersionLabel"]
      102 SETTABLEKS                       R16 R15 K27 ["Text"]
      104 SETTABLEKS                       R4 R15 K34 ["onActivated"]
      106 CALL                             R13 2 1
      107 SETTABLEKS                       R13 R12 K24 ["Studio"]
      109 GETUPVAL                         R13 2
      110 GETUPVAL                         R14 3
      111 GETTABLEKS                       R14 R14 K27 ["Text"]
      113 DUPTABLE                         R15 K43 [{["tag"] = "text-title-medium radius-small", ["stateLayer"], ["LayoutOrder"] = 2, ["Size"], ["AutoButtonColor"] = False, ["Text"], ["onActivated"]}]
      114 DUPTABLE                         R16 K37 [{"affordance"}]
      115 GETUPVAL                         R17 3
      116 GETTABLEKS                       R17 R17 K38 ["Enums"]
      118 GETTABLEKS                       R17 R17 K39 ["StateLayerAffordance"]
      120 GETTABLEKS                       R17 R17 K40 ["None"]
      122 SETTABLEKS                       R17 R16 K36 ["affordance"]
      124 SETTABLEKS                       R16 R15 K29 ["stateLayer"]
      126 GETIMPORT                        R16 K18 [UDim2.fromScale]
      128 LOADK                            R17 K19 [0.5]
      129 LOADN                            R18 1
      130 CALL                             R16 2 1
      131 SETTABLEKS                       R16 R15 K13 ["Size"]
      133 GETTABLEKS                       R16 R0 K44 ["diskVersionLabel"]
      135 SETTABLEKS                       R16 R15 K27 ["Text"]
      137 SETTABLEKS                       R3 R15 K34 ["onActivated"]
      139 CALL                             R13 2 1
      140 SETTABLEKS                       R13 R12 K25 ["Disk"]
      142 CALL                             R9 3 1
      143 SETTABLEKS                       R9 R8 K10 ["Options"]
      145 CALL                             R5 3 -1
      146 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactOtter"]
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
