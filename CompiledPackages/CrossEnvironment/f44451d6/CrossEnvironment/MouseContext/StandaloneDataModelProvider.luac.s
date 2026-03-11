PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["plugin"]
        3 LOADK                            R2 K1 ["MouseTracker"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["uri"]
       10 NAMECALL                         R0 R0 K4 ["RegisterMouseTrackingRelativeToWidgetAsync"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K3 ["current"]
        5 GETUPVAL                         R2 1
        6 CALL                             R0 2 1
        7 JUMPIFEQKNIL                     R0 ; [+8]
        9 GETIMPORT                        R1 K5 [table.remove]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K3 ["current"]
       14 MOVE                             R3 R0
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R1 K3 [table.insert]
        8 CALL                             R1 2 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R0 R3 K0 ["current"]
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 FORGPREP                         R0
        7 GETIMPORT                        R5 K3 [task.spawn]
        9 MOVE                             R6 R4
       10 GETVARARGS                       R7 -1
       11 CALL                             R5 -1 0
       12 FORGLOOP                         R0 2 ; [-6]
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["status"]
        3 JUMPIFNOTEQKS                    R0 K1 ["ok"] ; [+27]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K2 ["value"]
        8 LOADK                            R2 K3 ["RBX_MousePosition"]
        9 NAMECALL                         R0 R0 K4 ["GetAttribute"]
       11 CALL                             R0 2 1
       12 LOADB                            R2 0
       13 JUMPIFEQKNIL                     R0 ; [+10]
       15 FASTCALL1                        TYPEOF R0 ; [+3]
       16 MOVE                             R4 R0
       17 GETIMPORT                        R3 K6 [typeof]
       19 CALL                             R3 1 1
       20 JUMPIFEQKS                       R3 K7 ["Vector2"] ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       26 LOADK                            R3 K8 ["Mouse position is not Vector2"]
       27 GETIMPORT                        R1 K10 [assert]
       29 CALL                             R1 2 0
       30 RETURN                           R0 1
       31 GETIMPORT                        R0 K12 [Vector2.new]
       33 CALL                             R0 0 -1
       34 RETURN                           R0 -1

PROTO_5:
        0 DUPTABLE                         R0 K2 [{"getMousePosition", "bindOnPointerAction"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["getMousePosition"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["bindOnPointerAction"]
        7 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useAsync"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 2
        7 GETTABLEKS                       R4 R0 K1 ["plugin"]
        9 GETTABLEKS                       R5 R0 K2 ["uri"]
       11 SETLIST                          R3 R4 2 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K3 ["useRef"]
       17 NEWTABLE                         R3 0 0
       19 CALL                             R2 1 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K4 ["useCallback"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R2
       25 NEWTABLE                         R5 0 0
       27 CALL                             R3 2 1
       28 GETIMPORT                        R4 K6 [game]
       30 LOADK                            R6 K7 ["PluginGuiProcessPointerAction"]
       31 NAMECALL                         R4 R4 K8 ["GetEngineFeature"]
       33 CALL                             R4 2 1
       34 JUMPIFNOT                        R4 ; [+12]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R4 R5 K9 ["useEventConnection"]
       38 GETTABLEKS                       R6 R0 K10 ["pluginGui"]
       40 GETTABLEKS                       R5 R6 K11 ["PointerAction"]
       42 NEWCLOSURE                       R6 P2
       43 CAPTURE                          VAL R2
       44 NEWTABLE                         R7 0 0
       46 CALL                             R4 3 0
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       50 NEWCLOSURE                       R5 P3
       51 CAPTURE                          VAL R1
       52 NEWTABLE                         R6 0 1
       54 MOVE                             R7 R1
       55 SETLIST                          R6 R7 1 [1]
       57 CALL                             R4 2 1
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R5 R6 K12 ["useMemo"]
       61 NEWCLOSURE                       R6 P4
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R3
       64 NEWTABLE                         R7 0 2
       66 MOVE                             R8 R4
       67 MOVE                             R9 R3
       68 SETLIST                          R7 R8 2 [1]
       70 CALL                             R5 2 1
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R6 R7 K13 ["createElement"]
       74 GETUPVAL                         R8 2
       75 GETTABLEKS                       R7 R8 K14 ["Provider"]
       77 DUPTABLE                         R8 K16 [{"value"}]
       78 SETTABLEKS                       R5 R8 K15 ["value"]
       80 GETTABLEKS                       R9 R0 K17 ["children"]
       82 CALL                             R6 3 -1
       83 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CrossEnvironment"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Context"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Types"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K11 [PROTO_6]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R1
       39 RETURN                           R5 1
