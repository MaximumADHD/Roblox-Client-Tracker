PROTO_0:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["Get"]
        3 CALL                             R2 1 1
        4 LENGTH                           R1 R2
        5 LOADN                            R2 0
        6 JUMPIFNOTLT                      R2 R1 ; [+12]
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R2 R2 K0 ["Get"]
       11 CALL                             R2 1 1
       12 GETTABLEN                        R1 R2 1
       13 GETTABLEKS                       R2 R0 K1 ["selectedItem"]
       15 JUMPIFEQ                         R2 R1 ; [+3]
       17 SETTABLEKS                       R1 R0 K1 ["selectedItem"]
       19 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["selectedItem"]
        2 NAMECALL                         R2 R0 K1 ["setSelectedInstance"]
        4 CALL                             R2 1 0
        5 GETTABLEKS                       R2 R0 K0 ["selectedItem"]
        7 JUMPIFNOTEQ                      R2 R1 ; [+3]
        9 LOADNIL                          R3
       10 RETURN                           R3 1
       11 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Mouse"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R1 R2 K3 ["Target"]
        9 JUMPIFNOT                        R1 ; [+14]
       10 GETTABLEKS                       R3 R0 K0 ["props"]
       12 GETTABLEKS                       R2 R3 K4 ["IsSelectedInstanceValid"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 JUMPIF                           R2 ; [+7]
       17 GETTABLEKS                       R2 R1 K5 ["Parent"]
       19 LOADK                            R4 K6 ["HumanoidRootPart"]
       20 NAMECALL                         R2 R2 K7 ["FindFirstChild"]
       22 CALL                             R2 2 1
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R1 1
       25 GETTABLEKS                       R2 R1 K5 ["Parent"]
       27 RETURN                           R2 1

PROTO_3:
        0 NAMECALL                         R3 R0 K0 ["getMouseTarget"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R5 R0 K1 ["props"]
        5 GETTABLEKS                       R4 R5 K2 ["IsSelectedInstanceValid"]
        7 JUMPIFEQKNIL                     R3 ; [+12]
        9 MOVE                             R5 R4
       10 MOVE                             R6 R3
       11 CALL                             R5 1 1
       12 JUMPIFNOT                        R5 ; [+4]
       13 MOVE                             R5 R1
       14 MOVE                             R6 R3
       15 CALL                             R5 1 0
       16 RETURN                           R0 0
       17 MOVE                             R5 R2
       18 MOVE                             R6 R3
       19 CALL                             R5 1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 1
        3 MOVE                             R4 R0
        4 SETLIST                          R3 R4 1 [1]
        6 NAMECALL                         R1 R1 K0 ["Set"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["Set"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"hoverPart"}]
        2 SETTABLEKS                       R0 R3 K0 ["hoverPart"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hoverPart"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["hoverPart"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"hoverPart"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["hoverPart"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K3 ["selectedItem"]
        9 DUPCLOSURE                       R1 K4 [PROTO_4]
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R1 R0 K5 ["selectInstance"]
       13 DUPCLOSURE                       R1 K6 [PROTO_5]
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R1 R0 K7 ["deselect"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K8 ["highlightInstance"]
       21 NEWCLOSURE                       R1 P3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R1 R0 K9 ["removeHighlight"]
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getSelectedInstance"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 2
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 3
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["selectInstance"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["deselect"]
        7 NAMECALL                         R0 R0 K2 ["selectValidInstance"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["highlightInstance"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["removeHighlight"]
        7 NAMECALL                         R1 R1 K2 ["selectValidInstance"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsSelectedInstanceValid"]
        4 GETTABLEKS                       R3 R1 K2 ["OnValidSelection"]
        6 GETTABLEKS                       R4 R1 K3 ["OnInvalidSelection"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["SelectionChanged"]
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R4
       16 NAMECALL                         R5 R5 K5 ["Connect"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R0 K6 ["SelectionChangedHandle"]
       21 GETTABLEKS                       R6 R0 K0 ["props"]
       23 GETTABLEKS                       R5 R6 K7 ["Mouse"]
       25 NAMECALL                         R5 R5 K8 ["get"]
       27 CALL                             R5 1 1
       28 JUMPIFNOT                        R5 ; [+12]
       29 GETTABLEKS                       R6 R5 K9 ["Button1Down"]
       31 JUMPIFNOT                        R6 ; [+9]
       32 GETTABLEKS                       R6 R5 K9 ["Button1Down"]
       34 NEWCLOSURE                       R8 P1
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R6 R6 K5 ["Connect"]
       38 CALL                             R6 2 1
       39 SETTABLEKS                       R6 R0 K10 ["MouseButtonDown"]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R6 R7 K11 ["Heartbeat"]
       44 NEWCLOSURE                       R8 P2
       45 CAPTURE                          VAL R0
       46 NAMECALL                         R6 R6 K5 ["Connect"]
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R0 K11 ["Heartbeat"]
       51 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R1 K2 ["hoverPart"]
        6 GETTABLEKS                       R4 R2 K3 ["Container"]
        8 JUMPIF                           R4 ; [+1]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R5 R2 K4 ["Stylizer"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K5 ["createElement"]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R7 R8 K6 ["Portal"]
       18 DUPTABLE                         R8 K8 [{"target"}]
       19 SETTABLEKS                       R4 R8 K7 ["target"]
       21 DUPTABLE                         R9 K10 [{"HoverBox"}]
       22 MOVE                             R10 R3
       23 JUMPIFNOT                        R10 ; [+18]
       24 GETUPVAL                         R11 1
       25 GETTABLEKS                       R10 R11 K5 ["createElement"]
       27 LOADK                            R11 K11 ["SelectionBox"]
       28 DUPTABLE                         R12 K16 [{"Archivable", "Adornee", "LineThickness", "StudioSelectionBox"}]
       29 LOADB                            R13 0
       30 SETTABLEKS                       R13 R12 K12 ["Archivable"]
       32 SETTABLEKS                       R3 R12 K13 ["Adornee"]
       34 GETTABLEKS                       R13 R5 K17 ["HoverLineThickness"]
       36 SETTABLEKS                       R13 R12 K14 ["LineThickness"]
       38 LOADB                            R13 1
       39 SETTABLEKS                       R13 R12 K15 ["StudioSelectionBox"]
       41 CALL                             R10 2 1
       42 SETTABLEKS                       R10 R9 K9 ["HoverBox"]
       44 CALL                             R6 3 -1
       45 RETURN                           R6 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["Heartbeat"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["Heartbeat"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["SelectionChangedHandle"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["SelectionChangedHandle"]
       13 NAMECALL                         R1 R1 K1 ["Disconnect"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K3 ["MouseButtonDown"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K3 ["MouseButtonDown"]
       21 NAMECALL                         R1 R1 K1 ["Disconnect"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K7 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K8 ["withContext"]
       23 GETIMPORT                        R6 K10 [game]
       25 LOADK                            R8 K11 ["RunService"]
       26 NAMECALL                         R6 R6 K12 ["GetService"]
       28 CALL                             R6 2 1
       29 GETIMPORT                        R7 K10 [game]
       31 LOADK                            R9 K13 ["CoreGui"]
       32 NAMECALL                         R7 R7 K12 ["GetService"]
       34 CALL                             R7 2 1
       35 GETIMPORT                        R8 K10 [game]
       37 LOADK                            R10 K14 ["Selection"]
       38 NAMECALL                         R8 R8 K12 ["GetService"]
       40 CALL                             R8 2 1
       41 GETTABLEKS                       R9 R2 K15 ["PureComponent"]
       43 LOADK                            R11 K16 ["InstanceSelector"]
       44 NAMECALL                         R9 R9 K17 ["extend"]
       46 CALL                             R9 2 1
       47 GETTABLEKS                       R10 R3 K18 ["Util"]
       49 GETTABLEKS                       R11 R10 K19 ["Typecheck"]
       51 GETTABLEKS                       R12 R11 K20 ["wrap"]
       53 MOVE                             R13 R9
       54 GETIMPORT                        R14 K1 [script]
       56 CALL                             R12 2 0
       57 DUPCLOSURE                       R12 K21 [PROTO_0]
       58 CAPTURE                          VAL R8
       59 SETTABLEKS                       R12 R9 K22 ["setSelectedInstance"]
       61 DUPCLOSURE                       R12 K23 [PROTO_1]
       62 SETTABLEKS                       R12 R9 K24 ["getSelectedInstance"]
       64 DUPCLOSURE                       R12 K25 [PROTO_2]
       65 SETTABLEKS                       R12 R9 K26 ["getMouseTarget"]
       67 DUPCLOSURE                       R12 K27 [PROTO_3]
       68 SETTABLEKS                       R12 R9 K28 ["selectValidInstance"]
       70 DUPCLOSURE                       R12 K29 [PROTO_8]
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R12 R9 K30 ["init"]
       75 DUPCLOSURE                       R12 K31 [PROTO_12]
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R6
       78 SETTABLEKS                       R12 R9 K32 ["didMount"]
       80 DUPCLOSURE                       R12 K33 [PROTO_13]
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R2
       83 SETTABLEKS                       R12 R9 K34 ["render"]
       85 DUPCLOSURE                       R12 K35 [PROTO_14]
       86 SETTABLEKS                       R12 R9 K36 ["willUnmount"]
       88 MOVE                             R12 R5
       89 DUPTABLE                         R13 K41 [{"Stylizer", "Localization", "Mouse", "Plugin"}]
       90 GETTABLEKS                       R14 R4 K37 ["Stylizer"]
       92 SETTABLEKS                       R14 R13 K37 ["Stylizer"]
       94 GETTABLEKS                       R14 R4 K38 ["Localization"]
       96 SETTABLEKS                       R14 R13 K38 ["Localization"]
       98 GETTABLEKS                       R14 R4 K39 ["Mouse"]
      100 SETTABLEKS                       R14 R13 K39 ["Mouse"]
      102 GETTABLEKS                       R14 R4 K40 ["Plugin"]
      104 SETTABLEKS                       R14 R13 K40 ["Plugin"]
      106 CALL                             R12 1 1
      107 MOVE                             R13 R9
      108 CALL                             R12 1 1
      109 MOVE                             R9 R12
      110 RETURN                           R9 1
