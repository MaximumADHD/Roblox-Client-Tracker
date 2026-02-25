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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R0 R1 K1 ["setupMCPServerAsync"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_1]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 ORK                              R1 R1 K3 ["Not Supported"]
        6 GETIMPORT                        R2 K5 [print]
        8 LOADK                            R4 K6 ["Add following to your MCP configuration:\n"]
        9 GETUPVAL                         R10 0
       10 GETTABLEKS                       R9 R10 K7 ["get"]
       12 CALL                             R9 0 1
       13 GETTABLEKS                       R8 R9 K8 ["json"]
       15 GETTABLEKS                       R7 R8 K9 ["encodeAsync"]
       17 MOVE                             R8 R1
       18 LOADB                            R9 1
       19 CALL                             R7 2 1
       20 MOVE                             R5 R7
       21 LOADK                            R6 K10 ["\nYou may have to restart AI Client for changes to apply."]
       22 CONCAT                           R3 R4 R6
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["stop"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K1 ["start"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K2 ["run"]
       14 DUPCLOSURE                       R1 K3 [PROTO_2]
       15 CAPTURE                          UPVAL U3
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R4 R1 K0 ["state"]
        6 JUMPIFNOTEQKS                    R4 K1 ["disconnected"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 GETTABLEKS                       R4 R1 K2 ["isBusy"]
       12 JUMPIF                           R4 ; [+2]
       13 GETTABLEKS                       R4 R2 K3 ["isProcessing"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K4 ["useMemo"]
       18 DUPCLOSURE                       R6 K5 [PROTO_0]
       19 CAPTURE                          UPVAL U3
       20 NEWTABLE                         R7 0 1
       22 GETUPVAL                         R9 3
       23 GETTABLEKS                       R8 R9 K6 ["locale"]
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R6 R7 K7 ["useCallback"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U4
       36 NEWTABLE                         R8 0 2
       38 MOVE                             R9 R3
       39 GETTABLEKS                       R10 R2 K8 ["run"]
       41 SETLIST                          R8 R9 2 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 5
       45 GETUPVAL                         R8 6
       46 DUPTABLE                         R9 K11 [{"tag", "LayoutOrder"}]
       47 LOADK                            R10 K12 ["auto-xy padding-x-small"]
       48 SETTABLEKS                       R10 R9 K9 ["tag"]
       50 GETTABLEKS                       R10 R0 K10 ["LayoutOrder"]
       52 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       54 DUPTABLE                         R10 K14 [{"Checkbox"}]
       55 GETUPVAL                         R11 5
       56 GETUPVAL                         R12 7
       57 DUPTABLE                         R13 K22 [{"testId", "label", "isChecked", "isDisabled", "onActivated", "size", "placement"}]
       58 GETUPVAL                         R16 8
       59 GETTABLEKS                       R15 R16 K23 ["McpServer"]
       61 GETTABLEKS                       R14 R15 K13 ["Checkbox"]
       63 SETTABLEKS                       R14 R13 K15 ["testId"]
       65 GETTABLEKS                       R14 R5 K24 ["ExternalServer"]
       67 SETTABLEKS                       R14 R13 K16 ["label"]
       69 SETTABLEKS                       R3 R13 K17 ["isChecked"]
       71 SETTABLEKS                       R4 R13 K18 ["isDisabled"]
       73 SETTABLEKS                       R6 R13 K19 ["onActivated"]
       75 GETUPVAL                         R17 9
       76 GETTABLEKS                       R16 R17 K25 ["Enums"]
       78 GETTABLEKS                       R15 R16 K26 ["InputSize"]
       80 GETTABLEKS                       R14 R15 K27 ["XSmall"]
       82 SETTABLEKS                       R14 R13 K20 ["size"]
       84 GETUPVAL                         R17 9
       85 GETTABLEKS                       R16 R17 K25 ["Enums"]
       87 GETTABLEKS                       R15 R16 K28 ["InputPlacement"]
       89 GETTABLEKS                       R14 R15 K29 ["End"]
       91 SETTABLEKS                       R14 R13 K21 ["placement"]
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K13 ["Checkbox"]
       96 CALL                             R7 3 -1
       97 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["ExternalServerContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R5 K12 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Util"]
       41 GETTABLEKS                       R6 R7 K15 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K16 ["Resources"]
       48 GETTABLEKS                       R8 R9 K17 ["Localization"]
       50 GETTABLEKS                       R7 R8 K18 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K19 ["Hooks"]
       57 GETTABLEKS                       R8 R9 K20 ["useAsyncGuard"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R2 K21 ["useExternalServer"]
       62 GETTABLEKS                       R9 R3 K22 ["Checkbox"]
       64 GETTABLEKS                       R10 R3 K23 ["View"]
       66 GETTABLEKS                       R11 R4 K24 ["createElement"]
       68 DUPCLOSURE                       R12 K25 [PROTO_4]
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R3
       79 GETTABLEKS                       R13 R4 K26 ["memo"]
       81 MOVE                             R14 R12
       82 CALL                             R13 1 -1
       83 RETURN                           R13 -1
