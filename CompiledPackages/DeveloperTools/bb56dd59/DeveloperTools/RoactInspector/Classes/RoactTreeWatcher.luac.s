PROTO_0:
        0 DUPTABLE                         R3 K4 [{"debugInterface", "tree", "onPathChanged", "cachedRoot"}]
        1 SETTABLEKS                       R0 R3 K0 ["debugInterface"]
        3 SETTABLEKS                       R1 R3 K1 ["tree"]
        5 SETTABLEKS                       R2 R3 K2 ["onPathChanged"]
        7 DUPTABLE                         R4 K7 [{"branchData", "childNodes"}]
        8 NEWTABLE                         R5 0 0
       10 SETTABLEKS                       R5 R4 K5 ["branchData"]
       12 NEWTABLE                         R5 0 0
       14 SETTABLEKS                       R5 R4 K6 ["childNodes"]
       16 SETTABLEKS                       R4 R3 K3 ["cachedRoot"]
       18 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["tree"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["_checkNodes"]
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K3 [delay]
       10 LOADK                            R1 K4 [0.25]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K5 ["onPoll"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onPoll"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["tree"]
        3 LOADK                            R4 K1 ["InternalData"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R1 R2 K2 ["rootNode"]
        7 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [spawn]
        2 GETTABLEKS                       R2 R0 K2 ["onPoll"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["getRootNode"]
        2 CALL                             R1 1 1
        3 MOVE                             R4 R1
        4 GETTABLEKS                       R5 R0 K1 ["cachedRoot"]
        6 NEWTABLE                         R6 0 0
        8 NAMECALL                         R2 R0 K2 ["_checkNode"]
       10 CALL                             R2 4 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["branchData"]
        3 GETTABLE                         R2 R3 R0
        4 GETTABLEKS                       R3 R1 K1 ["instance"]
        6 JUMPIF                           R3 ; [+2]
        7 GETTABLEKS                       R3 R1 K2 ["currentElement"]
        9 JUMPIFNOT                        R2 ; [+12]
       10 GETTABLEKS                       R4 R3 K3 ["props"]
       12 GETTABLEKS                       R5 R2 K3 ["props"]
       14 JUMPIFNOTEQ                      R4 R5 ; [+7]
       16 GETTABLEKS                       R4 R3 K4 ["state"]
       18 GETTABLEKS                       R5 R2 K4 ["state"]
       20 JUMPIFEQ                         R4 R5 ; [+15]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K0 ["branchData"]
       25 DUPTABLE                         R5 K5 [{"props", "state"}]
       26 GETTABLEKS                       R6 R3 K3 ["props"]
       28 SETTABLEKS                       R6 R5 K3 ["props"]
       30 GETTABLEKS                       R6 R3 K4 ["state"]
       32 SETTABLEKS                       R6 R5 K4 ["state"]
       34 SETTABLE                         R5 R4 R0
       35 RETURN                           R0 1
       36 LOADNIL                          R4
       37 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 0
        3 GETUPVAL                         R4 1
        4 NEWTABLE                         R5 0 1
        6 MOVE                             R6 R1
        7 SETLIST                          R5 R6 1 [1]
        9 CALL                             R2 3 1
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R4 R5 K0 ["children"]
       14 MOVE                             R5 R1
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+9]
       17 GETUPVAL                         R4 4
       18 MOVE                             R6 R3
       19 MOVE                             R7 R0
       20 MOVE                             R8 R2
       21 NAMECALL                         R4 R4 K1 ["_checkNode"]
       23 CALL                             R4 4 0
       24 LOADB                            R4 1
       25 RETURN                           R4 1
       26 LOADB                            R4 0
       27 RETURN                           R4 1

PROTO_8:
        0 MOVE                             R6 R1
        1 NAMECALL                         R4 R0 K0 ["_getBranchNodes"]
        3 CALL                             R4 2 1
        4 GETUPVAL                         R5 0
        5 MOVE                             R6 R4
        6 NEWCLOSURE                       R7 P0
        7 CAPTURE                          VAL R2
        8 CALL                             R5 2 1
        9 LENGTH                           R6 R5
       10 LOADN                            R7 0
       11 JUMPIFNOTLT                      R7 R6 ; [+6]
       13 GETTABLEKS                       R6 R0 K1 ["onPathChanged"]
       15 MOVE                             R7 R3
       16 MOVE                             R8 R5
       17 CALL                             R6 2 0
       18 MOVE                             R8 R1
       19 NAMECALL                         R6 R0 K2 ["getHostNode"]
       21 CALL                             R6 2 1
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R8 R2 K3 ["childNodes"]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R0
       31 CALL                             R7 2 1
       32 SETTABLEKS                       R7 R2 K3 ["childNodes"]
       34 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOT                        R0 ; [+17]
        1 GETTABLEKS                       R2 R0 K0 ["children"]
        3 JUMPIFNOT                        R2 ; [+14]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R3 R0 K0 ["children"]
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETUPVAL                         R3 1
       11 MOVE                             R5 R2
       12 NAMECALL                         R3 R3 K1 ["getHostNode"]
       14 CALL                             R3 2 1
       15 JUMPIF                           R3 ; [+1]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_10:
        0 NAMECALL                         R2 R0 K0 ["getRootNode"]
        2 CALL                             R2 1 1
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R0 K1 ["getHostNode"]
        6 CALL                             R3 2 1
        7 GETUPVAL                         R4 0
        8 MOVE                             R5 R1
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 MOVE                             R7 R3
       13 CALL                             R4 3 -1
       14 RETURN                           R4 -1

PROTO_11:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R2
        2 RETURN                           R2 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K0 ["childNodes"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["childNodes"]
        9 GETTABLE                         R3 R4 R1
       10 JUMPIF                           R3 ; [+5]
       11 DUPTABLE                         R3 K1 [{"childNodes"}]
       12 NEWTABLE                         R4 0 0
       14 SETTABLEKS                       R4 R3 K0 ["childNodes"]
       16 SETTABLE                         R3 R2 R1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K0 ["childNodes"]
       20 GETTABLE                         R2 R3 R1
       21 SETUPVAL                         R2 0
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R3 R0 K2 ["children"]
       25 MOVE                             R4 R1
       26 CALL                             R2 2 1
       27 JUMPIF                           R2 ; [+2]
       28 LOADNIL                          R3
       29 RETURN                           R3 1
       30 GETUPVAL                         R3 0
       31 GETUPVAL                         R4 2
       32 MOVE                             R6 R2
       33 NAMECALL                         R4 R4 K3 ["_getBranchData"]
       35 CALL                             R4 2 1
       36 SETTABLEKS                       R4 R3 K4 ["branchData"]
       38 GETUPVAL                         R3 2
       39 MOVE                             R5 R2
       40 NAMECALL                         R3 R3 K5 ["getHostNode"]
       42 CALL                             R3 2 -1
       43 RETURN                           R3 -1

PROTO_12:
        0 NAMECALL                         R2 R0 K0 ["getRootNode"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["cachedRoot"]
        5 MOVE                             R6 R2
        6 NAMECALL                         R4 R0 K2 ["_getBranchData"]
        8 CALL                             R4 2 1
        9 SETTABLEKS                       R4 R3 K3 ["branchData"]
       11 GETUPVAL                         R4 0
       12 MOVE                             R5 R1
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          REF R3
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 MOVE                             R9 R2
       18 NAMECALL                         R7 R0 K4 ["getHostNode"]
       20 CALL                             R7 2 -1
       21 CALL                             R4 -1 0
       22 CLOSEUPVALS                      R3
       23 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["instance"]
        2 JUMPIF                           R1 ; [+2]
        3 GETTABLEKS                       R1 R0 K1 ["currentElement"]
        5 DUPTABLE                         R2 K4 [{"props", "state"}]
        6 GETTABLEKS                       R3 R1 K2 ["props"]
        8 SETTABLEKS                       R3 R2 K2 ["props"]
       10 GETTABLEKS                       R3 R1 K3 ["state"]
       12 SETTABLEKS                       R3 R2 K3 ["state"]
       14 RETURN                           R2 1

PROTO_14:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getBranchNodes"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 DUPCLOSURE                       R5 K1 [PROTO_13]
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 0
        3 GETUPVAL                         R4 1
        4 NEWTABLE                         R5 0 1
        6 MOVE                             R6 R1
        7 SETLIST                          R5 R6 1 [1]
        9 CALL                             R2 3 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R6 R0
       12 NAMECALL                         R4 R4 K0 ["getHostNode"]
       14 CALL                             R4 2 1
       15 GETTABLEKS                       R3 R4 K1 ["hostObject"]
       17 JUMPIFNOT                        R3 ; [+3]
       18 GETTABLEKS                       R4 R3 K2 ["ClassName"]
       20 JUMPIF                           R4 ; [+1]
       21 LOADK                            R4 K3 ["Branch"]
       22 DUPTABLE                         R5 K8 [{"Name", "Icon", "Children", "Path"}]
       23 FASTCALL1                        TYPEOF R1 ; [+3]
       24 MOVE                             R8 R1
       25 GETIMPORT                        R7 K10 [typeof]
       27 CALL                             R7 1 1
       28 JUMPIFNOTEQKS                    R7 K11 ["number"] ; [+3]
       30 MOVE                             R6 R1
       31 JUMPIF                           R6 ; [+5]
       32 FASTCALL1                        TOSTRING R1 ; [+3]
       33 MOVE                             R7 R1
       34 GETIMPORT                        R6 K13 [tostring]
       36 CALL                             R6 1 1
       37 SETTABLEKS                       R6 R5 K4 ["Name"]
       39 SETTABLEKS                       R4 R5 K5 ["Icon"]
       41 GETUPVAL                         R6 2
       42 MOVE                             R8 R2
       43 MOVE                             R9 R0
       44 GETUPVAL                         R11 3
       45 SUBK                             R10 R11 K14 [1]
       46 NAMECALL                         R6 R6 K15 ["getChildren"]
       48 CALL                             R6 4 1
       49 SETTABLEKS                       R6 R5 K6 ["Children"]
       51 SETTABLEKS                       R2 R5 K7 ["Path"]
       53 RETURN                           R5 1

PROTO_16:
        0 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        2 LOADNIL                          R4
        3 RETURN                           R4 1
        4 MOVE                             R6 R2
        5 NAMECALL                         R4 R0 K1 ["getHostNode"]
        7 CALL                             R4 2 1
        8 JUMPIF                           R4 ; [+2]
        9 LOADNIL                          R5
       10 RETURN                           R5 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R6 R4 K2 ["children"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R3
       19 CALL                             R5 2 1
       20 RETURN                           R5 1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["children"]
        3 LOADK                            R5 K1 ["UseParentKey"]
        4 CALL                             R3 2 1
        5 JUMPIFNOT                        R3 ; [+29]
        6 MOVE                             R1 R3
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R5 R1 K0 ["children"]
       10 LOADK                            R6 K1 ["UseParentKey"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 JUMPIF                           R3 ; [+20]
       14 JUMPIFNOT                        R2 ; [+19]
       15 MOVE                             R6 R1
       16 NAMECALL                         R4 R0 K2 ["isFragment"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R4 ; [+4]
       20 GETTABLEKS                       R4 R1 K0 ["children"]
       22 GETTABLEN                        R3 R4 1
       23 JUMP                             ; [+10]
       24 MOVE                             R6 R1
       25 NAMECALL                         R4 R0 K3 ["isPortal"]
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R4 ; [+5]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R5 R1 K0 ["children"]
       32 CALL                             R4 1 1
       33 MOVE                             R3 R4
       34 JUMPBACK                         ; [-30]
       35 RETURN                           R1 1

PROTO_18:
        0 NAMECALL                         R1 R0 K0 ["getRootNode"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R1 K1 ["children"]
        6 LOADK                            R4 K2 ["UseParentKey"]
        7 CALL                             R2 2 1
        8 NEWTABLE                         R3 0 0
       10 JUMPIFNOT                        R2 ; [+43]
       11 MOVE                             R1 R2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R5 R1 K1 ["children"]
       15 LOADK                            R6 K2 ["UseParentKey"]
       16 CALL                             R4 2 1
       17 MOVE                             R2 R4
       18 JUMPIF                           R2 ; [+34]
       19 MOVE                             R6 R1
       20 NAMECALL                         R4 R0 K3 ["isFragment"]
       22 CALL                             R4 2 1
       23 JUMPIFNOT                        R4 ; [+10]
       24 GETTABLEKS                       R4 R1 K1 ["children"]
       26 GETTABLEN                        R2 R4 1
       27 FASTCALL2K                       TABLE_INSERT R3 K4 ; [+4]
       29 MOVE                             R5 R3
       30 LOADK                            R6 K4 [1]
       31 GETUPVAL                         R4 1
       32 CALL                             R4 2 0
       33 JUMP                             ; [+19]
       34 MOVE                             R6 R1
       35 NAMECALL                         R4 R0 K5 ["isPortal"]
       37 CALL                             R4 2 1
       38 JUMPIFNOT                        R4 ; [+14]
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R5 R1 K1 ["children"]
       42 CALL                             R4 1 1
       43 GETTABLEN                        R7 R4 1
       44 FASTCALL2                        TABLE_INSERT R3 R7 ; [+3]
       46 MOVE                             R6 R3
       47 GETUPVAL                         R5 1
       48 CALL                             R5 2 0
       49 GETTABLEKS                       R5 R1 K1 ["children"]
       51 GETTABLEN                        R6 R4 1
       52 GETTABLE                         R2 R5 R6
       53 JUMPBACK                         ; [-44]
       54 GETUPVAL                         R4 3
       55 MOVE                             R5 R3
       56 LOADN                            R6 0
       57 LOADN                            R7 255
       58 CALL                             R4 3 -1
       59 RETURN                           R4 -1

PROTO_19:
        0 GETTABLEKS                       R2 R1 K0 ["currentElement"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R3 R1 K0 ["currentElement"]
        5 GETTABLEKS                       R2 R3 K1 ["elements"]
        7 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R2 R1 K0 ["currentElement"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R5 R1 K0 ["currentElement"]
        5 GETTABLEKS                       R4 R5 K1 ["component"]
        7 FASTCALL1                        TOSTRING R4 ; [+2]
        8 GETIMPORT                        R3 K3 [tostring]
       10 CALL                             R3 1 1
       11 JUMPIFEQKS                       R3 K4 ["Symbol(Portal)"] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_21:
        0 GETTABLEKS                       R2 R1 K0 ["currentElement"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R5 R1 K0 ["currentElement"]
        5 GETTABLEKS                       R4 R5 K1 ["component"]
        7 FASTCALL1                        TYPEOF R4 ; [+2]
        8 GETIMPORT                        R3 K3 [typeof]
       10 CALL                             R3 1 1
       11 JUMPIFEQKS                       R3 K4 ["function"] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_22:
        0 GETTABLEKS                       R2 R1 K0 ["currentElement"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R5 R1 K0 ["currentElement"]
        5 GETTABLEKS                       R4 R5 K1 ["component"]
        7 FASTCALL1                        TYPEOF R4 ; [+2]
        8 GETIMPORT                        R3 K3 [typeof]
       10 CALL                             R3 1 1
       11 JUMPIFEQKS                       R3 K4 ["string"] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 LOADN                            R4 1
        3 LOADN                            R5 255
        4 CALL                             R2 3 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 MOVE                             R6 R2
        9 NAMECALL                         R4 R0 K0 ["getNode"]
       11 CALL                             R4 2 1
       12 JUMPIF                           R4 ; [+2]
       13 LOADNIL                          R5
       14 RETURN                           R5 1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R6 R4 K1 ["children"]
       18 MOVE                             R7 R3
       19 CALL                             R5 2 1
       20 MOVE                             R8 R5
       21 NAMECALL                         R6 R0 K2 ["_getBranchNodes"]
       23 CALL                             R6 2 -1
       24 RETURN                           R6 -1

PROTO_24:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+13]
        3 FASTCALL2                        TABLE_INSERT R2 R1 ; [+4]
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 GETUPVAL                         R3 0
        8 CALL                             R3 2 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R4 R1 K0 ["children"]
       12 LOADK                            R5 K1 ["UseParentKey"]
       13 CALL                             R3 2 1
       14 MOVE                             R1 R3
       15 JUMPBACK                         ; [-14]
       16 RETURN                           R2 1

PROTO_25:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["isFragment"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADK                            R2 K1 ["Fragment"]
        6 RETURN                           R2 1
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R0 K2 ["isPortal"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+2]
       12 LOADK                            R2 K3 ["Portal"]
       13 RETURN                           R2 1
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R0 K4 ["isFunction"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+9]
       19 GETTABLEKS                       R4 R1 K5 ["currentElement"]
       21 GETTABLEKS                       R3 R4 K6 ["component"]
       23 FASTCALL1                        TOSTRING R3 ; [+2]
       24 GETIMPORT                        R2 K8 [tostring]
       26 CALL                             R2 1 1
       27 RETURN                           R2 1
       28 MOVE                             R4 R1
       29 NAMECALL                         R2 R0 K9 ["isHost"]
       31 CALL                             R2 2 1
       32 JUMPIFNOT                        R2 ; [+5]
       33 GETTABLEKS                       R3 R1 K5 ["currentElement"]
       35 GETTABLEKS                       R2 R3 K6 ["component"]
       37 RETURN                           R2 1
       38 GETTABLEKS                       R4 R1 K5 ["currentElement"]
       40 GETTABLEKS                       R3 R4 K6 ["component"]
       42 GETTABLEKS                       R2 R3 K10 ["__componentName"]
       44 RETURN                           R2 1

PROTO_26:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["isFragment"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADK                            R2 K1 ["Fragment"]
        6 RETURN                           R2 1
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R0 K2 ["isPortal"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+2]
       12 LOADK                            R2 K3 ["Portal"]
       13 RETURN                           R2 1
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R0 K4 ["isFunction"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+2]
       19 LOADK                            R2 K5 ["Functional"]
       20 RETURN                           R2 1
       21 MOVE                             R4 R1
       22 NAMECALL                         R2 R0 K6 ["isHost"]
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R2 ; [+5]
       26 GETTABLEKS                       R3 R1 K7 ["hostObject"]
       28 GETTABLEKS                       R2 R3 K8 ["ClassName"]
       30 RETURN                           R2 1
       31 GETTABLEKS                       R4 R1 K9 ["currentElement"]
       33 GETTABLEKS                       R3 R4 K10 ["component"]
       35 GETTABLEKS                       R2 R3 K11 ["__componentName"]
       37 LOADK                            R5 K12 ["Provider"]
       38 NAMECALL                         R3 R2 K13 ["find"]
       40 CALL                             R3 2 1
       41 JUMPIFNOT                        R3 ; [+2]
       42 LOADK                            R3 K12 ["Provider"]
       43 RETURN                           R3 1
       44 LOADK                            R5 K14 ["Consumer"]
       45 NAMECALL                         R3 R2 K13 ["find"]
       47 CALL                             R3 2 1
       48 JUMPIF                           R3 ; [+5]
       49 LOADK                            R5 K15 ["RoduxConnection"]
       50 NAMECALL                         R3 R2 K13 ["find"]
       52 CALL                             R3 2 1
       53 JUMPIFNOT                        R3 ; [+2]
       54 LOADK                            R3 K14 ["Consumer"]
       55 RETURN                           R3 1
       56 GETTABLEKS                       R5 R1 K9 ["currentElement"]
       58 GETTABLEKS                       R4 R5 K10 ["component"]
       60 GETTABLEKS                       R3 R4 K16 ["shouldUpdate"]
       62 JUMPIFNOT                        R3 ; [+2]
       63 LOADK                            R3 K17 ["Pure"]
       64 RETURN                           R3 1
       65 LOADK                            R3 K18 ["Stateful"]
       66 RETURN                           R3 1

PROTO_27:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getInstancePath"]
        3 CALL                             R2 2 1
        4 MOVE                             R5 R2
        5 NAMECALL                         R3 R0 K1 ["_getFullPath"]
        7 CALL                             R3 2 1
        8 RETURN                           R3 1

PROTO_28:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+24]
        3 GETTABLEKS                       R4 R0 K0 ["debugInterface"]
        5 GETTABLEKS                       R3 R4 K1 ["rootInstance"]
        7 JUMPIFEQ                         R1 R3 ; [+19]
        9 GETTABLEKS                       R4 R1 K2 ["Name"]
       11 FASTCALL1                        TONUMBER R4 ; [+2]
       12 GETIMPORT                        R3 K4 [tonumber]
       14 CALL                             R3 1 1
       15 MOVE                             R6 R3
       16 JUMPIF                           R6 ; [+2]
       17 GETTABLEKS                       R6 R1 K2 ["Name"]
       19 FASTCALL2                        TABLE_INSERT R2 R6 ; [+3]
       21 MOVE                             R5 R2
       22 GETUPVAL                         R4 0
       23 CALL                             R4 2 0
       24 GETTABLEKS                       R1 R1 K5 ["Parent"]
       26 JUMPBACK                         ; [-25]
       27 GETUPVAL                         R3 1
       28 NEWTABLE                         R4 0 0
       30 GETTABLEKS                       R6 R0 K0 ["debugInterface"]
       32 GETTABLEKS                       R5 R6 K6 ["rootPath"]
       34 JUMPIF                           R5 ; [+3]
       35 NAMECALL                         R5 R0 K7 ["getRootPath"]
       37 CALL                             R5 1 1
       38 GETUPVAL                         R6 2
       39 MOVE                             R7 R2
       40 CALL                             R6 1 -1
       41 CALL                             R3 -1 1
       42 GETTABLEKS                       R5 R0 K0 ["debugInterface"]
       44 GETTABLEKS                       R4 R5 K8 ["rootPrefix"]
       46 JUMPIFNOT                        R4 ; [+10]
       47 GETUPVAL                         R4 3
       48 MOVE                             R5 R3
       49 GETTABLEKS                       R9 R0 K0 ["debugInterface"]
       51 GETTABLEKS                       R8 R9 K8 ["rootPrefix"]
       53 LENGTH                           R7 R8
       54 ADDK                             R6 R7 K9 [1]
       55 CALL                             R4 2 1
       56 RETURN                           R4 1
       57 RETURN                           R3 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 NAMECALL                         R2 R2 K0 ["_dfsFindNextChildNode"]
        6 CALL                             R2 4 -1
        7 RETURN                           R2 -1

PROTO_30:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R3 R0 K0 ["getRootNode"]
        4 CALL                             R3 1 1
        5 MOVE                             R6 R3
        6 NAMECALL                         R4 R0 K1 ["getHostNode"]
        8 CALL                             R4 2 1
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R1
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 MOVE                             R8 R4
       15 CALL                             R5 3 1
       16 JUMPIFEQKNIL                     R5 ; [+2]
       18 RETURN                           R2 1
       19 RETURN                           R1 1

PROTO_31:
        0 JUMPIFEQKNIL                     R1 ; [+5]
        2 GETTABLEKS                       R4 R1 K0 ["children"]
        4 JUMPIFNOTEQKNIL                  R4 ; [+3]
        6 LOADNIL                          R4
        7 RETURN                           R4 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R5 R1 K0 ["children"]
       11 MOVE                             R6 R2
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R4 ; [+13]
       14 MOVE                             R7 R4
       15 NAMECALL                         R5 R0 K1 ["getHostNode"]
       17 CALL                             R5 2 1
       18 JUMPIFEQKNIL                     R5 ; [+8]
       20 FASTCALL2                        TABLE_INSERT R3 R2 ; [+4]
       22 MOVE                             R7 R3
       23 MOVE                             R8 R2
       24 GETUPVAL                         R6 1
       25 CALL                             R6 2 0
       26 RETURN                           R5 1
       27 GETIMPORT                        R5 K3 [pairs]
       29 GETTABLEKS                       R6 R1 K0 ["children"]
       31 CALL                             R5 1 3
       32 FORGPREP_NEXT                    R5
       33 FASTCALL1                        TOSTRING R8 ; [+3]
       34 MOVE                             R12 R8
       35 GETIMPORT                        R11 K5 [tostring]
       37 CALL                             R11 1 1
       38 JUMPIFEQKS                       R11 K6 ["Symbol(UseParentKey)"] ; [+2]
       40 LOADB                            R10 0 +1
       41 LOADB                            R10 1
       42 JUMPIF                           R10 ; [+6]
       43 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
       45 MOVE                             R12 R3
       46 MOVE                             R13 R8
       47 GETUPVAL                         R11 1
       48 CALL                             R11 2 0
       49 MOVE                             R13 R9
       50 MOVE                             R14 R2
       51 MOVE                             R15 R3
       52 NAMECALL                         R11 R0 K7 ["_dfsFindNextChildNode"]
       54 CALL                             R11 4 1
       55 JUMPIFEQKNIL                     R11 ; [+2]
       57 RETURN                           R11 1
       58 JUMPIF                           R10 ; [+4]
       59 GETIMPORT                        R12 K10 [table.remove]
       61 MOVE                             R13 R3
       62 CALL                             R12 1 0
       63 FORGLOOP                         R5 2 ; [-31]
       65 LOADNIL                          R5
       66 RETURN                           R5 1

PROTO_32:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["tree"]
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R5 R0 K5 ["RoactInspector"]
       15 GETTABLEKS                       R4 R5 K6 ["Utils"]
       17 GETTABLEKS                       R3 R4 K7 ["getSymbol"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R6 R0 K5 ["RoactInspector"]
       24 GETTABLEKS                       R5 R6 K6 ["Utils"]
       26 GETTABLEKS                       R4 R5 K8 ["getChildAtKey"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R5 R1 K9 ["Dash"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K10 ["append"]
       36 GETTABLEKS                       R6 R4 K11 ["class"]
       38 GETTABLEKS                       R7 R4 K12 ["collectArray"]
       40 GETTABLEKS                       R8 R4 K13 ["pick"]
       42 GETTABLEKS                       R9 R4 K14 ["keys"]
       44 GETTABLEKS                       R10 R4 K15 ["last"]
       46 GETTABLEKS                       R11 R4 K16 ["map"]
       48 GETTABLEKS                       R12 R4 K17 ["mapOne"]
       50 GETTABLEKS                       R13 R4 K18 ["reduce"]
       52 GETTABLEKS                       R14 R4 K19 ["reverse"]
       54 GETTABLEKS                       R15 R4 K20 ["slice"]
       56 GETIMPORT                        R16 K23 [table.insert]
       58 MOVE                             R17 R6
       59 LOADK                            R18 K24 ["RoactTreeWatcher"]
       60 DUPCLOSURE                       R19 K25 [PROTO_0]
       61 CALL                             R17 2 1
       62 DUPCLOSURE                       R18 K26 [PROTO_2]
       63 SETTABLEKS                       R18 R17 K27 ["_init"]
       65 DUPCLOSURE                       R18 K28 [PROTO_3]
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R18 R17 K29 ["getRootNode"]
       69 DUPCLOSURE                       R18 K30 [PROTO_4]
       70 SETTABLEKS                       R18 R17 K31 ["monitor"]
       72 DUPCLOSURE                       R18 K32 [PROTO_5]
       73 SETTABLEKS                       R18 R17 K33 ["_checkNodes"]
       75 DUPCLOSURE                       R18 K34 [PROTO_8]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R18 R17 K35 ["_checkNode"]
       82 DUPCLOSURE                       R18 K36 [PROTO_10]
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R18 R17 K37 ["getNode"]
       87 DUPCLOSURE                       R18 K38 [PROTO_12]
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R18 R17 K39 ["watchPath"]
       92 DUPCLOSURE                       R18 K40 [PROTO_14]
       93 CAPTURE                          VAL R11
       94 SETTABLEKS                       R18 R17 K41 ["_getBranchData"]
       96 DUPCLOSURE                       R18 K42 [PROTO_16]
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R5
       99 SETTABLEKS                       R18 R17 K43 ["getChildren"]
      101 DUPCLOSURE                       R18 K44 [PROTO_17]
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R12
      104 SETTABLEKS                       R18 R17 K45 ["getHostNode"]
      106 DUPCLOSURE                       R18 K46 [PROTO_18]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R15
      111 SETTABLEKS                       R18 R17 K47 ["getRootPath"]
      113 DUPCLOSURE                       R18 K48 [PROTO_19]
      114 SETTABLEKS                       R18 R17 K49 ["isFragment"]
      116 DUPCLOSURE                       R18 K50 [PROTO_20]
      117 SETTABLEKS                       R18 R17 K51 ["isPortal"]
      119 DUPCLOSURE                       R18 K52 [PROTO_21]
      120 SETTABLEKS                       R18 R17 K53 ["isFunction"]
      122 DUPCLOSURE                       R18 K54 [PROTO_22]
      123 SETTABLEKS                       R18 R17 K55 ["isHost"]
      125 DUPCLOSURE                       R18 K56 [PROTO_23]
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R3
      129 SETTABLEKS                       R18 R17 K57 ["getNodes"]
      131 DUPCLOSURE                       R18 K58 [PROTO_24]
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R2
      134 SETTABLEKS                       R18 R17 K59 ["_getBranchNodes"]
      136 DUPCLOSURE                       R18 K60 [PROTO_25]
      137 SETTABLEKS                       R18 R17 K61 ["getNodeName"]
      139 DUPCLOSURE                       R18 K62 [PROTO_26]
      140 SETTABLEKS                       R18 R17 K63 ["getNodeIcon"]
      142 DUPCLOSURE                       R18 K64 [PROTO_27]
      143 SETTABLEKS                       R18 R17 K65 ["getPath"]
      145 DUPCLOSURE                       R18 K66 [PROTO_28]
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R15
      150 SETTABLEKS                       R18 R17 K67 ["_getInstancePath"]
      152 DUPCLOSURE                       R18 K68 [PROTO_30]
      153 CAPTURE                          VAL R13
      154 SETTABLEKS                       R18 R17 K69 ["_getFullPath"]
      156 DUPCLOSURE                       R18 K70 [PROTO_31]
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R16
      159 SETTABLEKS                       R18 R17 K71 ["_dfsFindNextChildNode"]
      161 DUPCLOSURE                       R18 K72 [PROTO_32]
      162 SETTABLEKS                       R18 R17 K73 ["destroy"]
      164 RETURN                           R17 1
