PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R3
        3 RETURN                           R3 1
        4 LOADK                            R5 K0 ["Chat"]
        5 NAMECALL                         R3 R0 K1 ["IsA"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+16]
        9 GETIMPORT                        R3 K4 [table.freeze]
       11 DUPTABLE                         R4 K7 [{"ServiceType", "RunningTCS"}]
       12 LOADN                            R5 1
       13 SETTABLEKS                       R5 R4 K5 ["ServiceType"]
       15 GETIMPORT                        R6 K11 [Enum.ChatVersion.TextChatService]
       17 JUMPIFEQ                         R2 R6 ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K6 ["RunningTCS"]
       23 CALL                             R3 1 -1
       24 RETURN                           R3 -1
       25 LOADK                            R5 K10 ["TextChatService"]
       26 NAMECALL                         R3 R0 K1 ["IsA"]
       28 CALL                             R3 2 1
       29 JUMPIFNOT                        R3 ; [+13]
       30 JUMPIFNOT                        R1 ; [+12]
       31 GETIMPORT                        R3 K11 [Enum.ChatVersion.TextChatService]
       33 JUMPIFEQ                         R2 R3 ; [+9]
       35 GETIMPORT                        R3 K4 [table.freeze]
       37 DUPTABLE                         R4 K12 [{"ServiceType"}]
       38 LOADN                            R5 0
       39 SETTABLEKS                       R5 R4 K5 ["ServiceType"]
       41 CALL                             R3 1 -1
       42 RETURN                           R3 -1
       43 LOADNIL                          R3
       44 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R3 R4 K0 ["IsAutoMigrated"]
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K1 ["ChatVersion"]
        9 CALL                             R1 3 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R4 3
        4 GETTABLEKS                       R3 R4 K0 ["IsAutoMigrated"]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K1 ["ChatVersion"]
        9 CALL                             R1 3 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Disconnect"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADK                            R6 K0 ["Chat"]
        3 NAMECALL                         R4 R0 K1 ["IsA"]
        5 CALL                             R4 2 1
        6 JUMPIFNOT                        R4 ; [+28]
        7 GETIMPORT                        R4 K3 [game]
        9 LOADK                            R6 K4 ["TextChatService"]
       10 NAMECALL                         R4 R4 K5 ["GetService"]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 0
       14 MOVE                             R6 R0
       15 GETTABLEKS                       R7 R0 K6 ["IsAutoMigrated"]
       17 GETTABLEKS                       R8 R4 K7 ["ChatVersion"]
       19 CALL                             R5 3 1
       20 MOVE                             R3 R5
       21 LOADK                            R7 K7 ["ChatVersion"]
       22 NAMECALL                         R5 R4 K8 ["GetPropertyChangedSignal"]
       24 CALL                             R5 2 1
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R4
       30 NAMECALL                         R5 R5 K9 ["Connect"]
       32 CALL                             R5 2 1
       33 MOVE                             R2 R5
       34 JUMP                             ; [+32]
       35 LOADK                            R6 K4 ["TextChatService"]
       36 NAMECALL                         R4 R0 K1 ["IsA"]
       38 CALL                             R4 2 1
       39 JUMPIFNOT                        R4 ; [+27]
       40 GETIMPORT                        R4 K3 [game]
       42 LOADK                            R6 K0 ["Chat"]
       43 NAMECALL                         R4 R4 K5 ["GetService"]
       45 CALL                             R4 2 1
       46 GETUPVAL                         R5 0
       47 MOVE                             R6 R0
       48 GETTABLEKS                       R7 R4 K6 ["IsAutoMigrated"]
       50 GETTABLEKS                       R8 R0 K7 ["ChatVersion"]
       52 CALL                             R5 3 1
       53 MOVE                             R3 R5
       54 LOADK                            R7 K7 ["ChatVersion"]
       55 NAMECALL                         R5 R0 K8 ["GetPropertyChangedSignal"]
       57 CALL                             R5 2 1
       58 NEWCLOSURE                       R7 P1
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R4
       63 NAMECALL                         R5 R5 K9 ["Connect"]
       65 CALL                             R5 2 1
       66 MOVE                             R2 R5
       67 MOVE                             R4 R3
       68 NEWCLOSURE                       R5 P2
       69 CAPTURE                          REF R2
       70 CLOSEUPVALS                      R2
       71 RETURN                           R4 2

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R1 K0 ["ServiceType"]
        6 JUMPIFNOTEQKN                    R2 K1 [0] ; [+7]
        8 LOADK                            R4 K2 ["ChatMigration"]
        9 LOADK                            R5 K3 ["AutoMigrateWarning"]
       10 NAMECALL                         R2 R0 K4 ["getText"]
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1
       14 GETTABLEKS                       R2 R1 K0 ["ServiceType"]
       16 JUMPIFNOTEQKN                    R2 K5 [1] ; [+7]
       18 LOADK                            R4 K2 ["ChatMigration"]
       19 LOADK                            R5 K6 ["DeprecationWarning"]
       20 NAMECALL                         R2 R0 K4 ["getText"]
       22 CALL                             R2 3 -1
       23 RETURN                           R2 -1
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R2 K0 [""]
        3 RETURN                           R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["alertIcons"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["valueBinding"]
        4 NAMECALL                         R5 R5 K1 ["getValue"]
        6 CALL                             R5 1 1
        7 JUMPIFNOTEQKNIL                  R5 ; [+3]
        9 LOADNIL                          R3
       10 JUMP                             ; [+23]
       11 GETTABLEKS                       R6 R5 K2 ["ServiceType"]
       13 JUMPIFNOTEQKN                    R6 K3 [0] ; [+8]
       15 LOADK                            R8 K4 ["ChatMigration"]
       16 LOADK                            R9 K5 ["AutoMigrateWarning"]
       17 NAMECALL                         R6 R4 K6 ["getText"]
       19 CALL                             R6 3 1
       20 MOVE                             R3 R6
       21 JUMP                             ; [+12]
       22 GETTABLEKS                       R6 R5 K2 ["ServiceType"]
       24 JUMPIFNOTEQKN                    R6 K7 [1] ; [+8]
       26 LOADK                            R8 K4 ["ChatMigration"]
       27 LOADK                            R9 K8 ["DeprecationWarning"]
       28 NAMECALL                         R6 R4 K6 ["getText"]
       30 CALL                             R6 3 1
       31 MOVE                             R3 R6
       32 JUMP                             ; [+1]
       33 LOADNIL                          R3
       34 JUMPIFNOTEQKNIL                  R3 ; [+2]
       36 RETURN                           R0 0
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R4 R5 K9 ["mouseEnter"]
       40 MOVE                             R5 R0
       41 MOVE                             R6 R1
       42 MOVE                             R7 R2
       43 MOVE                             R8 R3
       44 CALL                             R4 4 0
       45 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["theme"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_9:
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
       15 GETUPVAL                         R3 3
       16 CALL                             R3 0 1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K5 ["useCallback"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R6 0 3
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R8 R0 K6 ["valueBinding"]
       29 GETTABLEKS                       R9 R3 K7 ["mouseEnter"]
       31 SETLIST                          R6 R7 3 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K8 ["createElement"]
       37 LOADK                            R6 K9 ["ImageLabel"]
       38 NEWTABLE                         R7 8 0
       40 GETIMPORT                        R8 K12 [UDim2.fromOffset]
       42 LOADN                            R9 16
       43 LOADN                            R10 16
       44 CALL                             R8 2 1
       45 SETTABLEKS                       R8 R7 K13 ["Size"]
       47 LOADN                            R8 1
       48 SETTABLEKS                       R8 R7 K14 ["BackgroundTransparency"]
       50 GETUPVAL                         R10 1
       51 GETTABLEKS                       R9 R10 K15 ["Event"]
       53 GETTABLEKS                       R8 R9 K16 ["MouseEnter"]
       55 SETTABLE                         R4 R7 R8
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R9 R10 K15 ["Event"]
       59 GETTABLEKS                       R8 R9 K17 ["MouseLeave"]
       61 GETTABLEKS                       R9 R3 K18 ["mouseLeave"]
       63 SETTABLE                         R9 R7 R8
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R8 R9 K19 ["Tag"]
       67 LOADK                            R9 K20 ["data-testid=ChatMigration"]
       68 SETTABLE                         R9 R7 R8
       69 GETTABLEKS                       R8 R0 K6 ["valueBinding"]
       71 NEWCLOSURE                       R10 P1
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R2
       74 NAMECALL                         R8 R8 K21 ["map"]
       76 CALL                             R8 2 1
       77 SETTABLEKS                       R8 R7 K22 ["Image"]
       79 CALL                             R5 2 -1
       80 RETURN                           R5 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"valueBinding", "getTooltipText", "tag"}]
        5 GETTABLEKS                       R4 R0 K1 ["valueBinding"]
        7 SETTABLEKS                       R4 R3 K1 ["valueBinding"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K2 ["getTooltipText"]
       12 LOADK                            R4 K5 ["data-testid=ChatMigration"]
       13 SETTABLEKS                       R4 R3 K3 ["tag"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_11:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["createElement"]
        6 GETUPVAL                         R2 2
        7 DUPTABLE                         R3 K2 [{"valueBinding"}]
        8 SETTABLEKS                       R0 R3 K1 ["valueBinding"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K0 ["createElement"]
       15 GETUPVAL                         R2 3
       16 DUPTABLE                         R3 K2 [{"valueBinding"}]
       17 SETTABLEKS                       R0 R3 K1 ["valueBinding"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R3 K7 ["FieldTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["ImageUrl"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Components"]
       39 GETTABLEKS                       R7 R8 K14 ["Contexts"]
       41 GETTABLEKS                       R6 R7 K15 ["ThemeContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K13 ["Components"]
       48 GETTABLEKS                       R7 R8 K16 ["WarningView"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K17 ["Flags"]
       55 GETTABLEKS                       R8 R9 K18 ["getFFlagBehaviorVisualState"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K19 ["Hooks"]
       62 GETTABLEKS                       R9 R10 K20 ["useTooltipActions"]
       64 CALL                             R8 1 1
       65 DUPCLOSURE                       R9 K21 [PROTO_0]
       66 DUPCLOSURE                       R10 K22 [PROTO_4]
       67 CAPTURE                          VAL R9
       68 DUPCLOSURE                       R11 K23 [PROTO_5]
       69 DUPCLOSURE                       R12 K24 [PROTO_6]
       70 CAPTURE                          VAL R3
       71 DUPCLOSURE                       R13 K25 [PROTO_9]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R12
       78 DUPCLOSURE                       R14 K26 [PROTO_10]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R11
       82 DUPTABLE                         R15 K33 [{"key", "icon", "watch", "validateArgs", "render", "permanent"}]
       83 LOADK                            R16 K34 ["ChatMigration"]
       84 SETTABLEKS                       R16 R15 K27 ["key"]
       86 LOADK                            R16 K35 [""]
       87 SETTABLEKS                       R16 R15 K28 ["icon"]
       89 SETTABLEKS                       R10 R15 K29 ["watch"]
       91 DUPCLOSURE                       R16 K36 [PROTO_11]
       92 SETTABLEKS                       R16 R15 K30 ["validateArgs"]
       94 DUPCLOSURE                       R16 K37 [PROTO_12]
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R13
       99 SETTABLEKS                       R16 R15 K31 ["render"]
      101 LOADB                            R16 1
      102 SETTABLEKS                       R16 R15 K32 ["permanent"]
      104 RETURN                           R15 1
