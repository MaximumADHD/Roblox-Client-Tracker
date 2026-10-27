PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+7]
        2 LOADK                            R4 K0 ["Parent"]
        3 NAMECALL                         R2 R0 K1 ["GetPropertyChangedSignal"]
        5 CALL                             R2 2 1
        6 NAMECALL                         R2 R2 K2 ["Wait"]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["_destroyed"]
       12 JUMPIF                           R2 ; [+2]
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 0
       15 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+5]
        5 LOADK                            R3 K2 ["Attachment"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+13]
       10 LOADK                            R3 K3 ["Parent"]
       11 NAMECALL                         R1 R0 K4 ["GetPropertyChangedSignal"]
       13 CALL                             R1 2 1
       14 NAMECALL                         R1 R1 K5 ["Wait"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K6 ["_destroyed"]
       20 JUMPIF                           R1 ; [+2]
       21 GETUPVAL                         R1 1
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R3
        1 LOADB                            R4 0
        2 GETIMPORT                        R5 K2 [Instance.new]
        4 LOADK                            R6 K3 ["BindableEvent"]
        5 CALL                             R5 1 1
        6 GETTABLEKS                       R6 R5 K4 ["Event"]
        8 NEWCLOSURE                       R8 P0
        9 CAPTURE                          REF R4
       10 NAMECALL                         R6 R6 K5 ["Connect"]
       12 CALL                             R6 2 0
       13 NAMECALL                         R6 R5 K6 ["Fire"]
       15 CALL                             R6 1 0
       16 NOT                              R3 R4
       17 NAMECALL                         R6 R5 K7 ["Destroy"]
       19 CALL                             R6 1 0
       20 DUPTABLE                         R7 K10 [{["_destroyed"] = False}]
       21 GETUPVAL                         R8 0
       22 FASTCALL2                        SETMETATABLE R7 R8 ; [+3]
       24 GETIMPORT                        R6 K12 [setmetatable]
       26 CALL                             R6 2 1
       27 GETTABLEKS                       R7 R1 K13 ["AncestryChanged"]
       29 NEWCLOSURE                       R9 P1
       30 CAPTURE                          REF R3
       31 CAPTURE                          VAL R6
       32 CAPTURE                          VAL R2
       33 NAMECALL                         R7 R7 K5 ["Connect"]
       35 CALL                             R7 2 1
       36 SETTABLEKS                       R7 R6 K14 ["_hoverInstanceEscapedConnection"]
       38 GETTABLEKS                       R7 R1 K15 ["DescendantRemoving"]
       40 NEWCLOSURE                       R9 P2
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R2
       43 NAMECALL                         R7 R7 K5 ["Connect"]
       45 CALL                             R7 2 1
       46 SETTABLEKS                       R7 R6 K16 ["_hoverInstanceContentsChangedConnection"]
       48 CLOSEUPVALS                      R3
       49 RETURN                           R6 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_destroyed"]
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["Already destroyed"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K0 ["_destroyed"]
       12 GETTABLEKS                       R1 R0 K4 ["_hoverInstanceEscapedConnection"]
       14 NAMECALL                         R1 R1 K5 ["Disconnect"]
       16 CALL                             R1 1 0
       17 GETTABLEKS                       R1 R0 K6 ["_hoverInstanceContentsChangedConnection"]
       19 NAMECALL                         R1 R1 K5 ["Disconnect"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_3]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_4]
       10 SETTABLEKS                       R1 R0 K4 ["destroy"]
       12 RETURN                           R0 1
