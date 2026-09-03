PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 LOADK                            R0 K0 ["en-us"]
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"getLocale", "overrideLocaleChangedSignal"}]
        2 DUPCLOSURE                       R2 K3 [PROTO_1]
        3 SETTABLEKS                       R2 R1 K0 ["getLocale"]
        5 GETUPVAL                         R2 1
        6 SETTABLEKS                       R2 R1 K1 ["overrideLocaleChangedSignal"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R4 0 1
       16 MOVE                             R5 R1
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K2 ["useEffect"]
       23 NEWCLOSURE                       R4 P2
       24 CAPTURE                          VAL R2
       25 NEWTABLE                         R5 0 1
       27 MOVE                             R6 R2
       28 SETLIST                          R5 R6 1 [1]
       30 CALL                             R3 2 0
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K3 ["createElement"]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K4 ["Provider"]
       37 DUPTABLE                         R5 K6 [{"localization"}]
       38 SETTABLEKS                       R2 R5 K5 ["localization"]
       40 GETTABLEKS                       R6 R0 K7 ["children"]
       42 CALL                             R3 3 -1
       43 RETURN                           R3 -1

PROTO_6:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected children to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["createElement"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K7 ["FoundationProvider"]
       21 DUPTABLE                         R3 K12 [{["theme"] = "Dark", ["device"] = "Desktop"}]
       22 DUPTABLE                         R4 K14 [{"LocalizationProvider"}]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K6 ["createElement"]
       26 GETUPVAL                         R6 2
       27 LOADNIL                          R7
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R8 R8 K15 ["TestHelpers"]
       31 GETTABLEKS                       R8 R8 K16 ["mockContext"]
       33 MOVE                             R9 R0
       34 CALL                             R8 1 -1
       35 CALL                             R5 -1 1
       36 SETTABLEKS                       R5 R4 K13 ["LocalizationProvider"]
       38 CALL                             R1 3 -1
       39 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["MaterialFramework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Resources"]
       46 GETTABLEKS                       R7 R7 K13 ["Localization"]
       48 GETTABLEKS                       R7 R7 K14 ["createLocalization"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R5 K15 ["Contexts"]
       53 GETTABLEKS                       R7 R7 K13 ["Localization"]
       55 GETTABLEKS                       R8 R2 K16 ["Util"]
       57 GETTABLEKS                       R8 R8 K17 ["Signal"]
       59 DUPCLOSURE                       R9 K18 [PROTO_5]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R7
       64 DUPCLOSURE                       R10 K19 [PROTO_6]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R3
       69 RETURN                           R10 1
