PROTO_0:
        0 DUPTABLE                         R0 K1 [{"ExternalServer"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["McpServer"]
        3 LOADK                            R4 K3 ["Label"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ExternalServer"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["stop"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K1 ["start"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R1 K0 ["state"]
        4 JUMPIFNOTEQKS                    R3 K1 ["disconnected"] ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 GETTABLEKS                       R3 R1 K2 ["isBusy"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       13 DUPCLOSURE                       R5 K4 [PROTO_0]
       14 CAPTURE                          UPVAL U2
       15 NEWTABLE                         R6 0 1
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R7 R8 K5 ["locale"]
       20 SETLIST                          R6 R7 1 [1]
       22 CALL                             R4 2 1
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R5 R6 K6 ["useCallback"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R7 0 1
       31 MOVE                             R8 R2
       32 SETLIST                          R7 R8 1 [1]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R6 3
       36 GETUPVAL                         R7 4
       37 DUPTABLE                         R8 K9 [{"tag", "LayoutOrder"}]
       38 LOADK                            R9 K10 ["auto-xy padding-x-small"]
       39 SETTABLEKS                       R9 R8 K7 ["tag"]
       41 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
       43 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       45 DUPTABLE                         R9 K12 [{"Checkbox"}]
       46 GETUPVAL                         R10 3
       47 GETUPVAL                         R11 5
       48 DUPTABLE                         R12 K20 [{"testId", "label", "isChecked", "isDisabled", "onActivated", "size", "placement"}]
       49 GETUPVAL                         R15 6
       50 GETTABLEKS                       R14 R15 K21 ["McpServer"]
       52 GETTABLEKS                       R13 R14 K11 ["Checkbox"]
       54 SETTABLEKS                       R13 R12 K13 ["testId"]
       56 GETTABLEKS                       R13 R4 K22 ["ExternalServer"]
       58 SETTABLEKS                       R13 R12 K14 ["label"]
       60 SETTABLEKS                       R2 R12 K15 ["isChecked"]
       62 SETTABLEKS                       R3 R12 K16 ["isDisabled"]
       64 SETTABLEKS                       R5 R12 K17 ["onActivated"]
       66 GETUPVAL                         R16 7
       67 GETTABLEKS                       R15 R16 K23 ["Enums"]
       69 GETTABLEKS                       R14 R15 K24 ["InputSize"]
       71 GETTABLEKS                       R13 R14 K25 ["XSmall"]
       73 SETTABLEKS                       R13 R12 K18 ["size"]
       75 GETUPVAL                         R16 7
       76 GETTABLEKS                       R15 R16 K23 ["Enums"]
       78 GETTABLEKS                       R14 R15 K26 ["InputPlacement"]
       80 GETTABLEKS                       R13 R14 K27 ["End"]
       82 SETTABLEKS                       R13 R12 K19 ["placement"]
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K11 ["Checkbox"]
       87 CALL                             R6 3 -1
       88 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["ExternalServerContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Util"]
       34 GETTABLEKS                       R5 R6 K13 ["TestIds"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K14 ["Resources"]
       41 GETTABLEKS                       R7 R8 K15 ["Localization"]
       43 GETTABLEKS                       R6 R7 K16 ["Translator"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K17 ["useExternalServer"]
       48 GETTABLEKS                       R7 R2 K18 ["Checkbox"]
       50 GETTABLEKS                       R8 R2 K19 ["View"]
       52 GETTABLEKS                       R9 R3 K20 ["createElement"]
       54 DUPCLOSURE                       R10 K21 [PROTO_2]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R2
       63 GETTABLEKS                       R11 R3 K22 ["memo"]
       65 MOVE                             R12 R10
       66 CALL                             R11 1 -1
       67 RETURN                           R11 -1
