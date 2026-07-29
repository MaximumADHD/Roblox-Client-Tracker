PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["graphItems"]
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 FORGPREP                         R0
       11 GETTABLEKS                       R5 R4 K1 ["id"]
       13 GETUPVAL                         R6 0
       14 JUMPIFNOTEQ                      R5 R6 ; [+4]
       16 GETTABLEKS                       R5 R4 K2 ["isDirty"]
       18 RETURN                           R5 1
       19 FORGLOOP                         R0 2 ; [-9]
       21 LOADB                            R0 0
       22 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["saveSelectedGraphToRobloxAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Context"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K2 ["ContextServices"]
       15 GETTABLEKS                       R2 R2 K3 ["Localization"]
       17 NAMECALL                         R2 R2 K4 ["use"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K0 ["useContext"]
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R4 R4 K1 ["Context"]
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K0 ["useContext"]
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K1 ["Context"]
       33 CALL                             R4 1 1
       34 GETUPVAL                         R6 0
       35 CALL                             R6 0 1
       36 JUMPIFNOT                        R6 ; [+7]
       37 GETUPVAL                         R5 6
       38 GETTABLEKS                       R5 R5 K5 ["useSignalState"]
       40 GETTABLEKS                       R6 R1 K6 ["observeSelectedGraphInstanceId"]
       42 CALL                             R5 1 1
       43 JUMP                             ; [+2]
       44 GETTABLEKS                       R5 R4 K7 ["selectedGraphId_DEPRECATED"]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       49 NEWCLOSURE                       R7 P0
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R8 0 2
       54 GETTABLEKS                       R9 R4 K9 ["graphItems"]
       56 MOVE                             R10 R5
       57 SETLIST                          R8 R9 2 [1]
       59 CALL                             R6 2 1
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K10 ["useCallback"]
       63 NEWCLOSURE                       R8 P1
       64 CAPTURE                          VAL R3
       65 NEWTABLE                         R9 0 1
       67 GETTABLEKS                       R10 R3 K11 ["saveSelectedGraphToRobloxAsync"]
       69 SETLIST                          R9 R10 1 [1]
       71 CALL                             R7 2 1
       72 GETUPVAL                         R8 1
       73 GETTABLEKS                       R8 R8 K12 ["createElement"]
       75 GETUPVAL                         R9 7
       76 GETTABLEKS                       R9 R9 K13 ["Button"]
       78 DUPTABLE                         R10 K20 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
       79 LOADK                            R13 K21 ["Common"]
       80 LOADK                            R14 K22 ["AnimationEditor"]
       81 LOADK                            R15 K23 ["Menu"]
       82 LOADK                            R16 K24 ["SaveToRoblox"]
       83 NAMECALL                         R11 R2 K25 ["getExternalText"]
       85 CALL                             R11 5 1
       86 SETTABLEKS                       R11 R10 K14 ["text"]
       88 GETUPVAL                         R11 7
       89 GETTABLEKS                       R11 R11 K26 ["Enums"]
       91 GETTABLEKS                       R11 R11 K27 ["InputSize"]
       93 GETTABLEKS                       R11 R11 K28 ["XSmall"]
       95 SETTABLEKS                       R11 R10 K15 ["size"]
       97 GETUPVAL                         R11 7
       98 GETTABLEKS                       R11 R11 K26 ["Enums"]
      100 GETTABLEKS                       R11 R11 K29 ["ButtonVariant"]
      102 GETTABLEKS                       R11 R11 K30 ["Standard"]
      104 SETTABLEKS                       R11 R10 K16 ["variant"]
      106 NOT                              R11 R6
      107 SETTABLEKS                       R11 R10 K17 ["isDisabled"]
      109 SETTABLEKS                       R7 R10 K18 ["onActivated"]
      111 GETTABLEKS                       R11 R0 K19 ["LayoutOrder"]
      113 SETTABLEKS                       R11 R10 K19 ["LayoutOrder"]
      115 CALL                             R8 2 -1
      116 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["GraphDirtyStateContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K11 ["GraphDropdownContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K9 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K13 ["SelectedGraphContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Parent"]
       53 GETTABLEKS                       R8 R8 K14 ["SignalsReact"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Flags"]
       60 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimGraphUI_RunTimeDebug"]
       62 CALL                             R8 1 1
       63 DUPCLOSURE                       R9 K17 [PROTO_3]
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R1
       72 RETURN                           R9 1
