PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 ["Number"] ; [+36]
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K2 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["boolean"] ; [+6]
        9 JUMPIFNOT                        R0 ; [+2]
       10 LOADN                            R2 1
       11 RETURN                           R2 1
       12 LOADN                            R2 0
       13 RETURN                           R2 1
       14 FASTCALL1                        TYPE R0 ; [+3]
       15 MOVE                             R3 R0
       16 GETIMPORT                        R2 K2 [type]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+2]
       21 RETURN                           R0 1
       22 FASTCALL1                        TYPE R0 ; [+3]
       23 MOVE                             R3 R0
       24 GETIMPORT                        R2 K2 [type]
       26 CALL                             R2 1 1
       27 JUMPIFNOTEQKS                    R2 K5 ["string"] ; [+7]
       29 FASTCALL1                        TONUMBER R0 ; [+3]
       30 MOVE                             R3 R0
       31 GETIMPORT                        R2 K7 [tonumber]
       33 CALL                             R2 1 1
       34 RETURN                           R2 1
       35 LOADNIL                          R2
       36 RETURN                           R2 1
       37 JUMPIFNOTEQKS                    R1 K8 ["Boolean"] ; [+42]
       39 FASTCALL1                        TYPE R0 ; [+3]
       40 MOVE                             R3 R0
       41 GETIMPORT                        R2 K2 [type]
       43 CALL                             R2 1 1
       44 JUMPIFNOTEQKS                    R2 K3 ["boolean"] ; [+2]
       46 RETURN                           R0 1
       47 FASTCALL1                        TYPE R0 ; [+3]
       48 MOVE                             R3 R0
       49 GETIMPORT                        R2 K2 [type]
       51 CALL                             R2 1 1
       52 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+6]
       54 JUMPIFNOTEQKN                    R0 K9 [0] ; [+2]
       56 LOADB                            R2 0 +1
       57 LOADB                            R2 1
       58 RETURN                           R2 1
       59 FASTCALL1                        TYPE R0 ; [+3]
       60 MOVE                             R3 R0
       61 GETIMPORT                        R2 K2 [type]
       63 CALL                             R2 1 1
       64 JUMPIFNOTEQKS                    R2 K5 ["string"] ; [+13]
       66 GETIMPORT                        R2 K11 [string.lower]
       68 MOVE                             R3 R0
       69 CALL                             R2 1 1
       70 JUMPIFNOTEQKS                    R2 K12 ["true"] ; [+3]
       72 LOADB                            R3 1
       73 RETURN                           R3 1
       74 JUMPIFNOTEQKS                    R2 K13 ["false"] ; [+3]
       76 LOADB                            R3 0
       77 RETURN                           R3 1
       78 LOADNIL                          R2
       79 RETURN                           R2 1
       80 JUMPIFNOTEQKS                    R1 K14 ["String"] ; [+11]
       82 JUMPIFEQKNIL                     R0 ; [+7]
       84 FASTCALL1                        TOSTRING R0 ; [+3]
       85 MOVE                             R3 R0
       86 GETIMPORT                        R2 K16 [tostring]
       88 CALL                             R2 1 1
       89 RETURN                           R2 1
       90 LOADNIL                          R2
       91 RETURN                           R2 1
       92 RETURN                           R0 1

PROTO_1:
        0 JUMPIF                           R0 ; [+3]
        1 LOADB                            R2 0
        2 LOADNIL                          R3
        3 RETURN                           R2 2
        4 GETTABLE                         R2 R0 R1
        5 FASTCALL1                        TYPE R2 ; [+3]
        6 MOVE                             R5 R2
        7 GETIMPORT                        R4 K1 [type]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+5]
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R2
       14 CALL                             R3 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 JUMPIFNOT                        R3 ; [+3]
       18 LOADB                            R4 1
       19 MOVE                             R5 R3
       20 RETURN                           R4 2
       21 LOADB                            R4 0
       22 LOADNIL                          R5
       23 RETURN                           R4 2

PROTO_2:
        0 GETTABLE                         R3 R0 R2
        1 JUMPIF                           R3 ; [+3]
        2 LOADB                            R4 0
        3 LOADNIL                          R5
        4 RETURN                           R4 2
        5 GETTABLE                         R4 R3 R1
        6 JUMPIF                           R4 ; [+3]
        7 LOADB                            R5 0
        8 LOADNIL                          R6
        9 RETURN                           R5 2
       10 GETTABLEKS                       R5 R4 K0 ["isValueNodeConnection"]
       12 JUMPIFNOT                        R5 ; [+3]
       13 LOADB                            R5 0
       14 LOADNIL                          R6
       15 RETURN                           R5 2
       16 LOADB                            R5 1
       17 MOVE                             R6 R2
       18 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NodeViewTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["matchParameterBinding"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 4 0
       21 DUPCLOSURE                       R4 K9 [PROTO_0]
       22 SETTABLEKS                       R4 R3 K10 ["castPropertyValue"]
       24 DUPCLOSURE                       R4 K11 [PROTO_1]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R4 R3 K12 ["isPropertyParameterized"]
       28 DUPCLOSURE                       R4 K13 [PROTO_2]
       29 SETTABLEKS                       R4 R3 K14 ["isInputPanelPropertyParameterized"]
       31 RETURN                           R3 1
