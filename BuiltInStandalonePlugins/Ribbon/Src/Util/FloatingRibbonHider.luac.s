PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetUri"]
        2 CALL                             R2 1 1
        3 DUPTABLE                         R4 K7 [{["floating"], ["floatingUri"], ["toggleTask"] = , ["watcherThread"] = , ["plugin"]}]
        4 SETTABLEKS                       R1 R4 K1 ["floating"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K8 ["join"]
        9 MOVE                             R6 R2
       10 DUPTABLE                         R7 K13 [{["Category"] = "Widgets", ["ItemId"] = "Floating"}]
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R4 K2 ["floatingUri"]
       14 SETTABLEKS                       R0 R4 K6 ["plugin"]
       16 DUPTABLE                         R5 K15 [{"__index"}]
       17 GETUPVAL                         R6 1
       18 SETTABLEKS                       R6 R5 K14 ["__index"]
       20 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       22 GETIMPORT                        R3 K17 [setmetatable]
       24 CALL                             R3 2 1
       25 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["floating"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        6 GETUPVAL                         R0 0
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K2 ["toggleTask"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 CALL                             R0 0 1
        3 JUMPIFNOT                        R0 ; [+73]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K3 ["floating"]
        7 GETTABLEKS                       R0 R0 K4 ["Enabled"]
        9 JUMPIFNOT                        R0 ; [+66]
       10 GETUPVAL                         R0 1
       11 LOADK                            R2 K5 ["RBX_MousePosition"]
       12 NAMECALL                         R0 R0 K6 ["GetAttribute"]
       14 CALL                             R0 2 1
       15 JUMPIFNOT                        R0 ; [+46]
       16 GETTABLEKS                       R1 R0 K7 ["X"]
       18 LOADN                            R2 0
       19 JUMPIFLT                         R1 R2 ; [+28]
       21 GETTABLEKS                       R1 R0 K7 ["X"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K3 ["floating"]
       26 GETTABLEKS                       R2 R2 K8 ["AbsoluteSize"]
       28 GETTABLEKS                       R2 R2 K7 ["X"]
       30 JUMPIFLT                         R2 R1 ; [+17]
       32 GETTABLEKS                       R1 R0 K9 ["Y"]
       34 LOADN                            R2 -40
       35 JUMPIFLT                         R1 R2 ; [+12]
       37 GETTABLEKS                       R1 R0 K9 ["Y"]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K3 ["floating"]
       42 GETTABLEKS                       R2 R2 K8 ["AbsoluteSize"]
       44 GETTABLEKS                       R2 R2 K9 ["Y"]
       46 JUMPIFNOTLT                      R2 R1 ; [+15]
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K10 ["toggleTask"]
       51 JUMPIF                           R1 ; [+24]
       52 GETUPVAL                         R1 0
       53 GETIMPORT                        R2 K12 [task.delay]
       55 GETUPVAL                         R3 2
       56 NEWCLOSURE                       R4 P0
       57 CAPTURE                          UPVAL U0
       58 CALL                             R2 2 1
       59 SETTABLEKS                       R2 R1 K10 ["toggleTask"]
       61 JUMP                             ; [+14]
       62 GETUPVAL                         R1 0
       63 GETTABLEKS                       R1 R1 K10 ["toggleTask"]
       65 JUMPIFNOT                        R1 ; [+10]
       66 GETIMPORT                        R1 K14 [task.cancel]
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R2 R2 K10 ["toggleTask"]
       71 CALL                             R1 1 0
       72 GETUPVAL                         R1 0
       73 LOADNIL                          R2
       74 SETTABLEKS                       R2 R1 K10 ["toggleTask"]
       76 JUMPBACK                         ; [-77]
       77 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["plugin"]
        2 LOADK                            R3 K1 ["MouseTracker"]
        3 NAMECALL                         R1 R1 K2 ["GetPluginComponent"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R4 R0 K3 ["floatingUri"]
        8 NAMECALL                         R2 R1 K4 ["RegisterMouseTrackingRelativeToWidgetAsync"]
       10 CALL                             R2 2 1
       11 GETIMPORT                        R3 K7 [coroutine.create]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U0
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R0 K8 ["watcherThread"]
       20 GETIMPORT                        R3 K10 [coroutine.resume]
       22 GETTABLEKS                       R4 R0 K8 ["watcherThread"]
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [coroutine.close]
        2 GETTABLEKS                       R2 R0 K3 ["watcherThread"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RibbonFloatingHideDelayMillis"]
       10 LOADN                            R4 300
       11 NAMECALL                         R1 R1 K7 ["DefineFastInt"]
       13 CALL                             R1 3 1
       14 GETIMPORT                        R2 K9 [require]
       16 GETTABLEKS                       R3 R0 K10 ["Packages"]
       18 GETTABLEKS                       R3 R3 K11 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K12 ["Util"]
       23 GETTABLEKS                       R3 R3 K13 ["StudioUri"]
       25 NEWTABLE                         R4 4 0
       27 DIVK                             R5 R1 K14 [1000]
       28 DUPCLOSURE                       R6 K15 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 SETTABLEKS                       R6 R4 K16 ["new"]
       33 DUPCLOSURE                       R6 K17 [PROTO_3]
       34 CAPTURE                          VAL R5
       35 SETTABLEKS                       R6 R4 K18 ["start"]
       37 DUPCLOSURE                       R6 K19 [PROTO_4]
       38 SETTABLEKS                       R6 R4 K20 ["stop"]
       40 RETURN                           R4 1
