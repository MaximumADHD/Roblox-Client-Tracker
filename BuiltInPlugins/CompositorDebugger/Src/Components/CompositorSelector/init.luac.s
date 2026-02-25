PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["checkSelectedInstance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K1 ["INSTANCE_CHECK"]
        8 GETTABLEKS                       R4 R5 K2 ["Valid"]
       10 JUMPIFEQ                         R1 R4 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 RETURN                           R3 1

PROTO_1:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["INSTANCE_CHECK"]
        4 GETTABLEKS                       R1 R2 K1 ["MissingActor"]
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
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R4 R5 K9 ["COMPOSITOR_ATTRIBUTE"]
       38 NAMECALL                         R2 R1 K10 ["GetAttribute"]
       40 CALL                             R2 2 1
       41 JUMPIFNOT                        R2 ; [+7]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R3 R4 K0 ["INSTANCE_CHECK"]
       45 GETTABLEKS                       R2 R3 K11 ["Valid"]
       47 MOVE                             R3 R1
       48 RETURN                           R2 2
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R3 R4 K0 ["INSTANCE_CHECK"]
       52 GETTABLEKS                       R2 R3 K12 ["MissingHasCompositorAttribute"]
       54 MOVE                             R3 R1
       55 RETURN                           R2 2
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R3 R4 K0 ["INSTANCE_CHECK"]
       59 GETTABLEKS                       R2 R3 K13 ["WrongInstanceType"]
       61 LOADNIL                          R3
       62 RETURN                           R2 2

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["checkSelectedInstance"]
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
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["DetachCompositor"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Folder"]
        4 NEWTABLE                         R3 0 0
        6 DUPTABLE                         R4 K4 [{"InstanceSelector", "PlayerListener"}]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K0 ["createElement"]
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
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K0 ["createElement"]
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
        1 GETTABLEKS                       R3 R0 K2 ["Status"]
        3 GETTABLEKS                       R2 R3 K0 ["DebugDataConnection"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["withContext"]
       39 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       41 GETTABLEKS                       R9 R0 K14 ["Src"]
       43 GETTABLEKS                       R8 R9 K15 ["Components"]
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R11 R8 K16 ["AvatarToolsShared"]
       49 GETTABLEKS                       R10 R11 K17 ["InstanceSelector"]
       51 CALL                             R9 1 1
       52 GETTABLEKS                       R11 R0 K14 ["Src"]
       54 GETTABLEKS                       R10 R11 K18 ["Thunks"]
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R12 R10 K19 ["AttachCompositor"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R10 K20 ["DetachCompositor"]
       65 CALL                             R12 1 1
       66 GETTABLEKS                       R14 R0 K14 ["Src"]
       68 GETTABLEKS                       R13 R14 K21 ["Util"]
       70 GETIMPORT                        R14 K5 [require]
       72 GETTABLEKS                       R17 R0 K22 ["Bin"]
       74 GETTABLEKS                       R16 R17 K23 ["Common"]
       76 GETTABLEKS                       R15 R16 K24 ["defineLuaFlags"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K5 [require]
       81 GETIMPORT                        R17 K1 [script]
       83 GETTABLEKS                       R16 R17 K25 ["PlayerListener"]
       85 CALL                             R15 1 1
       86 GETTABLEKS                       R16 R1 K26 ["Constants"]
       88 GETTABLEKS                       R17 R3 K27 ["PureComponent"]
       90 LOADK                            R19 K28 ["CompositorSelector"]
       91 NAMECALL                         R17 R17 K29 ["extend"]
       93 CALL                             R17 2 1
       94 DUPCLOSURE                       R18 K30 [PROTO_3]
       95 CAPTURE                          VAL R16
       96 SETTABLEKS                       R18 R17 K31 ["init"]
       98 DUPCLOSURE                       R18 K32 [PROTO_4]
       99 SETTABLEKS                       R18 R17 K33 ["willUnmount"]
      101 DUPCLOSURE                       R18 K34 [PROTO_7]
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R15
      105 SETTABLEKS                       R18 R17 K35 ["render"]
      107 DUPCLOSURE                       R18 K36 [PROTO_8]
      108 DUPCLOSURE                       R19 K37 [PROTO_11]
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R12
      111 MOVE                             R20 R6
      112 DUPTABLE                         R21 K38 [{"Analytics"}]
      113 SETTABLEKS                       R7 R21 K13 ["Analytics"]
      115 CALL                             R20 1 1
      116 MOVE                             R21 R17
      117 CALL                             R20 1 1
      118 MOVE                             R17 R20
      119 GETTABLEKS                       R20 R4 K39 ["connect"]
      121 MOVE                             R21 R18
      122 MOVE                             R22 R19
      123 CALL                             R20 2 1
      124 MOVE                             R21 R17
      125 CALL                             R20 1 1
      126 MOVE                             R17 R20
      127 RETURN                           R17 1
