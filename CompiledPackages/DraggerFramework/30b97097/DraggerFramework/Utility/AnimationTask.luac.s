PROTO_0:
        0 DUPTABLE                         R2 K5 [{[1], ["_startedAt"] = , ["_duration"] = , ["_task"] = }]
        1 SETTABLEKS                       R0 R2 K0 ["_tweenFunction"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K7 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_tweenFunction"]
        2 LOADN                            R2 0
        3 CALL                             R1 1 0
        4 GETIMPORT                        R3 K3 [os.clock]
        6 CALL                             R3 0 1
        7 GETTABLEKS                       R4 R0 K4 ["_startedAt"]
        9 SUB                              R2 R3 R4
       10 GETTABLEKS                       R3 R0 K5 ["_duration"]
       12 DIV                              R1 R2 R3
       13 LOADN                            R2 1
       14 JUMPIFNOTLE                      R2 R1 ; [+7]
       16 GETTABLEKS                       R2 R0 K0 ["_tweenFunction"]
       18 LOADN                            R3 1
       19 LOADB                            R4 1
       20 CALL                             R2 2 0
       21 JUMP                             ; [+9]
       22 GETTABLEKS                       R2 R0 K0 ["_tweenFunction"]
       24 MOVE                             R3 R1
       25 LOADB                            R4 0
       26 CALL                             R2 2 0
       27 GETIMPORT                        R2 K8 [task.wait]
       29 CALL                             R2 0 0
       30 JUMPBACK                         ; [-27]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K9 ["_task"]
       34 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_task"]
        2 JUMPIF                           R1 ; [+8]
        3 GETIMPORT                        R1 K3 [task.defer]
        5 GETTABLEKS                       R2 R0 K4 ["_taskBodyAsync"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K0 ["_task"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K2 [os.clock]
        2 CALL                             R2 0 1
        3 SETTABLEKS                       R2 R0 K3 ["_startedAt"]
        5 SETTABLEKS                       R1 R0 K4 ["_duration"]
        7 NAMECALL                         R2 R0 K5 ["_startTask"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_task"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_task"]
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETIMPORT                        R1 K3 [task.cancel]
        5 GETTABLEKS                       R2 R0 K0 ["_task"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K4 ["_tweenFunction"]
       10 LOADN                            R2 1
       11 LOADB                            R3 1
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["_taskBodyAsync"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["_startTask"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["animate"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["inProgress"]
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["commit"]
       24 RETURN                           R0 1
