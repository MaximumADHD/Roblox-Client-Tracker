PROTO_0:
        0 DUPTABLE                         R0 K1 [{"TimeWarning"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["GenerationIndicator"]
        3 LOADK                            R4 K0 ["TimeWarning"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["TimeWarning"]
        9 RETURN                           R0 1

PROTO_1:
        0 DIVK                             R3 R0 K2 [0.25]
        1 MODK                             R2 R3 K1 [3]
        2 ADDK                             R1 R2 K0 [1]
        3 GETIMPORT                        R2 K5 [string.rep]
        5 LOADK                            R3 K6 [". "]
        6 MOVE                             R4 R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 SUB                              R0 R1 R2
        5 LOADB                            R1 0
        6 GETUPVAL                         R2 0
        7 LOADN                            R3 0
        8 JUMPIFNOTLT                      R3 R2 ; [+6]
       10 GETUPVAL                         R2 1
       11 JUMPIFLE                         R2 R0 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useClock"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useContext"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["Context"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R2 K3 ["lastPacketTime"]
       13 GETTABLEKS                       R4 R2 K4 ["hasPendingUserInput"]
       15 GETUPVAL                         R5 3
       16 CALL                             R5 0 1
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K5 ["useMemo"]
       20 DUPCLOSURE                       R7 K6 [PROTO_0]
       21 CAPTURE                          UPVAL U4
       22 NEWTABLE                         R8 0 0
       24 CALL                             R6 2 1
       25 GETUPVAL                         R7 5
       26 CALL                             R7 0 1
       27 GETUPVAL                         R8 6
       28 GETUPVAL                         R9 7
       29 DUPTABLE                         R10 K11 [{"tag", "LayoutOrder", "Visible", "testId"}]
       30 LOADK                            R11 K12 ["col size-full-0 auto-y gap-xsmall"]
       31 SETTABLEKS                       R11 R10 K7 ["tag"]
       33 GETTABLEKS                       R11 R0 K8 ["LayoutOrder"]
       35 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       37 NOT                              R11 R4
       38 SETTABLEKS                       R11 R10 K9 ["Visible"]
       40 GETUPVAL                         R12 8
       41 GETTABLEKS                       R11 R12 K13 ["GenerationIndicator"]
       43 SETTABLEKS                       R11 R10 K10 ["testId"]
       45 DUPTABLE                         R11 K16 [{"Ellipsis", "Warning"}]
       46 GETUPVAL                         R12 6
       47 GETUPVAL                         R13 9
       48 DUPTABLE                         R14 K18 [{"tag", "Text", "LayoutOrder"}]
       49 LOADK                            R15 K19 ["size-full-600 text-title-small content-emphasis text-align-x-left text-wrap"]
       50 SETTABLEKS                       R15 R14 K7 ["tag"]
       52 DUPCLOSURE                       R17 K20 [PROTO_1]
       53 NAMECALL                         R15 R1 K21 ["map"]
       55 CALL                             R15 2 1
       56 SETTABLEKS                       R15 R14 K17 ["Text"]
       58 MOVE                             R15 R7
       59 CALL                             R15 0 1
       60 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       62 CALL                             R12 2 1
       63 SETTABLEKS                       R12 R11 K14 ["Ellipsis"]
       65 GETUPVAL                         R12 6
       66 GETUPVAL                         R13 9
       67 DUPTABLE                         R14 K22 [{"tag", "Text", "LayoutOrder", "Visible"}]
       68 LOADK                            R15 K23 ["auto-xy text-caption-small content-secondary text-wrap"]
       69 SETTABLEKS                       R15 R14 K7 ["tag"]
       71 GETTABLEKS                       R15 R6 K24 ["TimeWarning"]
       73 SETTABLEKS                       R15 R14 K17 ["Text"]
       75 MOVE                             R15 R7
       76 CALL                             R15 0 1
       77 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       79 NEWCLOSURE                       R17 P2
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R5
       82 NAMECALL                         R15 R1 K21 ["map"]
       84 CALL                             R15 2 1
       85 SETTABLEKS                       R15 R14 K9 ["Visible"]
       87 CALL                             R12 2 1
       88 SETTABLEKS                       R12 R11 K15 ["Warning"]
       90 CALL                             R8 3 -1
       91 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["PacketReceivedContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R6 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R7 K14 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K15 ["Resources"]
       48 GETTABLEKS                       R8 R9 K16 ["Localization"]
       50 GETTABLEKS                       R7 R8 K17 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K18 ["Flags"]
       57 GETTABLEKS                       R8 R9 K19 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R1 K20 ["Text"]
       62 GETTABLEKS                       R9 R1 K21 ["View"]
       64 GETTABLEKS                       R10 R4 K22 ["createNextOrder"]
       66 GETTABLEKS                       R11 R3 K23 ["createElement"]
       68 DUPCLOSURE                       R12 K24 [PROTO_3]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R8
       79 GETTABLEKS                       R13 R3 K25 ["memo"]
       81 MOVE                             R14 R12
       82 CALL                             R13 1 -1
       83 RETURN                           R13 -1
