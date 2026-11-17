PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["RunService"]
        4 GETUPVAL                         R2 0
        5 GETIMPORT                        R3 K6 [Enum.PredictionMode.On]
        7 NAMECALL                         R0 R0 K7 ["SetPredictionMode"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Folder"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R5 0
        5 JUMPIFNOTEQKNIL                  R5 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL1                        ASSERT R4 ; [+2]
       10 GETIMPORT                        R3 K5 [assert]
       12 CALL                             R3 1 0
       13 GETIMPORT                        R3 K8 [string.format]
       15 LOADK                            R4 K9 ["%s_%d"]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R8 K12 [time]
       19 CALL                             R8 0 1
       20 MULK                             R7 R8 K10 [60]
       21 FASTCALL1                        MATH_ROUND R7 ; [+2]
       22 GETIMPORT                        R6 K15 [math.round]
       24 CALL                             R6 1 1
       25 CALL                             R3 3 1
       26 SETTABLEKS                       R3 R2 K16 ["Name"]
       28 GETUPVAL                         R3 0
       29 SETTABLEKS                       R3 R2 K17 ["Parent"]
       31 MOVE                             R3 R1
       32 LOADNIL                          R4
       33 LOADNIL                          R5
       34 FORGPREP                         R3
       35 MOVE                             R10 R6
       36 MOVE                             R11 R7
       37 NAMECALL                         R8 R2 K18 ["SetAttribute"]
       39 CALL                             R8 3 0
       40 FORGLOOP                         R3 2 ; [-6]
       42 LOADK                            R5 K19 ["tag"]
       43 MOVE                             R6 R0
       44 NAMECALL                         R3 R2 K18 ["SetAttribute"]
       46 CALL                             R3 3 0
       47 GETUPVAL                         R3 1
       48 NAMECALL                         R3 R3 K20 ["IsServer"]
       50 CALL                             R3 1 1
       51 JUMPIFNOT                        R3 ; [+7]
       52 GETIMPORT                        R3 K23 [task.delay]
       54 LOADN                            R4 3
       55 NEWCLOSURE                       R5 P0
       56 CAPTURE                          VAL R2
       57 CALL                             R3 2 0
       58 RETURN                           R2 1
       59 GETIMPORT                        R3 K25 [task.defer]
       61 NEWCLOSURE                       R4 P1
       62 CAPTURE                          VAL R2
       63 CALL                             R3 1 0
       64 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["IsClient"]
        3 CALL                             R3 1 -1
        4 FASTCALL                         ASSERT ; [+2]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 -1 0
        8 GETUPVAL                         R2 1
        9 JUMPIF                           R2 ; [+6]
       10 LOADB                            R2 1
       11 SETUPVAL                         R2 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["InitializeClient"]
       15 CALL                             R2 0 0
       16 GETUPVAL                         R2 3
       17 SETTABLE                         R1 R2 R0
       18 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R2
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 RETURN                           R0 1
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLE                         R8 R1 R6
        9 JUMPIFEQ                         R8 R7 ; [+6]
       11 JUMPIFNOTEQKNIL                  R2 ; [+3]
       13 NEWTABLE                         R2 0 0
       15 SETTABLE                         R7 R2 R6
       16 FORGLOOP                         R3 2 ; [-9]
       18 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 ADDK                             R1 R2 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetChildren"]
        6 CALL                             R1 1 3
        7 FORGPREP                         R1
        8 GETUPVAL                         R7 2
        9 GETTABLE                         R6 R7 R5
       10 JUMPIFNOTEQKNIL                  R6 ; [+28]
       12 NAMECALL                         R6 R5 K2 ["GetAttributes"]
       14 CALL                             R6 1 1
       15 GETUPVAL                         R7 2
       16 SETTABLE                         R6 R7 R5
       17 GETTABLEKS                       R7 R6 K3 ["tag"]
       19 GETUPVAL                         R9 3
       20 GETTABLE                         R8 R9 R7
       21 JUMPIFEQKNIL                     R8 ; [+17]
       23 MOVE                             R9 R8
       24 DUPTABLE                         R10 K10 [{["instance"], ["attributes"], ["attributesPrevious"] = , ["attributesDiff"], ["type"]}]
       25 SETTABLEKS                       R5 R10 K4 ["instance"]
       27 SETTABLEKS                       R6 R10 K5 ["attributes"]
       29 SETTABLEKS                       R6 R10 K8 ["attributesDiff"]
       31 GETUPVAL                         R11 4
       32 GETTABLEKS                       R11 R11 K11 ["RenderEventType"]
       34 GETTABLEKS                       R11 R11 K12 ["New"]
       36 SETTABLEKS                       R11 R10 K9 ["type"]
       38 CALL                             R9 1 0
       39 FORGLOOP                         R1 2 ; [-32]
       41 GETUPVAL                         R1 2
       42 LOADNIL                          R2
       43 LOADNIL                          R3
       44 FORGPREP                         R1
       45 NAMECALL                         R6 R4 K2 ["GetAttributes"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R6 K3 ["tag"]
       50 GETUPVAL                         R9 3
       51 GETTABLE                         R8 R9 R7
       52 JUMPIFEQKNIL                     R8 ; [+53]
       54 GETTABLEKS                       R9 R4 K13 ["Parent"]
       56 JUMPIFNOTEQKNIL                  R9 ; [+23]
       58 MOVE                             R9 R8
       59 DUPTABLE                         R10 K14 [{["instance"], ["attributes"] = , ["attributesPrevious"], ["attributesDiff"], ["type"]}]
       60 SETTABLEKS                       R4 R10 K4 ["instance"]
       62 SETTABLEKS                       R5 R10 K6 ["attributesPrevious"]
       64 NEWTABLE                         R11 0 0
       66 SETTABLEKS                       R11 R10 K8 ["attributesDiff"]
       68 GETUPVAL                         R11 4
       69 GETTABLEKS                       R11 R11 K11 ["RenderEventType"]
       71 GETTABLEKS                       R11 R11 K15 ["Delete"]
       73 SETTABLEKS                       R11 R10 K9 ["type"]
       75 CALL                             R9 1 0
       76 GETUPVAL                         R9 2
       77 LOADNIL                          R10
       78 SETTABLE                         R10 R9 R4
       79 JUMP                             ; [+26]
       80 GETUPVAL                         R9 5
       81 MOVE                             R10 R6
       82 MOVE                             R11 R5
       83 CALL                             R9 2 1
       84 JUMPIFEQKNIL                     R9 ; [+21]
       86 MOVE                             R10 R8
       87 DUPTABLE                         R11 K16 [{"instance", "attributes", "attributesPrevious", "attributesDiff", "type"}]
       88 SETTABLEKS                       R4 R11 K4 ["instance"]
       90 SETTABLEKS                       R6 R11 K5 ["attributes"]
       92 SETTABLEKS                       R5 R11 K6 ["attributesPrevious"]
       94 SETTABLEKS                       R9 R11 K8 ["attributesDiff"]
       96 GETUPVAL                         R12 4
       97 GETTABLEKS                       R12 R12 K11 ["RenderEventType"]
       99 GETTABLEKS                       R12 R12 K17 ["Change"]
      101 SETTABLEKS                       R12 R11 K9 ["type"]
      103 CALL                             R10 1 0
      104 GETUPVAL                         R10 2
      105 SETTABLE                         R6 R10 R4
      106 FORGLOOP                         R1 2 ; [-62]
      108 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsClient"]
        3 CALL                             R1 1 -1
        4 FASTCALL                         ASSERT ; [+2]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 -1 0
        8 DUPCLOSURE                       R0 K3 [PROTO_4]
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          VAL R0
       16 GETUPVAL                         R2 0
       17 LOADK                            R4 K4 ["renderEvents"]
       18 GETIMPORT                        R5 K8 [Enum.RenderPriority.Character]
       20 GETTABLEKS                       R5 R5 K9 ["Value"]
       22 MOVE                             R6 R1
       23 NAMECALL                         R2 R2 K10 ["BindToRenderStep"]
       25 CALL                             R2 4 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["CollectionService"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K1 [game]
       11 LOADK                            R4 K4 ["RunService"]
       12 NAMECALL                         R2 R2 K3 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K6 [require]
       17 GETIMPORT                        R4 K1 [game]
       19 GETTABLEKS                       R4 R4 K7 ["ReplicatedStorage"]
       21 GETTABLEKS                       R4 R4 K8 ["Utilities"]
       23 GETTABLEKS                       R4 R4 K9 ["Utils"]
       25 CALL                             R3 1 1
       26 LOADN                            R4 0
       27 LOADB                            R5 0
       28 GETTABLEKS                       R6 R3 K10 ["sharedInstance"]
       30 GETIMPORT                        R7 K1 [game]
       32 GETTABLEKS                       R7 R7 K11 ["Workspace"]
       34 LOADK                            R8 K12 ["Folder"]
       35 LOADK                            R9 K13 ["SimulationEvents"]
       36 CALL                             R6 3 1
       37 JUMPIFNOTEQKNIL                  R6 ; [+2]
       39 LOADB                            R8 0 +1
       40 LOADB                            R8 1
       41 FASTCALL1                        ASSERT R8 ; [+2]
       42 GETIMPORT                        R7 K15 [assert]
       44 CALL                             R7 1 0
       45 GETIMPORT                        R7 K18 [table.freeze]
       47 DUPTABLE                         R8 K25 [{["New"] = 1, ["Change"] = 2, ["Delete"] = 3}]
       48 CALL                             R7 1 1
       49 SETTABLEKS                       R7 R0 K26 ["RenderEventType"]
       51 NEWTABLE                         R7 0 0
       53 NEWTABLE                         R8 0 0
       55 NEWTABLE                         R9 0 0
       57 DUPCLOSURE                       R10 K27 [PROTO_2]
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R10 R0 K28 ["CreateEvent"]
       62 NEWCLOSURE                       R10 P1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          REF R5
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R8
       67 SETTABLEKS                       R10 R0 K29 ["RenderEvents"]
       69 NEWCLOSURE                       R10 P2
       70 CAPTURE                          VAL R2
       71 CAPTURE                          REF R4
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R10 R0 K30 ["InitializeClient"]
       78 CLOSEUPVALS                      R4
       79 RETURN                           R0 1
