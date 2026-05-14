PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getTargetFromChange"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["props"]
       10 GETTABLEKS                       R2 R2 K2 ["Inspector"]
       12 NAMECALL                         R2 R2 K3 ["get"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R5 R1 K4 ["BridgeId"]
       17 GETTABLEKS                       R6 R1 K5 ["Id"]
       19 NAMECALL                         R3 R2 K6 ["attachRoactTree"]
       21 CALL                             R3 3 1
       22 NAMECALL                         R4 R3 K7 ["getRoot"]
       24 CALL                             R4 1 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K1 ["props"]
       28 GETTABLEKS                       R4 R4 K8 ["selectTarget"]
       30 MOVE                             R5 R1
       31 CALL                             R4 1 0
       32 GETUPVAL                         R4 1
       33 LOADB                            R5 1
       34 SETTABLEKS                       R5 R4 K9 ["MouseIconEnabled"]
       36 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onSelectTarget"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETTABLEN                        R2 R3 1
        4 GETTABLEKS                       R3 R2 K0 ["BridgeId"]
        6 JUMPIFNOT                        R3 ; [+1]
        7 RETURN                           R2 1
        8 LOADNIL                          R3
        9 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K9 [{"Instances", "Expansion", "Selection", "OnExpansionChange", "OnSelectionChange", "Size", "Style"}]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R6 R1 K2 ["Instances"]
       10 CALL                             R5 1 1
       11 SETTABLEKS                       R5 R4 K2 ["Instances"]
       13 GETTABLEKS                       R5 R1 K3 ["Expansion"]
       15 SETTABLEKS                       R5 R4 K3 ["Expansion"]
       17 NEWTABLE                         R5 0 0
       19 SETTABLEKS                       R5 R4 K4 ["Selection"]
       21 GETTABLEKS                       R5 R1 K10 ["toggleTarget"]
       23 SETTABLEKS                       R5 R4 K5 ["OnExpansionChange"]
       25 GETTABLEKS                       R5 R0 K11 ["onSelectTarget"]
       27 SETTABLEKS                       R5 R4 K6 ["OnSelectionChange"]
       29 GETIMPORT                        R5 K14 [UDim2.new]
       31 LOADN                            R6 1
       32 LOADN                            R7 0
       33 LOADN                            R8 1
       34 LOADN                            R9 0
       35 CALL                             R5 4 1
       36 SETTABLEKS                       R5 R4 K7 ["Size"]
       38 LOADK                            R5 K15 ["BorderBox"]
       39 SETTABLEKS                       R5 R4 K8 ["Style"]
       41 CALL                             R2 2 -1
       42 RETURN                           R2 -1

PROTO_4:
        0 DUPTABLE                         R2 K2 [{"Instances", "Expansion"}]
        1 GETTABLEKS                       R3 R0 K3 ["Targets"]
        3 GETTABLEKS                       R3 R3 K4 ["targets"]
        5 SETTABLEKS                       R3 R2 K0 ["Instances"]
        7 GETTABLEKS                       R3 R0 K3 ["Targets"]
        9 GETTABLEKS                       R3 R3 K5 ["expandedTargets"]
       11 SETTABLEKS                       R3 R2 K1 ["Expansion"]
       13 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"selectTarget", "toggleTarget"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["selectTarget"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["toggleTarget"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K11 ["InspectorContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K5 ["Packages"]
       43 GETTABLEKS                       R6 R6 K12 ["Dash"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R5 K13 ["values"]
       48 GETTABLEKS                       R7 R5 K14 ["keys"]
       50 GETTABLEKS                       R8 R3 K15 ["ContextServices"]
       52 GETTABLEKS                       R9 R8 K16 ["withContext"]
       54 GETTABLEKS                       R10 R3 K17 ["UI"]
       56 GETTABLEKS                       R11 R10 K18 ["InstanceTreeView"]
       58 GETTABLEKS                       R12 R0 K9 ["Src"]
       60 GETTABLEKS                       R12 R12 K19 ["Actions"]
       62 GETIMPORT                        R13 K4 [require]
       64 GETTABLEKS                       R14 R12 K20 ["SelectTarget"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K4 [require]
       69 GETTABLEKS                       R15 R12 K21 ["ToggleTarget"]
       71 CALL                             R14 1 1
       72 GETTABLEKS                       R15 R1 K22 ["PureComponent"]
       74 LOADK                            R17 K23 ["TargetTree"]
       75 NAMECALL                         R15 R15 K24 ["extend"]
       77 CALL                             R15 2 1
       78 GETIMPORT                        R16 K26 [game]
       80 LOADK                            R18 K27 ["UserInputService"]
       81 NAMECALL                         R16 R16 K28 ["GetService"]
       83 CALL                             R16 2 1
       84 DUPCLOSURE                       R17 K29 [PROTO_1]
       85 CAPTURE                          VAL R16
       86 SETTABLEKS                       R17 R15 K30 ["init"]
       88 DUPCLOSURE                       R17 K31 [PROTO_2]
       89 CAPTURE                          VAL R7
       90 SETTABLEKS                       R17 R15 K32 ["getTargetFromChange"]
       92 DUPCLOSURE                       R17 K33 [PROTO_3]
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R6
       96 SETTABLEKS                       R17 R15 K34 ["render"]
       98 MOVE                             R17 R9
       99 DUPTABLE                         R18 K36 [{"Inspector"}]
      100 SETTABLEKS                       R4 R18 K35 ["Inspector"]
      102 CALL                             R17 1 1
      103 MOVE                             R18 R15
      104 CALL                             R17 1 1
      105 MOVE                             R15 R17
      106 GETTABLEKS                       R17 R2 K37 ["connect"]
      108 DUPCLOSURE                       R18 K38 [PROTO_4]
      109 DUPCLOSURE                       R19 K39 [PROTO_7]
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R14
      112 CALL                             R17 2 1
      113 MOVE                             R18 R15
      114 CALL                             R17 1 -1
      115 RETURN                           R17 -1
