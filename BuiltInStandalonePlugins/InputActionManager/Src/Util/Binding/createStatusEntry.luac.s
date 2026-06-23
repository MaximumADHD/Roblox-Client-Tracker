PROTO_0:
        0 LOADNIL                          R4
        1 LOADNIL                          R5
        2 JUMPIFNOTEQKS                    R1 K0 ["DUPLICATE_KEYCODE"] ; [+29]
        4 LOADK                            R8 K1 ["Status"]
        5 LOADK                            R9 K2 ["DuplicateKeycodeTitle"]
        6 NAMECALL                         R6 R0 K3 ["getText"]
        8 CALL                             R6 3 1
        9 MOVE                             R4 R6
       10 LOADK                            R8 K1 ["Status"]
       11 LOADK                            R9 K4 ["DuplicateKeycodeDescription"]
       12 DUPTABLE                         R10 K7 [{"keycode", "actions"}]
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETTABLEKS                       R11 R2 K5 ["keycode"]
       16 JUMPIF                           R11 ; [+1]
       17 LOADK                            R11 K8 [""]
       18 SETTABLEKS                       R11 R10 K5 ["keycode"]
       20 JUMPIFNOT                        R2 ; [+3]
       21 GETTABLEKS                       R11 R2 K6 ["actions"]
       23 JUMPIF                           R11 ; [+1]
       24 LOADK                            R11 K8 [""]
       25 SETTABLEKS                       R11 R10 K6 ["actions"]
       27 NAMECALL                         R6 R0 K3 ["getText"]
       29 CALL                             R6 4 1
       30 MOVE                             R5 R6
       31 JUMP                             ; [+52]
       32 JUMPIFNOTEQKS                    R1 K9 ["MODIFIER_KEYCODE"] ; [+9]
       34 LOADK                            R8 K1 ["Status"]
       35 LOADK                            R9 K10 ["ModifierKeycodeTitle"]
       36 NAMECALL                         R6 R0 K3 ["getText"]
       38 CALL                             R6 3 1
       39 MOVE                             R4 R6
       40 MOVE                             R5 R4
       41 JUMP                             ; [+42]
       42 JUMPIFNOTEQKS                    R1 K11 ["NO_KEYCODE"] ; [+32]
       44 JUMPIFEQKNIL                     R3 ; [+17]
       46 GETUPVAL                         R7 0
       47 GETTABLE                         R6 R7 R3
       48 JUMPIFNOT                        R6 ; [+13]
       49 LOADK                            R8 K1 ["Status"]
       50 LOADK                            R9 K12 ["MissingCompositeKeycodeTitle"]
       51 NAMECALL                         R6 R0 K3 ["getText"]
       53 CALL                             R6 3 1
       54 MOVE                             R4 R6
       55 LOADK                            R8 K1 ["Status"]
       56 LOADK                            R9 K13 ["MissingCompositeKeycodeDescription"]
       57 NAMECALL                         R6 R0 K3 ["getText"]
       59 CALL                             R6 3 1
       60 MOVE                             R5 R6
       61 JUMP                             ; [+22]
       62 LOADK                            R8 K1 ["Status"]
       63 LOADK                            R9 K14 ["MissingKeycodeTitle"]
       64 NAMECALL                         R6 R0 K3 ["getText"]
       66 CALL                             R6 3 1
       67 MOVE                             R4 R6
       68 LOADK                            R8 K1 ["Status"]
       69 LOADK                            R9 K15 ["MissingKeycodeDescription"]
       70 NAMECALL                         R6 R0 K3 ["getText"]
       72 CALL                             R6 3 1
       73 MOVE                             R5 R6
       74 JUMP                             ; [+9]
       75 GETIMPORT                        R6 K17 [error]
       77 LOADK                            R8 K18 ["Unknown status type: %*"]
       78 MOVE                             R10 R1
       79 NAMECALL                         R8 R8 K19 ["format"]
       81 CALL                             R8 2 1
       82 MOVE                             R7 R8
       83 CALL                             R6 1 0
       84 DUPTABLE                         R6 K24 [{"Message", "Severity", "Title", "Type"}]
       85 SETTABLEKS                       R5 R6 K20 ["Message"]
       87 GETUPVAL                         R8 1
       88 GETTABLE                         R7 R8 R1
       89 SETTABLEKS                       R7 R6 K21 ["Severity"]
       91 SETTABLEKS                       R4 R6 K22 ["Title"]
       93 SETTABLEKS                       R1 R6 K23 ["Type"]
       95 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 GETIMPORT                        R3 K11 [Enum.PropertyStatus.Error]
       18 SETTABLEKS                       R3 R2 K12 ["DUPLICATE_KEYCODE"]
       20 GETIMPORT                        R3 K14 [Enum.PropertyStatus.Warning]
       22 SETTABLEKS                       R3 R2 K15 ["MODIFIER_KEYCODE"]
       24 GETIMPORT                        R3 K14 [Enum.PropertyStatus.Warning]
       26 SETTABLEKS                       R3 R2 K16 ["NO_KEYCODE"]
       28 DUPTABLE                         R3 K23 [{"up", "down", "left", "right", "forward", "backward"}]
       29 LOADB                            R4 1
       30 SETTABLEKS                       R4 R3 K17 ["up"]
       32 LOADB                            R4 1
       33 SETTABLEKS                       R4 R3 K18 ["down"]
       35 LOADB                            R4 1
       36 SETTABLEKS                       R4 R3 K19 ["left"]
       38 LOADB                            R4 1
       39 SETTABLEKS                       R4 R3 K20 ["right"]
       41 LOADB                            R4 1
       42 SETTABLEKS                       R4 R3 K21 ["forward"]
       44 LOADB                            R4 1
       45 SETTABLEKS                       R4 R3 K22 ["backward"]
       47 DUPCLOSURE                       R4 K24 [PROTO_0]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 RETURN                           R4 1
