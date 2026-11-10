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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["ContextServices"]
       10 GETTABLEKS                       R2 R2 K3 ["Localization"]
       12 NAMECALL                         R2 R2 K4 ["use"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["useContext"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K1 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K0 ["useContext"]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K1 ["Context"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 5
       30 GETTABLEKS                       R5 R5 K5 ["useSignalState"]
       32 GETTABLEKS                       R6 R1 K6 ["observeSelectedGraphInstanceId"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K7 ["useMemo"]
       38 NEWCLOSURE                       R7 P0
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R8 0 2
       43 GETTABLEKS                       R9 R4 K8 ["graphItems"]
       45 MOVE                             R10 R5
       46 SETLIST                          R8 R9 2 [1]
       48 CALL                             R6 2 1
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K9 ["useCallback"]
       52 NEWCLOSURE                       R8 P1
       53 CAPTURE                          VAL R3
       54 NEWTABLE                         R9 0 1
       56 GETTABLEKS                       R10 R3 K10 ["saveSelectedGraphToRobloxAsync"]
       58 SETLIST                          R9 R10 1 [1]
       60 CALL                             R7 2 1
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K11 ["createElement"]
       64 GETUPVAL                         R9 6
       65 GETTABLEKS                       R9 R9 K12 ["Button"]
       67 DUPTABLE                         R10 K19 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
       68 LOADK                            R13 K20 ["Common"]
       69 LOADK                            R14 K21 ["AnimationEditor"]
       70 LOADK                            R15 K22 ["Menu"]
       71 LOADK                            R16 K23 ["SaveToRoblox"]
       72 NAMECALL                         R11 R2 K24 ["getExternalText"]
       74 CALL                             R11 5 1
       75 SETTABLEKS                       R11 R10 K13 ["text"]
       77 GETUPVAL                         R11 6
       78 GETTABLEKS                       R11 R11 K25 ["Enums"]
       80 GETTABLEKS                       R11 R11 K26 ["InputSize"]
       82 GETTABLEKS                       R11 R11 K27 ["XSmall"]
       84 SETTABLEKS                       R11 R10 K14 ["size"]
       86 GETUPVAL                         R11 6
       87 GETTABLEKS                       R11 R11 K25 ["Enums"]
       89 GETTABLEKS                       R11 R11 K28 ["ButtonVariant"]
       91 GETTABLEKS                       R11 R11 K29 ["Standard"]
       93 SETTABLEKS                       R11 R10 K15 ["variant"]
       95 NOT                              R11 R6
       96 SETTABLEKS                       R11 R10 K16 ["isDisabled"]
       98 SETTABLEKS                       R7 R10 K17 ["onActivated"]
      100 GETTABLEKS                       R11 R0 K18 ["LayoutOrder"]
      102 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
      104 CALL                             R8 2 -1
      105 RETURN                           R8 -1

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
       56 DUPCLOSURE                       R8 K15 [PROTO_3]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R1
       64 RETURN                           R8 1
