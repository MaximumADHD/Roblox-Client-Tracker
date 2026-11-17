PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["pickInstance"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K2 ["Tabs"]
       10 GETTABLEN                        R2 R3 1
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["forInspector"]
        3 DUPTABLE                         R2 K3 [{"onAddTargets", "RoactInspector"}]
        4 GETTABLEKS                       R3 R0 K4 ["props"]
        6 GETTABLEKS                       R3 R3 K5 ["addTargets"]
        8 SETTABLEKS                       R3 R2 K1 ["onAddTargets"]
       10 DUPTABLE                         R3 K11 [{"onUpdateInstances", "onUpdateBranch", "onUpdateFields", "onPickInstance", "onUpdateProfileData"}]
       11 GETTABLEKS                       R4 R0 K4 ["props"]
       13 GETTABLEKS                       R4 R4 K12 ["updateInstances"]
       15 SETTABLEKS                       R4 R3 K6 ["onUpdateInstances"]
       17 GETTABLEKS                       R4 R0 K4 ["props"]
       19 GETTABLEKS                       R4 R4 K13 ["updateBranch"]
       21 SETTABLEKS                       R4 R3 K7 ["onUpdateBranch"]
       23 GETTABLEKS                       R4 R0 K4 ["props"]
       25 GETTABLEKS                       R4 R4 K14 ["updateFields"]
       27 SETTABLEKS                       R4 R3 K8 ["onUpdateFields"]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R4 R3 K9 ["onPickInstance"]
       33 GETTABLEKS                       R4 R0 K4 ["props"]
       35 GETTABLEKS                       R4 R4 K15 ["updateProfileData"]
       37 SETTABLEKS                       R4 R3 K10 ["onUpdateProfileData"]
       39 SETTABLEKS                       R3 R2 K2 ["RoactInspector"]
       41 CALL                             R1 1 1
       42 SETTABLEKS                       R1 R0 K16 ["inspector"]
       44 GETUPVAL                         R1 1
       45 GETTABLEKS                       R1 R1 K17 ["new"]
       47 GETTABLEKS                       R2 R0 K16 ["inspector"]
       49 CALL                             R1 1 1
       50 SETTABLEKS                       R1 R0 K18 ["inspectorContext"]
       52 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["inspector"]
        2 NAMECALL                         R1 R1 K1 ["getTargets"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["inspector"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["inspector"]
        5 NAMECALL                         R1 R1 K1 ["destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["Active"]
        2 JUMPIFNOTEQKB                    R2 FALSE ; [+17]
        4 GETTABLEKS                       R2 R0 K1 ["props"]
        6 GETTABLEKS                       R2 R2 K0 ["Active"]
        8 JUMPIFNOTEQKB                    R2 TRUE ; [+11]
       10 GETTABLEKS                       R2 R0 K1 ["props"]
       12 GETTABLEKS                       R2 R2 K2 ["clearTargets"]
       14 CALL                             R2 0 0
       15 GETTABLEKS                       R2 R0 K3 ["inspector"]
       17 NAMECALL                         R2 R2 K4 ["getTargets"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provide"]
        3 NEWTABLE                         R2 0 1
        5 GETTABLEKS                       R3 R0 K1 ["inspectorContext"]
        7 SETLIST                          R2 R3 1 [1]
        9 GETTABLEKS                       R4 R0 K2 ["props"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["Children"]
       14 GETTABLE                         R3 R4 R5
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"Tabs"}]
        1 GETTABLEKS                       R2 R0 K2 ["Targets"]
        3 GETTABLEKS                       R2 R2 K3 ["tabs"]
        5 SETTABLEKS                       R2 R1 K0 ["Tabs"]
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 CALL                             R2 -1 0
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R1
        8 CALL                             R3 1 -1
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K7 [{"clearTargets", "addTargets", "updateInstances", "updateBranch", "updateFields", "pickInstance", "updateProfileData"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["clearTargets"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["addTargets"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["updateInstances"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["updateBranch"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["updateFields"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 SETTABLEKS                       R2 R1 K5 ["pickInstance"]
       32 NEWCLOSURE                       R2 P6
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U7
       35 SETTABLEKS                       R2 R1 K6 ["updateProfileData"]
       37 RETURN                           R1 1

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
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Src"]
       36 GETTABLEKS                       R6 R6 K11 ["Util"]
       38 GETTABLEKS                       R6 R6 K12 ["InspectorContext"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R0 K5 ["Packages"]
       45 GETTABLEKS                       R7 R7 K13 ["DeveloperTools"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Actions"]
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R9 R7 K15 ["AddTargets"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K4 [require]
       59 GETTABLEKS                       R10 R7 K16 ["ClearTargets"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K4 [require]
       64 GETTABLEKS                       R11 R7 K17 ["RoactInspector"]
       66 GETTABLEKS                       R11 R11 K18 ["PickInstance"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K4 [require]
       71 GETTABLEKS                       R12 R7 K17 ["RoactInspector"]
       73 GETTABLEKS                       R12 R12 K19 ["UpdateInstances"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K4 [require]
       78 GETTABLEKS                       R13 R7 K17 ["RoactInspector"]
       80 GETTABLEKS                       R13 R13 K20 ["UpdateBranch"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K4 [require]
       85 GETTABLEKS                       R14 R7 K17 ["RoactInspector"]
       87 GETTABLEKS                       R14 R14 K21 ["UpdateFields"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K4 [require]
       92 GETTABLEKS                       R15 R7 K22 ["SetTab"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K4 [require]
       97 GETTABLEKS                       R16 R7 K17 ["RoactInspector"]
       99 GETTABLEKS                       R16 R16 K23 ["UpdateProfileData"]
      101 CALL                             R15 1 1
      102 GETTABLEKS                       R16 R1 K24 ["PureComponent"]
      104 LOADK                            R18 K25 ["InspectorProvider"]
      105 NAMECALL                         R16 R16 K26 ["extend"]
      107 CALL                             R16 2 1
      108 DUPCLOSURE                       R17 K27 [PROTO_1]
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R5
      111 SETTABLEKS                       R17 R16 K28 ["init"]
      113 DUPCLOSURE                       R17 K29 [PROTO_2]
      114 SETTABLEKS                       R17 R16 K30 ["didMount"]
      116 DUPCLOSURE                       R17 K31 [PROTO_3]
      117 SETTABLEKS                       R17 R16 K32 ["willUnmount"]
      119 DUPCLOSURE                       R17 K33 [PROTO_4]
      120 SETTABLEKS                       R17 R16 K34 ["didUpdate"]
      122 DUPCLOSURE                       R17 K35 [PROTO_5]
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R1
      125 SETTABLEKS                       R17 R16 K36 ["render"]
      127 GETTABLEKS                       R17 R2 K37 ["connect"]
      129 DUPCLOSURE                       R18 K38 [PROTO_6]
      130 DUPCLOSURE                       R19 K39 [PROTO_14]
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R15
      139 CALL                             R17 2 1
      140 MOVE                             R18 R16
      141 CALL                             R17 1 -1
      142 RETURN                           R17 -1
