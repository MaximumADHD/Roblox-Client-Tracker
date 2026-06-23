PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["provide"]
        5 NEWTABLE                         R2 0 2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["ContextServices"]
       10 GETTABLEKS                       R3 R3 K2 ["Plugin"]
       12 GETTABLEKS                       R3 R3 K3 ["new"]
       14 GETTABLEKS                       R4 R0 K2 ["Plugin"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K0 ["ContextServices"]
       20 GETTABLEKS                       R4 R4 K4 ["Mouse"]
       22 GETTABLEKS                       R4 R4 K3 ["new"]
       24 GETTABLEKS                       R5 R0 K2 ["Plugin"]
       26 NAMECALL                         R5 R5 K5 ["GetMouse"]
       28 CALL                             R5 1 -1
       29 CALL                             R4 -1 -1
       30 SETLIST                          R2 R3 -1 [1]
       32 DUPTABLE                         R3 K7 [{"ContextStack"}]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K8 ["createElement"]
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K6 ["ContextStack"]
       39 DUPTABLE                         R6 K10 [{"providers"}]
       40 NEWTABLE                         R7 0 5
       42 GETUPVAL                         R9 3
       43 CALL                             R9 0 1
       44 JUMPIFNOT                        R9 ; [+10]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K8 ["createElement"]
       48 GETUPVAL                         R9 4
       49 GETTABLEKS                       R9 R9 K11 ["InstanceRegistryContext"]
       51 GETTABLEKS                       R9 R9 K12 ["Provider"]
       53 CALL                             R8 1 1
       54 JUMP                             ; [+7]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K8 ["createElement"]
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R9 R9 K13 ["Fragment"]
       61 CALL                             R8 1 1
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R9 R9 K8 ["createElement"]
       65 GETUPVAL                         R10 4
       66 GETTABLEKS                       R10 R10 K14 ["NetworkingContext"]
       68 GETTABLEKS                       R10 R10 K15 ["EditableDataModelProvider"]
       70 CALL                             R9 1 1
       71 GETUPVAL                         R11 3
       72 CALL                             R11 0 1
       73 JUMPIFNOT                        R11 ; [+8]
       74 GETUPVAL                         R10 1
       75 GETTABLEKS                       R10 R10 K8 ["createElement"]
       77 GETUPVAL                         R11 1
       78 GETTABLEKS                       R11 R11 K13 ["Fragment"]
       80 CALL                             R10 1 1
       81 JUMP                             ; [+9]
       82 GETUPVAL                         R10 1
       83 GETTABLEKS                       R10 R10 K8 ["createElement"]
       85 GETUPVAL                         R11 4
       86 GETTABLEKS                       R11 R11 K16 ["NativeGraphContext"]
       88 GETTABLEKS                       R11 R11 K17 ["PreviewDataModelProvider"]
       90 CALL                             R10 1 1
       91 GETUPVAL                         R12 3
       92 CALL                             R12 0 1
       93 JUMPIFNOT                        R12 ; [+8]
       94 GETUPVAL                         R11 1
       95 GETTABLEKS                       R11 R11 K8 ["createElement"]
       97 GETUPVAL                         R12 4
       98 GETTABLEKS                       R12 R12 K18 ["PreviewDataModelContexts"]
      100 CALL                             R11 1 1
      101 JUMP                             ; [+7]
      102 GETUPVAL                         R11 1
      103 GETTABLEKS                       R11 R11 K8 ["createElement"]
      105 GETUPVAL                         R12 1
      106 GETTABLEKS                       R12 R12 K13 ["Fragment"]
      108 CALL                             R11 1 1
      109 GETUPVAL                         R13 3
      110 CALL                             R13 0 1
      111 JUMPIFNOT                        R13 ; [+8]
      112 GETUPVAL                         R12 1
      113 GETTABLEKS                       R12 R12 K8 ["createElement"]
      115 GETUPVAL                         R13 1
      116 GETTABLEKS                       R13 R13 K13 ["Fragment"]
      118 CALL                             R12 1 1
      119 JUMP                             ; [+9]
      120 GETUPVAL                         R12 1
      121 GETTABLEKS                       R12 R12 K8 ["createElement"]
      123 GETUPVAL                         R13 4
      124 GETTABLEKS                       R13 R13 K19 ["GraphPlayedContext"]
      126 GETTABLEKS                       R13 R13 K17 ["PreviewDataModelProvider"]
      128 CALL                             R12 1 1
      129 SETLIST                          R7 R8 5 [1]
      131 SETTABLEKS                       R7 R6 K9 ["providers"]
      133 CALL                             R4 2 1
      134 SETTABLEKS                       R4 R3 K6 ["ContextStack"]
      136 CALL                             R1 2 -1
      137 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Flags"]
       41 GETTABLEKS                       R6 R6 K13 ["getFFlagAnimGraphUI_RunTimeDebug"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K14 [PROTO_0]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R1
       50 RETURN                           R6 1
