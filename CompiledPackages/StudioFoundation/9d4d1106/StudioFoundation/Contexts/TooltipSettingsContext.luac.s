PROTO_0:
        0 DUPTABLE                         R0 K3 [{"tooltipsDisabled", "setTooltipsDisabled", "delay"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["tooltipsDisabled"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setTooltipsDisabled"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["delay"]
       10 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["delay"]
        2 JUMPIF                           R1 ; [+9]
        3 DUPTABLE                         R1 K3 [{"open", "close"}]
        4 GETUPVAL                         R3 0
        5 DIVK                             R2 R3 K4 [1000]
        6 SETTABLEKS                       R2 R1 K1 ["open"]
        8 GETUPVAL                         R3 1
        9 DIVK                             R2 R3 K4 [1000]
       10 SETTABLEKS                       R2 R1 K2 ["close"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K5 ["useState"]
       15 GETTABLEKS                       R4 R0 K7 ["initialDisableAllTooltips"]
       17 ORK                              R3 R4 K6 [False]
       18 CALL                             R2 1 2
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R6 0 3
       28 MOVE                             R7 R2
       29 MOVE                             R8 R1
       30 MOVE                             R9 R3
       31 SETLIST                          R6 R7 3 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K9 ["createElement"]
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K10 ["Provider"]
       40 DUPTABLE                         R7 K12 [{"value"}]
       41 SETTABLEKS                       R4 R7 K11 ["value"]
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K9 ["createElement"]
       46 GETUPVAL                         R9 4
       47 DUPTABLE                         R10 K14 [{"timeout"}]
       48 LOADK                            R11 K15 [0.5]
       49 SETTABLEKS                       R11 R10 K13 ["timeout"]
       51 GETTABLEKS                       R11 R0 K16 ["children"]
       53 CALL                             R8 3 -1
       54 CALL                             R5 -1 -1
       55 RETURN                           R5 -1

PROTO_2:
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
       41 GETTABLEKS                       R7 R0 K16 ["Types"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R2 K17 ["createContext"]
       46 LOADNIL                          R8
       47 CALL                             R7 1 1
       48 DUPCLOSURE                       R8 K18 [PROTO_1]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R3
       54 DUPCLOSURE                       R9 K19 [PROTO_2]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R7
       57 DUPTABLE                         R10 K22 [{"Provider", "useTooltipSettings"}]
       58 SETTABLEKS                       R8 R10 K20 ["Provider"]
       60 SETTABLEKS                       R9 R10 K21 ["useTooltipSettings"]
       62 RETURN                           R10 1
