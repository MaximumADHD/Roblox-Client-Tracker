PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["checkSelectedInstance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["INSTANCE_CHECK"]
        8 GETTABLEKS                       R4 R4 K2 ["Valid"]
       10 JUMPIFEQ                         R1 R4 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 RETURN                           R3 1

PROTO_1:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["INSTANCE_CHECK"]
        4 GETTABLEKS                       R1 R1 K1 ["MissingActor"]
        6 LOADNIL                          R2
        7 RETURN                           R1 2
        8 FASTCALL1                        ASSERT R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 1 0
       13 LOADK                            R4 K4 ["Actor"]
       14 NAMECALL                         R2 R0 K5 ["IsA"]
       16 CALL                             R2 2 1
       17 JUMPIF                           R2 ; [+5]
       18 LOADK                            R4 K6 ["Model"]
       19 NAMECALL                         R2 R0 K5 ["IsA"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+2]
       23 MOVE                             R1 R0
       24 JUMP                             ; [+9]
       25 LOADK                            R4 K7 ["Player"]
       26 NAMECALL                         R2 R0 K5 ["IsA"]
       28 CALL                             R2 2 1
       29 JUMPIFNOT                        R2 ; [+3]
       30 GETTABLEKS                       R1 R0 K8 ["Character"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R1
       34 JUMPIFNOT                        R1 ; [+21]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K9 ["COMPOSITOR_ATTRIBUTE"]
       38 NAMECALL                         R2 R1 K10 ["GetAttribute"]
       40 CALL                             R2 2 1
       41 JUMPIFNOT                        R2 ; [+7]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K0 ["INSTANCE_CHECK"]
       45 GETTABLEKS                       R2 R2 K11 ["Valid"]
       47 MOVE                             R3 R1
       48 RETURN                           R2 2
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K0 ["INSTANCE_CHECK"]
       52 GETTABLEKS                       R2 R2 K12 ["MissingHasCompositorAttribute"]
       54 MOVE                             R3 R1
       55 RETURN                           R2 2
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R2 R2 K0 ["INSTANCE_CHECK"]
       59 GETTABLEKS                       R2 R2 K13 ["WrongInstanceType"]
       61 LOADNIL                          R3
       62 RETURN                           R2 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["checkSelectedInstance"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R3 ; [+6]
        9 GETTABLEKS                       R4 R1 K2 ["AttachCompositor"]
       11 MOVE                             R5 R3
       12 GETTABLEKS                       R6 R1 K3 ["Analytics"]
       14 CALL                             R4 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["isSelectedInstanceValid"]
        5 DUPCLOSURE                       R1 K1 [PROTO_1]
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K2 ["checkSelectedInstance"]
        9 NEWCLOSURE                       R1 P2
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K3 ["onValidSelection"]
       13 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["DetachCompositor"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Folder"]
        4 NEWTABLE                         R3 0 0
        6 DUPTABLE                         R4 K4 [{"InstanceSelector", "PlayerListener"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["createElement"]
       10 GETUPVAL                         R6 1
       11 DUPTABLE                         R7 K8 [{"IsSelectedInstanceValid", "OnValidSelection", "OnInvalidSelection"}]
       12 GETTABLEKS                       R8 R0 K9 ["isSelectedInstanceValid"]
       14 SETTABLEKS                       R8 R7 K5 ["IsSelectedInstanceValid"]
       16 GETTABLEKS                       R8 R0 K10 ["onValidSelection"]
       18 SETTABLEKS                       R8 R7 K6 ["OnValidSelection"]
       20 DUPCLOSURE                       R8 K11 [PROTO_5]
       21 SETTABLEKS                       R8 R7 K7 ["OnInvalidSelection"]
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K2 ["InstanceSelector"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K0 ["createElement"]
       29 GETUPVAL                         R6 2
       30 DUPTABLE                         R7 K13 [{"CheckSelectedInstance", "OnValidSelection", "OnInvalidSelection"}]
       31 GETTABLEKS                       R8 R0 K14 ["checkSelectedInstance"]
       33 SETTABLEKS                       R8 R7 K12 ["CheckSelectedInstance"]
       35 GETTABLEKS                       R8 R0 K10 ["onValidSelection"]
       37 SETTABLEKS                       R8 R7 K6 ["OnValidSelection"]
       39 DUPCLOSURE                       R8 K15 [PROTO_6]
       40 SETTABLEKS                       R8 R7 K7 ["OnInvalidSelection"]
       42 CALL                             R5 2 1
       43 SETTABLEKS                       R5 R4 K3 ["PlayerListener"]
       45 CALL                             R1 3 -1
       46 RETURN                           R1 -1

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"DebugDataConnection"}]
        1 GETTABLEKS                       R2 R0 K2 ["Status"]
        3 GETTABLEKS                       R2 R2 K0 ["DebugDataConnection"]
        5 SETTABLEKS                       R2 R1 K0 ["DebugDataConnection"]
        7 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"AttachCompositor", "DetachCompositor"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["AttachCompositor"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["DetachCompositor"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R4 K12 ["Analytics"]
       34 GETTABLEKS                       R7 R0 K13 ["Src"]
       36 GETTABLEKS                       R7 R7 K14 ["Components"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R7 K15 ["AvatarToolsShared"]
       42 GETTABLEKS                       R9 R9 K16 ["InstanceSelector"]
       44 CALL                             R8 1 1
       45 GETTABLEKS                       R9 R0 K13 ["Src"]
       47 GETTABLEKS                       R9 R9 K17 ["Thunks"]
       49 GETIMPORT                        R10 K5 [require]
       51 GETTABLEKS                       R11 R9 K18 ["AttachCompositor"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K5 [require]
       56 GETTABLEKS                       R12 R9 K19 ["DetachCompositor"]
       58 CALL                             R11 1 1
       59 GETTABLEKS                       R12 R0 K13 ["Src"]
       61 GETTABLEKS                       R12 R12 K20 ["Util"]
       63 GETIMPORT                        R13 K5 [require]
       65 GETTABLEKS                       R14 R12 K21 ["Constants"]
       67 CALL                             R13 1 1
       68 GETIMPORT                        R14 K5 [require]
       70 GETTABLEKS                       R15 R0 K22 ["Bin"]
       72 GETTABLEKS                       R15 R15 K23 ["Common"]
       74 GETTABLEKS                       R15 R15 K24 ["defineLuaFlags"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K5 [require]
       79 GETIMPORT                        R16 K1 [script]
       81 GETTABLEKS                       R16 R16 K25 ["PlayerListener"]
       83 CALL                             R15 1 1
       84 GETTABLEKS                       R16 R2 K26 ["PureComponent"]
       86 LOADK                            R18 K27 ["CompositorSelector"]
       87 NAMECALL                         R16 R16 K28 ["extend"]
       89 CALL                             R16 2 1
       90 DUPCLOSURE                       R17 K29 [PROTO_3]
       91 CAPTURE                          VAL R13
       92 SETTABLEKS                       R17 R16 K30 ["init"]
       94 DUPCLOSURE                       R17 K31 [PROTO_4]
       95 SETTABLEKS                       R17 R16 K32 ["willUnmount"]
       97 DUPCLOSURE                       R17 K33 [PROTO_7]
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R15
      101 SETTABLEKS                       R17 R16 K34 ["render"]
      103 DUPCLOSURE                       R17 K35 [PROTO_8]
      104 DUPCLOSURE                       R18 K36 [PROTO_11]
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R11
      107 MOVE                             R19 R5
      108 DUPTABLE                         R20 K37 [{"Analytics"}]
      109 SETTABLEKS                       R6 R20 K12 ["Analytics"]
      111 CALL                             R19 1 1
      112 MOVE                             R20 R16
      113 CALL                             R19 1 1
      114 MOVE                             R16 R19
      115 GETTABLEKS                       R19 R3 K38 ["connect"]
      117 MOVE                             R20 R17
      118 MOVE                             R21 R18
      119 CALL                             R19 2 1
      120 MOVE                             R20 R16
      121 CALL                             R19 1 1
      122 MOVE                             R16 R19
      123 RETURN                           R16 1
