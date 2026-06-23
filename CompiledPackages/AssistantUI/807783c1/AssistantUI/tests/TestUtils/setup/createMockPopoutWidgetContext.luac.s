PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R0 K1 ["onVisibilityChanged"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R6 0 0
       12 CALL                             R3 3 0
       13 JUMPIF                           R1 ; [+2]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K2 ["createPortal"]
       19 GETUPVAL                         R4 3
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R5 R5 K3 ["mockComponent"]
       23 GETTABLEKS                       R6 R0 K4 ["contents"]
       25 CALL                             R4 2 1
       26 GETIMPORT                        R5 K6 [game]
       28 LOADK                            R7 K7 ["CoreGui"]
       29 NAMECALL                         R5 R5 K8 ["GetService"]
       31 CALL                             R5 2 -1
       32 CALL                             R3 -1 -1
       33 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_2]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 DUPTABLE                         R2 K7 [{"root", "show", "hide", "resize", "moveTo"}]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R4 3
       11 DUPTABLE                         R5 K10 [{"onVisibilityChanged", "contents"}]
       12 SETTABLEKS                       R1 R5 K8 ["onVisibilityChanged"]
       14 GETTABLEKS                       R6 R0 K11 ["Contents"]
       16 SETTABLEKS                       R6 R5 K9 ["contents"]
       18 CALL                             R3 2 1
       19 SETTABLEKS                       R3 R2 K2 ["root"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K3 ["show"]
       25 NEWCLOSURE                       R3 P2
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R3 R2 K4 ["hide"]
       29 DUPCLOSURE                       R3 K12 [PROTO_5]
       30 SETTABLEKS                       R3 R2 K5 ["resize"]
       32 DUPCLOSURE                       R3 K13 [PROTO_6]
       33 SETTABLEKS                       R3 R2 K6 ["moveTo"]
       35 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_8]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 LOADK                            R3 K2 ["ScreenGui"]
       10 DUPTABLE                         R4 K4 [{"ZIndexBehavior"}]
       11 GETIMPORT                        R5 K7 [Enum.ZIndexBehavior.Sibling]
       13 SETTABLEKS                       R5 R4 K3 ["ZIndexBehavior"]
       15 DUPTABLE                         R5 K9 [{"MainContent"}]
       16 GETUPVAL                         R6 2
       17 LOADK                            R7 K10 ["Frame"]
       18 DUPTABLE                         R8 K16 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "ClipsDescendants"}]
       19 GETIMPORT                        R9 K19 [UDim2.fromOffset]
       21 GETTABLEKS                       R10 R0 K11 ["Size"]
       23 GETTABLEKS                       R10 R10 K20 ["X"]
       25 GETTABLEKS                       R11 R0 K11 ["Size"]
       27 GETTABLEKS                       R11 R11 K21 ["Y"]
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R9 R8 K11 ["Size"]
       32 GETIMPORT                        R9 K23 [UDim2.fromScale]
       34 LOADK                            R10 K24 [0.5]
       35 LOADK                            R11 K24 [0.5]
       36 CALL                             R9 2 1
       37 SETTABLEKS                       R9 R8 K12 ["Position"]
       39 GETIMPORT                        R9 K27 [Vector2.new]
       41 LOADK                            R10 K24 [0.5]
       42 LOADK                            R11 K24 [0.5]
       43 CALL                             R9 2 1
       44 SETTABLEKS                       R9 R8 K13 ["AnchorPoint"]
       46 LOADN                            R9 1
       47 SETTABLEKS                       R9 R8 K14 ["BackgroundTransparency"]
       49 LOADB                            R9 0
       50 SETTABLEKS                       R9 R8 K15 ["ClipsDescendants"]
       52 DUPTABLE                         R9 K29 [{"Contents"}]
       53 GETTABLEKS                       R10 R0 K28 ["Contents"]
       55 SETTABLEKS                       R10 R9 K28 ["Contents"]
       57 CALL                             R6 3 1
       58 SETTABLEKS                       R6 R5 K8 ["MainContent"]
       60 CALL                             R2 3 1
       61 GETTABLEKS                       R3 R0 K30 ["Title"]
       63 JUMPIFEQKNIL                     R3 ; [+7]
       65 NEWTABLE                         R3 1 0
       67 GETTABLEKS                       R4 R0 K30 ["Title"]
       69 SETTABLE                         R2 R3 R4
       70 MOVE                             R2 R3
       71 DUPTABLE                         R3 K35 [{"root", "show", "hide", "focus"}]
       72 GETUPVAL                         R4 2
       73 GETUPVAL                         R5 3
       74 DUPTABLE                         R6 K38 [{"onVisibilityChanged", "contents"}]
       75 SETTABLEKS                       R1 R6 K36 ["onVisibilityChanged"]
       77 SETTABLEKS                       R2 R6 K37 ["contents"]
       79 CALL                             R4 2 1
       80 SETTABLEKS                       R4 R3 K31 ["root"]
       82 NEWCLOSURE                       R4 P1
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R4 R3 K32 ["show"]
       86 NEWCLOSURE                       R4 P2
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R4 R3 K33 ["hide"]
       90 DUPCLOSURE                       R4 K39 [PROTO_11]
       91 SETTABLEKS                       R4 R3 K34 ["focus"]
       93 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R1 1
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R2 0
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["lastPopoutMenu is nil"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 0
       12 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 1
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R2 0
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["lastDialogWidget is nil"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 0
       12 RETURN                           R1 1

PROTO_15:
        0 DUPTABLE                         R0 K2 [{"getPopoutMenu", "getDialogWidget"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["getPopoutMenu"]
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 SETTABLEKS                       R1 R0 K1 ["getDialogWidget"]
       11 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 NEWTABLE                         R3 0 0
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 5
       12 GETUPVAL                         R3 6
       13 GETTABLEKS                       R3 R3 K1 ["Provider"]
       15 DUPTABLE                         R4 K3 [{"option"}]
       16 SETTABLEKS                       R1 R4 K2 ["option"]
       18 GETTABLEKS                       R5 R0 K4 ["children"]
       20 CALL                             R2 3 -1
       21 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_19:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 MOVE                             R3 R2
       11 DUPTABLE                         R4 K2 [{"getLastPopoutMenu", "getLastDialogWidget"}]
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          REF R0
       14 SETTABLEKS                       R5 R4 K0 ["getLastPopoutMenu"]
       16 NEWCLOSURE                       R5 P2
       17 CAPTURE                          REF R1
       18 SETTABLEKS                       R5 R4 K1 ["getLastDialogWidget"]
       20 CLOSEUPVALS                      R0
       21 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["PopoutWidgetContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["ReactRoblox"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["Signal"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K14 ["useEventConnection"]
       43 CALL                             R5 1 1
       44 LOADK                            R8 K15 ["Packages"]
       45 NAMECALL                         R6 R0 K3 ["FindFirstAncestor"]
       47 CALL                             R6 2 1
       48 GETTABLEKS                       R6 R6 K16 ["Dev"]
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R6 K17 ["FoundationTestingLibrary"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R2 K18 ["createElement"]
       57 DUPCLOSURE                       R9 K19 [PROTO_1]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R7
       63 DUPCLOSURE                       R10 K20 [PROTO_7]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 DUPCLOSURE                       R11 K21 [PROTO_12]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 DUPCLOSURE                       R12 K22 [PROTO_19]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R1
       79 RETURN                           R12 1
