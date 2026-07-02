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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useClock"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["Context"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R2 K3 ["lastPacketTime"]
       13 GETTABLEKS                       R4 R2 K4 ["hasPendingUserInput"]
       15 GETUPVAL                         R5 3
       16 CALL                             R5 0 1
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       20 DUPCLOSURE                       R7 K6 [PROTO_0]
       21 CAPTURE                          UPVAL U4
       22 NEWTABLE                         R8 0 0
       24 CALL                             R6 2 1
       25 GETUPVAL                         R7 5
       26 CALL                             R7 0 1
       27 GETUPVAL                         R8 6
       28 GETUPVAL                         R9 7
       29 DUPTABLE                         R10 K12 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["LayoutOrder"], ["Visible"], ["testId"]}]
       30 GETTABLEKS                       R11 R0 K9 ["LayoutOrder"]
       32 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
       34 NOT                              R11 R4
       35 SETTABLEKS                       R11 R10 K10 ["Visible"]
       37 GETUPVAL                         R11 8
       38 GETTABLEKS                       R11 R11 K13 ["GenerationIndicator"]
       40 SETTABLEKS                       R11 R10 K11 ["testId"]
       42 DUPTABLE                         R11 K16 [{"Ellipsis", "Warning"}]
       43 GETUPVAL                         R12 6
       44 GETUPVAL                         R13 9
       45 DUPTABLE                         R14 K19 [{["tag"] = "size-full-600 text-title-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
       46 DUPCLOSURE                       R17 K20 [PROTO_1]
       47 NAMECALL                         R15 R1 K21 ["map"]
       49 CALL                             R15 2 1
       50 SETTABLEKS                       R15 R14 K18 ["Text"]
       52 MOVE                             R15 R7
       53 CALL                             R15 0 1
       54 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       56 CALL                             R12 2 1
       57 SETTABLEKS                       R12 R11 K14 ["Ellipsis"]
       59 GETUPVAL                         R12 6
       60 GETUPVAL                         R13 9
       61 DUPTABLE                         R14 K23 [{["tag"] = "content-secondary auto-xy text-caption-small text-wrap", ["Text"], ["LayoutOrder"], ["Visible"]}]
       62 GETTABLEKS                       R15 R6 K24 ["TimeWarning"]
       64 SETTABLEKS                       R15 R14 K18 ["Text"]
       66 MOVE                             R15 R7
       67 CALL                             R15 0 1
       68 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       70 NEWCLOSURE                       R17 P2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R5
       73 NAMECALL                         R15 R1 K21 ["map"]
       75 CALL                             R15 2 1
       76 SETTABLEKS                       R15 R14 K10 ["Visible"]
       78 CALL                             R12 2 1
       79 SETTABLEKS                       R12 R11 K15 ["Warning"]
       81 CALL                             R8 3 -1
       82 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["PacketReceivedContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Resources"]
       48 GETTABLEKS                       R7 R7 K16 ["Localization"]
       50 GETTABLEKS                       R7 R7 K17 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K18 ["Flags"]
       57 GETTABLEKS                       R8 R8 K19 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
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
