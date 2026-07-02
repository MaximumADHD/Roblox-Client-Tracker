PROTO_0:
        0 DUPTABLE                         R1 K8 [{[1] = False, ["__finished"] = False, ["__success"] = , ["__results"] = , ["__callback"], ["__event"]}]
        1 SETTABLEKS                       R0 R1 K6 ["__callback"]
        3 GETIMPORT                        R2 K11 [Instance.new]
        5 LOADK                            R3 K12 ["BindableEvent"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K7 ["__event"]
        9 GETUPVAL                         R4 0
       10 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K14 [setmetatable]
       15 CALL                             R2 2 1
       16 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R0 0 1
        2 GETIMPORT                        R1 K1 [pcall]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["__callback"]
        7 GETUPVAL                         R4 1
        8 FASTCALL1                        TABLE_UNPACK R4 ; [+2]
        9 GETIMPORT                        R3 K4 [unpack]
       11 CALL                             R3 1 -1
       12 CALL                             R1 -1 -1
       13 SETLIST                          R0 R1 -1 [1]
       15 GETUPVAL                         R1 0
       16 GETTABLEN                        R2 R0 1
       17 SETTABLEKS                       R2 R1 K5 ["__success"]
       19 GETUPVAL                         R1 0
       20 GETIMPORT                        R2 K8 [table.move]
       22 MOVE                             R3 R0
       23 LOADN                            R4 2
       24 LENGTH                           R5 R0
       25 LOADN                            R6 1
       26 NEWTABLE                         R7 0 0
       28 CALL                             R2 5 1
       29 SETTABLEKS                       R2 R1 K9 ["__results"]
       31 GETUPVAL                         R1 0
       32 LOADB                            R2 0
       33 SETTABLEKS                       R2 R1 K10 ["__running"]
       35 GETUPVAL                         R1 0
       36 LOADB                            R2 1
       37 SETTABLEKS                       R2 R1 K11 ["__finished"]
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R1 R1 K12 ["__event"]
       42 NAMECALL                         R1 R1 K13 ["Fire"]
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["__running"]
        3 JUMPIF                           R1 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["__finished"]
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K0 ["__running"]
       11 NEWTABLE                         R1 0 0
       13 GETVARARGS                       R2 -1
       14 SETLIST                          R1 R2 -1 [1]
       16 GETIMPORT                        R2 K4 [coroutine.wrap]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CALL                             R2 1 1
       22 CALL                             R2 0 0
       23 GETTABLEKS                       R2 R0 K1 ["__finished"]
       25 JUMPIFNOT                        R2 ; [+10]
       26 GETTABLEKS                       R2 R0 K5 ["__success"]
       28 JUMPIF                           R2 ; [+7]
       29 GETIMPORT                        R2 K7 [error]
       31 GETTABLEKS                       R4 R0 K8 ["__results"]
       33 GETTABLEN                        R3 R4 1
       34 LOADN                            R4 2
       35 CALL                             R2 2 0
       36 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["__finished"]
        2 JUMPIF                           R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K1 ["__running"]
        5 JUMPIF                           R1 ; [+5]
        6 GETIMPORT                        R1 K3 [error]
        8 LOADK                            R2 K4 ["Attempt to join on unstarted thread"]
        9 LOADN                            R3 2
       10 CALL                             R1 2 0
       11 GETTABLEKS                       R1 R0 K0 ["__finished"]
       13 JUMPIF                           R1 ; [+7]
       14 GETTABLEKS                       R1 R0 K5 ["__event"]
       16 GETTABLEKS                       R1 R1 K6 ["Event"]
       18 NAMECALL                         R1 R1 K7 ["Wait"]
       20 CALL                             R1 1 0
       21 GETTABLEKS                       R1 R0 K8 ["__success"]
       23 JUMPIFNOT                        R1 ; [+7]
       24 GETTABLEKS                       R2 R0 K9 ["__results"]
       26 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
       27 GETIMPORT                        R1 K11 [unpack]
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1
       31 GETIMPORT                        R1 K3 [error]
       33 GETTABLEKS                       R3 R0 K9 ["__results"]
       35 GETTABLEN                        R2 R3 1
       36 LOADN                            R3 2
       37 CALL                             R1 2 0
       38 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["__running"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K4 ["start"]
       12 DUPCLOSURE                       R1 K5 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K6 ["join"]
       15 DUPCLOSURE                       R1 K7 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K8 ["isAlive"]
       18 RETURN                           R0 1
