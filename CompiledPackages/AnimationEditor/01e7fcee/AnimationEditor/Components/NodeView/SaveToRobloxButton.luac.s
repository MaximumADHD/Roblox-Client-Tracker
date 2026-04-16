PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphId"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADB                            R0 0
        6 RETURN                           R0 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R0 R3 K1 ["graphItems"]
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 GETTABLEKS                       R5 R4 K2 ["id"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K0 ["selectedGraphId"]
       18 JUMPIFNOTEQ                      R5 R6 ; [+4]
       20 GETTABLEKS                       R5 R4 K3 ["isDirty"]
       22 RETURN                           R5 1
       23 FORGLOOP                         R0 2 ; [-11]
       25 LOADB                            R0 0
       26 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["saveSelectedGraphToRobloxAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["useContext"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["useContext"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K5 ["useMemo"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R3
       27 NEWTABLE                         R6 0 2
       29 GETTABLEKS                       R7 R3 K6 ["graphItems"]
       31 GETTABLEKS                       R8 R3 K7 ["selectedGraphId"]
       33 SETLIST                          R6 R7 2 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R5 R6 K8 ["useCallback"]
       39 NEWCLOSURE                       R6 P1
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R7 0 1
       43 GETTABLEKS                       R8 R2 K9 ["saveSelectedGraphToRobloxAsync"]
       45 SETLIST                          R7 R8 1 [1]
       47 CALL                             R5 2 1
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R6 R7 K10 ["createElement"]
       51 GETUPVAL                         R8 4
       52 GETTABLEKS                       R7 R8 K11 ["Button"]
       54 DUPTABLE                         R8 K18 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
       55 LOADK                            R11 K19 ["Common"]
       56 LOADK                            R12 K20 ["AnimationEditor"]
       57 LOADK                            R13 K21 ["Menu"]
       58 LOADK                            R14 K22 ["SaveToRoblox"]
       59 NAMECALL                         R9 R1 K23 ["getExternalText"]
       61 CALL                             R9 5 1
       62 SETTABLEKS                       R9 R8 K12 ["text"]
       64 GETUPVAL                         R12 4
       65 GETTABLEKS                       R11 R12 K24 ["Enums"]
       67 GETTABLEKS                       R10 R11 K25 ["InputSize"]
       69 GETTABLEKS                       R9 R10 K26 ["XSmall"]
       71 SETTABLEKS                       R9 R8 K13 ["size"]
       73 GETUPVAL                         R12 4
       74 GETTABLEKS                       R11 R12 K24 ["Enums"]
       76 GETTABLEKS                       R10 R11 K27 ["ButtonVariant"]
       78 GETTABLEKS                       R9 R10 K28 ["Standard"]
       80 SETTABLEKS                       R9 R8 K14 ["variant"]
       82 NOT                              R9 R4
       83 SETTABLEKS                       R9 R8 K15 ["isDisabled"]
       85 SETTABLEKS                       R5 R8 K16 ["onActivated"]
       87 GETTABLEKS                       R9 R0 K17 ["LayoutOrder"]
       89 SETTABLEKS                       R9 R8 K17 ["LayoutOrder"]
       91 CALL                             R6 2 -1
       92 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["GraphDirtyStateContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Contexts"]
       32 GETTABLEKS                       R5 R6 K11 ["GraphDropdownContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R7 K12 ["React"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K13 [PROTO_3]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 RETURN                           R6 1
