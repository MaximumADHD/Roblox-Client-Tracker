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
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K2 ["useIsEmulationEnabled"]
       16 CALL                             R4 0 1
       17 GETUPVAL                         R5 4
       18 CALL                             R5 0 1
       19 GETUPVAL                         R6 5
       20 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R8 0 0
       27 CALL                             R6 2 1
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R7 R7 K4 ["createElement"]
       31 GETUPVAL                         R8 7
       32 GETTABLEKS                       R8 R8 K5 ["View"]
       34 DUPTABLE                         R9 K9 [{["tag"] = "row align-y-center size-full-0 auto-y padding-medium", ["LayoutOrder"]}]
       35 GETTABLEKS                       R10 R0 K8 ["LayoutOrder"]
       37 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       39 DUPTABLE                         R10 K13 [{"Title", "Spacer", "ToggleSwitch"}]
       40 GETUPVAL                         R11 5
       41 GETTABLEKS                       R11 R11 K4 ["createElement"]
       43 GETUPVAL                         R12 7
       44 GETTABLEKS                       R12 R12 K14 ["Text"]
       46 DUPTABLE                         R13 K16 [{["Text"], ["tag"] = "text-label-large text-align-x-left", ["LayoutOrder"]}]
       47 LOADK                            R16 K17 ["Plugin"]
       48 LOADK                            R17 K18 ["Name"]
       49 NAMECALL                         R14 R2 K19 ["getText"]
       51 CALL                             R14 3 1
       52 SETTABLEKS                       R14 R13 K14 ["Text"]
       54 MOVE                             R14 R1
       55 CALL                             R14 0 1
       56 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       58 CALL                             R11 2 1
       59 SETTABLEKS                       R11 R10 K10 ["Title"]
       61 GETUPVAL                         R11 5
       62 GETTABLEKS                       R11 R11 K4 ["createElement"]
       64 GETUPVAL                         R12 7
       65 GETTABLEKS                       R12 R12 K5 ["View"]
       67 DUPTABLE                         R13 K21 [{["tag"] = "fill", ["LayoutOrder"]}]
       68 MOVE                             R14 R1
       69 CALL                             R14 0 1
       70 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       72 CALL                             R11 2 1
       73 SETTABLEKS                       R11 R10 K11 ["Spacer"]
       75 GETUPVAL                         R11 5
       76 GETTABLEKS                       R11 R11 K4 ["createElement"]
       78 GETUPVAL                         R12 7
       79 GETTABLEKS                       R12 R12 K22 ["Toggle"]
       81 DUPTABLE                         R13 K28 [{["label"] = "", ["isChecked"], ["onActivated"], ["LayoutOrder"], ["isDisabled"]}]
       82 SETTABLEKS                       R4 R13 K25 ["isChecked"]
       84 SETTABLEKS                       R6 R13 K26 ["onActivated"]
       86 MOVE                             R14 R1
       87 CALL                             R14 0 1
       88 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       90 NOT                              R14 R5
       91 SETTABLEKS                       R14 R13 K27 ["isDisabled"]
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K12 ["ToggleSwitch"]
       96 CALL                             R7 3 -1
       97 RETURN                           R7 -1

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
       13 GETTABLEKS                       R2 R1 K8 ["Src"]
       15 GETTABLEKS                       R2 R2 K9 ["Hooks"]
       17 GETTABLEKS                       R3 R1 K8 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       21 GETIMPORT                        R4 K12 [require]
       23 GETTABLEKS                       R5 R1 K13 ["Packages"]
       25 GETTABLEKS                       R5 R5 K14 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K12 [require]
       30 GETTABLEKS                       R6 R1 K13 ["Packages"]
       32 GETTABLEKS                       R6 R6 K15 ["Foundation"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K12 [require]
       37 GETTABLEKS                       R7 R1 K13 ["Packages"]
       39 GETTABLEKS                       R7 R7 K16 ["Framework"]
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
       58 GETTABLEKS                       R12 R6 K22 ["Util"]
       60 GETTABLEKS                       R12 R12 K23 ["counter"]
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
