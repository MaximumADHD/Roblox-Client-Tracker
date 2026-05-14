PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K3 ["IsRunning"]
       10 CALL                             R0 1 1
       11 JUMPIFNOT                        R0 ; [+11]
       12 GETIMPORT                        R0 K1 [plugin]
       14 GETTABLEKS                       R0 R0 K4 ["HostDataModelTypeIsCurrent"]
       16 JUMPIFNOT                        R0 ; [+6]
       17 GETUPVAL                         R0 3
       18 GETIMPORT                        R1 K1 [plugin]
       20 CALL                             R0 1 1
       21 SETUPVAL                         R0 2
       22 RETURN                           R0 0
       23 GETUPVAL                         R0 1
       24 NAMECALL                         R0 R0 K5 ["IsEdit"]
       26 CALL                             R0 1 1
       27 JUMPIFNOT                        R0 ; [+24]
       28 GETUPVAL                         R0 4
       29 GETTABLEKS                       R0 R0 K6 ["createElement"]
       31 GETUPVAL                         R1 5
       32 DUPTABLE                         R2 K8 [{"Plugin"}]
       33 GETIMPORT                        R3 K1 [plugin]
       35 SETTABLEKS                       R3 R2 K7 ["Plugin"]
       37 CALL                             R0 2 1
       38 GETUPVAL                         R1 6
       39 GETTABLEKS                       R1 R1 K9 ["createRoot"]
       41 GETIMPORT                        R2 K12 [Instance.new]
       43 LOADK                            R3 K13 ["Frame"]
       44 CALL                             R2 1 -1
       45 CALL                             R1 -1 1
       46 SETUPVAL                         R1 2
       47 GETUPVAL                         R1 2
       48 MOVE                             R3 R0
       49 NAMECALL                         R1 R1 K14 ["render"]
       51 CALL                             R1 2 0
       52 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 GETIMPORT                        R0 K2 [game]
       11 LOADK                            R2 K3 ["StudioWidgetsService"]
       12 NAMECALL                         R0 R0 K4 ["GetService"]
       14 CALL                             R0 2 1
       15 NAMECALL                         R1 R0 K5 ["HideSpotlight"]
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K7 [plugin]
       20 LOADK                            R3 K8 ["Spotlight"]
       21 NAMECALL                         R1 R1 K9 ["GetPluginComponent"]
       23 CALL                             R1 2 1
       24 NAMECALL                         R2 R1 K10 ["HideSpotlightAsync"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R0 R0 K4 ["Parent"]
       11 GETTABLEKS                       R0 R0 K4 ["Parent"]
       13 GETIMPORT                        R1 K3 [script]
       15 GETTABLEKS                       R1 R1 K4 ["Parent"]
       17 GETTABLEKS                       R1 R1 K4 ["Parent"]
       19 GETTABLEKS                       R1 R1 K5 ["Common"]
       21 GETIMPORT                        R2 K7 [require]
       23 GETTABLEKS                       R3 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Flags"]
       27 GETTABLEKS                       R3 R3 K10 ["getFFlagEnableRibbonTour"]
       29 CALL                             R2 1 1
       30 CALL                             R2 0 1
       31 GETIMPORT                        R3 K7 [require]
       33 GETTABLEKS                       R4 R1 K11 ["defineLuaFlags"]
       35 CALL                             R3 1 0
       36 GETIMPORT                        R3 K7 [require]
       38 GETTABLEKS                       R4 R0 K12 ["Packages"]
       40 GETTABLEKS                       R4 R4 K13 ["TestLoader"]
       42 CALL                             R3 1 1
       43 GETTABLEKS                       R4 R3 K14 ["launch"]
       45 LOADK                            R5 K15 ["Tutorials"]
       46 GETTABLEKS                       R6 R0 K8 ["Src"]
       48 CALL                             R4 2 0
       49 GETTABLEKS                       R4 R3 K16 ["isCli"]
       51 CALL                             R4 0 1
       52 JUMPIFNOT                        R4 ; [+1]
       53 RETURN                           R0 0
       54 GETIMPORT                        R4 K18 [game]
       56 LOADK                            R6 K19 ["TutorialService"]
       57 NAMECALL                         R4 R4 K20 ["GetService"]
       59 CALL                             R4 2 1
       60 LOADNIL                          R5
       61 JUMPIFNOT                        R2 ; [+22]
       62 GETIMPORT                        R6 K1 [plugin]
       64 LOADK                            R8 K21 ["ShowRibbonWalkthrough"]
       65 NAMECALL                         R6 R6 K22 ["GetSetting"]
       67 CALL                             R6 2 1
       68 JUMPIFNOTEQKNIL                  R6 ; [+10]
       70 LOADB                            R5 1
       71 GETIMPORT                        R7 K1 [plugin]
       73 LOADK                            R9 K21 ["ShowRibbonWalkthrough"]
       74 LOADB                            R10 1
       75 NAMECALL                         R7 R7 K23 ["SetSetting"]
       77 CALL                             R7 3 0
       78 JUMP                             ; [+9]
       79 NAMECALL                         R7 R4 K24 ["ShouldLaunchTutorial"]
       81 CALL                             R7 1 1
       82 MOVE                             R5 R7
       83 JUMP                             ; [+4]
       84 NAMECALL                         R6 R4 K24 ["ShouldLaunchTutorial"]
       86 CALL                             R6 1 1
       87 MOVE                             R5 R6
       88 JUMPIF                           R5 ; [+1]
       89 RETURN                           R0 0
       90 GETIMPORT                        R6 K18 [game]
       92 LOADK                            R8 K25 ["RunService"]
       93 NAMECALL                         R6 R6 K20 ["GetService"]
       95 CALL                             R6 2 1
       96 LOADNIL                          R7
       97 GETIMPORT                        R8 K7 [require]
       99 GETTABLEKS                       R9 R0 K12 ["Packages"]
      101 GETTABLEKS                       R9 R9 K26 ["React"]
      103 CALL                             R8 1 1
      104 GETIMPORT                        R9 K7 [require]
      106 GETTABLEKS                       R10 R0 K12 ["Packages"]
      108 GETTABLEKS                       R10 R10 K27 ["ReactRoblox"]
      110 CALL                             R9 1 1
      111 GETIMPORT                        R10 K7 [require]
      113 GETTABLEKS                       R11 R0 K8 ["Src"]
      115 GETTABLEKS                       R11 R11 K28 ["Util"]
      117 GETTABLEKS                       R11 R11 K29 ["setupPlay"]
      119 CALL                             R10 1 1
      120 GETIMPORT                        R11 K7 [require]
      122 GETTABLEKS                       R12 R0 K8 ["Src"]
      124 GETTABLEKS                       R12 R12 K30 ["Components"]
      126 GETTABLEKS                       R12 R12 K31 ["AssetRoot"]
      128 CALL                             R11 1 1
      129 NEWCLOSURE                       R12 P0
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R6
      132 CAPTURE                          REF R7
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R9
      137 MOVE                             R13 R12
      138 CALL                             R13 0 0
      139 GETIMPORT                        R13 K1 [plugin]
      141 GETTABLEKS                       R13 R13 K32 ["Unloading"]
      143 NEWCLOSURE                       R15 P1
      144 CAPTURE                          REF R7
      145 NAMECALL                         R13 R13 K33 ["Connect"]
      147 CALL                             R13 2 0
      148 CLOSEUPVALS                      R7
      149 RETURN                           R0 0
