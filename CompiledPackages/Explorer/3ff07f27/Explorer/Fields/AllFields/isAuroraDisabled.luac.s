PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AuthorityMode"]
        3 GETIMPORT                        R1 K3 [Enum.AuthorityMode.Server]
        5 JUMPIFEQ                         R0 R1 ; [+3]
        7 LOADB                            R0 1
        8 RETURN                           R0 1
        9 LOADNIL                          R0
       10 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["AuthorityMode"]
        4 GETIMPORT                        R3 K3 [Enum.AuthorityMode.Server]
        6 JUMPIFEQ                         R2 R3 ; [+3]
        8 LOADB                            R1 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R4 K0 ["AuroraScript"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+3]
        5 LOADNIL                          R2
        6 DUPCLOSURE                       R3 K2 [PROTO_1]
        7 RETURN                           R2 2
        8 GETUPVAL                         R2 0
        9 LOADK                            R4 K3 ["AuthorityMode"]
       10 NAMECALL                         R2 R2 K4 ["GetPropertyChangedSignal"]
       12 CALL                             R2 2 1
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U0
       16 NAMECALL                         R2 R2 K5 ["Connect"]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K3 ["AuthorityMode"]
       22 GETIMPORT                        R5 K8 [Enum.AuthorityMode.Server]
       24 JUMPIFEQ                         R4 R5 ; [+3]
       26 LOADB                            R3 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R3
       29 NEWCLOSURE                       R4 P2
       30 CAPTURE                          VAL R2
       31 RETURN                           R3 2

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+6]
        1 LOADK                            R4 K0 ["AuroraScript"]
        2 LOADK                            R5 K1 ["BadAuthorityMode"]
        3 NAMECALL                         R2 R0 K2 ["getText"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"valueBinding", "getTooltipText", "tag"}]
        5 GETTABLEKS                       R4 R0 K1 ["valueBinding"]
        7 SETTABLEKS                       R4 R3 K1 ["valueBinding"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K2 ["getTooltipText"]
       12 LOADK                            R4 K5 ["data-testid=AuthorityModeWarning"]
       13 SETTABLEKS                       R4 R3 K3 ["tag"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_7:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 GETUPVAL                         R2 2
        7 DUPTABLE                         R3 K2 [{"valueBinding"}]
        8 SETTABLEKS                       R0 R3 K1 ["valueBinding"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagBehaviorVisualState"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Fields"]
       18 GETTABLEKS                       R3 R3 K9 ["FieldTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Components"]
       32 GETTABLEKS                       R5 R5 K13 ["WarningView"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K15 [game]
       37 LOADK                            R7 K16 ["Workspace"]
       38 NAMECALL                         R5 R5 K17 ["GetService"]
       40 CALL                             R5 2 1
       41 DUPCLOSURE                       R6 K18 [PROTO_0]
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R7 K19 [PROTO_4]
       44 CAPTURE                          VAL R5
       45 DUPCLOSURE                       R8 K20 [PROTO_5]
       46 DUPCLOSURE                       R9 K21 [PROTO_6]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R8
       50 DUPTABLE                         R10 K28 [{"key", "icon", "watch", "validateArgs", "render", "permanent"}]
       51 LOADK                            R11 K29 ["AuthorityMode"]
       52 SETTABLEKS                       R11 R10 K22 ["key"]
       54 LOADK                            R11 K30 [""]
       55 SETTABLEKS                       R11 R10 K23 ["icon"]
       57 SETTABLEKS                       R7 R10 K24 ["watch"]
       59 DUPCLOSURE                       R11 K31 [PROTO_7]
       60 SETTABLEKS                       R11 R10 K25 ["validateArgs"]
       62 DUPCLOSURE                       R11 K32 [PROTO_8]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R9
       66 SETTABLEKS                       R11 R10 K26 ["render"]
       68 LOADB                            R11 1
       69 SETTABLEKS                       R11 R10 K27 ["permanent"]
       71 RETURN                           R10 1
