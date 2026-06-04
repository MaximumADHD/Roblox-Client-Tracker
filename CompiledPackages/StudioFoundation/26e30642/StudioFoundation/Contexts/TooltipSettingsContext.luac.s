PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["delay"]
        3 JUMPIF                           R0 ; [+9]
        4 DUPTABLE                         R0 K3 [{"open", "close"}]
        5 GETUPVAL                         R2 1
        6 DIVK                             R1 R2 K4 [1000]
        7 SETTABLEKS                       R1 R0 K1 ["open"]
        9 GETUPVAL                         R2 2
       10 DIVK                             R1 R2 K4 [1000]
       11 SETTABLEKS                       R1 R0 K2 ["close"]
       13 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"tooltipsDisabled", "setTooltipsDisabled", "delay"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["tooltipsDisabled"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setTooltipsDisabled"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["delay"]
       10 RETURN                           R0 1

PROTO_2:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+16]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NEWTABLE                         R4 0 1
       12 GETTABLEKS                       R5 R0 K1 ["delay"]
       14 SETLIST                          R4 R5 1 [1]
       16 CALL                             R2 2 1
       17 MOVE                             R1 R2
       18 JUMP                             ; [+13]
       19 GETTABLEKS                       R2 R0 K1 ["delay"]
       21 JUMPIF                           R2 ; [+9]
       22 DUPTABLE                         R2 K4 [{"open", "close"}]
       23 GETUPVAL                         R4 2
       24 DIVK                             R3 R4 K5 [1000]
       25 SETTABLEKS                       R3 R2 K2 ["open"]
       27 GETUPVAL                         R4 3
       28 DIVK                             R3 R4 K5 [1000]
       29 SETTABLEKS                       R3 R2 K3 ["close"]
       31 MOVE                             R1 R2
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K6 ["useState"]
       35 GETTABLEKS                       R4 R0 K8 ["initialDisableAllTooltips"]
       37 ORK                              R3 R4 K7 [False]
       38 CALL                             R2 1 2
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K0 ["useMemo"]
       42 NEWCLOSURE                       R5 P1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          REF R1
       46 NEWTABLE                         R6 0 3
       48 MOVE                             R7 R2
       49 MOVE                             R8 R1
       50 MOVE                             R9 R3
       51 SETLIST                          R6 R7 3 [1]
       53 CALL                             R4 2 1
       54 GETUPVAL                         R5 1
       55 GETTABLEKS                       R5 R5 K9 ["createElement"]
       57 GETUPVAL                         R6 4
       58 GETTABLEKS                       R6 R6 K10 ["Provider"]
       60 DUPTABLE                         R7 K12 [{"value"}]
       61 SETTABLEKS                       R4 R7 K11 ["value"]
       63 GETUPVAL                         R8 1
       64 GETTABLEKS                       R8 R8 K9 ["createElement"]
       66 GETUPVAL                         R9 5
       67 DUPTABLE                         R10 K14 [{"timeout"}]
       68 LOADK                            R11 K15 [0.5]
       69 SETTABLEKS                       R11 R10 K13 ["timeout"]
       71 GETTABLEKS                       R11 R0 K16 ["children"]
       73 CALL                             R8 3 -1
       74 CALL                             R5 -1 -1
       75 CLOSEUPVALS                      R1
       76 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        7 MOVE                             R2 R0
        8 LOADK                            R3 K1 ["useTooltipSettings must be used within a TooltipSettingsProvider"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Popover"]
       20 GETTABLEKS                       R4 R4 K10 ["PopoverDelayGroup"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R3 R3 K10 ["PopoverDelayGroup"]
       25 GETIMPORT                        R4 K12 [game]
       27 LOADK                            R6 K13 ["TooltipShowDelay"]
       28 LOADN                            R7 44
       29 NAMECALL                         R4 R4 K14 ["DefineFastInt"]
       31 CALL                             R4 3 1
       32 GETIMPORT                        R5 K12 [game]
       34 LOADK                            R7 K15 ["TooltipHideDelay"]
       35 LOADN                            R8 44
       36 NAMECALL                         R5 R5 K14 ["DefineFastInt"]
       38 CALL                             R5 3 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K16 ["SharedFlags"]
       43 GETTABLEKS                       R7 R7 K17 ["getFFlagStudioFoundationPopupTooltipFix"]
       45 CALL                             R6 1 1
       46 CALL                             R6 0 1
       47 GETIMPORT                        R7 K6 [require]
       49 GETTABLEKS                       R8 R0 K18 ["Types"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R2 K19 ["createContext"]
       54 LOADNIL                          R9
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K20 [PROTO_2]
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R3
       63 DUPCLOSURE                       R10 K21 [PROTO_3]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R8
       66 DUPTABLE                         R11 K24 [{"Provider", "useTooltipSettings"}]
       67 SETTABLEKS                       R9 R11 K22 ["Provider"]
       69 SETTABLEKS                       R10 R11 K23 ["useTooltipSettings"]
       71 RETURN                           R11 1
