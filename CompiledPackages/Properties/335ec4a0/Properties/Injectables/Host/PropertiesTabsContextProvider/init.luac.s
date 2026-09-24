PROTO_0:
        0 DUPTABLE                         R0 K3 [{"General", "AttributesAndTags", "All"}]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R1 R1 K4 ["categorizeProperties"]
        5 SETTABLEKS                       R1 R0 K0 ["General"]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 GETTABLEKS                       R1 R1 K4 ["categorizeProperties"]
       11 SETTABLEKS                       R1 R0 K1 ["AttributesAndTags"]
       13 GETUPVAL                         R1 2
       14 CALL                             R1 0 1
       15 GETTABLEKS                       R1 R1 K4 ["categorizeProperties"]
       17 SETTABLEKS                       R1 R0 K2 ["All"]
       19 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K4 [{[1] = "General", ["text"], ["categorizeProperties"]}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["Tabs"]
        3 LOADK                            R4 K1 ["General"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K2 ["text"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["General"]
       12 SETTABLEKS                       R1 R0 K3 ["categorizeProperties"]
       14 DUPTABLE                         R1 K8 [{[1] = "AttributesAndTags", ["text"], ["categorizeProperties"]}]
       15 GETUPVAL                         R2 0
       16 LOADK                            R4 K5 ["Tabs"]
       17 LOADK                            R5 K7 ["AttributesAndTags"]
       18 NAMECALL                         R2 R2 K6 ["getText"]
       20 CALL                             R2 3 1
       21 SETTABLEKS                       R2 R1 K2 ["text"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K7 ["AttributesAndTags"]
       26 SETTABLEKS                       R2 R1 K3 ["categorizeProperties"]
       28 DUPTABLE                         R2 K10 [{[1] = "All", ["text"], ["categorizeProperties"]}]
       29 GETUPVAL                         R3 0
       30 LOADK                            R5 K5 ["Tabs"]
       31 LOADK                            R6 K9 ["All"]
       32 NAMECALL                         R3 R3 K6 ["getText"]
       34 CALL                             R3 3 1
       35 SETTABLEKS                       R3 R2 K2 ["text"]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R3 R4 K9 ["All"]
       40 SETTABLEKS                       R3 R2 K3 ["categorizeProperties"]
       42 NEWTABLE                         R3 0 3
       44 MOVE                             R4 R0
       45 MOVE                             R5 R1
       46 MOVE                             R6 R2
       47 SETLIST                          R3 R4 3 [1]
       49 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NEWTABLE                         R3 0 0
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R4 0 2
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R5 R5 K2 ["locale"]
       21 MOVE                             R6 R1
       22 SETLIST                          R4 R5 2 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 5
       26 GETUPVAL                         R4 6
       27 GETTABLEKS                       R4 R4 K3 ["Provider"]
       29 DUPTABLE                         R5 K5 [{"tabs"}]
       30 SETTABLEKS                       R2 R5 K4 ["tabs"]
       32 GETTABLEKS                       R6 R0 K6 ["children"]
       34 CALL                             R3 3 -1
       35 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["PropertyTypes"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       25 GETTABLEKS                       R5 R5 K11 ["TabsContext"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Resources"]
       32 GETTABLEKS                       R6 R6 K13 ["Localization"]
       34 GETTABLEKS                       R6 R6 K14 ["Translator"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R7 R7 K15 ["createAllFilter"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K16 ["createAttributesAndTagsFilter"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETIMPORT                        R9 K1 [script]
       55 GETTABLEKS                       R9 R9 K17 ["createGeneralFilter"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R3 K18 ["createElement"]
       60 DUPCLOSURE                       R10 K19 [PROTO_2]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R4
       68 RETURN                           R10 1
