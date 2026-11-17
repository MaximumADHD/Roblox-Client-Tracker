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
       16 GETTABLEKS                       R5 R5 K5 ["FIntMCPAssistantGenerationIndicatorWarningTime"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       21 DUPCLOSURE                       R7 K7 [PROTO_0]
       22 CAPTURE                          UPVAL U4
       23 NEWTABLE                         R8 0 0
       25 CALL                             R6 2 1
       26 GETUPVAL                         R7 5
       27 CALL                             R7 0 1
       28 GETUPVAL                         R8 6
       29 GETUPVAL                         R9 7
       30 DUPTABLE                         R10 K13 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["LayoutOrder"], ["Visible"], ["testId"]}]
       31 GETTABLEKS                       R11 R0 K10 ["LayoutOrder"]
       33 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       35 NOT                              R11 R4
       36 SETTABLEKS                       R11 R10 K11 ["Visible"]
       38 GETUPVAL                         R11 8
       39 GETTABLEKS                       R11 R11 K14 ["GenerationIndicator"]
       41 SETTABLEKS                       R11 R10 K12 ["testId"]
       43 DUPTABLE                         R11 K17 [{"Ellipsis", "Warning"}]
       44 GETUPVAL                         R12 6
       45 GETUPVAL                         R13 9
       46 DUPTABLE                         R14 K20 [{["tag"] = "size-full-600 text-title-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
       47 DUPCLOSURE                       R17 K21 [PROTO_1]
       48 NAMECALL                         R15 R1 K22 ["map"]
       50 CALL                             R15 2 1
       51 SETTABLEKS                       R15 R14 K19 ["Text"]
       53 MOVE                             R15 R7
       54 CALL                             R15 0 1
       55 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
       57 CALL                             R12 2 1
       58 SETTABLEKS                       R12 R11 K15 ["Ellipsis"]
       60 GETUPVAL                         R12 6
       61 GETUPVAL                         R13 9
       62 DUPTABLE                         R14 K24 [{["tag"] = "auto-xy text-caption-small text-wrap", ["Text"], ["LayoutOrder"], ["Visible"]}]
       63 GETTABLEKS                       R15 R6 K25 ["TimeWarning"]
       65 SETTABLEKS                       R15 R14 K19 ["Text"]
       67 MOVE                             R15 R7
       68 CALL                             R15 0 1
       69 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
       71 NEWCLOSURE                       R17 P2
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R5
       74 NAMECALL                         R15 R1 K22 ["map"]
       76 CALL                             R15 2 1
       77 SETTABLEKS                       R15 R14 K11 ["Visible"]
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K16 ["Warning"]
       82 CALL                             R8 3 -1
       83 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K11 ["PacketReceivedContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K7 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K7 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["TestIds"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Resources"]
       53 GETTABLEKS                       R8 R8 K17 ["Localization"]
       55 GETTABLEKS                       R8 R8 K18 ["Translator"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R2 K19 ["Text"]
       60 GETTABLEKS                       R9 R2 K20 ["View"]
       62 GETTABLEKS                       R10 R5 K21 ["createNextOrder"]
       64 GETTABLEKS                       R11 R4 K22 ["createElement"]
       66 DUPCLOSURE                       R12 K23 [PROTO_3]
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R8
       77 GETTABLEKS                       R13 R4 K24 ["memo"]
       79 MOVE                             R14 R12
       80 CALL                             R13 1 -1
       81 RETURN                           R13 -1
