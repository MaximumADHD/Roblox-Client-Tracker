PROTO_0:
        0 GETIMPORT                        R3 K2 [string.split]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K3 [","]
        4 CALL                             R3 2 1
        5 GETIMPORT                        R4 K6 [table.create]
        7 LENGTH                           R5 R3
        8 CALL                             R4 1 1
        9 MOVE                             R5 R3
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 FASTCALL1                        TONUMBER R9 ; [+3]
       14 MOVE                             R11 R9
       15 GETIMPORT                        R10 K8 [tonumber]
       17 CALL                             R10 1 1
       18 JUMPIF                           R10 ; [+3]
       19 MOVE                             R10 R2
       20 JUMPIF                           R10 ; [+1]
       21 LOADN                            R10 0
       22 SETTABLE                         R10 R4 R8
       23 FORGLOOP                         R5 2 ; [-11]
       25 GETIMPORT                        R5 K10 [pcall]
       27 MOVE                             R6 R1
       28 FASTCALL1                        TABLE_UNPACK R4 ; [+3]
       29 MOVE                             R8 R4
       30 GETIMPORT                        R7 K12 [table.unpack]
       32 CALL                             R7 1 -1
       33 CALL                             R5 -1 2
       34 JUMPIF                           R5 ; [+1]
       35 RETURN                           R2 1
       36 RETURN                           R6 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [string.lower]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFEQKS                       R2 K3 ["true"] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETIMPORT                        R3 K2 [Vector3.new]
        4 LOADK                            R4 K3 [{0, 0, 0}]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETIMPORT                        R3 K2 [CFrame.new]
        4 GETIMPORT                        R4 K4 [CFrame.identity]
        6 CALL                             R1 3 1
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETIMPORT                        R3 K2 [Vector2.new]
        4 GETIMPORT                        R4 K4 [Vector2.zero]
        6 CALL                             R1 3 1
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETIMPORT                        R3 K2 [UDim2.new]
        4 GETIMPORT                        R4 K2 [UDim2.new]
        6 LOADN                            R5 0
        7 LOADN                            R6 0
        8 LOADN                            R7 0
        9 LOADN                            R8 0
       10 CALL                             R4 4 -1
       11 CALL                             R1 -1 1
       12 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETIMPORT                        R3 K2 [UDim.new]
        4 GETIMPORT                        R4 K2 [UDim.new]
        6 LOADN                            R5 0
        7 LOADN                            R6 0
        8 CALL                             R4 2 -1
        9 CALL                             R1 -1 1
       10 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETIMPORT                        R3 K2 [Rect.new]
        4 GETIMPORT                        R4 K2 [Rect.new]
        6 LOADN                            R5 0
        7 LOADN                            R6 0
        8 LOADN                            R7 0
        9 LOADN                            R8 0
       10 CALL                             R4 4 -1
       11 CALL                             R1 -1 1
       12 RETURN                           R1 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^Enum%.(%w+)%.(%w+)$"]
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R1 ; [+1]
        6 JUMPIF                           R2 ; [+9]
        7 GETIMPORT                        R3 K5 [error]
        9 LOADK                            R5 K6 ["Invalid EnumItem format: %*"]
       10 MOVE                             R7 R0
       11 NAMECALL                         R5 R5 K7 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 CALL                             R3 1 0
       16 GETIMPORT                        R5 K9 [Enum]
       18 GETTABLE                         R4 R5 R1
       19 GETTABLE                         R3 R4 R2
       20 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R3 K1 [pcall]
        6 MOVE                             R4 R2
        7 MOVE                             R5 R0
        8 CALL                             R3 2 2
        9 JUMPIF                           R3 ; [+12]
       10 GETIMPORT                        R5 K3 [warn]
       12 LOADK                            R7 K4 ["Error converting value '%*' to type %*: %*"]
       13 MOVE                             R9 R0
       14 MOVE                             R10 R1
       15 MOVE                             R11 R4
       16 NAMECALL                         R7 R7 K5 ["format"]
       18 CALL                             R7 4 1
       19 MOVE                             R6 R7
       20 CALL                             R5 1 0
       21 RETURN                           R0 1
       22 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K11 [{"string", "number", "boolean", "Vector3", "CFrame", "Vector2", "UDim2", "UDim", "Rect", "EnumItem"}]
        3 GETIMPORT                        R2 K13 [tostring]
        5 SETTABLEKS                       R2 R1 K1 ["string"]
        7 GETIMPORT                        R2 K15 [tonumber]
        9 SETTABLEKS                       R2 R1 K2 ["number"]
       11 DUPCLOSURE                       R2 K16 [PROTO_1]
       12 SETTABLEKS                       R2 R1 K3 ["boolean"]
       14 DUPCLOSURE                       R2 K17 [PROTO_2]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R1 K4 ["Vector3"]
       18 DUPCLOSURE                       R2 K18 [PROTO_3]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K5 ["CFrame"]
       22 DUPCLOSURE                       R2 K19 [PROTO_4]
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R1 K6 ["Vector2"]
       26 DUPCLOSURE                       R2 K20 [PROTO_5]
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R2 R1 K7 ["UDim2"]
       30 DUPCLOSURE                       R2 K21 [PROTO_6]
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R2 R1 K8 ["UDim"]
       34 DUPCLOSURE                       R2 K22 [PROTO_7]
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R2 R1 K9 ["Rect"]
       38 DUPCLOSURE                       R2 K23 [PROTO_8]
       39 SETTABLEKS                       R2 R1 K10 ["EnumItem"]
       41 DUPCLOSURE                       R2 K24 [PROTO_9]
       42 CAPTURE                          VAL R1
       43 RETURN                           R2 1
