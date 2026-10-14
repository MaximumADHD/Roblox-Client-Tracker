PROTO_0:
        0 LOADB                            R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["Instance"] ; [+5]
        8 LOADK                            R4 K3 ["StyleSheet"]
        9 NAMECALL                         R2 R0 K4 ["IsA"]
       11 CALL                             R2 2 1
       12 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       14 LOADK                            R3 K5 ["Design.new: Expected a StyleSheet as the target."]
       15 GETIMPORT                        R1 K7 [assert]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_themeChangedSignal"]
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["ThemeChanged"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R0 R0 K4 ["Connect"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_3:
        0 LOADB                            R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["Instance"] ; [+5]
        8 LOADK                            R4 K3 ["StyleSheet"]
        9 NAMECALL                         R2 R0 K4 ["IsA"]
       11 CALL                             R2 2 1
       12 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       14 LOADK                            R3 K5 ["Design.new: Expected a StyleSheet as the target."]
       15 GETIMPORT                        R1 K7 [assert]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 0
       19 JUMPIFNOT                        R1 ; [+7]
       20 GETTABLEKS                       R1 R0 K8 ["Parent"]
       22 JUMPIFNOTEQKNIL                  R1 ; [+4]
       24 GETUPVAL                         R1 1
       25 SETTABLEKS                       R1 R0 K8 ["Parent"]
       27 DUPTABLE                         R2 K10 [{"_obj"}]
       28 SETTABLEKS                       R0 R2 K9 ["_obj"]
       30 GETUPVAL                         R3 2
       31 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       33 GETIMPORT                        R1 K12 [setmetatable]
       35 CALL                             R1 2 1
       36 GETUPVAL                         R2 3
       37 GETTABLEKS                       R2 R2 K13 ["new"]
       39 CALL                             R2 0 1
       40 SETTABLEKS                       R2 R1 K14 ["_themeChangedSignal"]
       42 GETIMPORT                        R2 K16 [pcall]
       44 NEWCLOSURE                       R3 P0
       45 CAPTURE                          VAL R1
       46 CALL                             R2 1 2
       47 JUMPIFNOT                        R2 ; [+2]
       48 MOVE                             R4 R3
       49 JUMP                             ; [+1]
       50 LOADNIL                          R4
       51 SETTABLEKS                       R4 R1 K17 ["_themeChangedConnection"]
       53 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_obj"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_themeChangedSignal"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_themeChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_themeChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_themeChangedConnection"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["_obj"]
       14 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 RETURN                           R0 1

PROTO_9:
        0 GETIMPORT                        R1 K1 [pcall]
        2 DUPCLOSURE                       R2 K2 [PROTO_8]
        3 CALL                             R1 1 2
        4 JUMPIFNOT                        R1 ; [+5]
        5 MOVE                             R5 R0
        6 NAMECALL                         R3 R2 K3 ["GetColor"]
        8 CALL                             R3 2 1
        9 RETURN                           R3 1
       10 LOADNIL                          R3
       11 RETURN                           R3 1

PROTO_10:
        0 GETIMPORT                        R0 K2 [Color3.fromRGB]
        2 LOADN                            R1 0
        3 LOADN                            R2 0
        4 LOADN                            R3 0
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPCLOSURE                       R2 K1 [PROTO_10]
        6 SETTABLEKS                       R2 R1 K2 ["getStudioThemeColor"]
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["Signal"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R1 K6 ["UI"]
       26 GETTABLEKS                       R4 R4 K13 ["ContextServices"]
       28 GETTABLEKS                       R4 R4 K14 ["ContextItem"]
       30 CALL                             R3 1 1
       31 LOADK                            R6 K15 ["Design"]
       32 NAMECALL                         R4 R3 K16 ["extend"]
       34 CALL                             R4 2 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R1 K17 ["SharedFlags"]
       39 GETTABLEKS                       R6 R6 K18 ["getFFlagDevFrameworkParentStylesToDm"]
       41 CALL                             R5 1 1
       42 CALL                             R5 0 1
       43 DUPCLOSURE                       R6 K19 [PROTO_0]
       44 DUPCLOSURE                       R7 K20 [PROTO_3]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R7 R4 K21 ["new"]
       51 DUPCLOSURE                       R7 K22 [PROTO_4]
       52 SETTABLEKS                       R7 R4 K23 ["get"]
       54 DUPCLOSURE                       R7 K24 [PROTO_5]
       55 SETTABLEKS                       R7 R4 K25 ["getSignal"]
       57 DUPCLOSURE                       R7 K26 [PROTO_6]
       58 SETTABLEKS                       R7 R4 K27 ["getConsumerItem"]
       60 DUPCLOSURE                       R7 K28 [PROTO_7]
       61 SETTABLEKS                       R7 R4 K29 ["destroy"]
       63 DUPCLOSURE                       R7 K30 [PROTO_9]
       64 SETTABLEKS                       R7 R4 K31 ["getStudioThemeColor"]
       66 DUPCLOSURE                       R7 K32 [PROTO_11]
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R7 R4 K33 ["mock"]
       70 RETURN                           R4 1
