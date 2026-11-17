PROTO_0:
        0 DUPTABLE                         R2 K5 [{"_plugin", "_id", "Name", "Text", "_buttons"}]
        1 SETTABLEKS                       R0 R2 K0 ["_plugin"]
        3 SETTABLEKS                       R1 R2 K1 ["_id"]
        5 SETTABLEKS                       R1 R2 K2 ["Name"]
        7 SETTABLEKS                       R1 R2 K3 ["Text"]
        9 NEWTABLE                         R3 0 0
       11 SETTABLEKS                       R3 R2 K4 ["_buttons"]
       13 GETUPVAL                         R5 0
       14 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K7 [setmetatable]
       19 CALL                             R3 2 0
       20 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_buttons"]
        2 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_plugin"]
        3 GETIMPORT                        R1 K2 [pairs]
        5 GETTABLEKS                       R2 R0 K3 ["_buttons"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 NAMECALL                         R6 R5 K4 ["Destroy"]
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 ; [-4]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K3 ["_buttons"]
       18 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R5 R1
        1 JUMPIFNOT                        R5 ; [+6]
        2 LENGTH                           R6 R1
        3 LOADN                            R7 0
        4 JUMPIFLT                         R7 R6 ; [+2]
        6 LOADB                            R5 0 +1
        7 LOADB                            R5 1
        8 MOVE                             R6 R2
        9 JUMPIFNOT                        R6 ; [+6]
       10 LENGTH                           R7 R2
       11 LOADN                            R8 0
       12 JUMPIFLT                         R8 R7 ; [+2]
       14 LOADB                            R6 0 +1
       15 LOADB                            R6 1
       16 MOVE                             R7 R3
       17 JUMPIFNOT                        R7 ; [+6]
       18 LENGTH                           R8 R3
       19 LOADN                            R9 0
       20 JUMPIFLT                         R9 R8 ; [+2]
       22 LOADB                            R7 0 +1
       23 LOADB                            R7 1
       24 MOVE                             R8 R4
       25 JUMPIFNOT                        R8 ; [+6]
       26 LENGTH                           R9 R4
       27 LOADN                            R10 0
       28 JUMPIFLT                         R10 R9 ; [+2]
       30 LOADB                            R8 0 +1
       31 LOADB                            R8 1
       32 MOVE                             R9 R6
       33 JUMPIF                           R9 ; [+3]
       34 MOVE                             R9 R7
       35 JUMPIF                           R9 ; [+1]
       36 MOVE                             R9 R8
       37 LOADNIL                          R10
       38 LOADNIL                          R11
       39 JUMPIFNOT                        R9 ; [+14]
       40 JUMPIFNOT                        R5 ; [+2]
       41 MOVE                             R12 R1
       42 JUMPIF                           R12 ; [+1]
       43 MOVE                             R12 R2
       44 MOVE                             R10 R12
       45 JUMPIFNOT                        R8 ; [+2]
       46 MOVE                             R12 R4
       47 JUMPIF                           R12 ; [+4]
       48 JUMPIFNOT                        R5 ; [+2]
       49 MOVE                             R12 R1
       50 JUMPIF                           R12 ; [+1]
       51 MOVE                             R12 R2
       52 MOVE                             R11 R12
       53 JUMP                             ; [+18]
       54 MOVE                             R10 R1
       55 MOVE                             R11 R1
       56 LENGTH                           R14 R10
       57 LOADN                            R15 0
       58 JUMPIFLT                         R15 R14 ; [+2]
       60 LOADB                            R13 0 +1
       61 LOADB                            R13 1
       62 LOADK                            R14 K0 ["Toolbar %s tried to create a button with empty id"]
       63 GETTABLEKS                       R16 R0 K1 ["_id"]
       65 NAMECALL                         R14 R14 K2 ["format"]
       67 CALL                             R14 2 -1
       68 FASTCALL                         ASSERT ; [+2]
       69 GETIMPORT                        R12 K4 [assert]
       71 CALL                             R12 -1 0
       72 GETTABLEKS                       R15 R0 K5 ["_buttons"]
       74 GETTABLE                         R14 R15 R10
       75 NOT                              R13 R14
       76 LOADK                            R14 K6 ["Toolbar %s already has a button with id %s"]
       77 GETTABLEKS                       R16 R0 K1 ["_id"]
       79 MOVE                             R17 R10
       80 NAMECALL                         R14 R14 K2 ["format"]
       82 CALL                             R14 3 -1
       83 FASTCALL                         ASSERT ; [+2]
       84 GETIMPORT                        R12 K4 [assert]
       86 CALL                             R12 -1 0
       87 GETUPVAL                         R12 0
       88 GETTABLEKS                       R12 R12 K7 ["new"]
       90 GETTABLEKS                       R13 R0 K8 ["_plugin"]
       92 MOVE                             R14 R0
       93 MOVE                             R15 R10
       94 CALL                             R12 3 1
       95 GETTABLEKS                       R13 R0 K5 ["_buttons"]
       97 SETTABLE                         R12 R13 R10
       98 SETTABLEKS                       R11 R12 K9 ["Text"]
      100 JUMPIFNOT                        R9 ; [+6]
      101 ORK                              R13 R2 K10 [""]
      102 SETTABLEKS                       R13 R12 K11 ["Tooltip"]
      104 ORK                              R13 R3 K10 [""]
      105 SETTABLEKS                       R13 R12 K12 ["Icon"]
      107 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["MockPluginToolbarButton"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 8 0
       12 SETTABLEKS                       R1 R1 K6 ["__index"]
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R1 K8 ["new"]
       18 DUPCLOSURE                       R2 K9 [PROTO_1]
       19 SETTABLEKS                       R2 R1 K10 ["getButtons"]
       21 DUPCLOSURE                       R2 K11 [PROTO_2]
       22 SETTABLEKS                       R2 R1 K12 ["Destroy"]
       24 DUPCLOSURE                       R2 K13 [PROTO_3]
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R1 K14 ["CreateButton"]
       28 RETURN                           R1 1
