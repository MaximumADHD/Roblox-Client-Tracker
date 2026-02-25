PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_updateEnabledModeDurations"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["_updateEnabledModeDurations"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["new"]
       11 CALL                             R3 0 1
       12 SETTABLEKS                       R3 R2 K3 ["_maid"]
       14 SETTABLEKS                       R0 R2 K4 ["_visualizationModeCombiner"]
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K5 ["_startTimeLookup"]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K6 ["_previousState"]
       23 SETTABLEKS                       R1 R2 K7 ["_analytics"]
       25 GETTABLEKS                       R3 R2 K3 ["_maid"]
       27 GETTABLEKS                       R6 R2 K4 ["_visualizationModeCombiner"]
       29 GETTABLEKS                       R5 R6 K8 ["changed"]
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R2
       33 NAMECALL                         R5 R5 K9 ["Connect"]
       35 CALL                             R5 2 -1
       36 NAMECALL                         R3 R3 K10 ["giveTask"]
       38 CALL                             R3 -1 0
       39 GETTABLEKS                       R5 R2 K4 ["_visualizationModeCombiner"]
       41 NAMECALL                         R5 R5 K11 ["getState"]
       43 CALL                             R5 1 -1
       44 NAMECALL                         R3 R2 K12 ["_updateEnabledModeDurations"]
       46 CALL                             R3 -1 0
       47 GETTABLEKS                       R3 R2 K3 ["_maid"]
       49 NEWCLOSURE                       R5 P1
       50 CAPTURE                          VAL R2
       51 NAMECALL                         R3 R3 K10 ["giveTask"]
       53 CALL                             R3 2 0
       54 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["_analytics"]
        2 LOADK                            R6 K1 ["visualizationModeEnabledDuration"]
        3 DUPTABLE                         R7 K5 [{"visualizationModeCategory", "visualizationMode", "durationSeconds"}]
        4 SETTABLEKS                       R1 R7 K2 ["visualizationModeCategory"]
        6 SETTABLEKS                       R2 R7 K3 ["visualizationMode"]
        8 SETTABLEKS                       R3 R7 K4 ["durationSeconds"]
       10 NAMECALL                         R4 R4 K6 ["report"]
       12 CALL                             R4 3 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K2 [os.clock]
        2 CALL                             R2 0 1
        3 NEWTABLE                         R3 0 0
        5 JUMPIFEQKNIL                     R1 ; [+36]
        7 GETTABLEKS                       R4 R1 K3 ["categories"]
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLEKS                       R10 R8 K4 ["name"]
       14 GETTABLE                         R9 R3 R10
       15 JUMPIFNOTEQKNIL                  R9 ; [+6]
       17 GETTABLEKS                       R9 R8 K4 ["name"]
       19 NEWTABLE                         R10 0 0
       21 SETTABLE                         R10 R3 R9
       22 GETIMPORT                        R9 K6 [pairs]
       24 GETTABLEKS                       R10 R8 K7 ["visualizationModeList"]
       26 CALL                             R9 1 3
       27 FORGPREP_NEXT                    R9
       28 GETTABLEKS                       R14 R13 K8 ["enabled"]
       30 JUMPIFNOT                        R14 ; [+7]
       31 GETTABLEKS                       R15 R8 K4 ["name"]
       33 GETTABLE                         R14 R3 R15
       34 GETTABLEKS                       R15 R13 K4 ["name"]
       36 LOADB                            R16 1
       37 SETTABLE                         R16 R14 R15
       38 FORGLOOP                         R9 2 ; [-11]
       40 FORGLOOP                         R4 2 ; [-29]
       42 GETTABLEKS                       R4 R0 K9 ["_startTimeLookup"]
       44 LOADNIL                          R5
       45 LOADNIL                          R6
       46 FORGPREP                         R4
       47 MOVE                             R9 R8
       48 LOADNIL                          R10
       49 LOADNIL                          R11
       50 FORGPREP                         R9
       51 GETTABLE                         R14 R3 R7
       52 JUMPIFEQKNIL                     R14 ; [+5]
       54 GETTABLE                         R15 R3 R7
       55 GETTABLE                         R14 R15 R12
       56 JUMPIFNOTEQKNIL                  R14 ; [+8]
       58 SUB                              R14 R2 R13
       59 MOVE                             R17 R7
       60 MOVE                             R18 R12
       61 MOVE                             R19 R14
       62 NAMECALL                         R15 R0 K10 ["_reportDuration"]
       64 CALL                             R15 4 0
       65 FORGLOOP                         R9 2 ; [-15]
       67 FORGLOOP                         R4 2 ; [-21]
       69 NEWTABLE                         R4 0 0
       71 MOVE                             R5 R3
       72 LOADNIL                          R6
       73 LOADNIL                          R7
       74 FORGPREP                         R5
       75 GETTABLEKS                       R11 R0 K9 ["_startTimeLookup"]
       77 GETTABLE                         R10 R11 R8
       78 JUMPIF                           R10 ; [+2]
       79 NEWTABLE                         R10 0 0
       81 NEWTABLE                         R11 0 0
       83 MOVE                             R12 R9
       84 LOADNIL                          R13
       85 LOADNIL                          R14
       86 FORGPREP                         R12
       87 GETTABLE                         R17 R10 R15
       88 OR                               R18 R17 R2
       89 SETTABLE                         R18 R11 R15
       90 FORGLOOP                         R12 2 ; [-4]
       92 GETIMPORT                        R12 K13 [table.freeze]
       94 MOVE                             R13 R11
       95 CALL                             R12 1 1
       96 SETTABLE                         R12 R4 R8
       97 FORGLOOP                         R5 2 ; [-23]
       99 GETIMPORT                        R5 K13 [table.freeze]
      101 MOVE                             R6 R4
      102 CALL                             R5 1 1
      103 SETTABLEKS                       R5 R0 K9 ["_startTimeLookup"]
      105 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Maid"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K10 ["Model"]
       29 GETTABLEKS                       R4 R5 K11 ["VisualizationModeCombiner"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 8 0
       34 SETTABLEKS                       R4 R4 K12 ["__index"]
       36 DUPCLOSURE                       R5 K13 [PROTO_2]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R5 R4 K14 ["new"]
       41 DUPCLOSURE                       R5 K15 [PROTO_3]
       42 SETTABLEKS                       R5 R4 K16 ["_reportDuration"]
       44 DUPCLOSURE                       R5 K17 [PROTO_4]
       45 SETTABLEKS                       R5 R4 K18 ["_updateEnabledModeDurations"]
       47 DUPCLOSURE                       R5 K19 [PROTO_5]
       48 SETTABLEKS                       R5 R4 K20 ["destroy"]
       50 RETURN                           R4 1
