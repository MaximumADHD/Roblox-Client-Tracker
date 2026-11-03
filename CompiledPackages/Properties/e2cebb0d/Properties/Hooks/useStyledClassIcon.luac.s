PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["isHiddenGui"]
        2 GETTABLEKS                       R2 R1 K1 ["multiple"]
        4 JUMPIF                           R2 ; [+3]
        5 GETTABLEKS                       R2 R1 K2 ["value"]
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R2 R0 K3 ["isDisabledScript"]
       11 GETTABLEKS                       R3 R2 K1 ["multiple"]
       13 JUMPIF                           R3 ; [+3]
       14 GETTABLEKS                       R3 R2 K2 ["value"]
       16 JUMPIFNOT                        R3 ; [+1]
       17 RETURN                           R2 1
       18 DUPTABLE                         R3 K5 [{["multiple"] = False, ["value"] = False}]
       19 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getMultipleIcon"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["Image"]
        6 RETURN                           R0 1

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 GETTABLEKS                       R1 R0 K0 ["className"]
        4 GETTABLEKS                       R1 R1 K1 ["multiple"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 DUPTABLE                         R1 K5 [{["image"], ["transparency"] = 0}]
        8 GETUPVAL                         R2 0
        9 SETTABLEKS                       R2 R1 K2 ["image"]
       11 RETURN                           R1 1
       12 GETTABLEKS                       R1 R0 K6 ["isClientScript"]
       14 GETTABLEKS                       R3 R0 K7 ["isHiddenGui"]
       16 GETTABLEKS                       R4 R3 K1 ["multiple"]
       18 JUMPIF                           R4 ; [+3]
       19 GETTABLEKS                       R4 R3 K8 ["value"]
       21 JUMPIFNOT                        R4 ; [+2]
       22 MOVE                             R2 R3
       23 JUMP                             ; [+11]
       24 GETTABLEKS                       R4 R0 K9 ["isDisabledScript"]
       26 GETTABLEKS                       R5 R4 K1 ["multiple"]
       28 JUMPIF                           R5 ; [+3]
       29 GETTABLEKS                       R5 R4 K8 ["value"]
       31 JUMPIFNOT                        R5 ; [+2]
       32 MOVE                             R2 R4
       33 JUMP                             ; [+1]
       34 DUPTABLE                         R2 K11 [{["multiple"] = False, ["value"] = False}]
       35 GETTABLEKS                       R3 R0 K12 ["isAutoUpdatedPackageLink"]
       37 GETTABLEKS                       R4 R1 K1 ["multiple"]
       39 JUMPIF                           R4 ; [+6]
       40 GETTABLEKS                       R4 R2 K1 ["multiple"]
       42 JUMPIF                           R4 ; [+3]
       43 GETTABLEKS                       R4 R3 K1 ["multiple"]
       45 JUMPIFNOT                        R4 ; [+5]
       46 DUPTABLE                         R4 K5 [{["image"], ["transparency"] = 0}]
       47 GETUPVAL                         R5 0
       48 SETTABLEKS                       R5 R4 K2 ["image"]
       50 RETURN                           R4 1
       51 DUPTABLE                         R4 K13 [{"image", "transparency"}]
       52 GETTABLEKS                       R6 R1 K8 ["value"]
       54 JUMPIFNOT                        R6 ; [+8]
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R5 R5 K14 ["getClassIcon"]
       58 LOADK                            R6 K15 ["LocalScript"]
       59 CALL                             R5 1 1
       60 GETTABLEKS                       R5 R5 K16 ["Image"]
       62 JUMP                             ; [+22]
       63 GETTABLEKS                       R6 R3 K8 ["value"]
       65 JUMPIFNOT                        R6 ; [+9]
       66 GETUPVAL                         R5 2
       67 GETTABLEKS                       R5 R5 K17 ["packages"]
       69 LOADK                            R6 K18 ["PackageLink_AutoupdateOn"]
       70 GETUPVAL                         R7 3
       71 GETTABLEKS                       R7 R7 K19 ["theme"]
       73 CALL                             R5 2 1
       74 JUMP                             ; [+10]
       75 GETUPVAL                         R5 1
       76 GETTABLEKS                       R5 R5 K14 ["getClassIcon"]
       78 GETTABLEKS                       R6 R0 K0 ["className"]
       80 GETTABLEKS                       R6 R6 K8 ["value"]
       82 CALL                             R5 1 1
       83 GETTABLEKS                       R5 R5 K16 ["Image"]
       85 SETTABLEKS                       R5 R4 K2 ["image"]
       87 GETTABLEKS                       R6 R2 K8 ["value"]
       89 JUMPIFNOT                        R6 ; [+6]
       90 GETUPVAL                         R5 4
       91 GETTABLEKS                       R5 R5 K20 ["ClassIcon"]
       93 GETTABLEKS                       R5 R5 K21 ["DisabledTransparency"]
       95 JUMP                             ; [+14]
       96 GETTABLEKS                       R6 R3 K8 ["value"]
       98 JUMPIFNOT                        R6 ; [+10]
       99 GETUPVAL                         R5 5
      100 GETTABLEKS                       R5 R5 K22 ["Color"]
      102 GETTABLEKS                       R5 R5 K23 ["ActionEmphasis"]
      104 GETTABLEKS                       R5 R5 K24 ["Background"]
      106 GETTABLEKS                       R5 R5 K25 ["Transparency"]
      108 JUMP                             ; [+1]
      109 LOADN                            R5 0
      110 SETTABLEKS                       R5 R4 K3 ["transparency"]
      112 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 3
       15 CALL                             R2 0 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R5 0 2
       23 GETTABLEKS                       R6 R1 K3 ["theme"]
       25 MOVE                             R7 R0
       26 SETLIST                          R5 R6 2 [1]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 4
       30 CALL                             R4 0 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R7 0 2
       43 GETUPVAL                         R8 6
       44 GETTABLEKS                       R9 R0 K5 ["getClassIcon"]
       46 SETLIST                          R7 R8 2 [1]
       48 CALL                             R5 2 1
       49 DUPTABLE                         R6 K7 [{"getIconProps"}]
       50 SETTABLEKS                       R5 R6 K6 ["getIconProps"]
       52 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R3 K9 ["ClassIconContext"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Util"]
       27 GETTABLEKS                       R5 R5 K12 ["ImageUrl"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K13 ["PropertyEditorTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K14 ["PropertyTypes"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K4 ["Parent"]
       44 GETTABLEKS                       R8 R8 K15 ["React"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K7 ["Components"]
       51 GETTABLEKS                       R9 R9 K8 ["Contexts"]
       53 GETTABLEKS                       R9 R9 K16 ["ThemeContext"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       60 GETTABLEKS                       R10 R10 K18 ["useVisualValues"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R3 K17 ["Hooks"]
       65 GETTABLEKS                       R10 R10 K19 ["useTokens"]
       67 DUPCLOSURE                       R11 K20 [PROTO_0]
       68 DUPCLOSURE                       R12 K21 [PROTO_3]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R11
       76 RETURN                           R12 1
