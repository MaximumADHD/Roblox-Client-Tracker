PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R1 R0 K4 ["StudioLocaleId"]
        8 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+1]
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["SystemLocaleId"]
        9 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["FindService"]
        5 CALL                             R0 2 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+14]
        8 GETUPVAL                         R1 0
        9 LOADK                            R3 K4 ["StudioLocaleId"]
       10 NAMECALL                         R1 R1 K5 ["GetPropertyChangedSignal"]
       12 CALL                             R1 2 1
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U1
       15 NAMECALL                         R1 R1 K6 ["Connect"]
       17 CALL                             R1 2 1
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
       21 LOADK                            R3 K4 ["StudioLocaleId"]
       22 NAMECALL                         R1 R0 K5 ["GetPropertyChangedSignal"]
       24 CALL                             R1 2 1
       25 NEWCLOSURE                       R3 P2
       26 CAPTURE                          UPVAL U1
       27 NAMECALL                         R1 R1 K6 ["Connect"]
       29 CALL                             R1 2 1
       30 NEWCLOSURE                       R2 P3
       31 CAPTURE                          VAL R1
       32 RETURN                           R2 1

PROTO_7:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["useState"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K2 ["new"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["useEffect"]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R4 0 0
       17 CALL                             R2 2 0
       18 RETURN                           R0 2

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K2 ["new"]
        7 DUPTABLE                         R1 K9 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "ExplorerLibrary", ["getLocale"], ["overrideLocaleChangedSignal"]}]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K10 ["Resources"]
       11 GETTABLEKS                       R2 R2 K1 ["Localization"]
       13 GETTABLEKS                       R2 R2 K11 ["SourceStrings"]
       15 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K10 ["Resources"]
       20 GETTABLEKS                       R2 R2 K1 ["Localization"]
       22 GETTABLEKS                       R2 R2 K12 ["LocalizedStrings"]
       24 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       26 GETUPVAL                         R2 2
       27 SETTABLEKS                       R2 R1 K7 ["getLocale"]
       29 GETUPVAL                         R2 3
       30 SETTABLEKS                       R2 R1 K8 ["overrideLocaleChangedSignal"]
       32 CALL                             R0 1 -1
       33 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["useState"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K1 ["ContextServices"]
       14 GETTABLEKS                       R4 R4 K2 ["provide"]
       16 NEWTABLE                         R5 0 1
       18 MOVE                             R6 R3
       19 SETLIST                          R5 R6 1 [1]
       21 GETTABLEKS                       R6 R0 K3 ["children"]
       23 CALL                             R4 2 -1
       24 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LocalizationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Parent"]
       31 GETTABLEKS                       R5 R5 K13 ["Signal"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K14 [PROTO_7]
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 DUPCLOSURE                       R6 K15 [PROTO_9]
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 RETURN                           R6 1
