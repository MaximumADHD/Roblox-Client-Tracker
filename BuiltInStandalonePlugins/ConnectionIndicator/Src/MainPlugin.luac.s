PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Localization"]
        3 JUMPIF                           R0 ; [+13]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["Localization"]
        7 GETTABLEKS                       R0 R0 K1 ["new"]
        9 DUPTABLE                         R1 K6 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "ConnectionIndicator"}]
       10 GETUPVAL                         R2 2
       11 SETTABLEKS                       R2 R1 K2 ["stringResourceTable"]
       13 GETUPVAL                         R2 3
       14 SETTABLEKS                       R2 R1 K3 ["translationResourceTable"]
       16 CALL                             R0 1 1
       17 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Design"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETIMPORT                        R1 K3 [Instance.new]
        7 LOADK                            R2 K4 ["StyleSheet"]
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"Id", "DocsLink"}]
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETTABLEKS                       R3 R0 K0 ["Id"]
        4 ADDK                             R2 R3 K3 [1]
        5 JUMP                             ; [+1]
        6 LOADN                            R2 1
        7 SETTABLEKS                       R2 R1 K0 ["Id"]
        9 GETUPVAL                         R2 0
       10 SETTABLEKS                       R2 R1 K1 ["DocsLink"]
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ConnectionIndicatorStatus"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ConnectionIndicatorDialogRequested"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 0
       11 LOADK                            R3 K2 ["ConnectionIndicatorStatus"]
       12 NAMECALL                         R1 R1 K3 ["GetPropertyChangedSignal"]
       14 CALL                             R1 2 1
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 NAMECALL                         R1 R1 K1 ["Connect"]
       21 CALL                             R1 2 1
       22 NEWCLOSURE                       R2 P2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["TeamCreateService"]
        2 GETUPVAL                         R2 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 NEWTABLE                         R4 0 1
       10 GETTABLEKS                       R5 R0 K1 ["Localization"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 0
       16 DUPCLOSURE                       R4 K2 [PROTO_1]
       17 CAPTURE                          UPVAL U1
       18 NEWTABLE                         R5 0 0
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 4
       22 LOADNIL                          R5
       23 CALL                             R4 1 2
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R7 R1 K3 ["ConnectionIndicatorStatus"]
       27 CALL                             R6 1 2
       28 GETUPVAL                         R8 5
       29 NEWCLOSURE                       R9 P2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R5
       34 NEWTABLE                         R10 0 1
       36 MOVE                             R11 R1
       37 SETLIST                          R10 R11 1 [1]
       39 CALL                             R8 2 0
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K4 ["provide"]
       43 NEWTABLE                         R9 0 3
       45 GETUPVAL                         R10 7
       46 GETTABLEKS                       R10 R10 K5 ["new"]
       48 GETTABLEKS                       R11 R0 K6 ["Plugin"]
       50 CALL                             R10 1 1
       51 MOVE                             R11 R2
       52 MOVE                             R12 R3
       53 SETLIST                          R9 R10 3 [1]
       55 DUPTABLE                         R10 K8 [{"Panel"}]
       56 JUMPIFNOT                        R4 ; [+21]
       57 GETUPVAL                         R11 8
       58 GETTABLEKS                       R11 R11 K9 ["createElement"]
       60 GETUPVAL                         R12 9
       61 DUPTABLE                         R13 K14 [{"RequestId", "Status", "DocsLink", "BrowserService"}]
       62 GETTABLEKS                       R14 R4 K15 ["Id"]
       64 SETTABLEKS                       R14 R13 K10 ["RequestId"]
       66 SETTABLEKS                       R6 R13 K11 ["Status"]
       68 GETTABLEKS                       R14 R4 K12 ["DocsLink"]
       70 SETTABLEKS                       R14 R13 K12 ["DocsLink"]
       72 GETTABLEKS                       R14 R0 K13 ["BrowserService"]
       74 SETTABLEKS                       R14 R13 K13 ["BrowserService"]
       76 CALL                             R11 2 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R11
       79 SETTABLEKS                       R11 R10 K7 ["Panel"]
       81 CALL                             R8 2 -1
       82 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConnectionIndicator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["ConnectionIndicatorPanel"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Util"]
       43 GETTABLEKS                       R6 R6 K14 ["getPopupContent"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K15 ["useEffect"]
       48 GETTABLEKS                       R7 R2 K16 ["useMemo"]
       50 GETTABLEKS                       R8 R2 K17 ["useState"]
       52 GETTABLEKS                       R9 R1 K18 ["ContextServices"]
       54 GETTABLEKS                       R10 R9 K19 ["Plugin"]
       56 GETTABLEKS                       R11 R0 K9 ["Src"]
       58 GETTABLEKS                       R11 R11 K20 ["Resources"]
       60 GETTABLEKS                       R11 R11 K21 ["Localization"]
       62 GETTABLEKS                       R11 R11 K22 ["SourceStrings"]
       64 GETTABLEKS                       R12 R0 K9 ["Src"]
       66 GETTABLEKS                       R12 R12 K20 ["Resources"]
       68 GETTABLEKS                       R12 R12 K21 ["Localization"]
       70 GETTABLEKS                       R12 R12 K23 ["LocalizedStrings"]
       72 DUPCLOSURE                       R13 K24 [PROTO_7]
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R3
       83 RETURN                           R13 1
