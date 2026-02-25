PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TOSTRING R5 ; [+3]
        7 MOVE                             R8 R5
        8 GETIMPORT                        R7 K1 [tostring]
       10 CALL                             R7 1 1
       11 JUMPIF                           R7 ; [+10]
       12 GETIMPORT                        R8 K3 [print]
       14 LOADK                            R10 K4 ["%* couldn't be converted to a string!"]
       15 MOVE                             R12 R5
       16 NAMECALL                         R10 R10 K5 ["format"]
       18 CALL                             R10 2 1
       19 MOVE                             R9 R10
       20 CALL                             R8 1 0
       21 JUMP                             ; [+1]
       22 SETTABLE                         R6 R1 R7
       23 FORGLOOP                         R2 2 ; [-18]
       25 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TONUMBER R5 ; [+3]
        7 MOVE                             R8 R5
        8 GETIMPORT                        R7 K1 [tonumber]
       10 CALL                             R7 1 1
       11 JUMPIF                           R7 ; [+10]
       12 GETIMPORT                        R8 K3 [print]
       14 LOADK                            R10 K4 ["%* couldn't be converted to a number!"]
       15 MOVE                             R12 R5
       16 NAMECALL                         R10 R10 K5 ["format"]
       18 CALL                             R10 2 1
       19 MOVE                             R9 R10
       20 CALL                             R8 1 0
       21 JUMP                             ; [+1]
       22 SETTABLE                         R6 R1 R7
       23 FORGLOOP                         R2 2 ; [-18]
       25 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["Keypoints"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R8 R6 K1 ["X"]
       10 LOADN                            R9 3
       11 CALL                             R7 2 1
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R9 R6 K2 ["Y"]
       15 LOADN                            R10 3
       16 CALL                             R8 2 1
       17 SETTABLE                         R8 R1 R7
       18 FORGLOOP                         R2 2 ; [-12]
       20 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R4 R1 K0 ["X"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R8 R1
        7 GETIMPORT                        R9 K2 [Vector2.new]
        9 MOVE                             R10 R5
       10 MOVE                             R11 R6
       11 CALL                             R9 2 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R7 K5 [table.insert]
       15 CALL                             R7 -1 0
       16 FORGLOOP                         R2 2 ; [-11]
       18 GETIMPORT                        R2 K7 [table.sort]
       20 MOVE                             R3 R1
       21 DUPCLOSURE                       R4 K8 [PROTO_3]
       22 CALL                             R2 2 0
       23 DUPTABLE                         R2 K10 [{"Keypoints"}]
       24 SETTABLEKS                       R1 R2 K9 ["Keypoints"]
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AttenuationCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["roundDecimal"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 4 0
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 SETTABLEKS                       R4 R3 K11 ["stringifyCurveTable"]
       28 DUPCLOSURE                       R4 K12 [PROTO_1]
       29 SETTABLEKS                       R4 R3 K13 ["destringifyCurveTable"]
       31 DUPCLOSURE                       R4 K14 [PROTO_2]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R4 R3 K15 ["curveToTable"]
       35 DUPCLOSURE                       R4 K16 [PROTO_4]
       36 SETTABLEKS                       R4 R3 K17 ["tableToCurve"]
       38 RETURN                           R3 1
