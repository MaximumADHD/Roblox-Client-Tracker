PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["Dummy"]
        2 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        7 LOADK                            R3 K2 ["Rhodium Testing requires a 'Dummy' rig in Workspace."]
        8 GETIMPORT                        R1 K4 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 1
       12 SETTABLEKS                       R0 R1 K5 ["plugin"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K6 ["delay"]
       17 CALL                             R1 0 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["mock"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["mock"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K1 ["clearCache"]
       11 CALL                             R4 0 0
       12 GETUPVAL                         R6 3
       13 GETUPVAL                         R8 4
       14 GETTABLEKS                       R7 R8 K2 ["Dummy"]
       16 MOVE                             R8 R2
       17 MOVE                             R9 R3
       18 CALL                             R6 3 -1
       19 NAMECALL                         R4 R0 K3 ["dispatch"]
       21 CALL                             R4 -1 0
       22 GETUPVAL                         R6 5
       23 MOVE                             R7 R1
       24 MOVE                             R8 R2
       25 CALL                             R6 2 -1
       26 NAMECALL                         R4 R0 K3 ["dispatch"]
       28 CALL                             R4 -1 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [wait]
        2 ORK                              R2 R0 K2 [0.1]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NAMECALL                         R2 R1 K1 ["click"]
        7 CALL                             R2 1 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["delay"]
       11 CALL                             R2 0 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 NAMECALL                         R4 R3 K1 ["getCenter"]
        7 CALL                             R4 1 1
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R7 R4 K2 ["X"]
       11 GETTABLEKS                       R8 R4 K3 ["Y"]
       13 LOADN                            R9 0
       14 MOVE                             R10 R1
       15 DUPTABLE                         R11 K6 [{"StartOfScroll", "IsPartOfGesture"}]
       16 SETTABLEKS                       R2 R11 K4 ["StartOfScroll"]
       18 LOADB                            R12 1
       19 SETTABLEKS                       R12 R11 K5 ["IsPartOfGesture"]
       21 LOADK                            R14 K7 ["LayerCollector"]
       22 NAMECALL                         R12 R0 K8 ["FindFirstAncestorWhichIsA"]
       24 CALL                             R12 2 -1
       25 NAMECALL                         R5 R5 K9 ["SendScroll"]
       27 CALL                             R5 -1 0
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R5 R6 K10 ["delay"]
       31 CALL                             R5 0 0
       32 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 GETUPVAL                         R3 1
        3 LOADB                            R4 0
        4 GETUPVAL                         R5 2
        5 NAMECALL                         R0 R0 K0 ["SendKeyEvent"]
        7 CALL                             R0 5 0
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R0 R1 K1 ["delay"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R4 K0 ["LayerCollector"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 LOADB                            R5 1
        6 MOVE                             R6 R1
        7 LOADB                            R7 0
        8 MOVE                             R8 R2
        9 NAMECALL                         R3 R3 K2 ["SendKeyEvent"]
       11 CALL                             R3 5 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["delay"]
       15 CALL                             R3 0 0
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U1
       21 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["plugin"]
        6 CALL                             R3 1 1
        7 MOVE                             R6 R0
        8 MOVE                             R7 R1
        9 MOVE                             R8 R2
       10 NAMECALL                         R4 R3 K2 ["run"]
       12 CALL                             R4 4 2
       13 NAMECALL                         R6 R3 K3 ["destroy"]
       15 CALL                             R6 1 0
       16 JUMPIF                           R4 ; [+4]
       17 GETIMPORT                        R6 K5 [error]
       19 MOVE                             R7 R5
       20 CALL                             R6 1 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["VirtualInputManager"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AnimationClipEditor"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R5 K12 ["Framework"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R5 R3 K13 ["ContextServices"]
       28 GETTABLEKS                       R4 R5 K14 ["Analytics"]
       30 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       32 GETTABLEKS                       R5 R6 K15 ["Localization"]
       34 GETIMPORT                        R7 K10 [require]
       36 GETTABLEKS                       R10 R2 K11 ["Packages"]
       38 GETTABLEKS                       R9 R10 K16 ["Dev"]
       40 GETTABLEKS                       R8 R9 K17 ["Rhodium"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R6 R7 K18 ["Element"]
       45 GETIMPORT                        R7 K10 [require]
       47 GETTABLEKS                       R9 R2 K19 ["RhodiumTests"]
       49 GETTABLEKS                       R8 R9 K20 ["Test"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K10 [require]
       54 GETTABLEKS                       R11 R2 K21 ["Src"]
       56 GETTABLEKS                       R10 R11 K22 ["Util"]
       58 GETTABLEKS                       R9 R10 K23 ["RigInfo"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K10 [require]
       63 GETTABLEKS                       R12 R2 K21 ["Src"]
       65 GETTABLEKS                       R11 R12 K24 ["Thunks"]
       67 GETTABLEKS                       R10 R11 K25 ["LoadAnimationData"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETTABLEKS                       R13 R2 K21 ["Src"]
       74 GETTABLEKS                       R12 R13 K24 ["Thunks"]
       76 GETTABLEKS                       R11 R12 K26 ["UpdateRootInstance"]
       78 CALL                             R10 1 1
       79 DUPTABLE                         R11 K28 [{"plugin"}]
       80 LOADNIL                          R12
       81 SETTABLEKS                       R12 R11 K27 ["plugin"]
       83 DUPCLOSURE                       R12 K29 [PROTO_0]
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R11
       86 SETTABLEKS                       R12 R11 K30 ["init"]
       88 DUPCLOSURE                       R12 K31 [PROTO_1]
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R9
       95 SETTABLEKS                       R12 R11 K32 ["loadAnimation"]
       97 DUPCLOSURE                       R12 K33 [PROTO_2]
       98 SETTABLEKS                       R12 R11 K34 ["delay"]
      100 DUPCLOSURE                       R12 K35 [PROTO_3]
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R11
      103 SETTABLEKS                       R12 R11 K36 ["clickInstance"]
      105 DUPCLOSURE                       R12 K37 [PROTO_4]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R11
      109 SETTABLEKS                       R12 R11 K38 ["scrollInstance"]
      111 DUPCLOSURE                       R12 K39 [PROTO_6]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R11
      114 SETTABLEKS                       R12 R11 K40 ["pressKey"]
      116 DUPCLOSURE                       R12 K41 [PROTO_7]
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R11
      119 SETTABLEKS                       R12 R11 K42 ["runTest"]
      121 RETURN                           R11 1
