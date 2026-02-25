PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetIsEmulationEnabled"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K0 ["SetIsEmulationEnabled"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R1 R1 K1 ["Invoke"]
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 NAMECALL                         R3 R3 K0 ["use"]
        9 CALL                             R3 1 1
       10 NAMECALL                         R3 R3 K1 ["get"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K2 ["useIsEmulationEnabled"]
       16 CALL                             R4 0 1
       17 GETUPVAL                         R5 4
       18 CALL                             R5 0 1
       19 GETUPVAL                         R7 5
       20 GETTABLEKS                       R6 R7 K3 ["useCallback"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R8 0 0
       27 CALL                             R6 2 1
       28 GETUPVAL                         R8 5
       29 GETTABLEKS                       R7 R8 K4 ["createElement"]
       31 GETUPVAL                         R9 7
       32 GETTABLEKS                       R8 R9 K5 ["View"]
       34 DUPTABLE                         R9 K8 [{"tag", "LayoutOrder"}]
       35 LOADK                            R10 K9 ["size-full-0 auto-y row align-y-center padding-medium"]
       36 SETTABLEKS                       R10 R9 K6 ["tag"]
       38 GETTABLEKS                       R10 R0 K7 ["LayoutOrder"]
       40 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       42 DUPTABLE                         R10 K13 [{"Title", "Spacer", "ToggleSwitch"}]
       43 GETUPVAL                         R12 5
       44 GETTABLEKS                       R11 R12 K4 ["createElement"]
       46 GETUPVAL                         R13 7
       47 GETTABLEKS                       R12 R13 K14 ["Text"]
       49 DUPTABLE                         R13 K15 [{"Text", "tag", "LayoutOrder"}]
       50 LOADK                            R16 K16 ["Plugin"]
       51 LOADK                            R17 K17 ["Name"]
       52 NAMECALL                         R14 R2 K18 ["getText"]
       54 CALL                             R14 3 1
       55 SETTABLEKS                       R14 R13 K14 ["Text"]
       57 LOADK                            R14 K19 ["text-label-large text-align-x-left"]
       58 SETTABLEKS                       R14 R13 K6 ["tag"]
       60 MOVE                             R14 R1
       61 CALL                             R14 0 1
       62 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K10 ["Title"]
       67 GETUPVAL                         R12 5
       68 GETTABLEKS                       R11 R12 K4 ["createElement"]
       70 GETUPVAL                         R13 7
       71 GETTABLEKS                       R12 R13 K5 ["View"]
       73 DUPTABLE                         R13 K8 [{"tag", "LayoutOrder"}]
       74 LOADK                            R14 K20 ["fill"]
       75 SETTABLEKS                       R14 R13 K6 ["tag"]
       77 MOVE                             R14 R1
       78 CALL                             R14 0 1
       79 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K11 ["Spacer"]
       84 GETUPVAL                         R12 5
       85 GETTABLEKS                       R11 R12 K4 ["createElement"]
       87 GETUPVAL                         R13 7
       88 GETTABLEKS                       R12 R13 K21 ["Toggle"]
       90 DUPTABLE                         R13 K26 [{"label", "isChecked", "onActivated", "LayoutOrder", "isDisabled"}]
       91 LOADK                            R14 K27 [""]
       92 SETTABLEKS                       R14 R13 K22 ["label"]
       94 SETTABLEKS                       R4 R13 K23 ["isChecked"]
       96 SETTABLEKS                       R6 R13 K24 ["onActivated"]
       98 MOVE                             R14 R1
       99 CALL                             R14 0 1
      100 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      102 NOT                              R14 R5
      103 SETTABLEKS                       R14 R13 K25 ["isDisabled"]
      105 CALL                             R11 2 1
      106 SETTABLEKS                       R11 R10 K12 ["ToggleSwitch"]
      108 CALL                             R7 3 -1
      109 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PartyEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["PartyEmulator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R3 R1 K8 ["Src"]
       15 GETTABLEKS                       R2 R3 K9 ["Hooks"]
       17 GETTABLEKS                       R4 R1 K8 ["Src"]
       19 GETTABLEKS                       R3 R4 K10 ["Contexts"]
       21 GETIMPORT                        R4 K12 [require]
       23 GETTABLEKS                       R6 R1 K13 ["Packages"]
       25 GETTABLEKS                       R5 R6 K14 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K12 [require]
       30 GETTABLEKS                       R7 R1 K13 ["Packages"]
       32 GETTABLEKS                       R6 R7 K15 ["Foundation"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K12 [require]
       37 GETTABLEKS                       R8 R1 K13 ["Packages"]
       39 GETTABLEKS                       R7 R8 K16 ["Framework"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K12 [require]
       44 GETTABLEKS                       R8 R3 K17 ["PartyContext"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K12 [require]
       49 GETTABLEKS                       R9 R2 K18 ["useServerClientsTestSelected"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R9 R6 K19 ["ContextServices"]
       54 GETTABLEKS                       R10 R9 K20 ["Localization"]
       56 GETTABLEKS                       R11 R9 K21 ["Plugin"]
       58 GETTABLEKS                       R13 R6 K22 ["Util"]
       60 GETTABLEKS                       R12 R13 K23 ["counter"]
       62 DUPCLOSURE                       R13 K24 [PROTO_1]
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R5
       71 RETURN                           R13 1
