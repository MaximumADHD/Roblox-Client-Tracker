PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R1 K0 [""] ; [+4]
        3 LOADB                            R1 1
        4 LOADNIL                          R2
        5 RETURN                           R1 2
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["positions"]
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R3 0
       11 MOVE                             R4 R0
       12 CALL                             R1 3 2
       13 GETUPVAL                         R3 3
       14 JUMPIFNOTLT                      R3 R2 ; [+4]
       16 LOADB                            R3 1
       17 MOVE                             R4 R1
       18 RETURN                           R3 2
       19 LOADB                            R3 0
       20 LOADNIL                          R4
       21 RETURN                           R3 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFLE                         R2 R1 ; [+2]
        4 LOADB                            R0 0 +1
        5 LOADB                            R0 1
        6 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createConfig"]
        3 DUPTABLE                         R2 K2 [{"caseSensitive"}]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["caseSensitive"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["getScoreFloor"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R4 R0 K4 ["SettingsKey"]
       16 LOADK                            R5 K5 [""]
       17 CALL                             R3 2 2
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 LOADN                            R6 0
       24 LOADN                            R7 0
       25 NEWCLOSURE                       R8 P1
       26 CAPTURE                          REF R6
       27 NEWCLOSURE                       R9 P2
       28 CAPTURE                          REF R6
       29 NEWCLOSURE                       R10 P3
       30 CAPTURE                          REF R7
       31 NEWCLOSURE                       R11 P4
       32 CAPTURE                          REF R6
       33 CAPTURE                          REF R7
       34 GETIMPORT                        R12 K8 [table.freeze]
       36 DUPTABLE                         R13 K16 [{"searchText", "setSearchText", "includeEntry", "getFilteredCount", "incrementFilteredCount", "incrementEntryCount", "getAreAllEntriesHidden"}]
       37 SETTABLEKS                       R3 R13 K9 ["searchText"]
       39 SETTABLEKS                       R4 R13 K10 ["setSearchText"]
       41 SETTABLEKS                       R5 R13 K11 ["includeEntry"]
       43 SETTABLEKS                       R8 R13 K12 ["getFilteredCount"]
       45 SETTABLEKS                       R9 R13 K13 ["incrementFilteredCount"]
       47 SETTABLEKS                       R10 R13 K14 ["incrementEntryCount"]
       49 SETTABLEKS                       R11 R13 K15 ["getAreAllEntriesHidden"]
       51 CALL                             R12 1 -1
       52 CLOSEUPVALS                      R6
       53 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["Fzy"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K10 ["Hooks"]
       29 GETTABLEKS                       R4 R5 K11 ["usePluginSetting"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_5]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 RETURN                           R4 1
